.data
#data section

msg1:.asciiz "Enter first number : "
msg2:.asciiz "Enter second number : "
equal:.asciiz "The numbers are equal.\n"
notequal:.asciiz "The numbers are not equal.\n"

.text
#text section

main:
#main section

#to print msg1 string
li $v0, 4
la $a0, msg1
syscall

#input first number
li $v0, 5
syscall
move $s0,$v0

#to print msg2 string
li $v0, 4
la $a0, msg2
syscall

#input second number
li $v0, 5
syscall
move $s1,$v0

bne $s0,$s1,not_equal

#to print equal string
li $v0, 4
la $a0, equal
syscall
j exit

not_equal:
#to print equal string
li $v0, 4
la $a0, notequal
syscall

exit:
#successfully exit
li $v0,10
syscall