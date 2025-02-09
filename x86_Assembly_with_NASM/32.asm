section .data
    ; Define a null-terminated string
    message db 'Hello, macOS!', 0x0A  ; 0x0A is the newline character
    message_len equ $ - message       ; Calculate the length of the message

section .text
    global _main                      ; Entry point for macOS

_main:
    ; Write the message to stdout
    mov eax, 4                        ; syscall: write
    mov ebx, 1                        ; file descriptor: stdout
    mov ecx, message                  ; pointer to the message
    mov edx, message_len              ; length of the message
    int 0x80                          ; invoke the system call

    ; Exit the program
    mov eax, 1                        ; syscall: exit
    mov ebx, 0                        ; exit code: 0
    int 0x80                          ; invoke the system call
