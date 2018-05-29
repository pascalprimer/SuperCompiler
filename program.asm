  global                 main
  extern	malloc


 section                .text
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   16
     mov         qword[@MAXN],                10005
     mov         qword[@MAXM],                10005
     add                  rsp,                   16
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                  552
@main.1.enter:
call	getInt
     mov        qword[rbp-16],                  rax
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-24],                  rcx
call	getInt
     mov        qword[rbp-40],                  rax
     mov                  rcx,        qword[rbp-40]
     mov        qword[rbp-48],                  rcx
     mov                  rcx,         qword[@MAXN]
     mov        qword[rbp-56],                  rcx
     mov                  rcx,         qword[@MAXN]
     mov        qword[rbp-72],                  rcx
     mov                  rax,        qword[rbp-56]
     add                  rax,                    1
     mov        qword[rbp-56],                  rax
     shl        qword[rbp-56],                    3
     mov                  rdi,        qword[rbp-56]
    call               malloc
     mov        qword[rbp-80],                  rax
     mov                  rdx,        qword[rbp-80]
     mov                  rcx,        qword[rbp-72]
     mov           qword[rdx],                  rcx
     mov                  rax,        qword[rbp-80]
     add                  rax,                    8
     mov        qword[rbp-80],                  rax
     mov                  rax,        qword[rbp-56]
     sub                  rax,                    8
     mov        qword[rbp-56],                  rax
     mov                  rcx,        qword[rbp-80]
     mov        qword[rbp-88],                  rcx
     mov                  rcx,         qword[@MAXN]
     mov        qword[rbp-96],                  rcx
     mov                  rcx,         qword[@MAXN]
     mov       qword[rbp-104],                  rcx
     mov                  rax,        qword[rbp-96]
     add                  rax,                    1
     mov        qword[rbp-96],                  rax
     shl        qword[rbp-96],                    3
     sub                  rsp,                    8
     mov                  rdi,        qword[rbp-96]
    call               malloc
     mov       qword[rbp-112],                  rax
     add                  rsp,                    8
     mov                  rdx,       qword[rbp-112]
     mov                  rcx,       qword[rbp-104]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-112]
     add                  rax,                    8
     mov       qword[rbp-112],                  rax
     mov                  rax,        qword[rbp-96]
     sub                  rax,                    8
     mov        qword[rbp-96],                  rax
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-120],                  rcx
     mov                  rcx,         qword[@MAXN]
     mov       qword[rbp-128],                  rcx
     mov                  rcx,         qword[@MAXN]
     mov       qword[rbp-136],                  rcx
     mov                  rax,       qword[rbp-128]
     add                  rax,                    1
     mov       qword[rbp-128],                  rax
     shl       qword[rbp-128],                    3
     mov                  rdi,       qword[rbp-128]
    call               malloc
     mov       qword[rbp-144],                  rax
     mov                  rdx,       qword[rbp-144]
     mov                  rcx,       qword[rbp-136]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-144]
     add                  rax,                    8
     mov       qword[rbp-144],                  rax
     mov                  rax,       qword[rbp-128]
     sub                  rax,                    8
     mov       qword[rbp-128],                  rax
     mov                  rcx,       qword[rbp-144]
     mov       qword[rbp-152],                  rcx
     mov       qword[rbp-160],                    0
	jmp	@main.6.ForCon
@main.5.ForBody:
     mov                  rcx,        qword[rbp-88]
     mov       qword[rbp-168],                  rcx
     mov                  rcx,       qword[rbp-160]
     mov       qword[rbp-176],                  rcx
     shl       qword[rbp-176],                    3
     mov                  rax,       qword[rbp-168]
     add                  rax,       qword[rbp-176]
     mov       qword[rbp-168],                  rax
     sub                  rsp,                    8
call	getInt
     add                  rsp,                    8
     mov       qword[rbp-192],                  rax
     mov                  rdx,       qword[rbp-168]
     mov                  rcx,       qword[rbp-192]
     mov           qword[rdx],                  rcx
     mov                  rcx,       qword[rbp-120]
     mov       qword[rbp-200],                  rcx
     mov                  rcx,       qword[rbp-160]
     mov       qword[rbp-208],                  rcx
     shl       qword[rbp-208],                    3
     mov                  rax,       qword[rbp-200]
     add                  rax,       qword[rbp-208]
     mov       qword[rbp-200],                  rax
     sub                  rsp,                    8
