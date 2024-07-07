.global asm_string
.global asm_strlen

.section .note.GNU-stack,"",@progbits

.data
stringmsg:
    .ascii "Hello World\0"
    stringlen = . - stringmsg

.text

#  AMD64 C function calling convention
#
#  1st arg   %rdi
#  2nd arg   %rsi
#  3rd arg   %rdx
#  4th arg   %rcx  
#  5th arg   %r8
#  6rd arg   %r9
#  7nd arg   -0x4(%rbp)
#  8st arg   -0x8(%rbp)
#
#  return    %rax
#  frame p.  %rbp


# Calculates the length of a null-terminated string
asm_strlen:
    push    %rbp
    mov     %rsp, %rbp

    push    %rsi            # This will be the string pointer
    push    %rcx            # This will be the len ctr
    
    mov     %rdi, %rsi      # string pointer (1st arg) to %rsi
    xor     %rcx, %rcx      # zero out rcx (len ctr)
1:
    cmpb    $0x00, (%rsi)   # byte compare
    je      2f              # zero, end of string
    inc     %rcx            # increment len counter
    inc     %rsi            # increment istring pointer
    jmp     1b              # loop back
2:
    mov     %rcx, %rax      # result into rax

    pop     %rcx
    pop     %rsi

    pop     %rbp
    ret


# Returns a pointer to the string
asm_string:
    push %rbp
    mov %rsp, %rbp

    mov $stringmsg, %rax

    pop %rbp
    ret


