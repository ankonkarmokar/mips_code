.data
#data section

Input1:.asciiz "Enter the 1st number : "
Input2:.asciiz "Enter the 2nd number : "
Before:.asciiz "\nBefore swaping : \n"
After:.asciiz "\n\nAfter swaping : \n"
First:.asciiz "\nThe 1st number : "
Second:.asciiz "\nThe 2nd number : "

.text
#text section

main:
#main section

#to print input1 string
li $v0, 4
la $a0, Input1
syscall

#input a number
li $v0, 5
syscall
move $t0,$v0

#to print input2 string
li $v0, 4
la $a0, Input2
syscall

#input a number
li $v0, 5
syscall
move $t1,$v0

li $v0, 4
la $a0, Before
syscall

li $v0, 4
la $a0,First
syscall

li $v0,1
move $a0,$t0
syscall

li $v0, 4
la $a0, Second
syscall

li $v0,1
move $a0,$t1
syscall

jal swap

li $v0, 4
la $a0, After
syscall

li $v0, 4
la $a0,First
syscall

li $v0,1
move $a0,$t0
syscall

li $v0, 4
la $a0, Second
syscall

li $v0,1
move $a0,$t1
syscall

exit:

li $v0,10
syscall

swap:

move $t2,$t0
move $t0,$t1
move $t1,$t2

jr $ra