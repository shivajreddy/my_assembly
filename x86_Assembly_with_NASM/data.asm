;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; Data types
;
; nasm -f elf first.asm && ld -m elf_i386 -o first first.o && ./first
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

section .data
  num  DB  77
  num2 DB  88
  ; num => name of the variable
  ; DD => size, DD means double words which is 32 bits(4 bytes)
  ; 99 => value

section .text
global _start

_start:
        MOV ebx,[num]
        MOV ecx,[num2]

        MOV eax,1
        INT 80h

