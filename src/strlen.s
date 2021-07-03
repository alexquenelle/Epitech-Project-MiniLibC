BITS 64

section .text
GLOBAL strlen:function

strlen:
    push  rbp                   ; bouge rbp depuis la heap vers la stack, rbp = base pointer (par convention)
    mov   rbp, rsp              ; rsp = stack pointer, pointe vers le top de la stack, mov = rbp remplacé par rsp
    mov   rax, 0                ; déclare rax, valeure de retour de la fonction

loop:                           ; déclaration d'une nouvelle fonction "loop"
    cmp   byte[rdi + rax], 0    ; compare chaque char de rdi + rax en byte avec 0 pour si la string est terminé
    je    end                   ; si la condition est validée -> end
    inc   rax                   ; inc = inc + 1
    jmp   loop                  ; appel de la fonction "loop" pour boucler

end:
    pop   rbp                   ; restauration du registre
    ret                         ; = return (rax);