.data
label_0_STRING:
.asciiz "First "
.align 2
label_1_STRING:
.asciiz " terms of Fibonacci series are : "
.align 2
label_2_STRING:
.asciiz " "
.align 2
# Allocated labels for virtual registers
# Allocated labels for virtual registers
label_94_v37:
.space 4
label_116_v46:
.space 4
label_111_v47:
.space 4
label_23_v3:
.space 4
label_84_v30:
.space 4
label_39_v11:
.space 4
label_42_v12:
.space 4
label_114_v48:
.space 4
label_47_v13:
.space 4
label_106_v39:
.space 4
label_113_v45:
.space 4
label_83_v32:
.space 4
label_40_v10:
.space 4
label_56_v18:
.space 4
label_55_v20:
.space 4
label_103_v43:
.space 4
label_74_v26:
.space 4
label_66_v21:
.space 4
label_81_v31:
.space 4
label_65_v23:
.space 4
label_90_v33:
.space 4
label_102_v41:
.space 4
label_20_v0:
.space 4
label_27_v5:
.space 4
label_60_v19:
.space 4
label_105_v42:
.space 4
label_87_v34:
.space 4
label_108_v44:
.space 4
label_52_v17:
.space 4
label_34_v8:
.space 4
label_19_v1:
.space 4
label_96_v38:
.space 4
label_77_v27:
.space 4
label_72_v28:
.space 4
label_24_v2:
.space 4
label_69_v25:
.space 4
label_78_v24:
.space 4
label_75_v29:
.space 4
label_32_v7:
.space 4
label_89_v35:
.space 4
label_30_v6:
.space 4
label_50_v14:
.space 4
label_28_v4:
.space 4
label_45_v15:
.space 4
label_92_v36:
.space 4
label_48_v16:
.space 4
label_63_v22:
.space 4
label_99_v40:
.space 4
label_36_v9:
.space 4
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers

