section .data
time dq 0

section .text
global main
main:
    mov rax, 201
    mov rdi, time
    syscall

    mov rdi, rax
    mov rax, 60
    syscall
