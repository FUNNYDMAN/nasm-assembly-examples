; Gettting seg fault/ TODO: understand it!
struc mytype
    mt_long resd 1
    mt_word resw 1
    mt_byte resb 1
    mt_str  resb 32
endstruc

section .data
mystruc:
    istruc mytype
        at mt_long, dd 123456
        at mt_word, dw 1024
        at mt_byte, db 'x'
        at mt_str,  db 'hello world', 10, 0 
    iend

section .text
global main
main:
     mov ax,[mystruc+mt_word]
