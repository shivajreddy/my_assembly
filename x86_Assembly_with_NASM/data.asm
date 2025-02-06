;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; Data types
;
; nasm -f elf -o first.o first.asm && ld -m elf_i386 -o first first.o && ./first
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

section .data

section .text
  num1 DB 77
  num2 DB 88
  num DD  99
  ; num => name of the variable
  ; DD => size, DD means double words which is 32 bits(4 bytes)
  ; 99 => value

global _start
_start:
  MOV ebx,[num1]
  MOV ecx,[num2]
  MOV eax,1
  INT 80h       ; sys call to stop by return with value thats inside 'eax'


