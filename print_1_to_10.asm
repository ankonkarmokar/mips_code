.data

comma:.asciiz ","

.text

main:

addi $t0,$t0,1

for:

bgt $t0,10,exit

li $v0,1
move $a0,$t0
syscall

beq $t0,10,exit

li $v0,4
la $a0,comma
syscall

addi $t0,$t0,1

j for

exit:

li $v0,10
syscall
