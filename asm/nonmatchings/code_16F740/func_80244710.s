.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80244710
/* 172FF0 80244710 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 172FF4 80244714 AFB30024 */  sw        $s3, 0x24($sp)
/* 172FF8 80244718 3C13800E */  lui       $s3, %hi(gBattleStatus)
/* 172FFC 8024471C 2673C070 */  addiu     $s3, $s3, %lo(gBattleStatus)
/* 173000 80244720 AFB5002C */  sw        $s5, 0x2c($sp)
/* 173004 80244724 3C158011 */  lui       $s5, %hi(gPlayerData)
/* 173008 80244728 26B5F290 */  addiu     $s5, $s5, %lo(gPlayerData)
/* 17300C 8024472C AFB20020 */  sw        $s2, 0x20($sp)
/* 173010 80244730 3C12800E */  lui       $s2, %hi(gBattleStatus+0x46C)
/* 173014 80244734 2652C4DC */  addiu     $s2, $s2, %lo(gBattleStatus+0x46C)
/* 173018 80244738 AFBF0030 */  sw        $ra, 0x30($sp)
/* 17301C 8024473C AFB40028 */  sw        $s4, 0x28($sp)
/* 173020 80244740 AFB1001C */  sw        $s1, 0x1c($sp)
/* 173024 80244744 AFB00018 */  sw        $s0, 0x18($sp)
/* 173028 80244748 8E7000D8 */  lw        $s0, 0xd8($s3)
/* 17302C 8024474C 8E430000 */  lw        $v1, ($s2)
/* 173030 80244750 8E7100DC */  lw        $s1, 0xdc($s3)
/* 173034 80244754 10600005 */  beqz      $v1, .L8024476C
/* 173038 80244758 2402000A */   addiu    $v0, $zero, 0xa
/* 17303C 8024475C 1062003B */  beq       $v1, $v0, .L8024484C
/* 173040 80244760 00000000 */   nop      
/* 173044 80244764 08091228 */  j         .L802448A0
/* 173048 80244768 00000000 */   nop      
.L8024476C:
/* 17304C 8024476C 3C03F3FF */  lui       $v1, 0xf3ff
/* 173050 80244770 8E020000 */  lw        $v0, ($s0)
/* 173054 80244774 3463FFFF */  ori       $v1, $v1, 0xffff
/* 173058 80244778 00431024 */  and       $v0, $v0, $v1
/* 17305C 8024477C 12200004 */  beqz      $s1, .L80244790
/* 173060 80244780 AE020000 */   sw       $v0, ($s0)
/* 173064 80244784 8E220000 */  lw        $v0, ($s1)
/* 173068 80244788 00431024 */  and       $v0, $v0, $v1
/* 17306C 8024478C AE220000 */  sw        $v0, ($s1)
.L80244790:
/* 173070 80244790 2402000B */  addiu     $v0, $zero, 0xb
/* 173074 80244794 AE420000 */  sw        $v0, ($s2)
/* 173078 80244798 8E620004 */  lw        $v0, 4($s3)
/* 17307C 8024479C 2403FFFD */  addiu     $v1, $zero, -3
/* 173080 802447A0 00431024 */  and       $v0, $v0, $v1
/* 173084 802447A4 2403FFFB */  addiu     $v1, $zero, -5
/* 173088 802447A8 00431024 */  and       $v0, $v0, $v1
/* 17308C 802447AC 2403FFF7 */  addiu     $v1, $zero, -9
/* 173090 802447B0 00431024 */  and       $v0, $v0, $v1
/* 173094 802447B4 2403FFEF */  addiu     $v1, $zero, -0x11
/* 173098 802447B8 00431024 */  and       $v0, $v0, $v1
/* 17309C 802447BC AE620004 */  sw        $v0, 4($s3)
/* 1730A0 802447C0 82020216 */  lb        $v0, 0x216($s0)
/* 1730A4 802447C4 2414000D */  addiu     $s4, $zero, 0xd
/* 1730A8 802447C8 14540005 */  bne       $v0, $s4, .L802447E0
/* 1730AC 802447CC 00000000 */   nop      
/* 1730B0 802447D0 0C09C596 */  jal       dispatch_event_player
/* 1730B4 802447D4 24040034 */   addiu    $a0, $zero, 0x34
/* 1730B8 802447D8 2402000A */  addiu     $v0, $zero, 0xa
/* 1730BC 802447DC AE420000 */  sw        $v0, ($s2)
.L802447E0:
/* 1730C0 802447E0 8E020440 */  lw        $v0, 0x440($s0)
/* 1730C4 802447E4 A2000210 */  sb        $zero, 0x210($s0)
/* 1730C8 802447E8 A2000212 */  sb        $zero, 0x212($s0)
/* 1730CC 802447EC A2000214 */  sb        $zero, 0x214($s0)
/* 1730D0 802447F0 A2000218 */  sb        $zero, 0x218($s0)
/* 1730D4 802447F4 A2000216 */  sb        $zero, 0x216($s0)
/* 1730D8 802447F8 A2000217 */  sb        $zero, 0x217($s0)
/* 1730DC 802447FC 8C42000C */  lw        $v0, 0xc($v0)
/* 1730E0 80244800 12200027 */  beqz      $s1, .L802448A0
/* 1730E4 80244804 AC40003C */   sw       $zero, 0x3c($v0)
/* 1730E8 80244808 82220216 */  lb        $v0, 0x216($s1)
/* 1730EC 8024480C 14540005 */  bne       $v0, $s4, .L80244824
/* 1730F0 80244810 00000000 */   nop      
/* 1730F4 80244814 0C09F7A0 */  jal       dispatch_event_partner
/* 1730F8 80244818 24040034 */   addiu    $a0, $zero, 0x34
/* 1730FC 8024481C 2402000A */  addiu     $v0, $zero, 0xa
/* 173100 80244820 AE420000 */  sw        $v0, ($s2)
.L80244824:
/* 173104 80244824 8E220440 */  lw        $v0, 0x440($s1)
/* 173108 80244828 A2200210 */  sb        $zero, 0x210($s1)
/* 17310C 8024482C A2200212 */  sb        $zero, 0x212($s1)
/* 173110 80244830 A2200214 */  sb        $zero, 0x214($s1)
/* 173114 80244834 A2200218 */  sb        $zero, 0x218($s1)
/* 173118 80244838 A2200216 */  sb        $zero, 0x216($s1)
/* 17311C 8024483C A2200217 */  sb        $zero, 0x217($s1)
/* 173120 80244840 8C42000C */  lw        $v0, 0xc($v0)
/* 173124 80244844 08091228 */  j         .L802448A0
/* 173128 80244848 AC40003C */   sw       $zero, 0x3c($v0)
.L8024484C:
/* 17312C 8024484C 8E0201D8 */  lw        $v0, 0x1d8($s0)
/* 173130 80244850 10400005 */  beqz      $v0, .L80244868
/* 173134 80244854 00000000 */   nop      
/* 173138 80244858 0C0B1059 */  jal       does_script_exist
/* 17313C 8024485C 8E0401E8 */   lw       $a0, 0x1e8($s0)
/* 173140 80244860 1440000F */  bnez      $v0, .L802448A0
/* 173144 80244864 00000000 */   nop      
.L80244868:
/* 173148 80244868 1220000A */  beqz      $s1, .L80244894
/* 17314C 8024486C AE0001D8 */   sw       $zero, 0x1d8($s0)
/* 173150 80244870 8E2201D8 */  lw        $v0, 0x1d8($s1)
/* 173154 80244874 50400007 */  beql      $v0, $zero, .L80244894
/* 173158 80244878 AE2001D8 */   sw       $zero, 0x1d8($s1)
/* 17315C 8024487C 8E2401E8 */  lw        $a0, 0x1e8($s1)
/* 173160 80244880 0C0B1059 */  jal       does_script_exist
/* 173164 80244884 00000000 */   nop      
/* 173168 80244888 14400005 */  bnez      $v0, .L802448A0
/* 17316C 8024488C 00000000 */   nop      
/* 173170 80244890 AE2001D8 */  sw        $zero, 0x1d8($s1)
.L80244894:
/* 173174 80244894 2402000B */  addiu     $v0, $zero, 0xb
/* 173178 80244898 3C01800E */  lui       $at, %hi(gBattleStatus+0x46C)
/* 17317C 8024489C AC22C4DC */  sw        $v0, %lo(gBattleStatus+0x46C)($at)
.L802448A0:
/* 173180 802448A0 3C12800E */  lui       $s2, %hi(gBattleStatus+0x46C)
/* 173184 802448A4 2652C4DC */  addiu     $s2, $s2, %lo(gBattleStatus+0x46C)
/* 173188 802448A8 8E500000 */  lw        $s0, ($s2)
/* 17318C 802448AC 2402000B */  addiu     $v0, $zero, 0xb
/* 173190 802448B0 12020005 */  beq       $s0, $v0, .L802448C8
/* 173194 802448B4 2402000D */   addiu    $v0, $zero, 0xd
/* 173198 802448B8 12020023 */  beq       $s0, $v0, .L80244948
/* 17319C 802448BC 00000000 */   nop      
/* 1731A0 802448C0 08091259 */  j         .L80244964
/* 1731A4 802448C4 00000000 */   nop      
.L802448C8:
/* 1731A8 802448C8 3C05800E */  lui       $a1, %hi(gBattleStatus)
/* 1731AC 802448CC 24A5C070 */  addiu     $a1, $a1, %lo(gBattleStatus)
/* 1731B0 802448D0 2403FFFD */  addiu     $v1, $zero, -3
/* 1731B4 802448D4 A260008C */  sb        $zero, 0x8c($s3)
/* 1731B8 802448D8 8CA20004 */  lw        $v0, 4($a1)
/* 1731BC 802448DC 8264009A */  lb        $a0, 0x9a($s3)
/* 1731C0 802448E0 00431024 */  and       $v0, $v0, $v1
/* 1731C4 802448E4 2403FFFB */  addiu     $v1, $zero, -5
/* 1731C8 802448E8 00431024 */  and       $v0, $v0, $v1
/* 1731CC 802448EC 2403FFF7 */  addiu     $v1, $zero, -9
/* 1731D0 802448F0 00431024 */  and       $v0, $v0, $v1
/* 1731D4 802448F4 2403FFEF */  addiu     $v1, $zero, -0x11
/* 1731D8 802448F8 00431024 */  and       $v0, $v0, $v1
/* 1731DC 802448FC 14800004 */  bnez      $a0, .L80244910
/* 1731E0 80244900 ACA20004 */   sw       $v0, 4($a1)
/* 1731E4 80244904 2402000D */  addiu     $v0, $zero, 0xd
/* 1731E8 80244908 08091259 */  j         .L80244964
/* 1731EC 8024490C AE420000 */   sw       $v0, ($s2)
.L80244910:
/* 1731F0 80244910 2405000A */  addiu     $a1, $zero, 0xa
/* 1731F4 80244914 2402000C */  addiu     $v0, $zero, 0xc
/* 1731F8 80244918 A26201A7 */  sb        $v0, 0x1a7($s3)
/* 1731FC 8024491C 8E2401CC */  lw        $a0, 0x1cc($s1)
/* 173200 80244920 0C0B0CF8 */  jal       start_script
/* 173204 80244924 0000302D */   daddu    $a2, $zero, $zero
/* 173208 80244928 AE2201DC */  sw        $v0, 0x1dc($s1)
/* 17320C 8024492C 8C440144 */  lw        $a0, 0x144($v0)
/* 173210 80244930 2403000C */  addiu     $v1, $zero, 0xc
/* 173214 80244934 AE430000 */  sw        $v1, ($s2)
/* 173218 80244938 24030100 */  addiu     $v1, $zero, 0x100
/* 17321C 8024493C AE2401EC */  sw        $a0, 0x1ec($s1)
/* 173220 80244940 08091259 */  j         .L80244964
/* 173224 80244944 AC430148 */   sw       $v1, 0x148($v0)
.L80244948:
/* 173228 80244948 8E2401EC */  lw        $a0, 0x1ec($s1)
/* 17322C 8024494C 0C0B1059 */  jal       does_script_exist
/* 173230 80244950 00000000 */   nop      
/* 173234 80244954 14400003 */  bnez      $v0, .L80244964
/* 173238 80244958 00000000 */   nop      
/* 17323C 8024495C A260009A */  sb        $zero, 0x9a($s3)
/* 173240 80244960 AE500000 */  sw        $s0, ($s2)
.L80244964:
/* 173244 80244964 3C10800E */  lui       $s0, %hi(gBattleStatus+0x46C)
/* 173248 80244968 2610C4DC */  addiu     $s0, $s0, %lo(gBattleStatus+0x46C)
/* 17324C 8024496C 8E030000 */  lw        $v1, ($s0)
/* 173250 80244970 2402000D */  addiu     $v0, $zero, 0xd
/* 173254 80244974 10620005 */  beq       $v1, $v0, .L8024498C
/* 173258 80244978 2402000E */   addiu    $v0, $zero, 0xe
/* 17325C 8024497C 1062000B */  beq       $v1, $v0, .L802449AC
/* 173260 80244980 00000000 */   nop      
/* 173264 80244984 08091289 */  j         .L80244A24
/* 173268 80244988 00000000 */   nop      
.L8024498C:
/* 17326C 8024498C 0C093903 */  jal       func_8024E40C
/* 173270 80244990 24040002 */   addiu    $a0, $zero, 2
/* 173274 80244994 2402001E */  addiu     $v0, $zero, 0x1e
/* 173278 80244998 3C01802A */  lui       $at, 0x802a
/* 17327C 8024499C AC22F248 */  sw        $v0, -0xdb8($at)
/* 173280 802449A0 2402000E */  addiu     $v0, $zero, 0xe
/* 173284 802449A4 08091289 */  j         .L80244A24
/* 173288 802449A8 AE020000 */   sw       $v0, ($s0)
.L802449AC:
/* 17328C 802449AC 3C03802A */  lui       $v1, 0x802a
/* 173290 802449B0 2463F248 */  addiu     $v1, $v1, -0xdb8
/* 173294 802449B4 8C620000 */  lw        $v0, ($v1)
/* 173298 802449B8 10400003 */  beqz      $v0, .L802449C8
/* 17329C 802449BC 2442FFFF */   addiu    $v0, $v0, -1
/* 1732A0 802449C0 08091289 */  j         .L80244A24
/* 1732A4 802449C4 AC620000 */   sw       $v0, ($v1)
.L802449C8:
/* 1732A8 802449C8 96A302AA */  lhu       $v1, 0x2aa($s5)
/* 1732AC 802449CC 2C62270F */  sltiu     $v0, $v1, 0x270f
/* 1732B0 802449D0 10400002 */  beqz      $v0, .L802449DC
/* 1732B4 802449D4 24620001 */   addiu    $v0, $v1, 1
/* 1732B8 802449D8 A6A202AA */  sh        $v0, 0x2aa($s5)
.L802449DC:
/* 1732BC 802449DC 24030003 */  addiu     $v1, $zero, 3
/* 1732C0 802449E0 3C02800B */  lui       $v0, %hi(gCurrentEncounter)
/* 1732C4 802449E4 24420F10 */  addiu     $v0, $v0, %lo(gCurrentEncounter)
/* 1732C8 802449E8 A0430009 */  sb        $v1, 9($v0)
/* 1732CC 802449EC 3C02800E */  lui       $v0, %hi(gBattleStatus+0x4)
/* 1732D0 802449F0 8C42C074 */  lw        $v0, %lo(gBattleStatus+0x4)($v0)
/* 1732D4 802449F4 3C030200 */  lui       $v1, 0x200
/* 1732D8 802449F8 00431024 */  and       $v0, $v0, $v1
/* 1732DC 802449FC 14400007 */  bnez      $v0, .L80244A1C
/* 1732E0 80244A00 24020008 */   addiu    $v0, $zero, 8
/* 1732E4 80244A04 AFA20010 */  sw        $v0, 0x10($sp)
/* 1732E8 80244A08 0000202D */  daddu     $a0, $zero, $zero
/* 1732EC 80244A0C 2405FFFF */  addiu     $a1, $zero, -1
/* 1732F0 80244A10 0080302D */  daddu     $a2, $a0, $zero
/* 1732F4 80244A14 0C052A46 */  jal       set_music_track
/* 1732F8 80244A18 240705DC */   addiu    $a3, $zero, 0x5dc
.L80244A1C:
/* 1732FC 80244A1C 0C090464 */  jal       func_80241190
/* 173300 80244A20 24040020 */   addiu    $a0, $zero, 0x20
.L80244A24:
/* 173304 80244A24 8FBF0030 */  lw        $ra, 0x30($sp)
/* 173308 80244A28 8FB5002C */  lw        $s5, 0x2c($sp)
/* 17330C 80244A2C 8FB40028 */  lw        $s4, 0x28($sp)
/* 173310 80244A30 8FB30024 */  lw        $s3, 0x24($sp)
/* 173314 80244A34 8FB20020 */  lw        $s2, 0x20($sp)
/* 173318 80244A38 8FB1001C */  lw        $s1, 0x1c($sp)
/* 17331C 80244A3C 8FB00018 */  lw        $s0, 0x18($sp)
/* 173320 80244A40 03E00008 */  jr        $ra
/* 173324 80244A44 27BD0038 */   addiu    $sp, $sp, 0x38