.text
label_3__start:
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
# Original instruction: addiu $sp,$sp,-24
addiu $sp,$sp,-24
# Original instruction: pushRegisters
la $t0,label_94_v37
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_116_v46
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_111_v47
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_23_v3
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_84_v30
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_39_v11
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_42_v12
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_114_v48
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_47_v13
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_106_v39
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_113_v45
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_83_v32
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_40_v10
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_56_v18
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_55_v20
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_103_v43
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_74_v26
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_66_v21
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_81_v31
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_65_v23
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_90_v33
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_102_v41
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_20_v0
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_27_v5
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_60_v19
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_105_v42
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_87_v34
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_108_v44
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_52_v17
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_34_v8
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_19_v1
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_96_v38
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_77_v27
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_72_v28
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_24_v2
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_69_v25
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_78_v24
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_75_v29
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_32_v7
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_89_v35
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_30_v6
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_50_v14
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_28_v4
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_45_v15
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_92_v36
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_48_v16
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_63_v22
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_99_v40
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_36_v9
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addi v0,$fp,-8
addi $t5,$fp,-8
la $t0,label_20_v0
sw $t5,0($t0)
# Original instruction: jal read_i_FUNCTION
jal read_i_FUNCTION
# Original instruction: add v1,$v0,$zero
add $t5,$v0,$zero
la $t0,label_19_v1
sw $t5,0($t0)
# Original instruction: sw v1,0(v0)
la $t5,label_19_v1
lw $t5,0($t5)
la $t4,label_20_v0
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v2,$fp,-12
addi $t5,$fp,-12
la $t0,label_24_v2
sw $t5,0($t0)
# Original instruction: li v3,0
li $t5,0
la $t0,label_23_v3
sw $t5,0($t0)
# Original instruction: sw v3,0(v2)
la $t5,label_23_v3
lw $t5,0($t5)
la $t4,label_24_v2
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v4,$fp,-16
addi $t5,$fp,-16
la $t0,label_28_v4
sw $t5,0($t0)
# Original instruction: li v5,1
li $t5,1
la $t0,label_27_v5
sw $t5,0($t0)
# Original instruction: sw v5,0(v4)
la $t5,label_27_v5
lw $t5,0($t5)
la $t4,label_28_v4
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: la v6,label_0_STRING
la $t5,label_0_STRING
la $t0,label_30_v6
sw $t5,0($t0)
# Original instruction: add $a0,v6,$zero
la $t5,label_30_v6
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
# Original instruction: addi v7,$fp,-8
addi $t5,$fp,-8
la $t0,label_32_v7
sw $t5,0($t0)
# Original instruction: lw v8,0(v7)
la $t5,label_32_v7
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_34_v8
sw $t4,0($t0)
# Original instruction: add $a0,v8,$zero
la $t5,label_34_v8
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_i_FUNCTION
jal print_i_FUNCTION
# Original instruction: la v9,label_1_STRING
la $t5,label_1_STRING
la $t0,label_36_v9
sw $t5,0($t0)
# Original instruction: add $a0,v9,$zero
la $t5,label_36_v9
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
# Original instruction: addi v10,$fp,-24
addi $t5,$fp,-24
la $t0,label_40_v10
sw $t5,0($t0)
# Original instruction: li v11,0
li $t5,0
la $t0,label_39_v11
sw $t5,0($t0)
# Original instruction: sw v11,0(v10)
la $t5,label_39_v11
lw $t5,0($t5)
la $t4,label_40_v10
lw $t4,0($t4)
sw $t5,0($t4)
label_11_WHILE_COND:
# Original instruction: addi v12,$fp,-24
addi $t5,$fp,-24
la $t0,label_42_v12
sw $t5,0($t0)
# Original instruction: lw v13,0(v12)
la $t5,label_42_v12
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_47_v13
sw $t4,0($t0)
# Original instruction: addi v15,$fp,-8
addi $t5,$fp,-8
la $t0,label_45_v15
sw $t5,0($t0)
# Original instruction: lw v16,0(v15)
la $t5,label_45_v15
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_48_v16
sw $t4,0($t0)
# Original instruction: slt v14,v13,v16
la $t5,label_47_v13
lw $t5,0($t5)
la $t4,label_48_v16
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_50_v14
sw $t3,0($t0)
# Original instruction: beqz v14,label_10_WHILE_END
la $t5,label_50_v14
lw $t5,0($t5)
beqz $t5,label_10_WHILE_END
label_9_WHILE_BODY:
# Original instruction: addi v17,$fp,-24
addi $t5,$fp,-24
la $t0,label_52_v17
sw $t5,0($t0)
# Original instruction: lw v18,0(v17)
la $t5,label_52_v17
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_56_v18
sw $t4,0($t0)
# Original instruction: li v20,1
li $t5,1
la $t0,label_55_v20
sw $t5,0($t0)
# Original instruction: slt v19,v20,v18
la $t5,label_55_v20
lw $t5,0($t5)
la $t4,label_56_v18
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_60_v19
sw $t3,0($t0)
# Original instruction: xori v19,v19,1
la $t4,label_60_v19
lw $t4,0($t4)
xori $t4,$t4,1
la $t0,label_60_v19
sw $t4,0($t0)
# Original instruction: beqz v19,label_13_ELSE_LABEL
la $t5,label_60_v19
lw $t5,0($t5)
beqz $t5,label_13_ELSE_LABEL
# Original instruction: addi v21,$fp,-20
addi $t5,$fp,-20
la $t0,label_66_v21
sw $t5,0($t0)
# Original instruction: addi v22,$fp,-24
addi $t5,$fp,-24
la $t0,label_63_v22
sw $t5,0($t0)
# Original instruction: lw v23,0(v22)
la $t5,label_63_v22
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_65_v23
sw $t4,0($t0)
# Original instruction: sw v23,0(v21)
la $t5,label_65_v23
lw $t5,0($t5)
la $t4,label_66_v21
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: j label_12_IF_END
j label_12_IF_END
label_13_ELSE_LABEL:
# Original instruction: addi v24,$fp,-20
addi $t5,$fp,-20
la $t0,label_78_v24
sw $t5,0($t0)
# Original instruction: addi v25,$fp,-12
addi $t5,$fp,-12
la $t0,label_69_v25
sw $t5,0($t0)
# Original instruction: lw v26,0(v25)
la $t5,label_69_v25
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_74_v26
sw $t4,0($t0)
# Original instruction: addi v28,$fp,-16
addi $t5,$fp,-16
la $t0,label_72_v28
sw $t5,0($t0)
# Original instruction: lw v29,0(v28)
la $t5,label_72_v28
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_75_v29
sw $t4,0($t0)
# Original instruction: add v27,v26,v29
la $t5,label_74_v26
lw $t5,0($t5)
la $t4,label_75_v29
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_77_v27
sw $t3,0($t0)
# Original instruction: sw v27,0(v24)
la $t5,label_77_v27
lw $t5,0($t5)
la $t4,label_78_v24
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v30,$fp,-12
addi $t5,$fp,-12
la $t0,label_84_v30
sw $t5,0($t0)
# Original instruction: addi v31,$fp,-16
addi $t5,$fp,-16
la $t0,label_81_v31
sw $t5,0($t0)
# Original instruction: lw v32,0(v31)
la $t5,label_81_v31
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_83_v32
sw $t4,0($t0)
# Original instruction: sw v32,0(v30)
la $t5,label_83_v32
lw $t5,0($t5)
la $t4,label_84_v30
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v33,$fp,-16
addi $t5,$fp,-16
la $t0,label_90_v33
sw $t5,0($t0)
# Original instruction: addi v34,$fp,-20
addi $t5,$fp,-20
la $t0,label_87_v34
sw $t5,0($t0)
# Original instruction: lw v35,0(v34)
la $t5,label_87_v34
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_89_v35
sw $t4,0($t0)
# Original instruction: sw v35,0(v33)
la $t5,label_89_v35
lw $t5,0($t5)
la $t4,label_90_v33
lw $t4,0($t4)
sw $t5,0($t4)
label_12_IF_END:
# Original instruction: addi v36,$fp,-20
addi $t5,$fp,-20
la $t0,label_92_v36
sw $t5,0($t0)
# Original instruction: lw v37,0(v36)
la $t5,label_92_v36
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_94_v37
sw $t4,0($t0)
# Original instruction: add $a0,v37,$zero
la $t5,label_94_v37
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_i_FUNCTION
jal print_i_FUNCTION
# Original instruction: la v38,label_2_STRING
la $t5,label_2_STRING
la $t0,label_96_v38
sw $t5,0($t0)
# Original instruction: add $a0,v38,$zero
la $t5,label_96_v38
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
# Original instruction: addi v39,$fp,-24
addi $t5,$fp,-24
la $t0,label_106_v39
sw $t5,0($t0)
# Original instruction: addi v40,$fp,-24
addi $t5,$fp,-24
la $t0,label_99_v40
sw $t5,0($t0)
# Original instruction: lw v41,0(v40)
la $t5,label_99_v40
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_102_v41
sw $t4,0($t0)
# Original instruction: li v43,1
li $t5,1
la $t0,label_103_v43
sw $t5,0($t0)
# Original instruction: add v42,v41,v43
la $t5,label_102_v41
lw $t5,0($t5)
la $t4,label_103_v43
lw $t4,0($t4)
add $t3,$t5,$t4
la $t0,label_105_v42
sw $t3,0($t0)
# Original instruction: sw v42,0(v39)
la $t5,label_105_v42
lw $t5,0($t5)
la $t4,label_106_v39
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v44,$fp,-24
addi $t5,$fp,-24
la $t0,label_108_v44
sw $t5,0($t0)
# Original instruction: lw v45,0(v44)
la $t5,label_108_v44
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_113_v45
sw $t4,0($t0)
# Original instruction: addi v47,$fp,-8
addi $t5,$fp,-8
la $t0,label_111_v47
sw $t5,0($t0)
# Original instruction: lw v48,0(v47)
la $t5,label_111_v47
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_114_v48
sw $t4,0($t0)
# Original instruction: slt v46,v45,v48
la $t5,label_113_v45
lw $t5,0($t5)
la $t4,label_114_v48
lw $t4,0($t4)
slt $t3,$t5,$t4
la $t0,label_116_v46
sw $t3,0($t0)
# Original instruction: bnez v46,label_9_WHILE_BODY
la $t5,label_116_v46
lw $t5,0($t5)
bnez $t5,label_9_WHILE_BODY
label_10_WHILE_END:
main_FUNCTION_EPILOGUE:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_36_v9
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_99_v40
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_63_v22
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_48_v16
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_92_v36
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_45_v15
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_28_v4
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_50_v14
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_30_v6
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_89_v35
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_32_v7
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_75_v29
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_78_v24
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_69_v25
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_24_v2
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_72_v28
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_77_v27
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_96_v38
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_19_v1
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_34_v8
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_52_v17
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_108_v44
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_87_v34
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_105_v42
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_60_v19
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_27_v5
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_20_v0
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_102_v41
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_90_v33
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_65_v23
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_81_v31
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_66_v21
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_74_v26
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_103_v43
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_55_v20
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_56_v18
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_40_v10
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_83_v32
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_113_v45
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_106_v39
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_47_v13
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_114_v48
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_42_v12
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_39_v11
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_84_v30
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_23_v3
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_111_v47
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_116_v46
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_94_v37
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

