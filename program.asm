  global                 main
  extern	malloc


 section                .text
qsrt:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  392
@qsrt.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                  rsi
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-24],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-32],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-40],                  rcx
     mov                  rax,        qword[rbp-40]
     add                  rax,        qword[rbp-16]
     mov        qword[rbp-40],                  rax
     mov                  rcx,        qword[rbp-40]
     mov        qword[rbp-48],                  rcx
     mov                  rax,        qword[rbp-48]
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov        qword[rbp-48],                  rax
     mov                  rcx,            qword[@a]
     mov        qword[rbp-56],                  rcx
     mov                  rcx,        qword[rbp-48]
     mov        qword[rbp-72],                  rcx
     shl        qword[rbp-72],                    3
     mov                  rax,        qword[rbp-56]
     add                  rax,        qword[rbp-72]
     mov        qword[rbp-56],                  rax
     mov                  rdx,        qword[rbp-56]
     mov                  rcx,           qword[rdx]
     mov        qword[rbp-80],                  rcx
	jmp	@qsrt.6.ForCon
@qsrt.5.ForBody:
	jmp	@qsrt.10.ForCon
@qsrt.9.ForBody:
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-88],                  rcx
     add        qword[rbp-24],                    1
	jmp	@qsrt.8.ForIter
@qsrt.8.ForIter:
	jmp	@qsrt.10.ForCon
@qsrt.10.ForCon:
     mov                  rcx,            qword[@a]
     mov        qword[rbp-96],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-104],                  rcx
     shl       qword[rbp-104],                    3
     mov                  rax,        qword[rbp-96]
     add                  rax,       qword[rbp-104]
     mov        qword[rbp-96],                  rax
     mov                  rdx,        qword[rbp-96]
     mov                  rcx,           qword[rdx]
     cmp                  rcx,        qword[rbp-80]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-112],                  rax
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-120],                  rcx
     cmp       qword[rbp-120],                    1
	je	@qsrt.9.ForBody
	jne	@qsrt.11.ForExit
@qsrt.11.ForExit:
	jmp	@qsrt.14.ForCon
@qsrt.13.ForBody:
     mov                  rcx,        qword[rbp-32]
     mov       qword[rbp-128],                  rcx
     sub        qword[rbp-32],                    1
	jmp	@qsrt.12.ForIter
@qsrt.12.ForIter:
	jmp	@qsrt.14.ForCon
@qsrt.14.ForCon:
     mov                  rcx,            qword[@a]
     mov       qword[rbp-136],                  rcx
     mov                  rcx,        qword[rbp-32]
     mov       qword[rbp-144],                  rcx
     shl       qword[rbp-144],                    3
     mov                  rax,       qword[rbp-136]
     add                  rax,       qword[rbp-144]
     mov       qword[rbp-136],                  rax
     mov                  rdx,       qword[rbp-136]
     mov                  rcx,           qword[rdx]
     cmp                  rcx,        qword[rbp-80]
     mov                  rax,                    0
    setg                   al
     mov       qword[rbp-152],                  rax
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-160],                  rcx
     cmp       qword[rbp-160],                    1
	je	@qsrt.13.ForBody
	jne	@qsrt.15.ForExit
@qsrt.15.ForExit:
     mov                  rcx,        qword[rbp-24]
     cmp                  rcx,        qword[rbp-32]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-168],                  rax
     mov                  rcx,       qword[rbp-168]
     mov       qword[rbp-176],                  rcx
     cmp       qword[rbp-176],                    1
	je	@qsrt.17.IfTrue
	jne	@qsrt.16.IfFalse
