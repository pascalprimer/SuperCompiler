  global                 main
  extern	malloc


 section                .text
printNum:
    push                  rbp
     mov                  rbp,                  rsp
@printNum.1.enter:
     mov                  rsi,                  rdi
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
call	println
@printNum.2.exit:
     pop                  rbp
     ret
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   16
     mov                   r8,                    4
     mov                  rdi,                    4
     add                   r8,                    1
     shl                   r8,                    3
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     mov                  rdi,                   r8
    call               malloc
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                  rsi,                  rax
     mov           qword[rsi],                  rdi
     add                  rsi,                    8
     sub                   r8,                    8
     mov            qword[@a],                  rsi
     mov                  rdi,                    5
     mov                  rsi,                    5
     add                  rdi,                    1
     shl                  rdi,                    3
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     mov                  rdi,                  rdi
    call               malloc
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                   r9,                  rax
     mov            qword[r9],                  rsi
     add                   r9,                    8
     sub                  rdi,                    8
     mov            qword[@b],                   r9
     add                  rsp,                   16
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                   32
    push                  r12
    push                  rbx
@main.1.enter:
     mov            qword[@i],                    0
	jmp	@main.5.ForCon
@main.4.ForBody:
     mov                  rbx,            qword[@a]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,                   11
     mov                  rsi,                   11
     add                  r12,                    1
     shl                  r12,                    3
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  r12
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rdi,                  rax
     mov           qword[rdi],                  rsi
     add                  rdi,                    8
     sub                  r12,                    8
     mov           qword[rbx],                  rdi
	jmp	@main.3.ForIter
@main.3.ForIter:
     mov                  rsi,            qword[@i]
     add            qword[@i],                    1
	jmp	@main.5.ForCon
@main.5.ForCon:
     cmp            qword[@i],                    4
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.4.ForBody
	jmp	@main.6.ForExit
@main.6.ForExit:
     mov            qword[@i],                    0
	jmp	@main.9.ForCon
@main.8.ForBody:
     mov            qword[@j],                    0
	jmp	@main.13.ForCon
@main.12.ForBody:
     mov                  rsi,            qword[@a]
     mov                  rbx,            qword[@i]
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov                  rsi,           qword[rsi]
     mov                  rbx,            qword[@j]
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov           qword[rsi],                  888
	jmp	@main.11.ForIter
@main.11.ForIter:
     mov                  rsi,            qword[@j]
     add            qword[@j],                    1
	jmp	@main.13.ForCon
@main.13.ForCon:
     cmp            qword[@j],                   10
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.12.ForBody
	jmp	@main.14.ForExit
@main.14.ForExit:
	jmp	@main.7.ForIter
@main.7.ForIter:
     mov                  rsi,            qword[@i]
     add            qword[@i],                    1
	jmp	@main.9.ForCon
@main.9.ForCon:
     cmp            qword[@i],                    4
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.8.ForBody
	jmp	@main.10.ForExit
@main.10.ForExit:
     mov            qword[@i],                    0
	jmp	@main.17.ForCon
@main.16.ForBody:
     mov                  rbx,            qword[@b]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rbx,                  rsi
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                   16
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov           qword[rbx],                  rsi
     mov                  rsi,            qword[@b]
     mov                  rbx,            qword[@i]
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov                  rsi,           qword[rsi]
     mov           qword[rsi],                   -1
	jmp	@main.15.ForIter
@main.15.ForIter:
     mov                  rsi,            qword[@i]
     add            qword[@i],                    1
	jmp	@main.17.ForCon
@main.17.ForCon:
     cmp            qword[@i],                    5
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.16.ForBody
	jmp	@main.18.ForExit
@main.18.ForExit:
     mov                  rsi,            qword[@a]
     mov                  rsi,        qword[rsi+24]
     mov                  rsi,        qword[rsi+72]
@main.37.@printNum.1.enter:
     mov                  rdi,                  rsi
    push                  rsi
    push                   r8
    push                   r8
    push                   r8
    push                   r8
    push                   r8
call	toString
     pop                   r8
     pop                   r8
     pop                   r8
     pop                   r8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                   r8
    push                   r8
    push                   r8
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r8
     pop                   r8
     pop                   r8
     pop                   r8
     pop                   r8
@main.36.@printNum.2.exit:
     mov                  rsi,                   r8
     mov            qword[@i],                    0
	jmp	@main.21.ForCon
@main.20.ForBody:
     mov            qword[@j],                    0
	jmp	@main.25.ForCon
