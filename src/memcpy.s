BITS 64

section .text
GLOBAL memcpy:function

memcpy:
   push   rbp
   mov    rbp, rsp
   mov    rax, 0

loop:
   cmp    rdx, rax
   je     end
   mov    r10b, [rsi + rax]
   mov    [rdi + rax], r10b
   inc    rax
   jmp    loop

end:
   mov    rax, rdi
   mov    rsp, rbp
   pop    rbp
   ret