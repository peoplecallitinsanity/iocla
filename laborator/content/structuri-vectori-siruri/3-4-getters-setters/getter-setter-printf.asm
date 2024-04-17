%include "printf32.asm"

struc my_struct
    int_x: resb 4
    char_y: resb 1
    string_s: resb 32
endstruc

section .data
    sample_obj:
        istruc my_struct
            at int_x, dd 1000
            at char_y, db 'a'
            at string_s, db 'My string is better than yours', 0
        iend

    new_int dd 2000
    new_char db 'b'
    new_string db 'Are you sure?', 0



section .text
extern printf
global main

main:
    push ebp
    mov ebp, esp

    ; TODO
    ; print all three values (int_x, char_y, string_s) from simple_obj
    ; Hint: use "lea reg, [base + offset]" to save the result of
    ; "base + offset" into register "reg"
    xor ebx, ebx
    mov ebx, [sample_obj + int_x]
    PRINTF32 `int_x: %d\n\x0`, ebx
    xor ebx, ebx
    mov ebx, [sample_obj + char_y]
    PRINTF32 `char_y: %c\n\x0`, ebx

    lea eax, [sample_obj + string_s]
    PRINTF32 `string_s: %s\n\x0`, eax

    ; TODO
    ; write the equivalent of "simple_obj->int_x = new_int"
    mov eax, [new_int]
    mov [sample_obj + int_x], eax

    ; TODO
    ; write the equivalent of "simple_obj->char_y = new_char"
    mov bl, [new_char]
    mov [sample_obj + char_y], bl
    ; TODO
    ; write the equivalent of "strcpy(simple_obj->string_s, new_string)"
   

    xor edx, edx
loop:
    mov al, [new_string + edx]
    mov [sample_obj + string_s + edx], al
    inc edx
    cmp al, 0
    jnz loop



    ; TODO
    ; print all three values again to validate the results of the
    ; three set operations above
        xor ebx, ebx
    mov ebx, [sample_obj + int_x]
    PRINTF32 `int_x: %d\n\x0`, ebx
    xor ebx, ebx
    mov ebx, [sample_obj + char_y]
    PRINTF32 `char_y: %c\n\x0`, ebx

    lea eax, [sample_obj + string_s]
    PRINTF32 `string_s: %s\n\x0`, eax

    xor eax, eax
    leave
    ret
