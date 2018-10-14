### gdb

1) layout asm - see program instruction in visul pretty mode
2) watch - to print var after it was changed
3) -tui - switch to graphical mode

Get table with syscalls
cat linux/arch/x86/entry/syscalls/syscall_64.tbl
echo -n "#include <sys/syscall.h>\nSYS_read" | gcc -E -
