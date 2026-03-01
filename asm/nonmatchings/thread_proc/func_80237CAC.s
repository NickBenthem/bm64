nonmatching func_80237CAC, 0xA0

glabel func_80237CAC
    /* 524AC 80237CAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 524B0 80237CB0 AFA40018 */  sw         $a0, 0x18($sp)
    /* 524B4 80237CB4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 524B8 80237CB8 AFA5001C */  sw         $a1, 0x1C($sp)
    /* 524BC 80237CBC 30B8FF00 */  andi       $t8, $a1, 0xFF00
    /* 524C0 80237CC0 97A4001A */  lhu        $a0, 0x1A($sp)
    /* 524C4 80237CC4 0C08DEC5 */  jal        ThreadProc_SearchByID
    /* 524C8 80237CC8 A7B8001E */   sh        $t8, 0x1E($sp)
    /* 524CC 80237CCC 97A5001E */  lhu        $a1, 0x1E($sp)
    /* 524D0 80237CD0 2401FFFF */  addiu      $at, $zero, -0x1
    /* 524D4 80237CD4 14410003 */  bne        $v0, $at, .L80237CE4
    /* 524D8 80237CD8 00401825 */   or        $v1, $v0, $zero
    /* 524DC 80237CDC 1000000B */  b          .L80237D0C
    /* 524E0 80237CE0 00001025 */   or        $v0, $zero, $zero
  .L80237CE4:
    /* 524E4 80237CE4 0003C880 */  sll        $t9, $v1, 2
    /* 524E8 80237CE8 0323C823 */  subu       $t9, $t9, $v1
    /* 524EC 80237CEC 0019C900 */  sll        $t9, $t9, 4
    /* 524F0 80237CF0 0323C823 */  subu       $t9, $t9, $v1
    /* 524F4 80237CF4 0019C880 */  sll        $t9, $t9, 2
    /* 524F8 80237CF8 0323C823 */  subu       $t9, $t9, $v1
    /* 524FC 80237CFC 3C08802A */  lui        $t0, %hi(gThreadProcs)
    /* 52500 80237D00 25085A60 */  addiu      $t0, $t0, %lo(gThreadProcs)
    /* 52504 80237D04 0019C8C0 */  sll        $t9, $t9, 3
    /* 52508 80237D08 03281021 */  addu       $v0, $t9, $t0
  .L80237D0C:
    /* 5250C 80237D0C 14400003 */  bnez       $v0, .L80237D1C
    /* 52510 80237D10 00401825 */   or        $v1, $v0, $zero
    /* 52514 80237D14 10000009 */  b          .L80237D3C
    /* 52518 80237D18 2402FFFF */   addiu     $v0, $zero, -0x1
  .L80237D1C:
    /* 5251C 80237D1C 94690004 */  lhu        $t1, 0x4($v1)
    /* 52520 80237D20 00000000 */  nop
    /* 52524 80237D24 312B00FF */  andi       $t3, $t1, 0xFF
    /* 52528 80237D28 A46B0004 */  sh         $t3, 0x4($v1)
    /* 5252C 80237D2C 01656025 */  or         $t4, $t3, $a1
    /* 52530 80237D30 A46C0004 */  sh         $t4, 0x4($v1)
    /* 52534 80237D34 8FA20018 */  lw         $v0, 0x18($sp)
    /* 52538 80237D38 00000000 */  nop
  .L80237D3C:
    /* 5253C 80237D3C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 52540 80237D40 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 52544 80237D44 03E00008 */  jr         $ra
    /* 52548 80237D48 00000000 */   nop
endlabel func_80237CAC
