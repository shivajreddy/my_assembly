;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; Data types
;
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
  MOV eax,1
  MOV ebx,[num1]
  MOV ecx,[num2]
  INT 80h       ; sys call to stop by return with value thats inside 'ebx'

