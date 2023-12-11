.data
#data section

msg:.asciiz "Enter the number : "
msg1:.asciiz "The number is positive.\n"
msg2:.asciiz "The number is negative.\n"

.text
#text section

main:
#main section

#to print msg string
li $v0, 4
la $a0, msg
syscall

#input a number
li $v0, 5
syscall
move $s0,$v0

addi $t0,$t0,0

slt $t0,$s0,$t0

beq $t0,1,else_pos

#to print msg1 string
li $v0, 4
la $a0, msg1
syscall
j exit

else_pos:
#to print msg1 string
li $v0, 4
la $a0, msg2
syscall

exit:
#successfully exit
li $v0,10
syscall