.data
label_0_global:
.space 3
.align 2
# Allocated labels for virtual registers
# Allocated labels for virtual registers
label_151_v42:
.space 4
label_180_v53:
.space 4
label_229_v68:
.space 4
label_197_v59:
.space 4
label_204_v61:
.space 4
label_173_v51:
.space 4
label_44_v8:
.space 4
label_125_v35:
.space 4
label_69_v16:
.space 4
label_68_v17:
.space 4
label_181_v52:
.space 4
label_217_v64:
.space 4
label_233_v71:
.space 4
label_76_v18:
.space 4
label_155_v44:
.space 4
label_257_v77:
.space 4
label_21_v3:
.space 4
label_262_v80:
.space 4
label_176_v50:
.space 4
label_188_v54:
.space 4
label_185_v55:
.space 4
label_263_v76:
.space 4
label_132_v37:
.space 4
label_61_v15:
.space 4
label_88_v23:
.space 4
label_236_v70:
.space 4
label_96_v24:
.space 4
label_165_v47:
.space 4
label_113_v31:
.space 4
label_29_v4:
.space 4
label_104_v26:
.space 4
label_133_v36:
.space 4
label_109_v28:
.space 4
label_140_v38:
.space 4
label_159_v46:
.space 4
label_13_v1:
.space 4
label_28_v5:
.space 4
label_254_v78:
.space 4
label_221_v67:
.space 4
label_265_v81:
.space 4
label_49_v10:
.space 4
label_93_v25:
.space 4
label_167_v48:
.space 4
label_137_v39:
.space 4
label_169_v49:
.space 4
label_248_v74:
.space 4
label_89_v22:
.space 4
label_193_v56:
.space 4
label_200_v58:
.space 4
label_53_v13:
.space 4
label_36_v6:
.space 4
label_153_v43:
.space 4
label_24_v2:
.space 4
label_128_v34:
.space 4
label_216_v65:
.space 4
label_121_v32:
.space 4
label_205_v60:
.space 4
label_241_v72:
.space 4
label_240_v73:
.space 4
label_33_v7:
.space 4
label_212_v62:
.space 4
label_116_v30:
.space 4
label_108_v29:
.space 4
label_209_v63:
.space 4
label_120_v33:
.space 4
label_56_v12:
.space 4
label_148_v40:
.space 4
label_48_v11:
.space 4
label_81_v21:
.space 4
label_16_v0:
.space 4
label_228_v69:
.space 4
label_41_v9:
.space 4
label_73_v19:
.space 4
label_145_v41:
.space 4
label_84_v20:
.space 4
label_101_v27:
.space 4
label_162_v45:
.space 4
label_260_v79:
.space 4
label_267_v82:
.space 4
label_224_v66:
.space 4
label_192_v57:
.space 4
label_64_v14:
.space 4
label_245_v75:
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
# Original instruction: addiu $sp,$sp,-16
addiu $sp,$sp,-16
# Original instruction: pushRegisters
la $t0,label_151_v42
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_180_v53
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_229_v68
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_197_v59
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_204_v61
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_173_v51
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_44_v8
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_125_v35
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_69_v16
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_68_v17
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_181_v52
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_217_v64
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_233_v71
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_76_v18
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_155_v44
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_257_v77
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_21_v3
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_262_v80
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_176_v50
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_188_v54
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_185_v55
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_263_v76
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_132_v37
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_61_v15
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_88_v23
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_236_v70
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_96_v24
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_165_v47
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_113_v31
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_29_v4
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_104_v26
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_133_v36
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_109_v28
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_140_v38
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_159_v46
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_13_v1
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_28_v5
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_254_v78
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_221_v67
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_265_v81
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_49_v10
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_93_v25
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_167_v48
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_137_v39
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_169_v49
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_248_v74
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_89_v22
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_193_v56
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_200_v58
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_53_v13
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_36_v6
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_153_v43
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_24_v2
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_128_v34
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_216_v65
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_121_v32
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_205_v60
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_241_v72
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_240_v73
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_33_v7
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_212_v62
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_116_v30
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_108_v29
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_209_v63
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_120_v33
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_56_v12
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_148_v40
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_48_v11
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_81_v21
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_16_v0
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_228_v69
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_41_v9
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_73_v19
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_145_v41
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_84_v20
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_101_v27
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_162_v45
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_260_v79
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_267_v82
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_224_v66
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_192_v57
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_64_v14
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_245_v75
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addi v0,$fp,-12
addi $t5,$fp,-12
la $t0,label_16_v0
sw $t5,0($t0)
# Original instruction: li v1,0
li $t5,0
la $t0,label_13_v1
sw $t5,0($t0)
# Original instruction: li v2,3
li $t5,3
la $t0,label_24_v2
sw $t5,0($t0)
# Original instruction: mul v2,v1,v2
la $t5,label_13_v1
lw $t5,0($t5)
la $t3,label_24_v2
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_24_v2
sw $t3,0($t0)
# Original instruction: add v2,v0,v2
la $t5,label_16_v0
lw $t5,0($t5)
la $t3,label_24_v2
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_24_v2
sw $t3,0($t0)
# Original instruction: li v3,0
li $t5,0
la $t0,label_21_v3
sw $t5,0($t0)
# Original instruction: li v4,1
li $t5,1
la $t0,label_29_v4
sw $t5,0($t0)
# Original instruction: mul v4,v3,v4
la $t5,label_21_v3
lw $t5,0($t5)
la $t3,label_29_v4
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_29_v4
sw $t3,0($t0)
# Original instruction: add v4,v2,v4
la $t5,label_24_v2
lw $t5,0($t5)
la $t3,label_29_v4
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_29_v4
sw $t3,0($t0)
# Original instruction: addi v5,$zero,49
addi $t5,$zero,49
la $t0,label_28_v5
sw $t5,0($t0)
# Original instruction: sb v5,0(v4)
la $t5,label_28_v5
lw $t5,0($t5)
la $t4,label_29_v4
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v6,$fp,-12
addi $t5,$fp,-12
la $t0,label_36_v6
sw $t5,0($t0)
# Original instruction: li v7,0
li $t5,0
la $t0,label_33_v7
sw $t5,0($t0)
# Original instruction: li v8,3
li $t5,3
la $t0,label_44_v8
sw $t5,0($t0)
# Original instruction: mul v8,v7,v8
la $t5,label_33_v7
lw $t5,0($t5)
la $t3,label_44_v8
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_44_v8
sw $t3,0($t0)
# Original instruction: add v8,v6,v8
la $t5,label_36_v6
lw $t5,0($t5)
la $t3,label_44_v8
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_44_v8
sw $t3,0($t0)
# Original instruction: li v9,1
li $t5,1
la $t0,label_41_v9
sw $t5,0($t0)
# Original instruction: li v10,1
li $t5,1
la $t0,label_49_v10
sw $t5,0($t0)
# Original instruction: mul v10,v9,v10
la $t5,label_41_v9
lw $t5,0($t5)
la $t3,label_49_v10
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_49_v10
sw $t3,0($t0)
# Original instruction: add v10,v8,v10
la $t5,label_44_v8
lw $t5,0($t5)
la $t3,label_49_v10
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_49_v10
sw $t3,0($t0)
# Original instruction: addi v11,$zero,50
addi $t5,$zero,50
la $t0,label_48_v11
sw $t5,0($t0)
# Original instruction: sb v11,0(v10)
la $t5,label_48_v11
lw $t5,0($t5)
la $t4,label_49_v10
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v12,$fp,-12
addi $t5,$fp,-12
la $t0,label_56_v12
sw $t5,0($t0)
# Original instruction: li v13,0
li $t5,0
la $t0,label_53_v13
sw $t5,0($t0)
# Original instruction: li v14,3
li $t5,3
la $t0,label_64_v14
sw $t5,0($t0)
# Original instruction: mul v14,v13,v14
la $t5,label_53_v13
lw $t5,0($t5)
la $t3,label_64_v14
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_64_v14
sw $t3,0($t0)
# Original instruction: add v14,v12,v14
la $t5,label_56_v12
lw $t5,0($t5)
la $t3,label_64_v14
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_64_v14
sw $t3,0($t0)
# Original instruction: li v15,2
li $t5,2
la $t0,label_61_v15
sw $t5,0($t0)
# Original instruction: li v16,1
li $t5,1
la $t0,label_69_v16
sw $t5,0($t0)
# Original instruction: mul v16,v15,v16
la $t5,label_61_v15
lw $t5,0($t5)
la $t3,label_69_v16
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_69_v16
sw $t3,0($t0)
# Original instruction: add v16,v14,v16
la $t5,label_64_v14
lw $t5,0($t5)
la $t3,label_69_v16
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_69_v16
sw $t3,0($t0)
# Original instruction: addi v17,$zero,120
addi $t5,$zero,120
la $t0,label_68_v17
sw $t5,0($t0)
# Original instruction: sb v17,0(v16)
la $t5,label_68_v17
lw $t5,0($t5)
la $t4,label_69_v16
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v18,$fp,-12
addi $t5,$fp,-12
la $t0,label_76_v18
sw $t5,0($t0)
# Original instruction: li v19,1
li $t5,1
la $t0,label_73_v19
sw $t5,0($t0)
# Original instruction: li v20,3
li $t5,3
la $t0,label_84_v20
sw $t5,0($t0)
# Original instruction: mul v20,v19,v20
la $t5,label_73_v19
lw $t5,0($t5)
la $t3,label_84_v20
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_84_v20
sw $t3,0($t0)
# Original instruction: add v20,v18,v20
la $t5,label_76_v18
lw $t5,0($t5)
la $t3,label_84_v20
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_84_v20
sw $t3,0($t0)
# Original instruction: li v21,0
li $t5,0
la $t0,label_81_v21
sw $t5,0($t0)
# Original instruction: li v22,1
li $t5,1
la $t0,label_89_v22
sw $t5,0($t0)
# Original instruction: mul v22,v21,v22
la $t5,label_81_v21
lw $t5,0($t5)
la $t3,label_89_v22
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_89_v22
sw $t3,0($t0)
# Original instruction: add v22,v20,v22
la $t5,label_84_v20
lw $t5,0($t5)
la $t3,label_89_v22
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_89_v22
sw $t3,0($t0)
# Original instruction: addi v23,$zero,51
addi $t5,$zero,51
la $t0,label_88_v23
sw $t5,0($t0)
# Original instruction: sb v23,0(v22)
la $t5,label_88_v23
lw $t5,0($t5)
la $t4,label_89_v22
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v24,$fp,-12
addi $t5,$fp,-12
la $t0,label_96_v24
sw $t5,0($t0)
# Original instruction: li v25,1
li $t5,1
la $t0,label_93_v25
sw $t5,0($t0)
# Original instruction: li v26,3
li $t5,3
la $t0,label_104_v26
sw $t5,0($t0)
# Original instruction: mul v26,v25,v26
la $t5,label_93_v25
lw $t5,0($t5)
la $t3,label_104_v26
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_104_v26
sw $t3,0($t0)
# Original instruction: add v26,v24,v26
la $t5,label_96_v24
lw $t5,0($t5)
la $t3,label_104_v26
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_104_v26
sw $t3,0($t0)
# Original instruction: li v27,1
li $t5,1
la $t0,label_101_v27
sw $t5,0($t0)
# Original instruction: li v28,1
li $t5,1
la $t0,label_109_v28
sw $t5,0($t0)
# Original instruction: mul v28,v27,v28
la $t5,label_101_v27
lw $t5,0($t5)
la $t3,label_109_v28
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_109_v28
sw $t3,0($t0)
# Original instruction: add v28,v26,v28
la $t5,label_104_v26
lw $t5,0($t5)
la $t3,label_109_v28
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_109_v28
sw $t3,0($t0)
# Original instruction: addi v29,$zero,52
addi $t5,$zero,52
la $t0,label_108_v29
sw $t5,0($t0)
# Original instruction: sb v29,0(v28)
la $t5,label_108_v29
lw $t5,0($t5)
la $t4,label_109_v28
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: la v30,label_0_global
la $t5,label_0_global
la $t0,label_116_v30
sw $t5,0($t0)
# Original instruction: li v31,0
li $t5,0
la $t0,label_113_v31
sw $t5,0($t0)
# Original instruction: li v32,1
li $t5,1
la $t0,label_121_v32
sw $t5,0($t0)
# Original instruction: mul v32,v31,v32
la $t5,label_113_v31
lw $t5,0($t5)
la $t3,label_121_v32
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_121_v32
sw $t3,0($t0)
# Original instruction: add v32,v30,v32
la $t5,label_116_v30
lw $t5,0($t5)
la $t3,label_121_v32
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_121_v32
sw $t3,0($t0)
# Original instruction: addi v33,$zero,103
addi $t5,$zero,103
la $t0,label_120_v33
sw $t5,0($t0)
# Original instruction: sb v33,0(v32)
la $t5,label_120_v33
lw $t5,0($t5)
la $t4,label_121_v32
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: la v34,label_0_global
la $t5,label_0_global
la $t0,label_128_v34
sw $t5,0($t0)
# Original instruction: li v35,2
li $t5,2
la $t0,label_125_v35
sw $t5,0($t0)
# Original instruction: li v36,1
li $t5,1
la $t0,label_133_v36
sw $t5,0($t0)
# Original instruction: mul v36,v35,v36
la $t5,label_125_v35
lw $t5,0($t5)
la $t3,label_133_v36
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_133_v36
sw $t3,0($t0)
# Original instruction: add v36,v34,v36
la $t5,label_128_v34
lw $t5,0($t5)
la $t3,label_133_v36
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_133_v36
sw $t3,0($t0)
# Original instruction: addi v37,$zero,108
addi $t5,$zero,108
la $t0,label_132_v37
sw $t5,0($t0)
# Original instruction: sb v37,0(v36)
la $t5,label_132_v37
lw $t5,0($t5)
la $t4,label_133_v36
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v38,$fp,-12
addi $t5,$fp,-12
la $t0,label_140_v38
sw $t5,0($t0)
# Original instruction: li v39,0
li $t5,0
la $t0,label_137_v39
sw $t5,0($t0)
# Original instruction: li v40,3
li $t5,3
la $t0,label_148_v40
sw $t5,0($t0)
# Original instruction: mul v40,v39,v40
la $t5,label_137_v39
lw $t5,0($t5)
la $t3,label_148_v40
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_148_v40
sw $t3,0($t0)
# Original instruction: add v40,v38,v40
la $t5,label_140_v38
lw $t5,0($t5)
la $t3,label_148_v40
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_148_v40
sw $t3,0($t0)
# Original instruction: li v41,2
li $t5,2
la $t0,label_145_v41
sw $t5,0($t0)
# Original instruction: li v42,1
li $t5,1
la $t0,label_151_v42
sw $t5,0($t0)
# Original instruction: mul v42,v41,v42
la $t5,label_145_v41
lw $t5,0($t5)
la $t3,label_151_v42
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_151_v42
sw $t3,0($t0)
# Original instruction: add v42,v40,v42
la $t5,label_148_v40
lw $t5,0($t5)
la $t3,label_151_v42
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_151_v42
sw $t3,0($t0)
# Original instruction: lb v43,0(v42)
la $t5,label_151_v42
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_153_v43
sw $t4,0($t0)
# Original instruction: add $a0,v43,$zero
la $t5,label_153_v43
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
# Original instruction: addi v44,$zero,10
addi $t5,$zero,10
la $t0,label_155_v44
sw $t5,0($t0)
# Original instruction: add $a0,v44,$zero
la $t5,label_155_v44
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
# Original instruction: la v45,label_0_global
la $t5,label_0_global
la $t0,label_162_v45
sw $t5,0($t0)
# Original instruction: li v46,2
li $t5,2
la $t0,label_159_v46
sw $t5,0($t0)
# Original instruction: li v47,1
li $t5,1
la $t0,label_165_v47
sw $t5,0($t0)
# Original instruction: mul v47,v46,v47
la $t5,label_159_v46
lw $t5,0($t5)
la $t3,label_165_v47
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_165_v47
sw $t3,0($t0)
# Original instruction: add v47,v45,v47
la $t5,label_162_v45
lw $t5,0($t5)
la $t3,label_165_v47
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_165_v47
sw $t3,0($t0)
# Original instruction: lb v48,0(v47)
la $t5,label_165_v47
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_167_v48
sw $t4,0($t0)
# Original instruction: add $a0,v48,$zero
la $t5,label_167_v48
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
# Original instruction: addi v49,$zero,10
addi $t5,$zero,10
la $t0,label_169_v49
sw $t5,0($t0)
# Original instruction: add $a0,v49,$zero
la $t5,label_169_v49
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
# Original instruction: addi v50,$fp,-16
addi $t5,$fp,-16
la $t0,label_176_v50
sw $t5,0($t0)
# Original instruction: li v51,0
li $t5,0
la $t0,label_173_v51
sw $t5,0($t0)
# Original instruction: li v52,1
li $t5,1
la $t0,label_181_v52
sw $t5,0($t0)
# Original instruction: mul v52,v51,v52
la $t5,label_173_v51
lw $t5,0($t5)
la $t3,label_181_v52
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_181_v52
sw $t3,0($t0)
# Original instruction: add v52,v50,v52
la $t5,label_176_v50
lw $t5,0($t5)
la $t3,label_181_v52
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_181_v52
sw $t3,0($t0)
# Original instruction: addi v53,$zero,48
addi $t5,$zero,48
la $t0,label_180_v53
sw $t5,0($t0)
# Original instruction: sb v53,0(v52)
la $t5,label_180_v53
lw $t5,0($t5)
la $t4,label_181_v52
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v54,$fp,-16
addi $t5,$fp,-16
la $t0,label_188_v54
sw $t5,0($t0)
# Original instruction: li v55,1
li $t5,1
la $t0,label_185_v55
sw $t5,0($t0)
# Original instruction: li v56,1
li $t5,1
la $t0,label_193_v56
sw $t5,0($t0)
# Original instruction: mul v56,v55,v56
la $t5,label_185_v55
lw $t5,0($t5)
la $t3,label_193_v56
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_193_v56
sw $t3,0($t0)
# Original instruction: add v56,v54,v56
la $t5,label_188_v54
lw $t5,0($t5)
la $t3,label_193_v56
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_193_v56
sw $t3,0($t0)
# Original instruction: addi v57,$zero,49
addi $t5,$zero,49
la $t0,label_192_v57
sw $t5,0($t0)
# Original instruction: sb v57,0(v56)
la $t5,label_192_v57
lw $t5,0($t5)
la $t4,label_193_v56
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v58,$fp,-16
addi $t5,$fp,-16
la $t0,label_200_v58
sw $t5,0($t0)
# Original instruction: li v59,2
li $t5,2
la $t0,label_197_v59
sw $t5,0($t0)
# Original instruction: li v60,1
li $t5,1
la $t0,label_205_v60
sw $t5,0($t0)
# Original instruction: mul v60,v59,v60
la $t5,label_197_v59
lw $t5,0($t5)
la $t3,label_205_v60
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_205_v60
sw $t3,0($t0)
# Original instruction: add v60,v58,v60
la $t5,label_200_v58
lw $t5,0($t5)
la $t3,label_205_v60
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_205_v60
sw $t3,0($t0)
# Original instruction: addi v61,$zero,50
addi $t5,$zero,50
la $t0,label_204_v61
sw $t5,0($t0)
# Original instruction: sb v61,0(v60)
la $t5,label_204_v61
lw $t5,0($t5)
la $t4,label_205_v60
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v62,$fp,-20
addi $t5,$fp,-20
la $t0,label_212_v62
sw $t5,0($t0)
# Original instruction: li v63,0
li $t5,0
la $t0,label_209_v63
sw $t5,0($t0)
# Original instruction: li v64,1
li $t5,1
la $t0,label_217_v64
sw $t5,0($t0)
# Original instruction: mul v64,v63,v64
la $t5,label_209_v63
lw $t5,0($t5)
la $t3,label_217_v64
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_217_v64
sw $t3,0($t0)
# Original instruction: add v64,v62,v64
la $t5,label_212_v62
lw $t5,0($t5)
la $t3,label_217_v64
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_217_v64
sw $t3,0($t0)
# Original instruction: addi v65,$zero,97
addi $t5,$zero,97
la $t0,label_216_v65
sw $t5,0($t0)
# Original instruction: sb v65,0(v64)
la $t5,label_216_v65
lw $t5,0($t5)
la $t4,label_217_v64
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v66,$fp,-20
addi $t5,$fp,-20
la $t0,label_224_v66
sw $t5,0($t0)
# Original instruction: li v67,1
li $t5,1
la $t0,label_221_v67
sw $t5,0($t0)
# Original instruction: li v68,1
li $t5,1
la $t0,label_229_v68
sw $t5,0($t0)
# Original instruction: mul v68,v67,v68
la $t5,label_221_v67
lw $t5,0($t5)
la $t3,label_229_v68
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_229_v68
sw $t3,0($t0)
# Original instruction: add v68,v66,v68
la $t5,label_224_v66
lw $t5,0($t5)
la $t3,label_229_v68
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_229_v68
sw $t3,0($t0)
# Original instruction: addi v69,$zero,98
addi $t5,$zero,98
la $t0,label_228_v69
sw $t5,0($t0)
# Original instruction: sb v69,0(v68)
la $t5,label_228_v69
lw $t5,0($t5)
la $t4,label_229_v68
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v70,$fp,-20
addi $t5,$fp,-20
la $t0,label_236_v70
sw $t5,0($t0)
# Original instruction: li v71,2
li $t5,2
la $t0,label_233_v71
sw $t5,0($t0)
# Original instruction: li v72,1
li $t5,1
la $t0,label_241_v72
sw $t5,0($t0)
# Original instruction: mul v72,v71,v72
la $t5,label_233_v71
lw $t5,0($t5)
la $t3,label_241_v72
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_241_v72
sw $t3,0($t0)
# Original instruction: add v72,v70,v72
la $t5,label_236_v70
lw $t5,0($t5)
la $t3,label_241_v72
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_241_v72
sw $t3,0($t0)
# Original instruction: addi v73,$zero,99
addi $t5,$zero,99
la $t0,label_240_v73
sw $t5,0($t0)
# Original instruction: sb v73,0(v72)
la $t5,label_240_v73
lw $t5,0($t5)
la $t4,label_241_v72
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v74,$fp,-16
addi $t5,$fp,-16
la $t0,label_248_v74
sw $t5,0($t0)
# Original instruction: li v75,1
li $t5,1
la $t0,label_245_v75
sw $t5,0($t0)
# Original instruction: li v76,1
li $t5,1
la $t0,label_263_v76
sw $t5,0($t0)
# Original instruction: mul v76,v75,v76
la $t5,label_245_v75
lw $t5,0($t5)
la $t3,label_263_v76
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_263_v76
sw $t3,0($t0)
# Original instruction: add v76,v74,v76
la $t5,label_248_v74
lw $t5,0($t5)
la $t3,label_263_v76
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_263_v76
sw $t3,0($t0)
# Original instruction: addi v77,$fp,-20
addi $t5,$fp,-20
la $t0,label_257_v77
sw $t5,0($t0)
# Original instruction: li v78,1
li $t5,1
la $t0,label_254_v78
sw $t5,0($t0)
# Original instruction: li v79,1
li $t5,1
la $t0,label_260_v79
sw $t5,0($t0)
# Original instruction: mul v79,v78,v79
la $t5,label_254_v78
lw $t5,0($t5)
la $t3,label_260_v79
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_260_v79
sw $t3,0($t0)
# Original instruction: add v79,v77,v79
la $t5,label_257_v77
lw $t5,0($t5)
la $t3,label_260_v79
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_260_v79
sw $t3,0($t0)
# Original instruction: lb v80,0(v79)
la $t5,label_260_v79
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_262_v80
sw $t4,0($t0)
# Original instruction: sb v80,0(v76)
la $t5,label_262_v80
lw $t5,0($t5)
la $t4,label_263_v76
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v81,$fp,-16
addi $t5,$fp,-16
la $t0,label_265_v81
sw $t5,0($t0)
# Original instruction: add $a0,v81,$zero
la $t5,label_265_v81
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
# Original instruction: addi v82,$zero,10
addi $t5,$zero,10
la $t0,label_267_v82
sw $t5,0($t0)
# Original instruction: add $a0,v82,$zero
la $t5,label_267_v82
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
main_FUNCTION_EPILOGUE:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_245_v75
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_64_v14
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_192_v57
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_224_v66
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_267_v82
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_260_v79
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_162_v45
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_101_v27
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_84_v20
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_145_v41
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_73_v19
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_41_v9
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_228_v69
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_16_v0
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_81_v21
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_48_v11
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_148_v40
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_56_v12
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_120_v33
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_209_v63
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_108_v29
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_116_v30
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_212_v62
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_33_v7
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_240_v73
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_241_v72
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_205_v60
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_121_v32
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_216_v65
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_128_v34
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_24_v2
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_153_v43
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_36_v6
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_53_v13
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_200_v58
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_193_v56
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_89_v22
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_248_v74
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_169_v49
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_137_v39
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_167_v48
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_93_v25
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_49_v10
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_265_v81
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_221_v67
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_254_v78
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_28_v5
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_13_v1
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_159_v46
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_140_v38
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_109_v28
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_133_v36
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_104_v26
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_29_v4
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_113_v31
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_165_v47
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_96_v24
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_236_v70
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_88_v23
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_61_v15
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_132_v37
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_263_v76
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_185_v55
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_188_v54
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_176_v50
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_262_v80
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_21_v3
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_257_v77
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_155_v44
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_76_v18
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_233_v71
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_217_v64
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_181_v52
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_68_v17
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_69_v16
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_125_v35
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_44_v8
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_173_v51
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_204_v61
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_197_v59
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_229_v68
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_180_v53
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_151_v42
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