@qsrt.17.IfTrue:
     mov                  rcx,            qword[@a]
     mov       qword[rbp-184],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-192],                  rcx
     shl       qword[rbp-192],                    3
     mov                  rax,       qword[rbp-184]
     add                  rax,       qword[rbp-192]
     mov       qword[rbp-184],                  rax
     mov                  rdx,       qword[rbp-184]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-200],                  rcx
     mov                  rcx,            qword[@a]
     mov       qword[rbp-208],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-216],                  rcx
     shl       qword[rbp-216],                    3
     mov                  rax,       qword[rbp-208]
     add                  rax,       qword[rbp-216]
     mov       qword[rbp-208],                  rax
     mov                  rcx,            qword[@a]
     mov       qword[rbp-224],                  rcx
     mov                  rcx,        qword[rbp-32]
     mov       qword[rbp-232],                  rcx
     shl       qword[rbp-232],                    3
     mov                  rax,       qword[rbp-224]
     add                  rax,       qword[rbp-232]
     mov       qword[rbp-224],                  rax
     mov                  rdx,       qword[rbp-224]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-240],                  rcx
     mov                  rdx,       qword[rbp-208]
     mov                  rcx,       qword[rbp-240]
     mov           qword[rdx],                  rcx
     mov                  rcx,            qword[@a]
     mov       qword[rbp-248],                  rcx
     mov                  rcx,        qword[rbp-32]
     mov       qword[rbp-256],                  rcx
     shl       qword[rbp-256],                    3
     mov                  rax,       qword[rbp-248]
     add                  rax,       qword[rbp-256]
     mov       qword[rbp-248],                  rax
     mov                  rdx,       qword[rbp-248]
     mov                  rcx,       qword[rbp-200]
     mov           qword[rdx],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-264],                  rcx
     add        qword[rbp-24],                    1
     mov                  rcx,        qword[rbp-32]
     mov       qword[rbp-272],                  rcx
     sub        qword[rbp-32],                    1
	jmp	@qsrt.18.IfExit
@qsrt.16.IfFalse:
@qsrt.18.IfExit:
	jmp	@qsrt.4.ForIter
@qsrt.4.ForIter:
	jmp	@qsrt.6.ForCon
@qsrt.6.ForCon:
     mov                  rcx,        qword[rbp-24]
     cmp                  rcx,        qword[rbp-32]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-280],                  rax
     mov                  rcx,       qword[rbp-280]
     mov       qword[rbp-288],                  rcx
     cmp       qword[rbp-288],                    1
	je	@qsrt.5.ForBody
	jne	@qsrt.7.ForExit
@qsrt.7.ForExit:
     mov                  rcx,         qword[rbp-8]
     cmp                  rcx,        qword[rbp-32]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-296],                  rax
     mov                  rcx,       qword[rbp-296]
     mov       qword[rbp-304],                  rcx
     cmp       qword[rbp-304],                    1
	je	@qsrt.20.IfTrue
	jne	@qsrt.19.IfFalse
@qsrt.20.IfTrue:
     mov                  rdi,         qword[rbp-8]
     mov                  rsi,        qword[rbp-32]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	qsrt
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov       qword[rbp-336],                  rax
	jmp	@qsrt.21.IfExit
@qsrt.19.IfFalse:
@qsrt.21.IfExit:
     mov                  rcx,        qword[rbp-24]
     cmp                  rcx,        qword[rbp-16]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-344],                  rax
     mov                  rcx,       qword[rbp-344]
     mov       qword[rbp-352],                  rcx
     cmp       qword[rbp-352],                    1
	je	@qsrt.23.IfTrue
	jne	@qsrt.22.IfFalse
@qsrt.23.IfTrue:
     mov                  rdi,        qword[rbp-24]
     mov                  rsi,        qword[rbp-16]
    push                  rdi
    push                  rsi
call	qsrt
     pop                  rsi
     pop                  rdi
     mov       qword[rbp-384],                  rax
	jmp	@qsrt.24.IfExit
@qsrt.22.IfFalse:
@qsrt.24.IfExit:
     mov                  rax,                    0
	jmp	@qsrt.2.exit
