  global                 main
  extern	malloc


 section                .text
func:
    push                  rbp
     mov                  rbp,                  rsp
@func.1.enter:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     mov                   r8,                  rdx
     mov                  rdi,                  rdi
     add                  rdi,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                   r8
     mov                  rsi,                  rsi
     and                  rsi,           1073741823
     mov                  rax,                  rsi
	jmp	@func.2.exit
@func.2.exit:
     pop                  rbp
     ret
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                   16
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
@main.1.enter:
     mov                  r11,                  700
     mov                  rdi,                  r11
     mov                  rsi,                  r11
     add                  rdi,                    1
     shl                  rdi,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  rdi
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov           qword[rbx],                  rsi
     add                  rbx,                    8
     sub                  rdi,                    8
     mov                  r12,                  rbx
     mov                  rsi,                  rbx
     add                  rsi,                  rdi
@main.3.Allocate2:
     mov                  r13,                  r11
     mov                  rdi,                  r11
     add                  r13,                    1
     shl                  r13,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  r13
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                   r8,                  rax
     mov            qword[r8],                  rdi
     add                   r8,                    8
     sub                  r13,                    8
     mov           qword[r12],                   r8
     add                  r12,                    8
     cmp                  r12,                  rsi
	jl	@main.3.Allocate2
     mov         qword[rbp-8],                  rbx
     mov                  rbx,                  r11
     mov                  rsi,                  r11
     add                  rbx,                    1
     shl                  rbx,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  rbx
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                   r9,                  rax
     mov            qword[r9],                  rsi
     add                   r9,                    8
     sub                  rbx,                    8
     mov                  rsi,                   r9
     mov                  rdi,                   r9
     add                  rdi,                  rbx
@main.4.Allocate2:
     mov                  r12,                  r11
     mov                  rbx,                  r11
     add                  r12,                    1
     shl                  r12,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  r12
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  r14,                  rax
     mov           qword[r14],                  rbx
     add                  r14,                    8
     sub                  r12,                    8
     mov           qword[rsi],                  r14
     add                  rsi,                    8
     cmp                  rsi,                  rdi
	jl	@main.4.Allocate2
     mov                  r14,                   r9
     mov                  rbx,                  r11
     mov                  rsi,                  r11
     add                  rbx,                    1
     shl                  rbx,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  rbx
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  r10,                  rax
     mov           qword[r10],                  rsi
     add                  r10,                    8
     sub                  rbx,                    8
     mov                  rdi,                  r10
     mov                  rsi,                  r10
     add                  rsi,                  rbx
@main.5.Allocate2:
     mov                  r12,                  r11
     mov                  rbx,                  r11
     add                  r12,                    1
     shl                  r12,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  r12
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  r15,                  rax
     mov           qword[r15],                  rbx
     add                  r15,                    8
     sub                  r12,                    8
     mov           qword[rdi],                  r15
     add                  rdi,                    8
     cmp                  rdi,                  rsi
	jl	@main.5.Allocate2
     mov                  r12,                  r10
     mov                  r15,                    0
	jmp	@main.8.ForCon
@main.7.ForBody:
     mov        qword[rbp-16],                    0
	jmp	@main.12.ForCon
@main.11.ForBody:
     mov                  rsi,         qword[rbp-8]
     mov                  rbx,                  r15
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov                  rsi,           qword[rsi]
     mov                  rbx,        qword[rbp-16]
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov                  rbx,                  r15
     add                  rbx,        qword[rbp-16]
     mov           qword[rsi],                  rbx
	jmp	@main.10.ForIter
@main.10.ForIter:
     add        qword[rbp-16],                    1
     mov                  rsi,        qword[rbp-16]
	jmp	@main.12.ForCon
@main.12.ForCon:
     cmp        qword[rbp-16],                  r11
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.11.ForBody
	jmp	@main.13.ForExit
@main.13.ForExit:
	jmp	@main.6.ForIter
