BITS 64

section .text
GLOBAL strcmp:function

strcmp:
    push   rbp
    mov    rbp, rsp
    mov    rax, 0

loop:
    mov    r10b, byte [rdi + rax]
    mov    r11b, byte [rsi + rax]
    cmp    r10b, 0
    je     end
    cmp    r11b, 0
    je     end
    cmp    r10b, r11b
    jne    end
    inc    rax
    jmp    loop

end:
    movzx  rax, r10b
    movzx  rbx, r11b
    sub    rax, rbx
    pop    rbp
	ret