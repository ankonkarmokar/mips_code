.data
msg1: .asciiz "Enter the number of elements : "
msg2: .asciiz "Enter the values : "
array: .space 2000
space: .asciiz " "
output: .asciiz "Array : "

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

beq $s1,$s0,print

li $v0,5
syscall
move $t0,$v0

sw $t0,array($s1)

addi $s1,$s1,4

j for1

print:

li $v0,4
la $a0,output
syscall

addi $s1,$zero,0

for2:

beq $s1,$s0,exit

lw $t1,array($s1)

li $v0,1
move $a0,$t1
syscall

li $v0,4
la $a0,space
syscall

addi $s1,$s1,4

j for2

exit:

li $v0,10
syscall