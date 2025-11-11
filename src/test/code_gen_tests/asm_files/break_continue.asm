.data
label_0_STRING:
.asciiz ", "
.align 2
# Allocated labels for virtual registers
# Allocated labels for virtual registers
label_19_v1:
.space 4
label_51_v16:
.space 4
label_44_v12:
.space 4
label_25_v4:
.space 4
label_72_v27:
.space 4
label_31_v7:
.space 4
label_32_v9:
.space 4
label_71_v25:
.space 4
label_75_v23:
.space 4
label_34_v8:
.space 4
label_63_v20:
.space 4
label_59_v21:
.space 4
label_68_v24:
.space 4
label_22_v2:
.space 4
label_20_v3:
.space 4
label_41_v13:
.space 4
label_77_v28:
.space 4
label_28_v6:
.space 4
label_45_v15:
.space 4
label_23_v0:
.space 4
label_37_v10:
.space 4
label_49_v14:
.space 4
label_40_v11:
.space 4
label_55_v18:
.space 4
label_65_v22:
.space 4
label_53_v17:
.space 4
label_74_v26:
.space 4
label_58_v19:
.space 4
label_35_v5:
.space 4
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers

.text
label_1__start:
# Original instruction: jal main_FUNCTION
jal main_FUNCTION
# Original instruction: li $v0,10
li $v0,10
# Original instruction: syscall
syscall

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
# Original instruction: addiu $sp,$sp,-4
addiu $sp,$sp,-4
# Original instruction: pushRegisters
la $t0,label_19_v1
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_51_v16
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_44_v12
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_25_v4
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_72_v27
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_31_v7
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_32_v9
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_71_v25
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_75_v23
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_34_v8
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_63_v20
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_59_v21
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_68_v24
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_22_v2
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_20_v3
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_41_v13
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_77_v28
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_28_v6
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_45_v15
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_23_v0
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_37_v10
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_49_v14
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_40_v11
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_55_v18
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_65_v22
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_53_v17
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_74_v26
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_58_v19
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_35_v5
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addi v0,$fp,-8
addi $t5,$fp,-8
la $t0,label_23_v0
sw $t5,0($t0)
# Original instruction: li v1,0
li $t5,0
la $t0,label_19_v1
sw $t5,0($t0)
# Original instruction: li v3,1
li $t5,1
la $t0,label_20_v3
sw $t5,0($t0)
# Original instruction: sub v2,v1,v3
la $t5,label_19_v1
lw $t5,0($t5)
la $t4,label_20_v3
lw $t4,0($t4)
sub $t3,$t5,$t4
la $t0,label_22_v2
sw $t3,0($t0)
# Original instruction: sw v2,0(v0)
la $t5,label_22_v2
lw $t5,0($t5)
la $t4,label_23_v0
lw $t4,0($t4)
sw $t5,0($t4)
label_6_WHILE_COND:
# Original instruction: li v4,1
li $t5,1
la $t0,label_25_v4
sw $t5,0($t0)
# Original instruction: beqz v4,label_5_WHILE_END
la $t5,label_25_v4
lw $t5,0($t5)
beqz $t5,label_5_WHILE_END
label_4_WHILE_BODY:
# Original instruction: addi v5,$fp,-8
addi $t5,$fp,-8
la $t0,label_35_v5
sw $t5,0($t0)
# Original instruction: addi v6,$fp,-8
addi $t5,$fp,-8
la $t0,label_28_v6
sw $t5,0($t0)
# Original instruction: lw v7,0(v6)
la $t5,label_28_v6
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_31_v7
sw $t4,0($t0)
# Original instruction: li v9,1
li $t5,1
la $t0,label_32_v9
sw $t5,0($t0)
# Original instruction: add v8,v7,v9
la $t5,label_31_v7
lw $t5,0($t5)
la $t4,label_32_v9
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_34_v8
sw $t3,0($t0)
# Original instruction: sw v8,0(v5)
la $t5,label_34_v8
lw $t5,0($t5)
la $t4,label_35_v5
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v10,$fp,-8
addi $t5,$fp,-8
la $t0,label_37_v10
sw $t5,0($t0)
# Original instruction: lw v11,0(v10)
la $t5,label_37_v10
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_40_v11
sw $t4,0($t0)
# Original instruction: li v13,2
li $t5,2
la $t0,label_41_v13
sw $t5,0($t0)
# Original instruction: div v11,v13
la $t5,label_40_v11
lw $t5,0($t5)
la $t4,label_41_v13
lw $t4,0($t4)
div $t5,$t4
# Original instruction: mfhi v12
mfhi $t5
la $t0,label_44_v12
sw $t5,0($t0)
# Original instruction: li v15,0
li $t5,0
la $t0,label_45_v15
sw $t5,0($t0)
# Original instruction: xor v14,v12,v15
la $t5,label_44_v12
lw $t5,0($t5)
la $t4,label_45_v15
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_49_v14
sw $t3,0($t0)
# Original instruction: sltu v14,$zero,v14
la $t4,label_49_v14
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_49_v14
sw $t4,0($t0)
# Original instruction: beqz v14,label_7_IF_END
la $t5,label_49_v14
lw $t5,0($t5)
beqz $t5,label_7_IF_END
# Original instruction: j label_6_WHILE_COND
j label_6_WHILE_COND
label_7_IF_END:
# Original instruction: addi v16,$fp,-8
addi $t5,$fp,-8
la $t0,label_51_v16
sw $t5,0($t0)
# Original instruction: lw v17,0(v16)
la $t5,label_51_v16
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_53_v17
sw $t4,0($t0)
# Original instruction: add $a0,v17,$zero
la $t5,label_53_v17
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_i_FUNCTION
jal print_i_FUNCTION
# Original instruction: addi v18,$fp,-8
addi $t5,$fp,-8
la $t0,label_55_v18
sw $t5,0($t0)
# Original instruction: lw v19,0(v18)
la $t5,label_55_v18
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_58_v19
sw $t4,0($t0)
# Original instruction: li v21,20
li $t5,20
la $t0,label_59_v21
sw $t5,0($t0)
# Original instruction: xor v20,v19,v21
la $t5,label_58_v19
lw $t5,0($t5)
la $t4,label_59_v21
lw $t4,0($t4)
xor $t3,$t5,$t4
la $t0,label_63_v20
sw $t3,0($t0)
# Original instruction: sltu v20,$zero,v20
la $t4,label_63_v20
lw $t4,0($t4)
sltu $t4,$zero,$t4
la $t0,label_63_v20
sw $t4,0($t0)
# Original instruction: beqz v20,label_10_ELSE_LABEL
la $t5,label_63_v20
lw $t5,0($t5)
beqz $t5,label_10_ELSE_LABEL
# Original instruction: la v22,label_0_STRING
la $t5,label_0_STRING
la $t0,label_65_v22
sw $t5,0($t0)
# Original instruction: add $a0,v22,$zero
la $t5,label_65_v22
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
# Original instruction: j label_9_IF_END
j label_9_IF_END
label_10_ELSE_LABEL:
# Original instruction: j label_5_WHILE_END
j label_5_WHILE_END
label_9_IF_END:
# Original instruction: addi v23,$fp,-8
addi $t5,$fp,-8
la $t0,label_75_v23
sw $t5,0($t0)
# Original instruction: addi v24,$fp,-8
addi $t5,$fp,-8
la $t0,label_68_v24
sw $t5,0($t0)
# Original instruction: lw v25,0(v24)
la $t5,label_68_v24
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_71_v25
sw $t4,0($t0)
# Original instruction: li v27,1
li $t5,1
la $t0,label_72_v27
sw $t5,0($t0)
# Original instruction: add v26,v25,v27
la $t5,label_71_v25
lw $t5,0($t5)
la $t4,label_72_v27
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_74_v26
sw $t3,0($t0)
# Original instruction: sw v26,0(v23)
la $t5,label_74_v26
lw $t5,0($t5)
la $t4,label_75_v23
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: li v28,1
li $t5,1
la $t0,label_77_v28
sw $t5,0($t0)
# Original instruction: bnez v28,label_4_WHILE_BODY
la $t5,label_77_v28
lw $t5,0($t5)
bnez $t5,label_4_WHILE_BODY
label_5_WHILE_END:
main_FUNCTION_EPILOGUE:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_35_v5
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_58_v19
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_74_v26
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_53_v17
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_65_v22
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_55_v18
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_40_v11
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_49_v14
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_37_v10
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_23_v0
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_45_v15
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_28_v6
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_77_v28
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_41_v13
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_20_v3
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_22_v2
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_68_v24
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_59_v21
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_63_v20
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_34_v8
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_75_v23
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_71_v25
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_32_v9
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_31_v7
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_72_v27
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_25_v4
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_44_v12
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_51_v16
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_19_v1
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

