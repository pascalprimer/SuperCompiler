  global                 main
  extern	malloc


 section                .text
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
     mov            qword[@M],                    0
     add                  rsp,                    8
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                  688
@main.1.enter:
     sub                  rsp,                    8
call	getInt
     add                  rsp,                    8
     mov        qword[rbp-16],                  rax
     mov                  rcx,        qword[rbp-16]
     mov            qword[@N],                  rcx
     mov                  rcx,            qword[@N]
     mov        qword[rbp-32],                  rcx
     mov                  rax,        qword[rbp-32]
     add                  rax,                    5
     mov        qword[rbp-32],                  rax
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-40],                  rcx
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-48],                  rcx
     mov                  rax,        qword[rbp-40]
     add                  rax,                    1
     mov        qword[rbp-40],                  rax
     shl        qword[rbp-40],                    3
     sub                  rsp,                    8
     mov                  rdi,        qword[rbp-40]
    call               malloc
     mov        qword[rbp-56],                  rax
     add                  rsp,                    8
     mov                  rdx,        qword[rbp-56]
     mov                  rcx,        qword[rbp-48]
     mov           qword[rdx],                  rcx
     mov                  rax,        qword[rbp-56]
     add                  rax,                    8
     mov        qword[rbp-56],                  rax
     mov                  rax,        qword[rbp-40]
     sub                  rax,                    8
     mov        qword[rbp-40],                  rax
     mov                  rcx,        qword[rbp-56]
     mov        qword[@check],                  rcx
     mov        qword[rbp-72],                    0
jmp	@main.6.ForCon
@main.5.ForBody:
     mov                  rcx,        qword[rbp-72]
     mov        qword[rbp-80],                  rcx
     add        qword[rbp-72],                    1
     mov                  rcx,        qword[@check]
     mov        qword[rbp-88],                  rcx
     mov                  rcx,        qword[rbp-80]
     mov        qword[rbp-96],                  rcx
     shl        qword[rbp-96],                    3
     mov                  rax,        qword[rbp-88]
     add                  rax,        qword[rbp-96]
     mov        qword[rbp-88],                  rax
     mov                  rdx,        qword[rbp-88]
     mov           qword[rdx],                    1
jmp	@main.4.ForIter
@main.4.ForIter:
jmp	@main.6.ForCon
@main.6.ForCon:
     mov                  rcx,        qword[rbp-72]
     cmp                  rcx,            qword[@N]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-104],                  rax
     mov                  rcx,       qword[rbp-104]
     mov       qword[rbp-112],                  rcx
     cmp       qword[rbp-112],                    1
je	@main.5.ForBody
jne	@main.7.ForExit
@main.7.ForExit:
     mov                  rcx,            qword[@N]
     mov       qword[rbp-120],                  rcx
     mov                  rax,       qword[rbp-120]
     add                  rax,                    5
     mov       qword[rbp-120],                  rax
     mov                  rcx,       qword[rbp-120]
     mov       qword[rbp-128],                  rcx
     mov                  rcx,       qword[rbp-120]
     mov       qword[rbp-136],                  rcx
     mov                  rax,       qword[rbp-128]
     add                  rax,                    1
     mov       qword[rbp-128],                  rax
     shl       qword[rbp-128],                    3
     sub                  rsp,                    8
     mov                  rdi,       qword[rbp-128]
    call               malloc
     mov       qword[rbp-144],                  rax
     add                  rsp,                    8
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
     mov                  rcx,            qword[@N]
     mov       qword[rbp-160],                  rcx
     mov                  rax,       qword[rbp-160]
     add                  rax,                    5
     mov       qword[rbp-160],                  rax
     mov                  rcx,       qword[rbp-160]
     mov       qword[rbp-168],                  rcx
     mov                  rcx,       qword[rbp-160]
     mov       qword[rbp-176],                  rcx
     mov                  rax,       qword[rbp-168]
     add                  rax,                    1
     mov       qword[rbp-168],                  rax
     shl       qword[rbp-168],                    3
     mov                  rdi,       qword[rbp-168]
    call               malloc
     mov       qword[rbp-184],                  rax
     mov                  rdx,       qword[rbp-184]
     mov                  rcx,       qword[rbp-176]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-184]
     add                  rax,                    8
     mov       qword[rbp-184],                  rax
     mov                  rax,       qword[rbp-168]
     sub                  rax,                    8
     mov       qword[rbp-168],                  rax
     mov                  rcx,       qword[rbp-184]
     mov       qword[rbp-192],                  rcx
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-200],                  rcx
     mov                  rdx,       qword[rbp-200]
     mov         qword[rdx+8],                    1
     mov        qword[rbp-72],                    2
