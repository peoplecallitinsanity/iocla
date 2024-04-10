%include "../utils/printf32.asm"

section .data
    ex: db 'da',0

section .text
extern printf
global main
main:
    push ebp
    mov ebp, esp

    mov eax, 211    ; to be broken down into powers of 2
    mov ebx, 1      ; stores the current power

    ; TODO - print the powers of 2 that generate number stored in EAX
here:
    test eax, ebx
    jz no_bit
    PRINTF32 `%u\n\x0`, ebx

no_bit:
    shl ebx, 1
    jne here

    leave
    ret
