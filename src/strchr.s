BITS 64

section .text
GLOBAL strchr:function

strchr:
    push   rbp
    mov    rbp, rsp
    mov    rax, 0
    mov	   rcx, 0

loop:
    mov    r11b, byte [rdi + rcx]
    cmp    r11b, sil                    ; sil = petit registre pour le 2eme params permettant de récuperer un char par ex
    je     match                        ; si oui -> match
    cmp    r11b, 0
    je     ko
    inc    rcx
    jmp    loop

ko:                                     ; si le char n'a pas été retourvé
    mov    rax, 0
    mov    rsp, rbp
    pop    rbp
    ret

match:                                  ; si le char a été retrouvé
    cmp    rcx, 0
    je     end
    inc    rdi
    dec    rcx                          ; rcx = rcx - 1
    jmp    match

end:
    mov    rax, rdi
    pop    rbp
    ret