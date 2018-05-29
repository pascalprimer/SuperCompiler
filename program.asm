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
     sub                  rsp,                  288
@main.1.enter:
     sub                  rsp,                    8
call	getString
     add                  rsp,                    8
     mov        qword[rbp-16],                  rax
     mov                  rcx,        qword[rbp-16]
     mov            qword[@A],                  rcx
     sub                  rsp,                    8
call	getString
     add                  rsp,                    8
     mov        qword[rbp-40],                  rax
     mov                  rcx,        qword[rbp-40]
     mov            qword[@B],                  rcx
     mov                  rdi,            qword[@B]
     sub                  rsp,                    8
call	__parseInt__
     add                  rsp,                    8
     mov        qword[rbp-72],                  rax
     mov                  rcx,        qword[rbp-72]
     mov            qword[@N],                  rcx
     mov                  rdi,            qword[@A]
     sub                  rsp,                    8
call	__length__
     add                  rsp,                    8
     mov       qword[rbp-104],                  rax
     mov                  rcx,       qword[rbp-104]
     cmp                  rcx,            qword[@N]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-112],                  rax
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-120],                  rcx
     cmp       qword[rbp-120],                    1
je	@main.5.IfTrue
jne	@main.4.IfFalse
@main.5.IfTrue:
     mov                  rdi,         __const_str0
call	println
     mov                  rax,                    0
jmp	@main.2.exit
jmp	@main.6.IfExit
@main.4.IfFalse:
@main.6.IfExit:
     mov                  rcx,            qword[@N]
     mov       qword[rbp-144],                  rcx
     mov                  rax,       qword[rbp-144]
     sub                  rax,                    1
     mov       qword[rbp-144],                  rax
     mov                  rdi,            qword[@A]
     mov                  rsi,                    0
     mov                  rdx,       qword[rbp-144]
call	__substring__
     mov       qword[rbp-184],                  rax
     mov                  rdi,       qword[rbp-184]
call	println
     mov                  rcx,            qword[@N]
     mov       qword[rbp-200],                  rcx
     mov                  rax,       qword[rbp-200]
     sub                  rax,                    1
     mov       qword[rbp-200],                  rax
     mov                  rdi,            qword[@A]
     mov                  rsi,                    0
     mov                  rdx,       qword[rbp-200]
call	__substring__
     mov       qword[rbp-240],                  rax
     mov                  rdi,       qword[rbp-240]
call	calc
     mov       qword[rbp-264],                  rax
     mov                  rcx,       qword[rbp-264]
     mov            qword[@C],                  rcx
     mov                  rdi,            qword[@C]
call	println
     mov                  rax,                    0
jmp	@main.2.exit
@main.2.exit:
     add                  rsp,                  288
     pop                  rbp
     ret
calc:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  624
@calc.1.enter:
     mov         qword[rbp-8],                  rdi
     mov                  rdi,         qword[rbp-8]
    push                  rdi
call	__length__
     pop                  rdi
     mov        qword[rbp-32],                  rax
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-40],                  rcx
     cmp        qword[rbp-40],                    1
     mov                  rax,                    0
    sete                   al
     mov        qword[rbp-48],                  rax
     mov                  rcx,        qword[rbp-48]
     mov        qword[rbp-56],                  rcx
     cmp        qword[rbp-56],                    1
je	@calc.5.IfTrue
jne	@calc.4.IfFalse
@calc.5.IfTrue:
     mov                  rax,         qword[rbp-8]
jmp	@calc.2.exit
jmp	@calc.6.IfExit
@calc.4.IfFalse:
@calc.6.IfExit:
     mov                  rcx,        qword[rbp-40]
     mov        qword[rbp-72],                  rcx
     mov                  rax,        qword[rbp-72]
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov        qword[rbp-72],                  rax
     mov                  rcx,        qword[rbp-72]
     mov        qword[rbp-80],                  rcx
     mov                  rcx,        qword[rbp-80]
     mov        qword[rbp-88],                  rcx
     mov                  rax,        qword[rbp-88]
     sub                  rax,                    1
     mov        qword[rbp-88],                  rax
     mov                  rdi,         qword[rbp-8]
     mov                  rsi,                    0
     mov                  rdx,        qword[rbp-88]
    push                  rdi
