  global                 main
  extern	malloc


 section                .text
lol:
    push                  rbp
     mov                  rbp,                  rsp
     mov        qword[rbp-16],                  rdi
     cmp                  rdi,                    0
      jl @lol_purity_checkin_out
     cmp                  rdi,                  150
     jnl @lol_purity_checkin_out
     mov                  rdx,                @@lol
     mov                  rcx,        qword[rbp-16]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov                  rdx,           qword[rdx]
     cmp                  rdx,          -1887415157
      je @lol_purity_checkin_out
     mov                  rax,                  rdx
     pop                  rbp
     ret
@lol_purity_checkin_out:
     sub                  rsp,                   16
@lol.1.enter:
     mov                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rax,                  rsi
     add                  rsp,                   16
     mov                  rdi,                  rax
     cmp        qword[rbp-16],                    0
      jl @lol_purity_addition_out
     cmp        qword[rbp-16],                  150
     jnl @lol_purity_addition_out
     mov                  rdx,                @@lol
     mov                  rcx,        qword[rbp-16]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov           qword[rdx],                  rax
     mov                  rax,                  rdi
     pop                  rbp
     ret
@lol_purity_addition_out:
     pop                  rbp
     ret
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   16
     mov            qword[@c],                  123
     mov                  rdi,            qword[@c]
    push                  rsi
     sub                  rsp,                    8
