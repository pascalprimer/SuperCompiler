  global                 main
  extern	malloc


 section                .text
add:
    push                  rbp
     mov                  rbp,                  rsp
@add.1.enter:
     add                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
     mov                  rcx,                  233
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     pop                  rbp
     ret
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
@__global_declaration.1.enter:
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  150
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov          qword[@@dp],                  rsi
     mov          qword[@@dp],          -1887415157
     mov        qword[@@dp+8],          -1887415157
     mov       qword[@@dp+16],          -1887415157
     mov       qword[@@dp+24],          -1887415157
     mov       qword[@@dp+32],          -1887415157
     mov       qword[@@dp+40],          -1887415157
     mov       qword[@@dp+48],          -1887415157
     mov       qword[@@dp+56],          -1887415157
     mov       qword[@@dp+64],          -1887415157
     mov       qword[@@dp+72],          -1887415157
     mov       qword[@@dp+80],          -1887415157
     mov       qword[@@dp+88],          -1887415157
     mov       qword[@@dp+96],          -1887415157
     mov      qword[@@dp+104],          -1887415157
     mov      qword[@@dp+112],          -1887415157
     mov      qword[@@dp+120],          -1887415157
     mov      qword[@@dp+128],          -1887415157
     mov      qword[@@dp+136],          -1887415157
     mov      qword[@@dp+144],          -1887415157
     mov      qword[@@dp+152],          -1887415157
     mov      qword[@@dp+160],          -1887415157
     mov      qword[@@dp+168],          -1887415157
     mov      qword[@@dp+176],          -1887415157
     mov      qword[@@dp+184],          -1887415157
     mov      qword[@@dp+192],          -1887415157
     mov      qword[@@dp+200],          -1887415157
     mov      qword[@@dp+208],          -1887415157
     mov      qword[@@dp+216],          -1887415157
     mov      qword[@@dp+224],          -1887415157
     mov      qword[@@dp+232],          -1887415157
     mov      qword[@@dp+240],          -1887415157
     mov      qword[@@dp+248],          -1887415157
     mov      qword[@@dp+256],          -1887415157
     mov      qword[@@dp+264],          -1887415157
     mov      qword[@@dp+272],          -1887415157
     mov      qword[@@dp+280],          -1887415157
     mov      qword[@@dp+288],          -1887415157
     mov      qword[@@dp+296],          -1887415157
     mov      qword[@@dp+304],          -1887415157
     mov      qword[@@dp+312],          -1887415157
     mov      qword[@@dp+320],          -1887415157
     mov      qword[@@dp+328],          -1887415157
     mov      qword[@@dp+336],          -1887415157
     mov      qword[@@dp+344],          -1887415157
     mov      qword[@@dp+352],          -1887415157
     mov      qword[@@dp+360],          -1887415157
     mov      qword[@@dp+368],          -1887415157
     mov      qword[@@dp+376],          -1887415157
     mov      qword[@@dp+384],          -1887415157
     mov      qword[@@dp+392],          -1887415157
     mov      qword[@@dp+400],          -1887415157
     mov      qword[@@dp+408],          -1887415157
     mov      qword[@@dp+416],          -1887415157
     mov      qword[@@dp+424],          -1887415157
     mov      qword[@@dp+432],          -1887415157
     mov      qword[@@dp+440],          -1887415157
     mov      qword[@@dp+448],          -1887415157
     mov      qword[@@dp+456],          -1887415157
     mov      qword[@@dp+464],          -1887415157
     mov      qword[@@dp+472],          -1887415157
     mov      qword[@@dp+480],          -1887415157
     mov      qword[@@dp+488],          -1887415157
     mov      qword[@@dp+496],          -1887415157
     mov      qword[@@dp+504],          -1887415157
     mov      qword[@@dp+512],          -1887415157
     mov      qword[@@dp+520],          -1887415157
     mov      qword[@@dp+528],          -1887415157
     mov      qword[@@dp+536],          -1887415157
     mov      qword[@@dp+544],          -1887415157
     mov      qword[@@dp+552],          -1887415157
     mov      qword[@@dp+560],          -1887415157
     mov      qword[@@dp+568],          -1887415157
     mov      qword[@@dp+576],          -1887415157
     mov      qword[@@dp+584],          -1887415157
     mov      qword[@@dp+592],          -1887415157
     mov      qword[@@dp+600],          -1887415157
     mov      qword[@@dp+608],          -1887415157
     mov      qword[@@dp+616],          -1887415157
     mov      qword[@@dp+624],          -1887415157
     mov      qword[@@dp+632],          -1887415157
     mov      qword[@@dp+640],          -1887415157
     mov      qword[@@dp+648],          -1887415157
     mov      qword[@@dp+656],          -1887415157
     mov      qword[@@dp+664],          -1887415157
     mov      qword[@@dp+672],          -1887415157
     mov      qword[@@dp+680],          -1887415157
     mov      qword[@@dp+688],          -1887415157
     mov      qword[@@dp+696],          -1887415157
     mov      qword[@@dp+704],          -1887415157
     mov      qword[@@dp+712],          -1887415157
     mov      qword[@@dp+720],          -1887415157
     mov      qword[@@dp+728],          -1887415157
     mov      qword[@@dp+736],          -1887415157
     mov      qword[@@dp+744],          -1887415157
     mov      qword[@@dp+752],          -1887415157
     mov      qword[@@dp+760],          -1887415157
     mov      qword[@@dp+768],          -1887415157
     mov      qword[@@dp+776],          -1887415157
     mov      qword[@@dp+784],          -1887415157
     mov      qword[@@dp+792],          -1887415157
     mov      qword[@@dp+800],          -1887415157
     mov      qword[@@dp+808],          -1887415157
     mov      qword[@@dp+816],          -1887415157
     mov      qword[@@dp+824],          -1887415157
     mov      qword[@@dp+832],          -1887415157
     mov      qword[@@dp+840],          -1887415157
     mov      qword[@@dp+848],          -1887415157
     mov      qword[@@dp+856],          -1887415157
     mov      qword[@@dp+864],          -1887415157
     mov      qword[@@dp+872],          -1887415157
     mov      qword[@@dp+880],          -1887415157
     mov      qword[@@dp+888],          -1887415157
     mov      qword[@@dp+896],          -1887415157
     mov      qword[@@dp+904],          -1887415157
     mov      qword[@@dp+912],          -1887415157
     mov      qword[@@dp+920],          -1887415157
     mov      qword[@@dp+928],          -1887415157
     mov      qword[@@dp+936],          -1887415157
     mov      qword[@@dp+944],          -1887415157
     mov      qword[@@dp+952],          -1887415157
     mov      qword[@@dp+960],          -1887415157
     mov      qword[@@dp+968],          -1887415157
     mov      qword[@@dp+976],          -1887415157
     mov      qword[@@dp+984],          -1887415157
     mov      qword[@@dp+992],          -1887415157
     mov     qword[@@dp+1000],          -1887415157
     mov     qword[@@dp+1008],          -1887415157
     mov     qword[@@dp+1016],          -1887415157
     mov     qword[@@dp+1024],          -1887415157
     mov     qword[@@dp+1032],          -1887415157
     mov     qword[@@dp+1040],          -1887415157
     mov     qword[@@dp+1048],          -1887415157
     mov     qword[@@dp+1056],          -1887415157
     mov     qword[@@dp+1064],          -1887415157
     mov     qword[@@dp+1072],          -1887415157
     mov     qword[@@dp+1080],          -1887415157
     mov     qword[@@dp+1088],          -1887415157
     mov     qword[@@dp+1096],          -1887415157
     mov     qword[@@dp+1104],          -1887415157
     mov     qword[@@dp+1112],          -1887415157
     mov     qword[@@dp+1120],          -1887415157
     mov     qword[@@dp+1128],          -1887415157
     mov     qword[@@dp+1136],          -1887415157
     mov     qword[@@dp+1144],          -1887415157
     mov     qword[@@dp+1152],          -1887415157
     mov     qword[@@dp+1160],          -1887415157
     mov     qword[@@dp+1168],          -1887415157
     mov     qword[@@dp+1176],          -1887415157
     mov     qword[@@dp+1184],          -1887415157
     mov     qword[@@dp+1192],          -1887415157
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
    push                  rsi
