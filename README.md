# nasm-assembly-examples

## Getting Started



```bash
#<file>-name of your asm file.

nasm -f elf64 <file>.asm -o <file>.o

# Note! You need to specify the format for a output file. Default is bin.

gcc <file>.o -o <file>

```
Execute script:
```bash
./<file>
```


see list numbers of interrups 
```bash
cat /usr/include/asm/unistd_64.h
```

objdump usefull command:
```bash
objdump -drwC -Mintel
```

## Great Books
1) [x86 and amd64 instruction reference](https://www.felixcloutier.com/x86/index.html)
2) http://www.stolyarov.info/books/asm_unix (russian)
3) https://www.ozon.ru/context/detail/id/4579142/ (russian)
4) Linux inside https://0xax.gitbooks.io/linux-insides/content/Theory/linux-theory-2.html
5) deep c https://www.slideshare.net/olvemaudal/deep-c/22-What_will_happen_if_you
6) Linux syscalls table http://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/
7) Good articles about static and dynamic linking:
- http://www.yolinux.com/TUTORIALS/LibraryArchives-StaticAndDynamic.html
- http://www.tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html
- https://amir.rachum.com/blog/2016/09/17/shared-libraries/
- https://renenyffenegger.ch/notes/development/languages/C-C-plus-plus/GCC/create-libraries/index
- https://littleosbook.github.io/

- [xchg_rax|advanced Assembler](https://www.xorpd.net/pages/xchg_rax/snip_00.html)
- [xorpd-solutions](https://github.com/funnydman/xorpd-solutions)