call	getInt
     add                  rsp,                    8
     mov       qword[rbp-224],                  rax
     mov                  rdx,       qword[rbp-200]
     mov                  rcx,       qword[rbp-224]
     mov           qword[rdx],                  rcx
	jmp	@main.4.ForIter
@main.4.ForIter:
     add       qword[rbp-160],                    1
     mov                  rcx,       qword[rbp-160]
     mov       qword[rbp-232],                  rcx
	jmp	@main.6.ForCon
@main.6.ForCon:
     mov                  rcx,       qword[rbp-160]
     cmp                  rcx,        qword[rbp-48]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-240],                  rax
     mov                  rcx,       qword[rbp-240]
     mov       qword[rbp-248],                  rcx
     cmp       qword[rbp-248],                    1
	je	@main.5.ForBody
	jne	@main.7.ForExit
@main.7.ForExit:
     mov       qword[rbp-160],                    0
	jmp	@main.10.ForCon
@main.9.ForBody:
     mov                  rcx,       qword[rbp-120]
     mov       qword[rbp-256],                  rcx
     mov                  rcx,       qword[rbp-160]
     mov       qword[rbp-264],                  rcx
     shl       qword[rbp-264],                    3
     mov                  rax,       qword[rbp-256]
     add                  rax,       qword[rbp-264]
     mov       qword[rbp-256],                  rax
     mov                  rdx,       qword[rbp-256]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-272],                  rcx
	jmp	@main.14.ForCon
@main.13.ForBody:
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-280],                  rcx
     mov                  rcx,       qword[rbp-272]
     mov       qword[rbp-288],                  rcx
     shl       qword[rbp-288],                    3
     mov                  rax,       qword[rbp-280]
     add                  rax,       qword[rbp-288]
     mov       qword[rbp-280],                  rax
     mov                  rcx,       qword[rbp-120]
     mov       qword[rbp-296],                  rcx
     mov                  rcx,       qword[rbp-160]
     mov       qword[rbp-304],                  rcx
     shl       qword[rbp-304],                    3
     mov                  rax,       qword[rbp-296]
     add                  rax,       qword[rbp-304]
     mov       qword[rbp-296],                  rax
     mov                  rcx,       qword[rbp-272]
     mov       qword[rbp-312],                  rcx
     mov                  rdx,       qword[rbp-296]
     mov                  rax,       qword[rbp-312]
     sub                  rax,           qword[rdx]
     mov       qword[rbp-312],                  rax
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-320],                  rcx
     mov                  rcx,       qword[rbp-312]
     mov       qword[rbp-328],                  rcx
     shl       qword[rbp-328],                    3
     mov                  rax,       qword[rbp-320]
     add                  rax,       qword[rbp-328]
     mov       qword[rbp-320],                  rax
     mov                  rcx,        qword[rbp-88]
     mov       qword[rbp-336],                  rcx
     mov                  rcx,       qword[rbp-160]
     mov       qword[rbp-344],                  rcx
     shl       qword[rbp-344],                    3
     mov                  rax,       qword[rbp-336]
     add                  rax,       qword[rbp-344]
     mov       qword[rbp-336],                  rax
     mov                  rdx,       qword[rbp-320]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-352],                  rcx
     mov                  rdx,       qword[rbp-336]
     mov                  rax,       qword[rbp-352]
     add                  rax,           qword[rdx]
     mov       qword[rbp-352],                  rax
     mov                  rdx,       qword[rbp-280]
     mov                  rcx,           qword[rdx]
     cmp                  rcx,       qword[rbp-352]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-360],                  rax
     mov                  rcx,       qword[rbp-360]
     mov       qword[rbp-368],                  rcx
     cmp       qword[rbp-368],                    1
	je	@main.17.IfTrue
	jne	@main.16.IfFalse