call	getInt
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r15,                  rsi
     mov                  r11,                    1
	jmp	@main.6.ForCon
@main.5.ForBody:
     mov                  r14,                  r11
     cmp                  r14,                    1
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.12.@dp.4.IfTrue
	jmp	@main.13.@dp.3.IfFalse
@main.12.@dp.4.IfTrue:
     mov                  rsi,                   36
	jmp	@main.10.@dp.2.exit
	jmp	@main.14.@dp.5.IfExit
@main.13.@dp.3.IfFalse:
@main.14.@dp.5.IfExit:
     mov                  r10,                    0
     mov                   r8,                    2
	jmp	@main.15.@dp.9.ForCon
@main.16.@dp.8.ForBody:
     mov                  rbx,                  r14
     xor                  rbx,                   r8
     cmp                  rbx,                  r14
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.17.@dp.12.IfTrue
	jmp	@main.18.@dp.11.IfFalse
@main.17.@dp.12.IfTrue:
     mov                   r9,                  rbx
     cmp                   r9,                    1
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.23.@dp.4.IfTrue
	jmp	@main.24.@dp.3.IfFalse
@main.23.@dp.4.IfTrue:
     mov                  rsi,                   36
	jmp	@main.21.@dp.2.exit
	jmp	@main.25.@dp.5.IfExit
