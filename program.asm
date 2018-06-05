  global                 main
  extern	malloc


 section                .text
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   40
     mov            qword[@h],                   99
     mov            qword[@i],                  100
     mov            qword[@j],                  101
     mov            qword[@k],                  102
     mov        qword[@total],                    0
     add                  rsp,                   40
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                   48
    push                  r12
    push                  r13
    push                  rbx
@main.1.enter:
    push                  rsi
call	getInt
     pop                  rsi
     mov                  rsi,                  rax
     mov            qword[@N],                  rsi
     mov                  rbx,                    1
	jmp	@main.6.ForCon
@main.5.ForBody:
     mov                  rdi,                    1
	jmp	@main.11.ForCon
@main.10.ForBody:
     mov                  r12,                    1
	jmp	@main.16.ForCon
@main.15.ForBody:
     mov                   r8,                    1
	jmp	@main.21.ForCon
@main.20.ForBody:
     mov                  r13,                    1
	jmp	@main.26.ForCon
@main.25.ForBody:
     mov                   r9,                    1
	jmp	@main.31.ForCon
@main.30.ForBody:
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.75.cmp_or
     cmp                  rbx,                  r12
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.75.cmp_or:
	je	@main.74.cmp_or
     cmp                  rbx,                   r8
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.74.cmp_or:
	je	@main.73.cmp_or
     cmp                  rbx,                  r13
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.73.cmp_or:
	je	@main.72.cmp_or
     cmp                  rbx,                   r9
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.72.cmp_or:
	je	@main.71.cmp_or
     cmp                  rbx,            qword[@h]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.71.cmp_or:
	je	@main.70.cmp_or
     cmp                  rbx,            qword[@i]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.70.cmp_or:
	je	@main.69.cmp_or
     cmp                  rbx,            qword[@j]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.69.cmp_or:
	je	@main.68.cmp_or
     cmp                  rbx,            qword[@k]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.68.cmp_or:
	je	@main.67.cmp_or
     cmp                  rdi,                  r12
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.67.cmp_or:
	je	@main.66.cmp_or
     cmp                  rdi,                   r8
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.66.cmp_or:
	je	@main.65.cmp_or
     cmp                  rdi,                  r13
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.65.cmp_or:
	je	@main.64.cmp_or
     cmp                  rdi,                   r9
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.64.cmp_or:
	je	@main.63.cmp_or
     cmp                  rdi,            qword[@h]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.63.cmp_or:
	je	@main.62.cmp_or
     cmp                  rdi,            qword[@i]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.62.cmp_or:
	je	@main.61.cmp_or
     cmp                  rdi,            qword[@j]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.61.cmp_or:
	je	@main.60.cmp_or
     cmp                  rdi,            qword[@k]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.60.cmp_or:
	je	@main.59.cmp_or
     cmp                  r12,                   r8
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.59.cmp_or:
	je	@main.58.cmp_or
     cmp                  r12,                  r13
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.58.cmp_or:
	je	@main.57.cmp_or
     cmp                  r12,                   r9
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.57.cmp_or:
	je	@main.56.cmp_or
     cmp                  r12,            qword[@h]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.56.cmp_or:
	je	@main.55.cmp_or
     cmp                  r12,            qword[@i]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.55.cmp_or:
	je	@main.54.cmp_or
     cmp                  r12,            qword[@j]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.54.cmp_or:
	je	@main.53.cmp_or
     cmp                  r12,            qword[@k]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.53.cmp_or:
	je	@main.52.cmp_or
     cmp                   r8,                  r13
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.52.cmp_or:
	je	@main.51.cmp_or
     cmp                   r8,                   r9
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.51.cmp_or:
	je	@main.50.cmp_or
     cmp                   r8,            qword[@h]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.50.cmp_or:
	je	@main.49.cmp_or
     cmp                   r8,            qword[@i]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.49.cmp_or:
	je	@main.48.cmp_or
     cmp                   r8,            qword[@j]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.48.cmp_or:
	je	@main.47.cmp_or
     cmp                   r8,            qword[@k]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.47.cmp_or:
	je	@main.46.cmp_or
     cmp                  r13,                   r9
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.46.cmp_or:
	je	@main.45.cmp_or
     cmp                  r13,            qword[@h]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.45.cmp_or:
	je	@main.44.cmp_or
     cmp                  r13,            qword[@i]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.44.cmp_or:
	je	@main.43.cmp_or
     cmp                  r13,            qword[@j]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.43.cmp_or:
	je	@main.42.cmp_or
     cmp                  r13,            qword[@k]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.42.cmp_or:
	je	@main.41.cmp_or
     cmp                   r9,            qword[@h]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.41.cmp_or:
	je	@main.40.cmp_or
     cmp                   r9,            qword[@i]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.40.cmp_or:
	je	@main.39.cmp_or
     cmp                   r9,            qword[@j]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.39.cmp_or:
	je	@main.38.cmp_or
     cmp                   r9,            qword[@k]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.38.cmp_or:
	je	@main.37.cmp_or
     mov                  rsi,            qword[@i]
     cmp                  rsi,            qword[@j]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.37.cmp_or:
	je	@main.36.cmp_or
     mov                  rsi,            qword[@h]
     cmp                  rsi,            qword[@k]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
@main.36.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.34.IfTrue
	jmp	@main.33.IfFalse
@main.34.IfTrue:
     add        qword[@total],                    1
	jmp	@main.35.IfExit
@main.33.IfFalse:
@main.35.IfExit:
     add                   r9,                    1
@main.31.ForCon:
     cmp                   r9,            qword[@N]
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.30.ForBody
     add                  r13,                    1
@main.26.ForCon:
     cmp                  r13,            qword[@N]
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.25.ForBody
     add                   r8,                    1
@main.21.ForCon:
     cmp                   r8,            qword[@N]
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.20.ForBody
     add                  r12,                    1
@main.16.ForCon:
     cmp                  r12,            qword[@N]
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.15.ForBody
     add                  rdi,                    1
@main.11.ForCon:
     cmp                  rdi,            qword[@N]
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.10.ForBody
     add                  rbx,                    1
@main.6.ForCon:
     cmp                  rbx,            qword[@N]
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.5.ForBody
     mov                  rdi,        qword[@total]
    push                  rsi
call	toString
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rax,                    0
     pop                  rbx
     pop                  r13
     pop                  r12
     add                  rsp,                   48
     pop                  rbp
     ret


 section                 .bss
@N:
  	resq 		1
@h:
  	resq 		1
@i:
  	resq 		1
@j:
  	resq 		1
@k:
  	resq 		1
@total:
  	resq 		1


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



