.include "macro.inc"
#include "macro_float_reg.h"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

.section .recomp_patch, "ax"

glabel HUD_Draw
    jal EG_gEXEnable
    nop
    jal EG_gEXSetScissor
    nop
    /* 874AA0 800BFEA0 3C038017 */  lui        $v1, %hi(gGameMode)
    /* 874AA4 800BFEA4 8C6387A4 */  lw         $v1, %lo(gGameMode)($v1)
    /* 874AA8 800BFEA8 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* 874AAC 800BFEAC AFB30044 */  sw         $s3, 0x44($sp)
    /* 874AB0 800BFEB0 00809821 */  addu       $s3, $a0, $zero
    /* 874AB4 800BFEB4 AFB20040 */  sw         $s2, 0x40($sp)
    /* 874AB8 800BFEB8 00A09021 */  addu       $s2, $a1, $zero
    /* 874ABC 800BFEBC AFB70054 */  sw         $s7, 0x54($sp)
    /* 874AC0 800BFEC0 F7B60068 */  sdc1       $fs1, 0x68($sp)
    /* 874AC4 800BFEC4 4487B000 */  mtc1       $a3, $fs1
    /* 874AC8 800BFEC8 2402000C */  addiu      $v0, $zero, 0xC
    /* 874ACC 800BFECC AFBF0058 */  sw         $ra, 0x58($sp)
    /* 874AD0 800BFED0 AFB60050 */  sw         $s6, 0x50($sp)
    /* 874AD4 800BFED4 AFB5004C */  sw         $s5, 0x4C($sp)
    /* 874AD8 800BFED8 AFB40048 */  sw         $s4, 0x48($sp)
    /* 874ADC 800BFEDC AFB1003C */  sw         $s1, 0x3C($sp)
    /* 874AE0 800BFEE0 AFB00038 */  sw         $s0, 0x38($sp)
    /* 874AE4 800BFEE4 F7B40060 */  sdc1       $fs0, 0x60($sp)
    /* 874AE8 800BFEE8 106201F0 */  beq        $v1, $v0, .L800C06AC
    /* 874AEC 800BFEEC 00C0B821 */   addu      $s7, $a2, $zero
    /* 874AF0 800BFEF0 8E6306F8 */  lw         $v1, 0x6F8($s3)
    /* 874AF4 800BFEF4 24020004 */  addiu      $v0, $zero, 0x4
    /* 874AF8 800BFEF8 106201EC */  beq        $v1, $v0, .L800C06AC
    /* 874AFC 800BFEFC 3C0BFF10 */   lui       $t3, (0xFF10013F >> 16)
    /* 874B00 800BFF00 356B013F */  ori        $t3, $t3, (0xFF10013F & 0xFFFF)
    /* 874B04 800BFF04 3C07B900 */  lui        $a3, (0xB900031D >> 16)
    /* 874B08 800BFF08 34E7031D */  ori        $a3, $a3, (0xB900031D & 0xFFFF)
    /* 874B0C 800BFF0C 3C040F0A */  lui        $a0, (0xF0A4000 >> 16)
    /* 874B10 800BFF10 34844000 */  ori        $a0, $a0, (0xF0A4000 & 0xFFFF)
    /* 874B14 800BFF14 3C0ABA00 */  lui        $t2, (0xBA001402 >> 16)
    /* 874B18 800BFF18 354A1402 */  ori        $t2, $t2, (0xBA001402 & 0xFFFF)
    /* 874B1C 800BFF1C 3C08FFFC */  lui        $t0, (0xFFFCFFFC >> 16)
    /* 874B20 800BFF20 3C068017 */  lui        $a2, %hi(gMasterDisp)
    /* 874B24 800BFF24 24C689EC */  addiu      $a2, $a2, %lo(gMasterDisp)
    /* 874B28 800BFF28 8CC50000 */  lw         $a1, 0x0($a2)
    /* 874B2C 800BFF2C 3C038017 */  lui        $v1, %hi(D_80175FD4)
    /* 874B30 800BFF30 8C635FD4 */  lw         $v1, %lo(D_80175FD4)($v1)
    /* 874B34 800BFF34 3508FFFC */  ori        $t0, $t0, (0xFFFCFFFC & 0xFFFF)
    /* 874B38 800BFF38 3C09E700 */  lui        $t1, (0xE7000000 >> 16)
    /* 874B3C 800BFF3C 24A20008 */  addiu      $v0, $a1, 0x8
    /* 874B40 800BFF40 ACC20000 */  sw         $v0, 0x0($a2)
    /* 874B44 800BFF44 24A20010 */  addiu      $v0, $a1, 0x10
    /* 874B48 800BFF48 ACA90000 */  sw         $t1, 0x0($a1)
    /* 874B4C 800BFF4C ACA00004 */  sw         $zero, 0x4($a1)
    /* 874B50 800BFF50 ACC20000 */  sw         $v0, 0x0($a2)
    /* 874B54 800BFF54 24A20018 */  addiu      $v0, $a1, 0x18
    /* 874B58 800BFF58 ACAB0008 */  sw         $t3, 0x8($a1)
    /* 874B5C 800BFF5C ACA3000C */  sw         $v1, 0xC($a1)
    /* 874B60 800BFF60 ACC20000 */  sw         $v0, 0x0($a2)
    /* 874B64 800BFF64 24A20020 */  addiu      $v0, $a1, 0x20
    /* 874B68 800BFF68 ACA70010 */  sw         $a3, 0x10($a1)
    /* 874B6C 800BFF6C ACA40014 */  sw         $a0, 0x14($a1)
    /* 874B70 800BFF70 ACC20000 */  sw         $v0, 0x0($a2)
    /* 874B74 800BFF74 3C020030 */  lui        $v0, (0x300000 >> 16)
    /* 874B78 800BFF78 ACA2001C */  sw         $v0, 0x1C($a1)
    /* 874B7C 800BFF7C 24A20028 */  addiu      $v0, $a1, 0x28
    /* 874B80 800BFF80 ACAA0018 */  sw         $t2, 0x18($a1)
    /* 874B84 800BFF84 ACC20000 */  sw         $v0, 0x0($a2)
    /* 874B88 800BFF88 3C02F700 */  lui        $v0, (0xF7000000 >> 16)
    /* 874B8C 800BFF8C ACA20020 */  sw         $v0, 0x20($a1)
    /* 874B90 800BFF90 24A20030 */  addiu      $v0, $a1, 0x30
    /* 874B94 800BFF94 ACA80024 */  sw         $t0, 0x24($a1)
    /* 874B98 800BFF98 ACC20000 */  sw         $v0, 0x0($a2)
    /* 874B9C 800BFF9C 8E430008 */  lw         $v1, 0x8($s2)
    /* 874BA0 800BFFA0 8E42000C */  lw         $v0, 0xC($s2)
    /* 874BA4 800BFFA4 3C04F600 */  lui        $a0, (0xF6000000 >> 16)
    /* 874BA8 800BFFA8 2463FFFF */  addiu      $v1, $v1, -0x1
    /* 874BAC 800BFFAC 306303FF */  andi       $v1, $v1, 0x3FF
    /* 874BB0 800BFFB0 00031B80 */  sll        $v1, $v1, 14
    /* 874BB4 800BFFB4 2442FFFF */  addiu      $v0, $v0, -0x1
    /* 874BB8 800BFFB8 304203FF */  andi       $v0, $v0, 0x3FF
    /* 874BBC 800BFFBC 00021080 */  sll        $v0, $v0, 2
    /* 874BC0 800BFFC0 00441025 */  or         $v0, $v0, $a0
    /* 874BC4 800BFFC4 00621825 */  or         $v1, $v1, $v0
    /* 874BC8 800BFFC8 ACA30028 */  sw         $v1, 0x28($a1)
    /* 874BCC 800BFFCC 8E420000 */  lw         $v0, 0x0($s2)
    /* 874BD0 800BFFD0 8E430004 */  lw         $v1, 0x4($s2)
    /* 874BD4 800BFFD4 3C048016 */  lui        $a0, %hi(D_80162EF0)
    /* 874BD8 800BFFD8 8C842EF0 */  lw         $a0, %lo(D_80162EF0)($a0)
    /* 874BDC 800BFFDC 304203FF */  andi       $v0, $v0, 0x3FF
    /* 874BE0 800BFFE0 00021380 */  sll        $v0, $v0, 14
    /* 874BE4 800BFFE4 306303FF */  andi       $v1, $v1, 0x3FF
    /* 874BE8 800BFFE8 00031880 */  sll        $v1, $v1, 2
    /* 874BEC 800BFFEC 00431025 */  or         $v0, $v0, $v1
    /* 874BF0 800BFFF0 ACA2002C */  sw         $v0, 0x2C($a1)
    /* 874BF4 800BFFF4 24A20038 */  addiu      $v0, $a1, 0x38
    /* 874BF8 800BFFF8 ACC20000 */  sw         $v0, 0x0($a2)
    /* 874BFC 800BFFFC 24A20040 */  addiu      $v0, $a1, 0x40
    /* 874C00 800C0000 ACA90030 */  sw         $t1, 0x30($a1)
    /* 874C04 800C0004 ACA00034 */  sw         $zero, 0x34($a1)
    /* 874C08 800C0008 ACC20000 */  sw         $v0, 0x0($a2)
    /* 874C0C 800C000C 24A20048 */  addiu      $v0, $a1, 0x48
    /* 874C10 800C0010 3C038011 */  lui        $v1, %hi(D_80109670)
    /* 874C14 800C0014 24639670 */  addiu      $v1, $v1, %lo(D_80109670)
    /* 874C18 800C0018 ACAB0038 */  sw         $t3, 0x38($a1)
    /* 874C1C 800C001C ACA4003C */  sw         $a0, 0x3C($a1)
    /* 874C20 800C0020 ACC20000 */  sw         $v0, 0x0($a2)
    /* 874C24 800C0024 ACAA0040 */  sw         $t2, 0x40($a1)
    /* 874C28 800C0028 ACA00044 */  sw         $zero, 0x44($a1)
    /* 874C2C 800C002C 8C620000 */  lw         $v0, 0x0($v1)
    /* 874C30 800C0030 24420001 */  addiu      $v0, $v0, 0x1
    /* 874C34 800C0034 AC620000 */  sw         $v0, 0x0($v1)
    /* 874C38 800C0038 C66406B8 */  lwc1       $ft0, 0x6B8($s3)
    /* 874C3C 800C003C 44800000 */  mtc1       $zero, $fv0
    /* 874C40 800C0040 46002032 */  c.eq.s     $ft0, $fv0
    /* 874C44 800C0044 00000000 */  nop
    /* 874C48 800C0048 4501002B */  bc1t       .L800C00F8
    /* 874C4C 800C004C 0000A021 */   addu      $s4, $zero, $zero
    /* 874C50 800C0050 3C01800A */  lui        $at, %hi(D_8009CAC0)
    /* 874C54 800C0054 D422CAC0 */  ldc1       $fv1, %lo(D_8009CAC0)($at)
    /* 874C58 800C0058 46002021 */  cvt.d.s    $fv0, $ft0
    /* 874C5C 800C005C 46220002 */  mul.d      $fv0, $fv0, $fv1
    /* 874C60 800C0060 3C01800A */  lui        $at, %hi(D_8009CAC8)
    /* 874C64 800C0064 D422CAC8 */  ldc1       $fv1, %lo(D_8009CAC8)($at)
    /* 874C68 800C0068 46200520 */  cvt.s.d    $fs0, $fv0
    /* 874C6C 800C006C 4600A021 */  cvt.d.s    $fv0, $fs0
    /* 874C70 800C0070 4622003C */  c.lt.d     $fv0, $fv1
    /* 874C74 800C0074 00000000 */  nop
    /* 874C78 800C0078 45000003 */  bc1f       .L800C0088
    /* 874C7C 800C007C 00000000 */   nop
    /* 874C80 800C0080 3C01800A */  lui        $at, %hi(D_8009CAD0)
    /* 874C84 800C0084 C434CAD0 */  lwc1       $fs0, %lo(D_8009CAD0)($at)
  .L800C0088:
    /* 874C88 800C0088 4600A00D */  trunc.w.s  $fv0, $fs0
    /* 874C8C 800C008C 44100000 */  mfc1       $s0, $fv0
    /* 874C90 800C0090 00108400 */  sll        $s0, $s0, 16
    /* 874C94 800C0094 00108403 */  sra        $s0, $s0, 16
    /* 874C98 800C0098 0C015AA7 */  jal        func_80056A9C
    /* 874C9C 800C009C 02002021 */   addu      $a0, $s0, $zero
    /* 874CA0 800C00A0 3C01800A */  lui        $at, %hi(D_8009CAD8)
    /* 874CA4 800C00A4 D420CAD8 */  ldc1       $fv0, %lo(D_8009CAD8)($at)
    /* 874CA8 800C00A8 4600A521 */  cvt.d.s    $fs0, $fs0
    /* 874CAC 800C00AC 4620A502 */  mul.d      $fs0, $fs0, $fv0
    /* 874CB0 800C00B0 00021400 */  sll        $v0, $v0, 16
    /* 874CB4 800C00B4 00021403 */  sra        $v0, $v0, 16
    /* 874CB8 800C00B8 44820000 */  mtc1       $v0, $fv0
    /* 874CBC 800C00BC 46800021 */  cvt.d.w    $fv0, $fv0
    /* 874CC0 800C00C0 46340001 */  sub.d      $fv0, $fv0, $fs0
    /* 874CC4 800C00C4 4620008D */  trunc.w.d  $fv1, $fv0
    /* 874CC8 800C00C8 44151000 */  mfc1       $s5, $fv1
    /* 874CCC 800C00CC 0C015AA7 */  jal        func_80056A9C
    /* 874CD0 800C00D0 02002021 */   addu      $a0, $s0, $zero
    /* 874CD4 800C00D4 00021400 */  sll        $v0, $v0, 16
    /* 874CD8 800C00D8 00021403 */  sra        $v0, $v0, 16
    /* 874CDC 800C00DC 44820000 */  mtc1       $v0, $fv0
    /* 874CE0 800C00E0 46800021 */  cvt.d.w    $fv0, $fv0
    /* 874CE4 800C00E4 46340001 */  sub.d      $fv0, $fv0, $fs0
    /* 874CE8 800C00E8 4620008D */  trunc.w.d  $fv1, $fv0
    /* 874CEC 800C00EC 44141000 */  mfc1       $s4, $fv1
    /* 874CF0 800C00F0 0803003F */  j          .L800C00FC
    /* 874CF4 800C00F4 00000000 */   nop
  .L800C00F8:
    /* 874CF8 800C00F8 0000A821 */  addu       $s5, $zero, $zero
  .L800C00FC:
    /* 874CFC 800C00FC 3C064270 */  lui        $a2, (0x42700000 >> 16)
    /* 874D00 800C0100 3C108017 */  lui        $s0, %hi(gMasterDisp)
    /* 874D04 800C0104 261089EC */  addiu      $s0, $s0, %lo(gMasterDisp)
    /* 874D08 800C0108 8E030000 */  lw         $v1, 0x0($s0)
    /* 874D0C 800C010C 3C01800A */  lui        $at, %hi(D_8009CAE0)
    /* 874D10 800C0110 C420CAE0 */  lwc1       $fv0, %lo(D_8009CAE0)($at)
    /* 874D14 800C0114 24620008 */  addiu      $v0, $v1, 0x8
    /* 874D18 800C0118 AE020000 */  sw         $v0, 0x0($s0)
    /* 874D1C 800C011C 3C020600 */  lui        $v0, (0x6000000 >> 16)
    /* 874D20 800C0120 AC620000 */  sw         $v0, 0x0($v1)
    /* 874D24 800C0124 3C028011 */  lui        $v0, %hi(D_80109158)
    /* 874D28 800C0128 24429158 */  addiu      $v0, $v0, %lo(D_80109158)
    /* 874D2C 800C012C AC620004 */  sw         $v0, 0x4($v1)
    /* 874D30 800C0130 E7A00010 */  swc1       $fv0, 0x10($sp)
    /* 874D34 800C0134 C6E000B0 */  lwc1       $fv0, 0xB0($s7)
    /* 874D38 800C0138 46800020 */  cvt.s.w    $fv0, $fv0
    /* 874D3C 800C013C 46160002 */  mul.s      $fv0, $fv0, $fs1
    /* 874D40 800C0140 3C073FAA */  lui        $a3, (0x3FAAAAAB >> 16)
    /* 874D44 800C0144 34E7AAAB */  ori        $a3, $a3, (0x3FAAAAAB & 0xFFFF)
    /* 874D48 800C0148 3C118018 */  lui        $s1, %hi(D_8017A7B0)
    /* 874D4C 800C014C 2631A7B0 */  addiu      $s1, $s1, %lo(D_8017A7B0)
    /* 874D50 800C0150 3C01800A */  lui        $at, %hi(D_8009CAE4)
    /* 874D54 800C0154 C422CAE4 */  lwc1       $fv1, %lo(D_8009CAE4)($at)
    /* 874D58 800C0158 02202021 */  addu       $a0, $s1, $zero
    /* 874D5C 800C015C 27A50030 */  addiu      $a1, $sp, 0x30
    /* 874D60 800C0160 E7A20018 */  swc1       $fv1, 0x18($sp)
    /* 874D64 800C0164 0C01F658 */  jal        guPerspective
    /* 874D68 800C0168 E7A00014 */   swc1      $fv0, 0x14($sp)
    /* 874D6C 800C016C 3C01800A */  lui        $at, %hi(D_8009CAE8)
    /* 874D70 800C0170 C420CAE8 */  lwc1       $fv0, %lo(D_8009CAE8)($at)
    /* 874D74 800C0174 44050000 */  mfc1       $a1, $fv0
    /* 874D78 800C0178 3C048018 */  lui        $a0, %hi(D_8017A770)
    /* 874D7C 800C017C 2484A770 */  addiu      $a0, $a0, %lo(D_8017A770)
    /* 874D80 800C0180 00A03021 */  addu       $a2, $a1, $zero
    /* 874D84 800C0184 0C01F769 */  jal        guScale
    /* 874D88 800C0188 00A03821 */   addu      $a3, $a1, $zero
    /* 874D8C 800C018C 8E030000 */  lw         $v1, 0x0($s0)
    /* 874D90 800C0190 3C040103 */  lui        $a0, (0x1030040 >> 16)
    /* 874D94 800C0194 34840040 */  ori        $a0, $a0, (0x1030040 & 0xFFFF)
    /* 874D98 800C0198 24620008 */  addiu      $v0, $v1, 0x8
    /* 874D9C 800C019C AE020000 */  sw         $v0, 0x0($s0)
    /* 874DA0 800C01A0 AC640000 */  sw         $a0, 0x0($v1)
    /* 874DA4 800C01A4 AC710004 */  sw         $s1, 0x4($v1)

    jal EG_RectAlign_Origin_Left_Left
    nop
    jal EG_ViewportAlign_Left
    nop
    
    /* 874DA8 800C01A8 3C028017 */  lui        $v0, %hi(gGameMode)
    /* 874DAC 800C01AC 8C4287A4 */  lw         $v0, %lo(gGameMode)($v0)
    /* 874DB0 800C01B0 2442FFFF */  addiu      $v0, $v0, -0x1
    /* 874DB4 800C01B4 2C420002 */  sltiu      $v0, $v0, 0x2
    /* 874DB8 800C01B8 10400006 */  beqz       $v0, .L800C01D4
    /* 874DBC 800C01BC 02602021 */   addu      $a0, $s3, $zero
    /* 874DC0 800C01C0 8E420000 */  lw         $v0, 0x0($s2)
    /* 874DC4 800C01C4 26A5001C */  addiu      $a1, $s5, 0x1C
    /* 874DC8 800C01C8 8E430004 */  lw         $v1, 0x4($s2)
    /* 874DCC 800C01CC 08030079 */  j          .L800C01E4
    /* 874DD0 800C01D0 26860012 */   addiu     $a2, $s4, 0x12
  .L800C01D4:
    /* 874DD4 800C01D4 8E420000 */  lw         $v0, 0x0($s2)
    /* 874DD8 800C01D8 26A5001C */  addiu      $a1, $s5, 0x1C
    /* 874DDC 800C01DC 8E430004 */  lw         $v1, 0x4($s2)
    /* 874DE0 800C01E0 26860025 */  addiu      $a2, $s4, 0x25
  .L800C01E4:


    /* 874DE4 800C01E4 00452821 */  addu       $a1, $v0, $a1
    /* 874DE8 800C01E8 0C02E93E */  jal        HUD_Turbo_Draw
    /* 874DEC 800C01EC 00663021 */   addu      $a2, $v1, $a2

    jal EG_RectAlign_Origin_None_None
    nop
    jal EG_ViewportAlign_None
    nop

    /* 874DF0 800C01F0 8E630460 */  lw         $v1, 0x460($s3)
    /* 874DF4 800C01F4 24020001 */  addiu      $v0, $zero, 0x1
    /* 874DF8 800C01F8 14620009 */  bne        $v1, $v0, .L800C0220
    /* 874DFC 800C01FC 02602021 */   addu      $a0, $s3, $zero
    /* 874E00 800C0200 3C073E80 */  lui        $a3, (0x3E800000 >> 16)
    /* 874E04 800C0204 8E420000 */  lw         $v0, 0x0($s2)
    /* 874E08 800C0208 26A5010C */  addiu      $a1, $s5, 0x10C
    /* 874E0C 800C020C 8E430004 */  lw         $v1, 0x4($s2)
    /* 874E10 800C0210 26860078 */  addiu      $a2, $s4, 0x78
    /* 874E14 800C0214 00452821 */  addu       $a1, $v0, $a1
    /* 874E18 800C0218 0C02EA78 */  jal        func_800BA9E0
    /* 874E1C 800C021C 00663021 */   addu      $a2, $v1, $a2
  .L800C0220:
    /* 874E20 800C0220 3C028017 */  lui        $v0, %hi(D_801771B8)
    /* 874E24 800C0224 8C4271B8 */  lw         $v0, %lo(D_801771B8)($v0)
    /* 874E28 800C0228 1440001A */  bnez       $v0, .L800C0294
    /* 874E2C 800C022C 00000000 */   nop
    /* 874E30 800C0230 3C038017 */  lui        $v1, %hi(gGameMode)
    /* 874E34 800C0234 8C6387A4 */  lw         $v1, %lo(gGameMode)($v1)
    /* 874E38 800C0238 2C620002 */  sltiu      $v0, $v1, 0x2
    /* 874E3C 800C023C 1440000A */  bnez       $v0, .L800C0268
    /* 874E40 800C0240 02E02021 */   addu      $a0, $s7, $zero
    /* 874E44 800C0244 2462FFFD */  addiu      $v0, $v1, -0x3
    /* 874E48 800C0248 2C420002 */  sltiu      $v0, $v0, 0x2
    /* 874E4C 800C024C 14400006 */  bnez       $v0, .L800C0268
    /* 874E50 800C0250 2462FFFA */   addiu     $v0, $v1, -0x6
    /* 874E54 800C0254 2C420002 */  sltiu      $v0, $v0, 0x2
    /* 874E58 800C0258 14400003 */  bnez       $v0, .L800C0268
    /* 874E5C 800C025C 24020009 */   addiu     $v0, $zero, 0x9
    /* 874E60 800C0260 1462000C */  bne        $v1, $v0, .L800C0294
    /* 874E64 800C0264 00000000 */   nop
  .L800C0268:
    /* 874E68 800C0268 8E420000 */  lw         $v0, 0x0($s2)
    /* 874E6C 800C026C 26A60034 */  addiu      $a2, $s5, 0x34
    /* 874E70 800C0270 3C01800A */  lui        $at, %hi(D_8009CAEC)
    /* 874E74 800C0274 C420CAEC */  lwc1       $fv0, %lo(D_8009CAEC)($at)
    /* 874E78 800C0278 00463021 */  addu       $a2, $v0, $a2
    /* 874E7C 800C027C 8E420004 */  lw         $v0, 0x4($s2)
    /* 874E80 800C0280 02602821 */  addu       $a1, $s3, $zero
    /* 874E84 800C0284 26870078 */  addiu      $a3, $s4, 0x78
    /* 874E88 800C0288 E7A00010 */  swc1       $fv0, 0x10($sp)
    /* 874E8C 800C028C 0C02EB58 */  jal        func_800BAD60
    /* 874E90 800C0290 00473821 */   addu      $a3, $v0, $a3
  .L800C0294:
    /* 874E94 800C0294 3C028017 */  lui        $v0, %hi(gGameMode)
    /* 874E98 800C0298 8C4287A4 */  lw         $v0, %lo(gGameMode)($v0)
    /* 874E9C 800C029C 2442FFFF */  addiu      $v0, $v0, -0x1
    /* 874EA0 800C02A0 2C420002 */  sltiu      $v0, $v0, 0x2
    /* 874EA4 800C02A4 1440000C */  bnez       $v0, .L800C02D8
    /* 874EA8 800C02A8 00000000 */   nop
    /* 874EAC 800C02AC 3C028017 */  lui        $v0, %hi(D_801771B8)
    /* 874EB0 800C02B0 8C4271B8 */  lw         $v0, %lo(D_801771B8)($v0)
    /* 874EB4 800C02B4 14400008 */  bnez       $v0, .L800C02D8
    /* 874EB8 800C02B8 02602021 */   addu      $a0, $s3, $zero
    /* 874EBC 800C02BC 02402821 */  addu       $a1, $s2, $zero
    /* 874EC0 800C02C0 02E03021 */  addu       $a2, $s7, $zero
    /* 874EC4 800C02C4 26A700A0 */  addiu      $a3, $s5, 0xA0
    /* 874EC8 800C02C8 2682001E */  addiu      $v0, $s4, 0x1E
    /* 874ECC 800C02CC AFA20010 */  sw         $v0, 0x10($sp)
    /* 874ED0 800C02D0 0C02FAD0 */  jal        HUD_RacerTracker_Draw
    /* 874ED4 800C02D4 AFA00014 */   sw        $zero, 0x14($sp)
  .L800C02D8:
    /* 874ED8 800C02D8 3C028017 */  lui        $v0, %hi(gGameMode)
    /* 874EDC 800C02DC 8C4287A4 */  lw         $v0, %lo(gGameMode)($v0)
    /* 874EE0 800C02E0 38430002 */  xori       $v1, $v0, 0x2
    /* 874EE4 800C02E4 2C630001 */  sltiu      $v1, $v1, 0x1
    /* 874EE8 800C02E8 38420004 */  xori       $v0, $v0, 0x4
    /* 874EEC 800C02EC 2C420001 */  sltiu      $v0, $v0, 0x1
    /* 874EF0 800C02F0 00621825 */  or         $v1, $v1, $v0
    /* 874EF4 800C02F4 1060000A */  beqz       $v1, .L800C0320
    /* 874EF8 800C02F8 02602021 */   addu      $a0, $s3, $zero
    /* 874EFC 800C02FC 8E420000 */  lw         $v0, 0x0($s2)
    /* 874F00 800C0300 26A500EE */  addiu      $a1, $s5, 0xEE
    /* 874F04 800C0304 8E430004 */  lw         $v1, 0x4($s2)
    /* 874F08 800C0308 26860012 */  addiu      $a2, $s4, 0x12
    /* 874F0C 800C030C 00452821 */  addu       $a1, $v0, $a1
    /* 874F10 800C0310 0C02ECC4 */  jal        func_800BB310
    /* 874F14 800C0314 00663021 */   addu      $a2, $v1, $a2
    /* 874F18 800C0318 080300CF */  j          .L800C033C
    /* 874F1C 800C031C 00000000 */   nop
  .L800C0320:

    jal EG_RectAlign_Origin_Right_Right
    nop

    /* 874F20 800C0320 8E420000 */  lw         $v0, 0x0($s2)
    /* 874F24 800C0324 26A500EE */  addiu      $a1, $s5, 0xEE
    /* 874F28 800C0328 8E430004 */  lw         $v1, 0x4($s2)
    /* 874F2C 800C032C 26860012 */  addiu      $a2, $s4, 0x12
    /* 874F30 800C0330 00452821 */  addu       $a1, $v0, $a1
    /* 874F34 800C0334 0C02ED1F */  jal        HUD_Timer_Draw
    /* 874F38 800C0338 00663021 */   addu      $a2, $v1, $a2

    jal EG_RectAlign_Origin_None_None
    nop

  .L800C033C:
    /* 874F3C 800C033C 8E420000 */  lw         $v0, 0x0($s2)
    /* 874F40 800C0340 02A22821 */  addu       $a1, $s5, $v0
    /* 874F44 800C0344 8E420004 */  lw         $v0, 0x4($s2)
    /* 874F48 800C0348 3C038017 */  lui        $v1, %hi(D_801771B8)
    /* 874F4C 800C034C 8C6371B8 */  lw         $v1, %lo(D_801771B8)($v1)
    /* 874F50 800C0350 24A500F4 */  addiu      $a1, $a1, 0xF4
    /* 874F54 800C0354 02823021 */  addu       $a2, $s4, $v0
    /* 874F58 800C0358 14600020 */  bnez       $v1, .L800C03DC
    /* 874F5C 800C035C 24C60022 */   addiu     $a2, $a2, 0x22
    /* 874F60 800C0360 3C028017 */  lui        $v0, %hi(gMasterDisp)
    /* 874F64 800C0364 8C4289EC */  lw         $v0, %lo(gMasterDisp)($v0)
    /* 874F68 800C0368 3C030600 */  lui        $v1, (0x6000000 >> 16)
    /* 874F6C 800C036C AC430000 */  sw         $v1, 0x0($v0)
    /* 874F70 800C0370 3C038011 */  lui        $v1, %hi(D_80109550)
    /* 874F74 800C0374 24639550 */  addiu      $v1, $v1, %lo(D_80109550)
    /* 874F78 800C0378 AC430004 */  sw         $v1, 0x4($v0)
    /* 874F7C 800C037C 3C03FA00 */  lui        $v1, (0xFA000000 >> 16)
    /* 874F80 800C0380 AC430008 */  sw         $v1, 0x8($v0)
    /* 874F84 800C0384 2403FFFF */  addiu      $v1, $zero, -0x1
    /* 874F88 800C0388 AC43000C */  sw         $v1, 0xC($v0)
    /* 874F8C 800C038C 866405E0 */  lh         $a0, 0x5E0($s3)
    /* 874F90 800C0390 24430008 */  addiu      $v1, $v0, 0x8
    /* 874F94 800C0394 3C018017 */  lui        $at, %hi(gMasterDisp)
    /* 874F98 800C0398 AC2389EC */  sw         $v1, %lo(gMasterDisp)($at)
    /* 874F9C 800C039C 3C038009 */  lui        $v1, %hi(D_80095678)
    /* 874FA0 800C03A0 8C635678 */  lw         $v1, %lo(D_80095678)($v1)
    /* 874FA4 800C03A4 24420010 */  addiu      $v0, $v0, 0x10
    /* 874FA8 800C03A8 3C018017 */  lui        $at, %hi(gMasterDisp)
    /* 874FAC 800C03AC AC2289EC */  sw         $v0, %lo(gMasterDisp)($at)
    /* 874FB0 800C03B0 0004102B */  sltu       $v0, $zero, $a0
    /* 874FB4 800C03B4 00822023 */  subu       $a0, $a0, $v0
    /* 874FB8 800C03B8 0083102A */  slt        $v0, $a0, $v1
    /* 874FBC 800C03BC 50400001 */  beql       $v0, $zero, .L800C03C4
    /* 874FC0 800C03C0 2464FFFF */   addiu     $a0, $v1, -0x1
  .L800C03C4:

    jal EG_RectAlign_Origin_Right_Right
    nop

    /* 874FC4 800C03C4 3C028017 */  lui        $v0, %hi(D_80169CAC)
    /* 874FC8 800C03C8 8C429CAC */  lw         $v0, %lo(D_80169CAC)($v0)
    /* 874FCC 800C03CC 00042100 */  sll        $a0, $a0, 4
    /* 874FD0 800C03D0 24840020 */  addiu      $a0, $a0, 0x20
    /* 874FD4 800C03D4 0C02E66C */  jal        func_DRAW_800B99B0
    /* 874FD8 800C03D8 00442021 */   addu      $a0, $v0, $a0

    jal EG_RectAlign_Origin_None_None
    nop

  .L800C03DC:
    /* 874FDC 800C03DC 8E420000 */  lw         $v0, 0x0($s2)
    /* 874FE0 800C03E0 8E430004 */  lw         $v1, 0x4($s2)
    /* 874FE4 800C03E4 02A2B021 */  addu       $s6, $s5, $v0
    /* 874FE8 800C03E8 26D6001C */  addiu      $s6, $s6, 0x1C
    /* 874FEC 800C03EC 3C028017 */  lui        $v0, %hi(gGameMode)
    /* 874FF0 800C03F0 8C4287A4 */  lw         $v0, %lo(gGameMode)($v0)
    /* 874FF4 800C03F4 02838821 */  addu       $s1, $s4, $v1
    /* 874FF8 800C03F8 2442FFFF */  addiu      $v0, $v0, -0x1
    /* 874FFC 800C03FC 2C420002 */  sltiu      $v0, $v0, 0x2
    /* 875000 800C0400 1440003A */  bnez       $v0, .L800C04EC
    /* 875004 800C0404 26310012 */   addiu     $s1, $s1, 0x12
    /* 875008 800C0408 3C028017 */  lui        $v0, %hi(D_801771B8)
    /* 87500C 800C040C 8C4271B8 */  lw         $v0, %lo(D_801771B8)($v0)
    /* 875010 800C0410 14400037 */  bnez       $v0, .L800C04F0
    /* 875014 800C0414 02602021 */   addu      $a0, $s3, $zero
    /* 875018 800C0418 3C028017 */  lui        $v0, %hi(gMasterDisp)
    /* 87501C 800C041C 8C4289EC */  lw         $v0, %lo(gMasterDisp)($v0)
    /* 875020 800C0420 3C030600 */  lui        $v1, (0x6000000 >> 16)
    /* 875024 800C0424 AC430000 */  sw         $v1, 0x0($v0)
    /* 875028 800C0428 3C038011 */  lui        $v1, %hi(D_80109550)
    /* 87502C 800C042C 24639550 */  addiu      $v1, $v1, %lo(D_80109550)
    /* 875030 800C0430 AC430004 */  sw         $v1, 0x4($v0)
    /* 875034 800C0434 3C03FA00 */  lui        $v1, (0xFA000000 >> 16)
    /* 875038 800C0438 AC430008 */  sw         $v1, 0x8($v0)
    /* 87503C 800C043C 2403FFFF */  addiu      $v1, $zero, -0x1
    /* 875040 800C0440 AC43000C */  sw         $v1, 0xC($v0)
    /* 875044 800C0444 8E640604 */  lw         $a0, 0x604($s3)
    /* 875048 800C0448 24430008 */  addiu      $v1, $v0, 0x8
    /* 87504C 800C044C 24420010 */  addiu      $v0, $v0, 0x10
    /* 875050 800C0450 3C018017 */  lui        $at, %hi(gMasterDisp)
    /* 875054 800C0454 AC2389EC */  sw         $v1, %lo(gMasterDisp)($at)
    /* 875058 800C0458 3C018017 */  lui        $at, %hi(gMasterDisp)
    /* 87505C 800C045C AC2289EC */  sw         $v0, %lo(gMasterDisp)($at)
    /* 875060 800C0460 14800004 */  bnez       $a0, .L800C0474
    /* 875064 800C0464 02C02821 */   addu      $a1, $s6, $zero
    /* 875068 800C0468 8E7005F4 */  lw         $s0, 0x5F4($s3)
    /* 87506C 800C046C 0803011E */  j          .L800C0478
    /* 875070 800C0470 00000000 */   nop
  .L800C0474:
    /* 875074 800C0474 8E700608 */  lw         $s0, 0x608($s3)
  .L800C0478:
    
    jal EG_RectAlign_Origin_Left_Left
    nop
    
    /* 875078 800C0478 02203021 */  addu       $a2, $s1, $zero
    /* 87507C 800C047C 3C028017 */  lui        $v0, %hi(D_80169CAC)
    /* 875080 800C0480 8C429CAC */  lw         $v0, %lo(D_80169CAC)($v0)
    /* 875084 800C0484 00102100 */  sll        $a0, $s0, 4
    /* 875088 800C0488 24840060 */  addiu      $a0, $a0, 0x60
    /* 87508C 800C048C 0C02E66C */  jal        func_DRAW_800B99B0
    /* 875090 800C0490 00442021 */   addu      $a0, $v0, $a0


    /* 875094 800C0494 24020002 */  addiu      $v0, $zero, 0x2
    /* 875098 800C0498 1202000C */  beq        $s0, $v0, .L800C04CC
    /* 87509C 800C049C 2A020003 */   slti      $v0, $s0, 0x3
    /* 8750A0 800C04A0 10400005 */  beqz       $v0, .L800C04B8
    /* 8750A4 800C04A4 24020001 */   addiu     $v0, $zero, 0x1
    /* 8750A8 800C04A8 52020009 */  beql       $s0, $v0, .L800C04D0
    /* 8750AC 800C04AC 24040011 */   addiu     $a0, $zero, 0x11
    /* 8750B0 800C04B0 08030134 */  j          .L800C04D0
    /* 8750B4 800C04B4 24040013 */   addiu     $a0, $zero, 0x13
  .L800C04B8:
    /* 8750B8 800C04B8 24020003 */  addiu      $v0, $zero, 0x3
    /* 8750BC 800C04BC 52020004 */  beql       $s0, $v0, .L800C04D0
    /* 8750C0 800C04C0 24040012 */   addiu     $a0, $zero, 0x12
    /* 8750C4 800C04C4 08030134 */  j          .L800C04D0
    /* 8750C8 800C04C8 24040013 */   addiu     $a0, $zero, 0x13
  .L800C04CC:
    /* 8750CC 800C04CC 24040014 */  addiu      $a0, $zero, 0x14
  .L800C04D0:
    /* 8750D0 800C04D0 26C50008 */  addiu      $a1, $s6, 0x8
    /* 8750D4 800C04D4 3C028017 */  lui        $v0, %hi(D_80169CAC)
    /* 8750D8 800C04D8 8C429CAC */  lw         $v0, %lo(D_80169CAC)($v0)
    /* 8750DC 800C04DC 26260004 */  addiu      $a2, $s1, 0x4
    /* 8750E0 800C04E0 00042100 */  sll        $a0, $a0, 4
    /* 8750E4 800C04E4 0C02E66C */  jal        func_DRAW_800B99B0
    /* 8750E8 800C04E8 00442021 */   addu      $a0, $v0, $a0
        
    jal EG_RectAlign_Origin_None_None
    nop

  .L800C04EC:
    /* 8750EC 800C04EC 02602021 */  addu       $a0, $s3, $zero
  .L800C04F0:

    jal EG_RectAlign_Origin_Right_Right
    nop

    /* 8750F0 800C04F0 8E420000 */  lw         $v0, 0x0($s2)
    /* 8750F4 800C04F4 26A500E6 */  addiu      $a1, $s5, 0xE6
    /* 8750F8 800C04F8 8E460004 */  lw         $a2, 0x4($s2)
    /* 8750FC 800C04FC 269100C3 */  addiu      $s1, $s4, 0xC3
    /* 875100 800C0500 00452821 */  addu       $a1, $v0, $a1
    /* 875104 800C0504 0C02EE4F */  jal        HUD_Speedometer_Draw
    /* 875108 800C0508 00D13021 */   addu      $a2, $a2, $s1

    jal EG_RectAlign_Origin_None_None
    nop

    jal EG_RectAlign_Origin_Left_Left
    nop

    /* 87510C 800C050C 02602021 */  addu       $a0, $s3, $zero
    /* 875110 800C0510 8E450000 */  lw         $a1, 0x0($s2)
    /* 875114 800C0514 8E460004 */  lw         $a2, 0x4($s2)
    /* 875118 800C0518 26B0001C */  addiu      $s0, $s5, 0x1C
    /* 87511C 800C051C 00B02821 */  addu       $a1, $a1, $s0
    /* 875120 800C0520 0C02F003 */  jal        HUD_ShieldMeter_Draw
    /* 875124 800C0524 00D13021 */   addu      $a2, $a2, $s1
    /* 875128 800C0528 8E450000 */  lw         $a1, 0x0($s2)
    /* 87512C 800C052C 02602021 */  addu       $a0, $s3, $zero
    /* 875130 800C0530 8E420004 */  lw         $v0, 0x4($s2)
    /* 875134 800C0534 268600D3 */  addiu      $a2, $s4, 0xD3
    /* 875138 800C0538 00B02821 */  addu       $a1, $a1, $s0
    /* 87513C 800C053C 0C02F103 */  jal        HUD_AmmoMeter_Draw
    /* 875140 800C0540 00463021 */   addu      $a2, $v0, $a2

    jal EG_RectAlign_Origin_None_None
    nop

    /* 875144 800C0544 3C028017 */  lui        $v0, %hi(D_801771B8)
    /* 875148 800C0548 8C4271B8 */  lw         $v0, %lo(D_801771B8)($v0)
    /* 87514C 800C054C 10400007 */  beqz       $v0, .L800C056C
    /* 875150 800C0550 02602021 */   addu      $a0, $s3, $zero
    /* 875154 800C0554 02402821 */  addu       $a1, $s2, $zero
    /* 875158 800C0558 02E03021 */  addu       $a2, $s7, $zero
    /* 87515C 800C055C 0C02F947 */  jal        func_800BE51C
    /* 875160 800C0560 00003821 */   addu      $a3, $zero, $zero
    /* 875164 800C0564 0803016A */  j          .L800C05A8
    /* 875168 800C0568 00000000 */   nop
  .L800C056C:
    /* 87516C 800C056C 02402821 */  addu       $a1, $s2, $zero
    /* 875170 800C0570 02E03021 */  addu       $a2, $s7, $zero
    /* 875174 800C0574 26A200A0 */  addiu      $v0, $s5, 0xA0
    /* 875178 800C0578 44823000 */  mtc1       $v0, $ft1
    /* 87517C 800C057C 468031A0 */  cvt.s.w    $ft1, $ft1
    /* 875180 800C0580 268200B4 */  addiu      $v0, $s4, 0xB4
    /* 875184 800C0584 44820000 */  mtc1       $v0, $fv0
    /* 875188 800C0588 46800020 */  cvt.s.w    $fv0, $fv0
    /* 87518C 800C058C 44073000 */  mfc1       $a3, $ft1
    /* 875190 800C0590 24020060 */  addiu      $v0, $zero, 0x60
    /* 875194 800C0594 AFA20014 */  sw         $v0, 0x14($sp)
    /* 875198 800C0598 24020019 */  addiu      $v0, $zero, 0x19
    /* 87519C 800C059C E7A00010 */  swc1       $fv0, 0x10($sp)
    /* 8751A0 800C05A0 0C02F79F */  jal        func_800BDE7C
    /* 8751A4 800C05A4 AFA20018 */   sw        $v0, 0x18($sp)
  .L800C05A8:
    /* 8751A8 800C05A8 3C028017 */  lui        $v0, %hi(gGameMode)
    /* 8751AC 800C05AC 8C4287A4 */  lw         $v0, %lo(gGameMode)($v0)
    /* 8751B0 800C05B0 38430002 */  xori       $v1, $v0, 0x2
    /* 8751B4 800C05B4 0003182B */  sltu       $v1, $zero, $v1
    /* 8751B8 800C05B8 38420004 */  xori       $v0, $v0, 0x4
    /* 8751BC 800C05BC 0002102B */  sltu       $v0, $zero, $v0
    /* 8751C0 800C05C0 00621824 */  and        $v1, $v1, $v0
    /* 8751C4 800C05C4 10600039 */  beqz       $v1, .L800C06AC
    /* 8751C8 800C05C8 00000000 */   nop
    /* 8751CC 800C05CC 8E420000 */  lw         $v0, 0x0($s2)
    /* 8751D0 800C05D0 02A28821 */  addu       $s1, $s5, $v0
    /* 8751D4 800C05D4 8E420004 */  lw         $v0, 0x4($s2)
    /* 8751D8 800C05D8 8E630728 */  lw         $v1, 0x728($s3)
    /* 8751DC 800C05DC 263100A0 */  addiu      $s1, $s1, 0xA0
    /* 8751E0 800C05E0 02828021 */  addu       $s0, $s4, $v0
    /* 8751E4 800C05E4 10600028 */  beqz       $v1, .L800C0688
    /* 8751E8 800C05E8 261000CB */   addiu     $s0, $s0, 0xCB
    /* 8751EC 800C05EC 3C048017 */  lui        $a0, %hi(gMasterDisp)
    /* 8751F0 800C05F0 248489EC */  addiu      $a0, $a0, %lo(gMasterDisp)
    /* 8751F4 800C05F4 0C018ADE */  jal        func_80062B78
    /* 8751F8 800C05F8 00000000 */   nop
    /* 8751FC 800C05FC 0C01873D */  jal        func_80061CF4
    /* 875200 800C0600 00002021 */   addu      $a0, $zero, $zero
    /* 875204 800C0604 3C02FF00 */  lui        $v0, (0xFF00FFFF >> 16)
    /* 875208 800C0608 3442FFFF */  ori        $v0, $v0, (0xFF00FFFF & 0xFFFF)
    /* 87520C 800C060C 3C048017 */  lui        $a0, %hi(gMasterDisp)
    /* 875210 800C0610 248489EC */  addiu      $a0, $a0, %lo(gMasterDisp)
    /* 875214 800C0614 3C05800A */  lui        $a1, %hi(D_8009C9A4)
    /* 875218 800C0618 24A5C9A4 */  addiu      $a1, $a1, %lo(D_8009C9A4)
    /* 87521C 800C061C 00003021 */  addu       $a2, $zero, $zero
    /* 875220 800C0620 3C01800A */  lui        $at, %hi(D_8009CAF0)
    /* 875224 800C0624 D422CAF0 */  ldc1       $fv1, %lo(D_8009CAF0)($at)
    /* 875228 800C0628 C6600728 */  lwc1       $fv0, 0x728($s3)
    /* 87522C 800C062C 46800021 */  cvt.d.w    $fv0, $fv0
    /* 875230 800C0630 AFA20010 */  sw         $v0, 0x10($sp)
    /* 875234 800C0634 2622FFF6 */  addiu      $v0, $s1, -0xA
    /* 875238 800C0638 46220002 */  mul.d      $fv0, $fv0, $fv1
    /* 87523C 800C063C AFA20018 */  sw         $v0, 0x18($sp)
    /* 875240 800C0640 24020014 */  addiu      $v0, $zero, 0x14
    /* 875244 800C0644 AFA20020 */  sw         $v0, 0x20($sp)
    /* 875248 800C0648 AFA20024 */  sw         $v0, 0x24($sp)
    /* 87524C 800C064C 3C028017 */  lui        $v0, %hi(D_80175398)
    /* 875250 800C0650 24425398 */  addiu      $v0, $v0, %lo(D_80175398)
    /* 875254 800C0654 AFB0001C */  sw         $s0, 0x1C($sp)
    /* 875258 800C0658 AFA20028 */  sw         $v0, 0x28($sp)
    /* 87525C 800C065C 4620008D */  trunc.w.d  $fv1, $fv0
    /* 875260 800C0660 E7A20014 */  swc1       $fv1, 0x14($sp)
    /* 875264 800C0664 0C019101 */  jal        func_80064404
    /* 875268 800C0668 24070010 */   addiu     $a3, $zero, 0x10
    /* 87526C 800C066C 3C048017 */  lui        $a0, %hi(gMasterDisp)
    /* 875270 800C0670 248489EC */  addiu      $a0, $a0, %lo(gMasterDisp)
    /* 875274 800C0674 0C018B20 */  jal        func_80062C80
    /* 875278 800C0678 00000000 */   nop
    /* 87527C 800C067C 8E620728 */  lw         $v0, 0x728($s3)
    /* 875280 800C0680 2442FFFF */  addiu      $v0, $v0, -0x1
    /* 875284 800C0684 AE620728 */  sw         $v0, 0x728($s3)
  .L800C0688:
    /* 875288 800C0688 02602021 */  addu       $a0, $s3, $zero
    /* 87528C 800C068C 24070010 */  addiu      $a3, $zero, 0x10
    /* 875290 800C0690 8E420000 */  lw         $v0, 0x0($s2)
    /* 875294 800C0694 26A500A0 */  addiu      $a1, $s5, 0xA0
    /* 875298 800C0698 8E430004 */  lw         $v1, 0x4($s2)
    /* 87529C 800C069C 268600DF */  addiu      $a2, $s4, 0xDF
    /* 8752A0 800C06A0 00452821 */  addu       $a1, $v0, $a1
    /* 8752A4 800C06A4 0C02FEBD */  jal        func_800BFAF4
    /* 8752A8 800C06A8 00663021 */   addu      $a2, $v1, $a2
  .L800C06AC:
    /* 8752AC 800C06AC 8FBF0058 */  lw         $ra, 0x58($sp)
    /* 8752B0 800C06B0 8FB70054 */  lw         $s7, 0x54($sp)
    /* 8752B4 800C06B4 8FB60050 */  lw         $s6, 0x50($sp)
    /* 8752B8 800C06B8 8FB5004C */  lw         $s5, 0x4C($sp)
    /* 8752BC 800C06BC 8FB40048 */  lw         $s4, 0x48($sp)
    /* 8752C0 800C06C0 8FB30044 */  lw         $s3, 0x44($sp)
    /* 8752C4 800C06C4 8FB20040 */  lw         $s2, 0x40($sp)
    /* 8752C8 800C06C8 8FB1003C */  lw         $s1, 0x3C($sp)
    /* 8752CC 800C06CC 8FB00038 */  lw         $s0, 0x38($sp)
    /* 8752D0 800C06D0 D7B60068 */  ldc1       $fs1, 0x68($sp)
    /* 8752D4 800C06D4 D7B40060 */  ldc1       $fs0, 0x60($sp)
    /* 8752D8 800C06D8 27BD0070 */  addiu      $sp, $sp, 0x70
    /* 8752DC 800C06DC 03E00008 */  jr         $ra
    /* 8752E0 800C06E0 00000000 */   nop
