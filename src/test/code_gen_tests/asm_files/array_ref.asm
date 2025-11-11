.data
label_0_STRING:
.asciiz ", "
.align 2
label_1_STRING:
.asciiz ", "
.align 2
# Allocated labels for virtual registers
# Allocated labels for virtual registers
label_42_v9:
.space 4
label_46_v11:
.space 4
label_49_v10:
.space 4
label_40_v8:
.space 4
label_52_v12:
.space 4
label_38_v7:
.space 4
label_35_v5:
.space 4
label_26_v3:
.space 4
label_18_v1:
.space 4
label_21_v0:
.space 4
label_28_v4:
.space 4
label_32_v6:
.space 4
label_24_v2:
.space 4
label_54_v13:
.space 4
# Allocated labels for virtual registers
label_61_v14:
.space 4
label_58_v15:
.space 4
label_85_v22:
.space 4
label_66_v16:
.space 4
label_70_v19:
.space 4
label_78_v20:
.space 4
label_65_v17:
.space 4
label_82_v23:
.space 4
label_90_v24:
.space 4
label_89_v25:
.space 4
label_77_v21:
.space 4
label_73_v18:
.space 4
# Allocated labels for virtual registers
label_114_v32:
.space 4
label_94_v27:
.space 4
label_118_v35:
.space 4
label_134_v42:
.space 4
label_125_v37:
.space 4
label_136_v43:
.space 4
label_128_v38:
.space 4
label_131_v40:
.space 4
label_109_v30:
.space 4
label_113_v33:
.space 4
label_121_v34:
.space 4
label_126_v36:
.space 4
label_139_v45:
.space 4
label_129_v39:
.space 4
label_133_v41:
.space 4
label_102_v28:
.space 4
label_101_v29:
.space 4
label_97_v26:
.space 4
label_106_v31:
.space 4
label_137_v44:
.space 4
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers

.text
label_2__start:
# Original instruction: jal main_FUNCTION
jal main_FUNCTION
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

