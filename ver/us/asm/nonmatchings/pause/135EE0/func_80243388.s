.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80243388
/* 1366C8 80243388 3C028016 */  lui       $v0, %hi(gWindows)
/* 1366CC 8024338C 24429D50 */  addiu     $v0, $v0, %lo(gWindows)
/* 1366D0 80243390 00042140 */  sll       $a0, $a0, 5
/* 1366D4 80243394 00822021 */  addu      $a0, $a0, $v0
/* 1366D8 80243398 9083001C */  lbu       $v1, 0x1c($a0)
/* 1366DC 8024339C 8FA6001C */  lw        $a2, 0x1c($sp)
/* 1366E0 802433A0 28620005 */  slti      $v0, $v1, 5
/* 1366E4 802433A4 1040000E */  beqz      $v0, .L802433E0
/* 1366E8 802433A8 00000000 */   nop
/* 1366EC 802433AC 3C028025 */  lui       $v0, %hi(D_8024EFE4)
/* 1366F0 802433B0 00431021 */  addu      $v0, $v0, $v1
/* 1366F4 802433B4 9042EFE4 */  lbu       $v0, %lo(D_8024EFE4)($v0)
/* 1366F8 802433B8 ACA20000 */  sw        $v0, ($a1)
/* 1366FC 802433BC 00031040 */  sll       $v0, $v1, 1
/* 136700 802433C0 3C018025 */  lui       $at, %hi(D_8024F00C)
/* 136704 802433C4 00220821 */  addu      $at, $at, $v0
/* 136708 802433C8 8422F00C */  lh        $v0, %lo(D_8024F00C)($at)
/* 13670C 802433CC 44820000 */  mtc1      $v0, $f0
/* 136710 802433D0 00000000 */  nop
/* 136714 802433D4 46800020 */  cvt.s.w   $f0, $f0
/* 136718 802433D8 03E00008 */  jr        $ra
/* 13671C 802433DC E4C00000 */   swc1     $f0, ($a2)
.L802433E0:
/* 136720 802433E0 3C028025 */  lui       $v0, %hi(D_8024EFE8)
/* 136724 802433E4 9042EFE8 */  lbu       $v0, %lo(D_8024EFE8)($v0)
/* 136728 802433E8 ACA20000 */  sw        $v0, ($a1)
/* 13672C 802433EC 3C028025 */  lui       $v0, %hi(D_8024F014)
/* 136730 802433F0 8442F014 */  lh        $v0, %lo(D_8024F014)($v0)
/* 136734 802433F4 44820000 */  mtc1      $v0, $f0
/* 136738 802433F8 00000000 */  nop
/* 13673C 802433FC 46800020 */  cvt.s.w   $f0, $f0
/* 136740 80243400 E4C00000 */  swc1      $f0, ($a2)
/* 136744 80243404 90820000 */  lbu       $v0, ($a0)
/* 136748 80243408 304200F7 */  andi      $v0, $v0, 0xf7
/* 13674C 8024340C 34420004 */  ori       $v0, $v0, 4
/* 136750 80243410 03E00008 */  jr        $ra
/* 136754 80243414 A0820000 */   sb       $v0, ($a0)