jmp	@main.9.ForBody
@main.9.ForBody:
     mov                  rcx,        qword[rbp-72]
     cmp                  rcx,            qword[@N]
     mov                  rax,                    0
    setg                   al
     mov       qword[rbp-208],                  rax
     mov                  rcx,       qword[rbp-208]
     mov       qword[rbp-216],                  rcx
     cmp       qword[rbp-216],                    1
je	@main.13.IfTrue
jne	@main.12.IfFalse
@main.13.IfTrue:
jmp	@main.11.ForExit
jmp	@main.14.IfExit
@main.12.IfFalse:
@main.14.IfExit:
     mov                  rcx,        qword[@check]
     mov       qword[rbp-224],                  rcx
     mov                  rcx,        qword[rbp-72]
     mov       qword[rbp-232],                  rcx
     shl       qword[rbp-232],                    3
     mov                  rax,       qword[rbp-224]
     add                  rax,       qword[rbp-232]
     mov       qword[rbp-224],                  rax
     mov                  rdx,       qword[rbp-224]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-240],                  rcx
     cmp       qword[rbp-240],                    1
je	@main.16.IfTrue
jne	@main.15.IfFalse
@main.16.IfTrue:
     add            qword[@M],                    1
     mov                  rcx,            qword[@M]
     mov       qword[rbp-256],                  rcx
     mov                  rcx,       qword[rbp-192]
     mov       qword[rbp-264],                  rcx
     mov                  rcx,       qword[rbp-256]
     mov       qword[rbp-272],                  rcx
     shl       qword[rbp-272],                    3
     mov                  rax,       qword[rbp-264]
     add                  rax,       qword[rbp-272]
     mov       qword[rbp-264],                  rax
     mov                  rdx,       qword[rbp-264]
     mov                  rcx,        qword[rbp-72]
     mov           qword[rdx],                  rcx
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-280],                  rcx
     mov                  rcx,        qword[rbp-72]
     mov       qword[rbp-288],                  rcx
     shl       qword[rbp-288],                    3
     mov                  rax,       qword[rbp-280]
     add                  rax,       qword[rbp-288]
     mov       qword[rbp-280],                  rax
     mov                  rcx,        qword[rbp-72]
     mov       qword[rbp-296],                  rcx
     mov                  rax,       qword[rbp-296]
     sub                  rax,                    1
     mov       qword[rbp-296],                  rax
     mov                  rdx,       qword[rbp-280]
     mov                  rcx,       qword[rbp-296]
     mov           qword[rdx],                  rcx
jmp	@main.17.IfExit
@main.15.IfFalse:
@main.17.IfExit:
     mov                  rcx,        qword[rbp-72]
     mov       qword[rbp-304],                  rcx
     mov       qword[rbp-312],                    1
jmp	@main.20.ForCon
@main.19.ForBody:
     mov                  rcx,       qword[rbp-192]
     mov       qword[rbp-320],                  rcx
     mov                  rcx,       qword[rbp-312]
     mov       qword[rbp-328],                  rcx
     shl       qword[rbp-328],                    3
     mov                  rax,       qword[rbp-320]
     add                  rax,       qword[rbp-328]
     mov       qword[rbp-320],                  rax
     mov                  rcx,       qword[rbp-304]
     mov       qword[rbp-336],                  rcx
     mov                  rdx,       qword[rbp-320]
     mov                  rax,       qword[rbp-336]
    imul                  rax,           qword[rdx]
     mov       qword[rbp-336],                  rax
     mov                  rcx,       qword[rbp-336]
     mov       qword[rbp-344],                  rcx
     mov                  rcx,       qword[rbp-344]
     cmp                  rcx,            qword[@N]
     mov                  rax,                    0
    setg                   al
     mov       qword[rbp-352],                  rax
     mov                  rcx,       qword[rbp-352]
     mov       qword[rbp-360],                  rcx
     cmp       qword[rbp-360],                    1
