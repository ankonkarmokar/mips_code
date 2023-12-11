.data
#data section

msg1:.asciiz "Enter the number : "
msg2:.asciiz "You entered : "

.text
#text section

main:
#main section

#to print msg1 string
li $v0, 4
la $a0, msg1
syscall

#input a number
li $v0, 5
syscall
move $t0,$v0

#to print msg2 string
li $v0, 4
la $a0, msg2
syscall

#output the given number
li $v0, 1
move $a0, $t0
syscall

#successfully exit
li $v0,10
syscall