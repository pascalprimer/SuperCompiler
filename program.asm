  global                 main
  extern	malloc


 section                .text
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
@main.1.enter:
     mov                  r10,                10000
     mov                  rbx,                    0
     mov                  r14,                 2800
     mov                  rsi,                    0
     mov                  r15,                    0
     mov                  rsi,                 2801
     mov                  rdi,                 2801
     add                  rsi,                    1
     shl                  rsi,                    3
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
     mov                  r12,                  rax
     mov           qword[r12],                  rdi
     add                  r12,                    8
     sub                  rsi,                    8
     mov                   r9,                  r12
     mov                  rdi,                    0
	jmp	@main.6.ForCon
@main.5.ForBody:
     mov                  rsi,                  rbx
     add                  rbx,                    1
     mov                  rdi,                   r9
     mov                  rsi,                  rsi
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,                  r10
     mov                  rax,                  rsi
     mov                  rcx,                    5
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov           qword[rdi],                  rsi
	jmp	@main.4.ForIter
@main.4.ForIter:
	jmp	@main.6.ForCon
@main.6.ForCon:
     mov                  rsi,                  rbx
     sub                  rsi,                  r14
     cmp                  rsi,                    0
     mov                  rax,                    0
   setne                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.5.ForBody
	jmp	@main.7.ForExit
@main.7.ForExit:
	jmp	@main.9.ForBody
@main.9.ForBody:
     mov                  rsi,                    0
     mov                  rbx,                  r14
    imul                  rbx,                    2
     mov                  rdi,                  rbx
     cmp                  rdi,                    0
     mov                  rax,                    0
    sete                   al
     mov                  rbx,                  rax
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@main.13.IfTrue
	jmp	@main.12.IfFalse
@main.13.IfTrue:
	jmp	@main.11.ForExit
	jmp	@main.14.IfExit
@main.12.IfFalse:
@main.14.IfExit:
     mov                  rbx,                  r14
	jmp	@main.16.ForBody
@main.16.ForBody:
     mov                   r8,                   r9
     mov                  r12,                  rbx
     shl                  r12,                    3
     add                   r8,                  r12
     mov                  r12,            qword[r8]
    imul                  r12,                  r10
     mov                  rsi,                  rsi
     add                  rsi,                  r12
     mov                  rsi,                  rsi
     mov                   r8,                   r9
     mov                  r12,                  rbx
     shl                  r12,                    3
     add                   r8,                  r12
     sub                  rdi,                    1
     mov                  r13,                  rdi
     mov                  r12,                  rsi
     mov                  rax,                  r12
     mov                  rcx,                  r13
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov            qword[r8],                  r12
     mov                  r12,                  rdi
     sub                  rdi,                    1
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,                  r12
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     sub                  rbx,                    1
     mov                  r12,                  rbx
     cmp                  r12,                    0
     mov                  rax,                    0
    sete                   al
     mov                  r12,                  rax
     mov                  r12,                  r12
     cmp                  r12,                    1
	je	@main.20.IfTrue
	jmp	@main.19.IfFalse
@main.20.IfTrue:
	jmp	@main.18.ForExit
	jmp	@main.21.IfExit
@main.19.IfFalse:
@main.21.IfExit:
	jmp	@main.15.ForIter
@main.15.ForIter:
     mov                  rsi,                  rsi
    imul                  rsi,                  rbx
     mov                  rsi,                  rsi
	jmp	@main.16.ForBody
@main.18.ForExit:
     mov                  rbx,                  r14
     sub                  rbx,                   14
     mov                  r14,                  rbx
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                  r10
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rbx,                  r15
     add                  rbx,                  rdi
     mov                  rdi,                  rbx
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	toString
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	print
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
	jmp	@main.8.ForIter
@main.8.ForIter:
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,                  r10
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r15,                  rsi
	jmp	@main.9.ForBody
@main.11.ForExit:
     mov                  rdi,         __const_str0
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	print
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
     mov                  rax,                    0
	jmp	@main.2.exit
@main.2.exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     pop                  rbp
     ret


 section                 .bss


 section                .data
      dq                    1
__const_str0:
      db "",10,"",0






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



