.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel FallToGoal
/* 1A84CC 80279BEC 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* 1A84D0 80279BF0 AFB20020 */  sw        $s2, 0x20($sp)
/* 1A84D4 80279BF4 0080902D */  daddu     $s2, $a0, $zero
/* 1A84D8 80279BF8 AFBF0024 */  sw        $ra, 0x24($sp)
/* 1A84DC 80279BFC AFB1001C */  sw        $s1, 0x1c($sp)
/* 1A84E0 80279C00 AFB00018 */  sw        $s0, 0x18($sp)
/* 1A84E4 80279C04 F7BE0050 */  sdc1      $f30, 0x50($sp)
/* 1A84E8 80279C08 F7BC0048 */  sdc1      $f28, 0x48($sp)
/* 1A84EC 80279C0C F7BA0040 */  sdc1      $f26, 0x40($sp)
/* 1A84F0 80279C10 F7B80038 */  sdc1      $f24, 0x38($sp)
/* 1A84F4 80279C14 F7B60030 */  sdc1      $f22, 0x30($sp)
/* 1A84F8 80279C18 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 1A84FC 80279C1C 8E51000C */  lw        $s1, 0xc($s2)
/* 1A8500 80279C20 54A00001 */  bnel      $a1, $zero, .L80279C28
/* 1A8504 80279C24 AE400070 */   sw       $zero, 0x70($s2)
.L80279C28:
/* 1A8508 80279C28 8E420070 */  lw        $v0, 0x70($s2)
/* 1A850C 80279C2C 1440005A */  bnez      $v0, .L80279D98
/* 1A8510 80279C30 00000000 */   nop
/* 1A8514 80279C34 8E250000 */  lw        $a1, ($s1)
/* 1A8518 80279C38 26310004 */  addiu     $s1, $s1, 4
/* 1A851C 80279C3C 0C0B1EAF */  jal       evt_get_variable
/* 1A8520 80279C40 0240202D */   daddu    $a0, $s2, $zero
/* 1A8524 80279C44 0040202D */  daddu     $a0, $v0, $zero
/* 1A8528 80279C48 2402FF81 */  addiu     $v0, $zero, -0x7f
/* 1A852C 80279C4C 14820002 */  bne       $a0, $v0, .L80279C58
/* 1A8530 80279C50 00000000 */   nop
/* 1A8534 80279C54 8E440148 */  lw        $a0, 0x148($s2)
.L80279C58:
/* 1A8538 80279C58 0C09A75B */  jal       get_actor
/* 1A853C 80279C5C 00000000 */   nop
/* 1A8540 80279C60 0040802D */  daddu     $s0, $v0, $zero
/* 1A8544 80279C64 AE500074 */  sw        $s0, 0x74($s2)
/* 1A8548 80279C68 8E250000 */  lw        $a1, ($s1)
/* 1A854C 80279C6C 0C0B1EAF */  jal       evt_get_variable
/* 1A8550 80279C70 0240202D */   daddu    $a0, $s2, $zero
/* 1A8554 80279C74 C6000148 */  lwc1      $f0, 0x148($s0)
/* 1A8558 80279C78 C61A0018 */  lwc1      $f26, 0x18($s0)
/* 1A855C 80279C7C C61C0020 */  lwc1      $f28, 0x20($s0)
/* 1A8560 80279C80 C614014C */  lwc1      $f20, 0x14c($s0)
/* 1A8564 80279C84 C618001C */  lwc1      $f24, 0x1c($s0)
/* 1A8568 80279C88 A6020070 */  sh        $v0, 0x70($s0)
/* 1A856C 80279C8C E6000010 */  swc1      $f0, 0x10($s0)
/* 1A8570 80279C90 46000786 */  mov.s     $f30, $f0
/* 1A8574 80279C94 4406D000 */  mfc1      $a2, $f26
/* 1A8578 80279C98 4407E000 */  mfc1      $a3, $f28
/* 1A857C 80279C9C C6000144 */  lwc1      $f0, 0x144($s0)
/* 1A8580 80279CA0 4600A386 */  mov.s     $f14, $f20
/* 1A8584 80279CA4 E6140014 */  swc1      $f20, 0x14($s0)
/* 1A8588 80279CA8 E600000C */  swc1      $f0, 0xc($s0)
/* 1A858C 80279CAC 46000586 */  mov.s     $f22, $f0
/* 1A8590 80279CB0 0C00A720 */  jal       atan2
/* 1A8594 80279CB4 4600B306 */   mov.s    $f12, $f22
/* 1A8598 80279CB8 4600B306 */  mov.s     $f12, $f22
/* 1A859C 80279CBC 4600A386 */  mov.s     $f14, $f20
/* 1A85A0 80279CC0 4406D000 */  mfc1      $a2, $f26
/* 1A85A4 80279CC4 4407E000 */  mfc1      $a3, $f28
/* 1A85A8 80279CC8 461EC781 */  sub.s     $f30, $f24, $f30
/* 1A85AC 80279CCC 0C00A7B5 */  jal       dist2D
/* 1A85B0 80279CD0 E6000054 */   swc1     $f0, 0x54($s0)
/* 1A85B4 80279CD4 46000086 */  mov.s     $f2, $f0
/* 1A85B8 80279CD8 86020070 */  lh        $v0, 0x70($s0)
/* 1A85BC 80279CDC 2611000C */  addiu     $s1, $s0, 0xc
/* 1A85C0 80279CE0 14400007 */  bnez      $v0, .L80279D00
/* 1A85C4 80279CE4 E6020058 */   swc1     $f2, 0x58($s0)
/* 1A85C8 80279CE8 C600004C */  lwc1      $f0, 0x4c($s0)
/* 1A85CC 80279CEC 46001003 */  div.s     $f0, $f2, $f0
/* 1A85D0 80279CF0 4600018D */  trunc.w.s $f6, $f0
/* 1A85D4 80279CF4 44023000 */  mfc1      $v0, $f6
/* 1A85D8 80279CF8 0809E745 */  j         .L80279D14
/* 1A85DC 80279CFC A6020070 */   sh       $v0, 0x70($s0)
.L80279D00:
/* 1A85E0 80279D00 44820000 */  mtc1      $v0, $f0
/* 1A85E4 80279D04 00000000 */  nop
/* 1A85E8 80279D08 46800020 */  cvt.s.w   $f0, $f0
/* 1A85EC 80279D0C 46001003 */  div.s     $f0, $f2, $f0
/* 1A85F0 80279D10 E600004C */  swc1      $f0, 0x4c($s0)
.L80279D14:
/* 1A85F4 80279D14 86230064 */  lh        $v1, 0x64($s1)
/* 1A85F8 80279D18 3C013FE0 */  lui       $at, 0x3fe0
/* 1A85FC 80279D1C 44810800 */  mtc1      $at, $f1
/* 1A8600 80279D20 44800000 */  mtc1      $zero, $f0
/* 1A8604 80279D24 00031023 */  negu      $v0, $v1
/* 1A8608 80279D28 44821000 */  mtc1      $v0, $f2
/* 1A860C 80279D2C 00000000 */  nop
/* 1A8610 80279D30 468010A1 */  cvt.d.w   $f2, $f2
/* 1A8614 80279D34 46201082 */  mul.d     $f2, $f2, $f0
/* 1A8618 80279D38 00000000 */  nop
/* 1A861C 80279D3C AE200044 */  sw        $zero, 0x44($s1)
/* 1A8620 80279D40 C6240044 */  lwc1      $f4, 0x44($s1)
/* 1A8624 80279D44 44830000 */  mtc1      $v1, $f0
/* 1A8628 80279D48 00000000 */  nop
/* 1A862C 80279D4C 46800020 */  cvt.s.w   $f0, $f0
/* 1A8630 80279D50 4600F003 */  div.s     $f0, $f30, $f0
/* 1A8634 80279D54 46040001 */  sub.s     $f0, $f0, $f4
/* 1A8638 80279D58 46000021 */  cvt.d.s   $f0, $f0
/* 1A863C 80279D5C 46220003 */  div.d     $f0, $f0, $f2
/* 1A8640 80279D60 46200020 */  cvt.s.d   $f0, $f0
/* 1A8644 80279D64 E620003C */  swc1      $f0, 0x3c($s1)
/* 1A8648 80279D68 8E0201AC */  lw        $v0, 0x1ac($s0)
/* 1A864C 80279D6C 10400009 */  beqz      $v0, .L80279D94
/* 1A8650 80279D70 24020001 */   addiu    $v0, $zero, 1
/* 1A8654 80279D74 C600014C */  lwc1      $f0, 0x14c($s0)
/* 1A8658 80279D78 E7A00010 */  swc1      $f0, 0x10($sp)
/* 1A865C 80279D7C 8E0401AC */  lw        $a0, 0x1ac($s0)
/* 1A8660 80279D80 8E060144 */  lw        $a2, 0x144($s0)
/* 1A8664 80279D84 8E070148 */  lw        $a3, 0x148($s0)
/* 1A8668 80279D88 0C052757 */  jal       sfx_play_sound_at_position
/* 1A866C 80279D8C 0000282D */   daddu    $a1, $zero, $zero
/* 1A8670 80279D90 24020001 */  addiu     $v0, $zero, 1
.L80279D94:
/* 1A8674 80279D94 AE420070 */  sw        $v0, 0x70($s2)
.L80279D98:
/* 1A8678 80279D98 8E500074 */  lw        $s0, 0x74($s2)
/* 1A867C 80279D9C C6040010 */  lwc1      $f4, 0x10($s0)
/* 1A8680 80279DA0 C6000050 */  lwc1      $f0, 0x50($s0)
/* 1A8684 80279DA4 8E05004C */  lw        $a1, 0x4c($s0)
/* 1A8688 80279DA8 46002100 */  add.s     $f4, $f4, $f0
/* 1A868C 80279DAC C6020048 */  lwc1      $f2, 0x48($s0)
/* 1A8690 80279DB0 8E060054 */  lw        $a2, 0x54($s0)
/* 1A8694 80279DB4 46020001 */  sub.s     $f0, $f0, $f2
/* 1A8698 80279DB8 2604000C */  addiu     $a0, $s0, 0xc
/* 1A869C 80279DBC E6040010 */  swc1      $f4, 0x10($s0)
/* 1A86A0 80279DC0 0C09904A */  jal       add_xz_vec3f
/* 1A86A4 80279DC4 E6000050 */   swc1     $f0, 0x50($s0)
/* 1A86A8 80279DC8 C600000C */  lwc1      $f0, 0xc($s0)
/* 1A86AC 80279DCC C6020010 */  lwc1      $f2, 0x10($s0)
/* 1A86B0 80279DD0 96020070 */  lhu       $v0, 0x70($s0)
/* 1A86B4 80279DD4 C6040014 */  lwc1      $f4, 0x14($s0)
/* 1A86B8 80279DD8 2442FFFF */  addiu     $v0, $v0, -1
/* 1A86BC 80279DDC A6020070 */  sh        $v0, 0x70($s0)
/* 1A86C0 80279DE0 00021400 */  sll       $v0, $v0, 0x10
/* 1A86C4 80279DE4 E6000144 */  swc1      $f0, 0x144($s0)
/* 1A86C8 80279DE8 E6020148 */  swc1      $f2, 0x148($s0)
/* 1A86CC 80279DEC 18400003 */  blez      $v0, .L80279DFC
/* 1A86D0 80279DF0 E604014C */   swc1     $f4, 0x14c($s0)
/* 1A86D4 80279DF4 0809E78D */  j         .L80279E34
/* 1A86D8 80279DF8 0000102D */   daddu    $v0, $zero, $zero
.L80279DFC:
/* 1A86DC 80279DFC C6000054 */  lwc1      $f0, 0x54($s0)
/* 1A86E0 80279E00 E7A00010 */  swc1      $f0, 0x10($sp)
/* 1A86E4 80279E04 8E050018 */  lw        $a1, 0x18($s0)
/* 1A86E8 80279E08 8E06001C */  lw        $a2, 0x1c($s0)
/* 1A86EC 80279E0C 8E070020 */  lw        $a3, 0x20($s0)
/* 1A86F0 80279E10 0C0990BC */  jal       play_movement_dust_effects
/* 1A86F4 80279E14 24040002 */   addiu    $a0, $zero, 2
/* 1A86F8 80279E18 C6000018 */  lwc1      $f0, 0x18($s0)
/* 1A86FC 80279E1C C602001C */  lwc1      $f2, 0x1c($s0)
/* 1A8700 80279E20 C6040020 */  lwc1      $f4, 0x20($s0)
/* 1A8704 80279E24 24020001 */  addiu     $v0, $zero, 1
/* 1A8708 80279E28 E6000144 */  swc1      $f0, 0x144($s0)
/* 1A870C 80279E2C E6020148 */  swc1      $f2, 0x148($s0)
/* 1A8710 80279E30 E604014C */  swc1      $f4, 0x14c($s0)
.L80279E34:
/* 1A8714 80279E34 8FBF0024 */  lw        $ra, 0x24($sp)
/* 1A8718 80279E38 8FB20020 */  lw        $s2, 0x20($sp)
/* 1A871C 80279E3C 8FB1001C */  lw        $s1, 0x1c($sp)
/* 1A8720 80279E40 8FB00018 */  lw        $s0, 0x18($sp)
/* 1A8724 80279E44 D7BE0050 */  ldc1      $f30, 0x50($sp)
/* 1A8728 80279E48 D7BC0048 */  ldc1      $f28, 0x48($sp)
/* 1A872C 80279E4C D7BA0040 */  ldc1      $f26, 0x40($sp)
/* 1A8730 80279E50 D7B80038 */  ldc1      $f24, 0x38($sp)
/* 1A8734 80279E54 D7B60030 */  ldc1      $f22, 0x30($sp)
/* 1A8738 80279E58 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 1A873C 80279E5C 03E00008 */  jr        $ra
/* 1A8740 80279E60 27BD0058 */   addiu    $sp, $sp, 0x58
