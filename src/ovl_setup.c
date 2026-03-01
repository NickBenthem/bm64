#include "common.h"
#include <ultra64.h>

#undef set_secure_call_arr
#undef load_from_rom_to_addr
#undef OvlSetup_LoadArea
#undef OvlSetup_LoadExecAddress

extern u8 gSectionSizes[];

extern void set_secure_call_arr(s32 id, void *funcs);
extern void load_from_rom_to_addr(void *vAddr, s32 size, u32 devAddr);
void OvlSetup_LoadArea(s32 id, void *vAddr);

void func_80000870(void) {
    set_secure_call_arr(3, gOVLFuncs);
    load_from_rom_to_addr(gSectionSizes, 0x100, 0x30000);
}

void OvlSetup_LoadExecAddress(s32 id, void *vAddr, void *arg) {
    void (*entry)(void *);

    OvlSetup_LoadArea(id, vAddr);
    entry = vAddr;
    (*(volatile void (**)(void *))&entry)(arg);
}

void OvlSetup_LoadArea(s32 id, void *vAddr) {
    s32 size;

    size = gSectionSizes[id] << 11;
    if (size == 0) {
        size = 0x80000;
    }
    load_from_rom_to_addr(vAddr, size, id << 17);
}
