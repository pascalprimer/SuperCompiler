  global                 main
  extern	malloc


 section                .text
cd:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  416
@cd.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                  rsi
     mov        qword[rbp-24],                  rdx
     mov        qword[rbp-32],                  rcx
     mov        qword[rbp-40],                   r8
     cmp         qword[rbp-8],                    1
     mov                  rax,                    0
    sete                   al
     mov        qword[rbp-48],                  rax
     mov                  rcx,        qword[rbp-48]
     mov        qword[rbp-56],                  rcx
     cmp        qword[rbp-56],                    1
	je	@cd.4.IfTrue
	jmp	@cd.3.IfFalse
@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,        qword[rbp-16]
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov        qword[rbp-80],                  rax
     mov                  rcx,        qword[rbp-80]
     mov        qword[rbp-88],                  rcx
     mov                  rdi,        qword[rbp-88]
     mov                  rsi,         __const_str1
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov       qword[rbp-112],                  rax
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-120],                  rcx
     mov                  rdi,       qword[rbp-120]
     mov                  rsi,        qword[rbp-32]
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov       qword[rbp-144],                  rax
     mov                  rcx,       qword[rbp-144]
     mov       qword[rbp-152],                  rcx
     mov                  rdi,       qword[rbp-152]
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rcx,        qword[rbp-40]
     mov       qword[rbp-168],                  rcx
     add        qword[rbp-40],                    1
	jmp	@cd.5.IfExit
@cd.3.IfFalse:
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-176],                  rcx
     mov                  rax,       qword[rbp-176]
     sub                  rax,                    1
     mov       qword[rbp-176],                  rax
     mov                  rdi,       qword[rbp-176]
     mov                  rsi,        qword[rbp-16]
     mov                  rdx,        qword[rbp-32]
     mov                  rcx,        qword[rbp-24]
     mov                   r8,        qword[rbp-40]
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
 call	cd
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov       qword[rbp-224],                  rax
     mov                  rcx,       qword[rbp-224]
     mov       qword[rbp-232],                  rcx
     mov                  rcx,       qword[rbp-232]
     mov        qword[rbp-40],                  rcx
     mov                  rdi,         __const_str0
     mov                  rsi,        qword[rbp-16]
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov       qword[rbp-256],                  rax
     mov                  rcx,       qword[rbp-256]
     mov       qword[rbp-264],                  rcx
     mov                  rdi,       qword[rbp-264]
     mov                  rsi,         __const_str1
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov       qword[rbp-288],                  rax
     mov                  rcx,       qword[rbp-288]
     mov       qword[rbp-296],                  rcx
     mov                  rdi,       qword[rbp-296]
     mov                  rsi,        qword[rbp-32]
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov       qword[rbp-320],                  rax
     mov                  rcx,       qword[rbp-320]
     mov       qword[rbp-328],                  rcx
     mov                  rdi,       qword[rbp-328]
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-344],                  rcx
     mov                  rax,       qword[rbp-344]
     sub                  rax,                    1
     mov       qword[rbp-344],                  rax
     mov                  rdi,       qword[rbp-344]
     mov                  rsi,        qword[rbp-24]
     mov                  rdx,        qword[rbp-16]
     mov                  rcx,        qword[rbp-32]
     mov                   r8,        qword[rbp-40]
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
 call	cd
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov       qword[rbp-392],                  rax
     mov                  rcx,       qword[rbp-392]
     mov       qword[rbp-400],                  rcx
     mov                  rcx,       qword[rbp-400]
     mov        qword[rbp-40],                  rcx
     mov                  rcx,        qword[rbp-40]
     mov       qword[rbp-408],                  rcx
     add        qword[rbp-40],                    1
	jmp	@cd.5.IfExit
@cd.5.IfExit:
     mov                  rax,        qword[rbp-40]
	jmp	@cd.2.exit
@cd.2.exit:
     add                  rsp,                  416
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
     sub                  rsp,                  520
@main.1.enter:
     mov         qword[rbp-8],         __const_str2
     mov        qword[rbp-16],         __const_str3
     mov        qword[rbp-24],         __const_str4
     sub                  rsp,                    8
call	getInt
     add                  rsp,                    8
     mov        qword[rbp-32],                  rax
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-40],                  rcx
     mov                  rcx,        qword[rbp-40]
     mov        qword[rbp-48],                  rcx
     mov                  rcx,        qword[rbp-48]
     mov        qword[rbp-56],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-64],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-72],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-80],                  rcx
     mov        qword[rbp-88],                    0
@main.5.@cd.1.enter:
     cmp        qword[rbp-56],                    1
     mov                  rax,                    0
    sete                   al
     mov        qword[rbp-96],                  rax
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-104],                  rcx
     cmp       qword[rbp-104],                    1
	je	@main.6.@cd.4.IfTrue
	jmp	@main.7.@cd.3.IfFalse
