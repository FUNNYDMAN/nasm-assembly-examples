; int sum(int a, int b) {
;    int c = a + b;
;    return c;
; }
;
; int main() {
;    int a=20;
;    int b=30;
;    int res = sum(a, b);
;   return 0;
; }

section .text
sum:
    push   rbp
    mov    rbp,rsp
    mov    DWORD  [rbp-0x14],edi
    mov    DWORD  [rbp-0x18],esi
    mov    edx,DWORD  [rbp-0x14]
    mov    eax,DWORD  [rbp-0x18]
    add    eax,edx
    mov    DWORD [rbp-0x4],eax
    mov    eax,DWORD [rbp-0x4]
    pop    rbp
    ret

global main
main:
    push rbp
    mov    rbp,rsp
    sub    rsp,0x10
    mov    DWORD [rbp-0xc],0x14
    mov    DWORD [rbp-0x8],0x1e
    mov    edx,DWORD [rbp-0x8]
    mov    eax,DWORD [rbp-0xc]
    mov    esi,edx ; push arguments to function througn this register
    mov    edi,eax ; and this 
    call sum ; call function with passed args
    mov    DWORD [rbp-0x4],eax
    mov    eax,0x0
    leave
    ret
