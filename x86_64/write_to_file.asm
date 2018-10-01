SYS_OPEN    equ 2
SYS_WRITE equ 1
O_CREAT equ 64
O_WRONLY equ 1

section .data
filename db "/home/dzmitry/lang/greatFile", 0
text db "Im in file", 0
section .text
global _start
_start:
    mov rax, SYS_OPEN
    mov rdi, filename
    mov rsi, O_CREAT+O_WRONLY
    mov rdx, 0644q
    syscall
    mov rdi, rax
    mov rax, SYS_WRITE
    mov rsi, text
    mov rdx, 30 ; change this value according to a size of a message
    syscall
    mov rax, 60
    mov rdi, 0
    syscall
