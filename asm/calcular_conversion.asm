; calcular_conversion.asm
; Para x86-64 con convención System V (Linux)
global calcular_conversion
section .text
calcular_conversion:
    ; Prologo (opcional para una función simple)
    push rbp
    mov rbp, rsp

    ; Convertir float (en xmm0) a entero con truncamiento
    cvttss2si eax, xmm0
    ; Sumar 1 al valor entero
    add eax, 1

    ; Epilogo
    pop rbp
    ret

section .note.GNU-stack

