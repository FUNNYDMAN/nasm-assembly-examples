Great resources:
1) Official documentation 
2) pancake video https://www.youtube.com/watch?time_continue=1&v=tE5AKOQgIe4


1) izz  - print all strings from the binary
2) S=  - list sections (ascii-art bars) (io.va to display paddr or vaddr)
3) asl <num> - translate syscall number into text form
4) psz @ <addr> - print string at this address
5) cp file file.bak - back up the file
6) oo+ open file in write mode 
7) afl - list all functions
8) VVV - go top visual graph mode 
9) pd N - Print Disassembly
10) w - write something to somewhere
11) /m [magicfile]: Search magic number headers with libmagic
12) wt[a] file [size] Write 'size' bytes in current block to 'file'

13) 
By default radare is searching in dbg.map which is the current memory map. Therefore, we want it to search in all memory maps so we need to configure it:

e search.in = dbg.maps

search command: / SomeString
see search hist hit: fs
repeat last search command: //
