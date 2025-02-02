.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel fx_133_main
/* 413360 E0126000 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 413364 E0126004 F7B40038 */  sdc1      $f20, 0x38($sp)
/* 413368 E0126008 4485A000 */  mtc1      $a1, $f20
/* 41336C E012600C F7B60040 */  sdc1      $f22, 0x40($sp)
/* 413370 E0126010 4486B000 */  mtc1      $a2, $f22
/* 413374 E0126014 AFB20030 */  sw        $s2, 0x30($sp)
/* 413378 E0126018 0080902D */  daddu     $s2, $a0, $zero
/* 41337C E012601C F7B80048 */  sdc1      $f24, 0x48($sp)
/* 413380 E0126020 4487C000 */  mtc1      $a3, $f24
/* 413384 E0126024 27A40010 */  addiu     $a0, $sp, 0x10
/* 413388 E0126028 AFB1002C */  sw        $s1, 0x2c($sp)
/* 41338C E012602C 8FB10064 */  lw        $s1, 0x64($sp)
/* 413390 E0126030 3C02E012 */  lui       $v0, %hi(fx_133_init)
/* 413394 E0126034 2442612C */  addiu     $v0, $v0, %lo(fx_133_init)
/* 413398 E0126038 AFA20018 */  sw        $v0, 0x18($sp)
/* 41339C E012603C 3C02E012 */  lui       $v0, %hi(fx_133_update)
/* 4133A0 E0126040 24426134 */  addiu     $v0, $v0, %lo(fx_133_update)
/* 4133A4 E0126044 AFA2001C */  sw        $v0, 0x1c($sp)
/* 4133A8 E0126048 3C02E012 */  lui       $v0, %hi(fx_133_render)
/* 4133AC E012604C 244264A4 */  addiu     $v0, $v0, %lo(fx_133_render)
/* 4133B0 E0126050 AFA20020 */  sw        $v0, 0x20($sp)
/* 4133B4 E0126054 24020085 */  addiu     $v0, $zero, 0x85
/* 4133B8 E0126058 AFBF0034 */  sw        $ra, 0x34($sp)
/* 4133BC E012605C AFB00028 */  sw        $s0, 0x28($sp)
/* 4133C0 E0126060 AFA00010 */  sw        $zero, 0x10($sp)
/* 4133C4 E0126064 AFA00024 */  sw        $zero, 0x24($sp)
/* 4133C8 E0126068 0C080124 */  jal       shim_create_effect_instance
/* 4133CC E012606C AFA20014 */   sw       $v0, 0x14($sp)
/* 4133D0 E0126070 24040058 */  addiu     $a0, $zero, 0x58
/* 4133D4 E0126074 24030001 */  addiu     $v1, $zero, 1
/* 4133D8 E0126078 0040802D */  daddu     $s0, $v0, $zero
/* 4133DC E012607C 0C08012C */  jal       shim_general_heap_malloc
/* 4133E0 E0126080 AE030008 */   sw       $v1, 8($s0)
/* 4133E4 E0126084 0040282D */  daddu     $a1, $v0, $zero
/* 4133E8 E0126088 14A00003 */  bnez      $a1, .LE0126098
/* 4133EC E012608C AE02000C */   sw       $v0, 0xc($s0)
.LE0126090:
/* 4133F0 E0126090 08049824 */  j         .LE0126090
/* 4133F4 E0126094 00000000 */   nop
.LE0126098:
/* 4133F8 E0126098 24020001 */  addiu     $v0, $zero, 1
/* 4133FC E012609C A4A20000 */  sh        $v0, ($a1)
/* 413400 E01260A0 A4B20002 */  sh        $s2, 2($a1)
/* 413404 E01260A4 1E200004 */  bgtz      $s1, .LE01260B8
/* 413408 E01260A8 ACA00014 */   sw       $zero, 0x14($a1)
/* 41340C E01260AC 240203E8 */  addiu     $v0, $zero, 0x3e8
/* 413410 E01260B0 0804982F */  j         .LE01260BC
/* 413414 E01260B4 ACA20010 */   sw       $v0, 0x10($a1)
.LE01260B8:
/* 413418 E01260B8 ACB10010 */  sw        $s1, 0x10($a1)
.LE01260BC:
/* 41341C E01260BC 0200102D */  daddu     $v0, $s0, $zero
/* 413420 E01260C0 240300FF */  addiu     $v1, $zero, 0xff
/* 413424 E01260C4 E4B40004 */  swc1      $f20, 4($a1)
/* 413428 E01260C8 E4B60008 */  swc1      $f22, 8($a1)
/* 41342C E01260CC E4B8000C */  swc1      $f24, 0xc($a1)
/* 413430 E01260D0 C7A00060 */  lwc1      $f0, 0x60($sp)
/* 413434 E01260D4 24040078 */  addiu     $a0, $zero, 0x78
/* 413438 E01260D8 ACA30018 */  sw        $v1, 0x18($a1)
/* 41343C E01260DC ACA3001C */  sw        $v1, 0x1c($a1)
/* 413440 E01260E0 ACA40020 */  sw        $a0, 0x20($a1)
/* 413444 E01260E4 ACA30028 */  sw        $v1, 0x28($a1)
/* 413448 E01260E8 ACA4002C */  sw        $a0, 0x2c($a1)
/* 41344C E01260EC ACA00030 */  sw        $zero, 0x30($a1)
/* 413450 E01260F0 ACA30034 */  sw        $v1, 0x34($a1)
/* 413454 E01260F4 ACA30024 */  sw        $v1, 0x24($a1)
/* 413458 E01260F8 ACA0003C */  sw        $zero, 0x3c($a1)
/* 41345C E01260FC ACA00040 */  sw        $zero, 0x40($a1)
/* 413460 E0126100 ACA00044 */  sw        $zero, 0x44($a1)
/* 413464 E0126104 E4A00038 */  swc1      $f0, 0x38($a1)
/* 413468 E0126108 8FBF0034 */  lw        $ra, 0x34($sp)
/* 41346C E012610C 8FB20030 */  lw        $s2, 0x30($sp)
/* 413470 E0126110 8FB1002C */  lw        $s1, 0x2c($sp)
/* 413474 E0126114 8FB00028 */  lw        $s0, 0x28($sp)
/* 413478 E0126118 D7B80048 */  ldc1      $f24, 0x48($sp)
/* 41347C E012611C D7B60040 */  ldc1      $f22, 0x40($sp)
/* 413480 E0126120 D7B40038 */  ldc1      $f20, 0x38($sp)
/* 413484 E0126124 03E00008 */  jr        $ra
/* 413488 E0126128 27BD0050 */   addiu    $sp, $sp, 0x50
