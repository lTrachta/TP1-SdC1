global calcular_conversion
section .text
; Se asume que el primer parámetro está en rdi (en Linux x86-64 cdecl moderno)
calcular_conversion:
    push rbp
    mov rbp, rsp
    ; Convertir: asume que el parámetro ya es entero en edi
    mov eax, edi     ; mover parámetro a eax
    add eax, 1       ; sumar 1
    pop rbp
    ret
