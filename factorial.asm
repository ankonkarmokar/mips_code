.data

inp1:.asciiz "Enter the value : "
out1:.asciiz "Factorial fails for negative input. "
out2:.asciiz "The factorial is: 1 "
out3:.asciiz "The factorial is : "

.text

li $v0,4
la $a0,inp1
syscall

li $v0,5
syscall
move $t1,$v0

blt $t1,0,result1
beq $t1,0,result2

li $s0,1

fact:
beq $t1,0,result3
mul $s0,$s0,$t1
subi $t1,$t1,1
j fact

result1:
li $v0,4
la $a0,out1
syscall
j exit

result2:
li $v0,4
la $a0,out2
syscall
j exit

result3:
li $v0,4
la $a0,out3
syscall

li $v0,1
move $a0,$s0
syscall

exit:
li $v0,10
syscall