@main.6.ForIter:
     add                  r15,                    1
     mov                  rsi,                  r15
	jmp	@main.8.ForCon
@main.8.ForCon:
     cmp                  r15,                  r11
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.7.ForBody
	jmp	@main.9.ForExit
@main.9.ForExit:
     mov                  r15,                    0
	jmp	@main.16.ForCon
@main.15.ForBody:
     mov        qword[rbp-16],                    0
	jmp	@main.20.ForCon
@main.19.ForBody:
     mov                  r10,                    0
	jmp	@main.24.ForCon
@main.23.ForBody:
     cmp        qword[rbp-16],                  r15
     mov                  rax,                    0
   setge                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.27.IfTrue
	jmp	@main.26.IfFalse
@main.27.IfTrue:
     mov                  rsi,                  r14
     mov                  rbx,                  r15
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov                   r8,           qword[rsi]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rsi,                  r14
     mov                  rbx,                  r15
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov                  rbx,           qword[rsi]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,         qword[rbp-8]
     mov                  rdi,                  r15
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  r13,           qword[rsi]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  r13,                  rsi
     mov                  rsi,         qword[rbp-8]
     mov                  rdi,                  r10
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rsi,           qword[rsi]
     mov                  rdi,        qword[rbp-16]
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rdi,           qword[rbx]
     mov                  rbx,           qword[r13]
     mov                  rsi,           qword[rsi]
@main.39.@func.1.enter:
     mov                  rdi,                  rdi
     add                  rdi,                  rbx
     mov                  rbx,                  rdi
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,           1073741823
     mov                  rsi,                  rsi
	jmp	@main.38.@func.2.exit
@main.38.@func.2.exit:
     mov                  rsi,                  rsi
     mov            qword[r8],                  rsi
     mov                  rsi,                  r12
     mov                  rbx,                  r15
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov                   r8,           qword[rsi]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rsi,                  r14
     mov                  rbx,                  r15
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov                  rsi,           qword[rsi]
     mov                  rbx,        qword[rbp-16]
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov                  rbx,         qword[rbp-8]
     mov                  rdi,                  r15
     shl                  rdi,                    3
     add                  rbx,                  rdi
     mov                  r13,           qword[rbx]
     mov                  rbx,                  r10
     shl                  rbx,                    3
     add                  r13,                  rbx
     mov                  rbx,         qword[rbp-8]
     mov                  rdi,                  r10
     shl                  rdi,                    3
     add                  rbx,                  rdi
     mov                   r9,           qword[rbx]
     mov                  rbx,        qword[rbp-16]
     shl                  rbx,                    3
     add                   r9,                  rbx
     mov                  rdi,           qword[rsi]
     mov                  rbx,           qword[r13]
     mov                  rsi,            qword[r9]
@main.41.@func.1.enter:
     mov                  rdi,                  rdi
     add                  rdi,                  rbx
     mov                  rbx,                  rdi
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,           1073741823
     mov                  rsi,                  rsi
	jmp	@main.40.@func.2.exit
@main.40.@func.2.exit:
     mov                  rsi,                  rsi
     mov            qword[r8],                  rsi
     mov                  rsi,                  r12
     mov                  rbx,                  r15
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov                   r8,           qword[rsi]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rsi,                  r14
     mov                  rbx,                  r15
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov                  rsi,           qword[rsi]
     mov                  rbx,        qword[rbp-16]
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov                  rbx,         qword[rbp-8]
     mov                  rdi,                  r15
     shl                  rdi,                    3
     add                  rbx,                  rdi
     mov                  rbx,           qword[rbx]
     mov                  rdi,                  r10
     shl                  rdi,                    3
     add                  rbx,                  rdi
     mov                  rdi,         qword[rbp-8]
     mov                  r13,                  r10
     shl                  r13,                    3
     add                  rdi,                  r13
     mov                  r13,           qword[rdi]
     mov                  rdi,        qword[rbp-16]
     shl                  rdi,                    3
     add                  r13,                  rdi
     mov                  rdi,           qword[rsi]
     mov                  rbx,           qword[rbx]
     mov                  rsi,           qword[r13]
