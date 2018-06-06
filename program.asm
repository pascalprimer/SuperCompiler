  global                 main
  extern	malloc


 section                .text
foo:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  r13
    push                  rbx
@foo.1.enter:
     mov                  r12,                  rdi
     mov                  r13,                  rsi
     mov                   r8,                  rdx
     mov                  rsi,                  r12
    imul                  rsi,                 1000
     mov                  rbx,                  r13
    imul                  rbx,                   10
     add                  rsi,                  rbx
     add                  rsi,                   r8
     mov                  rdi,                  rsi
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
call	println
     pop                   r8
     cmp                  r12,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@foo.4.IfTrue
	jmp	@foo.3.IfFalse
@foo.4.IfTrue:
	jmp	@foo.2.exit
	jmp	@foo.5.IfExit
@foo.3.IfFalse:
@foo.5.IfExit:
     mov                  rsi,                  r13
     mov                  r13,                   r8
     mov                   r8,                  rsi
     mov                  rdi,                    1
     mov                  rsi,                  r13
     mov                  rdx,                   r8
    push                   r8
call	foo
     pop                   r8
     mov                  rsi,                  r12
    imul                  rsi,                 1000
     mov                  rbx,                  r13
    imul                  rbx,                   10
     add                  rsi,                  rbx
     add                  rsi,                   r8
     mov                  rdi,                  rsi
    push                  rsi
call	toString
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
@foo.2.exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     pop                  rbp
     ret
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
@__global_declaration.1.enter:
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                  128
    push                  rbx
    push                  r12
    push                  r14
    push                  r13
    push                  r15
@main.1.enter:
     mov                  rsi,                 3100
     mov                  rdi,                  rsi
    push                  rsi
call	toString
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,                 3100
     mov                  rdi,                  rsi
    push                  rsi
call	toString
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  r11,                    7
     mov         qword[rbp-8],                    5
     mov        qword[rbp-16],                    3
     mov                  rsi,                  r11
    imul                  rsi,                 1000
     mov                  rbx,         qword[rbp-8]
    imul                  rbx,                   10
     add                  rsi,                  rbx
     add                  rsi,        qword[rbp-16]
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
     cmp                  r11,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.13.@foo.4.IfTrue
	jmp	@main.14.@foo.3.IfFalse
@main.13.@foo.4.IfTrue:
	jmp	@main.11.@foo.2.exit
	jmp	@main.15.@foo.5.IfExit
@main.14.@foo.3.IfFalse:
@main.15.@foo.5.IfExit:
     mov                  rsi,         qword[rbp-8]
     mov                  rcx,        qword[rbp-16]
     mov         qword[rbp-8],                  rcx
     mov        qword[rbp-16],                  rsi
     mov                  r15,                    1
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-24],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-32],                  rcx
     mov                  rsi,                  r15
    imul                  rsi,                 1000
     mov                  rbx,        qword[rbp-24]
    imul                  rbx,                   10
     add                  rsi,                  rbx
     add                  rsi,        qword[rbp-32]
     mov                  rdi,                  rsi
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r11
call	println
     pop                  r11
     cmp                  r15,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.18.@foo.4.IfTrue
	jmp	@main.19.@foo.3.IfFalse
@main.18.@foo.4.IfTrue:
	jmp	@main.16.@foo.2.exit
	jmp	@main.20.@foo.5.IfExit
@main.19.@foo.3.IfFalse:
@main.20.@foo.5.IfExit:
     mov                  rsi,        qword[rbp-24]
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-24],                  rcx
     mov        qword[rbp-32],                  rsi
     mov                  r10,                    1
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-40],                  rcx
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-48],                  rcx
     mov                  rsi,                  r10
    imul                  rsi,                 1000
     mov                  rbx,        qword[rbp-40]
    imul                  rbx,                   10
     add                  rsi,                  rbx
     add                  rsi,        qword[rbp-48]
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                  rsi
call	toString
     pop                  rsi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     cmp                  r10,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.23.@foo.4.IfTrue
	jmp	@main.24.@foo.3.IfFalse
@main.23.@foo.4.IfTrue:
	jmp	@main.21.@foo.2.exit
	jmp	@main.25.@foo.5.IfExit
@main.24.@foo.3.IfFalse:
@main.25.@foo.5.IfExit:
     mov                  rsi,        qword[rbp-40]
     mov                  rcx,        qword[rbp-48]
     mov        qword[rbp-40],                  rcx
     mov        qword[rbp-48],                  rsi
     mov                  r14,                    1
     mov                  rcx,        qword[rbp-40]
     mov        qword[rbp-56],                  rcx
     mov                  rcx,        qword[rbp-48]
     mov        qword[rbp-64],                  rcx
     mov                  rsi,                  r14
    imul                  rsi,                 1000
     mov                  rbx,        qword[rbp-56]
    imul                  rbx,                   10
     add                  rsi,                  rbx
     add                  rsi,        qword[rbp-64]
     mov                  rdi,                  rsi
    push                  rsi
    push                  r10
    push                  r11
