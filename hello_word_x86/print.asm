%macro print 2
; first arg is message and second is the length of message
    mov     edx, %2                             ;message length
    mov     ecx,%1                              ;message to write
    mov     ebx,1                               ;file descriptor (stdout)
    mov     eax,4                               ;system call number (sys_write)
    int     0x80                                ;call kernel

    mov     eax,1                               ;system call number (sys_exit)
    int     0x80                                ;call kernel
%endmacro
