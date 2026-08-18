#if 1
.include "macro.inc"
#include "macro_float_reg.h"

.set noat
.set noreorder

.section .rodata
dlabel jtbl_8004C6E8
    /* 8012E8 8004C6E8 80071D2C */ .word .L80071D2C
    /* 8012EC 8004C6EC 80071DF8 */ .word .L80071DF8
    /* 8012F0 8004C6F0 80071E2C */ .word .L80071E2C
    /* 8012F4 8004C6F4 80071E3C */ .word .L80071E3C
    /* 8012F8 8004C6F8 80071E3C */ .word .L80071E3C
    /* 8012FC 8004C6FC 80071E3C */ .word .L80071E3C
    /* 801300 8004C700 80071E3C */ .word .L80071E3C
    /* 801304 8004C704 80071E3C */ .word .L80071E3C
    /* 801308 8004C708 80071E3C */ .word .L80071E3C
    /* 80130C 8004C70C 80071E3C */ .word .L80071E3C
    /* 801310 8004C710 80071E70 */ .word .L80071E70
    /* 801314 8004C714 80071E44 */ .word .L80071E44
.size jtbl_8004C6E8, . - jtbl_8004C6E8

.word 0

.section .recomp_patch, "ax"

glabel func_80071C18
    /* 826818 80071C18 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* 82681C 80071C1C AFB00030 */  sw         $s0, 0x30($sp)
    /* 826820 80071C20 00A08021 */  addu       $s0, $a1, $zero
    /* 826824 80071C24 AFB50044 */  sw         $s5, 0x44($sp)
    /* 826828 80071C28 00C0A821 */  addu       $s5, $a2, $zero
    /* 82682C 80071C2C 00102080 */  sll        $a0, $s0, 2
    /* 826830 80071C30 3C038017 */  lui        $v1, %hi(D_8016EEF8)
    /* 826834 80071C34 2463EEF8 */  addiu      $v1, $v1, %lo(D_8016EEF8)
    /* 826838 80071C38 24620010 */  addiu      $v0, $v1, 0x10
    /* 82683C 80071C3C 00821021 */  addu       $v0, $a0, $v0
    /* 826840 80071C40 AFBF0054 */  sw         $ra, 0x54($sp)
    /* 826844 80071C44 AFBE0050 */  sw         $fp, 0x50($sp)
    /* 826848 80071C48 AFB7004C */  sw         $s7, 0x4C($sp)
    /* 82684C 80071C4C AFB60048 */  sw         $s6, 0x48($sp)
    /* 826850 80071C50 AFB40040 */  sw         $s4, 0x40($sp)
    /* 826854 80071C54 AFB3003C */  sw         $s3, 0x3C($sp)
    /* 826858 80071C58 AFB20038 */  sw         $s2, 0x38($sp)
    /* 82685C 80071C5C AFB10034 */  sw         $s1, 0x34($sp)
    /* 826860 80071C60 3C018017 */  lui        $at, %hi(D_8016EEF8)
    /* 826864 80071C64 00240821 */  addu       $at, $at, $a0
    /* 826868 80071C68 AC20EEF8 */  sw         $zero, %lo(D_8016EEF8)($at)
    /* 82686C 80071C6C AC400000 */  sw         $zero, 0x0($v0)
    /* 826870 80071C70 24620020 */  addiu      $v0, $v1, 0x20
    /* 826874 80071C74 00821021 */  addu       $v0, $a0, $v0
    /* 826878 80071C78 AC400000 */  sw         $zero, 0x0($v0)
    /* 82687C 80071C7C 24620030 */  addiu      $v0, $v1, 0x30
    /* 826880 80071C80 00821021 */  addu       $v0, $a0, $v0
    /* 826884 80071C84 AC400000 */  sw         $zero, 0x0($v0)
    /* 826888 80071C88 24620040 */  addiu      $v0, $v1, 0x40
    /* 82688C 80071C8C 00821021 */  addu       $v0, $a0, $v0
    /* 826890 80071C90 AC400000 */  sw         $zero, 0x0($v0)
    /* 826894 80071C94 00101040 */  sll        $v0, $s0, 1
    /* 826898 80071C98 00501021 */  addu       $v0, $v0, $s0
    /* 82689C 80071C9C 00021080 */  sll        $v0, $v0, 2
    /* 8268A0 80071CA0 00501021 */  addu       $v0, $v0, $s0
    /* 8268A4 80071CA4 0002B8C0 */  sll        $s7, $v0, 3
    /* 8268A8 80071CA8 3C088017 */  lui        $t0, %hi(D_8016EEE8)
    /* 8268AC 80071CAC 2508EEE8 */  addiu      $t0, $t0, %lo(D_8016EEE8)
    /* 8268B0 80071CB0 00889021 */  addu       $s2, $a0, $t0
    /* 8268B4 80071CB4 24140003 */  addiu      $s4, $zero, 0x3
    /* 8268B8 80071CB8 24130002 */  addiu      $s3, $zero, 0x2
    /* 8268BC 80071CBC 241E0001 */  addiu      $fp, $zero, 0x1
    /* 8268C0 80071CC0 3C088017 */  lui        $t0, %hi(gControllerPakFile)
    /* 8268C4 80071CC4 2508ED48 */  addiu      $t0, $t0, %lo(gControllerPakFile)
    /* 8268C8 80071CC8 0801C73A */  j          .L80071CE8
    /* 8268CC 80071CCC 02E8B021 */   addu      $s6, $s7, $t0
  .L80071CD0:
    /* 8268D0 80071CD0 3C028009 */  lui        $v0, %hi(D_800961A3)
    /* 8268D4 80071CD4 244261A3 */  addiu      $v0, $v0, %lo(D_800961A3)
  .L80071CD8:
    /* 8268D8 80071CD8 A0400000 */  sb         $zero, 0x0($v0)
    /* 8268DC 80071CDC 2463FFFF */  addiu      $v1, $v1, -0x1
    /* 8268E0 80071CE0 0461FFFD */  bgez       $v1, .L80071CD8
    /* 8268E4 80071CE4 2442FFFF */   addiu     $v0, $v0, -0x1
  .L80071CE8:
    /* 8268E8 80071CE8 24110001 */  addiu      $s1, $zero, 0x1
    /* 8268EC 80071CEC 3C048017 */  lui        $a0, %hi(gSerialEventQueue)
    /* 8268F0 80071CF0 24849CB0 */  addiu      $a0, $a0, %lo(gSerialEventQueue)
    /* 8268F4 80071CF4 3C088017 */  lui        $t0, %hi(gControllerPakFile)
    /* 8268F8 80071CF8 2508ED48 */  addiu      $t0, $t0, %lo(gControllerPakFile)
    /* 8268FC 80071CFC 02E82821 */  addu       $a1, $s7, $t0
    /* 826900 80071D00 0C023AB0 */  jal        osPfsInitPak
    /* 826904 80071D04 02003021 */   addu      $a2, $s0, $zero
    /* 826908 80071D08 00401821 */  addu       $v1, $v0, $zero
    /* 82690C 80071D0C 2C62000C */  sltiu      $v0, $v1, 0xC
    /* 826910 80071D10 1040004A */  beqz       $v0, .L80071E3C
    /* 826914 80071D14 00031080 */   sll       $v0, $v1, 2
    /* 826918 80071D18 3C018005 */  lui        $at, %hi(jtbl_8004C6E8)
    /* 82691C 80071D1C 00220821 */  addu       $at, $at, $v0
    /* 826920 80071D20 8C22C6E8 */  lw         $v0, %lo(jtbl_8004C6E8)($at)
    /* 826924 80071D24 00400008 */  jr         $v0
    /* 826928 80071D28 00000000 */   nop
  jlabel .L80071D2C
    /* 82692C 80071D2C 0C01C64A */  jal        func_80071928
    /* 826930 80071D30 02002021 */   addu      $a0, $s0, $zero
    /* 826934 80071D34 1440000D */  bnez       $v0, .L80071D6C
    /* 826938 80071D38 24040016 */   addiu     $a0, $zero, 0x16
    /* 82693C 80071D3C 02002821 */  addu       $a1, $s0, $zero
    /* 826940 80071D40 24060024 */  addiu      $a2, $zero, 0x24
    /* 826944 80071D44 24070076 */  addiu      $a3, $zero, 0x76
    /* 826948 80071D48 AE540000 */  sw         $s4, 0x0($s2)
    /* 82694C 80071D4C AFA00010 */  sw         $zero, 0x10($sp)
    /* 826950 80071D50 AFA00014 */  sw         $zero, 0x14($sp)
    /* 826954 80071D54 0C01C512 */  jal        func_80071448
    /* 826958 80071D58 AFA00018 */   sw        $zero, 0x18($sp)
    /* 82695C 80071D5C 50400073 */  beql       $v0, $zero, .L80071F2C
    /* 826960 80071D60 00008821 */   addu      $s1, $zero, $zero
    /* 826964 80071D64 0801C7C2 */  j          .L80071F08
    /* 826968 80071D68 00000000 */   nop
  .L80071D6C:
    /* 82696C 80071D6C 8E420000 */  lw         $v0, 0x0($s2)
    /* 826970 80071D70 0002182B */  sltu       $v1, $zero, $v0
    /* 826974 80071D74 38420004 */  xori       $v0, $v0, 0x4
    /* 826978 80071D78 0002102B */  sltu       $v0, $zero, $v0
    /* 82697C 80071D7C 00621824 */  and        $v1, $v1, $v0
    /* 826980 80071D80 50600019 */  beql       $v1, $zero, .L80071DE8
    /* 826984 80071D84 AE530000 */   sw        $s3, 0x0($s2)
    /* 826988 80071D88 1A00000E */  blez       $s0, .L80071DC4
    /* 82698C 80071D8C 00002021 */   addu      $a0, $zero, $zero
    /* 826990 80071D90 3C058017 */  lui        $a1, %hi(D_8016EEE8)
    /* 826994 80071D94 24A5EEE8 */  addiu      $a1, $a1, %lo(D_8016EEE8)
  .L80071D98:
    /* 826998 80071D98 8CA20000 */  lw         $v0, 0x0($a1)
    /* 82699C 80071D9C 38430002 */  xori       $v1, $v0, 0x2
    /* 8269A0 80071DA0 2C630001 */  sltiu      $v1, $v1, 0x1
    /* 8269A4 80071DA4 38420004 */  xori       $v0, $v0, 0x4
    /* 8269A8 80071DA8 2C420001 */  sltiu      $v0, $v0, 0x1
    /* 8269AC 80071DAC 00621825 */  or         $v1, $v1, $v0
    /* 8269B0 80071DB0 1460000C */  bnez       $v1, .L80071DE4
    /* 8269B4 80071DB4 24840001 */   addiu     $a0, $a0, 0x1
    /* 8269B8 80071DB8 0090102A */  slt        $v0, $a0, $s0
    /* 8269BC 80071DBC 1440FFF6 */  bnez       $v0, .L80071D98
    /* 8269C0 80071DC0 24A50004 */   addiu     $a1, $a1, 0x4
  .L80071DC4:
    /* 8269C4 80071DC4 24040017 */  addiu      $a0, $zero, 0x17
    /* 8269C8 80071DC8 02002821 */  addu       $a1, $s0, $zero
    /* 8269CC 80071DCC 00003021 */  addu       $a2, $zero, $zero
    /* 8269D0 80071DD0 00003821 */  addu       $a3, $zero, $zero
    /* 8269D4 80071DD4 AFA00010 */  sw         $zero, 0x10($sp)
    /* 8269D8 80071DD8 AFA00014 */  sw         $zero, 0x14($sp)
    /* 8269DC 80071DDC 0C01C512 */  jal        func_80071448
    /* 8269E0 80071DE0 AFA00018 */   sw        $zero, 0x18($sp)
  .L80071DE4:
    /* 8269E4 80071DE4 AE530000 */  sw         $s3, 0x0($s2)
  .L80071DE8:
    /* 8269E8 80071DE8 3C018017 */  lui        $at, %hi(D_8016ED34)
    /* 8269EC 80071DEC AC3EED34 */  sw         $fp, %lo(D_8016ED34)($at)
    /* 8269F0 80071DF0 0801C7CB */  j          .L80071F2C
    /* 8269F4 80071DF4 00000000 */   nop
  jlabel .L80071DF8
    /* 8269F8 80071DF8 2404001C */  addiu      $a0, $zero, 0x1C
    /* 8269FC 80071DFC 02002821 */  addu       $a1, $s0, $zero
    /* 826A00 80071E00 24060024 */  addiu      $a2, $zero, 0x24
    /* 826A04 80071E04 2407000B */  addiu      $a3, $zero, 0xB
    /* 826A08 80071E08 AE5E0000 */  sw         $fp, 0x0($s2)
    /* 826A0C 80071E0C AFA00010 */  sw         $zero, 0x10($sp)
    /* 826A10 80071E10 AFA00014 */  sw         $zero, 0x14($sp)
    /* 826A14 80071E14 0C01C512 */  jal        func_80071448
    /* 826A18 80071E18 AFA00018 */   sw        $zero, 0x18($sp)
    /* 826A1C 80071E1C 0002102B */  sltu       $v0, $zero, $v0
    /* 826A20 80071E20 00021023 */  negu       $v0, $v0
    /* 826A24 80071E24 0801C7CB */  j          .L80071F2C
    /* 826A28 80071E28 02228824 */   and       $s1, $s1, $v0
  jlabel .L80071E2C
    /* 826A2C 80071E2C 24020006 */  addiu      $v0, $zero, 0x6
    /* 826A30 80071E30 AE420000 */  sw         $v0, 0x0($s2)
  .L80071E34:
    /* 826A34 80071E34 0801C7CB */  j          .L80071F2C
    /* 826A38 80071E38 00008821 */   addu      $s1, $zero, $zero
  jlabel .L80071E3C
    /* 826A3C 80071E3C 0801C792 */  j          .L80071E48
    /* 826A40 80071E40 24040014 */   addiu     $a0, $zero, 0x14
  jlabel .L80071E44
    /* 826A44 80071E44 24040015 */  addiu      $a0, $zero, 0x15
  .L80071E48:
    /* 826A48 80071E48 02002821 */  addu       $a1, $s0, $zero
    /* 826A4C 80071E4C 00003021 */  addu       $a2, $zero, $zero
    /* 826A50 80071E50 00003821 */  addu       $a3, $zero, $zero
    /* 826A54 80071E54 AE540000 */  sw         $s4, 0x0($s2)
    /* 826A58 80071E58 AFA00010 */  sw         $zero, 0x10($sp)
    /* 826A5C 80071E5C AFA00014 */  sw         $zero, 0x14($sp)
    /* 826A60 80071E60 0C01C512 */  jal        func_80071448
    /* 826A64 80071E64 AFA00018 */   sw        $zero, 0x18($sp)
    /* 826A68 80071E68 0801C7CB */  j          .L80071F2C
    /* 826A6C 80071E6C 00008821 */   addu      $s1, $zero, $zero
  jlabel .L80071E70
    /* 826A70 80071E70 3C048017 */  lui        $a0, %hi(gSerialEventQueue)
    /* 826A74 80071E74 24849CB0 */  addiu      $a0, $a0, %lo(gSerialEventQueue)
    /* 826A78 80071E78 02C02821 */  addu       $a1, $s6, $zero
    /* 826A7C 80071E7C 0C023FD4 */  jal        osMotorInit_recomp
    /* 826A80 80071E80 02003021 */   addu      $a2, $s0, $zero
    /* 826A84 80071E84 1440000F */  bnez       $v0, .L80071EC4
    /* 826A88 80071E88 24040016 */   addiu     $a0, $zero, 0x16
    /* 826A8C 80071E8C 16B3000B */  bne        $s5, $s3, .L80071EBC
    /* 826A90 80071E90 24020005 */   addiu     $v0, $zero, 0x5
    /* 826A94 80071E94 24040015 */  addiu      $a0, $zero, 0x15
    /* 826A98 80071E98 02002821 */  addu       $a1, $s0, $zero
    /* 826A9C 80071E9C 24060024 */  addiu      $a2, $zero, 0x24
    /* 826AA0 80071EA0 2407000B */  addiu      $a3, $zero, 0xB
    /* 826AA4 80071EA4 AFA00010 */  sw         $zero, 0x10($sp)
    /* 826AA8 80071EA8 AFA00014 */  sw         $zero, 0x14($sp)
    /* 826AAC 80071EAC 0C01C512 */  jal        func_80071448
    /* 826AB0 80071EB0 AFA00018 */   sw        $zero, 0x18($sp)
    /* 826AB4 80071EB4 1040FFDF */  beqz       $v0, .L80071E34
    /* 826AB8 80071EB8 24020005 */   addiu     $v0, $zero, 0x5
  .L80071EBC:
    /* 826ABC 80071EBC 0801C7CD */  j          .L80071F34
    /* 826AC0 80071EC0 AE420000 */   sw        $v0, 0x0($s2)
  .L80071EC4:
    /* 826AC4 80071EC4 02002821 */  addu       $a1, $s0, $zero
    /* 826AC8 80071EC8 24060024 */  addiu      $a2, $zero, 0x24
    /* 826ACC 80071ECC 24070023 */  addiu      $a3, $zero, 0x23
    /* 826AD0 80071ED0 24020076 */  addiu      $v0, $zero, 0x76
    /* 826AD4 80071ED4 AE540000 */  sw         $s4, 0x0($s2)
    /* 826AD8 80071ED8 AFA20010 */  sw         $v0, 0x10($sp)
    /* 826ADC 80071EDC AFA00014 */  sw         $zero, 0x14($sp)
    /* 826AE0 80071EE0 0C01C512 */  jal        func_80071448
    /* 826AE4 80071EE4 AFA00018 */   sw        $zero, 0x18($sp)
    /* 826AE8 80071EE8 50400010 */  beql       $v0, $zero, .L80071F2C
    /* 826AEC 80071EEC 00008821 */   addu      $s1, $zero, $zero
    /* 826AF0 80071EF0 145E0005 */  bne        $v0, $fp, .L80071F08
    /* 826AF4 80071EF4 00000000 */   nop
    nop // /* 826AF8 80071EF8 0C023DE4 */  jal        osPfsRepairId
    nop // /* 826AFC 80071EFC 02C02021 */   addu      $a0, $s6, $zero
    /* 826B00 80071F00 0801C7CB */  j          .L80071F2C
    /* 826B04 80071F04 00008821 */   addu      $s1, $zero, $zero
  .L80071F08:
    /* 826B08 80071F08 12B30008 */  beq        $s5, $s3, .L80071F2C
    /* 826B0C 80071F0C 24040028 */   addiu     $a0, $zero, 0x28
    /* 826B10 80071F10 02002821 */  addu       $a1, $s0, $zero
    /* 826B14 80071F14 00003021 */  addu       $a2, $zero, $zero
    /* 826B18 80071F18 00003821 */  addu       $a3, $zero, $zero
    /* 826B1C 80071F1C AFA00010 */  sw         $zero, 0x10($sp)
    /* 826B20 80071F20 AFA00014 */  sw         $zero, 0x14($sp)
    /* 826B24 80071F24 0C01C512 */  jal        func_80071448
    /* 826B28 80071F28 AFA00018 */   sw        $zero, 0x18($sp)
  .L80071F2C:
    /* 826B2C 80071F2C 1220FF68 */  beqz       $s1, .L80071CD0
    /* 826B30 80071F30 24030003 */   addiu     $v1, $zero, 0x3
  .L80071F34:
    /* 826B34 80071F34 8FBF0054 */  lw         $ra, 0x54($sp)
    /* 826B38 80071F38 8FBE0050 */  lw         $fp, 0x50($sp)
    /* 826B3C 80071F3C 8FB7004C */  lw         $s7, 0x4C($sp)
    /* 826B40 80071F40 8FB60048 */  lw         $s6, 0x48($sp)
    /* 826B44 80071F44 8FB50044 */  lw         $s5, 0x44($sp)
    /* 826B48 80071F48 8FB40040 */  lw         $s4, 0x40($sp)
    /* 826B4C 80071F4C 8FB3003C */  lw         $s3, 0x3C($sp)
    /* 826B50 80071F50 8FB20038 */  lw         $s2, 0x38($sp)
    /* 826B54 80071F54 8FB10034 */  lw         $s1, 0x34($sp)
    /* 826B58 80071F58 8FB00030 */  lw         $s0, 0x30($sp)
    /* 826B5C 80071F5C 27BD0058 */  addiu      $sp, $sp, 0x58

    // @recomp: rumble init routine
    jal Hook_Rumble_Init
    nop

    /* 826B60 80071F60 03E00008 */  jr         $ra
    /* 826B64 80071F64 00000000 */   nop