call	toString
     pop                  r11
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     cmp                  r14,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.28.@foo.4.IfTrue
	jmp	@main.29.@foo.3.IfFalse
@main.28.@foo.4.IfTrue:
	jmp	@main.26.@foo.2.exit
	jmp	@main.30.@foo.5.IfExit
@main.29.@foo.3.IfFalse:
@main.30.@foo.5.IfExit:
     mov                  rsi,        qword[rbp-56]
     mov                  rcx,        qword[rbp-64]
     mov        qword[rbp-56],                  rcx
     mov        qword[rbp-64],                  rsi
     mov                   r9,                    1
     mov                  rcx,        qword[rbp-56]
     mov        qword[rbp-72],                  rcx
     mov                  rcx,        qword[rbp-64]
     mov        qword[rbp-80],                  rcx
     mov                  rsi,                   r9
    imul                  rsi,                 1000
     mov                  rbx,        qword[rbp-72]
    imul                  rbx,                   10
     add                  rsi,                  rbx
     add                  rsi,        qword[rbp-80]
     mov                  rdi,                  rsi
    push                  rsi
    push                   r9
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
    push                  r10
    push                  r11
call	println
     pop                  r11
     pop                  r10
     pop                   r9
     cmp                   r9,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.33.@foo.4.IfTrue
	jmp	@main.34.@foo.3.IfFalse
@main.33.@foo.4.IfTrue:
	jmp	@main.31.@foo.2.exit
	jmp	@main.35.@foo.5.IfExit
@main.34.@foo.3.IfFalse:
@main.35.@foo.5.IfExit:
     mov                  rsi,        qword[rbp-72]
     mov                  rcx,        qword[rbp-80]
     mov        qword[rbp-72],                  rcx
     mov        qword[rbp-80],                  rsi
     mov                  r13,                    1
     mov                  rcx,        qword[rbp-72]
     mov        qword[rbp-88],                  rcx
     mov                  rcx,        qword[rbp-80]
     mov        qword[rbp-96],                  rcx
     mov                  rsi,                  r13
    imul                  rsi,                 1000
     mov                  rbx,        qword[rbp-88]
    imul                  rbx,                   10
     add                  rsi,                  rbx
     add                  rsi,        qword[rbp-96]
     mov                  rdi,                  rsi
    push                  rsi
    push                   r9
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
    push                  r10
    push                  r11
call	println
     pop                  r11
     pop                  r10
     pop                   r9
     cmp                  r13,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.38.@foo.4.IfTrue
	jmp	@main.39.@foo.3.IfFalse
@main.38.@foo.4.IfTrue:
	jmp	@main.36.@foo.2.exit
	jmp	@main.40.@foo.5.IfExit
@main.39.@foo.3.IfFalse:
@main.40.@foo.5.IfExit:
     mov                  rsi,        qword[rbp-88]
     mov                  rcx,        qword[rbp-96]
     mov        qword[rbp-88],                  rcx
     mov        qword[rbp-96],                  rsi
     mov                   r8,                    1
     mov                  rcx,        qword[rbp-88]
     mov       qword[rbp-104],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-112],                  rcx
     mov                  rsi,                   r8
    imul                  rsi,                 1000
     mov                  rbx,       qword[rbp-104]
    imul                  rbx,                   10
     add                  rsi,                  rbx
     add                  rsi,       qword[rbp-112]
     mov                  rdi,                  rsi
    push                   r9
    push                  rsi
    push                   r8
    push                  r10
    push                  r11
call	toString
     pop                  r11
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
    push                   r8
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     pop                   r8
     pop                   r9
     cmp                   r8,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.43.@foo.4.IfTrue
	jmp	@main.44.@foo.3.IfFalse
@main.43.@foo.4.IfTrue:
	jmp	@main.41.@foo.2.exit
	jmp	@main.45.@foo.5.IfExit
@main.44.@foo.3.IfFalse:
@main.45.@foo.5.IfExit:
     mov                  rsi,       qword[rbp-104]
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-104],                  rcx
     mov       qword[rbp-112],                  rsi
     mov                  r12,                    1
     mov                  rcx,       qword[rbp-104]
     mov       qword[rbp-120],                  rcx
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-128],                  rcx
     mov                  rsi,                  r12
    imul                  rsi,                 1000
     mov                  rbx,       qword[rbp-120]
    imul                  rbx,                   10
     add                  rsi,                  rbx
     add                  rsi,       qword[rbp-128]
     mov                  rdi,                  rsi
    push                   r9
    push                  rsi
    push                   r8
    push                  r10
    push                  r11
call	toString
     pop                  r11
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
    push                   r8
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     pop                   r8
     pop                   r9
     cmp                  r12,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.48.@foo.4.IfTrue
	jmp	@main.49.@foo.3.IfFalse
