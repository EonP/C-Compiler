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
label_3_STRING:
.asciiz ", "
.align 2
label_4_STRING:
.asciiz ", "
.align 2
label_5_STRING:
.asciiz ", "
.align 2
label_6_STRING:
.asciiz ", "
.align 2
label_7_STRING:
.asciiz ", "
.align 2
# Allocated labels for virtual registers
# Allocated labels for virtual registers
label_92_v36:
.space 4
label_174_v78:
.space 4
label_112_v47:
.space 4
label_178_v80:
.space 4
label_190_v86:
.space 4
label_38_v10:
.space 4
label_110_v46:
.space 4
label_136_v58:
.space 4
label_262_v114:
.space 4
label_42_v12:
.space 4
label_221_v97:
.space 4
label_166_v74:
.space 4
label_106_v44:
.space 4
label_114_v48:
.space 4
label_116_v49:
.space 4
label_188_v85:
.space 4
label_35_v9:
.space 4
label_146_v64:
.space 4
label_208_v93:
.space 4
label_240_v105:
.space 4
label_172_v77:
.space 4
label_258_v112:
.space 4
label_78_v30:
.space 4
label_194_v88:
.space 4
label_82_v32:
.space 4
label_162_v72:
.space 4
label_168_v75:
.space 4
label_26_v4:
.space 4
label_260_v113:
.space 4
label_55_v19:
.space 4
label_248_v109:
.space 4
label_104_v43:
.space 4
label_154_v68:
.space 4
label_122_v52:
.space 4
label_32_v7:
.space 4
label_202_v92:
.space 4
label_91_v37:
.space 4
label_135_v59:
.space 4
label_70_v26:
.space 4
label_182_v82:
.space 4
label_244_v107:
.space 4
label_22_v1:
.space 4
label_66_v24:
.space 4
label_64_v23:
.space 4
label_132_v57:
.space 4
label_72_v27:
.space 4
label_234_v104:
.space 4
label_86_v34:
.space 4
label_50_v15:
.space 4
label_24_v3:
.space 4
label_44_v13:
.space 4
label_62_v21:
.space 4
label_180_v81:
.space 4
label_98_v39:
.space 4
label_184_v83:
.space 4
label_164_v73:
.space 4
label_170_v76:
.space 4
label_205_v91:
.space 4
label_218_v98:
.space 4
label_138_v60:
.space 4
label_119_v51:
.space 4
label_227_v101:
.space 4
label_36_v8:
.space 4
label_228_v100:
.space 4
label_156_v69:
.space 4
label_192_v87:
.space 4
label_144_v62:
.space 4
label_124_v53:
.space 4
label_198_v90:
.space 4
label_127_v55:
.space 4
label_108_v45:
.space 4
label_21_v2:
.space 4
label_76_v29:
.space 4
label_40_v11:
.space 4
label_230_v102:
.space 4
label_255_v110:
.space 4
label_150_v65:
.space 4
label_237_v103:
.space 4
label_94_v38:
.space 4
label_186_v84:
.space 4
label_160_v71:
.space 4
label_211_v95:
.space 4
label_158_v70:
.space 4
label_80_v31:
.space 4
label_52_v17:
.space 4
label_56_v18:
.space 4
label_100_v41:
.space 4
label_68_v25:
.space 4
label_58_v20:
.space 4
label_176_v79:
.space 4
label_196_v89:
.space 4
label_214_v96:
.space 4
label_212_v94:
.space 4
label_246_v108:
.space 4
label_61_v22:
.space 4
label_97_v40:
.space 4
label_140_v61:
.space 4
label_224_v99:
.space 4
label_102_v42:
.space 4
label_84_v33:
.space 4
label_49_v16:
.space 4
label_120_v50:
.space 4
label_18_v0:
.space 4
label_252_v111:
.space 4
label_74_v28:
.space 4
label_128_v54:
.space 4
label_149_v66:
.space 4
label_152_v67:
.space 4
label_130_v56:
.space 4
label_30_v6:
.space 4
label_28_v5:
.space 4
label_143_v63:
.space 4
label_88_v35:
.space 4
label_46_v14:
.space 4
label_242_v106:
.space 4
label_264_v115:
.space 4
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers

.text
label_8__start:
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
# Original instruction: addiu $sp,$sp,-56
addiu $sp,$sp,-56
# Original instruction: pushRegisters
la $t0,label_92_v36
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_174_v78
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_112_v47
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_178_v80
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_190_v86
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_38_v10
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_110_v46
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_136_v58
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_262_v114
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_42_v12
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_221_v97
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_166_v74
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_106_v44
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_114_v48
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_116_v49
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_188_v85
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_35_v9
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_146_v64
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_208_v93
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_240_v105
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_172_v77
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_258_v112
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_78_v30
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_194_v88
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_82_v32
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_162_v72
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_168_v75
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_26_v4
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_260_v113
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_55_v19
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_248_v109
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_104_v43
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_154_v68
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_122_v52
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_32_v7
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_202_v92
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_91_v37
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_135_v59
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_70_v26
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_182_v82
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_244_v107
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_22_v1
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_66_v24
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_64_v23
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_132_v57
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_72_v27
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_234_v104
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_86_v34
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_50_v15
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_24_v3
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_44_v13
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_62_v21
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_180_v81
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_98_v39
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_184_v83
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_164_v73
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_170_v76
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_205_v91
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_218_v98
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_138_v60
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_119_v51
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_227_v101
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_36_v8
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_228_v100
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_156_v69
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_192_v87
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_144_v62
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_124_v53
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_198_v90
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_127_v55
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_108_v45
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_21_v2
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_76_v29
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_40_v11
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_230_v102
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_255_v110
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_150_v65
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_237_v103
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_94_v38
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_186_v84
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_160_v71
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_211_v95
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_158_v70
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_80_v31
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_52_v17
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_56_v18
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_100_v41
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_68_v25
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_58_v20
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_176_v79
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_196_v89
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_214_v96
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_212_v94
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_246_v108
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_61_v22
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_97_v40
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_140_v61
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_224_v99
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_102_v42
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_84_v33
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_49_v16
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_120_v50
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_18_v0
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_252_v111
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_74_v28
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_128_v54
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_149_v66
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_152_v67
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_130_v56
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_30_v6
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_28_v5
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_143_v63
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_88_v35
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_46_v14
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_242_v106
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
la $t0,label_264_v115
lw $t0,0($t0)
addi $sp,$sp,-4
sw $t0,0($sp)
# Original instruction: addi v0,$fp,-8
addi $t5,$fp,-8
la $t0,label_18_v0
sw $t5,0($t0)
# Original instruction: addi v1,v0,0
la $t5,label_18_v0
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_22_v1
sw $t4,0($t0)
# Original instruction: li v2,5
li $t5,5
la $t0,label_21_v2
sw $t5,0($t0)
# Original instruction: sw v2,0(v1)
la $t5,label_21_v2
lw $t5,0($t5)
la $t4,label_22_v1
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v3,$fp,-8
addi $t5,$fp,-8
la $t0,label_24_v3
sw $t5,0($t0)
# Original instruction: addi v4,v3,0
la $t5,label_24_v3
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_26_v4
sw $t4,0($t0)
# Original instruction: lw v5,0(v4)
la $t5,label_26_v4
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_28_v5
sw $t4,0($t0)
# Original instruction: add $a0,v5,$zero
la $t5,label_28_v5
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_i_FUNCTION
jal print_i_FUNCTION
# Original instruction: addi v6,$zero,10
addi $t5,$zero,10
la $t0,label_30_v6
sw $t5,0($t0)
# Original instruction: add $a0,v6,$zero
la $t5,label_30_v6
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
# Original instruction: addi v7,$fp,-12
addi $t5,$fp,-12
la $t0,label_32_v7
sw $t5,0($t0)
# Original instruction: addi v8,v7,0
la $t5,label_32_v7
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_36_v8
sw $t4,0($t0)
# Original instruction: addi v9,$zero,97
addi $t5,$zero,97
la $t0,label_35_v9
sw $t5,0($t0)
# Original instruction: sb v9,0(v8)
la $t5,label_35_v9
lw $t5,0($t5)
la $t4,label_36_v8
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v10,$fp,-12
addi $t5,$fp,-12
la $t0,label_38_v10
sw $t5,0($t0)
# Original instruction: addi v11,v10,0
la $t5,label_38_v10
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_40_v11
sw $t4,0($t0)
# Original instruction: lb v12,0(v11)
la $t5,label_40_v11
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_42_v12
sw $t4,0($t0)
# Original instruction: add $a0,v12,$zero
la $t5,label_42_v12
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
# Original instruction: addi v13,$zero,10
addi $t5,$zero,10
la $t0,label_44_v13
sw $t5,0($t0)
# Original instruction: add $a0,v13,$zero
la $t5,label_44_v13
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
# Original instruction: addi v14,$fp,-24
addi $t5,$fp,-24
la $t0,label_46_v14
sw $t5,0($t0)
# Original instruction: addi v15,v14,0
la $t5,label_46_v14
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_50_v15
sw $t4,0($t0)
# Original instruction: li v16,10
li $t5,10
la $t0,label_49_v16
sw $t5,0($t0)
# Original instruction: sw v16,0(v15)
la $t5,label_49_v16
lw $t5,0($t5)
la $t4,label_50_v15
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v17,$fp,-24
addi $t5,$fp,-24
la $t0,label_52_v17
sw $t5,0($t0)
# Original instruction: addi v18,v17,4
la $t5,label_52_v17
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_56_v18
sw $t4,0($t0)
# Original instruction: li v19,20
li $t5,20
la $t0,label_55_v19
sw $t5,0($t0)
# Original instruction: sw v19,0(v18)
la $t5,label_55_v19
lw $t5,0($t5)
la $t4,label_56_v18
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v20,$fp,-24
addi $t5,$fp,-24
la $t0,label_58_v20
sw $t5,0($t0)
# Original instruction: addi v21,v20,8
la $t5,label_58_v20
lw $t5,0($t5)
addi $t4,$t5,8
la $t0,label_62_v21
sw $t4,0($t0)
# Original instruction: li v22,30
li $t5,30
la $t0,label_61_v22
sw $t5,0($t0)
# Original instruction: sw v22,0(v21)
la $t5,label_61_v22
lw $t5,0($t5)
la $t4,label_62_v21
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v23,$fp,-24
addi $t5,$fp,-24
la $t0,label_64_v23
sw $t5,0($t0)
# Original instruction: addi v24,v23,0
la $t5,label_64_v23
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_66_v24
sw $t4,0($t0)
# Original instruction: lw v25,0(v24)
la $t5,label_66_v24
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_68_v25
sw $t4,0($t0)
# Original instruction: add $a0,v25,$zero
la $t5,label_68_v25
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_i_FUNCTION
jal print_i_FUNCTION
# Original instruction: la v26,label_0_STRING
la $t5,label_0_STRING
la $t0,label_70_v26
sw $t5,0($t0)
# Original instruction: add $a0,v26,$zero
la $t5,label_70_v26
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
# Original instruction: addi v27,$fp,-24
addi $t5,$fp,-24
la $t0,label_72_v27
sw $t5,0($t0)
# Original instruction: addi v28,v27,4
la $t5,label_72_v27
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_74_v28
sw $t4,0($t0)
# Original instruction: lw v29,0(v28)
la $t5,label_74_v28
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_76_v29
sw $t4,0($t0)
# Original instruction: add $a0,v29,$zero
la $t5,label_76_v29
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_i_FUNCTION
jal print_i_FUNCTION
# Original instruction: la v30,label_1_STRING
la $t5,label_1_STRING
la $t0,label_78_v30
sw $t5,0($t0)
# Original instruction: add $a0,v30,$zero
la $t5,label_78_v30
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
# Original instruction: addi v31,$fp,-24
addi $t5,$fp,-24
la $t0,label_80_v31
sw $t5,0($t0)
# Original instruction: addi v32,v31,8
la $t5,label_80_v31
lw $t5,0($t5)
addi $t4,$t5,8
la $t0,label_82_v32
sw $t4,0($t0)
# Original instruction: lw v33,0(v32)
la $t5,label_82_v32
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_84_v33
sw $t4,0($t0)
# Original instruction: add $a0,v33,$zero
la $t5,label_84_v33
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_i_FUNCTION
jal print_i_FUNCTION
# Original instruction: addi v34,$zero,10
addi $t5,$zero,10
la $t0,label_86_v34
sw $t5,0($t0)
# Original instruction: add $a0,v34,$zero
la $t5,label_86_v34
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
# Original instruction: addi v35,$fp,-28
addi $t5,$fp,-28
la $t0,label_88_v35
sw $t5,0($t0)
# Original instruction: addi v36,v35,0
la $t5,label_88_v35
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_92_v36
sw $t4,0($t0)
# Original instruction: addi v37,$zero,97
addi $t5,$zero,97
la $t0,label_91_v37
sw $t5,0($t0)
# Original instruction: sb v37,0(v36)
la $t5,label_91_v37
lw $t5,0($t5)
la $t4,label_92_v36
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v38,$fp,-28
addi $t5,$fp,-28
la $t0,label_94_v38
sw $t5,0($t0)
# Original instruction: addi v39,v38,1
la $t5,label_94_v38
lw $t5,0($t5)
addi $t4,$t5,1
la $t0,label_98_v39
sw $t4,0($t0)
# Original instruction: addi v40,$zero,98
addi $t5,$zero,98
la $t0,label_97_v40
sw $t5,0($t0)
# Original instruction: sb v40,0(v39)
la $t5,label_97_v40
lw $t5,0($t5)
la $t4,label_98_v39
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v41,$fp,-28
addi $t5,$fp,-28
la $t0,label_100_v41
sw $t5,0($t0)
# Original instruction: addi v42,v41,0
la $t5,label_100_v41
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_102_v42
sw $t4,0($t0)
# Original instruction: lb v43,0(v42)
la $t5,label_102_v42
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_104_v43
sw $t4,0($t0)
# Original instruction: add $a0,v43,$zero
la $t5,label_104_v43
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
# Original instruction: la v44,label_2_STRING
la $t5,label_2_STRING
la $t0,label_106_v44
sw $t5,0($t0)
# Original instruction: add $a0,v44,$zero
la $t5,label_106_v44
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
# Original instruction: addi v45,$fp,-28
addi $t5,$fp,-28
la $t0,label_108_v45
sw $t5,0($t0)
# Original instruction: addi v46,v45,1
la $t5,label_108_v45
lw $t5,0($t5)
addi $t4,$t5,1
la $t0,label_110_v46
sw $t4,0($t0)
# Original instruction: lb v47,0(v46)
la $t5,label_110_v46
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_112_v47
sw $t4,0($t0)
# Original instruction: add $a0,v47,$zero
la $t5,label_112_v47
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
# Original instruction: addi v48,$zero,10
addi $t5,$zero,10
la $t0,label_114_v48
sw $t5,0($t0)
# Original instruction: add $a0,v48,$zero
la $t5,label_114_v48
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
# Original instruction: addi v49,$fp,-48
addi $t5,$fp,-48
la $t0,label_116_v49
sw $t5,0($t0)
# Original instruction: addi v50,v49,0
la $t5,label_116_v49
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_120_v50
sw $t4,0($t0)
# Original instruction: addi v51,$zero,97
addi $t5,$zero,97
la $t0,label_119_v51
sw $t5,0($t0)
# Original instruction: sb v51,0(v50)
la $t5,label_119_v51
lw $t5,0($t5)
la $t4,label_120_v50
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v52,$fp,-48
addi $t5,$fp,-48
la $t0,label_122_v52
sw $t5,0($t0)
# Original instruction: addi v53,v52,4
la $t5,label_122_v52
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_124_v53
sw $t4,0($t0)
# Original instruction: addi v54,v53,0
la $t5,label_124_v53
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_128_v54
sw $t4,0($t0)
# Original instruction: li v55,10
li $t5,10
la $t0,label_127_v55
sw $t5,0($t0)
# Original instruction: sw v55,0(v54)
la $t5,label_127_v55
lw $t5,0($t5)
la $t4,label_128_v54
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v56,$fp,-48
addi $t5,$fp,-48
la $t0,label_130_v56
sw $t5,0($t0)
# Original instruction: addi v57,v56,4
la $t5,label_130_v56
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_132_v57
sw $t4,0($t0)
# Original instruction: addi v58,v57,4
la $t5,label_132_v57
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_136_v58
sw $t4,0($t0)
# Original instruction: li v59,20
li $t5,20
la $t0,label_135_v59
sw $t5,0($t0)
# Original instruction: sw v59,0(v58)
la $t5,label_135_v59
lw $t5,0($t5)
la $t4,label_136_v58
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v60,$fp,-48
addi $t5,$fp,-48
la $t0,label_138_v60
sw $t5,0($t0)
# Original instruction: addi v61,v60,4
la $t5,label_138_v60
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_140_v61
sw $t4,0($t0)
# Original instruction: addi v62,v61,8
la $t5,label_140_v61
lw $t5,0($t5)
addi $t4,$t5,8
la $t0,label_144_v62
sw $t4,0($t0)
# Original instruction: li v63,30
li $t5,30
la $t0,label_143_v63
sw $t5,0($t0)
# Original instruction: sw v63,0(v62)
la $t5,label_143_v63
lw $t5,0($t5)
la $t4,label_144_v62
lw $t4,0($t4)
sw $t5,0($t4)
# Original instruction: addi v64,$fp,-48
addi $t5,$fp,-48
la $t0,label_146_v64
sw $t5,0($t0)
# Original instruction: addi v65,v64,16
la $t5,label_146_v64
lw $t5,0($t5)
addi $t4,$t5,16
la $t0,label_150_v65
sw $t4,0($t0)
# Original instruction: addi v66,$zero,98
addi $t5,$zero,98
la $t0,label_149_v66
sw $t5,0($t0)
# Original instruction: sb v66,0(v65)
la $t5,label_149_v66
lw $t5,0($t5)
la $t4,label_150_v65
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v67,$fp,-48
addi $t5,$fp,-48
la $t0,label_152_v67
sw $t5,0($t0)
# Original instruction: addi v68,v67,0
la $t5,label_152_v67
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_154_v68
sw $t4,0($t0)
# Original instruction: lb v69,0(v68)
la $t5,label_154_v68
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_156_v69
sw $t4,0($t0)
# Original instruction: add $a0,v69,$zero
la $t5,label_156_v69
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
# Original instruction: la v70,label_3_STRING
la $t5,label_3_STRING
la $t0,label_158_v70
sw $t5,0($t0)
# Original instruction: add $a0,v70,$zero
la $t5,label_158_v70
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
# Original instruction: addi v71,$fp,-48
addi $t5,$fp,-48
la $t0,label_160_v71
sw $t5,0($t0)
# Original instruction: addi v72,v71,4
la $t5,label_160_v71
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_162_v72
sw $t4,0($t0)
# Original instruction: addi v73,v72,0
la $t5,label_162_v72
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_164_v73
sw $t4,0($t0)
# Original instruction: lw v74,0(v73)
la $t5,label_164_v73
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_166_v74
sw $t4,0($t0)
# Original instruction: add $a0,v74,$zero
la $t5,label_166_v74
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_i_FUNCTION
jal print_i_FUNCTION
# Original instruction: la v75,label_4_STRING
la $t5,label_4_STRING
la $t0,label_168_v75
sw $t5,0($t0)
# Original instruction: add $a0,v75,$zero
la $t5,label_168_v75
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
# Original instruction: addi v76,$fp,-48
addi $t5,$fp,-48
la $t0,label_170_v76
sw $t5,0($t0)
# Original instruction: addi v77,v76,4
la $t5,label_170_v76
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_172_v77
sw $t4,0($t0)
# Original instruction: addi v78,v77,4
la $t5,label_172_v77
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_174_v78
sw $t4,0($t0)
# Original instruction: lw v79,0(v78)
la $t5,label_174_v78
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_176_v79
sw $t4,0($t0)
# Original instruction: add $a0,v79,$zero
la $t5,label_176_v79
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_i_FUNCTION
jal print_i_FUNCTION
# Original instruction: la v80,label_5_STRING
la $t5,label_5_STRING
la $t0,label_178_v80
sw $t5,0($t0)
# Original instruction: add $a0,v80,$zero
la $t5,label_178_v80
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
# Original instruction: addi v81,$fp,-48
addi $t5,$fp,-48
la $t0,label_180_v81
sw $t5,0($t0)
# Original instruction: addi v82,v81,4
la $t5,label_180_v81
lw $t5,0($t5)
addi $t4,$t5,4
la $t0,label_182_v82
sw $t4,0($t0)
# Original instruction: addi v83,v82,8
la $t5,label_182_v82
lw $t5,0($t5)
addi $t4,$t5,8
la $t0,label_184_v83
sw $t4,0($t0)
# Original instruction: lw v84,0(v83)
la $t5,label_184_v83
lw $t5,0($t5)
lw $t4,0($t5)
la $t0,label_186_v84
sw $t4,0($t0)
# Original instruction: add $a0,v84,$zero
la $t5,label_186_v84
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_i_FUNCTION
jal print_i_FUNCTION
# Original instruction: la v85,label_6_STRING
la $t5,label_6_STRING
la $t0,label_188_v85
sw $t5,0($t0)
# Original instruction: add $a0,v85,$zero
la $t5,label_188_v85
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
# Original instruction: addi v86,$fp,-48
addi $t5,$fp,-48
la $t0,label_190_v86
sw $t5,0($t0)
# Original instruction: addi v87,v86,16
la $t5,label_190_v86
lw $t5,0($t5)
addi $t4,$t5,16
la $t0,label_192_v87
sw $t4,0($t0)
# Original instruction: lb v88,0(v87)
la $t5,label_192_v87
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_194_v88
sw $t4,0($t0)
# Original instruction: add $a0,v88,$zero
la $t5,label_194_v88
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
# Original instruction: addi v89,$zero,10
addi $t5,$zero,10
la $t0,label_196_v89
sw $t5,0($t0)
# Original instruction: add $a0,v89,$zero
la $t5,label_196_v89
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
# Original instruction: addi v90,$fp,-60
addi $t5,$fp,-60
la $t0,label_198_v90
sw $t5,0($t0)
# Original instruction: addi v91,v90,0
la $t5,label_198_v90
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_205_v91
sw $t4,0($t0)
# Original instruction: li v92,2
li $t5,2
la $t0,label_202_v92
sw $t5,0($t0)
# Original instruction: li v93,2
li $t5,2
la $t0,label_208_v93
sw $t5,0($t0)
# Original instruction: mul v93,v92,v93
la $t5,label_202_v92
lw $t5,0($t5)
la $t3,label_208_v93
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_208_v93
sw $t3,0($t0)
# Original instruction: add v93,v91,v93
la $t5,label_205_v91
lw $t5,0($t5)
la $t3,label_208_v93
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_208_v93
sw $t3,0($t0)
# Original instruction: addi v94,v93,0
la $t5,label_208_v93
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_212_v94
sw $t4,0($t0)
# Original instruction: addi v95,$zero,120
addi $t5,$zero,120
la $t0,label_211_v95
sw $t5,0($t0)
# Original instruction: sb v95,0(v94)
la $t5,label_211_v95
lw $t5,0($t5)
la $t4,label_212_v94
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v96,$fp,-60
addi $t5,$fp,-60
la $t0,label_214_v96
sw $t5,0($t0)
# Original instruction: addi v97,v96,0
la $t5,label_214_v96
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_221_v97
sw $t4,0($t0)
# Original instruction: li v98,3
li $t5,3
la $t0,label_218_v98
sw $t5,0($t0)
# Original instruction: li v99,2
li $t5,2
la $t0,label_224_v99
sw $t5,0($t0)
# Original instruction: mul v99,v98,v99
la $t5,label_218_v98
lw $t5,0($t5)
la $t3,label_224_v99
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_224_v99
sw $t3,0($t0)
# Original instruction: add v99,v97,v99
la $t5,label_221_v97
lw $t5,0($t5)
la $t3,label_224_v99
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_224_v99
sw $t3,0($t0)
# Original instruction: addi v100,v99,1
la $t5,label_224_v99
lw $t5,0($t5)
addi $t4,$t5,1
la $t0,label_228_v100
sw $t4,0($t0)
# Original instruction: addi v101,$zero,121
addi $t5,$zero,121
la $t0,label_227_v101
sw $t5,0($t0)
# Original instruction: sb v101,0(v100)
la $t5,label_227_v101
lw $t5,0($t5)
la $t4,label_228_v100
lw $t4,0($t4)
sb $t5,0($t4)
# Original instruction: addi v102,$fp,-60
addi $t5,$fp,-60
la $t0,label_230_v102
sw $t5,0($t0)
# Original instruction: addi v103,v102,0
la $t5,label_230_v102
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_237_v103
sw $t4,0($t0)
# Original instruction: li v104,2
li $t5,2
la $t0,label_234_v104
sw $t5,0($t0)
# Original instruction: li v105,2
li $t5,2
la $t0,label_240_v105
sw $t5,0($t0)
# Original instruction: mul v105,v104,v105
la $t5,label_234_v104
lw $t5,0($t5)
la $t3,label_240_v105
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_240_v105
sw $t3,0($t0)
# Original instruction: add v105,v103,v105
la $t5,label_237_v103
lw $t5,0($t5)
la $t3,label_240_v105
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_240_v105
sw $t3,0($t0)
# Original instruction: addi v106,v105,0
la $t5,label_240_v105
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_242_v106
sw $t4,0($t0)
# Original instruction: lb v107,0(v106)
la $t5,label_242_v106
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_244_v107
sw $t4,0($t0)
# Original instruction: add $a0,v107,$zero
la $t5,label_244_v107
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
# Original instruction: la v108,label_7_STRING
la $t5,label_7_STRING
la $t0,label_246_v108
sw $t5,0($t0)
# Original instruction: add $a0,v108,$zero
la $t5,label_246_v108
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_s_FUNCTION
jal print_s_FUNCTION
# Original instruction: addi v109,$fp,-60
addi $t5,$fp,-60
la $t0,label_248_v109
sw $t5,0($t0)
# Original instruction: addi v110,v109,0
la $t5,label_248_v109
lw $t5,0($t5)
addi $t4,$t5,0
la $t0,label_255_v110
sw $t4,0($t0)
# Original instruction: li v111,3
li $t5,3
la $t0,label_252_v111
sw $t5,0($t0)
# Original instruction: li v112,2
li $t5,2
la $t0,label_258_v112
sw $t5,0($t0)
# Original instruction: mul v112,v111,v112
la $t5,label_252_v111
lw $t5,0($t5)
la $t3,label_258_v112
lw $t3,0($t3)
mul $t3,$t5,$t3
la $t0,label_258_v112
sw $t3,0($t0)
# Original instruction: add v112,v110,v112
la $t5,label_255_v110
lw $t5,0($t5)
la $t3,label_258_v112
lw $t3,0($t3)
add $t3,$t5,$t3
la $t0,label_258_v112
sw $t3,0($t0)
# Original instruction: addi v113,v112,1
la $t5,label_258_v112
lw $t5,0($t5)
addi $t4,$t5,1
la $t0,label_260_v113
sw $t4,0($t0)
# Original instruction: lb v114,0(v113)
la $t5,label_260_v113
lw $t5,0($t5)
lb $t4,0($t5)
la $t0,label_262_v114
sw $t4,0($t0)
# Original instruction: add $a0,v114,$zero
la $t5,label_262_v114
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
# Original instruction: addi v115,$zero,10
addi $t5,$zero,10
la $t0,label_264_v115
sw $t5,0($t0)
# Original instruction: add $a0,v115,$zero
la $t5,label_264_v115
lw $t5,0($t5)
add $a0,$t5,$zero
# Original instruction: jal print_c_FUNCTION
jal print_c_FUNCTION
main_FUNCTION_EPILOGUE:
# Original instruction: popRegisters
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_264_v115
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_242_v106
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_46_v14
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_88_v35
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_143_v63
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_28_v5
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_30_v6
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_130_v56
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_152_v67
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_149_v66
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_128_v54
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_74_v28
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_252_v111
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_18_v0
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_120_v50
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_49_v16
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_84_v33
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_102_v42
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_224_v99
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_140_v61
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_97_v40
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_61_v22
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_246_v108
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_212_v94
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_214_v96
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_196_v89
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_176_v79
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_58_v20
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_68_v25
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_100_v41
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_56_v18
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_52_v17
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_80_v31
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_158_v70
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_211_v95
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_160_v71
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_186_v84
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_94_v38
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_237_v103
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_150_v65
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_255_v110
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_230_v102
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_40_v11
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_76_v29
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_21_v2
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_108_v45
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_127_v55
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_198_v90
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_124_v53
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_144_v62
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_192_v87
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_156_v69
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_228_v100
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_36_v8
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_227_v101
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_119_v51
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_138_v60
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_218_v98
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_205_v91
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_170_v76
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_164_v73
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_184_v83
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_98_v39
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_180_v81
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_62_v21
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_44_v13
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_24_v3
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_50_v15
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_86_v34
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_234_v104
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_72_v27
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_132_v57
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_64_v23
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_66_v24
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_22_v1
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_244_v107
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_182_v82
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_70_v26
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_135_v59
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_91_v37
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_202_v92
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_32_v7
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_122_v52
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_154_v68
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_104_v43
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_248_v109
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_55_v19
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_260_v113
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_26_v4
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_168_v75
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_162_v72
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_82_v32
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_194_v88
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_78_v30
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_258_v112
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_172_v77
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_240_v105
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_208_v93
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_146_v64
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_35_v9
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_188_v85
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_116_v49
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_114_v48
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_106_v44
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_166_v74
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_221_v97
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_42_v12
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_262_v114
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_136_v58
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_110_v46
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_38_v10
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_190_v86
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_178_v80
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_112_v47
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_174_v78
sw $t0,0($t1)
lw $t0,0($sp)
addi $sp,$sp,4
la $t1,label_92_v36
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