@main.24.@dp.3.IfFalse:
@main.25.@dp.5.IfExit:
     mov                  r13,                    0
     mov                  r12,                    2
	jmp	@main.26.@dp.9.ForCon
@main.27.@dp.8.ForBody:
     mov                  rbx,                   r9
     xor                  rbx,                  r12
     cmp                  rbx,                   r9
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.28.@dp.12.IfTrue
	jmp	@main.29.@dp.11.IfFalse
@main.28.@dp.12.IfTrue:
     mov                  rdi,                  rbx
    push                   r8
    push                  rsi
    push                  r11
    push                  r10
    push                   r9
 call	dp
     pop                   r9
     pop                  r10
     pop                  r11
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  r13
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,                  233
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r13,                  rsi
	jmp	@main.30.@dp.13.IfExit
@main.29.@dp.11.IfFalse:
@main.30.@dp.13.IfExit:
     add                  r12,                    1
@main.26.@dp.9.ForCon:
     cmp                  r12,                   r9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.27.@dp.8.ForBody
     mov                  rsi,                  r13
@main.21.@dp.2.exit:
     mov                  rbx,                  rsi
     mov                  rsi,                  r10
     add                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,                  233
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r10,                  rsi
	jmp	@main.19.@dp.13.IfExit
@main.18.@dp.11.IfFalse:
@main.19.@dp.13.IfExit:
     add                   r8,                    1
@main.15.@dp.9.ForCon:
     cmp                   r8,                  r14
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.16.@dp.8.ForBody
     mov                  rsi,                  r10
@main.10.@dp.2.exit:
     mov                  rdi,                  rsi
    push                  r11
    push                  rsi
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r11
call	println
     pop                  r11
     add                  r11,                    1
@main.6.ForCon:
     cmp                  r11,                  r15
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.5.ForBody
     mov                  rax,                    0
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     pop                  rbp
     ret
dp:
    push                  rbp
     mov                  rbp,                  rsp
     mov        qword[rbp-16],                  rdi
     cmp                  rdi,                    0
      jl @dp_purity_checkin_out
     cmp                  rdi,                  150
     jnl @dp_purity_checkin_out
     mov                  rdx,                 @@dp
     mov                  rcx,        qword[rbp-16]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov                  rdx,           qword[rdx]
     cmp                  rdx,          -1887415157
      je @dp_purity_checkin_out
     mov                  rax,                  rdx
     pop                  rbp
     ret
@dp_purity_checkin_out:
     sub                  rsp,                   16
    push                  r12
    push                  r13
    push                  rbx
@dp.1.enter:
     mov                   r8,                  rdi
     cmp                   r8,                    1
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@dp.4.IfTrue
	jmp	@dp.3.IfFalse
@dp.4.IfTrue:
     mov                  rax,                   36
	jmp	@dp.2.exit
	jmp	@dp.5.IfExit
@dp.3.IfFalse:
@dp.5.IfExit:
     mov                  r12,                    0
     mov                  r13,                    2
	jmp	@dp.9.ForCon
@dp.8.ForBody:
     mov                  rbx,                   r8
     xor                  rbx,                  r13
     cmp                  rbx,                   r8
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@dp.12.IfTrue
	jmp	@dp.11.IfFalse
@dp.12.IfTrue:
     mov                  rdi,                  rbx
    push                   r8
    push                  rsi
 call	dp
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rsi,                  r12
     add                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,                  233
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r12,                  rsi
	jmp	@dp.13.IfExit
@dp.11.IfFalse:
@dp.13.IfExit:
     add                  r13,                    1
@dp.9.ForCon:
     cmp                  r13,                   r8
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@dp.8.ForBody
     mov                  rax,                  r12
@dp.2.exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     add                  rsp,                   16
     mov                  rdi,                  rax
     cmp        qword[rbp-16],                    0
      jl @dp_purity_addition_out
     cmp        qword[rbp-16],                  150
     jnl @dp_purity_addition_out
     mov                  rdx,                 @@dp
     mov                  rcx,        qword[rbp-16]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov           qword[rdx],                  rax
     mov                  rax,                  rdi
     pop                  rbp
     ret
@dp_purity_addition_out:
     pop                  rbp
     ret


 section                 .bss
@@dp:
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



