.data

msg:.asciiz "Enter any number : "
Yes:.asciiz "This is a palindrome number.\n"
No:.asciiz "This is not a palindrome number.\n"

.text

main:

#print msg string
li $v0,4
la $a0,msg
syscall

#input a value that you want to check
li $v0,5
syscall
move $t0,$v0

#move the input value in a register as original
move $t1,$t0

#two temp register are declared here
li $t3,0
li $t4,0

loop:
#loop for making reverse number for input number

beq $t0,0,ans   #check that if (input value ==0) then control goes to ans block

rem $t3,$t0,10   #remainder = (input value%10)

mul $t4,$t4,10   #reverse=(reverse*10)+remainder
add $t4,$t4,$t3

div $t0,$t0,10   #input value=(input value/10)

j loop   #control goes to loop again

ans:

bne $t1,$t4,nooption   #if (original != reverse) then it's not palindrome and control goes to nooption block

#print 'yes' string
li $v0,4
la $a0,Yes
syscall

j exit   #control goes to exit block

nooption:
#print 'no' string
li $v0,4
la $a0,No
syscall

exit:
#successfully termination
li $v0,10
syscall