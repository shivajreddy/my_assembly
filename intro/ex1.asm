; This is a comment
global _start

_start:
  mov eax, 1 ; eax is a general purpose registar
  mov ebx, 42
  int 0x80  ; int means interrupt, 

