# nasm-assembly-examples

## Getting Started



```bash
#<file>-name of your asm file.

nasm -f elf64 <file>.asm -o <file>.o

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

Great Books
great reference https://www.felixcloutier.com/x86/index.html
1) http://www.stolyarov.info/books/asm_unix (russian)
2) https://www.ozon.ru/context/detail/id/4579142/ (russian)
3) Linux inside https://0xax.gitbooks.io/linux-insides/content/Theory/linux-theory-2.html
4) deep c https://www.slideshare.net/olvemaudal/deep-c/22-What_will_happen_if_you
5) Linux syscalls table http://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/
6) Good article about static and dynamic linking http://www.yolinux.com/TUTORIALS/LibraryArchives-StaticAndDynamic.html
