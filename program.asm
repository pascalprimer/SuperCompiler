  global                 main
  extern	malloc


 section                .text
foo:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  rbx
@foo.1.enter:
     mov                  rbx,                  rdi
     mov                  r12,                  rsi
     mov                   r8,                  rdx
     mov                  rsi,                  rbx
    imul                  rsi,                 1000
     mov                  rdi,                  r12
    imul                  rdi,                   10
     mov                  rsi,                  rsi
     add                  rsi,                  rdi
     mov                  rsi,                  rsi
     add                  rsi,                   r8
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@foo.4.IfTrue
	jmp	@foo.3.IfFalse
@foo.4.IfTrue:
	jmp	@foo.2.exit
	jmp	@foo.5.IfExit
@foo.3.IfFalse:
@foo.5.IfExit:
     mov                  rsi,                  r12
     mov                  r12,                   r8
     mov                   r8,                  rsi
     mov                  rdi,                    1
     mov                  rsi,                  r12
     mov                  rdx,                   r8
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	foo
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rbx
    imul                  rsi,                 1000
     mov                  rbx,                  r12
    imul                  rbx,                   10
     mov                  rsi,                  rsi
     add                  rsi,                  rbx
     mov                  rsi,                  rsi
     add                  rsi,                   r8
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
@foo.2.exit:
     pop                  rbx
     pop                  r12
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
    push                  r12
    push                  r13
    push                  rbx
@main.1.enter:
     mov                  rsi,                 3100
     mov                  rdi,                    0
     mov                  rbx,                    1
     mov                  rdi,                    0
	jmp	@main.5.ForCon
@main.4.ForBody:
     mov                  r12,                  rbx
    imul                  r12,                    2
     mov                  r12,                  r12
     sub                  r12,                  rbx
     mov                  rbx,                  r12
	jmp	@main.3.ForIter
@main.3.ForIter:
     add                  rdi,                    1
     mov                  r12,                  rdi
	jmp	@main.5.ForCon
@main.5.ForCon:
     cmp                  rdi,            100000000
     mov                  r12,                    0
    setl                 r12b
     mov                  r12,                  r12
     cmp                  r12,                    1
	je	@main.4.ForBody
	jmp	@main.6.ForExit
@main.6.ForExit:
     mov                  rdi,                  rsi
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
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
@main.9.@cost_a_lot_of_time.1.enter:
     mov                  rsi,                 3100
     mov                  rdi,                    0
     mov                  r12,                    1
     mov                  rdi,                    0
	jmp	@main.10.@cost_a_lot_of_time.5.ForCon
@main.11.@cost_a_lot_of_time.4.ForBody:
     mov                  rbx,                  r12
    imul                  rbx,                    2
     mov                  rbx,                  rbx
     sub                  rbx,                  r12
     mov                  r12,                  rbx
	jmp	@main.12.@cost_a_lot_of_time.3.ForIter
@main.12.@cost_a_lot_of_time.3.ForIter:
     add                  rdi,                    1
     mov                  rbx,                  rdi
	jmp	@main.10.@cost_a_lot_of_time.5.ForCon
@main.10.@cost_a_lot_of_time.5.ForCon:
     cmp                  rdi,            100000000
     mov                  rbx,                    0
    setl                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@main.11.@cost_a_lot_of_time.4.ForBody
	jmp	@main.13.@cost_a_lot_of_time.6.ForExit
@main.13.@cost_a_lot_of_time.6.ForExit:
     mov                  rdi,                  rsi
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
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
@main.8.@cost_a_lot_of_time.2.exit:
     mov                  r12,                    7
     mov                   r9,                    5
     mov                  rbx,                    3
@main.15.@foo.1.enter:
     mov                  rsi,                  r12
    imul                  rsi,                 1000
     mov                  rdi,                   r9
    imul                  rdi,                   10
     mov                  rsi,                  rsi
     add                  rsi,                  rdi
     mov                  rsi,                  rsi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
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
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     cmp                  r12,                    1
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.16.@foo.4.IfTrue
	jmp	@main.17.@foo.3.IfFalse
@main.16.@foo.4.IfTrue:
	jmp	@main.14.@foo.2.exit
	jmp	@main.18.@foo.5.IfExit
@main.17.@foo.3.IfFalse:
@main.18.@foo.5.IfExit:
     mov                  rsi,                   r9
     mov                   r9,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,                    1
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	foo
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     mov                  rsi,                  r12
    imul                  rsi,                 1000
     mov                  rdi,                   r9
    imul                  rdi,                   10
     mov                  rsi,                  rsi
     add                  rsi,                  rdi
     mov                  rsi,                  rsi
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
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
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
@main.14.@foo.2.exit:
     mov                  rbx,                   10
     mov                  rsi,                   10
     add                  rbx,                    1
     shl                  rbx,                    3
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
     mov                   r8,                  rax
     mov            qword[r8],                  rsi
     add                   r8,                    8
     sub                  rbx,                    8
     mov                  rsi,                   r8
     mov                  rbx,                    2
     mov                  rsi,                    2
     add                  rbx,                    1
     shl                  rbx,                    3
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
     mov                  r13,                  rax
     mov           qword[r13],                  rsi
     add                  r13,                    8
     sub                  rbx,                    8
     mov                  rsi,                  r13
     mov                  rax,                    0
	jmp	@main.2.exit
@main.2.exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     pop                  rbp
     ret
cost_a_lot_of_time:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  rbx
@cost_a_lot_of_time.1.enter:
     mov                  rsi,                 3100
     mov                  r12,                    0
     mov                  rdi,                    1
     mov                  r12,                    0
	jmp	@cost_a_lot_of_time.5.ForCon
@cost_a_lot_of_time.4.ForBody:
     mov                  rbx,                  rdi
    imul                  rbx,                    2
     mov                  rbx,                  rbx
     sub                  rbx,                  rdi
     mov                  rdi,                  rbx
	jmp	@cost_a_lot_of_time.3.ForIter
@cost_a_lot_of_time.3.ForIter:
     add                  r12,                    1
     mov                  rbx,                  r12
	jmp	@cost_a_lot_of_time.5.ForCon
@cost_a_lot_of_time.5.ForCon:
     cmp                  r12,            100000000
     mov                  rbx,                    0
    setl                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@cost_a_lot_of_time.4.ForBody
	jmp	@cost_a_lot_of_time.6.ForExit
@cost_a_lot_of_time.6.ForExit:
     mov                  rdi,                  rsi
    push                  rdi
    push                  rsi
call	toString
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
    push                  rdi
    push                  rsi
call	println
     pop                  rsi
     pop                  rdi
@cost_a_lot_of_time.2.exit:
     pop                  rbx
     pop                  r12
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



