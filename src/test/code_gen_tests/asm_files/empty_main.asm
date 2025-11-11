.data
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers
# Allocated labels for virtual registers

.text
label_0__start:
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
# Original instruction: pushRegisters
main_FUNCTION_EPILOGUE:
# Original instruction: popRegisters
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

