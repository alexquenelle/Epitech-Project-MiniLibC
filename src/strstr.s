BITS 64

section .text
GLOBAL strstr:function

strstr:                                 ; trouve la premiere occurrence de rsi dans rdi
    mov    rcx, 0
    jmp    loop

restart:
    cmp    r10b, 0
    je     ko
    inc    rdi

loop:
    mov    r10b, byte [rdi + rcx]
    mov    r11b, byte [rsi + rcx]
    cmp    r11b, 0
    je     ok
    cmp    r10b, r11b
    jne    restart
    inc    rcx
    jmp    loop

ok:
    mov    rax, rdi
    ret

ko:
    mov    rax, 0
    ret