call	lol
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov            qword[@x],                  rsi
    push                  rdi
    push                  rsi
     mov                  rdi,                  150
    call               malloc
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov         qword[@@lol],                  rsi
     mov         qword[@@lol],          -1887415157
     mov       qword[@@lol+8],          -1887415157
     mov      qword[@@lol+16],          -1887415157
     mov      qword[@@lol+24],          -1887415157
     mov      qword[@@lol+32],          -1887415157
     mov      qword[@@lol+40],          -1887415157
     mov      qword[@@lol+48],          -1887415157
     mov      qword[@@lol+56],          -1887415157
     mov      qword[@@lol+64],          -1887415157
     mov      qword[@@lol+72],          -1887415157
     mov      qword[@@lol+80],          -1887415157
     mov      qword[@@lol+88],          -1887415157
     mov      qword[@@lol+96],          -1887415157
     mov     qword[@@lol+104],          -1887415157
     mov     qword[@@lol+112],          -1887415157
     mov     qword[@@lol+120],          -1887415157
     mov     qword[@@lol+128],          -1887415157
     mov     qword[@@lol+136],          -1887415157
     mov     qword[@@lol+144],          -1887415157
     mov     qword[@@lol+152],          -1887415157
     mov     qword[@@lol+160],          -1887415157
     mov     qword[@@lol+168],          -1887415157
     mov     qword[@@lol+176],          -1887415157
     mov     qword[@@lol+184],          -1887415157
     mov     qword[@@lol+192],          -1887415157
     mov     qword[@@lol+200],          -1887415157
     mov     qword[@@lol+208],          -1887415157
     mov     qword[@@lol+216],          -1887415157
     mov     qword[@@lol+224],          -1887415157
     mov     qword[@@lol+232],          -1887415157
     mov     qword[@@lol+240],          -1887415157
     mov     qword[@@lol+248],          -1887415157
     mov     qword[@@lol+256],          -1887415157
     mov     qword[@@lol+264],          -1887415157
     mov     qword[@@lol+272],          -1887415157
     mov     qword[@@lol+280],          -1887415157
     mov     qword[@@lol+288],          -1887415157
     mov     qword[@@lol+296],          -1887415157
     mov     qword[@@lol+304],          -1887415157
     mov     qword[@@lol+312],          -1887415157
     mov     qword[@@lol+320],          -1887415157
     mov     qword[@@lol+328],          -1887415157
     mov     qword[@@lol+336],          -1887415157
     mov     qword[@@lol+344],          -1887415157
     mov     qword[@@lol+352],          -1887415157
     mov     qword[@@lol+360],          -1887415157
     mov     qword[@@lol+368],          -1887415157
     mov     qword[@@lol+376],          -1887415157
     mov     qword[@@lol+384],          -1887415157
     mov     qword[@@lol+392],          -1887415157
     mov     qword[@@lol+400],          -1887415157
     mov     qword[@@lol+408],          -1887415157
     mov     qword[@@lol+416],          -1887415157
     mov     qword[@@lol+424],          -1887415157
     mov     qword[@@lol+432],          -1887415157
     mov     qword[@@lol+440],          -1887415157
     mov     qword[@@lol+448],          -1887415157
     mov     qword[@@lol+456],          -1887415157
     mov     qword[@@lol+464],          -1887415157
     mov     qword[@@lol+472],          -1887415157
     mov     qword[@@lol+480],          -1887415157
     mov     qword[@@lol+488],          -1887415157
     mov     qword[@@lol+496],          -1887415157
     mov     qword[@@lol+504],          -1887415157
     mov     qword[@@lol+512],          -1887415157
     mov     qword[@@lol+520],          -1887415157
     mov     qword[@@lol+528],          -1887415157
     mov     qword[@@lol+536],          -1887415157
     mov     qword[@@lol+544],          -1887415157
     mov     qword[@@lol+552],          -1887415157
     mov     qword[@@lol+560],          -1887415157
     mov     qword[@@lol+568],          -1887415157
     mov     qword[@@lol+576],          -1887415157
     mov     qword[@@lol+584],          -1887415157
     mov     qword[@@lol+592],          -1887415157
     mov     qword[@@lol+600],          -1887415157
     mov     qword[@@lol+608],          -1887415157
     mov     qword[@@lol+616],          -1887415157
     mov     qword[@@lol+624],          -1887415157
     mov     qword[@@lol+632],          -1887415157
     mov     qword[@@lol+640],          -1887415157
     mov     qword[@@lol+648],          -1887415157
     mov     qword[@@lol+656],          -1887415157
     mov     qword[@@lol+664],          -1887415157
     mov     qword[@@lol+672],          -1887415157
     mov     qword[@@lol+680],          -1887415157
     mov     qword[@@lol+688],          -1887415157
     mov     qword[@@lol+696],          -1887415157
     mov     qword[@@lol+704],          -1887415157
     mov     qword[@@lol+712],          -1887415157
     mov     qword[@@lol+720],          -1887415157
     mov     qword[@@lol+728],          -1887415157
     mov     qword[@@lol+736],          -1887415157
     mov     qword[@@lol+744],          -1887415157
     mov     qword[@@lol+752],          -1887415157
     mov     qword[@@lol+760],          -1887415157
     mov     qword[@@lol+768],          -1887415157
     mov     qword[@@lol+776],          -1887415157
     mov     qword[@@lol+784],          -1887415157
     mov     qword[@@lol+792],          -1887415157
     mov     qword[@@lol+800],          -1887415157
     mov     qword[@@lol+808],          -1887415157
     mov     qword[@@lol+816],          -1887415157
     mov     qword[@@lol+824],          -1887415157
     mov     qword[@@lol+832],          -1887415157
     mov     qword[@@lol+840],          -1887415157
     mov     qword[@@lol+848],          -1887415157
     mov     qword[@@lol+856],          -1887415157
     mov     qword[@@lol+864],          -1887415157
     mov     qword[@@lol+872],          -1887415157
     mov     qword[@@lol+880],          -1887415157
     mov     qword[@@lol+888],          -1887415157
     mov     qword[@@lol+896],          -1887415157
     mov     qword[@@lol+904],          -1887415157
     mov     qword[@@lol+912],          -1887415157
     mov     qword[@@lol+920],          -1887415157
     mov     qword[@@lol+928],          -1887415157
     mov     qword[@@lol+936],          -1887415157
     mov     qword[@@lol+944],          -1887415157
     mov     qword[@@lol+952],          -1887415157
     mov     qword[@@lol+960],          -1887415157
     mov     qword[@@lol+968],          -1887415157
     mov     qword[@@lol+976],          -1887415157
     mov     qword[@@lol+984],          -1887415157
     mov     qword[@@lol+992],          -1887415157
     mov    qword[@@lol+1000],          -1887415157
     mov    qword[@@lol+1008],          -1887415157
     mov    qword[@@lol+1016],          -1887415157
     mov    qword[@@lol+1024],          -1887415157
     mov    qword[@@lol+1032],          -1887415157
     mov    qword[@@lol+1040],          -1887415157
     mov    qword[@@lol+1048],          -1887415157
     mov    qword[@@lol+1056],          -1887415157
     mov    qword[@@lol+1064],          -1887415157
     mov    qword[@@lol+1072],          -1887415157
     mov    qword[@@lol+1080],          -1887415157
     mov    qword[@@lol+1088],          -1887415157
     mov    qword[@@lol+1096],          -1887415157
     mov    qword[@@lol+1104],          -1887415157
     mov    qword[@@lol+1112],          -1887415157
     mov    qword[@@lol+1120],          -1887415157
     mov    qword[@@lol+1128],          -1887415157
     mov    qword[@@lol+1136],          -1887415157
     mov    qword[@@lol+1144],          -1887415157
     mov    qword[@@lol+1152],          -1887415157
     mov    qword[@@lol+1160],          -1887415157
     mov    qword[@@lol+1168],          -1887415157
     mov    qword[@@lol+1176],          -1887415157
     mov    qword[@@lol+1184],          -1887415157
     mov    qword[@@lol+1192],          -1887415157
     add                  rsp,                   16
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                    8
@main.1.enter:
     mov                  rax,            qword[@x]
     add                  rsp,                    8
     pop                  rbp
     ret


 section                 .bss
@c:
  	resq 		1
@x:
  	resq 		1
@@lol:
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



