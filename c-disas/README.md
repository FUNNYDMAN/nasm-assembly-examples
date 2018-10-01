1) We can't move directly byte to 64 register like so:
https://stackoverflow.com/questions/22621340/why-cant-i-move-directly-a-byte-to-a-64-bit-register

mov rax, byte [rbp-0x4]  <- Wrong!

instead of we can use movze instruction which extends high part of register with zeros:

movze rax, byte [rbp-0x4] 

2) Try to avoid using partional register(ah, al..) because the working with hole register is much faster
https://stackoverflow.com/questions/41573502/why-doesnt-gcc-use-partial-registers

3) 32-bit registers zero the upper part of the full 64-bit register
https://stackoverflow.com/questions/11177137/why-do-x86-64-instructions-on-32-bit-registers-zero-the-upper-part-of-the-full-6?noredirect=1&lq=1
