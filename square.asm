.data

msg:.asciiz "Enter any number : "
result:.asciiz "The square of value is : "

.text

j main

square:

mul $t0,$t0,$t0

jr $ra

main:

li $v0,4
la $a0,msg
syscall

li $v0,5
syscall
move $t0,$v0

jal square

li $v0,4
la $a0,result
syscall

li $v0,1
move $a0,$t0
syscall

li $v0,10
syscall