je	@main.23.IfTrue
jne	@main.22.IfFalse
@main.23.IfTrue:
jmp	@main.18.ForIter
jmp	@main.24.IfExit
@main.22.IfFalse:
@main.24.IfExit:
     mov                  rcx,        qword[@check]
     mov       qword[rbp-368],                  rcx
     mov                  rcx,       qword[rbp-344]
     mov       qword[rbp-376],                  rcx
     shl       qword[rbp-376],                    3
     mov                  rax,       qword[rbp-368]
     add                  rax,       qword[rbp-376]
     mov       qword[rbp-368],                  rax
     mov                  rdx,       qword[rbp-368]
     mov           qword[rdx],                    0
     mov                  rcx,       qword[rbp-192]
     mov       qword[rbp-384],                  rcx
     mov                  rcx,       qword[rbp-312]
     mov       qword[rbp-392],                  rcx
     shl       qword[rbp-392],                    3
     mov                  rax,       qword[rbp-384]
     add                  rax,       qword[rbp-392]
     mov       qword[rbp-384],                  rax
     mov                  rcx,       qword[rbp-304]
     mov       qword[rbp-400],                  rcx
     mov                  rdx,       qword[rbp-384]
     mov                  rax,       qword[rbp-400]
     mov                  rcx,           qword[rdx]
     cdq
    idiv                  ecx
     mov       qword[rbp-400],                  rdx
     cmp       qword[rbp-400],                    0
     mov                  rax,                    0
    sete                   al
     mov       qword[rbp-408],                  rax
     mov                  rcx,       qword[rbp-408]
     mov       qword[rbp-416],                  rcx
     cmp       qword[rbp-416],                    1
je	@main.26.IfTrue
jne	@main.25.IfFalse
@main.26.IfTrue:
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-424],                  rcx
     mov                  rcx,       qword[rbp-344]
     mov       qword[rbp-432],                  rcx
     shl       qword[rbp-432],                    3
     mov                  rax,       qword[rbp-424]
     add                  rax,       qword[rbp-432]
     mov       qword[rbp-424],                  rax
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-440],                  rcx
     mov                  rcx,       qword[rbp-304]
     mov       qword[rbp-448],                  rcx
     shl       qword[rbp-448],                    3
     mov                  rax,       qword[rbp-440]
     add                  rax,       qword[rbp-448]
     mov       qword[rbp-440],                  rax
     mov                  rcx,       qword[rbp-192]
     mov       qword[rbp-456],                  rcx
     mov                  rcx,       qword[rbp-312]
     mov       qword[rbp-464],                  rcx
     shl       qword[rbp-464],                    3
     mov                  rax,       qword[rbp-456]
     add                  rax,       qword[rbp-464]
     mov       qword[rbp-456],                  rax
     mov                  rdx,       qword[rbp-440]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-472],                  rcx
     mov                  rdx,       qword[rbp-456]
     mov                  rax,       qword[rbp-472]
    imul                  rax,           qword[rdx]
     mov       qword[rbp-472],                  rax
     mov                  rdx,       qword[rbp-424]
     mov                  rcx,       qword[rbp-472]
     mov           qword[rdx],                  rcx
