%include "printf32.asm"

section .data
    myString: db "Hello, World!", 0
    goodbye: db "Goodbye, World!", 0

section .text
    global main
    extern printf

main:
    mov ecx, 6                      ; N = 6 valoarea registrului ecx
    mov eax, 1
    mov ebx, 1
    cmp eax, ebx
    je print                        ; TODO1: eax > ebx?
    ret

print:
    PRINTF32 `%s\n\x0`, myString
                                    ; TODO2.2: afisati "Hello, World!" de N ori
    dec ecx
    cmp ecx, 0
    jg print
                                    ; TODO2.1: afisati "Goodbye, World!"
    PRINTF32 `%s\n\x0`, goodbye
    ret