@main.43.@func.1.enter:
     mov                  rdi,                  rdi
     add                  rdi,                  rbx
     mov                  rbx,                  rdi
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,           1073741823
     mov                  rsi,                  rsi
	jmp	@main.42.@func.2.exit
@main.42.@func.2.exit:
     mov                  rsi,                  rsi
     mov            qword[r8],                  rsi
     mov                  rsi,                  r12
     mov                  rbx,                  r15
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov                   r8,           qword[rsi]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rsi,                  r14
     mov                  rbx,                  r15
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov                  rsi,           qword[rsi]
     mov                  rbx,        qword[rbp-16]
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov                  rbx,         qword[rbp-8]
     mov                  rdi,                  r15
     shl                  rdi,                    3
     add                  rbx,                  rdi
     mov                  rbx,           qword[rbx]
     mov                  rdi,                  r10
     shl                  rdi,                    3
     add                  rbx,                  rdi
     mov                  rdi,         qword[rbp-8]
     mov                  r13,                  r10
     shl                  r13,                    3
     add                  rdi,                  r13
     mov                  r13,           qword[rdi]
     mov                  rdi,        qword[rbp-16]
     shl                  rdi,                    3
     add                  r13,                  rdi
     mov                  rdi,           qword[rsi]
     mov                  rbx,           qword[rbx]
     mov                  rsi,           qword[r13]
@main.45.@func.1.enter:
     mov                  rdi,                  rdi
     add                  rdi,                  rbx
     mov                  rbx,                  rdi
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,           1073741823
     mov                  rsi,                  rsi
	jmp	@main.44.@func.2.exit
@main.44.@func.2.exit:
     mov                  rsi,                  rsi
     mov            qword[r8],                  rsi
	jmp	@main.28.IfExit
@main.26.IfFalse:
@main.28.IfExit:
	jmp	@main.22.ForIter
@main.22.ForIter:
     add                  r10,                    1
     mov                  rsi,                  r10
	jmp	@main.24.ForCon
@main.24.ForCon:
     cmp                  r10,                  r11
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.23.ForBody
	jmp	@main.25.ForExit
@main.25.ForExit:
	jmp	@main.18.ForIter
@main.18.ForIter:
     add        qword[rbp-16],                    1
     mov                  rsi,        qword[rbp-16]
	jmp	@main.20.ForCon
@main.20.ForCon:
     cmp        qword[rbp-16],                  r11
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.19.ForBody
	jmp	@main.21.ForExit
@main.21.ForExit:
	jmp	@main.14.ForIter
@main.14.ForIter:
     add                  r15,                    1
     mov                  rsi,                  r15
	jmp	@main.16.ForCon
@main.16.ForCon:
     cmp                  r15,                  r11
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.15.ForBody
	jmp	@main.17.ForExit
@main.17.ForExit:
     mov                  rsi,                    0
     mov                  r15,                    0
	jmp	@main.31.ForCon
@main.30.ForBody:
     mov        qword[rbp-16],                    0
	jmp	@main.35.ForCon
@main.34.ForBody:
     mov                  rbx,                  r14
     mov                  rdi,                  r15
     shl                  rdi,                    3
     add                  rbx,                  rdi
     mov                  rbx,           qword[rbx]
     mov                  rdi,        qword[rbp-16]
     shl                  rdi,                    3
     add                  rbx,                  rdi
     mov                  rsi,                  rsi
     add                  rsi,           qword[rbx]
     mov                  rsi,                  rsi
     and                  rsi,           1073741823
     mov                  rsi,                  rsi
	jmp	@main.33.ForIter
@main.33.ForIter:
     add        qword[rbp-16],                    1
     mov                  rbx,        qword[rbp-16]
	jmp	@main.35.ForCon
