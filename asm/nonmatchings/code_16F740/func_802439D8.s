.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802439D8
/* 1722B8 802439D8 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 1722BC 802439DC AFB60028 */  sw        $s6, 0x28($sp)
/* 1722C0 802439E0 3C16800E */  lui       $s6, %hi(gBattleStatus)
/* 1722C4 802439E4 26D6C070 */  addiu     $s6, $s6, %lo(gBattleStatus)
/* 1722C8 802439E8 AFB7002C */  sw        $s7, 0x2c($sp)
/* 1722CC 802439EC 3C178011 */  lui       $s7, %hi(gPlayerData)
/* 1722D0 802439F0 26F7F290 */  addiu     $s7, $s7, %lo(gPlayerData)
/* 1722D4 802439F4 AFBF0030 */  sw        $ra, 0x30($sp)
/* 1722D8 802439F8 AFB50024 */  sw        $s5, 0x24($sp)
/* 1722DC 802439FC AFB40020 */  sw        $s4, 0x20($sp)
/* 1722E0 80243A00 AFB3001C */  sw        $s3, 0x1c($sp)
/* 1722E4 80243A04 AFB20018 */  sw        $s2, 0x18($sp)
/* 1722E8 80243A08 AFB10014 */  sw        $s1, 0x14($sp)
/* 1722EC 80243A0C AFB00010 */  sw        $s0, 0x10($sp)
/* 1722F0 80243A10 F7B80048 */  sdc1      $f24, 0x48($sp)
/* 1722F4 80243A14 F7B60040 */  sdc1      $f22, 0x40($sp)
/* 1722F8 80243A18 F7B40038 */  sdc1      $f20, 0x38($sp)
/* 1722FC 80243A1C 8ED500D8 */  lw        $s5, 0xd8($s6)
/* 172300 80243A20 3C02800E */  lui       $v0, %hi(gBattleStatus+0x46C)
/* 172304 80243A24 8C42C4DC */  lw        $v0, %lo(gBattleStatus+0x46C)($v0)
/* 172308 80243A28 8ED300DC */  lw        $s3, 0xdc($s6)
/* 17230C 80243A2C 1440002E */  bnez      $v0, .L80243AE8
/* 172310 80243A30 0000A02D */   daddu    $s4, $zero, $zero
/* 172314 80243A34 0280882D */  daddu     $s1, $s4, $zero
/* 172318 80243A38 02C0902D */  daddu     $s2, $s6, $zero
.L80243A3C:
/* 17231C 80243A3C 8E5000E0 */  lw        $s0, 0xe0($s2)
/* 172320 80243A40 5200000B */  beql      $s0, $zero, .L80243A70
/* 172324 80243A44 26310001 */   addiu    $s1, $s1, 1
/* 172328 80243A48 8E0201D8 */  lw        $v0, 0x1d8($s0)
/* 17232C 80243A4C 50400008 */  beql      $v0, $zero, .L80243A70
/* 172330 80243A50 26310001 */   addiu    $s1, $s1, 1
/* 172334 80243A54 8E0401E8 */  lw        $a0, 0x1e8($s0)
/* 172338 80243A58 0C0B1059 */  jal       does_script_exist
/* 17233C 80243A5C 00000000 */   nop      
/* 172340 80243A60 50400002 */  beql      $v0, $zero, .L80243A6C
/* 172344 80243A64 AE0001D8 */   sw       $zero, 0x1d8($s0)
/* 172348 80243A68 24140001 */  addiu     $s4, $zero, 1
.L80243A6C:
/* 17234C 80243A6C 26310001 */  addiu     $s1, $s1, 1
.L80243A70:
/* 172350 80243A70 2A220018 */  slti      $v0, $s1, 0x18
/* 172354 80243A74 1440FFF1 */  bnez      $v0, .L80243A3C
/* 172358 80243A78 26520004 */   addiu    $s2, $s2, 4
/* 17235C 80243A7C 1680001A */  bnez      $s4, .L80243AE8
/* 172360 80243A80 00000000 */   nop      
/* 172364 80243A84 0000882D */  daddu     $s1, $zero, $zero
/* 172368 80243A88 02C0902D */  daddu     $s2, $s6, $zero
.L80243A8C:
/* 17236C 80243A8C 8E5000E0 */  lw        $s0, 0xe0($s2)
/* 172370 80243A90 5200000B */  beql      $s0, $zero, .L80243AC0
/* 172374 80243A94 26310001 */   addiu    $s1, $s1, 1
/* 172378 80243A98 8E0201D4 */  lw        $v0, 0x1d4($s0)
/* 17237C 80243A9C 50400008 */  beql      $v0, $zero, .L80243AC0
/* 172380 80243AA0 26310001 */   addiu    $s1, $s1, 1
/* 172384 80243AA4 8E0401E4 */  lw        $a0, 0x1e4($s0)
/* 172388 80243AA8 0C0B1059 */  jal       does_script_exist
/* 17238C 80243AAC 00000000 */   nop      
/* 172390 80243AB0 50400002 */  beql      $v0, $zero, .L80243ABC
/* 172394 80243AB4 AE0001D4 */   sw       $zero, 0x1d4($s0)
/* 172398 80243AB8 24140001 */  addiu     $s4, $zero, 1
.L80243ABC:
/* 17239C 80243ABC 26310001 */  addiu     $s1, $s1, 1
.L80243AC0:
/* 1723A0 80243AC0 2A220018 */  slti      $v0, $s1, 0x18
/* 1723A4 80243AC4 1440FFF1 */  bnez      $v0, .L80243A8C
/* 1723A8 80243AC8 26520004 */   addiu    $s2, $s2, 4
/* 1723AC 80243ACC 16800006 */  bnez      $s4, .L80243AE8
/* 1723B0 80243AD0 00000000 */   nop      
/* 1723B4 80243AD4 0C093903 */  jal       func_8024E40C
/* 1723B8 80243AD8 24040002 */   addiu    $a0, $zero, 2
/* 1723BC 80243ADC 24020001 */  addiu     $v0, $zero, 1
/* 1723C0 80243AE0 3C01800E */  lui       $at, %hi(gBattleStatus+0x46C)
/* 1723C4 80243AE4 AC22C4DC */  sw        $v0, %lo(gBattleStatus+0x46C)($at)
.L80243AE8:
/* 1723C8 80243AE8 3C04800E */  lui       $a0, %hi(gBattleStatus+0x46C)
/* 1723CC 80243AEC 2484C4DC */  addiu     $a0, $a0, %lo(gBattleStatus+0x46C)
/* 1723D0 80243AF0 8C830000 */  lw        $v1, ($a0)
/* 1723D4 80243AF4 24020001 */  addiu     $v0, $zero, 1
/* 1723D8 80243AF8 1462002A */  bne       $v1, $v0, .L80243BA4
/* 1723DC 80243AFC 00000000 */   nop      
/* 1723E0 80243B00 3C03800E */  lui       $v1, %hi(gBattleStatus)
/* 1723E4 80243B04 2463C070 */  addiu     $v1, $v1, %lo(gBattleStatus)
/* 1723E8 80243B08 8C620004 */  lw        $v0, 4($v1)
/* 1723EC 80243B0C 30420040 */  andi      $v0, $v0, 0x40
/* 1723F0 80243B10 14400007 */  bnez      $v0, .L80243B30
/* 1723F4 80243B14 2402000C */   addiu    $v0, $zero, 0xc
/* 1723F8 80243B18 8C620000 */  lw        $v0, ($v1)
/* 1723FC 80243B1C 3C030010 */  lui       $v1, 0x10
/* 172400 80243B20 00431024 */  and       $v0, $v0, $v1
/* 172404 80243B24 14400004 */  bnez      $v0, .L80243B38
/* 172408 80243B28 3C03F7FF */   lui      $v1, 0xf7ff
/* 17240C 80243B2C 2402000C */  addiu     $v0, $zero, 0xc
.L80243B30:
/* 172410 80243B30 08090EE9 */  j         .L80243BA4
/* 172414 80243B34 AC820000 */   sw       $v0, ($a0)
.L80243B38:
/* 172418 80243B38 8EA20000 */  lw        $v0, ($s5)
/* 17241C 80243B3C 3463FFFF */  ori       $v1, $v1, 0xffff
/* 172420 80243B40 00431024 */  and       $v0, $v0, $v1
/* 172424 80243B44 AEA20000 */  sw        $v0, ($s5)
/* 172428 80243B48 8E620000 */  lw        $v0, ($s3)
/* 17242C 80243B4C 00431024 */  and       $v0, $v0, $v1
/* 172430 80243B50 AE620000 */  sw        $v0, ($s3)
/* 172434 80243B54 8EA20000 */  lw        $v0, ($s5)
/* 172438 80243B58 3C030400 */  lui       $v1, 0x400
/* 17243C 80243B5C 00431025 */  or        $v0, $v0, $v1
/* 172440 80243B60 AEA20000 */  sw        $v0, ($s5)
/* 172444 80243B64 8E620000 */  lw        $v0, ($s3)
/* 172448 80243B68 C6600138 */  lwc1      $f0, 0x138($s3)
/* 17244C 80243B6C C6620140 */  lwc1      $f2, 0x140($s3)
/* 172450 80243B70 00431025 */  or        $v0, $v0, $v1
/* 172454 80243B74 AE620000 */  sw        $v0, ($s3)
/* 172458 80243B78 E660000C */  swc1      $f0, 0xc($s3)
/* 17245C 80243B7C E6620014 */  swc1      $f2, 0x14($s3)
/* 172460 80243B80 C6A00138 */  lwc1      $f0, 0x138($s5)
/* 172464 80243B84 2402000B */  addiu     $v0, $zero, 0xb
/* 172468 80243B88 AC820000 */  sw        $v0, ($a0)
/* 17246C 80243B8C E6600018 */  swc1      $f0, 0x18($s3)
/* 172470 80243B90 C6A00140 */  lwc1      $f0, 0x140($s5)
/* 172474 80243B94 24020004 */  addiu     $v0, $zero, 4
/* 172478 80243B98 A6620070 */  sh        $v0, 0x70($s3)
/* 17247C 80243B9C AE600054 */  sw        $zero, 0x54($s3)
/* 172480 80243BA0 E6600020 */  swc1      $f0, 0x20($s3)
.L80243BA4:
/* 172484 80243BA4 3C03800E */  lui       $v1, %hi(gBattleStatus+0x46C)
/* 172488 80243BA8 8C63C4DC */  lw        $v1, %lo(gBattleStatus+0x46C)($v1)
/* 17248C 80243BAC 2402000B */  addiu     $v0, $zero, 0xb
/* 172490 80243BB0 1462007D */  bne       $v1, $v0, .L80243DA8
/* 172494 80243BB4 2402000C */   addiu    $v0, $zero, 0xc
/* 172498 80243BB8 86620070 */  lh        $v0, 0x70($s3)
/* 17249C 80243BBC 10400022 */  beqz      $v0, .L80243C48
/* 1724A0 80243BC0 00000000 */   nop      
/* 1724A4 80243BC4 C6600018 */  lwc1      $f0, 0x18($s3)
/* 1724A8 80243BC8 C6680144 */  lwc1      $f8, 0x144($s3)
/* 1724AC 80243BCC C6620020 */  lwc1      $f2, 0x20($s3)
/* 1724B0 80243BD0 46080001 */  sub.s     $f0, $f0, $f8
/* 1724B4 80243BD4 C664014C */  lwc1      $f4, 0x14c($s3)
/* 1724B8 80243BD8 46041081 */  sub.s     $f2, $f2, $f4
/* 1724BC 80243BDC 44823000 */  mtc1      $v0, $f6
/* 1724C0 80243BE0 00000000 */  nop       
/* 1724C4 80243BE4 468031A0 */  cvt.s.w   $f6, $f6
/* 1724C8 80243BE8 46060003 */  div.s     $f0, $f0, $f6
/* 1724CC 80243BEC 46004200 */  add.s     $f8, $f8, $f0
/* 1724D0 80243BF0 46003006 */  mov.s     $f0, $f6
/* 1724D4 80243BF4 46061083 */  div.s     $f2, $f2, $f6
/* 1724D8 80243BF8 C660000C */  lwc1      $f0, 0xc($s3)
/* 1724DC 80243BFC 46022100 */  add.s     $f4, $f4, $f2
/* 1724E0 80243C00 E6680144 */  swc1      $f8, 0x144($s3)
/* 1724E4 80243C04 E664014C */  swc1      $f4, 0x14c($s3)
/* 1724E8 80243C08 C6A40144 */  lwc1      $f4, 0x144($s5)
/* 1724EC 80243C0C 46040001 */  sub.s     $f0, $f0, $f4
/* 1724F0 80243C10 46003086 */  mov.s     $f2, $f6
/* 1724F4 80243C14 46060003 */  div.s     $f0, $f0, $f6
/* 1724F8 80243C18 46002100 */  add.s     $f4, $f4, $f0
/* 1724FC 80243C1C E6A40144 */  swc1      $f4, 0x144($s5)
/* 172500 80243C20 C6600014 */  lwc1      $f0, 0x14($s3)
/* 172504 80243C24 C6A4014C */  lwc1      $f4, 0x14c($s5)
/* 172508 80243C28 86620070 */  lh        $v0, 0x70($s3)
/* 17250C 80243C2C 46040001 */  sub.s     $f0, $f0, $f4
/* 172510 80243C30 44821000 */  mtc1      $v0, $f2
/* 172514 80243C34 00000000 */  nop       
/* 172518 80243C38 468010A0 */  cvt.s.w   $f2, $f2
/* 17251C 80243C3C 46020003 */  div.s     $f0, $f0, $f2
/* 172520 80243C40 46002100 */  add.s     $f4, $f4, $f0
/* 172524 80243C44 E6A4014C */  swc1      $f4, 0x14c($s5)
.L80243C48:
/* 172528 80243C48 C66C0054 */  lwc1      $f12, 0x54($s3)
/* 17252C 80243C4C 3C0140C9 */  lui       $at, 0x40c9
/* 172530 80243C50 34210FD0 */  ori       $at, $at, 0xfd0
/* 172534 80243C54 4481B000 */  mtc1      $at, $f22
/* 172538 80243C58 00000000 */  nop       
/* 17253C 80243C5C 46166302 */  mul.s     $f12, $f12, $f22
/* 172540 80243C60 00000000 */  nop       
/* 172544 80243C64 3C0143B4 */  lui       $at, 0x43b4
/* 172548 80243C68 4481C000 */  mtc1      $at, $f24
/* 17254C 80243C6C 3C014180 */  lui       $at, 0x4180
/* 172550 80243C70 4481A000 */  mtc1      $at, $f20
/* 172554 80243C74 0C00A85B */  jal       sin_rad
/* 172558 80243C78 46186303 */   div.s    $f12, $f12, $f24
/* 17255C 80243C7C 46140002 */  mul.s     $f0, $f0, $f20
/* 172560 80243C80 00000000 */  nop       
/* 172564 80243C84 C662014C */  lwc1      $f2, 0x14c($s3)
/* 172568 80243C88 46001081 */  sub.s     $f2, $f2, $f0
/* 17256C 80243C8C C66C0054 */  lwc1      $f12, 0x54($s3)
/* 172570 80243C90 0C00A6C9 */  jal       clamp_angle
/* 172574 80243C94 E662014C */   swc1     $f2, 0x14c($s3)
/* 172578 80243C98 C66C0054 */  lwc1      $f12, 0x54($s3)
/* 17257C 80243C9C 46166302 */  mul.s     $f12, $f12, $f22
/* 172580 80243CA0 00000000 */  nop       
/* 172584 80243CA4 E660018C */  swc1      $f0, 0x18c($s3)
/* 172588 80243CA8 0C00A85B */  jal       sin_rad
/* 17258C 80243CAC 46186303 */   div.s    $f12, $f12, $f24
/* 172590 80243CB0 46140002 */  mul.s     $f0, $f0, $f20
/* 172594 80243CB4 00000000 */  nop       
/* 172598 80243CB8 C6A2014C */  lwc1      $f2, 0x14c($s5)
/* 17259C 80243CBC 46001080 */  add.s     $f2, $f2, $f0
/* 1725A0 80243CC0 E6A2014C */  swc1      $f2, 0x14c($s5)
/* 1725A4 80243CC4 0C00A6C9 */  jal       clamp_angle
/* 1725A8 80243CC8 C66C0054 */   lwc1     $f12, 0x54($s3)
/* 1725AC 80243CCC E6A0018C */  swc1      $f0, 0x18c($s5)
/* 1725B0 80243CD0 C6600054 */  lwc1      $f0, 0x54($s3)
/* 1725B4 80243CD4 3C0142B4 */  lui       $at, 0x42b4
/* 1725B8 80243CD8 44811000 */  mtc1      $at, $f2
/* 1725BC 80243CDC 86620070 */  lh        $v0, 0x70($s3)
/* 1725C0 80243CE0 46020000 */  add.s     $f0, $f0, $f2
/* 1725C4 80243CE4 96630070 */  lhu       $v1, 0x70($s3)
/* 1725C8 80243CE8 10400004 */  beqz      $v0, .L80243CFC
/* 1725CC 80243CEC E6600054 */   swc1     $f0, 0x54($s3)
/* 1725D0 80243CF0 2462FFFF */  addiu     $v0, $v1, -1
/* 1725D4 80243CF4 08090F67 */  j         .L80243D9C
/* 1725D8 80243CF8 A6620070 */   sh       $v0, 0x70($s3)
.L80243CFC:
/* 1725DC 80243CFC C6600018 */  lwc1      $f0, 0x18($s3)
/* 1725E0 80243D00 C6620020 */  lwc1      $f2, 0x20($s3)
/* 1725E4 80243D04 C664000C */  lwc1      $f4, 0xc($s3)
/* 1725E8 80243D08 E6600144 */  swc1      $f0, 0x144($s3)
/* 1725EC 80243D0C E662014C */  swc1      $f2, 0x14c($s3)
/* 1725F0 80243D10 E6A40144 */  swc1      $f4, 0x144($s5)
/* 1725F4 80243D14 C6600014 */  lwc1      $f0, 0x14($s3)
/* 1725F8 80243D18 E6A0014C */  swc1      $f0, 0x14c($s5)
/* 1725FC 80243D1C C6600144 */  lwc1      $f0, 0x144($s3)
/* 172600 80243D20 C662014C */  lwc1      $f2, 0x14c($s3)
/* 172604 80243D24 3C030800 */  lui       $v1, 0x800
/* 172608 80243D28 E6600138 */  swc1      $f0, 0x138($s3)
/* 17260C 80243D2C E6620140 */  swc1      $f2, 0x140($s3)
/* 172610 80243D30 C6A00144 */  lwc1      $f0, 0x144($s5)
/* 172614 80243D34 8EA20000 */  lw        $v0, ($s5)
/* 172618 80243D38 C6A2014C */  lwc1      $f2, 0x14c($s5)
/* 17261C 80243D3C 00431025 */  or        $v0, $v0, $v1
/* 172620 80243D40 E6A00138 */  swc1      $f0, 0x138($s5)
/* 172624 80243D44 E6A20140 */  swc1      $f2, 0x140($s5)
/* 172628 80243D48 AEA20000 */  sw        $v0, ($s5)
/* 17262C 80243D4C 8E620000 */  lw        $v0, ($s3)
/* 172630 80243D50 3C04800E */  lui       $a0, %hi(gBattleStatus)
/* 172634 80243D54 2484C070 */  addiu     $a0, $a0, %lo(gBattleStatus)
/* 172638 80243D58 00431025 */  or        $v0, $v0, $v1
/* 17263C 80243D5C AE620000 */  sw        $v0, ($s3)
/* 172640 80243D60 8C820004 */  lw        $v0, 4($a0)
/* 172644 80243D64 30420040 */  andi      $v0, $v0, 0x40
/* 172648 80243D68 10400004 */  beqz      $v0, .L80243D7C
/* 17264C 80243D6C 3C030010 */   lui      $v1, 0x10
/* 172650 80243D70 8C820000 */  lw        $v0, ($a0)
/* 172654 80243D74 08090F63 */  j         .L80243D8C
/* 172658 80243D78 00431025 */   or       $v0, $v0, $v1
.L80243D7C:
/* 17265C 80243D7C 3C03FFEF */  lui       $v1, 0xffef
/* 172660 80243D80 8C820000 */  lw        $v0, ($a0)
/* 172664 80243D84 3463FFFF */  ori       $v1, $v1, 0xffff
/* 172668 80243D88 00431024 */  and       $v0, $v0, $v1
.L80243D8C:
/* 17266C 80243D8C AC820000 */  sw        $v0, ($a0)
/* 172670 80243D90 2402000C */  addiu     $v0, $zero, 0xc
/* 172674 80243D94 3C01800E */  lui       $at, %hi(gBattleStatus+0x46C)
/* 172678 80243D98 AC22C4DC */  sw        $v0, %lo(gBattleStatus+0x46C)($at)
.L80243D9C:
/* 17267C 80243D9C 3C03800E */  lui       $v1, %hi(gBattleStatus+0x46C)
/* 172680 80243DA0 8C63C4DC */  lw        $v1, %lo(gBattleStatus+0x46C)($v1)
/* 172684 80243DA4 2402000C */  addiu     $v0, $zero, 0xc
.L80243DA8:
/* 172688 80243DA8 1462004C */  bne       $v1, $v0, .L80243EDC
/* 17268C 80243DAC 3C02FFFE */   lui      $v0, 0xfffe
/* 172690 80243DB0 3C10800E */  lui       $s0, %hi(gBattleStatus)
/* 172694 80243DB4 2610C070 */  addiu     $s0, $s0, %lo(gBattleStatus)
/* 172698 80243DB8 8E030004 */  lw        $v1, 4($s0)
/* 17269C 80243DBC 3442FFFF */  ori       $v0, $v0, 0xffff
/* 1726A0 80243DC0 00621824 */  and       $v1, $v1, $v0
/* 1726A4 80243DC4 AE030004 */  sw        $v1, 4($s0)
/* 1726A8 80243DC8 8EA20000 */  lw        $v0, ($s5)
/* 1726AC 80243DCC 3C030C00 */  lui       $v1, 0xc00
/* 1726B0 80243DD0 A2A0021D */  sb        $zero, 0x21d($s5)
/* 1726B4 80243DD4 00431025 */  or        $v0, $v0, $v1
/* 1726B8 80243DD8 12600004 */  beqz      $s3, .L80243DEC
/* 1726BC 80243DDC AEA20000 */   sw       $v0, ($s5)
/* 1726C0 80243DE0 00431025 */  or        $v0, $v0, $v1
/* 1726C4 80243DE4 AEA20000 */  sw        $v0, ($s5)
/* 1726C8 80243DE8 A260021D */  sb        $zero, 0x21d($s3)
.L80243DEC:
/* 1726CC 80243DEC 0C098298 */  jal       func_80260A60
/* 1726D0 80243DF0 00000000 */   nop      
/* 1726D4 80243DF4 3C04FFBF */  lui       $a0, 0xffbf
/* 1726D8 80243DF8 3484FFFF */  ori       $a0, $a0, 0xffff
/* 1726DC 80243DFC 8E030000 */  lw        $v1, ($s0)
/* 1726E0 80243E00 96E20290 */  lhu       $v0, 0x290($s7)
/* 1726E4 80243E04 00641824 */  and       $v1, $v1, $a0
/* 1726E8 80243E08 24420020 */  addiu     $v0, $v0, 0x20
/* 1726EC 80243E0C AE030000 */  sw        $v1, ($s0)
/* 1726F0 80243E10 A6E20290 */  sh        $v0, 0x290($s7)
/* 1726F4 80243E14 00021400 */  sll       $v0, $v0, 0x10
/* 1726F8 80243E18 82E3028E */  lb        $v1, 0x28e($s7)
/* 1726FC 80243E1C 00021403 */  sra       $v0, $v0, 0x10
/* 172700 80243E20 00031A00 */  sll       $v1, $v1, 8
/* 172704 80243E24 0062102A */  slt       $v0, $v1, $v0
/* 172708 80243E28 54400001 */  bnel      $v0, $zero, .L80243E30
/* 17270C 80243E2C A6E30290 */   sh       $v1, 0x290($s7)
.L80243E30:
/* 172710 80243E30 0000882D */  daddu     $s1, $zero, $zero
/* 172714 80243E34 2414000B */  addiu     $s4, $zero, 0xb
/* 172718 80243E38 02C0902D */  daddu     $s2, $s6, $zero
.L80243E3C:
/* 17271C 80243E3C 8E5000E0 */  lw        $s0, 0xe0($s2)
/* 172720 80243E40 52000010 */  beql      $s0, $zero, .L80243E84
/* 172724 80243E44 26310001 */   addiu    $s1, $s1, 1
/* 172728 80243E48 8E0201CC */  lw        $v0, 0x1cc($s0)
/* 17272C 80243E4C 5040000D */  beql      $v0, $zero, .L80243E84
/* 172730 80243E50 26310001 */   addiu    $s1, $s1, 1
/* 172734 80243E54 2405000A */  addiu     $a1, $zero, 0xa
/* 172738 80243E58 A2D401A7 */  sb        $s4, 0x1a7($s6)
/* 17273C 80243E5C 8E0401CC */  lw        $a0, 0x1cc($s0)
/* 172740 80243E60 0C0B0CF8 */  jal       start_script
/* 172744 80243E64 0000302D */   daddu    $a2, $zero, $zero
/* 172748 80243E68 0040182D */  daddu     $v1, $v0, $zero
/* 17274C 80243E6C AE0301DC */  sw        $v1, 0x1dc($s0)
/* 172750 80243E70 8C620144 */  lw        $v0, 0x144($v1)
/* 172754 80243E74 AE0201EC */  sw        $v0, 0x1ec($s0)
/* 172758 80243E78 36220200 */  ori       $v0, $s1, 0x200
/* 17275C 80243E7C AC620148 */  sw        $v0, 0x148($v1)
/* 172760 80243E80 26310001 */  addiu     $s1, $s1, 1
.L80243E84:
/* 172764 80243E84 2A220018 */  slti      $v0, $s1, 0x18
/* 172768 80243E88 1440FFEC */  bnez      $v0, .L80243E3C
/* 17276C 80243E8C 26520004 */   addiu    $s2, $s2, 4
/* 172770 80243E90 12600010 */  beqz      $s3, .L80243ED4
/* 172774 80243E94 24020002 */   addiu    $v0, $zero, 2
/* 172778 80243E98 8E6201CC */  lw        $v0, 0x1cc($s3)
/* 17277C 80243E9C 1040000C */  beqz      $v0, .L80243ED0
/* 172780 80243EA0 2405000A */   addiu    $a1, $zero, 0xa
/* 172784 80243EA4 2402000B */  addiu     $v0, $zero, 0xb
/* 172788 80243EA8 A2C201A7 */  sb        $v0, 0x1a7($s6)
/* 17278C 80243EAC 8E6401CC */  lw        $a0, 0x1cc($s3)
/* 172790 80243EB0 0C0B0CF8 */  jal       start_script
/* 172794 80243EB4 0000302D */   daddu    $a2, $zero, $zero
/* 172798 80243EB8 0040182D */  daddu     $v1, $v0, $zero
/* 17279C 80243EBC AE6301DC */  sw        $v1, 0x1dc($s3)
/* 1727A0 80243EC0 8C620144 */  lw        $v0, 0x144($v1)
/* 1727A4 80243EC4 AE6201EC */  sw        $v0, 0x1ec($s3)
/* 1727A8 80243EC8 24020100 */  addiu     $v0, $zero, 0x100
/* 1727AC 80243ECC AC620148 */  sw        $v0, 0x148($v1)
.L80243ED0:
/* 1727B0 80243ED0 24020002 */  addiu     $v0, $zero, 2
.L80243ED4:
/* 1727B4 80243ED4 3C01800E */  lui       $at, %hi(gBattleStatus+0x46C)
/* 1727B8 80243ED8 AC22C4DC */  sw        $v0, %lo(gBattleStatus+0x46C)($at)
.L80243EDC:
/* 1727BC 80243EDC 3C03800E */  lui       $v1, %hi(gBattleStatus+0x46C)
/* 1727C0 80243EE0 8C63C4DC */  lw        $v1, %lo(gBattleStatus+0x46C)($v1)
/* 1727C4 80243EE4 24020002 */  addiu     $v0, $zero, 2
/* 1727C8 80243EE8 14620026 */  bne       $v1, $v0, .L80243F84
/* 1727CC 80243EEC 28620005 */   slti     $v0, $v1, 5
/* 1727D0 80243EF0 0000A02D */  daddu     $s4, $zero, $zero
/* 1727D4 80243EF4 0280882D */  daddu     $s1, $s4, $zero
/* 1727D8 80243EF8 02C0902D */  daddu     $s2, $s6, $zero
.L80243EFC:
/* 1727DC 80243EFC 8E5000E0 */  lw        $s0, 0xe0($s2)
/* 1727E0 80243F00 5200000A */  beql      $s0, $zero, .L80243F2C
/* 1727E4 80243F04 26310001 */   addiu    $s1, $s1, 1
/* 1727E8 80243F08 8E0201CC */  lw        $v0, 0x1cc($s0)
/* 1727EC 80243F0C 50400007 */  beql      $v0, $zero, .L80243F2C
/* 1727F0 80243F10 26310001 */   addiu    $s1, $s1, 1
/* 1727F4 80243F14 8E0401EC */  lw        $a0, 0x1ec($s0)
/* 1727F8 80243F18 0C0B1059 */  jal       does_script_exist
/* 1727FC 80243F1C 00000000 */   nop      
/* 172800 80243F20 54400001 */  bnel      $v0, $zero, .L80243F28
/* 172804 80243F24 24140001 */   addiu    $s4, $zero, 1
.L80243F28:
/* 172808 80243F28 26310001 */  addiu     $s1, $s1, 1
.L80243F2C:
/* 17280C 80243F2C 2A220018 */  slti      $v0, $s1, 0x18
/* 172810 80243F30 1440FFF2 */  bnez      $v0, .L80243EFC
/* 172814 80243F34 26520004 */   addiu    $s2, $s2, 4
/* 172818 80243F38 12600008 */  beqz      $s3, .L80243F5C
/* 17281C 80243F3C 00000000 */   nop      
/* 172820 80243F40 8E6201CC */  lw        $v0, 0x1cc($s3)
/* 172824 80243F44 10400005 */  beqz      $v0, .L80243F5C
/* 172828 80243F48 00000000 */   nop      
/* 17282C 80243F4C 0C0B1059 */  jal       does_script_exist
/* 172830 80243F50 8E6401EC */   lw       $a0, 0x1ec($s3)
/* 172834 80243F54 54400001 */  bnel      $v0, $zero, .L80243F5C
/* 172838 80243F58 24140001 */   addiu    $s4, $zero, 1
.L80243F5C:
/* 17283C 80243F5C 16800006 */  bnez      $s4, .L80243F78
/* 172840 80243F60 00000000 */   nop      
/* 172844 80243F64 0C093903 */  jal       func_8024E40C
/* 172848 80243F68 24040002 */   addiu    $a0, $zero, 2
/* 17284C 80243F6C 24020003 */  addiu     $v0, $zero, 3
/* 172850 80243F70 3C01800E */  lui       $at, %hi(gBattleStatus+0x46C)
/* 172854 80243F74 AC22C4DC */  sw        $v0, %lo(gBattleStatus+0x46C)($at)
.L80243F78:
/* 172858 80243F78 3C03800E */  lui       $v1, %hi(gBattleStatus+0x46C)
/* 17285C 80243F7C 8C63C4DC */  lw        $v1, %lo(gBattleStatus+0x46C)($v1)
/* 172860 80243F80 28620005 */  slti      $v0, $v1, 5
.L80243F84:
/* 172864 80243F84 10400005 */  beqz      $v0, .L80243F9C
/* 172868 80243F88 28620003 */   slti     $v0, $v1, 3
/* 17286C 80243F8C 14400003 */  bnez      $v0, .L80243F9C
/* 172870 80243F90 00000000 */   nop      
/* 172874 80243F94 0C090464 */  jal       func_80241190
/* 172878 80243F98 24040005 */   addiu    $a0, $zero, 5
.L80243F9C:
/* 17287C 80243F9C 8FBF0030 */  lw        $ra, 0x30($sp)
/* 172880 80243FA0 8FB7002C */  lw        $s7, 0x2c($sp)
/* 172884 80243FA4 8FB60028 */  lw        $s6, 0x28($sp)
/* 172888 80243FA8 8FB50024 */  lw        $s5, 0x24($sp)
/* 17288C 80243FAC 8FB40020 */  lw        $s4, 0x20($sp)
/* 172890 80243FB0 8FB3001C */  lw        $s3, 0x1c($sp)
/* 172894 80243FB4 8FB20018 */  lw        $s2, 0x18($sp)
/* 172898 80243FB8 8FB10014 */  lw        $s1, 0x14($sp)
/* 17289C 80243FBC 8FB00010 */  lw        $s0, 0x10($sp)
/* 1728A0 80243FC0 D7B80048 */  ldc1      $f24, 0x48($sp)
/* 1728A4 80243FC4 D7B60040 */  ldc1      $f22, 0x40($sp)
/* 1728A8 80243FC8 D7B40038 */  ldc1      $f20, 0x38($sp)
/* 1728AC 80243FCC 03E00008 */  jr        $ra
/* 1728B0 80243FD0 27BD0050 */   addiu    $sp, $sp, 0x50
