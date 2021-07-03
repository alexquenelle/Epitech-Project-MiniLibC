BITS 64

section .text
GLOBAL strncmp:function

strncmp:
    push   rbp
    mov    rbp, rsp
    mov    rcx, 0
    mov    rax, 0

loop:
    mov    r10b, byte [rdi + rcx]       ; r10b = chaque char de rdi en byte 
    mov    r11b, byte [rsi + rcx]       ; r11b = chaque char de rsi en byte 
    cmp    rdx, rcx                     ; compare le size_t n avec l'inscrémenteur rcx
    je     end
    cmp    r10b, 0                      ; compare de r10b avec 0 pour si c'est la fin de la string
    je     end
    cmp    r11b, 0                      ; compare de r11b avec 0 pour si c'est la fin de la string
    je     end
    cmp    r10b, r11b                   ; compare chaque char stockés dans r10b et r11b
    jne    end                          ; si c'est != -> end
    inc    rcx
    jmp    loop

end:
    movzx  rax, r10b                    ; movzx = instructions qui permet de bouger des petits registres dans des plus gros rax > r10b
    movzx  rbx, r11b
    sub    rax, rbx                     ; soustraction des valeurs en ascii pour avoir la valeur de retour
    pop    rbp
    ret