call	__substring__
     pop                  rdi
     mov       qword[rbp-128],                  rax
     mov                  rdi,       qword[rbp-128]
    push                  rdi
call	calc
     pop                  rdi
     mov       qword[rbp-152],                  rax
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-160],                  rcx
     mov                  rcx,        qword[rbp-40]
     mov       qword[rbp-168],                  rcx
     mov                  rax,       qword[rbp-168]
     sub                  rax,                    1
     mov       qword[rbp-168],                  rax
     mov                  rdi,         qword[rbp-8]
     mov                  rsi,        qword[rbp-80]
     mov                  rdx,       qword[rbp-168]
    push                  rdi
call	__substring__
     pop                  rdi
     mov       qword[rbp-208],                  rax
     mov                  rdi,       qword[rbp-208]
    push                  rdi
call	calc
     pop                  rdi
     mov       qword[rbp-232],                  rax
     mov                  rcx,       qword[rbp-232]
     mov       qword[rbp-240],                  rcx
     mov                  rdi,       qword[rbp-160]
     mov                  rsi,       qword[rbp-240]
    push                  rdi
call	__string_less__
     pop                  rdi
     mov       qword[rbp-272],                  rax
     mov                  rcx,       qword[rbp-272]
     mov       qword[rbp-280],                  rcx
     cmp       qword[rbp-280],                    1
je	@calc.8.IfTrue
jne	@calc.7.IfFalse
@calc.8.IfTrue:
     mov                  rdi,       qword[rbp-160]
     mov                  rsi,       qword[rbp-240]
    push                  rdi
call	__string_connect__
     pop                  rdi
     mov       qword[rbp-312],                  rax
     mov                  rax,       qword[rbp-312]
jmp	@calc.2.exit
jmp	@calc.9.IfExit
@calc.7.IfFalse:
     mov                  rdi,       qword[rbp-160]
     mov                  rsi,       qword[rbp-240]
    push                  rdi
call	__string_equal__
     pop                  rdi
     mov       qword[rbp-352],                  rax
     mov                  rcx,       qword[rbp-352]
     mov       qword[rbp-360],                  rcx
     cmp       qword[rbp-360],                    1
je	@calc.11.IfTrue
jne	@calc.10.IfFalse
@calc.11.IfTrue:
     mov                  rdi,       qword[rbp-160]
     mov                  rsi,                    0
    push                  rdi
call	__ord__
     pop                  rdi
     mov       qword[rbp-392],                  rax
     mov                  rcx,       qword[rbp-392]
     mov       qword[rbp-400],                  rcx
     mov                  rdi,       qword[rbp-240]
     mov                  rsi,                    0
    push                  rdi
call	__ord__
     pop                  rdi
     mov       qword[rbp-432],                  rax
     mov                  rcx,       qword[rbp-432]
     mov       qword[rbp-440],                  rcx
     mov                  rcx,       qword[rbp-400]
     cmp                  rcx,       qword[rbp-440]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-448],                  rax
     mov                  rcx,       qword[rbp-448]
     mov       qword[rbp-456],                  rcx
     cmp       qword[rbp-456],                    1
je	@calc.14.IfTrue
jne	@calc.13.IfFalse
@calc.14.IfTrue:
     mov                  rdi,       qword[rbp-160]
     mov                  rsi,       qword[rbp-240]
    push                  rdi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rdi
     mov       qword[rbp-488],                  rax
     mov                  rax,       qword[rbp-488]
jmp	@calc.2.exit
jmp	@calc.15.IfExit
@calc.13.IfFalse:
@calc.15.IfExit:
     mov                  rdi,       qword[rbp-240]
     mov                  rsi,       qword[rbp-160]
    push                  rdi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rdi
     mov       qword[rbp-528],                  rax
     mov                  rax,       qword[rbp-528]
