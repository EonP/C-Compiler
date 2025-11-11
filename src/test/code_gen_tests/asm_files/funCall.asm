.data
label_0_STRING:
.asciiz ", "
.align 2
label_1_STRING:
.asciiz "10 + 20 + 30 = "
.align 2
label_2_STRING:
.asciiz "(4 * 2)^2 = "
.align 2
label_3_STRING:
.asciiz "Factorial from 0 to 10 = "
.align 2
# Allocated labels for virtual registers
# Allocated labels for virtual registers
label_43_v6:
.space 4
label_38_v7:
.space 4
label_41_v8:
.space 4
label_29_v1:
.space 4
label_34_v2:
.space 4
label_40_v3:
.space 4
label_32_v4:
.space 4
label_35_v5:
.space 4
# Allocated labels for virtual registers
label_45_v9:
.space 4
label_48_v10:
.space 4
label_49_v12:
.space 4
label_51_v11:
.space 4
# Allocated labels for virtual registers
label_58_v14:
.space 4
label_53_v13:
.space 4
label_56_v16:
.space 4
label_61_v15:
.space 4
label_59_v17:
.space 4
# Allocated labels for virtual registers
label_87_v30:
.space 4
label_66_v21:
.space 4
label_71_v20:
.space 4
label_75_v23:
.space 4
label_73_v22:
.space 4
label_89_v25:
.space 4
label_86_v24:
.space 4
label_81_v27:
.space 4
label_78_v26:
.space 4
label_63_v18:
.space 4
label_82_v29:
.space 4
label_84_v28:
.space 4
label_67_v19:
.space 4
# Allocated labels for virtual registers
label_124_v41:
.space 4
label_114_v40:
.space 4
label_99_v32:
.space 4
label_91_v31:
.space 4
label_119_v42:
.space 4
label_102_v34:
.space 4
label_94_v33:
.space 4
label_104_v36:
.space 4
label_109_v35:
.space 4
label_120_v0:
.space 4
label_111_v38:
.space 4
label_107_v37:
.space 4
label_116_v39:
.space 4
# Allocated labels for virtual registers
label_140_v50:
.space 4
label_144_v52:
.space 4
label_142_v51:
.space 4
label_126_v43:
.space 4
label_148_v54:
.space 4
label_146_v53:
.space 4
label_130_v45:
.space 4
label_151_v56:
.space 4
label_128_v44:
.space 4
label_150_v55:
.space 4
label_134_v47:
.space 4
label_132_v46:
.space 4
label_153_v57:
.space 4
label_138_v49:
.space 4
label_136_v48:
.space 4
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers

.text
label_4__start:
# Original instruction: jal main_FUNCTION
jal main_FUNCTION
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

