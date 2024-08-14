section .data
    hello db 'Hello, World!', 0x0A ; String to print followed by newline

section .text
    global _start

_start:
    ; Write system call
    mov eax, 4          ; syscall number for sys_write
    mov ebx, 1          ; file descriptor 1 is stdout
    mov ecx, hello      ; pointer to the string
    mov edx, 14         ; length of the string
    int 0x80            ; call kernel

    ; Exit system call
    mov eax, 1          ; syscall number for sys_exit
    xor ebx, ebx        ; exit code 0
    int 0x80            ; call kernel
