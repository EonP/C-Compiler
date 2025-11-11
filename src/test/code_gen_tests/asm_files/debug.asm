.data
label_0_STRING:
.asciiz ", "
.align 2
label_1_STRING:
.asciiz ", "
.align 2
label_2_STRING:
.asciiz ", "
.align 2
# Allocated labels for virtual registers
# Allocated labels for virtual registers
label_24_v2:
.space 4
label_29_v4:
.space 4
label_26_v3:
.space 4
label_120_v13:
.space 4
label_62_v7:
.space 4
label_27_v1:
.space 4
label_70_v11:
.space 4
label_63_v5:
.space 4
label_118_v12:
.space 4
label_21_v0:
.space 4
label_65_v8:
.space 4
label_71_v9:
.space 4
label_68_v10:
.space 4
label_60_v6:
.space 4
# Allocated labels for virtual registers
label_159_v22:
.space 4
label_161_v23:
.space 4
label_122_v14:
.space 4
label_130_v18:
.space 4
label_136_v19:
.space 4
label_128_v15:
.space 4
label_125_v16:
.space 4
label_127_v17:
.space 4
label_133_v20:
.space 4
label_135_v21:
.space 4
# Allocated labels for virtual registers
label_196_v30:
.space 4
label_205_v35:
.space 4
label_163_v24:
.space 4
label_169_v27:
.space 4
label_171_v28:
.space 4
label_165_v25:
.space 4
label_197_v31:
.space 4
label_199_v32:
.space 4
label_201_v33:
.space 4
label_194_v29:
.space 4
label_203_v34:
.space 4
label_167_v26:
.space 4
# Allocated labels for virtual registers
label_219_v42:
.space 4
label_207_v36:
.space 4
label_215_v40:
.space 4
label_213_v39:
.space 4
label_217_v41:
.space 4
label_209_v37:
.space 4
label_211_v38:
.space 4
# Allocated labels for virtual registers
label_254_v46:
.space 4
label_283_v50:
.space 4
label_313_v55:
.space 4
label_429_v60:
.space 4
label_257_v43:
.space 4
label_288_v53:
.space 4
label_377_v57:
.space 4
label_430_v61:
.space 4
label_222_v44:
.space 4
label_311_v54:
.space 4
label_315_v56:
.space 4
label_282_v49:
.space 4
label_256_v47:
.space 4
label_224_v45:
.space 4
label_427_v59:
.space 4
label_379_v58:
.space 4
label_380_v52:
.space 4
label_280_v48:
.space 4
label_285_v51:
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
create_s1_FUNCTION:
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
# Original instruction: addiu $sp,$sp,-16
addiu $sp,$sp,-16
# Original instruction: pushRegisters
la $t0,label_24_v2
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_29_v4
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_26_v3
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_120_v13
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_62_v7
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_27_v1
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_70_v11
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_63_v5
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_118_v12
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_21_v0
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_65_v8
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_71_v9
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_68_v10
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_60_v6
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addi v0,$fp,-20
addi $t5,$fp,-20
la $t0,label_21_v0
sw $t5,0($t0)
# Original instruction: addi v1,v0,0
la $t5,label_21_v0
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_27_v1
sw $t4,0($t0)
# Original instruction: addi v2,$fp,32
addi $t5,$fp,32
la $t0,label_24_v2
sw $t5,0($t0)
# Original instruction: lw v3,0(v2)
la $t5,label_24_v2
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_26_v3
sw $t4,0($t0)
# Original instruction: sw v3,0(v1)
la $t5,label_26_v3
lw $t5,0($t5)
la $t4,label_27_v1
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v4,$fp,-20
addi $t5,$fp,-20
la $t0,label_29_v4
sw $t5,0($t0)
# Original instruction: addi v5,v4,4
la $t5,label_29_v4
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_63_v5
sw $t4,0($t0)
# Original instruction: addi v6,$fp,24
addi $t5,$fp,24
la $t0,label_60_v6
sw $t5,0($t0)
# Original instruction: lb v7,7(v6)
la $t5,label_60_v6
lw $t5,0($t5)
lb $t4,7($t5)
la $t0,label_62_v7
sw $t4,0($t0)
# Original instruction: sb v7,7(v5)
la $t5,label_62_v7
lw $t5,0($t5)
la $t4,label_63_v5
lw $t4,0($t4)
sb $t5,7($t4)
# Original instruction: lb v7,6(v6)
la $t5,label_60_v6
lw $t5,0($t5)
lb $t4,6($t5)
la $t0,label_62_v7
sw $t4,0($t0)
# Original instruction: sb v7,6(v5)
la $t5,label_62_v7
lw $t5,0($t5)
la $t4,label_63_v5
lw $t4,0($t4)
sb $t5,6($t4)
# Original instruction: lb v7,5(v6)
la $t5,label_60_v6
lw $t5,0($t5)
lb $t4,5($t5)
la $t0,label_62_v7
sw $t4,0($t0)
# Original instruction: sb v7,5(v5)
la $t5,label_62_v7
lw $t5,0($t5)
la $t4,label_63_v5
lw $t4,0($t4)
sb $t5,5($t4)
# Original instruction: lb v7,4(v6)
la $t5,label_60_v6
lw $t5,0($t5)
lb $t4,4($t5)
la $t0,label_62_v7
sw $t4,0($t0)
# Original instruction: sb v7,4(v5)
la $t5,label_62_v7
lw $t5,0($t5)
la $t4,label_63_v5
lw $t4,0($t4)
sb $t5,4($t4)
# Original instruction: lb v7,3(v6)
la $t5,label_60_v6
lw $t5,0($t5)
lb $t4,3($t5)
la $t0,label_62_v7
sw $t4,0($t0)
# Original instruction: sb v7,3(v5)
la $t5,label_62_v7
lw $t5,0($t5)
la $t4,label_63_v5
lw $t4,0($t4)
sb $t5,3($t4)
# Original instruction: lb v7,2(v6)
la $t5,label_60_v6
lw $t5,0($t5)
lb $t4,2($t5)
la $t0,label_62_v7
sw $t4,0($t0)
# Original instruction: sb v7,2(v5)
la $t5,label_62_v7
lw $t5,0($t5)
la $t4,label_63_v5
lw $t4,0($t4)
sb $t5,2($t4)
# Original instruction: lb v7,1(v6)
la $t5,label_60_v6
lw $t5,0($t5)
lb $t4,1($t5)
la $t0,label_62_v7
sw $t4,0($t0)
# Original instruction: sb v7,1(v5)
la $t5,label_62_v7
lw $t5,0($t5)
la $t4,label_63_v5
lw $t4,0($t4)
sb $t5,1($t4)
# Original instruction: lb v7,0(v6)
la $t5,label_60_v6
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_62_v7
sw $t4,0($t0)
# Original instruction: sb v7,0(v5)
la $t5,label_62_v7
lw $t5,0($t5)
la $t4,label_63_v5
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v8,$fp,-20
addi $t5,$fp,-20
la $t0,label_65_v8
sw $t5,0($t0)
# Original instruction: addi v9,v8,12
la $t5,label_65_v8
lw $t5,0($t5)
addi $t4,$t5,12
la $t0,label_71_v9
sw $t4,0($t0)
# Original instruction: addi v10,$fp,20
addi $t5,$fp,20
la $t0,label_68_v10
sw $t5,0($t0)
# Original instruction: lb v11,0(v10)
la $t5,label_68_v10
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_70_v11
sw $t4,0($t0)
# Original instruction: sb v11,0(v9)
la $t5,label_70_v11
lw $t5,0($t5)
la $t4,label_71_v9
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v12,$fp,-20
addi $t5,$fp,-20
la $t0,label_118_v12
sw $t5,0($t0)
# Original instruction: lb v13,15(v12)
la $t5,label_118_v12
lw $t5,0($t5)
lb $t4,15($t5)
la $t0,label_120_v13
sw $t4,0($t0)
# Original instruction: sb v13,19($fp)
la $t5,label_120_v13
lw $t5,0($t5)
sb $t5,19($fp)
# Original instruction: lb v13,14(v12)
la $t5,label_118_v12
lw $t5,0($t5)
lb $t4,14($t5)
la $t0,label_120_v13
sw $t4,0($t0)
# Original instruction: sb v13,18($fp)
la $t5,label_120_v13
lw $t5,0($t5)
sb $t5,18($fp)
# Original instruction: lb v13,13(v12)
la $t5,label_118_v12
lw $t5,0($t5)
lb $t4,13($t5)
la $t0,label_120_v13
sw $t4,0($t0)
# Original instruction: sb v13,17($fp)
la $t5,label_120_v13
lw $t5,0($t5)
sb $t5,17($fp)
# Original instruction: lb v13,12(v12)
la $t5,label_118_v12
lw $t5,0($t5)
lb $t4,12($t5)
la $t0,label_120_v13
sw $t4,0($t0)
# Original instruction: sb v13,16($fp)
la $t5,label_120_v13
lw $t5,0($t5)
sb $t5,16($fp)
# Original instruction: lb v13,11(v12)
la $t5,label_118_v12
lw $t5,0($t5)
lb $t4,11($t5)
la $t0,label_120_v13
sw $t4,0($t0)
# Original instruction: sb v13,15($fp)
la $t5,label_120_v13
lw $t5,0($t5)
sb $t5,15($fp)
# Original instruction: lb v13,10(v12)
la $t5,label_118_v12
lw $t5,0($t5)
lb $t4,10($t5)
la $t0,label_120_v13
sw $t4,0($t0)
# Original instruction: sb v13,14($fp)
la $t5,label_120_v13
lw $t5,0($t5)
sb $t5,14($fp)
# Original instruction: lb v13,9(v12)
la $t5,label_118_v12
lw $t5,0($t5)
lb $t4,9($t5)
la $t0,label_120_v13
sw $t4,0($t0)
# Original instruction: sb v13,13($fp)
la $t5,label_120_v13
lw $t5,0($t5)
sb $t5,13($fp)
# Original instruction: lb v13,8(v12)
la $t5,label_118_v12
lw $t5,0($t5)
lb $t4,8($t5)
la $t0,label_120_v13
sw $t4,0($t0)
# Original instruction: sb v13,12($fp)
la $t5,label_120_v13
lw $t5,0($t5)
sb $t5,12($fp)
# Original instruction: lb v13,7(v12)
la $t5,label_118_v12
lw $t5,0($t5)
lb $t4,7($t5)
la $t0,label_120_v13
sw $t4,0($t0)
# Original instruction: sb v13,11($fp)
la $t5,label_120_v13
lw $t5,0($t5)
sb $t5,11($fp)
# Original instruction: lb v13,6(v12)
la $t5,label_118_v12
lw $t5,0($t5)
lb $t4,6($t5)
la $t0,label_120_v13
sw $t4,0($t0)
# Original instruction: sb v13,10($fp)
la $t5,label_120_v13
lw $t5,0($t5)
sb $t5,10($fp)
# Original instruction: lb v13,5(v12)
la $t5,label_118_v12
lw $t5,0($t5)
lb $t4,5($t5)
la $t0,label_120_v13
sw $t4,0($t0)
# Original instruction: sb v13,9($fp)
la $t5,label_120_v13
lw $t5,0($t5)
sb $t5,9($fp)
# Original instruction: lb v13,4(v12)
la $t5,label_118_v12
lw $t5,0($t5)
lb $t4,4($t5)
la $t0,label_120_v13
sw $t4,0($t0)
# Original instruction: sb v13,8($fp)
la $t5,label_120_v13
lw $t5,0($t5)
sb $t5,8($fp)
# Original instruction: lb v13,3(v12)
la $t5,label_118_v12
lw $t5,0($t5)
lb $t4,3($t5)
la $t0,label_120_v13
sw $t4,0($t0)
# Original instruction: sb v13,7($fp)
la $t5,label_120_v13
lw $t5,0($t5)
sb $t5,7($fp)
# Original instruction: lb v13,2(v12)
la $t5,label_118_v12
lw $t5,0($t5)
lb $t4,2($t5)
la $t0,label_120_v13
sw $t4,0($t0)
# Original instruction: sb v13,6($fp)
la $t5,label_120_v13
lw $t5,0($t5)
sb $t5,6($fp)
# Original instruction: lb v13,1(v12)
la $t5,label_118_v12
lw $t5,0($t5)
lb $t4,1($t5)
la $t0,label_120_v13
sw $t4,0($t0)
# Original instruction: sb v13,5($fp)
la $t5,label_120_v13
lw $t5,0($t5)
sb $t5,5($fp)
# Original instruction: lb v13,0(v12)
la $t5,label_118_v12
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_120_v13
sw $t4,0($t0)
# Original instruction: sb v13,4($fp)
la $t5,label_120_v13
lw $t5,0($t5)
sb $t5,4($fp)
# Original instruction: j create_s1_FUNCTION_EPILOGUE
j create_s1_FUNCTION_EPILOGUE
create_s1_FUNCTION_EPILOGUE:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_60_v6
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_68_v10
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_71_v9
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_65_v8
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_21_v0
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_118_v12
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_63_v5
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_70_v11
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_27_v1
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_62_v7
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_120_v13
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_26_v3
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_29_v4
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_24_v2
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
create_s2_FUNCTION:
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
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: pushRegisters
la $t0,label_159_v22
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_161_v23
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_122_v14
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_130_v18
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_136_v19
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_128_v15
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_125_v16
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_127_v17
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_133_v20
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_135_v21
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addi v14,$fp,-12
addi $t5,$fp,-12
la $t0,label_122_v14
sw $t5,0($t0)
# Original instruction: addi v15,v14,0
la $t5,label_122_v14
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_128_v15
sw $t4,0($t0)
# Original instruction: addi v16,$fp,16
addi $t5,$fp,16
la $t0,label_125_v16
sw $t5,0($t0)
# Original instruction: lw v17,0(v16)
la $t5,label_125_v16
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_127_v17
sw $t4,0($t0)
# Original instruction: sw v17,0(v15)
la $t5,label_127_v17
lw $t5,0($t5)
la $t4,label_128_v15
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v18,$fp,-12
addi $t5,$fp,-12
la $t0,label_130_v18
sw $t5,0($t0)
# Original instruction: addi v19,v18,4
la $t5,label_130_v18
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_136_v19
sw $t4,0($t0)
# Original instruction: addi v20,$fp,12
addi $t5,$fp,12
la $t0,label_133_v20
sw $t5,0($t0)
# Original instruction: lw v21,0(v20)
la $t5,label_133_v20
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_135_v21
sw $t4,0($t0)
# Original instruction: sw v21,0(v19)
la $t5,label_135_v21
lw $t5,0($t5)
la $t4,label_136_v19
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v22,$fp,-12
addi $t5,$fp,-12
la $t0,label_159_v22
sw $t5,0($t0)
# Original instruction: lb v23,7(v22)
la $t5,label_159_v22
lw $t5,0($t5)
lb $t4,7($t5)
la $t0,label_161_v23
sw $t4,0($t0)
# Original instruction: sb v23,11($fp)
la $t5,label_161_v23
lw $t5,0($t5)
sb $t5,11($fp)
# Original instruction: lb v23,6(v22)
la $t5,label_159_v22
lw $t5,0($t5)
lb $t4,6($t5)
la $t0,label_161_v23
sw $t4,0($t0)
# Original instruction: sb v23,10($fp)
la $t5,label_161_v23
lw $t5,0($t5)
sb $t5,10($fp)
# Original instruction: lb v23,5(v22)
la $t5,label_159_v22
lw $t5,0($t5)
lb $t4,5($t5)
la $t0,label_161_v23
sw $t4,0($t0)
# Original instruction: sb v23,9($fp)
la $t5,label_161_v23
lw $t5,0($t5)
sb $t5,9($fp)
# Original instruction: lb v23,4(v22)
la $t5,label_159_v22
lw $t5,0($t5)
lb $t4,4($t5)
la $t0,label_161_v23
sw $t4,0($t0)
# Original instruction: sb v23,8($fp)
la $t5,label_161_v23
lw $t5,0($t5)
sb $t5,8($fp)
# Original instruction: lb v23,3(v22)
la $t5,label_159_v22
lw $t5,0($t5)
lb $t4,3($t5)
la $t0,label_161_v23
sw $t4,0($t0)
# Original instruction: sb v23,7($fp)
la $t5,label_161_v23
lw $t5,0($t5)
sb $t5,7($fp)
# Original instruction: lb v23,2(v22)
la $t5,label_159_v22
lw $t5,0($t5)
lb $t4,2($t5)
la $t0,label_161_v23
sw $t4,0($t0)
# Original instruction: sb v23,6($fp)
la $t5,label_161_v23
lw $t5,0($t5)
sb $t5,6($fp)
# Original instruction: lb v23,1(v22)
la $t5,label_159_v22
lw $t5,0($t5)
lb $t4,1($t5)
la $t0,label_161_v23
sw $t4,0($t0)
# Original instruction: sb v23,5($fp)
la $t5,label_161_v23
lw $t5,0($t5)
sb $t5,5($fp)
# Original instruction: lb v23,0(v22)
la $t5,label_159_v22
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_161_v23
sw $t4,0($t0)
# Original instruction: sb v23,4($fp)
la $t5,label_161_v23
lw $t5,0($t5)
sb $t5,4($fp)
# Original instruction: j create_s2_FUNCTION_EPILOGUE
j create_s2_FUNCTION_EPILOGUE
create_s2_FUNCTION_EPILOGUE:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_135_v21
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_133_v20
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_127_v17
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_125_v16
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_128_v15
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_136_v19
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_130_v18
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_122_v14
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_161_v23
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_159_v22
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
print_s1_FUNCTION:
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
la $t0,label_196_v30
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_205_v35
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_163_v24
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_169_v27
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_171_v28
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_165_v25
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_197_v31
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_199_v32
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_201_v33
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_194_v29
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_203_v34
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_167_v26
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addi v24,$fp,4
addi $t5,$fp,4
la $t0,label_163_v24
sw $t5,0($t0)
# Original instruction: addi v25,v24,0
la $t5,label_163_v24
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_165_v25
sw $t4,0($t0)
# Original instruction: lw v26,0(v25)
la $t5,label_165_v25
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_167_v26
sw $t4,0($t0)
# Original instruction: add $a0,v26,$zero
la $t5,label_167_v26
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_i_FUNCTION
jal print_i_FUNCTION
# Original instruction: la v27,label_0_STRING
la $t5,label_0_STRING
la $t0,label_169_v27
sw $t5,0($t0)
# Original instruction: add $a0,v27,$zero
la $t5,label_169_v27
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: addi v28,$fp,4
addi $t5,$fp,4
la $t0,label_171_v28
sw $t5,0($t0)
# Original instruction: addi v29,v28,4
la $t5,label_171_v28
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_194_v29
sw $t4,0($t0)
# Original instruction: lb v30,7(v29)
la $t5,label_194_v29
lw $t5,0($t5)
lb $t4,7($t5)
la $t0,label_196_v30
sw $t4,0($t0)
# Original instruction: sb v30,7($sp)
la $t5,label_196_v30
lw $t5,0($t5)
sb $t5,7($sp)
# Original instruction: lb v30,6(v29)
la $t5,label_194_v29
lw $t5,0($t5)
lb $t4,6($t5)
la $t0,label_196_v30
sw $t4,0($t0)
# Original instruction: sb v30,6($sp)
la $t5,label_196_v30
lw $t5,0($t5)
sb $t5,6($sp)
# Original instruction: lb v30,5(v29)
la $t5,label_194_v29
lw $t5,0($t5)
lb $t4,5($t5)
la $t0,label_196_v30
sw $t4,0($t0)
# Original instruction: sb v30,5($sp)
la $t5,label_196_v30
lw $t5,0($t5)
sb $t5,5($sp)
# Original instruction: lb v30,4(v29)
la $t5,label_194_v29
lw $t5,0($t5)
lb $t4,4($t5)
la $t0,label_196_v30
sw $t4,0($t0)
# Original instruction: sb v30,4($sp)
la $t5,label_196_v30
lw $t5,0($t5)
sb $t5,4($sp)
# Original instruction: lb v30,3(v29)
la $t5,label_194_v29
lw $t5,0($t5)
lb $t4,3($t5)
la $t0,label_196_v30
sw $t4,0($t0)
# Original instruction: sb v30,3($sp)
la $t5,label_196_v30
lw $t5,0($t5)
sb $t5,3($sp)
# Original instruction: lb v30,2(v29)
la $t5,label_194_v29
lw $t5,0($t5)
lb $t4,2($t5)
la $t0,label_196_v30
sw $t4,0($t0)
# Original instruction: sb v30,2($sp)
la $t5,label_196_v30
lw $t5,0($t5)
sb $t5,2($sp)
# Original instruction: lb v30,1(v29)
la $t5,label_194_v29
lw $t5,0($t5)
lb $t4,1($t5)
la $t0,label_196_v30
sw $t4,0($t0)
# Original instruction: sb v30,1($sp)
la $t5,label_196_v30
lw $t5,0($t5)
sb $t5,1($sp)
# Original instruction: lb v30,0(v29)
la $t5,label_194_v29
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_196_v30
sw $t4,0($t0)
# Original instruction: sb v30,0($sp)
la $t5,label_196_v30
lw $t5,0($t5)
sb $t5,0($sp)
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: jal print_s2_FUNCTION
jal print_s2_FUNCTION
# Original instruction: lw v31,0($sp)
lw $t5,0($sp)
la $t0,label_197_v31
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: la v32,label_1_STRING
la $t5,label_1_STRING
la $t0,label_199_v32
sw $t5,0($t0)
# Original instruction: add $a0,v32,$zero
la $t5,label_199_v32
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
# Original instruction: addi v33,$fp,4
addi $t5,$fp,4
la $t0,label_201_v33
sw $t5,0($t0)
# Original instruction: addi v34,v33,12
la $t5,label_201_v33
lw $t5,0($t5)
addi $t4,$t5,12
la $t0,label_203_v34
sw $t4,0($t0)
# Original instruction: lb v35,0(v34)
la $t5,label_203_v34
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_205_v35
sw $t4,0($t0)
# Original instruction: add $a0,v35,$zero
la $t5,label_205_v35
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
print_s1_FUNCTION_EPILOGUE:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_167_v26
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_203_v34
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_194_v29
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_201_v33
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_199_v32
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_197_v31
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_165_v25
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_171_v28
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_169_v27
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_163_v24
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_205_v35
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_196_v30
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
print_s2_FUNCTION:
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
la $t0,label_219_v42
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_207_v36
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_215_v40
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_213_v39
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_217_v41
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_209_v37
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_211_v38
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addi v36,$fp,4
addi $t5,$fp,4
la $t0,label_207_v36
sw $t5,0($t0)
# Original instruction: addi v37,v36,0
la $t5,label_207_v36
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_209_v37
sw $t4,0($t0)
# Original instruction: lw v38,0(v37)
la $t5,label_209_v37
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_211_v38
sw $t4,0($t0)
# Original instruction: add $a0,v38,$zero
la $t5,label_211_v38
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_i_FUNCTION
jal print_i_FUNCTION
# Original instruction: la v39,label_2_STRING
la $t5,label_2_STRING
la $t0,label_213_v39
sw $t5,0($t0)
# Original instruction: add $a0,v39,$zero
la $t5,label_213_v39
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
# Original instruction: addi v40,$fp,4
addi $t5,$fp,4
la $t0,label_215_v40
sw $t5,0($t0)
# Original instruction: addi v41,v40,4
la $t5,label_215_v40
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_217_v41
sw $t4,0($t0)
# Original instruction: lw v42,0(v41)
la $t5,label_217_v41
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_219_v42
sw $t4,0($t0)
# Original instruction: add $a0,v42,$zero
la $t5,label_219_v42
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_i_FUNCTION
jal print_i_FUNCTION
print_s2_FUNCTION_EPILOGUE:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_211_v38
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_209_v37
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_217_v41
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_213_v39
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_215_v40
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_207_v36
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_219_v42
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
# Original instruction: addiu $sp,$sp,-24
addiu $sp,$sp,-24
# Original instruction: pushRegisters
la $t0,label_254_v46
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_283_v50
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_313_v55
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_429_v60
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_257_v43
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_288_v53
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_377_v57
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_430_v61
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_222_v44
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_311_v54
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_315_v56
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_282_v49
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_256_v47
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_224_v45
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_427_v59
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_379_v58
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_380_v52
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_280_v48
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_285_v51
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addi v43,$fp,-28
addi $t5,$fp,-28
la $t0,label_257_v43
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: li v44,200
li $t5,200
la $t0,label_222_v44
sw $t5,0($t0)
# Original instruction: sw v44,0($sp)
la $t5,label_222_v44
lw $t5,0($t5)
sw $t5,0($sp)
# Original instruction: li v45,100
li $t5,100
la $t0,label_224_v45
sw $t5,0($t0)
# Original instruction: sw v45,4($sp)
la $t5,label_224_v45
lw $t5,0($t5)
sw $t5,4($sp)
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: jal create_s2_FUNCTION
jal create_s2_FUNCTION
# Original instruction: add v46,$zero,$sp
add $t5,$zero,$sp
la $t0,label_254_v46
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,16
addiu $sp,$sp,16
# Original instruction: lb v47,7(v46)
la $t5,label_254_v46
lw $t5,0($t5)
lb $t4,7($t5)
la $t0,label_256_v47
sw $t4,0($t0)
# Original instruction: sb v47,7(v43)
la $t5,label_256_v47
lw $t5,0($t5)
la $t4,label_257_v43
lw $t4,0($t4)
sb $t5,7($t4)
# Original instruction: lb v47,6(v46)
la $t5,label_254_v46
lw $t5,0($t5)
lb $t4,6($t5)
la $t0,label_256_v47
sw $t4,0($t0)
# Original instruction: sb v47,6(v43)
la $t5,label_256_v47
lw $t5,0($t5)
la $t4,label_257_v43
lw $t4,0($t4)
sb $t5,6($t4)
# Original instruction: lb v47,5(v46)
la $t5,label_254_v46
lw $t5,0($t5)
lb $t4,5($t5)
la $t0,label_256_v47
sw $t4,0($t0)
# Original instruction: sb v47,5(v43)
la $t5,label_256_v47
lw $t5,0($t5)
la $t4,label_257_v43
lw $t4,0($t4)
sb $t5,5($t4)
# Original instruction: lb v47,4(v46)
la $t5,label_254_v46
lw $t5,0($t5)
lb $t4,4($t5)
la $t0,label_256_v47
sw $t4,0($t0)
# Original instruction: sb v47,4(v43)
la $t5,label_256_v47
lw $t5,0($t5)
la $t4,label_257_v43
lw $t4,0($t4)
sb $t5,4($t4)
# Original instruction: lb v47,3(v46)
la $t5,label_254_v46
lw $t5,0($t5)
lb $t4,3($t5)
la $t0,label_256_v47
sw $t4,0($t0)
# Original instruction: sb v47,3(v43)
la $t5,label_256_v47
lw $t5,0($t5)
la $t4,label_257_v43
lw $t4,0($t4)
sb $t5,3($t4)
# Original instruction: lb v47,2(v46)
la $t5,label_254_v46
lw $t5,0($t5)
lb $t4,2($t5)
la $t0,label_256_v47
sw $t4,0($t0)
# Original instruction: sb v47,2(v43)
la $t5,label_256_v47
lw $t5,0($t5)
la $t4,label_257_v43
lw $t4,0($t4)
sb $t5,2($t4)
# Original instruction: lb v47,1(v46)
la $t5,label_254_v46
lw $t5,0($t5)
lb $t4,1($t5)
la $t0,label_256_v47
sw $t4,0($t0)
# Original instruction: sb v47,1(v43)
la $t5,label_256_v47
lw $t5,0($t5)
la $t4,label_257_v43
lw $t4,0($t4)
sb $t5,1($t4)
# Original instruction: lb v47,0(v46)
la $t5,label_254_v46
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_256_v47
sw $t4,0($t0)
# Original instruction: sb v47,0(v43)
la $t5,label_256_v47
lw $t5,0($t5)
la $t4,label_257_v43
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu $sp,$sp,-8
addiu $sp,$sp,-8
# Original instruction: addi v48,$fp,-28
addi $t5,$fp,-28
la $t0,label_280_v48
sw $t5,0($t0)
# Original instruction: lb v49,7(v48)
la $t5,label_280_v48
lw $t5,0($t5)
lb $t4,7($t5)
la $t0,label_282_v49
sw $t4,0($t0)
# Original instruction: sb v49,7($sp)
la $t5,label_282_v49
lw $t5,0($t5)
sb $t5,7($sp)
# Original instruction: lb v49,6(v48)
la $t5,label_280_v48
lw $t5,0($t5)
lb $t4,6($t5)
la $t0,label_282_v49
sw $t4,0($t0)
# Original instruction: sb v49,6($sp)
la $t5,label_282_v49
lw $t5,0($t5)
sb $t5,6($sp)
# Original instruction: lb v49,5(v48)
la $t5,label_280_v48
lw $t5,0($t5)
lb $t4,5($t5)
la $t0,label_282_v49
sw $t4,0($t0)
# Original instruction: sb v49,5($sp)
la $t5,label_282_v49
lw $t5,0($t5)
sb $t5,5($sp)
# Original instruction: lb v49,4(v48)
la $t5,label_280_v48
lw $t5,0($t5)
lb $t4,4($t5)
la $t0,label_282_v49
sw $t4,0($t0)
# Original instruction: sb v49,4($sp)
la $t5,label_282_v49
lw $t5,0($t5)
sb $t5,4($sp)
# Original instruction: lb v49,3(v48)
la $t5,label_280_v48
lw $t5,0($t5)
lb $t4,3($t5)
la $t0,label_282_v49
sw $t4,0($t0)
# Original instruction: sb v49,3($sp)
la $t5,label_282_v49
lw $t5,0($t5)
sb $t5,3($sp)
# Original instruction: lb v49,2(v48)
la $t5,label_280_v48
lw $t5,0($t5)
lb $t4,2($t5)
la $t0,label_282_v49
sw $t4,0($t0)
# Original instruction: sb v49,2($sp)
la $t5,label_282_v49
lw $t5,0($t5)
sb $t5,2($sp)
# Original instruction: lb v49,1(v48)
la $t5,label_280_v48
lw $t5,0($t5)
lb $t4,1($t5)
la $t0,label_282_v49
sw $t4,0($t0)
# Original instruction: sb v49,1($sp)
la $t5,label_282_v49
lw $t5,0($t5)
sb $t5,1($sp)
# Original instruction: lb v49,0(v48)
la $t5,label_280_v48
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_282_v49
sw $t4,0($t0)
# Original instruction: sb v49,0($sp)
la $t5,label_282_v49
lw $t5,0($t5)
sb $t5,0($sp)
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: jal print_s2_FUNCTION
jal print_s2_FUNCTION
# Original instruction: lw v50,0($sp)
lw $t5,0($sp)
la $t0,label_283_v50
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,8
addiu $sp,$sp,8
# Original instruction: addi v51,$zero,10
addi $t5,$zero,10
la $t0,label_285_v51
sw $t5,0($t0)
# Original instruction: add $a0,v51,$zero
la $t5,label_285_v51
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
# Original instruction: addi v52,$fp,-20
addi $t5,$fp,-20
la $t0,label_380_v52
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,-16
addiu $sp,$sp,-16
# Original instruction: addi v53,$zero,98
addi $t5,$zero,98
la $t0,label_288_v53
sw $t5,0($t0)
# Original instruction: sb v53,0($sp)
la $t5,label_288_v53
lw $t5,0($t5)
sb $t5,0($sp)
# Original instruction: addi v54,$fp,-28
addi $t5,$fp,-28
la $t0,label_311_v54
sw $t5,0($t0)
# Original instruction: lb v55,7(v54)
la $t5,label_311_v54
lw $t5,0($t5)
lb $t4,7($t5)
la $t0,label_313_v55
sw $t4,0($t0)
# Original instruction: sb v55,11($sp)
la $t5,label_313_v55
lw $t5,0($t5)
sb $t5,11($sp)
# Original instruction: lb v55,6(v54)
la $t5,label_311_v54
lw $t5,0($t5)
lb $t4,6($t5)
la $t0,label_313_v55
sw $t4,0($t0)
# Original instruction: sb v55,10($sp)
la $t5,label_313_v55
lw $t5,0($t5)
sb $t5,10($sp)
# Original instruction: lb v55,5(v54)
la $t5,label_311_v54
lw $t5,0($t5)
lb $t4,5($t5)
la $t0,label_313_v55
sw $t4,0($t0)
# Original instruction: sb v55,9($sp)
la $t5,label_313_v55
lw $t5,0($t5)
sb $t5,9($sp)
# Original instruction: lb v55,4(v54)
la $t5,label_311_v54
lw $t5,0($t5)
lb $t4,4($t5)
la $t0,label_313_v55
sw $t4,0($t0)
# Original instruction: sb v55,8($sp)
la $t5,label_313_v55
lw $t5,0($t5)
sb $t5,8($sp)
# Original instruction: lb v55,3(v54)
la $t5,label_311_v54
lw $t5,0($t5)
lb $t4,3($t5)
la $t0,label_313_v55
sw $t4,0($t0)
# Original instruction: sb v55,7($sp)
la $t5,label_313_v55
lw $t5,0($t5)
sb $t5,7($sp)
# Original instruction: lb v55,2(v54)
la $t5,label_311_v54
lw $t5,0($t5)
lb $t4,2($t5)
la $t0,label_313_v55
sw $t4,0($t0)
# Original instruction: sb v55,6($sp)
la $t5,label_313_v55
lw $t5,0($t5)
sb $t5,6($sp)
# Original instruction: lb v55,1(v54)
la $t5,label_311_v54
lw $t5,0($t5)
lb $t4,1($t5)
la $t0,label_313_v55
sw $t4,0($t0)
# Original instruction: sb v55,5($sp)
la $t5,label_313_v55
lw $t5,0($t5)
sb $t5,5($sp)
# Original instruction: lb v55,0(v54)
la $t5,label_311_v54
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_313_v55
sw $t4,0($t0)
# Original instruction: sb v55,4($sp)
la $t5,label_313_v55
lw $t5,0($t5)
sb $t5,4($sp)
# Original instruction: li v56,500
li $t5,500
la $t0,label_315_v56
sw $t5,0($t0)
# Original instruction: sw v56,12($sp)
la $t5,label_315_v56
lw $t5,0($t5)
sw $t5,12($sp)
# Original instruction: addiu $sp,$sp,-16
addiu $sp,$sp,-16
# Original instruction: jal create_s1_FUNCTION
jal create_s1_FUNCTION
# Original instruction: add v57,$zero,$sp
add $t5,$zero,$sp
la $t0,label_377_v57
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,32
addiu $sp,$sp,32
# Original instruction: lb v58,15(v57)
la $t5,label_377_v57
lw $t5,0($t5)
lb $t4,15($t5)
la $t0,label_379_v58
sw $t4,0($t0)
# Original instruction: sb v58,15(v52)
la $t5,label_379_v58
lw $t5,0($t5)
la $t4,label_380_v52
lw $t4,0($t4)
sb $t5,15($t4)
# Original instruction: lb v58,14(v57)
la $t5,label_377_v57
lw $t5,0($t5)
lb $t4,14($t5)
la $t0,label_379_v58
sw $t4,0($t0)
# Original instruction: sb v58,14(v52)
la $t5,label_379_v58
lw $t5,0($t5)
la $t4,label_380_v52
lw $t4,0($t4)
sb $t5,14($t4)
# Original instruction: lb v58,13(v57)
la $t5,label_377_v57
lw $t5,0($t5)
lb $t4,13($t5)
la $t0,label_379_v58
sw $t4,0($t0)
# Original instruction: sb v58,13(v52)
la $t5,label_379_v58
lw $t5,0($t5)
la $t4,label_380_v52
lw $t4,0($t4)
sb $t5,13($t4)
# Original instruction: lb v58,12(v57)
la $t5,label_377_v57
lw $t5,0($t5)
lb $t4,12($t5)
la $t0,label_379_v58
sw $t4,0($t0)
# Original instruction: sb v58,12(v52)
la $t5,label_379_v58
lw $t5,0($t5)
la $t4,label_380_v52
lw $t4,0($t4)
sb $t5,12($t4)
# Original instruction: lb v58,11(v57)
la $t5,label_377_v57
lw $t5,0($t5)
lb $t4,11($t5)
la $t0,label_379_v58
sw $t4,0($t0)
# Original instruction: sb v58,11(v52)
la $t5,label_379_v58
lw $t5,0($t5)
la $t4,label_380_v52
lw $t4,0($t4)
sb $t5,11($t4)
# Original instruction: lb v58,10(v57)
la $t5,label_377_v57
lw $t5,0($t5)
lb $t4,10($t5)
la $t0,label_379_v58
sw $t4,0($t0)
# Original instruction: sb v58,10(v52)
la $t5,label_379_v58
lw $t5,0($t5)
la $t4,label_380_v52
lw $t4,0($t4)
sb $t5,10($t4)
# Original instruction: lb v58,9(v57)
la $t5,label_377_v57
lw $t5,0($t5)
lb $t4,9($t5)
la $t0,label_379_v58
sw $t4,0($t0)
# Original instruction: sb v58,9(v52)
la $t5,label_379_v58
lw $t5,0($t5)
la $t4,label_380_v52
lw $t4,0($t4)
sb $t5,9($t4)
# Original instruction: lb v58,8(v57)
la $t5,label_377_v57
lw $t5,0($t5)
lb $t4,8($t5)
la $t0,label_379_v58
sw $t4,0($t0)
# Original instruction: sb v58,8(v52)
la $t5,label_379_v58
lw $t5,0($t5)
la $t4,label_380_v52
lw $t4,0($t4)
sb $t5,8($t4)
# Original instruction: lb v58,7(v57)
la $t5,label_377_v57
lw $t5,0($t5)
lb $t4,7($t5)
la $t0,label_379_v58
sw $t4,0($t0)
# Original instruction: sb v58,7(v52)
la $t5,label_379_v58
lw $t5,0($t5)
la $t4,label_380_v52
lw $t4,0($t4)
sb $t5,7($t4)
# Original instruction: lb v58,6(v57)
la $t5,label_377_v57
lw $t5,0($t5)
lb $t4,6($t5)
la $t0,label_379_v58
sw $t4,0($t0)
# Original instruction: sb v58,6(v52)
la $t5,label_379_v58
lw $t5,0($t5)
la $t4,label_380_v52
lw $t4,0($t4)
sb $t5,6($t4)
# Original instruction: lb v58,5(v57)
la $t5,label_377_v57
lw $t5,0($t5)
lb $t4,5($t5)
la $t0,label_379_v58
sw $t4,0($t0)
# Original instruction: sb v58,5(v52)
la $t5,label_379_v58
lw $t5,0($t5)
la $t4,label_380_v52
lw $t4,0($t4)
sb $t5,5($t4)
# Original instruction: lb v58,4(v57)
la $t5,label_377_v57
lw $t5,0($t5)
lb $t4,4($t5)
la $t0,label_379_v58
sw $t4,0($t0)
# Original instruction: sb v58,4(v52)
la $t5,label_379_v58
lw $t5,0($t5)
la $t4,label_380_v52
lw $t4,0($t4)
sb $t5,4($t4)
# Original instruction: lb v58,3(v57)
la $t5,label_377_v57
lw $t5,0($t5)
lb $t4,3($t5)
la $t0,label_379_v58
sw $t4,0($t0)
# Original instruction: sb v58,3(v52)
la $t5,label_379_v58
lw $t5,0($t5)
la $t4,label_380_v52
lw $t4,0($t4)
sb $t5,3($t4)
# Original instruction: lb v58,2(v57)
la $t5,label_377_v57
lw $t5,0($t5)
lb $t4,2($t5)
la $t0,label_379_v58
sw $t4,0($t0)
# Original instruction: sb v58,2(v52)
la $t5,label_379_v58
lw $t5,0($t5)
la $t4,label_380_v52
lw $t4,0($t4)
sb $t5,2($t4)
# Original instruction: lb v58,1(v57)
la $t5,label_377_v57
lw $t5,0($t5)
lb $t4,1($t5)
la $t0,label_379_v58
sw $t4,0($t0)
# Original instruction: sb v58,1(v52)
la $t5,label_379_v58
lw $t5,0($t5)
la $t4,label_380_v52
lw $t4,0($t4)
sb $t5,1($t4)
# Original instruction: lb v58,0(v57)
la $t5,label_377_v57
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_379_v58
sw $t4,0($t0)
# Original instruction: sb v58,0(v52)
la $t5,label_379_v58
lw $t5,0($t5)
la $t4,label_380_v52
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addiu $sp,$sp,-16
addiu $sp,$sp,-16
# Original instruction: addi v59,$fp,-20
addi $t5,$fp,-20
la $t0,label_427_v59
sw $t5,0($t0)
# Original instruction: lb v60,15(v59)
la $t5,label_427_v59
lw $t5,0($t5)
lb $t4,15($t5)
la $t0,label_429_v60
sw $t4,0($t0)
# Original instruction: sb v60,15($sp)
la $t5,label_429_v60
lw $t5,0($t5)
sb $t5,15($sp)
# Original instruction: lb v60,14(v59)
la $t5,label_427_v59
lw $t5,0($t5)
lb $t4,14($t5)
la $t0,label_429_v60
sw $t4,0($t0)
# Original instruction: sb v60,14($sp)
la $t5,label_429_v60
lw $t5,0($t5)
sb $t5,14($sp)
# Original instruction: lb v60,13(v59)
la $t5,label_427_v59
lw $t5,0($t5)
lb $t4,13($t5)
la $t0,label_429_v60
sw $t4,0($t0)
# Original instruction: sb v60,13($sp)
la $t5,label_429_v60
lw $t5,0($t5)
sb $t5,13($sp)
# Original instruction: lb v60,12(v59)
la $t5,label_427_v59
lw $t5,0($t5)
lb $t4,12($t5)
la $t0,label_429_v60
sw $t4,0($t0)
# Original instruction: sb v60,12($sp)
la $t5,label_429_v60
lw $t5,0($t5)
sb $t5,12($sp)
# Original instruction: lb v60,11(v59)
la $t5,label_427_v59
lw $t5,0($t5)
lb $t4,11($t5)
la $t0,label_429_v60
sw $t4,0($t0)
# Original instruction: sb v60,11($sp)
la $t5,label_429_v60
lw $t5,0($t5)
sb $t5,11($sp)
# Original instruction: lb v60,10(v59)
la $t5,label_427_v59
lw $t5,0($t5)
lb $t4,10($t5)
la $t0,label_429_v60
sw $t4,0($t0)
# Original instruction: sb v60,10($sp)
la $t5,label_429_v60
lw $t5,0($t5)
sb $t5,10($sp)
# Original instruction: lb v60,9(v59)
la $t5,label_427_v59
lw $t5,0($t5)
lb $t4,9($t5)
la $t0,label_429_v60
sw $t4,0($t0)
# Original instruction: sb v60,9($sp)
la $t5,label_429_v60
lw $t5,0($t5)
sb $t5,9($sp)
# Original instruction: lb v60,8(v59)
la $t5,label_427_v59
lw $t5,0($t5)
lb $t4,8($t5)
la $t0,label_429_v60
sw $t4,0($t0)
# Original instruction: sb v60,8($sp)
la $t5,label_429_v60
lw $t5,0($t5)
sb $t5,8($sp)
# Original instruction: lb v60,7(v59)
la $t5,label_427_v59
lw $t5,0($t5)
lb $t4,7($t5)
la $t0,label_429_v60
sw $t4,0($t0)
# Original instruction: sb v60,7($sp)
la $t5,label_429_v60
lw $t5,0($t5)
sb $t5,7($sp)
# Original instruction: lb v60,6(v59)
la $t5,label_427_v59
lw $t5,0($t5)
lb $t4,6($t5)
la $t0,label_429_v60
sw $t4,0($t0)
# Original instruction: sb v60,6($sp)
la $t5,label_429_v60
lw $t5,0($t5)
sb $t5,6($sp)
# Original instruction: lb v60,5(v59)
la $t5,label_427_v59
lw $t5,0($t5)
lb $t4,5($t5)
la $t0,label_429_v60
sw $t4,0($t0)
# Original instruction: sb v60,5($sp)
la $t5,label_429_v60
lw $t5,0($t5)
sb $t5,5($sp)
# Original instruction: lb v60,4(v59)
la $t5,label_427_v59
lw $t5,0($t5)
lb $t4,4($t5)
la $t0,label_429_v60
sw $t4,0($t0)
# Original instruction: sb v60,4($sp)
la $t5,label_429_v60
lw $t5,0($t5)
sb $t5,4($sp)
# Original instruction: lb v60,3(v59)
la $t5,label_427_v59
lw $t5,0($t5)
lb $t4,3($t5)
la $t0,label_429_v60
sw $t4,0($t0)
# Original instruction: sb v60,3($sp)
la $t5,label_429_v60
lw $t5,0($t5)
sb $t5,3($sp)
# Original instruction: lb v60,2(v59)
la $t5,label_427_v59
lw $t5,0($t5)
lb $t4,2($t5)
la $t0,label_429_v60
sw $t4,0($t0)
# Original instruction: sb v60,2($sp)
la $t5,label_429_v60
lw $t5,0($t5)
sb $t5,2($sp)
# Original instruction: lb v60,1(v59)
la $t5,label_427_v59
lw $t5,0($t5)
lb $t4,1($t5)
la $t0,label_429_v60
sw $t4,0($t0)
# Original instruction: sb v60,1($sp)
la $t5,label_429_v60
lw $t5,0($t5)
sb $t5,1($sp)
# Original instruction: lb v60,0(v59)
la $t5,label_427_v59
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_429_v60
sw $t4,0($t0)
# Original instruction: sb v60,0($sp)
la $t5,label_429_v60
lw $t5,0($t5)
sb $t5,0($sp)
# Original instruction: addiu $sp,$sp,0
addiu $sp,$sp,0
# Original instruction: jal print_s1_FUNCTION
jal print_s1_FUNCTION
# Original instruction: lw v61,0($sp)
lw $t5,0($sp)
la $t0,label_430_v61
sw $t5,0($t0)
# Original instruction: addiu $sp,$sp,16
addiu $sp,$sp,16
main_FUNCTION_EPILOGUE:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_285_v51
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_280_v48
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_380_v52
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_379_v58
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_427_v59
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_224_v45
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_256_v47
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_282_v49
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_315_v56
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_311_v54
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_222_v44
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_430_v61
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_377_v57
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_288_v53
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_257_v43
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_429_v60
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_313_v55
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_283_v50
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_254_v46
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

