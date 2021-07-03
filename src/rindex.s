BITS 64
section .text
GLOBAL rindex:function

rindex:                                 ; = strchr sauf qu'il nous faut la derniere occurence
    push    rbp
    mov     rbp, rsp

    mov     rax, 0
    mov	    rcx, 0

len:                                    ; permet de placer l'incrémenteur a la fin de la str
    cmp     byte [rdi + rcx], 0
    je      loop
    inc     rcx
    jmp     len

loop:
    cmp     byte [rdi + rcx], sil
    je      match
    cmp     rcx, 0
    je      ko
    dec     rcx
    jmp     loop

match:
    mov     rax, rdi
    add		rax, rcx                    ; add = ajoute rcx a rax
    mov     rsp, rbp
    pop     rbp
    ret

ko:
    mov    rax, 0
    mov    rsp, rbp
    pop    rbp
    ret