.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241F18_EA2818
/* EA2818 80241F18 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* EA281C 80241F1C AFB3003C */  sw        $s3, 0x3c($sp)
/* EA2820 80241F20 0080982D */  daddu     $s3, $a0, $zero
/* EA2824 80241F24 AFBF0040 */  sw        $ra, 0x40($sp)
/* EA2828 80241F28 AFB20038 */  sw        $s2, 0x38($sp)
/* EA282C 80241F2C AFB10034 */  sw        $s1, 0x34($sp)
/* EA2830 80241F30 AFB00030 */  sw        $s0, 0x30($sp)
/* EA2834 80241F34 8E710148 */  lw        $s1, 0x148($s3)
/* EA2838 80241F38 0C00F92F */  jal       dead_get_npc_unsafe
/* EA283C 80241F3C 86240008 */   lh       $a0, 8($s1)
/* EA2840 80241F40 0040802D */  daddu     $s0, $v0, $zero
/* EA2844 80241F44 8E22007C */  lw        $v0, 0x7c($s1)
/* EA2848 80241F48 8603008E */  lh        $v1, 0x8e($s0)
/* EA284C 80241F4C 2442FFFF */  addiu     $v0, $v0, -1
/* EA2850 80241F50 14620012 */  bne       $v1, $v0, .L80241F9C
/* EA2854 80241F54 00000000 */   nop
/* EA2858 80241F58 C6000038 */  lwc1      $f0, 0x38($s0)
/* EA285C 80241F5C 4600020D */  trunc.w.s $f8, $f0
/* EA2860 80241F60 44024000 */  mfc1      $v0, $f8
/* EA2864 80241F64 00000000 */  nop
/* EA2868 80241F68 A6220010 */  sh        $v0, 0x10($s1)
/* EA286C 80241F6C C600003C */  lwc1      $f0, 0x3c($s0)
/* EA2870 80241F70 4600020D */  trunc.w.s $f8, $f0
/* EA2874 80241F74 44024000 */  mfc1      $v0, $f8
/* EA2878 80241F78 00000000 */  nop
/* EA287C 80241F7C A6220012 */  sh        $v0, 0x12($s1)
/* EA2880 80241F80 C6000040 */  lwc1      $f0, 0x40($s0)
/* EA2884 80241F84 24020001 */  addiu     $v0, $zero, 1
/* EA2888 80241F88 A2220007 */  sb        $v0, 7($s1)
/* EA288C 80241F8C 4600020D */  trunc.w.s $f8, $f0
/* EA2890 80241F90 44024000 */  mfc1      $v0, $f8
/* EA2894 80241F94 00000000 */  nop
/* EA2898 80241F98 A6220014 */  sh        $v0, 0x14($s1)
.L80241F9C:
/* EA289C 80241F9C C6000038 */  lwc1      $f0, 0x38($s0)
/* EA28A0 80241FA0 C602003C */  lwc1      $f2, 0x3c($s0)
/* EA28A4 80241FA4 C6040040 */  lwc1      $f4, 0x40($s0)
/* EA28A8 80241FA8 C6060018 */  lwc1      $f6, 0x18($s0)
/* EA28AC 80241FAC E7A00020 */  swc1      $f0, 0x20($sp)
/* EA28B0 80241FB0 E7A20024 */  swc1      $f2, 0x24($sp)
/* EA28B4 80241FB4 E7A40028 */  swc1      $f4, 0x28($sp)
/* EA28B8 80241FB8 E7A60010 */  swc1      $f6, 0x10($sp)
/* EA28BC 80241FBC C600000C */  lwc1      $f0, 0xc($s0)
/* EA28C0 80241FC0 E7A00014 */  swc1      $f0, 0x14($sp)
/* EA28C4 80241FC4 860200A8 */  lh        $v0, 0xa8($s0)
/* EA28C8 80241FC8 27A50020 */  addiu     $a1, $sp, 0x20
/* EA28CC 80241FCC 44820000 */  mtc1      $v0, $f0
/* EA28D0 80241FD0 00000000 */  nop
/* EA28D4 80241FD4 46800020 */  cvt.s.w   $f0, $f0
/* EA28D8 80241FD8 E7A00018 */  swc1      $f0, 0x18($sp)
/* EA28DC 80241FDC 860200A6 */  lh        $v0, 0xa6($s0)
/* EA28E0 80241FE0 27A60024 */  addiu     $a2, $sp, 0x24
/* EA28E4 80241FE4 44820000 */  mtc1      $v0, $f0
/* EA28E8 80241FE8 00000000 */  nop
/* EA28EC 80241FEC 46800020 */  cvt.s.w   $f0, $f0
/* EA28F0 80241FF0 E7A0001C */  swc1      $f0, 0x1c($sp)
/* EA28F4 80241FF4 8E040080 */  lw        $a0, 0x80($s0)
/* EA28F8 80241FF8 0C0394C1 */  jal       dead_npc_test_move_simple_with_slipping
/* EA28FC 80241FFC 27A70028 */   addiu    $a3, $sp, 0x28
/* EA2900 80242000 0040902D */  daddu     $s2, $v0, $zero
/* EA2904 80242004 16400005 */  bnez      $s2, .L8024201C
/* EA2908 80242008 00000000 */   nop
/* EA290C 8024200C 8E050018 */  lw        $a1, 0x18($s0)
/* EA2910 80242010 8E06000C */  lw        $a2, 0xc($s0)
/* EA2914 80242014 0C00F909 */  jal       dead_npc_move_heading
/* EA2918 80242018 0200202D */   daddu    $a0, $s0, $zero
.L8024201C:
/* EA291C 8024201C 8602008E */  lh        $v0, 0x8e($s0)
/* EA2920 80242020 9603008E */  lhu       $v1, 0x8e($s0)
/* EA2924 80242024 18400007 */  blez      $v0, .L80242044
/* EA2928 80242028 2462FFFF */   addiu    $v0, $v1, -1
/* EA292C 8024202C A602008E */  sh        $v0, 0x8e($s0)
/* EA2930 80242030 00021400 */  sll       $v0, $v0, 0x10
/* EA2934 80242034 18400003 */  blez      $v0, .L80242044
/* EA2938 80242038 00000000 */   nop
/* EA293C 8024203C 12400008 */  beqz      $s2, .L80242060
/* EA2940 80242040 00000000 */   nop
.L80242044:
/* EA2944 80242044 8E2200CC */  lw        $v0, 0xcc($s1)
/* EA2948 80242048 A2200007 */  sb        $zero, 7($s1)
/* EA294C 8024204C 8C420028 */  lw        $v0, 0x28($v0)
/* EA2950 80242050 A600008E */  sh        $zero, 0x8e($s0)
/* EA2954 80242054 AE020028 */  sw        $v0, 0x28($s0)
/* EA2958 80242058 2402000F */  addiu     $v0, $zero, 0xf
/* EA295C 8024205C AE620070 */  sw        $v0, 0x70($s3)
.L80242060:
/* EA2960 80242060 8FBF0040 */  lw        $ra, 0x40($sp)
/* EA2964 80242064 8FB3003C */  lw        $s3, 0x3c($sp)
/* EA2968 80242068 8FB20038 */  lw        $s2, 0x38($sp)
/* EA296C 8024206C 8FB10034 */  lw        $s1, 0x34($sp)
/* EA2970 80242070 8FB00030 */  lw        $s0, 0x30($sp)
/* EA2974 80242074 03E00008 */  jr        $ra
/* EA2978 80242078 27BD0048 */   addiu    $sp, $sp, 0x48
