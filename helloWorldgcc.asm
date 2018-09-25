; nasm -felf32 helloWorldgcc.asm
; gcc -m32 helloWorldgcc.o -o helloWorldgcc
; ./helloWorldgcc

global main

extern printf

section .data
        fmtStr:  db 'hello, world',0xA,0

section .text
        main:

        sub     esp, 4          ; Allocate space on the stack for one 4 byte parameter

        lea     eax, [fmtStr]
        mov     [esp], eax      ; Arg1: pointer to format string
        call    printf         ; Call printf(3):
                                ;       int printf(const char *format, ...);

        add     esp, 4          ; Pop stack once

        ret
