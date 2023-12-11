.data
msg1:.asciiz "Enter a value : "
msg2:.asciiz"The entered number is prime."
msg3:.asciiz"The entered number is not prime."

.text
main:

li $v0,4
la $a0,msg1
syscall

li $v0,5
syscall
move $t0,$v0

bltz $t0,notprime
beq $t0,1,notprime

li $t1,2

for1:

beq $t0,$t1,prime

div $t0,$t1
mfhi $t3

beqz $t3,notprime

addi $t1,$t1,1

j for1

prime:
li $v0,4
la $a0,msg2
syscall

j exit

notprime:
li $v0,4
la $a0,msg3
syscall

exit:
li $v0,10
syscall