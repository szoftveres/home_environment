.global asmnum
.global asmstring

.section .note.GNU-stack,"",@progbits

.data
stringmsg:
    .ascii "Hello World\0"
    stringlen = . - stringmsg

.text

# Returns a pointer to the string
asmstring:
    push %rbp
    mov %rsp, %rbp

    mov $stringmsg, %rax

    pop %rbp
    ret

# Returns the length of the string
asmnum:
    push %rbp
    mov %rsp, %rbp

    mov $stringlen, %rax

    pop %rbp
    ret


