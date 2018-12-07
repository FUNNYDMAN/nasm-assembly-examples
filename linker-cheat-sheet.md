# Linker

1) Show all supported emulations
```bash
ld -v  
```
2) Specify the emulation option
```bash
ld -m elf_i386 -o <file>.o <file>.asm
```

> Note: By default ld command always to link that into the native architecture for your machine!
