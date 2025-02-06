;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;; nasm -f elf -o first.o first.asm 
;;  -f elf     => file format is elf
;;  -o first.o => output file name is going to be first.o
;;  first.asm  => this is the input file (it should be assembly file)
;;
;; ld -m elf_i386 -o first first.o 
;; ld       => load
;; -m elf   => specifing the compilation for intel-32bit-x86processor
;; -o first => output(executable) file name
;; first.o  => input file (it should be object file)
;;
;; nasm -f elf -o first.o first.asm && ld -m elf_i386 -o first first.o && ./first
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; FIRST EVER ASSEMBLY PROGRAM
section .data ;; This section stores data, that we need later

section .text
global _start ;; this says the entry is at the label '_start'

_start:       ;; defines the block of code under a label
  MOV eax,1
  MOV ebx,12
  INT 80h