.text
print_int_array_FUNCTION:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addiu $fp,$sp,0
addiu $fp,$sp,0
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: pushRegisters
la $t0,label_42_v9
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_46_v11
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_49_v10
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_40_v8
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_52_v12
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_38_v7
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_35_v5
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_26_v3
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_18_v1
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_21_v0
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_28_v4
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_32_v6
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_24_v2
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_54_v13
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: lw v0,4($fp)
lw $t5,4($fp)
la $t0,label_21_v0
sw $t5,0($t0)
# Original instruction: li v1,0
li $t5,0
la $t0,label_18_v1
sw $t5,0($t0)
# Original instruction: li v2,4
li $t5,4
la $t0,label_24_v2
sw $t5,0($t0)
# Original instruction: mul v2,v1,v2
la $t5,label_18_v1
lw $t5,0($t5)
la $t3,label_24_v2
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_24_v2
sw $t3,0($t0)
# Original instruction: add v2,v0,v2
la $t5,label_21_v0
lw $t5,0($t5)
la $t3,label_24_v2
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_24_v2
sw $t3,0($t0)
# Original instruction: lw v3,0(v2)
la $t5,label_24_v2
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_26_v3
sw $t4,0($t0)
# Original instruction: add $a0,v3,$zero
la $t5,label_26_v3
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_i_FUNCTION
jal print_i_FUNCTION
# Original instruction: la v4,label_0_STRING
la $t5,label_0_STRING
la $t0,label_28_v4
sw $t5,0($t0)
# Original instruction: add $a0,v4,$zero
la $t5,label_28_v4
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
# Original instruction: lw v5,4($fp)
lw $t5,4($fp)
la $t0,label_35_v5
sw $t5,0($t0)
# Original instruction: li v6,1
li $t5,1
la $t0,label_32_v6
sw $t5,0($t0)
# Original instruction: li v7,4
li $t5,4
la $t0,label_38_v7
sw $t5,0($t0)
# Original instruction: mul v7,v6,v7
la $t5,label_32_v6
lw $t5,0($t5)
la $t3,label_38_v7
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_38_v7
sw $t3,0($t0)
# Original instruction: add v7,v5,v7
la $t5,label_35_v5
lw $t5,0($t5)
la $t3,label_38_v7
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_38_v7
sw $t3,0($t0)
# Original instruction: lw v8,0(v7)
la $t5,label_38_v7
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_40_v8
sw $t4,0($t0)
# Original instruction: add $a0,v8,$zero
la $t5,label_40_v8
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_i_FUNCTION
jal print_i_FUNCTION
# Original instruction: la v9,label_1_STRING
la $t5,label_1_STRING
la $t0,label_42_v9
sw $t5,0($t0)
# Original instruction: add $a0,v9,$zero
la $t5,label_42_v9
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
# Original instruction: lw v10,4($fp)
lw $t5,4($fp)
la $t0,label_49_v10
sw $t5,0($t0)
# Original instruction: li v11,2
li $t5,2
la $t0,label_46_v11
sw $t5,0($t0)
# Original instruction: li v12,4
li $t5,4
la $t0,label_52_v12
sw $t5,0($t0)
# Original instruction: mul v12,v11,v12
la $t5,label_46_v11
lw $t5,0($t5)
la $t3,label_52_v12
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_52_v12
sw $t3,0($t0)
# Original instruction: add v12,v10,v12
la $t5,label_49_v10
lw $t5,0($t5)
la $t3,label_52_v12
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_52_v12
sw $t3,0($t0)
# Original instruction: lw v13,0(v12)
la $t5,label_52_v12
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_54_v13
sw $t4,0($t0)
# Original instruction: add $a0,v13,$zero
la $t5,label_54_v13
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_i_FUNCTION
jal print_i_FUNCTION
print_int_array_FUNCTION_EPILOGUE:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_54_v13
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_24_v2
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_32_v6
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_28_v4
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_21_v0
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_18_v1
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_26_v3
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_35_v5
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_38_v7
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_52_v12
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_40_v8
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_49_v10
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_46_v11
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_42_v9
sw $t0,0($t1)
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $ra,-4($fp)
lw $ra,-4($fp)
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
modify_array_FUNCTION:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addiu $fp,$sp,0
addiu $fp,$sp,0
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: pushRegisters
la $t0,label_61_v14
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_58_v15
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_85_v22
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_66_v16
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_70_v19
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_78_v20
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_65_v17
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_82_v23
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_90_v24
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_89_v25
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_77_v21
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_73_v18
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: lw v14,4($fp)
lw $t5,4($fp)
la $t0,label_61_v14
sw $t5,0($t0)
# Original instruction: li v15,0
li $t5,0
la $t0,label_58_v15
sw $t5,0($t0)
# Original instruction: li v16,4
li $t5,4
la $t0,label_66_v16
sw $t5,0($t0)
# Original instruction: mul v16,v15,v16
la $t5,label_58_v15
lw $t5,0($t5)
la $t3,label_66_v16
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_66_v16
sw $t3,0($t0)
# Original instruction: add v16,v14,v16
la $t5,label_61_v14
lw $t5,0($t5)
la $t3,label_66_v16
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_66_v16
sw $t3,0($t0)
# Original instruction: li v17,100
li $t5,100
la $t0,label_65_v17
sw $t5,0($t0)
# Original instruction: sw v17,0(v16)
la $t5,label_65_v17
lw $t5,0($t5)
la $t4,label_66_v16
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: lw v18,4($fp)
lw $t5,4($fp)
la $t0,label_73_v18
sw $t5,0($t0)
# Original instruction: li v19,1
li $t5,1
la $t0,label_70_v19
sw $t5,0($t0)
# Original instruction: li v20,4
li $t5,4
la $t0,label_78_v20
sw $t5,0($t0)
# Original instruction: mul v20,v19,v20
la $t5,label_70_v19
lw $t5,0($t5)
la $t3,label_78_v20
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_78_v20
sw $t3,0($t0)
# Original instruction: add v20,v18,v20
la $t5,label_73_v18
lw $t5,0($t5)
la $t3,label_78_v20
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_78_v20
sw $t3,0($t0)
# Original instruction: li v21,200
li $t5,200
la $t0,label_77_v21
sw $t5,0($t0)
# Original instruction: sw v21,0(v20)
la $t5,label_77_v21
lw $t5,0($t5)
la $t4,label_78_v20
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: lw v22,4($fp)
lw $t5,4($fp)
la $t0,label_85_v22
sw $t5,0($t0)
# Original instruction: li v23,2
li $t5,2
la $t0,label_82_v23
sw $t5,0($t0)
# Original instruction: li v24,4
li $t5,4
la $t0,label_90_v24
sw $t5,0($t0)
# Original instruction: mul v24,v23,v24
la $t5,label_82_v23
lw $t5,0($t5)
la $t3,label_90_v24
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_90_v24
sw $t3,0($t0)
# Original instruction: add v24,v22,v24
la $t5,label_85_v22
lw $t5,0($t5)
la $t3,label_90_v24
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_90_v24
sw $t3,0($t0)
# Original instruction: li v25,300
li $t5,300
la $t0,label_89_v25
sw $t5,0($t0)
# Original instruction: sw v25,0(v24)
la $t5,label_89_v25
lw $t5,0($t5)
la $t4,label_90_v24
lw $t4,0($t4)
sw $t5,0($t4)
modify_array_FUNCTION_EPILOGUE:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_73_v18
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_77_v21
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_89_v25
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_90_v24
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_82_v23
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_65_v17
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_78_v20
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_70_v19
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_66_v16
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_85_v22
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_58_v15
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_61_v14
sw $t0,0($t1)
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $ra,-4($fp)
lw $ra,-4($fp)
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
main_FUNCTION:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $fp,0($sp)
sw $fp,0($sp)
# Original instruction: addiu $fp,$sp,0
addiu $fp,$sp,0
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw $ra,0($sp)
sw $ra,0($sp)
# Original instruction: addiu $sp,$sp,-12
addiu $sp,$sp,-12
# Original instruction: pushRegisters
la $t0,label_114_v32
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_94_v27
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_118_v35
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_134_v42
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_125_v37
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_136_v43
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_128_v38
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_131_v40
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_109_v30
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_113_v33
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_121_v34
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_126_v36
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_139_v45
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_129_v39
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_133_v41
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_102_v28
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_101_v29
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_97_v26
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_106_v31
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_137_v44
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addi v26,$fp,-16
addi $t5,$fp,-16
la $t0,label_97_v26
sw $t5,0($t0)
# Original instruction: li v27,0
li $t5,0
la $t0,label_94_v27
sw $t5,0($t0)
# Original instruction: li v28,4
li $t5,4
la $t0,label_102_v28
sw $t5,0($t0)
# Original instruction: mul v28,v27,v28
la $t5,label_94_v27
lw $t5,0($t5)
la $t3,label_102_v28
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_102_v28
sw $t3,0($t0)
# Original instruction: add v28,v26,v28
la $t5,label_97_v26
lw $t5,0($t5)
la $t3,label_102_v28
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_102_v28
sw $t3,0($t0)
# Original instruction: li v29,10
li $t5,10
la $t0,label_101_v29
sw $t5,0($t0)
# Original instruction: sw v29,0(v28)
la $t5,label_101_v29
lw $t5,0($t5)
la $t4,label_102_v28
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v30,$fp,-16
addi $t5,$fp,-16
la $t0,label_109_v30
sw $t5,0($t0)
# Original instruction: li v31,1
li $t5,1
la $t0,label_106_v31
sw $t5,0($t0)
# Original instruction: li v32,4
li $t5,4
la $t0,label_114_v32
sw $t5,0($t0)
# Original instruction: mul v32,v31,v32
la $t5,label_106_v31
lw $t5,0($t5)
la $t3,label_114_v32
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_114_v32
sw $t3,0($t0)
# Original instruction: add v32,v30,v32
la $t5,label_109_v30
lw $t5,0($t5)
la $t3,label_114_v32
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_114_v32
sw $t3,0($t0)
# Original instruction: li v33,20
li $t5,20
la $t0,label_113_v33
sw $t5,0($t0)
# Original instruction: sw v33,0(v32)
la $t5,label_113_v33
lw $t5,0($t5)
la $t4,label_114_v32
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v34,$fp,-16
addi $t5,$fp,-16
la $t0,label_121_v34
sw $t5,0($t0)
# Original instruction: li v35,2
li $t5,2
la $t0,label_118_v35
sw $t5,0($t0)
# Original instruction: li v36,4
li $t5,4
la $t0,label_126_v36
sw $t5,0($t0)
# Original instruction: mul v36,v35,v36
la $t5,label_118_v35
lw $t5,0($t5)
la $t3,label_126_v36
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_126_v36
sw $t3,0($t0)
# Original instruction: add v36,v34,v36
la $t5,label_121_v34
lw $t5,0($t5)
la $t3,label_126_v36
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_126_v36
sw $t3,0($t0)
# Original instruction: li v37,10
li $t5,10
la $t0,label_125_v37
sw $t5,0($t0)
# Original instruction: sw v37,0(v36)
la $t5,label_125_v37
lw $t5,0($t5)
la $t4,label_126_v36
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addi v38,$fp,-16
addi $t5,$fp,-16
la $t0,label_128_v38
sw $t5,0($t0)
# Original instruction: sw v38,0($sp)
la $t5,label_128_v38
lw $t5,0($t5)
sw $t5,0($sp)
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: jal print_int_array_FUNCTION
jal print_int_array_FUNCTION
# Original instruction: lw v39,0($sp)
lw $t5,0($sp)
la $t0,label_129_v39
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addi v40,$zero,10
addi $t5,$zero,10
la $t0,label_131_v40
sw $t5,0($t0)
# Original instruction: add $a0,v40,$zero
la $t5,label_131_v40
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addi v41,$fp,-16
addi $t5,$fp,-16
la $t0,label_133_v41
sw $t5,0($t0)
# Original instruction: sw v41,0($sp)
la $t5,label_133_v41
lw $t5,0($t5)
sw $t5,0($sp)
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: jal modify_array_FUNCTION
jal modify_array_FUNCTION
# Original instruction: lw v42,0($sp)
lw $t5,0($sp)
la $t0,label_134_v42
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addi v43,$fp,-16
addi $t5,$fp,-16
la $t0,label_136_v43
sw $t5,0($t0)
# Original instruction: sw v43,0($sp)
la $t5,label_136_v43
lw $t5,0($t5)
sw $t5,0($sp)
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: jal print_int_array_FUNCTION
jal print_int_array_FUNCTION
# Original instruction: lw v44,0($sp)
lw $t5,0($sp)
la $t0,label_137_v44
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addi v45,$zero,10
addi $t5,$zero,10
la $t0,label_139_v45
sw $t5,0($t0)
# Original instruction: add $a0,v45,$zero
la $t5,label_139_v45
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
main_FUNCTION_EPILOGUE:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_137_v44
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_106_v31
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_97_v26
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_101_v29
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_102_v28
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_133_v41
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_129_v39
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_139_v45
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_126_v36
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_121_v34
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_113_v33
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_109_v30
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_131_v40
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_128_v38
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_136_v43
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_125_v37
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_134_v42
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_118_v35
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_94_v27
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_114_v32
sw $t0,0($t1)
# Original instruction: addiu $sp,$fp,4
addiu $sp,$fp,4
# Original instruction: lw $ra,-4($fp)
lw $ra,-4($fp)
# Original instruction: lw $fp,0($fp)
lw $fp,0($fp)
# Original instruction: jr $ra
jr $ra

.text
print_s_FUNCTION:
# Original instruction: li $v0,4
li $v0,4
# Original instruction: syscall
syscall
# Original instruction: jr $ra
jr $ra

.text
print_i_FUNCTION:
# Original instruction: li $v0,1
li $v0,1
# Original instruction: syscall
syscall
# Original instruction: jr $ra
jr $ra

.text
print_c_FUNCTION:
# Original instruction: li $v0,11
li $v0,11
# Original instruction: syscall
syscall
# Original instruction: jr $ra
jr $ra

.text
read_c_FUNCTION:
# Original instruction: li $v0,12
li $v0,12
# Original instruction: syscall
syscall
# Original instruction: jr $ra
jr $ra

.text
read_i_FUNCTION:
# Original instruction: li $v0,5
li $v0,5
# Original instruction: syscall
syscall
# Original instruction: jr $ra
jr $ra

.text
mcmalloc_FUNCTION:
# Original instruction: li $v0,9
li $v0,9
# Original instruction: syscall
syscall
# Original instruction: jr $ra
jr $ra

