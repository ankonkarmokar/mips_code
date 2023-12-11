.data

msg:.asciiz "Sum of 1 to 10 : "

.text

main:

addi $t0,$t0,1

for:

bgt $t0,10,exit

add $t1,$t1,$t0

addi $t0,$t0,1

j for

exit:

li $v0,4
la $a0,msg
syscall

li $v0,1
move $a0,$t1
syscall

li $v0,10
syscall
