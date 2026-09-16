global _start

section .text
_start:
    mov eax, 4          ; sys_write
    mov ebx, 1          ; stdout
    mov ecx, msg        ; указатель на строку
    mov edx, len        ; длина строки
    int 0x80            ; системный вызов

    mov eax, 1          ; sys_exit
    xor ebx, ebx        ; exit code 0
    int 0x80

section .data
msg db "Hello, Baumanka!", 0xa
len equ $ - msg
