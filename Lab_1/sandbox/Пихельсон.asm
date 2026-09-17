format ELF
public _start

section '.text' executable
_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg1
    mov edx, len1
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, msg2
    mov edx, len2
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, msg3
    mov edx, len3
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80

section '.data' writeable
msg1 db 'Пихельсон', 0xA
len1 = $ - msg1
msg2 db 'Александр', 0xA
len2 = $ - msg2
msg3 db 'Дмитриевич', 0xA
len3 = $ - msg3
