.data
#data section

msg:.asciiz "Hello world."

.text
#text section

main:
#main section

#to print msg1 string
li $v0, 4
la $a0, msg
syscall

#successfully exit
li $v0,10
syscall