@main.6.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,        qword[rbp-64]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov       qword[rbp-128],                  rax
     mov                  rcx,       qword[rbp-128]
     mov       qword[rbp-136],                  rcx
     mov                  rdi,       qword[rbp-136]
     mov                  rsi,         __const_str1
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov       qword[rbp-160],                  rax
     mov                  rcx,       qword[rbp-160]
     mov       qword[rbp-168],                  rcx
     mov                  rdi,       qword[rbp-168]
     mov                  rsi,        qword[rbp-80]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov       qword[rbp-192],                  rax
     mov                  rcx,       qword[rbp-192]
     mov       qword[rbp-200],                  rcx
     mov                  rdi,       qword[rbp-200]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rcx,        qword[rbp-88]
     mov       qword[rbp-216],                  rcx
     add        qword[rbp-88],                    1
	jmp	@main.8.@cd.5.IfExit
@main.7.@cd.3.IfFalse:
     mov                  rcx,        qword[rbp-56]
     mov       qword[rbp-224],                  rcx
     mov                  rax,       qword[rbp-224]
     sub                  rax,                    1
     mov       qword[rbp-224],                  rax
     mov                  rdi,       qword[rbp-224]
     mov                  rsi,        qword[rbp-64]
     mov                  rdx,        qword[rbp-80]
     mov                  rcx,        qword[rbp-72]
     mov                   r8,        qword[rbp-88]
     sub                  rsp,                    8
 call	cd
     add                  rsp,                    8
     mov       qword[rbp-272],                  rax
     mov                  rcx,       qword[rbp-272]
     mov       qword[rbp-280],                  rcx
     mov                  rcx,       qword[rbp-280]
     mov        qword[rbp-88],                  rcx
     mov                  rdi,         __const_str0
     mov                  rsi,        qword[rbp-64]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov       qword[rbp-304],                  rax
     mov                  rcx,       qword[rbp-304]
     mov       qword[rbp-312],                  rcx
     mov                  rdi,       qword[rbp-312]
     mov                  rsi,         __const_str1
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov       qword[rbp-336],                  rax
     mov                  rcx,       qword[rbp-336]
     mov       qword[rbp-344],                  rcx
     mov                  rdi,       qword[rbp-344]
     mov                  rsi,        qword[rbp-80]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov       qword[rbp-368],                  rax
     mov                  rcx,       qword[rbp-368]
     mov       qword[rbp-376],                  rcx
     mov                  rdi,       qword[rbp-376]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rcx,        qword[rbp-56]
     mov       qword[rbp-392],                  rcx
     mov                  rax,       qword[rbp-392]
     sub                  rax,                    1
     mov       qword[rbp-392],                  rax
     mov                  rdi,       qword[rbp-392]
     mov                  rsi,        qword[rbp-72]
     mov                  rdx,        qword[rbp-64]
     mov                  rcx,        qword[rbp-80]
     mov                   r8,        qword[rbp-88]
     sub                  rsp,                    8
 call	cd
     add                  rsp,                    8
     mov       qword[rbp-440],                  rax
     mov                  rcx,       qword[rbp-440]
     mov       qword[rbp-448],                  rcx
     mov                  rcx,       qword[rbp-448]
     mov        qword[rbp-88],                  rcx
     mov                  rcx,        qword[rbp-88]
     mov       qword[rbp-456],                  rcx
     add        qword[rbp-88],                    1
	jmp	@main.8.@cd.5.IfExit
@main.8.@cd.5.IfExit:
     mov                  rcx,        qword[rbp-88]
     mov       qword[rbp-464],                  rcx
	jmp	@main.4.@cd.2.exit
@main.4.@cd.2.exit:
     mov                  rcx,       qword[rbp-464]
     mov       qword[rbp-472],                  rcx
     mov                  rcx,       qword[rbp-472]
     mov       qword[rbp-480],                  rcx
     mov                  rdi,       qword[rbp-480]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov       qword[rbp-496],                  rax
     mov                  rcx,       qword[rbp-496]
     mov       qword[rbp-504],                  rcx
     mov                  rdi,       qword[rbp-504]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rax,                    0
	jmp	@main.2.exit
@main.2.exit:
     add                  rsp,                  520
     pop                  rbp
     ret


 section                 .bss


 section                .data
      dq                    1
__const_str2:
      db "A",0
      dq                    1
__const_str3:
      db "B",0
      dq                    1
__const_str4:
      db "C",0
      dq                    5
__const_str1:
      db " --> ",0
      dq                    5
__const_str0:
      db "move ",0






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



