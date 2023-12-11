.data
msg1: .asciiz "Enter the number of elements : "
msg2: .asciiz "Enter the values : "
array: .space 2000
space: .asciiz " "
msg3: .asciiz "Enter the element that you want to search : "
output1: .asciiz "The searched index is : "
output2: .asciiz "The searched index is not in here."

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

beq $s1,$s0,search

li $v0,5
syscall
move $t0,$v0

sw $t0,array($s1)

addi $s1,$s1,4

j for1

search:

li $v0,4
la $a0,msg3
syscall

li $v0,5
syscall
move $t1,$v0

addi $s1,$zero,0

for2:

beq $s1,$s0,no

lw $t0,array($s1)

beq $t1,$t0,yes

addi $s1,$s1,4

j for2

no:

li $v0,4
la $a0,output2
syscall

j exit

yes:

li $v0,4
la $a0,output1
syscall

div $s1,$s1,4
li $v0,1
move $a0,$s1
syscall

exit:

li $v0,10
syscall