@main.24.ForBody:
     mov                  rsi,            qword[@a]
     mov                  rbx,            qword[@i]
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov                  rsi,           qword[rsi]
     mov                  rbx,            qword[@j]
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov                  rbx,            qword[@i]
    imul                  rbx,                   10
     mov                  rbx,                  rbx
     add                  rbx,            qword[@j]
     mov           qword[rsi],                  rbx
	jmp	@main.23.ForIter
@main.23.ForIter:
     mov                  rsi,            qword[@j]
     add            qword[@j],                    1
	jmp	@main.25.ForCon
@main.25.ForCon:
     cmp            qword[@j],                    9
     mov                  rsi,                    0
   setle                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.24.ForBody
	jmp	@main.26.ForExit
@main.26.ForExit:
	jmp	@main.19.ForIter
@main.19.ForIter:
     mov                  rsi,            qword[@i]
     add            qword[@i],                    1
	jmp	@main.21.ForCon
@main.21.ForCon:
     cmp            qword[@i],                    3
     mov                  rsi,                    0
   setle                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.20.ForBody
	jmp	@main.22.ForExit
@main.22.ForExit:
     mov            qword[@i],                    0
	jmp	@main.29.ForCon
@main.28.ForBody:
     mov            qword[@j],                    0
	jmp	@main.33.ForCon
@main.32.ForBody:
     mov                  rsi,            qword[@a]
     mov                  rbx,            qword[@i]
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov                  rbx,           qword[rsi]
     mov                  rsi,            qword[@j]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
@main.39.@printNum.1.enter:
     mov                  rdi,                  rsi
    push                  rsi
    push                   r8
    push                   r8
    push                   r8
    push                   r8
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                   r8
     pop                   r8
     pop                   r8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                   r8
    push                   r8
call	println
     pop                   r8
     pop                   r8
     pop                   r8
     pop                   r8
@main.38.@printNum.2.exit:
     mov                  rsi,                   r8
	jmp	@main.31.ForIter
@main.31.ForIter:
     mov                  rsi,            qword[@j]
     add            qword[@j],                    1
	jmp	@main.33.ForCon
@main.33.ForCon:
     cmp            qword[@j],                    9
     mov                  rsi,                    0
   setle                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.32.ForBody
	jmp	@main.34.ForExit
@main.34.ForExit:
	jmp	@main.27.ForIter
@main.27.ForIter:
     mov                  rsi,            qword[@i]
     add            qword[@i],                    1
	jmp	@main.29.ForCon
@main.29.ForCon:
     cmp            qword[@i],                    3
     mov                  rsi,                    0
   setle                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.28.ForBody
	jmp	@main.30.ForExit
@main.30.ForExit:
     mov                  rsi,            qword[@a]
     mov                  rsi,        qword[rsi+16]
     mov        qword[rsi+80],                    0
     mov                  rsi,            qword[@a]
     mov                  rsi,        qword[rsi+16]
     mov                  rsi,        qword[rsi+80]
@main.41.@printNum.1.enter:
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                   r8
    push                  rsi
call	toString
     pop                  rsi
     pop                   r8
     pop                   r8
     pop                   r8
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
    push                   r8
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r8
     pop                   r8
     pop                   r8
@main.40.@printNum.2.exit:
     mov                  rsi,                   r8
     mov                  rsi,            qword[@b]
     mov                  rsi,           qword[rsi]
     mov           qword[rsi],                   -2
     mov                  rsi,            qword[@a]
     mov                  rsi,        qword[rsi+16]
     mov                  rbx,            qword[@b]
     mov                  rsi,        qword[rsi+80]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov           qword[rsi],                  -10
     mov                  rsi,            qword[@b]
     mov                  rsi,           qword[rsi]
     mov                  rsi,           qword[rsi]
@main.43.@printNum.1.enter:
     mov                  rdi,                  rsi
    push                   r8
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
    push                   r8
    push                   r8
call	println
     pop                   r8
     pop                   r8
@main.42.@printNum.2.exit:
     mov                  rsi,                   r8
     mov                  rsi,            qword[@b]
     mov                  rsi,         qword[rsi+8]
     mov                  rsi,           qword[rsi]
@main.45.@printNum.1.enter:
     mov                  rdi,                  rsi
    push                  rsi
    push                   r8
call	toString
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
    push                   r8
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r8
@main.44.@printNum.2.exit:
     mov                  rsi,                   r8
     mov                  rax,                    0
	jmp	@main.2.exit
@main.2.exit:
     pop                  rbx
     pop                  r12
     add                  rsp,                   32
     pop                  rbp
     ret


 section                 .bss
@a:
  	resq 		1
@i:
  	resq 		1
@j:
  	resq 		1
@b:
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



