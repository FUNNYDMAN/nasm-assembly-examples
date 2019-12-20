https://stackoverflow.com/questions/59411449/what-is-the-entry-count-of-elf-dynamic-symbol-table

Yes, the `DT_STRTAB` entries of the dynamic section (.dynstr) describe the attributes of the dynamic string section, while `DT_SYMTAB` entries of the dynamic section (.dynsym) describe the attributes of the dynamic symbol table.


----------


> Is it correct to assume that symbol table size in bytes is address of
> string table minus address of symbol table, and therefore get the
> count by dividing with entry size in bytes?

Yes, your assumption is correct. Consider this simple program in C:

```
int main() {
    return 10;
}
```
Compile it and investigate with `radare2 -d <prog_name>` then display the section information `iS`:
```
[Sections]
....
25 0x00001040  1464 0x00000000  1464 ----- .symtab
26 0x000015f8   496 0x00000000   496 ----- .strtab
....
```

To retrieve the information about the count of entries you could use `readelf -s <prog_name>`:

```
Symbol table '.symtab' contains 61 entries:
   Num:    Value          Size Type    Bind   Vis      Ndx Name
     0: 0000000000000000     0 NOTYPE  LOCAL  DEFAULT  UND 
     1: 0000000000000238     0 SECTION LOCAL  DEFAULT    1 
     ...
```

Retrieve the size of the table entry: `readelf -S res | grep .symtab -A 1`:
```
[25] .symtab           SYMTAB           0000000000000000  00001040
   00000000000005b8  0000000000000018          26    42     8
```

So let's make calculations:
```
symbol table size = (0x000015f8 - 0x00001040) = 0x5b8 (decimal 1464)

symbol table entry count = 0x5b8 / 0x18 = 0x3d (decimal 61)
```