@main.48.@foo.4.IfTrue:
	jmp	@main.46.@foo.2.exit
	jmp	@main.50.@foo.5.IfExit
@main.49.@foo.3.IfFalse:
@main.50.@foo.5.IfExit:
     mov                  rsi,       qword[rbp-120]
     mov                  rcx,       qword[rbp-128]
     mov       qword[rbp-120],                  rcx
     mov       qword[rbp-128],                  rsi
     mov                  rdi,                    1
     mov                  rsi,       qword[rbp-120]
     mov                  rdx,       qword[rbp-128]
    push                   r9
    push                   r8
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	foo
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     pop                   r8
     pop                   r9
     mov                  rsi,                  r12
    imul                  rsi,                 1000
     mov                  rbx,       qword[rbp-120]
    imul                  rbx,                   10
     add                  rsi,                  rbx
     add                  rsi,       qword[rbp-128]
     mov                  rdi,                  rsi
    push                  rsi
    push                   r9
    push                   r8
    push                  r10
    push                  r11
call	toString
     pop                  r11
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
    push                   r8
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     pop                   r8
     pop                   r9
@main.46.@foo.2.exit:
     mov                  rsi,                   r8
    imul                  rsi,                 1000
     mov                  rbx,       qword[rbp-104]
    imul                  rbx,                   10
     add                  rsi,                  rbx
     add                  rsi,       qword[rbp-112]
     mov                  rdi,                  rsi
    push                  rsi
    push                   r9
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
    push                  r10
    push                  r11
call	println
     pop                  r11
     pop                  r10
     pop                   r9
@main.41.@foo.2.exit:
     mov                  rsi,                  r13
    imul                  rsi,                 1000
     mov                  rbx,        qword[rbp-88]
    imul                  rbx,                   10
     add                  rsi,                  rbx
     add                  rsi,        qword[rbp-96]
     mov                  rdi,                  rsi
    push                   r9
    push                  r10
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
    push                  r10
    push                  r11
call	println
     pop                  r11
     pop                  r10
     pop                   r9
@main.36.@foo.2.exit:
     mov                  rsi,                   r9
    imul                  rsi,                 1000
     mov                  rbx,        qword[rbp-72]
    imul                  rbx,                   10
     add                  rsi,                  rbx
     add                  rsi,        qword[rbp-80]
     mov                  rdi,                  rsi
    push                  rsi
    push                  r10
    push                  r11
call	toString
     pop                  r11
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  r11
     pop                  r10
@main.31.@foo.2.exit:
     mov                  rsi,                  r14
    imul                  rsi,                 1000
     mov                  rbx,        qword[rbp-56]
    imul                  rbx,                   10
     add                  rsi,                  rbx
     add                  rsi,        qword[rbp-64]
     mov                  rdi,                  rsi
    push                  rsi
    push                  r10
    push                  r11
call	toString
     pop                  r11
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  r11
     pop                  r10
@main.26.@foo.2.exit:
     mov                  rsi,                  r10
    imul                  rsi,                 1000
     mov                  rbx,        qword[rbp-40]
    imul                  rbx,                   10
     add                  rsi,                  rbx
     add                  rsi,        qword[rbp-48]
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
@main.21.@foo.2.exit:
     mov                  rsi,                  r15
    imul                  rsi,                 1000
     mov                  rbx,        qword[rbp-24]
    imul                  rbx,                   10
     add                  rsi,                  rbx
     add                  rsi,        qword[rbp-32]
     mov                  rdi,                  rsi
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r11
call	println
     pop                  r11
@main.16.@foo.2.exit:
     mov                  rsi,                  r11
    imul                  rsi,                 1000
     mov                  rbx,         qword[rbp-8]
    imul                  rbx,                   10
     add                  rsi,                  rbx
     add                  rsi,        qword[rbp-16]
     mov                  rdi,                  rsi
    push                  rsi
call	toString
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
@main.11.@foo.2.exit:
     mov                  rbx,                   10
     mov                  rsi,                   10
     add                  rbx,                    1
     shl                  rbx,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
     mov                  rdi,                  rbx
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rbx,                  rax
     mov           qword[rbx],                  rsi
     mov                  rbx,                    2
     mov                  rsi,                    2
     add                  rbx,                    1
     shl                  rbx,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     sub                  rsp,                    8
     mov                  rdi,                  rbx
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rbx,                  rax
     mov           qword[rbx],                  rsi
     mov                  rax,                    0
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     pop                  rbx
     add                  rsp,                  128
     pop                  rbp
     ret
cost_a_lot_of_time:
    push                  rbp
     mov                  rbp,                  rsp
@cost_a_lot_of_time.1.enter:
     mov                  rsi,                 3100
     mov                  rdi,                  rsi
    push                  rsi
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
call	println
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