jmp	@calc.2.exit
jmp	@calc.12.IfExit
@calc.10.IfFalse:
     mov                  rdi,       qword[rbp-160]
     mov                  rsi,       qword[rbp-240]
    push                  rdi
     sub                  rsp,                    8
call	__string_greater__
     add                  rsp,                    8
     pop                  rdi
     mov       qword[rbp-568],                  rax
     mov                  rcx,       qword[rbp-568]
     mov       qword[rbp-576],                  rcx
     cmp       qword[rbp-576],                    1
je	@calc.17.IfTrue
jne	@calc.16.IfFalse
@calc.17.IfTrue:
     mov                  rdi,       qword[rbp-240]
     mov                  rsi,       qword[rbp-160]
    push                  rdi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rdi
     mov       qword[rbp-608],                  rax
     mov                  rax,       qword[rbp-608]
jmp	@calc.2.exit
jmp	@calc.18.IfExit
@calc.16.IfFalse:
@calc.18.IfExit:
jmp	@calc.12.IfExit
@calc.12.IfExit:
jmp	@calc.9.IfExit
@calc.9.IfExit:
     mov                  rdi,         __const_str1
    push                  rdi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  rdi
@calc.2.exit:
     add                  rsp,                  624
     pop                  rbp
     ret


 section                 .bss
@A   resq 1
@B   resq 1
@C   resq 1
@N   resq 1


 section                .data
      dq                   11
__const_str1:
      db "Never Ever!",0
      dq                   13
__const_str0:
      db "length error!",0






default rel

extern strcpy
extern memcpy
extern __sprintf_chk
extern __stack_chk_fail
extern __isoc99_scanf
extern puts
extern __printf_chk


SECTION .text   6

print:
        mov     rdx, rdi
        mov     esi, L_035
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
        mov     edi, L_035
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
        mov     edi, L_036


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
        mov     edi, 28
        call    malloc
        lea     rbx, [rax+8H]
        mov     edx, 20
        mov     rbp, rax
        mov     r8, r12
        mov     ecx, L_036
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


__size__:
		mov     rax, qword[rdi - 8H]
		ret


ALIGN   16

__substring__:
        push    r13
        add     rdx, 1
        sub     rdx, rsi
        push    r12
        push    rbp
        push    rbx
        mov     r13, rdi
        lea     rdi, [rdx+9H]
        mov     rbx, rdx
        mov     rbp, rsi
        sub     rsp, 8
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
        lea     eax, [rdx-30H]
        cmp     al, 9
        mov     eax, 0
        ja      L_005
        nop
L_004:  sub     edx, 48
        lea     rax, [rax+rax*4]
        add     rdi, 1
        movsxd  rdx, edx
        lea     rax, [rdx+rax*2]
        movsx   edx, byte [rdi]
        lea     ecx, [rdx-30H]
        cmp     cl, 9
        jbe     L_004

        ret

L_005:

        ret







ALIGN   16

__ord__:
        movsx   rax, byte [rdi+rsi]
        ret







ALIGN   16

__string_equal__:
        xor     eax, eax
        mov     rcx, qword [rsi-8H]
        cmp     qword [rdi-8H], rcx
        jz      L_006

        ret





ALIGN   8
L_006:  movzx   edx, byte [rdi]
        test    dl, dl
        jz      L_009
        movzx   ecx, byte [rsi]
        test    cl, cl
        jz      L_009
        cmp     dl, cl
        jz      L_008
        jmp     L_011





ALIGN   8
L_007:  movzx   edx, byte [rsi]
        test    dl, dl
        jz      L_009
        cmp     al, dl
        jnz     L_010
L_008:  add     rdi, 1
        movzx   eax, byte [rdi]
        add     rsi, 1
        test    al, al
        jnz     L_007
L_009:  mov     eax, 1
        ret





ALIGN   16
L_010:  xor     eax, eax
        ret

L_011:

        ret


        nop





ALIGN   16

__string_not_equal__:
        mov     rcx, qword [rsi-8H]
        cmp     qword [rdi-8H], rcx
        mov     eax, 1
        jz      L_012

        ret





