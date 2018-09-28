; content of foo module(foo.c)
; gcc -o foo.o foo.c
;int foo(int, int);
;
;int foo(int a, int b) {
;    return a + b;
;}
section .text
extern foo
global main
main:
    mov rdi, 10 ; pass args to function through the registers according to abi(used amd64)
    mov rsi, 20
    call foo ; call the function. Return value stored in rax
    ret
