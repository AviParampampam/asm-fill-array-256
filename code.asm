; ЗАДАЧА: Заполнить массив из 256 байт символами '@'
%include "stud_io.inc"

global _start

section .bss
array resb 256  ; Создание метки array на начало зарезервированного массива из 256 байт.

section .text
; ...
    _start: mov ecx, 256    ; ECX - счетчик
    mov ebx, array          ; EBX - позиция в массиве
    mov al,  '@'            ; AL - символ заполнитель

again:  mov [ebx], al       ; Заносим текущую позицию символ @
    inc ebx                 ; Увеличиваем текующую позицию
    dec ecx                 ; Уменьшаем счетчик
    jnz again               ; 'Jump if Not Zero'

    FINISH