@main.35.ForCon:
     cmp        qword[rbp-16],                  r11
     mov                  rax,                    0
    setl                   al
     mov                  rbx,                  rax
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@main.34.ForBody
	jmp	@main.36.ForExit
@main.36.ForExit:
	jmp	@main.29.ForIter
@main.29.ForIter:
     add                  r15,                    1
     mov                  rbx,                  r15
	jmp	@main.31.ForCon
@main.31.ForCon:
     cmp                  r15,                  r11
     mov                  rax,                    0
    setl                   al
     mov                  rbx,                  rax
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@main.30.ForBody
	jmp	@main.32.ForExit
@main.32.ForExit:
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rax,                    0
	jmp	@main.2.exit
@main.2.exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   16
     pop                  rbp
     ret


 section                 .bss


 section                .data






default rel

global print
global println
global getString
global getInt
global toString
global __length__
global __substring__
global __parseInt__
global __ord__
global __string_equal__
global __string_not_equal__
global __string_less__
global __string_less_equal__
global __string_greater__
global __string_greater_equal__
global __string_connect__
global __size__
global main

extern strcpy
extern memcpy
extern __sprintf_chk
extern __stack_chk_fail
extern __isoc99_scanf
extern malloc
extern puts
extern __printf_chk


SECTION .text   6

print:
        mov     rdx, rdi
        mov     esi, L_037
        mov     edi, 1
        xor     eax, eax
        jmp     __printf_chk







ALIGN   16

println:
        jmp     puts


        nop





ALIGN   16

getString:
        push    rbp
        push    rbx
        mov     edi, 264
        sub     rsp, 8
        call    malloc
        lea     rbx, [rax+8H]
        mov     rbp, rax
        mov     edi, L_037
        xor     eax, eax
        mov     rsi, rbx
        call    __isoc99_scanf
        mov     rdx, rbx
L_001:  mov     ecx, dword [rdx]
        add     rdx, 4
        lea     eax, [rcx-1010101H]
        not     ecx
        and     eax, ecx
        and     eax, 80808080H
        jz      L_001
        mov     ecx, eax
        shr     ecx, 16
        test    eax, 8080H
        cmove   eax, ecx
        lea     rcx, [rdx+2H]
        mov     esi, eax
        cmove   rdx, rcx
        add     sil, al
        mov     rax, rbx
        sbb     rdx, 3
        sub     rdx, rbx
        mov     qword [rbp], rdx
        add     rsp, 8
        pop     rbx
        pop     rbp
        ret


        nop

ALIGN   16
getInt:
        sub     rsp, 24
        mov     edi, L_038


        mov     rax, qword [fs:abs 28H]
        mov     qword [rsp+8H], rax
        xor     eax, eax
        mov     rsi, rsp
        call    __isoc99_scanf
        mov     rdx, qword [rsp+8H]


        xor     rdx, qword [fs:abs 28H]
        mov     rax, qword [rsp]
        jnz     L_002
        add     rsp, 24
        ret

L_002:  call    __stack_chk_fail
        nop
ALIGN   16

toString:
        push    r12
        push    rbp
        mov     r12, rdi
        push    rbx
        mov     edi, 29
        call    malloc
        lea     rbx, [rax+8H]
        mov     edx, 21
        mov     rbp, rax
        mov     r8, r12
        mov     ecx, L_038
        mov     esi, 1
        mov     rdi, rbx
        xor     eax, eax
        call    __sprintf_chk
        mov     rdx, rbx
L_003:  mov     ecx, dword [rdx]
        add     rdx, 4
        lea     eax, [rcx-1010101H]
        not     ecx
        and     eax, ecx
        and     eax, 80808080H
        jz      L_003
        mov     ecx, eax
        shr     ecx, 16
        test    eax, 8080H
        cmove   eax, ecx
        lea     rcx, [rdx+2H]
        mov     esi, eax
        cmove   rdx, rcx
        add     sil, al
        mov     rax, rbx
        sbb     rdx, 3
        sub     rdx, rbx
        mov     qword [rbp], rdx
        pop     rbx
        pop     rbp
        pop     r12
        ret