jmp	@main.21.ForExit
jmp	@main.27.IfExit
@main.25.IfFalse:
     mov                  rcx,       qword[rbp-192]
     mov       qword[rbp-480],                  rcx
     mov                  rcx,       qword[rbp-312]
     mov       qword[rbp-488],                  rcx
     shl       qword[rbp-488],                    3
     mov                  rax,       qword[rbp-480]
     add                  rax,       qword[rbp-488]
     mov       qword[rbp-480],                  rax
     mov                  rcx,       qword[rbp-304]
     mov       qword[rbp-496],                  rcx
     mov                  rdx,       qword[rbp-480]
     mov                  rax,       qword[rbp-496]
    imul                  rax,           qword[rdx]
     mov       qword[rbp-496],                  rax
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-504],                  rcx
     mov                  rcx,       qword[rbp-496]
     mov       qword[rbp-512],                  rcx
     shl       qword[rbp-512],                    3
     mov                  rax,       qword[rbp-504]
     add                  rax,       qword[rbp-512]
     mov       qword[rbp-504],                  rax
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-520],                  rcx
     mov                  rcx,       qword[rbp-304]
     mov       qword[rbp-528],                  rcx
     shl       qword[rbp-528],                    3
     mov                  rax,       qword[rbp-520]
     add                  rax,       qword[rbp-528]
     mov       qword[rbp-520],                  rax
     mov                  rcx,       qword[rbp-192]
     mov       qword[rbp-536],                  rcx
     mov                  rcx,       qword[rbp-312]
     mov       qword[rbp-544],                  rcx
     shl       qword[rbp-544],                    3
     mov                  rax,       qword[rbp-536]
     add                  rax,       qword[rbp-544]
     mov       qword[rbp-536],                  rax
     mov                  rdx,       qword[rbp-536]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-552],                  rcx
     mov                  rax,       qword[rbp-552]
     sub                  rax,                    1
     mov       qword[rbp-552],                  rax
     mov                  rdx,       qword[rbp-520]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-560],                  rcx
     mov                  rax,       qword[rbp-560]
    imul                  rax,       qword[rbp-552]
     mov       qword[rbp-560],                  rax
     mov                  rdx,       qword[rbp-504]
     mov                  rcx,       qword[rbp-560]
     mov           qword[rdx],                  rcx
jmp	@main.27.IfExit
@main.27.IfExit:
jmp	@main.18.ForIter
@main.18.ForIter:
     mov                  rcx,       qword[rbp-312]
     mov       qword[rbp-568],                  rcx
     add       qword[rbp-312],                    1
jmp	@main.20.ForCon
@main.20.ForCon:
     mov                  rcx,       qword[rbp-312]
     cmp                  rcx,            qword[@M]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-576],                  rax
     cmp       qword[rbp-576],                    0
je	@main.28.cmp_and
     mov                  rcx,       qword[rbp-192]
     mov       qword[rbp-584],                  rcx
     mov                  rcx,       qword[rbp-312]
     mov       qword[rbp-592],                  rcx
     shl       qword[rbp-592],                    3
     mov                  rax,       qword[rbp-584]
     add                  rax,       qword[rbp-592]
     mov       qword[rbp-584],                  rax
     mov                  rcx,       qword[rbp-304]
     mov       qword[rbp-600],                  rcx
     mov                  rdx,       qword[rbp-584]
     mov                  rax,       qword[rbp-600]
    imul                  rax,           qword[rdx]
     mov       qword[rbp-600],                  rax
     mov                  rcx,       qword[rbp-600]
     cmp                  rcx,            qword[@N]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-608],                  rax
     cmp       qword[rbp-608],                    0
@main.28.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-616],                  rax
     mov                  rcx,       qword[rbp-616]
     mov       qword[rbp-624],                  rcx
     cmp       qword[rbp-624],                    1
je	@main.19.ForBody
jne	@main.21.ForExit
@main.21.ForExit:
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-632],                  rcx
     mov                  rcx,       qword[rbp-304]
     mov       qword[rbp-640],                  rcx
     shl       qword[rbp-640],                    3
     mov                  rax,       qword[rbp-632]
     add                  rax,       qword[rbp-640]
     mov       qword[rbp-632],                  rax
     mov                  rdx,       qword[rbp-632]
     mov                  rdi,           qword[rdx]
call	toString
     mov       qword[rbp-664],                  rax
     mov                  rdi,       qword[rbp-664]
call	println
jmp	@main.8.ForIter
@main.8.ForIter:
     add        qword[rbp-72],                    1
     mov                  rcx,        qword[rbp-72]
     mov       qword[rbp-680],                  rcx
jmp	@main.9.ForBody
@main.11.ForExit:
     mov                  rax,                    0
jmp	@main.2.exit
@main.2.exit:
     add                  rsp,                  688
     pop                  rbp
     ret


 section                 .bss
@check   resq 1
@M   resq 1
@N   resq 1


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


__size__:
		mov     rax, qword[rdi - 8H]
		ret


ALIGN   16

__substring__:
        push    r13
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