.size func_80071C18, . - func_80071C18

glabel func_80074C44
    /* 829844 80074C44 27BDFFA0 */  addiu      $sp, $sp, -0x60
    /* 829848 80074C48 AFA40014 */  sw         $a0, 0x14($sp)
    /* 82984C 80074C4C 24040005 */  addiu      $a0, $zero, 0x5
    /* 829850 80074C50 3C058017 */  lui        $a1, %hi(gSerialEventQueue)
    /* 829854 80074C54 24A59CB0 */  addiu      $a1, $a1, %lo(gSerialEventQueue)
    /* 829858 80074C58 3C068017 */  lui        $a2, %hi(D_80175D48)
    /* 82985C 80074C5C 24C65D48 */  addiu      $a2, $a2, %lo(D_80175D48)
    /* 829860 80074C60 AFBF005C */  sw         $ra, 0x5C($sp)
    /* 829864 80074C64 AFBE0058 */  sw         $fp, 0x58($sp)
    /* 829868 80074C68 AFB70054 */  sw         $s7, 0x54($sp)
    /* 82986C 80074C6C AFB60050 */  sw         $s6, 0x50($sp)
    /* 829870 80074C70 AFB5004C */  sw         $s5, 0x4C($sp)
    /* 829874 80074C74 AFB40048 */  sw         $s4, 0x48($sp)
    /* 829878 80074C78 AFB30044 */  sw         $s3, 0x44($sp)
    /* 82987C 80074C7C AFB20040 */  sw         $s2, 0x40($sp)
    /* 829880 80074C80 AFB1003C */  sw         $s1, 0x3C($sp)
    /* 829884 80074C84 AFB00038 */  sw         $s0, 0x38($sp)
    /* 829888 80074C88 0C01FDF8 */  jal        osSetEventMesg_recomp
    /* 82988C 80074C8C AFA0001C */   sw        $zero, 0x1C($sp)
    /* 829890 80074C90 8FA70014 */  lw         $a3, 0x14($sp)
    /* 829894 80074C94 10E00003 */  beqz       $a3, .L80074CA4
    /* 829898 80074C98 24020001 */   addiu     $v0, $zero, 0x1
    /* 82989C 80074C9C 3C018009 */  lui        $at, %hi(D_80097AA4)
    /* 8298A0 80074CA0 AC227AA4 */  sw         $v0, %lo(D_80097AA4)($at)
  .L80074CA4:
    /* 8298A4 80074CA4 0000B021 */  addu       $s6, $zero, $zero
    /* 8298A8 80074CA8 241E0001 */  addiu      $fp, $zero, 0x1

    // @recomp: use gControllerMotor pak handle for rumble pak
    /* 8298AC 80074CAC 3C158017 */  lui        $s5, %hi(gControllerMotor)
    /* 8298B0 80074CB0 26B5ED48 */  addiu      $s5, $s5, %lo(gControllerMotor)
    /* 8298B4 80074CB4 3C078017 */  lui        $a3, %hi(D_8016EEE8)
    /* 8298B8 80074CB8 24E7EEE8 */  addiu      $a3, $a3, %lo(D_8016EEE8)
    /* 8298BC 80074CBC 24F20020 */  addiu      $s2, $a3, 0x20
    /* 8298C0 80074CC0 00009821 */  addu       $s3, $zero, $zero
    /* 8298C4 80074CC4 24F40030 */  addiu      $s4, $a3, 0x30
    /* 8298C8 80074CC8 24F70050 */  addiu      $s7, $a3, 0x50
    /* 8298CC 80074CCC 3C078017 */  lui        $a3, %hi(D_8016EEF8)
    /* 8298D0 80074CD0 24E7EEF8 */  addiu      $a3, $a3, %lo(D_8016EEF8)
    /* 8298D4 80074CD4 AFA7002C */  sw         $a3, 0x2C($sp)
    /* 8298D8 80074CD8 3C078017 */  lui        $a3, %hi(D_8016EEE8)
    /* 8298DC 80074CDC 24E7EEE8 */  addiu      $a3, $a3, %lo(D_8016EEE8)
    /* 8298E0 80074CE0 AFA00024 */  sw         $zero, 0x24($sp)
    /* 8298E4 80074CE4 AFA70034 */  sw         $a3, 0x34($sp)
  .L80074CE8:
    /* 8298E8 80074CE8 8FA70034 */  lw         $a3, 0x34($sp)
    nop // /* 8298EC 80074CEC 8CE30000 */  lw         $v1, 0x0($a3)
    nop // /* 8298F0 80074CF0 24020005 */  addiu      $v0, $zero, 0x5
    nop // /* 8298F4 80074CF4 54620096 */  bnel       $v1, $v0, .L80074F50 // if (*sp34 == 5) {
    nop // /* 8298F8 80074CF8 26B50068 */   addiu     $s5, $s5, 0x68
    /* 8298FC 80074CFC 3C028009 */  lui        $v0, %hi(D_80097AA4)
    /* 829900 80074D00 8C427AA4 */  lw         $v0, %lo(D_80097AA4)($v0)
    /* 829904 80074D04 1040001B */  j .L80074D74 // if (gRumblePakNeedsInit != 0) {
    /* 829908 80074D08 00000000 */   nop
    /* 82990C 80074D0C 3C028009 */  lui        $v0, %hi(D_80097AA8)
    /* 829910 80074D10 8C427AA8 */  lw         $v0, %lo(D_80097AA8)($v0)
    /* 829914 80074D14 1440000C */  bnez       $v0, .L80074D48
    /* 829918 80074D18 00008021 */   addu      $s0, $zero, $zero
    /* 82991C 80074D1C 3C048017 */  lui        $a0, %hi(gSerialEventQueue)
    /* 829920 80074D20 24849CB0 */  addiu      $a0, $a0, %lo(gSerialEventQueue)
    /* 829924 80074D24 02A02821 */  addu       $a1, $s5, $zero
    /* 829928 80074D28 0C023FD4 */  jal        osMotorInit_recomp
    /* 82992C 80074D2C 02C03021 */   addu      $a2, $s6, $zero
    /* 829930 80074D30 54400002 */  bnel       $v0, $zero, .L80074D3C
    /* 829934 80074D34 AE5E0000 */   sw        $fp, 0x0($s2)
    /* 829938 80074D38 AE400000 */  sw         $zero, 0x0($s2)
  .L80074D3C:
    /* 82993C 80074D3C 8FA7002C */  lw         $a3, 0x2C($sp)
    /* 829940 80074D40 ACFE0000 */  sw         $fp, 0x0($a3)
    /* 829944 80074D44 00008021 */  addu       $s0, $zero, $zero
  .L80074D48:
    /* 829948 80074D48 8FB10024 */  lw         $s1, 0x24($sp)
  .L80074D4C:

    // @recomp: use gControllerMotor pak handle for rumble pak
    /* 82994C 80074D4C 3C078017 */  lui        $a3, %hi(gControllerMotor)
    /* 829950 80074D50 24E7ED48 */  addiu      $a3, $a3, %lo(gControllerMotor)
    /* 829954 80074D54 0C023EC0 */  jal        osMotorStop_recomp
    /* 829958 80074D58 02272021 */   addu      $a0, $s1, $a3
    /* 82995C 80074D5C 26100001 */  addiu      $s0, $s0, 0x1
    /* 829960 80074D60 2A020003 */  slti       $v0, $s0, 0x3
    /* 829964 80074D64 1440FFF9 */  bnez       $v0, .L80074D4C
    /* 829968 80074D68 00000000 */   nop
    /* 82996C 80074D6C 0801D3D4 */  j          .L80074F50
    /* 829970 80074D70 26B50068 */   addiu     $s5, $s5, 0x68
  .L80074D74:
    /* 829974 80074D74 8E840000 */  lw         $a0, 0x0($s4)
    /* 829978 80074D78 8FA70014 */  lw         $a3, 0x14($sp)
    /* 82997C 80074D7C 0004102A */  slt        $v0, $zero, $a0
    /* 829980 80074D80 2CE30001 */  sltiu      $v1, $a3, 0x1
    /* 829984 80074D84 00431024 */  and        $v0, $v0, $v1
    /* 829988 80074D88 50400023 */  beql       $v0, $zero, .L80074E18
    /* 82998C 80074D8C 00001821 */   addu      $v1, $zero, $zero
    /* 829990 80074D90 3C028017 */  lui        $v0, %hi(D_801771A0)
    /* 829994 80074D94 8C4271A0 */  lw         $v0, %lo(D_801771A0)($v0)
    /* 829998 80074D98 5440001F */  bnel       $v0, $zero, .L80074E18
    /* 82999C 80074D9C 00001821 */   addu      $v1, $zero, $zero
    /* 8299A0 80074DA0 3C078017 */  lui        $a3, %hi(D_8016EEE8)
    /* 8299A4 80074DA4 24E7EEE8 */  addiu      $a3, $a3, %lo(D_8016EEE8)
    /* 8299A8 80074DA8 24E20040 */  addiu      $v0, $a3, 0x40
    /* 8299AC 80074DAC 02628021 */  addu       $s0, $s3, $v0
    /* 8299B0 80074DB0 8E020000 */  lw         $v0, 0x0($s0)
    /* 8299B4 80074DB4 18400006 */  blez       $v0, .L80074DD0
    /* 8299B8 80074DB8 00000000 */   nop
    /* 8299BC 80074DBC 0C0176A4 */  jal        func_8005DA90
    /* 8299C0 80074DC0 00000000 */   nop
    /* 8299C4 80074DC4 8E030000 */  lw         $v1, 0x0($s0)
    /* 8299C8 80074DC8 0801D37D */  j          .L80074DF4
    /* 8299CC 80074DCC 00000000 */   nop
  .L80074DD0:
    /* 8299D0 80074DD0 8EE20000 */  lw         $v0, 0x0($s7)
    /* 8299D4 80074DD4 0082102A */  slt        $v0, $a0, $v0
    /* 8299D8 80074DD8 5040000C */  beql       $v0, $zero, .L80074E0C
    /* 8299DC 80074DDC 24030001 */   addiu     $v1, $zero, 0x1
    /* 8299E0 80074DE0 0C0176A4 */  jal        func_8005DA90
    /* 8299E4 80074DE4 00000000 */   nop
    /* 8299E8 80074DE8 8EE30000 */  lw         $v1, 0x0($s7)
    /* 8299EC 80074DEC 8E840000 */  lw         $a0, 0x0($s4)
    /* 8299F0 80074DF0 00641823 */  subu       $v1, $v1, $a0
  .L80074DF4:
    /* 8299F4 80074DF4 0043001B */  divu       $zero, $v0, $v1
    /* 8299F8 80074DF8 14600002 */  bnez       $v1, .L80074E04
    /* 8299FC 80074DFC 00000000 */   nop
    /* 829A00 80074E00 0007000D */  break      7
  .L80074E04:
    /* 829A04 80074E04 00001810 */  mfhi       $v1
    /* 829A08 80074E08 2C630001 */  sltiu      $v1, $v1, 0x1
  .L80074E0C:
    /* 829A0C 80074E0C 8E820000 */  lw         $v0, 0x0($s4)
    /* 829A10 80074E10 2442FFFF */  addiu      $v0, $v0, -0x1
    /* 829A14 80074E14 AE820000 */  sw         $v0, 0x0($s4)
  .L80074E18:
    /* 829A18 80074E18 8E420000 */  lw         $v0, 0x0($s2)
    /* 829A1C 80074E1C 10400032 */  beqz       $v0, .L80074EE8
    /* 829A20 80074E20 00000000 */   nop
    /* 829A24 80074E24 3C028009 */  lui        $v0, %hi(D_80097AA0)
    /* 829A28 80074E28 8C427AA0 */  lw         $v0, %lo(D_80097AA0)($v0)
    /* 829A2C 80074E2C 2842003C */  slti       $v0, $v0, 0x3C
    /* 829A30 80074E30 54400047 */  bnel       $v0, $zero, .L80074F50
    /* 829A34 80074E34 26B50068 */   addiu     $s5, $s5, 0x68
    /* 829A38 80074E38 8FA7001C */  lw         $a3, 0x1C($sp)
    /* 829A3C 80074E3C 14E00017 */  bnez       $a3, .L80074E9C
    /* 829A40 80074E40 00000000 */   nop
    /* 829A44 80074E44 3C048018 */  lui        $a0, %hi(D_80186028)
    /* 829A48 80074E48 24846028 */  addiu      $a0, $a0, %lo(D_80186028)
    /* 829A4C 80074E4C 0C01F91C */  jal        osWritebackDCache_recomp
    /* 829A50 80074E50 24050010 */   addiu     $a1, $zero, 0x10
    /* 829A54 80074E54 3C108017 */  lui        $s0, %hi(gSerialEventQueue)
    /* 829A58 80074E58 26109CB0 */  addiu      $s0, $s0, %lo(gSerialEventQueue)
    /* 829A5C 80074E5C 0C022904 */  jal        osContStartQuery_recomp
    /* 829A60 80074E60 02002021 */   addu      $a0, $s0, $zero
    /* 829A64 80074E64 02002021 */  addu       $a0, $s0, $zero
    /* 829A68 80074E68 00002821 */  addu       $a1, $zero, $zero
    /* 829A6C 80074E6C 0C01FD54 */  jal        osRecvMesg_recomp
    /* 829A70 80074E70 24060001 */   addiu     $a2, $zero, 0x1
    /* 829A74 80074E74 3C048018 */  lui        $a0, %hi(D_80186028)
    /* 829A78 80074E78 24846028 */  addiu      $a0, $a0, %lo(D_80186028)
    /* 829A7C 80074E7C 0C022925 */  jal        osContGetQuery_recomp
    /* 829A80 80074E80 00000000 */   nop
    /* 829A84 80074E84 3C048018 */  lui        $a0, %hi(D_80186028)
    /* 829A88 80074E88 24846028 */  addiu      $a0, $a0, %lo(D_80186028)
    /* 829A8C 80074E8C 0C01F8B8 */  jal        osInvalDCache_recomp
    /* 829A90 80074E90 24050010 */   addiu     $a1, $zero, 0x10
    /* 829A94 80074E94 24070001 */  addiu      $a3, $zero, 0x1
    /* 829A98 80074E98 AFA7001C */  sw         $a3, 0x1C($sp)
  .L80074E9C:
    /* 829A9C 80074E9C 3C078018 */  lui        $a3, %hi(D_80186028)
    /* 829AA0 80074EA0 24E76028 */  addiu      $a3, $a3, %lo(D_80186028)
    /* 829AA4 80074EA4 02671021 */  addu       $v0, $s3, $a3
    /* 829AA8 80074EA8 90420002 */  lbu        $v0, 0x2($v0)
    /* 829AAC 80074EAC 30420001 */  andi       $v0, $v0, 0x1
    /* 829AB0 80074EB0 10400026 */  beqz       $v0, .L80074F4C
    /* 829AB4 80074EB4 02A02821 */   addu      $a1, $s5, $zero
    /* 829AB8 80074EB8 3C048017 */  lui        $a0, %hi(gSerialEventQueue)
    /* 829ABC 80074EBC 24849CB0 */  addiu      $a0, $a0, %lo(gSerialEventQueue)
    /* 829AC0 80074EC0 0C023FD4 */  jal        osMotorInit_recomp
    /* 829AC4 80074EC4 02C03021 */   addu      $a2, $s6, $zero
    /* 829AC8 80074EC8 54400021 */  bnel       $v0, $zero, .L80074F50
    /* 829ACC 80074ECC 26B50068 */   addiu     $s5, $s5, 0x68
    /* 829AD0 80074ED0 3C078017 */  lui        $a3, %hi(D_8016EEF8)
    /* 829AD4 80074ED4 24E7EEF8 */  addiu      $a3, $a3, %lo(D_8016EEF8)
    /* 829AD8 80074ED8 02671021 */  addu       $v0, $s3, $a3
    /* 829ADC 80074EDC AE400000 */  sw         $zero, 0x0($s2)
    /* 829AE0 80074EE0 0801D3D3 */  j          .L80074F4C
    /* 829AE4 80074EE4 AC5E0000 */   sw        $fp, 0x0($v0)
  .L80074EE8:
    /* 829AE8 80074EE8 1060000D */  beqz       $v1, .L80074F20
    /* 829AEC 80074EEC 00000000 */   nop
    /* 829AF0 80074EF0 3C078017 */  lui        $a3, %hi(D_8016EEF8)
    /* 829AF4 80074EF4 24E7EEF8 */  addiu      $a3, $a3, %lo(D_8016EEF8)
    /* 829AF8 80074EF8 02678021 */  addu       $s0, $s3, $a3
    /* 829AFC 80074EFC 8E020000 */  lw         $v0, 0x0($s0)
    /* 829B00 80074F00 54400013 */  bnel       $v0, $zero, .L80074F50
    /* 829B04 80074F04 26B50068 */   addiu     $s5, $s5, 0x68
    /* 829B08 80074F08 0C023F1A */  jal        osMotorStart_recomp
    /* 829B0C 80074F0C 02A02021 */   addu      $a0, $s5, $zero
    /* 829B10 80074F10 54400001 */  bnel       $v0, $zero, .L80074F18
    /* 829B14 80074F14 AE5E0000 */   sw        $fp, 0x0($s2)
  .L80074F18:
    /* 829B18 80074F18 0801D3D3 */  j          .L80074F4C
    /* 829B1C 80074F1C AE1E0000 */   sw        $fp, 0x0($s0)
  .L80074F20:
    /* 829B20 80074F20 3C078017 */  lui        $a3, %hi(D_8016EEF8)
    /* 829B24 80074F24 24E7EEF8 */  addiu      $a3, $a3, %lo(D_8016EEF8)
    /* 829B28 80074F28 02678021 */  addu       $s0, $s3, $a3
    /* 829B2C 80074F2C 8E020000 */  lw         $v0, 0x0($s0)
    /* 829B30 80074F30 50400007 */  beql       $v0, $zero, .L80074F50
    /* 829B34 80074F34 26B50068 */   addiu     $s5, $s5, 0x68
    /* 829B38 80074F38 0C023EC0 */  jal        osMotorStop_recomp
    /* 829B3C 80074F3C 02A02021 */   addu      $a0, $s5, $zero
    /* 829B40 80074F40 54400002 */  bnel       $v0, $zero, .L80074F4C
    /* 829B44 80074F44 AE5E0000 */   sw        $fp, 0x0($s2)
    /* 829B48 80074F48 AE000000 */  sw         $zero, 0x0($s0)
  .L80074F4C:
    /* 829B4C 80074F4C 26B50068 */  addiu      $s5, $s5, 0x68
  .L80074F50:
    /* 829B50 80074F50 8FA70024 */  lw         $a3, 0x24($sp)
    /* 829B54 80074F54 26520004 */  addiu      $s2, $s2, 0x4
    /* 829B58 80074F58 26730004 */  addiu      $s3, $s3, 0x4
    /* 829B5C 80074F5C 24E70068 */  addiu      $a3, $a3, 0x68
    /* 829B60 80074F60 AFA70024 */  sw         $a3, 0x24($sp)
    /* 829B64 80074F64 8FA7002C */  lw         $a3, 0x2C($sp)
    /* 829B68 80074F68 26940004 */  addiu      $s4, $s4, 0x4
    /* 829B6C 80074F6C 26F70004 */  addiu      $s7, $s7, 0x4
    /* 829B70 80074F70 24E70004 */  addiu      $a3, $a3, 0x4
    /* 829B74 80074F74 AFA7002C */  sw         $a3, 0x2C($sp)
    /* 829B78 80074F78 8FA70034 */  lw         $a3, 0x34($sp)
    /* 829B7C 80074F7C 26D60001 */  addiu      $s6, $s6, 0x1
    /* 829B80 80074F80 2AC20004 */  slti       $v0, $s6, 0x4
    /* 829B84 80074F84 24E70004 */  addiu      $a3, $a3, 0x4
    /* 829B88 80074F88 1440FF57 */  bnez       $v0, .L80074CE8
    /* 829B8C 80074F8C AFA70034 */   sw        $a3, 0x34($sp)
    /* 829B90 80074F90 3C038009 */  lui        $v1, %hi(D_80097AA0)
    /* 829B94 80074F94 24637AA0 */  addiu      $v1, $v1, %lo(D_80097AA0)
    /* 829B98 80074F98 8C620000 */  lw         $v0, 0x0($v1)
    /* 829B9C 80074F9C 24420001 */  addiu      $v0, $v0, 0x1
    /* 829BA0 80074FA0 AC620000 */  sw         $v0, 0x0($v1)
    /* 829BA4 80074FA4 2842003D */  slti       $v0, $v0, 0x3D
    /* 829BA8 80074FA8 50400001 */  beql       $v0, $zero, .L80074FB0
    /* 829BAC 80074FAC AC600000 */   sw        $zero, 0x0($v1)
  .L80074FB0:
    /* 829BB0 80074FB0 3C058016 */  lui        $a1, %hi(D_8015E9A8)
    /* 829BB4 80074FB4 8CA5E9A8 */  lw         $a1, %lo(D_8015E9A8)($a1)
    /* 829BB8 80074FB8 3C028009 */  lui        $v0, %hi(D_80097AA4)
    /* 829BBC 80074FBC 8C427AA4 */  lw         $v0, %lo(D_80097AA4)($v0)
    /* 829BC0 80074FC0 3C068017 */  lui        $a2, %hi(D_80175D48)
    /* 829BC4 80074FC4 24C65D48 */  addiu      $a2, $a2, %lo(D_80175D48)
    /* 829BC8 80074FC8 3C018009 */  lui        $at, %hi(D_80097AA8)
    /* 829BCC 80074FCC AC227AA8 */  sw         $v0, %lo(D_80097AA8)($at)
    /* 829BD0 80074FD0 0C01FDF8 */  jal        osSetEventMesg_recomp
    /* 829BD4 80074FD4 24040005 */   addiu     $a0, $zero, 0x5
    /* 829BD8 80074FD8 8FBF005C */  lw         $ra, 0x5C($sp)
    /* 829BDC 80074FDC 8FBE0058 */  lw         $fp, 0x58($sp)
    /* 829BE0 80074FE0 8FB70054 */  lw         $s7, 0x54($sp)
    /* 829BE4 80074FE4 8FB60050 */  lw         $s6, 0x50($sp)
    /* 829BE8 80074FE8 8FB5004C */  lw         $s5, 0x4C($sp)
    /* 829BEC 80074FEC 8FB40048 */  lw         $s4, 0x48($sp)
    /* 829BF0 80074FF0 8FB30044 */  lw         $s3, 0x44($sp)
    /* 829BF4 80074FF4 8FB20040 */  lw         $s2, 0x40($sp)
    /* 829BF8 80074FF8 8FB1003C */  lw         $s1, 0x3C($sp)
    /* 829BFC 80074FFC 8FB00038 */  lw         $s0, 0x38($sp)
    /* 829C00 80075000 27BD0060 */  addiu      $sp, $sp, 0x60
    /* 829C04 80075004 03E00008 */  jr         $ra
    /* 829C08 80075008 00000000 */   nop
.size func_80074C44, . - func_80074C44
#endif