.size HUD_Draw, . - HUD_Draw

glabel HUD_Turbo_Draw
    /* 86F0F8 800BA4F8 27BDFF88 */  addiu      $sp, $sp, -0x78
    /* 86F0FC 800BA4FC AFB00050 */  sw         $s0, 0x50($sp)
    /* 86F100 800BA500 00A08021 */  addu       $s0, $a1, $zero
    /* 86F104 800BA504 3C086666 */  lui        $t0, (0x66666667 >> 16)
    /* 86F108 800BA508 35086667 */  ori        $t0, $t0, (0x66666667 & 0xFFFF)
    /* 86F10C 800BA50C 3C098017 */  lui        $t1, %hi(gMasterDisp)
    /* 86F110 800BA510 252989EC */  addiu      $t1, $t1, %lo(gMasterDisp)
    /* 86F114 800BA514 AFBF0074 */  sw         $ra, 0x74($sp)
    /* 86F118 800BA518 AFBE0070 */  sw         $fp, 0x70($sp)
    /* 86F11C 800BA51C AFB7006C */  sw         $s7, 0x6C($sp)
    /* 86F120 800BA520 AFB60068 */  sw         $s6, 0x68($sp)
    /* 86F124 800BA524 AFB50064 */  sw         $s5, 0x64($sp)
    /* 86F128 800BA528 AFB40060 */  sw         $s4, 0x60($sp)
    /* 86F12C 800BA52C AFB3005C */  sw         $s3, 0x5C($sp)
    /* 86F130 800BA530 AFB20058 */  sw         $s2, 0x58($sp)
    /* 86F134 800BA534 AFB10054 */  sw         $s1, 0x54($sp)
    /* 86F138 800BA538 AFA40024 */  sw         $a0, 0x24($sp)
    /* 86F13C 800BA53C AFA6002C */  sw         $a2, 0x2C($sp)
    /* 86F140 800BA540 8D230000 */  lw         $v1, 0x0($t1)
    /* 86F144 800BA544 3C07F500 */  lui        $a3, (0xF5000100 >> 16)
    /* 86F148 800BA548 34E70100 */  ori        $a3, $a3, (0xF5000100 & 0xFFFF)
    /* 86F14C 800BA54C 3C0A8017 */  lui        $t2, %hi(D_80169CAC)
    /* 86F150 800BA550 254A9CAC */  addiu      $t2, $t2, %lo(D_80169CAC)
    /* 86F154 800BA554 24620008 */  addiu      $v0, $v1, 0x8
    /* 86F158 800BA558 AD220000 */  sw         $v0, 0x0($t1)
    /* 86F15C 800BA55C 3C020600 */  lui        $v0, (0x6000000 >> 16)
    /* 86F160 800BA560 AC620000 */  sw         $v0, 0x0($v1)
    /* 86F164 800BA564 3C028011 */  lui        $v0, %hi(D_80109550)
    /* 86F168 800BA568 24429550 */  addiu      $v0, $v0, %lo(D_80109550)
    /* 86F16C 800BA56C AC620004 */  sw         $v0, 0x4($v1)
    /* 86F170 800BA570 24620010 */  addiu      $v0, $v1, 0x10
    /* 86F174 800BA574 AD220000 */  sw         $v0, 0x0($t1)
    /* 86F178 800BA578 3C02FD10 */  lui        $v0, (0xFD100000 >> 16)
    /* 86F17C 800BA57C AC620008 */  sw         $v0, 0x8($v1)
    /* 86F180 800BA580 8D440000 */  lw         $a0, 0x0($t2)
    /* 86F184 800BA584 3C06073F */  lui        $a2, (0x73FC000 >> 16)
    /* 86F188 800BA588 3C058009 */  lui        $a1, %hi(D_80095694)
    /* 86F18C 800BA58C 8CA55694 */  lw         $a1, %lo(D_80095694)($a1)
    /* 86F190 800BA590 8C8201D4 */  lw         $v0, 0x1D4($a0)
    /* 86F194 800BA594 8C8401DC */  lw         $a0, 0x1DC($a0)
    /* 86F198 800BA598 34C6C000 */  ori        $a2, $a2, (0x73FC000 & 0xFFFF)
    /* 86F19C 800BA59C 00A80018 */  mult       $a1, $t0
    /* 86F1A0 800BA5A0 AFA00034 */  sw         $zero, 0x34($sp)
    /* 86F1A4 800BA5A4 00441021 */  addu       $v0, $v0, $a0
    /* 86F1A8 800BA5A8 AC62000C */  sw         $v0, 0xC($v1)
    /* 86F1AC 800BA5AC 24620018 */  addiu      $v0, $v1, 0x18
    /* 86F1B0 800BA5B0 AD220000 */  sw         $v0, 0x0($t1)
    /* 86F1B4 800BA5B4 3C02E800 */  lui        $v0, (0xE8000000 >> 16)
    /* 86F1B8 800BA5B8 AC620010 */  sw         $v0, 0x10($v1)
    /* 86F1BC 800BA5BC 24620020 */  addiu      $v0, $v1, 0x20
    /* 86F1C0 800BA5C0 AC600014 */  sw         $zero, 0x14($v1)
    /* 86F1C4 800BA5C4 AD220000 */  sw         $v0, 0x0($t1)
    /* 86F1C8 800BA5C8 3C020700 */  lui        $v0, (0x7000000 >> 16)
    /* 86F1CC 800BA5CC AC62001C */  sw         $v0, 0x1C($v1)
    /* 86F1D0 800BA5D0 24620028 */  addiu      $v0, $v1, 0x28
    /* 86F1D4 800BA5D4 AC670018 */  sw         $a3, 0x18($v1)
    /* 86F1D8 800BA5D8 AD220000 */  sw         $v0, 0x0($t1)
    /* 86F1DC 800BA5DC 3C02E600 */  lui        $v0, (0xE6000000 >> 16)
    /* 86F1E0 800BA5E0 AC620020 */  sw         $v0, 0x20($v1)
    /* 86F1E4 800BA5E4 24620030 */  addiu      $v0, $v1, 0x30
    /* 86F1E8 800BA5E8 AC600024 */  sw         $zero, 0x24($v1)
    /* 86F1EC 800BA5EC AD220000 */  sw         $v0, 0x0($t1)
    /* 86F1F0 800BA5F0 3C02F000 */  lui        $v0, (0xF0000000 >> 16)
    /* 86F1F4 800BA5F4 AC620028 */  sw         $v0, 0x28($v1)
    /* 86F1F8 800BA5F8 24620038 */  addiu      $v0, $v1, 0x38
    /* 86F1FC 800BA5FC AC66002C */  sw         $a2, 0x2C($v1)
    /* 86F200 800BA600 AD220000 */  sw         $v0, 0x0($t1)
    /* 86F204 800BA604 3C02E700 */  lui        $v0, (0xE7000000 >> 16)
    /* 86F208 800BA608 AC620030 */  sw         $v0, 0x30($v1)
    /* 86F20C 800BA60C AC600034 */  sw         $zero, 0x34($v1)
    /* 86F210 800BA610 00005810 */  mfhi       $t3
    /* 86F214 800BA614 000B1043 */  sra        $v0, $t3, 1
    /* 86F218 800BA618 8FAB0024 */  lw         $t3, 0x24($sp)
    /* 86F21C 800BA61C 00052FC3 */  sra        $a1, $a1, 31
    /* 86F220 800BA620 8D63049C */  lw         $v1, 0x49C($t3)
    /* 86F224 800BA624 00451023 */  subu       $v0, $v0, $a1
    /* 86F228 800BA628 186000E0 */  blez       $v1, .L800BA9AC
    /* 86F22C 800BA62C 30420007 */   andi      $v0, $v0, 0x7
    /* 86F230 800BA630 0120B021 */  addu       $s6, $t1, $zero
    /* 86F234 800BA634 00021100 */  sll        $v0, $v0, 4
    /* 86F238 800BA638 8FAB002C */  lw         $t3, 0x2C($sp)
    /* 86F23C 800BA63C 8FBE0024 */  lw         $fp, 0x24($sp)
    /* 86F240 800BA640 244201E0 */  addiu      $v0, $v0, 0x1E0
    /* 86F244 800BA644 0200B821 */  addu       $s7, $s0, $zero
    /* 86F248 800BA648 AFA2003C */  sw         $v0, 0x3C($sp)
    /* 86F24C 800BA64C 256B0008 */  addiu      $t3, $t3, 0x8
    /* 86F250 800BA650 AFAB0044 */  sw         $t3, 0x44($sp)
  .L800BA654:
    /* 86F254 800BA654 87C204A0 */  lh         $v0, 0x4A0($fp)
    /* 86F258 800BA658 240BFFFF */  addiu      $t3, $zero, -0x1
    /* 86F25C 800BA65C 144B0027 */  bne        $v0, $t3, .L800BA6FC
    /* 86F260 800BA660 3C06B900 */   lui       $a2, (0xB900031D >> 16)
    /* 86F264 800BA664 34C6031D */  ori        $a2, $a2, (0xB900031D & 0xFFFF)
    /* 86F268 800BA668 8EC30000 */  lw         $v1, 0x0($s6)
    /* 86F26C 800BA66C 3C040F0A */  lui        $a0, (0xF0A7008 >> 16)
    /* 86F270 800BA670 34847008 */  ori        $a0, $a0, (0xF0A7008 & 0xFFFF)
    /* 86F274 800BA674 24620008 */  addiu      $v0, $v1, 0x8
    /* 86F278 800BA678 AEC20000 */  sw         $v0, 0x0($s6)
    /* 86F27C 800BA67C 24620010 */  addiu      $v0, $v1, 0x10
    /* 86F280 800BA680 AC660000 */  sw         $a2, 0x0($v1)
    /* 86F284 800BA684 AC640004 */  sw         $a0, 0x4($v1)
    /* 86F288 800BA688 AEC20000 */  sw         $v0, 0x0($s6)
    /* 86F28C 800BA68C 3C02FA00 */  lui        $v0, (0xFA000000 >> 16)
    /* 86F290 800BA690 AC620008 */  sw         $v0, 0x8($v1)
    /* 86F294 800BA694 3C048017 */  lui        $a0, %hi(D_80169CAC)
    /* 86F298 800BA698 8C849CAC */  lw         $a0, %lo(D_80169CAC)($a0)
    /* 86F29C 800BA69C AC6B000C */  sw         $t3, 0xC($v1)
    /* 86F2A0 800BA6A0 8FAB002C */  lw         $t3, 0x2C($sp)
    /* 86F2A4 800BA6A4 3C018009 */  lui        $at, %hi(D_80095694)
    /* 86F2A8 800BA6A8 C4205694 */  lwc1       $fv0, %lo(D_80095694)($at)
    /* 86F2AC 800BA6AC 46800020 */  cvt.s.w    $fv0, $fv0
    /* 86F2B0 800BA6B0 44070000 */  mfc1       $a3, $fv0
    /* 86F2B4 800BA6B4 26E50008 */  addiu      $a1, $s7, 0x8
    /* 86F2B8 800BA6B8 AFA00010 */  sw         $zero, 0x10($sp)
    /* 86F2BC 800BA6BC AFA00014 */  sw         $zero, 0x14($sp)
    /* 86F2C0 800BA6C0 25660008 */  addiu      $a2, $t3, 0x8
    /* 86F2C4 800BA6C4 240BFFFF */  addiu      $t3, $zero, -0x1
    /* 86F2C8 800BA6C8 AFAB0018 */  sw         $t3, 0x18($sp)
    /* 86F2CC 800BA6CC 248401D0 */  addiu      $a0, $a0, 0x1D0
    /* 86F2D0 800BA6D0 0C02E757 */  jal        func_800B9D5C
    /* 86F2D4 800BA6D4 AFAB001C */   sw        $t3, 0x1C($sp)
    /* 86F2D8 800BA6D8 3C048017 */  lui        $a0, %hi(D_80169CAC)
    /* 86F2DC 800BA6DC 8C849CAC */  lw         $a0, %lo(D_80169CAC)($a0)
    /* 86F2E0 800BA6E0 8FAB003C */  lw         $t3, 0x3C($sp)
    /* 86F2E4 800BA6E4 8FA6002C */  lw         $a2, 0x2C($sp)
    /* 86F2E8 800BA6E8 02E02821 */  addu       $a1, $s7, $zero
    /* 86F2EC 800BA6EC 0C02E881 */  jal        func_800BA204
    /* 86F2F0 800BA6F0 008B2021 */   addu      $a0, $a0, $t3
    /* 86F2F4 800BA6F4 0802EA62 */  j          .L800BA988
    /* 86F2F8 800BA6F8 00000000 */   nop
  .L800BA6FC:
    /* 86F2FC 800BA6FC 3C01800A */  lui        $at, %hi(D_8009C8D0)
    /* 86F300 800BA700 D422C8D0 */  ldc1       $fv1, %lo(D_8009C8D0)($at)
    /* 86F304 800BA704 44820000 */  mtc1       $v0, $fv0
    /* 86F308 800BA708 46800021 */  cvt.d.w    $fv0, $fv0
    /* 86F30C 800BA70C 46220002 */  mul.d      $fv0, $fv0, $fv1
    /* 86F310 800BA710 4620008D */  trunc.w.d  $fv1, $fv0
    /* 86F314 800BA714 44151000 */  mfc1       $s5, $fv1
    /* 86F318 800BA718 2AA20801 */  slti       $v0, $s5, 0x801
    /* 86F31C 800BA71C 14400002 */  bnez       $v0, .L800BA728
    /* 86F320 800BA720 00159840 */   sll       $s3, $s5, 1
    /* 86F324 800BA724 24131000 */  addiu      $s3, $zero, 0x1000
  .L800BA728:
    /* 86F328 800BA728 00009021 */  addu       $s2, $zero, $zero
    /* 86F32C 800BA72C 3C118011 */  lui        $s1, %hi(D_80109100)
    /* 86F330 800BA730 26319100 */  addiu      $s1, $s1, %lo(D_80109100)
  .L800BA734:
    /* 86F334 800BA734 92250000 */  lbu        $a1, 0x0($s1)
    /* 86F338 800BA738 240400FF */  addiu      $a0, $zero, 0xFF
    /* 86F33C 800BA73C 0C015AD0 */  jal        func_80056B40
    /* 86F340 800BA740 02603021 */   addu      $a2, $s3, $zero
    /* 86F344 800BA744 04420001 */  bltzl      $v0, .L800BA74C
    /* 86F348 800BA748 24420007 */   addiu     $v0, $v0, 0x7
  .L800BA74C:
    /* 86F34C 800BA74C 240400FF */  addiu      $a0, $zero, 0xFF
    /* 86F350 800BA750 92250001 */  lbu        $a1, 0x1($s1)
    /* 86F354 800BA754 02603021 */  addu       $a2, $s3, $zero
    /* 86F358 800BA758 000210C3 */  sra        $v0, $v0, 3
    /* 86F35C 800BA75C 0C015AD0 */  jal        func_80056B40
    /* 86F360 800BA760 3054001F */   andi      $s4, $v0, 0x1F
    /* 86F364 800BA764 04420001 */  bltzl      $v0, .L800BA76C
    /* 86F368 800BA768 24420007 */   addiu     $v0, $v0, 0x7
  .L800BA76C:
    /* 86F36C 800BA76C 240400FF */  addiu      $a0, $zero, 0xFF
    /* 86F370 800BA770 92250002 */  lbu        $a1, 0x2($s1)
    /* 86F374 800BA774 02603021 */  addu       $a2, $s3, $zero
    /* 86F378 800BA778 000210C3 */  sra        $v0, $v0, 3
    /* 86F37C 800BA77C 0C015AD0 */  jal        func_80056B40
    /* 86F380 800BA780 3050001F */   andi      $s0, $v0, 0x1F
    /* 86F384 800BA784 04420001 */  bltzl      $v0, .L800BA78C
    /* 86F388 800BA788 24420007 */   addiu     $v0, $v0, 0x7
  .L800BA78C:
    /* 86F38C 800BA78C 00021883 */  sra        $v1, $v0, 2
    /* 86F390 800BA790 001422C0 */  sll        $a0, $s4, 11
    /* 86F394 800BA794 00101180 */  sll        $v0, $s0, 6
    /* 86F398 800BA798 00822025 */  or         $a0, $a0, $v0
    /* 86F39C 800BA79C 3063003E */  andi       $v1, $v1, 0x3E
    /* 86F3A0 800BA7A0 00832025 */  or         $a0, $a0, $v1
    /* 86F3A4 800BA7A4 34840001 */  ori        $a0, $a0, 0x1
    /* 86F3A8 800BA7A8 26310004 */  addiu      $s1, $s1, 0x4
    /* 86F3AC 800BA7AC 3C038017 */  lui        $v1, %hi(D_80175FD8)
    /* 86F3B0 800BA7B0 8C635FD8 */  lw         $v1, %lo(D_80175FD8)($v1)
    /* 86F3B4 800BA7B4 00122840 */  sll        $a1, $s2, 1
    /* 86F3B8 800BA7B8 26520001 */  addiu      $s2, $s2, 0x1
    /* 86F3BC 800BA7BC 3C028009 */  lui        $v0, %hi(D_80095690)
    /* 86F3C0 800BA7C0 8C425690 */  lw         $v0, %lo(D_80095690)($v0)
    /* 86F3C4 800BA7C4 3C0B8018 */  lui        $t3, %hi(D_801801D0)
    /* 86F3C8 800BA7C8 256B01D0 */  addiu      $t3, $t3, %lo(D_801801D0)
    /* 86F3CC 800BA7CC 00031980 */  sll        $v1, $v1, 6
    /* 86F3D0 800BA7D0 006B1821 */  addu       $v1, $v1, $t3
    /* 86F3D4 800BA7D4 00021140 */  sll        $v0, $v0, 5
    /* 86F3D8 800BA7D8 00431021 */  addu       $v0, $v0, $v1
    /* 86F3DC 800BA7DC 00A22821 */  addu       $a1, $a1, $v0
    /* 86F3E0 800BA7E0 2A420010 */  slti       $v0, $s2, 0x10
    /* 86F3E4 800BA7E4 1440FFD3 */  bnez       $v0, .L800BA734
    /* 86F3E8 800BA7E8 A4A40000 */   sh        $a0, 0x0($a1)
    /* 86F3EC 800BA7EC 3C08B900 */  lui        $t0, (0xB900031D >> 16)
    /* 86F3F0 800BA7F0 3508031D */  ori        $t0, $t0, (0xB900031D & 0xFFFF)
    /* 86F3F4 800BA7F4 3C070050 */  lui        $a3, (0x504340 >> 16)
    /* 86F3F8 800BA7F8 34E74340 */  ori        $a3, $a3, (0x504340 & 0xFFFF)
    /* 86F3FC 800BA7FC 00002021 */  addu       $a0, $zero, $zero
    /* 86F400 800BA800 8EC30000 */  lw         $v1, 0x0($s6)
    /* 86F404 800BA804 24050400 */  addiu      $a1, $zero, 0x400
    /* 86F408 800BA808 02A03021 */  addu       $a2, $s5, $zero
    /* 86F40C 800BA80C 24620008 */  addiu      $v0, $v1, 0x8
    /* 86F410 800BA810 AEC20000 */  sw         $v0, 0x0($s6)
    /* 86F414 800BA814 AC680000 */  sw         $t0, 0x0($v1)
    /* 86F418 800BA818 0C015AD0 */  jal        func_80056B40
    /* 86F41C 800BA81C AC670004 */   sw        $a3, 0x4($v1)
    /* 86F420 800BA820 00404021 */  addu       $t0, $v0, $zero
    /* 86F424 800BA824 29020100 */  slti       $v0, $t0, 0x100
    /* 86F428 800BA828 50400001 */  beql       $v0, $zero, .L800BA830
    /* 86F42C 800BA82C 240800FF */   addiu     $t0, $zero, 0xFF
  .L800BA830:
    /* 86F430 800BA830 3C06F500 */  lui        $a2, (0xF5000170 >> 16)
    /* 86F434 800BA834 34C60170 */  ori        $a2, $a2, (0xF5000170 & 0xFFFF)
    /* 86F438 800BA838 8EC30000 */  lw         $v1, 0x0($s6)
    /* 86F43C 800BA83C 3C070703 */  lui        $a3, (0x703C000 >> 16)
    /* 86F440 800BA840 34E7C000 */  ori        $a3, $a3, (0x703C000 & 0xFFFF)
    /* 86F444 800BA844 3C0B8018 */  lui        $t3, %hi(D_801801D0)
    /* 86F448 800BA848 256B01D0 */  addiu      $t3, $t3, %lo(D_801801D0)
    /* 86F44C 800BA84C 24620008 */  addiu      $v0, $v1, 0x8
    /* 86F450 800BA850 AEC20000 */  sw         $v0, 0x0($s6)
    /* 86F454 800BA854 3C058017 */  lui        $a1, %hi(D_80175FD8)
    /* 86F458 800BA858 8CA55FD8 */  lw         $a1, %lo(D_80175FD8)($a1)
    /* 86F45C 800BA85C 3C048009 */  lui        $a0, %hi(D_80095690)
    /* 86F460 800BA860 8C845690 */  lw         $a0, %lo(D_80095690)($a0)
    /* 86F464 800BA864 26F00008 */  addiu      $s0, $s7, 0x8
    /* 86F468 800BA868 3C02FA00 */  lui        $v0, (0xFA000000 >> 16)
    /* 86F46C 800BA86C AC620000 */  sw         $v0, 0x0($v1)
    /* 86F470 800BA870 2402FF00 */  addiu      $v0, $zero, -0x100
    /* 86F474 800BA874 01021025 */  or         $v0, $t0, $v0
    /* 86F478 800BA878 AC620004 */  sw         $v0, 0x4($v1)
    /* 86F47C 800BA87C 24620010 */  addiu      $v0, $v1, 0x10
    /* 86F480 800BA880 AEC20000 */  sw         $v0, 0x0($s6)
    /* 86F484 800BA884 3C02FD10 */  lui        $v0, (0xFD100000 >> 16)
    /* 86F488 800BA888 AC620008 */  sw         $v0, 0x8($v1)
    /* 86F48C 800BA88C 24620018 */  addiu      $v0, $v1, 0x18
    /* 86F490 800BA890 00052980 */  sll        $a1, $a1, 6
    /* 86F494 800BA894 00042140 */  sll        $a0, $a0, 5
    /* 86F498 800BA898 008B2021 */  addu       $a0, $a0, $t3
    /* 86F49C 800BA89C 00A42821 */  addu       $a1, $a1, $a0
    /* 86F4A0 800BA8A0 AC65000C */  sw         $a1, 0xC($v1)
    /* 86F4A4 800BA8A4 AEC20000 */  sw         $v0, 0x0($s6)
    /* 86F4A8 800BA8A8 3C02E800 */  lui        $v0, (0xE8000000 >> 16)
    /* 86F4AC 800BA8AC AC620010 */  sw         $v0, 0x10($v1)
    /* 86F4B0 800BA8B0 24620020 */  addiu      $v0, $v1, 0x20
    /* 86F4B4 800BA8B4 AC600014 */  sw         $zero, 0x14($v1)
    /* 86F4B8 800BA8B8 AEC20000 */  sw         $v0, 0x0($s6)
    /* 86F4BC 800BA8BC 3C020700 */  lui        $v0, (0x7000000 >> 16)
    /* 86F4C0 800BA8C0 AC62001C */  sw         $v0, 0x1C($v1)
    /* 86F4C4 800BA8C4 24620028 */  addiu      $v0, $v1, 0x28
    /* 86F4C8 800BA8C8 AC660018 */  sw         $a2, 0x18($v1)
    /* 86F4CC 800BA8CC AEC20000 */  sw         $v0, 0x0($s6)
    /* 86F4D0 800BA8D0 3C02E600 */  lui        $v0, (0xE6000000 >> 16)
    /* 86F4D4 800BA8D4 AC620020 */  sw         $v0, 0x20($v1)
    /* 86F4D8 800BA8D8 24620030 */  addiu      $v0, $v1, 0x30
    /* 86F4DC 800BA8DC AC600024 */  sw         $zero, 0x24($v1)
    /* 86F4E0 800BA8E0 AEC20000 */  sw         $v0, 0x0($s6)
    /* 86F4E4 800BA8E4 3C02F000 */  lui        $v0, (0xF0000000 >> 16)
    /* 86F4E8 800BA8E8 AC620028 */  sw         $v0, 0x28($v1)
    /* 86F4EC 800BA8EC 24620038 */  addiu      $v0, $v1, 0x38
    /* 86F4F0 800BA8F0 AC67002C */  sw         $a3, 0x2C($v1)
    /* 86F4F4 800BA8F4 AEC20000 */  sw         $v0, 0x0($s6)
    /* 86F4F8 800BA8F8 3C02E700 */  lui        $v0, (0xE7000000 >> 16)
    /* 86F4FC 800BA8FC AC620030 */  sw         $v0, 0x30($v1)
    /* 86F500 800BA900 AC600034 */  sw         $zero, 0x34($v1)
    /* 86F504 800BA904 3C048017 */  lui        $a0, %hi(D_80169CAC)
    /* 86F508 800BA908 8C849CAC */  lw         $a0, %lo(D_80169CAC)($a0)
    /* 86F50C 800BA90C 87C204A0 */  lh         $v0, 0x4A0($fp)
    /* 86F510 800BA910 8FA60044 */  lw         $a2, 0x44($sp)
    /* 86F514 800BA914 02002821 */  addu       $a1, $s0, $zero
    /* 86F518 800BA918 240BFFFF */  addiu      $t3, $zero, -0x1
    /* 86F51C 800BA91C AFAB0018 */  sw         $t3, 0x18($sp)
    /* 86F520 800BA920 AFA00010 */  sw         $zero, 0x10($sp)
    /* 86F524 800BA924 AFA00014 */  sw         $zero, 0x14($sp)
    /* 86F528 800BA928 AFAB001C */  sw         $t3, 0x1C($sp)
    /* 86F52C 800BA92C 00021100 */  sll        $v0, $v0, 4
    /* 86F530 800BA930 44822000 */  mtc1       $v0, $ft0
    /* 86F534 800BA934 46802120 */  cvt.s.w    $ft0, $ft0
    /* 86F538 800BA938 44072000 */  mfc1       $a3, $ft0
    /* 86F53C 800BA93C 0C02E757 */  jal        func_800B9D5C
    /* 86F540 800BA940 248401D0 */   addiu     $a0, $a0, 0x1D0
    /* 86F544 800BA944 3C048017 */  lui        $a0, %hi(D_80169CAC)
    /* 86F548 800BA948 8C849CAC */  lw         $a0, %lo(D_80169CAC)($a0)
    /* 86F54C 800BA94C 87C204A0 */  lh         $v0, 0x4A0($fp)
    /* 86F550 800BA950 8FA60044 */  lw         $a2, 0x44($sp)
    /* 86F554 800BA954 240BFFFF */  addiu      $t3, $zero, -0x1
    /* 86F558 800BA958 AFAB0018 */  sw         $t3, 0x18($sp)
    /* 86F55C 800BA95C AFAB001C */  sw         $t3, 0x1C($sp)
    /* 86F560 800BA960 8FAB003C */  lw         $t3, 0x3C($sp)
    /* 86F564 800BA964 02002821 */  addu       $a1, $s0, $zero
    /* 86F568 800BA968 AFA00010 */  sw         $zero, 0x10($sp)
    /* 86F56C 800BA96C AFA00014 */  sw         $zero, 0x14($sp)
    /* 86F570 800BA970 00021100 */  sll        $v0, $v0, 4
    /* 86F574 800BA974 44822000 */  mtc1       $v0, $ft0
    /* 86F578 800BA978 46802120 */  cvt.s.w    $ft0, $ft0
    /* 86F57C 800BA97C 44072000 */  mfc1       $a3, $ft0
    /* 86F580 800BA980 0C02E757 */  jal        func_800B9D5C
    /* 86F584 800BA984 008B2021 */   addu      $a0, $a0, $t3
  .L800BA988:
    /* 86F588 800BA988 8FAB0024 */  lw         $t3, 0x24($sp)
    /* 86F58C 800BA98C 8D62049C */  lw         $v0, 0x49C($t3)
    /* 86F590 800BA990 8FAB0034 */  lw         $t3, 0x34($sp)
    /* 86F594 800BA994 27DE0002 */  addiu      $fp, $fp, 0x2
    /* 86F598 800BA998 26F70012 */  addiu      $s7, $s7, 0x12
    /* 86F59C 800BA99C 256B0001 */  addiu      $t3, $t3, 0x1
    /* 86F5A0 800BA9A0 0162102A */  slt        $v0, $t3, $v0
    /* 86F5A4 800BA9A4 1440FF2B */  bnez       $v0, .L800BA654
    /* 86F5A8 800BA9A8 AFAB0034 */   sw        $t3, 0x34($sp)
  .L800BA9AC:
    /* 86F5AC 800BA9AC 8FBF0074 */  lw         $ra, 0x74($sp)
    /* 86F5B0 800BA9B0 8FBE0070 */  lw         $fp, 0x70($sp)
    /* 86F5B4 800BA9B4 8FB7006C */  lw         $s7, 0x6C($sp)
    /* 86F5B8 800BA9B8 8FB60068 */  lw         $s6, 0x68($sp)
    /* 86F5BC 800BA9BC 8FB50064 */  lw         $s5, 0x64($sp)
    /* 86F5C0 800BA9C0 8FB40060 */  lw         $s4, 0x60($sp)
    /* 86F5C4 800BA9C4 8FB3005C */  lw         $s3, 0x5C($sp)
    /* 86F5C8 800BA9C8 8FB20058 */  lw         $s2, 0x58($sp)
    /* 86F5CC 800BA9CC 8FB10054 */  lw         $s1, 0x54($sp)
    /* 86F5D0 800BA9D0 8FB00050 */  lw         $s0, 0x50($sp)
    /* 86F5D4 800BA9D4 27BD0078 */  addiu      $sp, $sp, 0x78
    /* 86F5D8 800BA9D8 03E00008 */  jr         $ra
    /* 86F5DC 800BA9DC 00000000 */   nop
.size HUD_Turbo_Draw, . - HUD_Turbo_Draw