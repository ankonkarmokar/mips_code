.data
msg1: .asciiz "Enter the number of elements : "
msg2: .asciiz "Enter the values : "
array: .space 2000
output: .asciiz "The maximum number is : "

.text
main:

li $v0,4
la $a0,msg1
syscall

li $v0,5
syscall
move $s0,$v0

mul $s0,$s0,4

li $v0,4
la $a0,msg2
syscall

addi $s1,$zero,0

for1:

beq $s1,$s0,check

li $v0,5
syscall
move $t0,$v0

sw $t0,array($s1)

addi $s1,$s1,4

j for1

check:

lw $t1,array($zero)

addi $s1,$zero,4

for2:

beq $s1,$s0,exit

lw $t2,array($s1)

slt $t3,$t1,$t2

bnez $t3,max

addi $s1,$s1,4

j for2

max:

move $t1,$t2

addi $s1,$s1,4

j for2

exit:

li $v0,4
la $a0,output
syscall

li $v0,1
move $a0,$t1
syscall

li $v0,10
syscall
