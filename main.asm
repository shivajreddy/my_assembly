format ELF executable       ; Specify ELF format
entry start                 ; Define the entry point

segment readable executable ; Code segment
start:
    ; Write syscall
    mov eax, 4              ; syscall: write
    mov ebx, 1              ; file descriptor: stdout
    mov ecx, message        ; pointer to the message
    mov edx, message_len    ; length of the message
    int 0x80                ; invoke the syscall

    ; Exit syscall
    mov eax, 1              ; syscall: exit
    xor ebx, ebx            ; return code: 0
    int 0x80                ; invoke the syscall

segment readable writeable  ; Data segment
message db "Hello, World!", 0xA  ; Message with newline
message_len = $ - message        ; Calculate length of the message

