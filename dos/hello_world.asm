; compile with  nasm -f bin -о hello.com hello.asm

SECTION .text
  ;Эта программа выводит на экран текст "Hello, World!'
  ;конец строки {EOL - End Of Line) и завершает работу
  org 0x100
  mov ah,0x9
  mov dx,hello
  int 0x21
  mov ah,0x4C
  mov al,0
  int 0x21
  
SECTION .data
hello DB "Hello, world", 0xd, 0xa, '$'
;конец программы 
