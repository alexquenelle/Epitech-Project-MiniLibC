BITS 64

section .text
GLOBAL memset:function

memset:                         ; remplit les n premiers char pointés par s avec le char c
    push   rbp
    mov    rbp, rsp
    mov    rax, 0

loop:
    cmp    rax, rdx
    je     end
    mov    [rdi + rax], sil     ; copie a chaque position de rdi + rax le char sil
    inc    rax
    jmp    loop

end:
    mov    rax, rdi
    pop    rbp
    ret