.text
sum_FUNCTION:
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
la $t0,label_43_v6
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_38_v7
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_41_v8
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_29_v1
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_34_v2
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_40_v3
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_32_v4
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_35_v5
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addi v1,$fp,16
addi $t5,$fp,16
la $t0,label_29_v1
sw $t5,0($t0)
# Original instruction: lw v2,0(v1)
la $t5,label_29_v1
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_34_v2
sw $t4,0($t0)
# Original instruction: addi v4,$fp,12
addi $t5,$fp,12
la $t0,label_32_v4
sw $t5,0($t0)
# Original instruction: lw v5,0(v4)
la $t5,label_32_v4
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_35_v5
sw $t4,0($t0)
# Original instruction: add v3,v2,v5
la $t5,label_34_v2
lw $t5,0($t5)
la $t4,label_35_v5
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_40_v3
sw $t3,0($t0)
# Original instruction: addi v7,$fp,8
addi $t5,$fp,8
la $t0,label_38_v7
sw $t5,0($t0)
# Original instruction: lw v8,0(v7)
la $t5,label_38_v7
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_41_v8
sw $t4,0($t0)
# Original instruction: add v6,v3,v8
la $t5,label_40_v3
lw $t5,0($t5)
la $t4,label_41_v8
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_43_v6
sw $t3,0($t0)
# Original instruction: sw v6,4($fp)
la $t5,label_43_v6
lw $t5,0($t5)
sw $t5,4($fp)
# Original instruction: j sum_FUNCTION_EPILOGUE
j sum_FUNCTION_EPILOGUE
sum_FUNCTION_EPILOGUE:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_35_v5
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_32_v4
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_40_v3
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_34_v2
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_29_v1
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_41_v8
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_38_v7
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_43_v6
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
doubleNum_FUNCTION:
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
la $t0,label_45_v9
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_48_v10
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_49_v12
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_51_v11
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addi v9,$fp,8
addi $t5,$fp,8
la $t0,label_45_v9
sw $t5,0($t0)
# Original instruction: lw v10,0(v9)
la $t5,label_45_v9
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_48_v10
sw $t4,0($t0)
# Original instruction: li v12,2
li $t5,2
la $t0,label_49_v12
sw $t5,0($t0)
# Original instruction: mult v10,v12
la $t5,label_48_v10
lw $t5,0($t5)
la $t4,label_49_v12
lw $t4,0($t4)
mult $t5,$t4
# Original instruction: mflo v11
mflo $t5
la $t0,label_51_v11
sw $t5,0($t0)
# Original instruction: sw v11,4($fp)
la $t5,label_51_v11
lw $t5,0($t5)
sw $t5,4($fp)
# Original instruction: j doubleNum_FUNCTION_EPILOGUE
j doubleNum_FUNCTION_EPILOGUE
doubleNum_FUNCTION_EPILOGUE:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_51_v11
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_49_v12
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_48_v10
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_45_v9
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
square_FUNCTION:
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
la $t0,label_58_v14
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_53_v13
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_56_v16
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_61_v15
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_59_v17
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addi v13,$fp,8
addi $t5,$fp,8
la $t0,label_53_v13
sw $t5,0($t0)
# Original instruction: lw v14,0(v13)
la $t5,label_53_v13
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_58_v14
sw $t4,0($t0)
# Original instruction: addi v16,$fp,8
addi $t5,$fp,8
la $t0,label_56_v16
sw $t5,0($t0)
# Original instruction: lw v17,0(v16)
la $t5,label_56_v16
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_59_v17
sw $t4,0($t0)
# Original instruction: mult v14,v17
la $t5,label_58_v14
lw $t5,0($t5)
la $t4,label_59_v17
lw $t4,0($t4)
mult $t5,$t4
# Original instruction: mflo v15
mflo $t5
la $t0,label_61_v15
sw $t5,0($t0)
# Original instruction: sw v15,4($fp)
la $t5,label_61_v15
lw $t5,0($t5)
sw $t5,4($fp)
# Original instruction: j square_FUNCTION_EPILOGUE
j square_FUNCTION_EPILOGUE
square_FUNCTION_EPILOGUE:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_59_v17
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_61_v15
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_56_v16
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_53_v13
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_58_v14
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
factorial_FUNCTION:
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
la $t0,label_87_v30
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_66_v21
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_71_v20
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_75_v23
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_73_v22
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_89_v25
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_86_v24
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_81_v27
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_78_v26
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_63_v18
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_82_v29
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_84_v28
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_67_v19
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addi v18,$fp,8
addi $t5,$fp,8
la $t0,label_63_v18
sw $t5,0($t0)
# Original instruction: lw v19,0(v18)
la $t5,label_63_v18
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_67_v19
sw $t4,0($t0)
# Original instruction: li v21,1
li $t5,1
la $t0,label_66_v21
sw $t5,0($t0)
# Original instruction: slt v20,v21,v19
la $t5,label_66_v21
lw $t5,0($t5)
la $t4,label_67_v19
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_71_v20
sw $t3,0($t0)
# Original instruction: xori v20,v20,1
la $t4,label_71_v20
lw $t4,0($t4)
xori $t4,$t4,1
la $t0,label_71_v20
sw $t4,0($t0)
# Original instruction: beqz v20,label_14_IF_END
la $t5,label_71_v20
lw $t5,0($t5)
beqz $t5,label_14_IF_END
# Original instruction: li v22,1
li $t5,1
la $t0,label_73_v22
sw $t5,0($t0)
# Original instruction: sw v22,4($fp)
la $t5,label_73_v22
lw $t5,0($t5)
sw $t5,4($fp)
# Original instruction: j factorial_FUNCTION_EPILOGUE
j factorial_FUNCTION_EPILOGUE
label_14_IF_END:
# Original instruction: addi v23,$fp,8
addi $t5,$fp,8
la $t0,label_75_v23
sw $t5,0($t0)
# Original instruction: lw v24,0(v23)
la $t5,label_75_v23
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_86_v24
sw $t4,0($t0)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addi v26,$fp,8
addi $t5,$fp,8
la $t0,label_78_v26
sw $t5,0($t0)
# Original instruction: lw v27,0(v26)
la $t5,label_78_v26
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_81_v27
sw $t4,0($t0)
# Original instruction: li v29,1
li $t5,1
la $t0,label_82_v29
sw $t5,0($t0)
# Original instruction: sub v28,v27,v29
la $t5,label_81_v27
lw $t5,0($t5)
la $t4,label_82_v29
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_84_v28
sw $t3,0($t0)
# Original instruction: sw v28,0($sp)
la $t5,label_84_v28
lw $t5,0($t5)
sw $t5,0($sp)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal factorial_FUNCTION
jal factorial_FUNCTION
# Original instruction: lw v30,0($sp)
lw $t5,0($sp)
la $t0,label_87_v30
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: mult v24,v30
la $t5,label_86_v24
lw $t5,0($t5)
la $t4,label_87_v30
lw $t4,0($t4)
mult $t5,$t4
# Original instruction: mflo v25
mflo $t5
la $t0,label_89_v25
sw $t5,0($t0)
# Original instruction: sw v25,4($fp)
la $t5,label_89_v25
lw $t5,0($t5)
sw $t5,4($fp)
# Original instruction: j factorial_FUNCTION_EPILOGUE
j factorial_FUNCTION_EPILOGUE
factorial_FUNCTION_EPILOGUE:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_67_v19
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_84_v28
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_82_v29
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_63_v18
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_78_v26
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_81_v27
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_86_v24
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_89_v25
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_73_v22
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_75_v23
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_71_v20
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_66_v21
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_87_v30
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
factorial_helper_FUNCTION:
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
la $t0,label_124_v41
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_114_v40
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_99_v32
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_91_v31
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_119_v42
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_102_v34
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_94_v33
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_104_v36
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_109_v35
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_120_v0
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_111_v38
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_107_v37
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_116_v39
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: li v31,0
li $t5,0
la $t0,label_91_v31
sw $t5,0($t0)
# Original instruction: addi v0,v31,0
la $t5,label_91_v31
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_120_v0
sw $t4,0($t0)
label_19_WHILE_COND:
# Original instruction: li v33,10
li $t5,10
la $t0,label_94_v33
sw $t5,0($t0)
# Original instruction: slt v32,v33,v0
la $t5,label_94_v33
lw $t5,0($t5)
la $t4,label_120_v0
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_99_v32
sw $t3,0($t0)
# Original instruction: xori v32,v32,1
la $t4,label_99_v32
lw $t4,0($t4)
xori $t4,$t4,1
la $t0,label_99_v32
sw $t4,0($t0)
# Original instruction: beqz v32,label_18_WHILE_END
la $t5,label_99_v32
lw $t5,0($t5)
beqz $t5,label_18_WHILE_END
label_17_WHILE_BODY:
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: sw v0,0($sp)
la $t5,label_120_v0
lw $t5,0($t5)
sw $t5,0($sp)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal factorial_FUNCTION
jal factorial_FUNCTION
# Original instruction: lw v34,0($sp)
lw $t5,0($sp)
la $t0,label_102_v34
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: add $a0,v34,$zero
la $t5,label_102_v34
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_i_FUNCTION
jal print_i_FUNCTION
# Original instruction: addi v36,$fp,4
addi $t5,$fp,4
la $t0,label_104_v36
sw $t5,0($t0)
# Original instruction: lw v37,0(v36)
la $t5,label_104_v36
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_107_v37
sw $t4,0($t0)
# Original instruction: slt v35,v0,v37
la $t5,label_120_v0
lw $t5,0($t5)
la $t4,label_107_v37
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_109_v35
sw $t3,0($t0)
# Original instruction: beqz v35,label_21_IF_END
la $t5,label_109_v35
lw $t5,0($t5)
beqz $t5,label_21_IF_END
# Original instruction: la v38,label_0_STRING
la $t5,label_0_STRING
la $t0,label_111_v38
sw $t5,0($t0)
# Original instruction: add $a0,v38,$zero
la $t5,label_111_v38
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
label_21_IF_END:
# Original instruction: li v40,1
li $t5,1
la $t0,label_114_v40
sw $t5,0($t0)
# Original instruction: add v39,v0,v40
la $t5,label_120_v0
lw $t5,0($t5)
la $t4,label_114_v40
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_116_v39
sw $t3,0($t0)
# Original instruction: addi v0,v39,0
la $t5,label_116_v39
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_120_v0
sw $t4,0($t0)
# Original instruction: li v42,10
li $t5,10
la $t0,label_119_v42
sw $t5,0($t0)
# Original instruction: slt v41,v42,v0
la $t5,label_119_v42
lw $t5,0($t5)
la $t4,label_120_v0
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_124_v41
sw $t3,0($t0)
# Original instruction: xori v41,v41,1
la $t4,label_124_v41
lw $t4,0($t4)
xori $t4,$t4,1
la $t0,label_124_v41
sw $t4,0($t0)
# Original instruction: bnez v41,label_17_WHILE_BODY
la $t5,label_124_v41
lw $t5,0($t5)
bnez $t5,label_17_WHILE_BODY
label_18_WHILE_END:
factorial_helper_FUNCTION_EPILOGUE:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_116_v39
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_107_v37
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_111_v38
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_120_v0
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_109_v35
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_104_v36
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_94_v33
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_102_v34
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_119_v42
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_91_v31
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_99_v32
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_114_v40
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_124_v41
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
# Original instruction: pushRegisters
la $t0,label_140_v50
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_144_v52
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_142_v51
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_126_v43
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_148_v54
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_146_v53
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_130_v45
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_151_v56
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_128_v44
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_150_v55
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_134_v47
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_132_v46
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_153_v57
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_138_v49
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_136_v48
lw $t0,0($t0)
addiu $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: la v43,label_1_STRING
la $t5,label_1_STRING
la $t0,label_126_v43
sw $t5,0($t0)
# Original instruction: add $a0,v43,$zero
la $t5,label_126_v43
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
# Original instruction: addiu $sp,$sp,-12
addiu $sp,$sp,-12
# Original instruction: li v44,30
li $t5,30
la $t0,label_128_v44
sw $t5,0($t0)
# Original instruction: sw v44,0($sp)
la $t5,label_128_v44
lw $t5,0($t5)
sw $t5,0($sp)
# Original instruction: li v45,20
li $t5,20
la $t0,label_130_v45
sw $t5,0($t0)
# Original instruction: sw v45,4($sp)
la $t5,label_130_v45
lw $t5,0($t5)
sw $t5,4($sp)
# Original instruction: li v46,10
li $t5,10
la $t0,label_132_v46
sw $t5,0($t0)
# Original instruction: sw v46,8($sp)
la $t5,label_132_v46
lw $t5,0($t5)
sw $t5,8($sp)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal sum_FUNCTION
jal sum_FUNCTION
# Original instruction: lw v47,0($sp)
lw $t5,0($sp)
la $t0,label_134_v47
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,16
addiu $sp,$sp,16
# Original instruction: add $a0,v47,$zero
la $t5,label_134_v47
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_i_FUNCTION
jal print_i_FUNCTION
# Original instruction: addi v48,$zero,10
addi $t5,$zero,10
la $t0,label_136_v48
sw $t5,0($t0)
# Original instruction: add $a0,v48,$zero
la $t5,label_136_v48
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
# Original instruction: la v49,label_2_STRING
la $t5,label_2_STRING
la $t0,label_138_v49
sw $t5,0($t0)
# Original instruction: add $a0,v49,$zero
la $t5,label_138_v49
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: li v50,4
li $t5,4
la $t0,label_140_v50
sw $t5,0($t0)
# Original instruction: sw v50,0($sp)
la $t5,label_140_v50
lw $t5,0($t5)
sw $t5,0($sp)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal doubleNum_FUNCTION
jal doubleNum_FUNCTION
# Original instruction: lw v51,0($sp)
lw $t5,0($sp)
la $t0,label_142_v51
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: sw v51,0($sp)
la $t5,label_142_v51
lw $t5,0($t5)
sw $t5,0($sp)
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: jal square_FUNCTION
jal square_FUNCTION
# Original instruction: lw v52,0($sp)
lw $t5,0($sp)
la $t0,label_144_v52
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: add $a0,v52,$zero
la $t5,label_144_v52
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_i_FUNCTION
jal print_i_FUNCTION
# Original instruction: addi v53,$zero,10
addi $t5,$zero,10
la $t0,label_146_v53
sw $t5,0($t0)
# Original instruction: add $a0,v53,$zero
la $t5,label_146_v53
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
# Original instruction: la v54,label_3_STRING
la $t5,label_3_STRING
la $t0,label_148_v54
sw $t5,0($t0)
# Original instruction: add $a0,v54,$zero
la $t5,label_148_v54
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: li v55,10
li $t5,10
la $t0,label_150_v55
sw $t5,0($t0)
# Original instruction: sw v55,0($sp)
la $t5,label_150_v55
lw $t5,0($t5)
sw $t5,0($sp)
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: jal factorial_helper_FUNCTION
jal factorial_helper_FUNCTION
# Original instruction: lw v56,0($sp)
lw $t5,0($sp)
la $t0,label_151_v56
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,4
addiu $sp,$sp,4
# Original instruction: addi v57,$zero,10
addi $t5,$zero,10
la $t0,label_153_v57
sw $t5,0($t0)
# Original instruction: add $a0,v57,$zero
la $t5,label_153_v57
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
main_FUNCTION_EPILOGUE:
# Original instruction: popRegisters
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_136_v48
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_138_v49
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_153_v57
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_132_v46
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_134_v47
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_150_v55
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_128_v44
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_151_v56
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_130_v45
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_146_v53
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_148_v54
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_126_v43
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_142_v51
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_144_v52
sw $t0,0($t1)
lw $t0,0($sp)
addiu $sp,$sp,4
la $t1,label_140_v50
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