ALIGN   8
L_012:  movzx   edx, byte [rdi]
        test    dl, dl
        jz      L_015
        movzx   ecx, byte [rsi]
        test    cl, cl
        jz      L_015
        cmp     dl, cl
        jz      L_014
        jmp     L_017





ALIGN   8
L_013:  movzx   edx, byte [rsi]
        test    dl, dl
        jz      L_015
        cmp     al, dl
        jnz     L_016
L_014:  add     rdi, 1
        movzx   eax, byte [rdi]
        add     rsi, 1
        test    al, al
        jnz     L_013
L_015:  xor     eax, eax
        ret





ALIGN   8
L_016:  mov     eax, 1
        ret

L_017:

        ret






ALIGN   16

__string_less__:
        movzx   edx, byte [rdi]
        movzx   eax, byte [rsi]
        test    dl, dl
        jz      L_020
        test    al, al
        jz      L_020
        cmp     al, dl
        jg      L_021
        jge     L_019
        jmp     L_022






ALIGN   16
L_018:  test    al, al
        jz      L_020
        cmp     dl, al
        jl      L_021
        mov     rsi, rcx
        jg      L_022
L_019:  add     rdi, 1
        movzx   edx, byte [rdi]
        lea     rcx, [rsi+1H]
        movzx   eax, byte [rsi+1H]
        test    dl, dl
        jnz     L_018
L_020:  test    al, al
        setne   al
        movzx   eax, al
        ret





ALIGN   8
L_021:  mov     eax, 1
        ret






ALIGN   16
L_022:  xor     eax, eax
        ret







ALIGN   16

__string_less_equal__:
        movzx   eax, byte [rdi]
        test    al, al
        jz      L_025
        movzx   edx, byte [rsi]
        test    dl, dl
        jz      L_026
        cmp     dl, al
        jg      L_025
        jge     L_024
        jmp     L_026






ALIGN   16
L_023:  movzx   edx, byte [rsi]
        test    dl, dl
        jz      L_026
        cmp     al, dl
        jl      L_025
        jg      L_026
L_024:  add     rdi, 1
        movzx   eax, byte [rdi]
        add     rsi, 1
        test    al, al
        jnz     L_023
L_025:  mov     eax, 1
        ret





ALIGN   8
L_026:  xor     eax, eax
        ret






ALIGN   8

__string_greater__:
        movzx   eax, byte [rdi]
        test    al, al
        jnz     L_028
        jmp     L_030





ALIGN   8
L_027:  cmp     al, dl
        jl      L_030
        jg      L_029
        add     rdi, 1
        movzx   eax, byte [rdi]
        add     rsi, 1
        test    al, al
        jz      L_030
L_028:  movzx   edx, byte [rsi]
        test    dl, dl
        jnz     L_027
L_029:  mov     eax, 1
        ret





ALIGN   8
L_030:  xor     eax, eax
        ret






ALIGN   8

__string_greater_equal__:
        movzx   eax, byte [rdi]
        test    al, al
        jz      L_033
        movzx   edx, byte [rsi]
        cmp     al, dl
        jg      L_034
        test    dl, dl
        jnz     L_032
        jmp     L_034





ALIGN   8
L_031:  add     rdi, 1
        movzx   eax, byte [rdi]
        add     rsi, 1
        test    al, al
        jz      L_033
        movzx   edx, byte [rsi]
        test    dl, dl
        jz      L_034
        cmp     al, dl
        jg      L_034
L_032:  cmp     al, dl
        jge     L_031
        xor     eax, eax
        ret





ALIGN   8
L_033:  xor     eax, eax
        cmp     byte [rsi], 0
        sete    al
        ret





ALIGN   8
L_034:  mov     eax, 1
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



SECTION .data   


SECTION .bss    


SECTION .rodata.str1.1 

L_035:
        db 25H, 73H, 00H

L_036:
        db 25H, 6CH, 64H, 00H


SECTION .text.unlikely 


SECTION .text.startup 6

