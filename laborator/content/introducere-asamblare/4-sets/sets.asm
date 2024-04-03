%include "printf32.asm"

section .text
    global main
    extern printf

main:
    ;cele doua multimi se gasesc in eax si ebx
    mov eax, 139
    mov ebx, 169
    PRINTF32 `%u\n\x0`, eax ; afiseaza prima multime
    PRINTF32 `%u\n\x0`, ebx ; afiseaza cea de-a doua multime


    ; TODO1: reuniunea a doua multimi
    mov edx, eax
    or edx, ebx
    PRINTF32 `Reuniunea este: \x0`
    PRINTF32 `%u\n\x0`, edx

    ; TODO2: adaugarea a doua elemente in multime
    or edx, 0x280
    PRINTF32 `Adaugam 2 elemente: \x0`
    PRINTF32 `%u\n\x0`, edx

    ; TODO3: intersectia a doua multimi
    and eax, ebx
    PRINTF32 `Intersectia este: \x0`
    PRINTF32 `%u\n\x0`, eax

    ; TODO4: complementul unei multimi
    mov edx, eax
    not edx
    PRINTF32 `Complementul este: \x0`
    PRINTF32 `%u\n\x0`, edx

    ; TODO5: eliminarea unui element
    sub eax, 8
    PRINTF32 `Eliminam un element: \x0`
    PRINTF32 `%u\n\x0`, eax

    ; TODO6: diferenta de multimi EAX-EBX
    mov eax, 169
    mov ebx, 139
    PRINTF32 `%u\n\x0`, eax ; afiseaza prima multime
    PRINTF32 `%u\n\x0`, ebx ; afiseaza cea de-a doua multime
    and ebx, eax
    PRINTF32 `Intersectia eax-ebx este: \x0`
    PRINTF32 `%u\n\x0`, ebx ;
    sub eax, ebx
    PRINTF32 `Diferenta eax-ebx este: \x0`
    PRINTF32 `%u\n\x0`, eax ;
    ;1.intersectia
    ; scad din eax intersectia

    xor eax, eax
    ret