@main.17.IfTrue:
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-376],                  rcx
     mov                  rcx,       qword[rbp-272]
     mov       qword[rbp-384],                  rcx
     shl       qword[rbp-384],                    3
     mov                  rax,       qword[rbp-376]
     add                  rax,       qword[rbp-384]
     mov       qword[rbp-376],                  rax
     mov                  rcx,       qword[rbp-120]
     mov       qword[rbp-392],                  rcx
     mov                  rcx,       qword[rbp-160]
     mov       qword[rbp-400],                  rcx
     shl       qword[rbp-400],                    3
     mov                  rax,       qword[rbp-392]
     add                  rax,       qword[rbp-400]
     mov       qword[rbp-392],                  rax
     mov                  rcx,       qword[rbp-272]
     mov       qword[rbp-408],                  rcx
     mov                  rdx,       qword[rbp-392]
     mov                  rax,       qword[rbp-408]
     sub                  rax,           qword[rdx]
     mov       qword[rbp-408],                  rax
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-416],                  rcx
     mov                  rcx,       qword[rbp-408]
     mov       qword[rbp-424],                  rcx
     shl       qword[rbp-424],                    3
     mov                  rax,       qword[rbp-416]
     add                  rax,       qword[rbp-424]
     mov       qword[rbp-416],                  rax
     mov                  rcx,        qword[rbp-88]
     mov       qword[rbp-432],                  rcx
     mov                  rcx,       qword[rbp-160]
     mov       qword[rbp-440],                  rcx
     shl       qword[rbp-440],                    3
     mov                  rax,       qword[rbp-432]
     add                  rax,       qword[rbp-440]
     mov       qword[rbp-432],                  rax
     mov                  rdx,       qword[rbp-416]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-448],                  rcx
     mov                  rdx,       qword[rbp-432]
     mov                  rax,       qword[rbp-448]
     add                  rax,           qword[rdx]
     mov       qword[rbp-448],                  rax
     mov                  rdx,       qword[rbp-376]
     mov                  rcx,       qword[rbp-448]
     mov           qword[rdx],                  rcx
	jmp	@main.18.IfExit
@main.16.IfFalse:
@main.18.IfExit:
	jmp	@main.12.ForIter
@main.12.ForIter:
     add       qword[rbp-272],                    1
     mov                  rcx,       qword[rbp-272]
     mov       qword[rbp-456],                  rcx
	jmp	@main.14.ForCon
@main.14.ForCon:
     mov                  rcx,       qword[rbp-272]
     cmp                  rcx,        qword[rbp-24]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-464],                  rax
     mov                  rcx,       qword[rbp-464]
     mov       qword[rbp-472],                  rcx
     cmp       qword[rbp-472],                    1
	je	@main.13.ForBody
	jne	@main.15.ForExit
@main.15.ForExit:
	jmp	@main.8.ForIter
@main.8.ForIter:
     add       qword[rbp-160],                    1
     mov                  rcx,       qword[rbp-160]
     mov       qword[rbp-480],                  rcx
	jmp	@main.10.ForCon
@main.10.ForCon:
     mov                  rcx,       qword[rbp-160]
     cmp                  rcx,        qword[rbp-48]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-488],                  rax
     mov                  rcx,       qword[rbp-488]
     mov       qword[rbp-496],                  rcx
     cmp       qword[rbp-496],                    1
	je	@main.9.ForBody
	jne	@main.11.ForExit
@main.11.ForExit:
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-504],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-512],                  rcx
     shl       qword[rbp-512],                    3
     mov                  rax,       qword[rbp-504]
     add                  rax,       qword[rbp-512]
     mov       qword[rbp-504],                  rax
     mov                  rdx,       qword[rbp-504]
     mov                  rdi,           qword[rdx]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov       qword[rbp-536],                  rax
     mov                  rdi,       qword[rbp-536]
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     mov                  rax,                    0
	jmp	@main.2.exit
@main.2.exit:
     add                  rsp,                  552
     pop                  rbp
     ret


 section                 .bss
@MAXN:
  	resq 		1
@MAXM:
  	resq 		1


 section                .data






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


ALIGN   8
__size__:
		mov     rax, qword[rdi - 8H]
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