ALIGN   8

__length__:
        mov     rax, qword [rdi-8H]
        ret


        nop





ALIGN   16

__substring__:
        push    r13
        push    r12
        mov     r13, rdi
        push    rbp
        push    rbx
        lea     rbx, [rdx+1H]
        mov     rbp, rsi
        sub     rbx, rsi
        sub     rsp, 8
        lea     rdi, [rbx+9H]
        call    malloc
        lea     rcx, [rax+8H]
        lea     rsi, [r13+rbp]
        mov     r12, rax
        mov     rdx, rbx
        mov     rdi, rcx
        call    memcpy
        mov     byte [r12+rbx+8H], 0
        mov     qword [r12], rbx
        add     rsp, 8
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        ret






ALIGN   8

__parseInt__:
        movsx   edx, byte [rdi]
        cmp     dl, 45
        jz      L_006
        lea     eax, [rdx-30H]
        xor     esi, esi
        cmp     al, 9
        ja      L_007
L_004:  xor     eax, eax




ALIGN   8
L_005:  sub     edx, 48
        lea     rax, [rax+rax*4]
        add     rdi, 1
        movsxd  rdx, edx
        lea     rax, [rdx+rax*2]
        movsx   edx, byte [rdi]
        lea     ecx, [rdx-30H]
        cmp     cl, 9
        jbe     L_005
        mov     rdx, rax
        neg     rdx
        cmp     esi, 1
        cmove   rax, rdx
        ret





ALIGN   8
L_006:  movsx   edx, byte [rdi+1H]
        lea     rax, [rdi+1H]
        lea     ecx, [rdx-30H]
        cmp     cl, 9
        ja      L_007
        mov     rdi, rax
        mov     esi, 1
        jmp     L_004

L_007:  xor     eax, eax
        ret


        nop





ALIGN   16

__ord__:
        movsx   rax, byte [rdi+rsi]
        ret







ALIGN   16

__string_equal__:
        xor     eax, eax
        mov     rcx, qword [rsi-8H]
        cmp     qword [rdi-8H], rcx
        jz      L_008

        ret





ALIGN   8
L_008:  movzx   edx, byte [rdi]
        test    dl, dl
        jz      L_011
        movzx   ecx, byte [rsi]
        test    cl, cl
        jz      L_011
        cmp     dl, cl
        jz      L_010
        jmp     L_013





ALIGN   8
L_009:  movzx   edx, byte [rsi]
        test    dl, dl
        jz      L_011
        cmp     al, dl
        jnz     L_012
L_010:  add     rdi, 1
        movzx   eax, byte [rdi]
        add     rsi, 1
        test    al, al
        jnz     L_009
L_011:  mov     eax, 1
        ret





ALIGN   16
L_012:  xor     eax, eax
        ret

L_013:

        ret


        nop





ALIGN   16

__string_not_equal__:
        mov     rcx, qword [rsi-8H]
        cmp     qword [rdi-8H], rcx
        mov     eax, 1
        jz      L_014

        ret





ALIGN   8
L_014:  movzx   edx, byte [rdi]
        test    dl, dl
        jz      L_017
        movzx   ecx, byte [rsi]
        test    cl, cl
        jz      L_017
        cmp     dl, cl
        jz      L_016
        jmp     L_019





ALIGN   8
L_015:  movzx   edx, byte [rsi]
        test    dl, dl
        jz      L_017
        cmp     al, dl
        jnz     L_018
L_016:  add     rdi, 1
        movzx   eax, byte [rdi]
        add     rsi, 1
        test    al, al
        jnz     L_015
L_017:  xor     eax, eax
        ret





ALIGN   8
L_018:  mov     eax, 1
        ret

L_019:

        ret






ALIGN   16

