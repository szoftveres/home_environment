.global asmnum

.section .note.GNU-stack,"",@progbits

.data
stringmsg:
    .ascii "Hello World\n\0"
    stringlen = . - stringmsg

.text

asmnum:
    push %rbp
    mov %rsp, %rbp

    mov $stringlen, %rax

    pop %rbp
    ret


