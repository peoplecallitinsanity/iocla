%include "printf32.asm"

section .data
    N dd 9 ; compute the sum of the first N fibonacci numbers
    sum_print_format db "Sum first %d fibonacci numbers is %d", 10, 0

section .text
extern printf
global main
main:
    push ebp
    mov ebp, esp

    ; TODO: calculate the sum of first N fibonacci numbers
    ;       (f(0) = 0, f(1) = 1)
    xor eax, eax     ;store the sum in eax
    mov ecx, [N]
    mov ebx, 0
    mov edx, 1

    ; use loop instruction
fib:
    add eax, ebx
    add ebx, edx
    push eax
    mov eax, ebx
    mov ebx, edx
    mov edx, eax
    pop eax
    loop fib

    push eax
    push dword [N]
    push sum_print_format
    call printf
    add esp, 12

    xor eax, eax
    leave
    ret
