; hello.asm (64-bit Linux NASM)

section .data
    msg     db  "Hello, world!", 0xa  ; 0xa = newline
    len     equ $ - msg             ; length of the message

section .text
    global _start

_start:
    ; syscall: write(STDOUT=1, &msg, len)
    mov rax, 1       ; system call number for sys_write
    mov rdi, 1       ; file descriptor 1 (stdout)
    mov rsi, msg     ; address of our string
    mov rdx, len     ; length of our string
    syscall

    ; syscall: exit(0)
    mov rax, 60      ; system call number for sys_exit
    xor rdi, rdi     ; exit code 0
    syscall