__string_less__:
        movzx   edx, byte [rdi]
        movzx   eax, byte [rsi]
        test    dl, dl
        jz      L_022
        test    al, al
        jz      L_022
        cmp     al, dl
        jg      L_023
        jge     L_021
        jmp     L_024






ALIGN   16
L_020:  test    al, al
        jz      L_022
        cmp     dl, al
        jl      L_023
        mov     rsi, rcx
        jg      L_024
L_021:  add     rdi, 1
        movzx   edx, byte [rdi]
        lea     rcx, [rsi+1H]
        movzx   eax, byte [rsi+1H]
        test    dl, dl
        jnz     L_020
L_022:  test    al, al
        setne   al
        movzx   eax, al
        ret





ALIGN   8
L_023:  mov     eax, 1
        ret






ALIGN   16
L_024:  xor     eax, eax
        ret







ALIGN   16

__string_less_equal__:
        movzx   eax, byte [rdi]
        test    al, al
        jz      L_027
        movzx   edx, byte [rsi]
        test    dl, dl
        jz      L_028
        cmp     dl, al
        jg      L_027
        jge     L_026
        jmp     L_028






ALIGN   16
L_025:  movzx   edx, byte [rsi]
        test    dl, dl
        jz      L_028
        cmp     al, dl
        jl      L_027
        jg      L_028
L_026:  add     rdi, 1
        movzx   eax, byte [rdi]
        add     rsi, 1
        test    al, al
        jnz     L_025
L_027:  mov     eax, 1
        ret





ALIGN   8
L_028:  xor     eax, eax
        ret






ALIGN   8

__string_greater__:
        movzx   eax, byte [rdi]
        test    al, al
        jnz     L_030
        jmp     L_032





ALIGN   8
L_029:  cmp     al, dl
        jl      L_032
        jg      L_031
        add     rdi, 1
        movzx   eax, byte [rdi]
        add     rsi, 1
        test    al, al
        jz      L_032
L_030:  movzx   edx, byte [rsi]
        test    dl, dl
        jnz     L_029
L_031:  mov     eax, 1
        ret





ALIGN   8
L_032:  xor     eax, eax
        ret






ALIGN   8

__string_greater_equal__:
        movzx   eax, byte [rdi]
        test    al, al
        jz      L_035
        movzx   edx, byte [rsi]
        cmp     al, dl
        jg      L_036
        test    dl, dl
        jnz     L_034
        jmp     L_036





ALIGN   8
L_033:  add     rdi, 1
        movzx   eax, byte [rdi]
        add     rsi, 1
        test    al, al
        jz      L_035
        movzx   edx, byte [rsi]
        test    dl, dl
        jz      L_036
        cmp     al, dl
        jg      L_036
L_034:  cmp     al, dl
        jge     L_033
        xor     eax, eax
        ret





ALIGN   8
L_035:  xor     eax, eax
        cmp     byte [rsi], 0
        sete    al
        ret





ALIGN   8
L_036:  mov     eax, 1
        ret







ALIGN   16

__string_connect__:
        push    r15
        push    r14
        mov     r15, rdi
        push    r13
        push    r12
        mov     r14, rsi
        push    rbp
        push    rbx
        sub     rsp, 8
        mov     rbx, qword [rdi-8H]
        mov     r13, rbx
        add     r13, qword [rsi-8H]
        lea     rdi, [r13+9H]
        call    malloc
        lea     rbp, [rax+8H]
        mov     rsi, r15
        mov     r12, rax
        mov     rdi, rbp
        call    strcpy
        lea     rdi, [rbp+rbx]
        mov     rsi, r14
        call    strcpy
        mov     qword [r12], r13
        add     rsp, 8
        mov     rax, rbp
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret






ALIGN   8

__size__:
        mov     rax, qword [rdi-8H]
        ret



SECTION .data


SECTION .bss


SECTION .rodata.str1.1

L_037:
        db 25H, 73H, 00H

L_038:
        db 25H, 6CH, 64H, 00H


SECTION .text.unlikely


SECTION .text.startup 6



