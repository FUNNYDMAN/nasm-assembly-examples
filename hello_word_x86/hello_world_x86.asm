%include "print.asm"

section .data
msg db "Hello", 10, 0
msgLen equ $-msg

section .text
global main
main:
    print msg, msgLen 
    ret
