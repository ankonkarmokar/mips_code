.data

even:.asciiz "The sum of even numbers : "
odd:.asciiz "\nThe sum of odd numbers : "

.text

main:

li $t0,0
li $t1,0
li $s0,0
li $s1,2

for:

bgt $s0,20,exit

div $s0,$s1
mfhi $s3

beq $s3,0,evencount

j oddcount

evencount:
add $t0,$t0,$s0
addi $s0,$s0,1
j for

oddcount:
add $t1,$t1,$s0
addi $s0,$s0,1
j for

exit:

li $v0,4
la $a0,even
syscall

li $v0,1
move $a0,$t0
syscall

li $v0,4
la $a0,odd
syscall

li $v0,1
move $a0,$t1
syscall

li $v0,10
syscall