@qsrt.2.exit:
     add                  rsp,                  392
     pop                  rbp
     ret
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   40
     mov         qword[rbp-8],                10100
     mov        qword[rbp-16],                10100
     mov                  rax,         qword[rbp-8]
     add                  rax,                    1
     mov         qword[rbp-8],                  rax
     shl         qword[rbp-8],                    3
     sub                  rsp,                    8
     mov                  rdi,         qword[rbp-8]
    call               malloc
     mov        qword[rbp-24],                  rax
     add                  rsp,                    8
     mov                  rdx,        qword[rbp-24]
     mov                  rcx,        qword[rbp-16]
     mov           qword[rdx],                  rcx
     mov                  rax,        qword[rbp-24]
     add                  rax,                    8
     mov        qword[rbp-24],                  rax
     mov                  rax,         qword[rbp-8]
     sub                  rax,                    8
     mov         qword[rbp-8],                  rax
     mov                  rcx,        qword[rbp-24]
     mov            qword[@a],                  rcx
     mov            qword[@n],                10000
     add                  rsp,                   40
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                  208
@main.1.enter:
     mov         qword[rbp-8],                    1
	jmp	@main.6.ForCon
@main.5.ForBody:
     mov                  rcx,            qword[@a]
     mov        qword[rbp-16],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-32],                  rcx
     shl        qword[rbp-32],                    3
     mov                  rax,        qword[rbp-16]
     add                  rax,        qword[rbp-32]
     mov        qword[rbp-16],                  rax
     mov                  rcx,            qword[@n]
     mov        qword[rbp-40],                  rcx
     mov                  rax,        qword[rbp-40]
     add                  rax,                    1
     mov        qword[rbp-40],                  rax
     mov                  rcx,        qword[rbp-40]
     mov        qword[rbp-56],                  rcx
     mov                  rax,        qword[rbp-56]
     sub                  rax,         qword[rbp-8]
     mov        qword[rbp-56],                  rax
     mov                  rdx,        qword[rbp-16]
     mov                  rcx,        qword[rbp-56]
     mov           qword[rdx],                  rcx
	jmp	@main.4.ForIter
@main.4.ForIter:
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-64],                  rcx
     add         qword[rbp-8],                    1
	jmp	@main.6.ForCon
@main.6.ForCon:
     mov                  rcx,         qword[rbp-8]
     cmp                  rcx,            qword[@n]
     mov                  rax,                    0
   setle                   al
     mov        qword[rbp-72],                  rax
     mov                  rcx,        qword[rbp-72]
     mov        qword[rbp-80],                  rcx
     cmp        qword[rbp-80],                    1
	je	@main.5.ForBody
	jne	@main.7.ForExit
@main.7.ForExit:
     mov                  rdi,                    1
     mov                  rsi,            qword[@n]
call	qsrt
     mov       qword[rbp-112],                  rax
     mov         qword[rbp-8],                    1
	jmp	@main.10.ForCon
@main.9.ForBody:
     mov                  rcx,            qword[@a]
     mov       qword[rbp-120],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-128],                  rcx
     shl       qword[rbp-128],                    3
     mov                  rax,       qword[rbp-120]
     add                  rax,       qword[rbp-128]
     mov       qword[rbp-120],                  rax
     mov                  rdx,       qword[rbp-120]
     mov                  rdi,           qword[rdx]
call	toString
     mov       qword[rbp-152],                  rax
     mov                  rdi,       qword[rbp-152]
call	print
     mov                  rdi,         __const_str0
call	print
	jmp	@main.8.ForIter
@main.8.ForIter:
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-176],                  rcx
     add         qword[rbp-8],                    1
	jmp	@main.10.ForCon
@main.10.ForCon:
     mov                  rcx,         qword[rbp-8]
     cmp                  rcx,            qword[@n]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-184],                  rax
     mov                  rcx,       qword[rbp-184]
     mov       qword[rbp-192],                  rcx
     cmp       qword[rbp-192],                    1
	je	@main.9.ForBody
	jne	@main.11.ForExit
@main.11.ForExit:
     mov                  rdi,         __const_str1
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     mov                  rax,                    0
	jmp	@main.2.exit
@main.2.exit:
     add                  rsp,                  208
     pop                  rbp
     ret


 section                 .bss
@a:
  	resq 		1
@n:
  	resq 		1


 section                .data
      dq                    1
__const_str0:
      db " ",0
      dq                    1
__const_str1:
      db "",10,"",0






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

