;
; assemble and link with:
; nasm -f elf printf-test.asm && gcc -m32 -o printf-test printf-test.o
;
section .text
global main
extern printf

main:

  mov eax, 0x464d
  push eax
  push message
  call printf
  add esp, 8
  ret

message db "Message is %x", 10, 0
