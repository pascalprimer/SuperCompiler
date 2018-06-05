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
     sub                  rsp,                  656
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
@main.1.enter:
     mov         qword[rbp-8],                   18
     mov        qword[rbp-16],                   12
     mov        qword[rbp-24],                    6
     mov                  rcx,        qword[rbp-16]
     cmp                  rcx,         qword[rbp-8]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.6.@tak.4.IfTrue
	jmp	@main.7.@tak.3.IfFalse
@main.6.@tak.4.IfTrue:
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                    1
     mov        qword[rbp-32],                  rsi
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-40],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-48],                  rcx
     mov                  rcx,        qword[rbp-40]
     cmp                  rcx,        qword[rbp-32]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.11.@tak.4.IfTrue
	jmp	@main.12.@tak.3.IfFalse
@main.11.@tak.4.IfTrue:
     mov                  rsi,        qword[rbp-32]
     sub                  rsi,                    1
     mov        qword[rbp-56],                  rsi
     mov                  rcx,        qword[rbp-40]
     mov        qword[rbp-64],                  rcx
     mov                  rcx,        qword[rbp-48]
     mov        qword[rbp-72],                  rcx
     mov                  rcx,        qword[rbp-64]
     cmp                  rcx,        qword[rbp-56]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.31.@tak.4.IfTrue
	jmp	@main.32.@tak.3.IfFalse
@main.31.@tak.4.IfTrue:
     mov                  rsi,        qword[rbp-56]
     sub                  rsi,                    1
     mov        qword[rbp-80],                  rsi
     mov                  rcx,        qword[rbp-64]
     mov        qword[rbp-88],                  rcx
     mov                  rcx,        qword[rbp-72]
     mov        qword[rbp-96],                  rcx
     mov                  rcx,        qword[rbp-88]
     cmp                  rcx,        qword[rbp-80]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.111.@tak.4.IfTrue
	jmp	@main.112.@tak.3.IfFalse
@main.111.@tak.4.IfTrue:
     mov                  rsi,        qword[rbp-80]
     sub                  rsi,                    1
     mov       qword[rbp-104],                  rsi
     mov                  rcx,        qword[rbp-88]
     mov       qword[rbp-112],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-120],                  rcx
     mov                  rcx,       qword[rbp-112]
     cmp                  rcx,       qword[rbp-104]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.246.@tak.4.IfTrue
	jmp	@main.247.@tak.3.IfFalse
@main.246.@tak.4.IfTrue:
     mov                  rsi,       qword[rbp-104]
     sub                  rsi,                    1
     mov       qword[rbp-128],                  rsi
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-136],                  rcx
     mov                  rcx,       qword[rbp-120]
     mov       qword[rbp-144],                  rcx
     mov                  rcx,       qword[rbp-136]
     cmp                  rcx,       qword[rbp-128]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.381.@tak.4.IfTrue
	jmp	@main.382.@tak.3.IfFalse
@main.381.@tak.4.IfTrue:
     mov                  rsi,       qword[rbp-128]
     sub                  rsi,                    1
     mov                  r15,                  rsi
     mov                  r11,       qword[rbp-136]
     mov                  rcx,       qword[rbp-144]
     mov       qword[rbp-152],                  rcx
     cmp                  r11,                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.511.@tak.4.IfTrue
	jmp	@main.512.@tak.3.IfFalse
@main.511.@tak.4.IfTrue:
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-152]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.641.@tak.4.IfTrue
	jmp	@main.642.@tak.3.IfFalse
@main.641.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                  rsi
    push                   r9
call	tak
     pop                   r9
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r11
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  r11
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r11
    push                   r8
    push                  rsi
call	tak
     pop                  rsi
     pop                   r8
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.639.@tak.2.exit
	jmp	@main.643.@tak.5.IfExit
@main.642.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.639.@tak.2.exit
@main.643.@tak.5.IfExit:
@main.639.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-152]
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.646.@tak.4.IfTrue
	jmp	@main.647.@tak.3.IfFalse
@main.646.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  r11
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     pop                  r11
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                  r11
    push                  rsi
    push                   r8
    push                  r10
call	tak
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                  r11
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r11
    push                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
    push                  r10
call	tak
     pop                  r10
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.644.@tak.2.exit
	jmp	@main.648.@tak.5.IfExit
@main.647.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.644.@tak.2.exit
@main.648.@tak.5.IfExit:
@main.644.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-152]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.651.@tak.4.IfTrue
	jmp	@main.652.@tak.3.IfFalse
@main.651.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
    push                  r10
call	tak
     pop                  r10
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r8
    push                   r9
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
    push                  r10
call	tak
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.649.@tak.2.exit
	jmp	@main.653.@tak.5.IfExit
@main.652.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.649.@tak.2.exit
@main.653.@tak.5.IfExit:
@main.649.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.656.@tak.4.IfTrue
	jmp	@main.657.@tak.3.IfFalse
@main.656.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r8
    push                   r9
call	tak
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.654.@tak.2.exit
	jmp	@main.658.@tak.5.IfExit
@main.657.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.654.@tak.2.exit
@main.658.@tak.5.IfExit:
@main.654.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.509.@tak.2.exit
	jmp	@main.513.@tak.5.IfExit
@main.512.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-152]
	jmp	@main.509.@tak.2.exit
@main.513.@tak.5.IfExit:
@main.509.@tak.2.exit:
     mov       qword[rbp-160],                  rsi
     mov                  rsi,       qword[rbp-136]
     sub                  rsi,                    1
     mov                  r15,                  rsi
     mov                  r11,       qword[rbp-144]
     mov                  rcx,       qword[rbp-128]
     mov       qword[rbp-168],                  rcx
     cmp                  r11,                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.516.@tak.4.IfTrue
	jmp	@main.517.@tak.3.IfFalse
@main.516.@tak.4.IfTrue:
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-168]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.661.@tak.4.IfTrue
	jmp	@main.662.@tak.3.IfFalse
@main.661.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                   r9
    push                  rsi
call	tak
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r11
    push                   r8
    push                  rsi
call	tak
     pop                  rsi
     pop                   r8
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.659.@tak.2.exit
	jmp	@main.663.@tak.5.IfExit
@main.662.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.659.@tak.2.exit
@main.663.@tak.5.IfExit:
@main.659.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-168]
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.666.@tak.4.IfTrue
	jmp	@main.667.@tak.3.IfFalse
@main.666.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                  r10
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
call	tak
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r11
    push                  r10
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
    push                  r10
call	tak
     pop                  r10
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.664.@tak.2.exit
	jmp	@main.668.@tak.5.IfExit
@main.667.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.664.@tak.2.exit
@main.668.@tak.5.IfExit:
@main.664.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-168]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.671.@tak.4.IfTrue
	jmp	@main.672.@tak.3.IfFalse
@main.671.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  r10
    push                  rsi
call	tak
     pop                  rsi
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r9
    push                  r10
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  r10
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                  r10
    push                   r8
call	tak
     pop                   r8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.669.@tak.2.exit
	jmp	@main.673.@tak.5.IfExit
@main.672.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.669.@tak.2.exit
@main.673.@tak.5.IfExit:
@main.669.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.676.@tak.4.IfTrue
	jmp	@main.677.@tak.3.IfFalse
@main.676.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r8
    push                   r9
call	tak
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.674.@tak.2.exit
	jmp	@main.678.@tak.5.IfExit
@main.677.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.674.@tak.2.exit
@main.678.@tak.5.IfExit:
@main.674.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.514.@tak.2.exit
	jmp	@main.518.@tak.5.IfExit
@main.517.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-168]
	jmp	@main.514.@tak.2.exit
@main.518.@tak.5.IfExit:
@main.514.@tak.2.exit:
     mov       qword[rbp-176],                  rsi
     mov                  rsi,       qword[rbp-144]
     sub                  rsi,                    1
     mov                  r15,                  rsi
     mov                  r11,       qword[rbp-128]
     mov                  rcx,       qword[rbp-136]
     mov       qword[rbp-184],                  rcx
     cmp                  r11,                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.521.@tak.4.IfTrue
	jmp	@main.522.@tak.3.IfFalse
@main.521.@tak.4.IfTrue:
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-184]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.681.@tak.4.IfTrue
	jmp	@main.682.@tak.3.IfFalse
@main.681.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                   r9
    push                  rsi
call	tak
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r11
    push                   r8
    push                  rsi
call	tak
     pop                  rsi
     pop                   r8
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.679.@tak.2.exit
	jmp	@main.683.@tak.5.IfExit
@main.682.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.679.@tak.2.exit
@main.683.@tak.5.IfExit:
@main.679.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-184]
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.686.@tak.4.IfTrue
	jmp	@main.687.@tak.3.IfFalse
@main.686.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                  rsi
    push                   r9
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                   r9
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
    push                   r9
    push                   r8
    push                  r10
call	tak
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r11
    push                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
    push                  r10
call	tak
     pop                  r10
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.684.@tak.2.exit
	jmp	@main.688.@tak.5.IfExit
@main.687.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.684.@tak.2.exit
@main.688.@tak.5.IfExit:
@main.684.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-184]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.691.@tak.4.IfTrue
	jmp	@main.692.@tak.3.IfFalse
@main.691.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
    push                  r10
call	tak
     pop                  r10
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
    push                  r10
call	tak
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.689.@tak.2.exit
	jmp	@main.693.@tak.5.IfExit
@main.692.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.689.@tak.2.exit
@main.693.@tak.5.IfExit:
@main.689.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.696.@tak.4.IfTrue
	jmp	@main.697.@tak.3.IfFalse
@main.696.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r9
    push                   r8
call	tak
     pop                   r8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.694.@tak.2.exit
	jmp	@main.698.@tak.5.IfExit
@main.697.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.694.@tak.2.exit
@main.698.@tak.5.IfExit:
@main.694.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.519.@tak.2.exit
	jmp	@main.523.@tak.5.IfExit
@main.522.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-184]
	jmp	@main.519.@tak.2.exit
@main.523.@tak.5.IfExit:
@main.519.@tak.2.exit:
     mov                  r15,       qword[rbp-160]
     mov                  r11,       qword[rbp-176]
     mov       qword[rbp-192],                  rsi
     cmp                  r11,                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.526.@tak.4.IfTrue
	jmp	@main.527.@tak.3.IfFalse
@main.526.@tak.4.IfTrue:
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-192]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.701.@tak.4.IfTrue
	jmp	@main.702.@tak.3.IfFalse
@main.701.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                   r9
    push                  rsi
call	tak
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
    push                   r9
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                  r11
    push                   r8
call	tak
     pop                   r8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.699.@tak.2.exit
	jmp	@main.703.@tak.5.IfExit
@main.702.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.699.@tak.2.exit
@main.703.@tak.5.IfExit:
@main.699.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-192]
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.706.@tak.4.IfTrue
	jmp	@main.707.@tak.3.IfFalse
@main.706.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
    push                  r11
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                   r8
    push                  r11
    push                  r10
    push                  rsi
call	tak
     pop                  rsi
     pop                  r10
     pop                  r11
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  r11
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  r10
    push                  rsi
call	tak
     pop                  rsi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.704.@tak.2.exit
	jmp	@main.708.@tak.5.IfExit
@main.707.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.704.@tak.2.exit
@main.708.@tak.5.IfExit:
@main.704.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-192]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.711.@tak.4.IfTrue
	jmp	@main.712.@tak.3.IfFalse
@main.711.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                   r9
    push                  rsi
call	tak
     pop                  rsi
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r10
    push                   r8
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     pop                   r8
     pop                  r10
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r10
    push                   r8
    push                  rsi
call	tak
     pop                  rsi
     pop                   r8
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.709.@tak.2.exit
	jmp	@main.713.@tak.5.IfExit
@main.712.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.709.@tak.2.exit
@main.713.@tak.5.IfExit:
@main.709.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.716.@tak.4.IfTrue
	jmp	@main.717.@tak.3.IfFalse
@main.716.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    push                   r9
    push                  rsi
call	tak
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.714.@tak.2.exit
	jmp	@main.718.@tak.5.IfExit
@main.717.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.714.@tak.2.exit
@main.718.@tak.5.IfExit:
@main.714.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.524.@tak.2.exit
	jmp	@main.528.@tak.5.IfExit
@main.527.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-192]
	jmp	@main.524.@tak.2.exit
@main.528.@tak.5.IfExit:
@main.524.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.379.@tak.2.exit
	jmp	@main.383.@tak.5.IfExit
@main.382.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-144]
	jmp	@main.379.@tak.2.exit
@main.383.@tak.5.IfExit:
@main.379.@tak.2.exit:
     mov       qword[rbp-200],                  rsi
     mov                  rsi,       qword[rbp-112]
     sub                  rsi,                    1
     mov       qword[rbp-208],                  rsi
     mov                  rcx,       qword[rbp-120]
     mov       qword[rbp-216],                  rcx
     mov                  rcx,       qword[rbp-104]
     mov       qword[rbp-224],                  rcx
     mov                  rcx,       qword[rbp-216]
     cmp                  rcx,       qword[rbp-208]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.386.@tak.4.IfTrue
	jmp	@main.387.@tak.3.IfFalse
@main.386.@tak.4.IfTrue:
     mov                  rsi,       qword[rbp-208]
     sub                  rsi,                    1
     mov                  r15,                  rsi
     mov                  r11,       qword[rbp-216]
     mov                  rcx,       qword[rbp-224]
     mov       qword[rbp-232],                  rcx
     cmp                  r11,                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.531.@tak.4.IfTrue
	jmp	@main.532.@tak.3.IfFalse
@main.531.@tak.4.IfTrue:
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-232]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.721.@tak.4.IfTrue
	jmp	@main.722.@tak.3.IfFalse
@main.721.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
    push                  r11
call	tak
     pop                  r11
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r9
    push                  r11
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  r11
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r11
    push                   r8
    push                  rsi
call	tak
     pop                  rsi
     pop                   r8
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.719.@tak.2.exit
	jmp	@main.723.@tak.5.IfExit
@main.722.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.719.@tak.2.exit
@main.723.@tak.5.IfExit:
@main.719.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-232]
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.726.@tak.4.IfTrue
	jmp	@main.727.@tak.3.IfFalse
@main.726.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                  r11
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r10
    push                  r11
    push                  rsi
    push                   r9
    push                   r8
call	tak
     pop                   r8
     pop                   r9
     pop                  rsi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                  r10
    push                  r11
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  r11
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
    push                  r10
call	tak
     pop                  r10
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.724.@tak.2.exit
	jmp	@main.728.@tak.5.IfExit
@main.727.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.724.@tak.2.exit
@main.728.@tak.5.IfExit:
@main.724.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-232]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.731.@tak.4.IfTrue
	jmp	@main.732.@tak.3.IfFalse
@main.731.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                   r9
    push                  rsi
call	tak
     pop                  rsi
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                  r10
    push                   r8
call	tak
     pop                   r8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.729.@tak.2.exit
	jmp	@main.733.@tak.5.IfExit
@main.732.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.729.@tak.2.exit
@main.733.@tak.5.IfExit:
@main.729.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.736.@tak.4.IfTrue
	jmp	@main.737.@tak.3.IfFalse
@main.736.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    push                   r9
    push                  rsi
call	tak
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.734.@tak.2.exit
	jmp	@main.738.@tak.5.IfExit
@main.737.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.734.@tak.2.exit
@main.738.@tak.5.IfExit:
@main.734.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.529.@tak.2.exit
	jmp	@main.533.@tak.5.IfExit
@main.532.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-232]
	jmp	@main.529.@tak.2.exit
@main.533.@tak.5.IfExit:
@main.529.@tak.2.exit:
     mov       qword[rbp-240],                  rsi
     mov                  rsi,       qword[rbp-216]
     sub                  rsi,                    1
     mov                  r15,                  rsi
     mov                  r11,       qword[rbp-224]
     mov                  rcx,       qword[rbp-208]
     mov       qword[rbp-248],                  rcx
     cmp                  r11,                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.536.@tak.4.IfTrue
	jmp	@main.537.@tak.3.IfFalse
@main.536.@tak.4.IfTrue:
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-248]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.741.@tak.4.IfTrue
	jmp	@main.742.@tak.3.IfFalse
@main.741.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
    push                  r11
call	tak
     pop                  r11
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    push                  rsi
    push                   r9
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  rsi
    push                  r11
call	tak
     pop                  r11
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.739.@tak.2.exit
	jmp	@main.743.@tak.5.IfExit
@main.742.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.739.@tak.2.exit
@main.743.@tak.5.IfExit:
@main.739.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-248]
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.746.@tak.4.IfTrue
	jmp	@main.747.@tak.3.IfFalse
@main.746.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                   r9
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    push                  r10
    push                  rsi
    push                   r9
    push                  r11
call	tak
     pop                  r11
     pop                   r9
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  r10
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
    push                  r11
call	tak
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.744.@tak.2.exit
	jmp	@main.748.@tak.5.IfExit
@main.747.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.744.@tak.2.exit
@main.748.@tak.5.IfExit:
@main.744.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-248]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.751.@tak.4.IfTrue
	jmp	@main.752.@tak.3.IfFalse
@main.751.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                  rsi
    push                   r9
call	tak
     pop                   r9
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r10
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  r10
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r10
    push                   r8
    push                  rsi
call	tak
     pop                  rsi
     pop                   r8
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.749.@tak.2.exit
	jmp	@main.753.@tak.5.IfExit
@main.752.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.749.@tak.2.exit
@main.753.@tak.5.IfExit:
@main.749.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.756.@tak.4.IfTrue
	jmp	@main.757.@tak.3.IfFalse
@main.756.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r9
    push                   r8
call	tak
     pop                   r8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.754.@tak.2.exit
	jmp	@main.758.@tak.5.IfExit
@main.757.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.754.@tak.2.exit
@main.758.@tak.5.IfExit:
@main.754.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.534.@tak.2.exit
	jmp	@main.538.@tak.5.IfExit
@main.537.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-248]
	jmp	@main.534.@tak.2.exit
@main.538.@tak.5.IfExit:
@main.534.@tak.2.exit:
     mov       qword[rbp-256],                  rsi
     mov                  rsi,       qword[rbp-224]
     sub                  rsi,                    1
     mov                  r10,                  rsi
     mov                  r15,       qword[rbp-208]
     mov                  r11,       qword[rbp-216]
     cmp                  r15,                  r10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.541.@tak.4.IfTrue
	jmp	@main.542.@tak.3.IfFalse
@main.541.@tak.4.IfTrue:
     mov                  rsi,                  r10
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.761.@tak.4.IfTrue
	jmp	@main.762.@tak.3.IfFalse
@main.761.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                   r9
    push                  r11
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r10
    push                   r9
    push                  r11
    push                  rsi
    push                   r8
call	tak
     pop                   r8
     pop                  rsi
     pop                  r11
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r10
    push                  r11
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
    push                  r11
call	tak
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.759.@tak.2.exit
	jmp	@main.763.@tak.5.IfExit
@main.762.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.759.@tak.2.exit
@main.763.@tak.5.IfExit:
@main.759.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,                  r10
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.766.@tak.4.IfTrue
	jmp	@main.767.@tak.3.IfFalse
@main.766.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                  rsi
    push                   r9
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                   r9
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r10
    push                   r9
    push                  r11
    push                   r8
    push                  rsi
call	tak
     pop                  rsi
     pop                   r8
     pop                  r11
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r10
    push                  r11
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
    push                  r11
call	tak
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.764.@tak.2.exit
	jmp	@main.768.@tak.5.IfExit
@main.767.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.764.@tak.2.exit
@main.768.@tak.5.IfExit:
@main.764.@tak.2.exit:
     mov                  r12,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r10
     mov                  rdx,                  r15
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                  r14
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.539.@tak.2.exit
	jmp	@main.543.@tak.5.IfExit
@main.542.@tak.3.IfFalse:
     mov                  rsi,                  r11
	jmp	@main.539.@tak.2.exit
@main.543.@tak.5.IfExit:
@main.539.@tak.2.exit:
     mov                  rbx,       qword[rbp-240]
     mov                  r13,       qword[rbp-256]
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.546.@tak.4.IfTrue
	jmp	@main.547.@tak.3.IfFalse
@main.546.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                   r8
    push                  rsi
call	tak
     pop                  rsi
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.544.@tak.2.exit
	jmp	@main.548.@tak.5.IfExit
@main.547.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.544.@tak.2.exit
@main.548.@tak.5.IfExit:
@main.544.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.384.@tak.2.exit
	jmp	@main.388.@tak.5.IfExit
@main.387.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-224]
	jmp	@main.384.@tak.2.exit
@main.388.@tak.5.IfExit:
@main.384.@tak.2.exit:
     mov       qword[rbp-264],                  rsi
     mov                  rsi,       qword[rbp-120]
     sub                  rsi,                    1
     mov                  r15,                  rsi
     mov                  r11,       qword[rbp-104]
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-272],                  rcx
     cmp                  r11,                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.391.@tak.4.IfTrue
	jmp	@main.392.@tak.3.IfFalse
@main.391.@tak.4.IfTrue:
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-272]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.551.@tak.4.IfTrue
	jmp	@main.552.@tak.3.IfFalse
@main.551.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  r11
    push                  rsi
call	tak
     pop                  rsi
     pop                  r11
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                  rsi
    push                   r8
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  r11
    push                  rsi
call	tak
     pop                  rsi
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.549.@tak.2.exit
	jmp	@main.553.@tak.5.IfExit
@main.552.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.549.@tak.2.exit
@main.553.@tak.5.IfExit:
@main.549.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-272]
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.556.@tak.4.IfTrue
	jmp	@main.557.@tak.3.IfFalse
@main.556.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  r10
    push                  r11
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r9
    push                  r10
    push                  r11
    push                   r8
call	tak
     pop                   r8
     pop                  r11
     pop                  r10
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r10
    push                  rsi
    push                  r11
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  r11
    push                  rsi
call	tak
     pop                  rsi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.554.@tak.2.exit
	jmp	@main.558.@tak.5.IfExit
@main.557.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.554.@tak.2.exit
@main.558.@tak.5.IfExit:
@main.554.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-272]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.561.@tak.4.IfTrue
	jmp	@main.562.@tak.3.IfFalse
@main.561.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                  rsi
    push                   r9
call	tak
     pop                   r9
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r8
    push                  r10
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
    push                  r10
call	tak
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.559.@tak.2.exit
	jmp	@main.563.@tak.5.IfExit
@main.562.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.559.@tak.2.exit
@main.563.@tak.5.IfExit:
@main.559.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.566.@tak.4.IfTrue
	jmp	@main.567.@tak.3.IfFalse
@main.566.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    push                  rsi
    push                   r9
call	tak
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.564.@tak.2.exit
	jmp	@main.568.@tak.5.IfExit
@main.567.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.564.@tak.2.exit
@main.568.@tak.5.IfExit:
@main.564.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.389.@tak.2.exit
	jmp	@main.393.@tak.5.IfExit
@main.392.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-272]
	jmp	@main.389.@tak.2.exit
@main.393.@tak.5.IfExit:
@main.389.@tak.2.exit:
     mov                  r15,       qword[rbp-200]
     mov                  r11,       qword[rbp-264]
     mov       qword[rbp-280],                  rsi
     cmp                  r11,                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.396.@tak.4.IfTrue
	jmp	@main.397.@tak.3.IfFalse
@main.396.@tak.4.IfTrue:
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-280]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.571.@tak.4.IfTrue
	jmp	@main.572.@tak.3.IfFalse
@main.571.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                  rsi
    push                   r9
call	tak
     pop                   r9
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    push                  r11
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  r11
    push                  rsi
call	tak
     pop                  rsi
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.569.@tak.2.exit
	jmp	@main.573.@tak.5.IfExit
@main.572.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.569.@tak.2.exit
@main.573.@tak.5.IfExit:
@main.569.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-280]
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.576.@tak.4.IfTrue
	jmp	@main.577.@tak.3.IfFalse
@main.576.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                  r11
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r10
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
call	tak
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r10
    push                  r11
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  r11
    push                  rsi
call	tak
     pop                  rsi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.574.@tak.2.exit
	jmp	@main.578.@tak.5.IfExit
@main.577.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.574.@tak.2.exit
@main.578.@tak.5.IfExit:
@main.574.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-280]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.581.@tak.4.IfTrue
	jmp	@main.582.@tak.3.IfFalse
@main.581.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                  rsi
    push                   r9
call	tak
     pop                   r9
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r10
    push                  rsi
    push                   r8
call	tak
     pop                   r8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.579.@tak.2.exit
	jmp	@main.583.@tak.5.IfExit
@main.582.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.579.@tak.2.exit
@main.583.@tak.5.IfExit:
@main.579.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.586.@tak.4.IfTrue
	jmp	@main.587.@tak.3.IfFalse
@main.586.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    push                  rsi
    push                   r9
call	tak
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.584.@tak.2.exit
	jmp	@main.588.@tak.5.IfExit
@main.587.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.584.@tak.2.exit
@main.588.@tak.5.IfExit:
@main.584.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.394.@tak.2.exit
	jmp	@main.398.@tak.5.IfExit
@main.397.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-280]
	jmp	@main.394.@tak.2.exit
@main.398.@tak.5.IfExit:
@main.394.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.244.@tak.2.exit
	jmp	@main.248.@tak.5.IfExit
@main.247.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-120]
	jmp	@main.244.@tak.2.exit
@main.248.@tak.5.IfExit:
@main.244.@tak.2.exit:
     mov       qword[rbp-288],                  rsi
     mov                  rsi,        qword[rbp-88]
     sub                  rsi,                    1
     mov       qword[rbp-296],                  rsi
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-304],                  rcx
     mov                  rcx,        qword[rbp-80]
     mov       qword[rbp-312],                  rcx
     mov                  rcx,       qword[rbp-304]
     cmp                  rcx,       qword[rbp-296]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.251.@tak.4.IfTrue
	jmp	@main.252.@tak.3.IfFalse
@main.251.@tak.4.IfTrue:
     mov                  rsi,       qword[rbp-296]
     sub                  rsi,                    1
     mov                  r15,                  rsi
     mov                  r11,       qword[rbp-304]
     mov                  rcx,       qword[rbp-312]
     mov       qword[rbp-320],                  rcx
     cmp                  r11,                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.401.@tak.4.IfTrue
	jmp	@main.402.@tak.3.IfFalse
@main.401.@tak.4.IfTrue:
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-320]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.591.@tak.4.IfTrue
	jmp	@main.592.@tak.3.IfFalse
@main.591.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
    push                  r11
call	tak
     pop                  r11
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r9
    push                  r11
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  r11
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                  r11
    push                   r8
call	tak
     pop                   r8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.589.@tak.2.exit
	jmp	@main.593.@tak.5.IfExit
@main.592.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.589.@tak.2.exit
@main.593.@tak.5.IfExit:
@main.589.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-320]
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.596.@tak.4.IfTrue
	jmp	@main.597.@tak.3.IfFalse
@main.596.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                   r9
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
    push                   r8
    push                   r9
    push                  r11
call	tak
     pop                  r11
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                  r10
    push                   r8
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                   r8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
    push                  r11
call	tak
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.594.@tak.2.exit
	jmp	@main.598.@tak.5.IfExit
@main.597.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.594.@tak.2.exit
@main.598.@tak.5.IfExit:
@main.594.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-320]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.601.@tak.4.IfTrue
	jmp	@main.602.@tak.3.IfFalse
@main.601.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                  rsi
    push                   r9
call	tak
     pop                   r9
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                  r10
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r10
    push                   r8
    push                  rsi
call	tak
     pop                  rsi
     pop                   r8
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.599.@tak.2.exit
	jmp	@main.603.@tak.5.IfExit
@main.602.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.599.@tak.2.exit
@main.603.@tak.5.IfExit:
@main.599.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.606.@tak.4.IfTrue
	jmp	@main.607.@tak.3.IfFalse
@main.606.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r8
    push                   r9
call	tak
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.604.@tak.2.exit
	jmp	@main.608.@tak.5.IfExit
@main.607.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.604.@tak.2.exit
@main.608.@tak.5.IfExit:
@main.604.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.399.@tak.2.exit
	jmp	@main.403.@tak.5.IfExit
@main.402.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-320]
	jmp	@main.399.@tak.2.exit
@main.403.@tak.5.IfExit:
@main.399.@tak.2.exit:
     mov       qword[rbp-328],                  rsi
     mov                  rsi,       qword[rbp-304]
     sub                  rsi,                    1
     mov                  r15,                  rsi
     mov                  r11,       qword[rbp-312]
     mov                  rcx,       qword[rbp-296]
     mov       qword[rbp-336],                  rcx
     cmp                  r11,                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.406.@tak.4.IfTrue
	jmp	@main.407.@tak.3.IfFalse
@main.406.@tak.4.IfTrue:
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-336]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.611.@tak.4.IfTrue
	jmp	@main.612.@tak.3.IfFalse
@main.611.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                   r9
    push                  rsi
call	tak
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
    push                   r9
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r11
    push                   r8
    push                  rsi
call	tak
     pop                  rsi
     pop                   r8
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.609.@tak.2.exit
	jmp	@main.613.@tak.5.IfExit
@main.612.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.609.@tak.2.exit
@main.613.@tak.5.IfExit:
@main.609.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-336]
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.616.@tak.4.IfTrue
	jmp	@main.617.@tak.3.IfFalse
@main.616.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                  rsi
    push                  r10
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r11
    push                   r8
    push                  rsi
    push                  r10
    push                   r9
call	tak
     pop                   r9
     pop                  r10
     pop                  rsi
     pop                   r8
     pop                  r11
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r11
    push                   r8
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     pop                   r8
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
    push                  r10
call	tak
     pop                  r10
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.614.@tak.2.exit
	jmp	@main.618.@tak.5.IfExit
@main.617.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.614.@tak.2.exit
@main.618.@tak.5.IfExit:
@main.614.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-336]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.621.@tak.4.IfTrue
	jmp	@main.622.@tak.3.IfFalse
@main.621.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                  r10
    push                   r9
call	tak
     pop                   r9
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r10
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  r10
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
    push                  r10
call	tak
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.619.@tak.2.exit
	jmp	@main.623.@tak.5.IfExit
@main.622.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.619.@tak.2.exit
@main.623.@tak.5.IfExit:
@main.619.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.626.@tak.4.IfTrue
	jmp	@main.627.@tak.3.IfFalse
@main.626.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                  rsi
    push                   r8
call	tak
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.624.@tak.2.exit
	jmp	@main.628.@tak.5.IfExit
@main.627.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.624.@tak.2.exit
@main.628.@tak.5.IfExit:
@main.624.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.404.@tak.2.exit
	jmp	@main.408.@tak.5.IfExit
@main.407.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-336]
	jmp	@main.404.@tak.2.exit
@main.408.@tak.5.IfExit:
@main.404.@tak.2.exit:
     mov       qword[rbp-344],                  rsi
     mov                  rsi,       qword[rbp-312]
     sub                  rsi,                    1
     mov                  r10,                  rsi
     mov                  r15,       qword[rbp-296]
     mov                  r11,       qword[rbp-304]
     cmp                  r15,                  r10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.411.@tak.4.IfTrue
	jmp	@main.412.@tak.3.IfFalse
@main.411.@tak.4.IfTrue:
     mov                  rsi,                  r10
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.631.@tak.4.IfTrue
	jmp	@main.632.@tak.3.IfFalse
@main.631.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                   r9
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
    push                   r9
    push                   r8
    push                  r10
call	tak
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r11
    push                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
    push                  r10
call	tak
     pop                  r10
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.629.@tak.2.exit
	jmp	@main.633.@tak.5.IfExit
@main.632.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.629.@tak.2.exit
@main.633.@tak.5.IfExit:
@main.629.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,                  r10
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.636.@tak.4.IfTrue
	jmp	@main.637.@tak.3.IfFalse
@main.636.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                  rsi
    push                   r9
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                   r9
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r11
    push                   r9
    push                  r10
    push                   r8
    push                  rsi
call	tak
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r11
    push                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
    push                  r10
call	tak
     pop                  r10
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.634.@tak.2.exit
	jmp	@main.638.@tak.5.IfExit
@main.637.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.634.@tak.2.exit
@main.638.@tak.5.IfExit:
@main.634.@tak.2.exit:
     mov                  r12,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r10
     mov                  rdx,                  r15
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                  r14
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.409.@tak.2.exit
	jmp	@main.413.@tak.5.IfExit
@main.412.@tak.3.IfFalse:
     mov                  rsi,                  r11
	jmp	@main.409.@tak.2.exit
@main.413.@tak.5.IfExit:
@main.409.@tak.2.exit:
     mov                  rbx,       qword[rbp-328]
     mov                  r13,       qword[rbp-344]
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.416.@tak.4.IfTrue
	jmp	@main.417.@tak.3.IfFalse
@main.416.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                  rsi
    push                   r8
call	tak
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.414.@tak.2.exit
	jmp	@main.418.@tak.5.IfExit
@main.417.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.414.@tak.2.exit
@main.418.@tak.5.IfExit:
@main.414.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.249.@tak.2.exit
	jmp	@main.253.@tak.5.IfExit
@main.252.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-312]
	jmp	@main.249.@tak.2.exit
@main.253.@tak.5.IfExit:
@main.249.@tak.2.exit:
     mov       qword[rbp-352],                  rsi
     mov                  rsi,        qword[rbp-96]
     sub                  rsi,                    1
     mov                  r15,                  rsi
     mov                  r11,        qword[rbp-80]
     mov                  rcx,        qword[rbp-88]
     mov       qword[rbp-360],                  rcx
     cmp                  r11,                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.256.@tak.4.IfTrue
	jmp	@main.257.@tak.3.IfFalse
@main.256.@tak.4.IfTrue:
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-360]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.421.@tak.4.IfTrue
	jmp	@main.422.@tak.3.IfFalse
@main.421.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                  rsi
    push                   r9
call	tak
     pop                   r9
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    push                  rsi
    push                  r11
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  r11
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
    push                  r11
call	tak
     pop                  r11
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.419.@tak.2.exit
	jmp	@main.423.@tak.5.IfExit
@main.422.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.419.@tak.2.exit
@main.423.@tak.5.IfExit:
@main.419.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-360]
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.426.@tak.4.IfTrue
	jmp	@main.427.@tak.3.IfFalse
@main.426.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                   r9
    push                  r11
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r10
    push                   r9
    push                  rsi
    push                   r8
    push                  r11
call	tak
     pop                  r11
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r10
    push                  rsi
    push                   r8
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                   r8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
    push                  r11
call	tak
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.424.@tak.2.exit
	jmp	@main.428.@tak.5.IfExit
@main.427.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.424.@tak.2.exit
@main.428.@tak.5.IfExit:
@main.424.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-360]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.431.@tak.4.IfTrue
	jmp	@main.432.@tak.3.IfFalse
@main.431.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                  rsi
    push                   r9
call	tak
     pop                   r9
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r10
    push                   r8
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     pop                   r8
     pop                  r10
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r10
    push                   r8
    push                  rsi
call	tak
     pop                  rsi
     pop                   r8
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.429.@tak.2.exit
	jmp	@main.433.@tak.5.IfExit
@main.432.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.429.@tak.2.exit
@main.433.@tak.5.IfExit:
@main.429.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.436.@tak.4.IfTrue
	jmp	@main.437.@tak.3.IfFalse
@main.436.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                   r8
    push                  rsi
call	tak
     pop                  rsi
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.434.@tak.2.exit
	jmp	@main.438.@tak.5.IfExit
@main.437.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.434.@tak.2.exit
@main.438.@tak.5.IfExit:
@main.434.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.254.@tak.2.exit
	jmp	@main.258.@tak.5.IfExit
@main.257.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-360]
	jmp	@main.254.@tak.2.exit
@main.258.@tak.5.IfExit:
@main.254.@tak.2.exit:
     mov                  r15,       qword[rbp-288]
     mov                  r11,       qword[rbp-352]
     mov       qword[rbp-368],                  rsi
     cmp                  r11,                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.261.@tak.4.IfTrue
	jmp	@main.262.@tak.3.IfFalse
@main.261.@tak.4.IfTrue:
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-368]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.441.@tak.4.IfTrue
	jmp	@main.442.@tak.3.IfFalse
@main.441.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                  r11
    push                   r9
call	tak
     pop                   r9
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    push                  rsi
    push                  r11
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  r11
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  r11
    push                  rsi
call	tak
     pop                  rsi
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.439.@tak.2.exit
	jmp	@main.443.@tak.5.IfExit
@main.442.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.439.@tak.2.exit
@main.443.@tak.5.IfExit:
@main.439.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-368]
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.446.@tak.4.IfTrue
	jmp	@main.447.@tak.3.IfFalse
@main.446.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                   r9
    push                  r11
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                  r10
    push                   r9
    push                  r11
    push                   r8
call	tak
     pop                   r8
     pop                  r11
     pop                   r9
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r10
    push                  rsi
    push                  r11
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
    push                  r11
call	tak
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.444.@tak.2.exit
	jmp	@main.448.@tak.5.IfExit
@main.447.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.444.@tak.2.exit
@main.448.@tak.5.IfExit:
@main.444.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-368]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.451.@tak.4.IfTrue
	jmp	@main.452.@tak.3.IfFalse
@main.451.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
    push                  r10
call	tak
     pop                  r10
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                  r10
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r10
    push                   r8
    push                  rsi
call	tak
     pop                  rsi
     pop                   r8
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.449.@tak.2.exit
	jmp	@main.453.@tak.5.IfExit
@main.452.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.449.@tak.2.exit
@main.453.@tak.5.IfExit:
@main.449.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.456.@tak.4.IfTrue
	jmp	@main.457.@tak.3.IfFalse
@main.456.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    push                   r9
    push                  rsi
call	tak
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.454.@tak.2.exit
	jmp	@main.458.@tak.5.IfExit
@main.457.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.454.@tak.2.exit
@main.458.@tak.5.IfExit:
@main.454.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.259.@tak.2.exit
	jmp	@main.263.@tak.5.IfExit
@main.262.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-368]
	jmp	@main.259.@tak.2.exit
@main.263.@tak.5.IfExit:
@main.259.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.109.@tak.2.exit
	jmp	@main.113.@tak.5.IfExit
@main.112.@tak.3.IfFalse:
     mov                  rsi,        qword[rbp-96]
	jmp	@main.109.@tak.2.exit
@main.113.@tak.5.IfExit:
@main.109.@tak.2.exit:
     mov       qword[rbp-376],                  rsi
     mov                  rsi,        qword[rbp-64]
     sub                  rsi,                    1
     mov       qword[rbp-384],                  rsi
     mov                  rcx,        qword[rbp-72]
     mov       qword[rbp-392],                  rcx
     mov                  rcx,        qword[rbp-56]
     mov       qword[rbp-400],                  rcx
     mov                  rcx,       qword[rbp-392]
     cmp                  rcx,       qword[rbp-384]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.116.@tak.4.IfTrue
	jmp	@main.117.@tak.3.IfFalse
@main.116.@tak.4.IfTrue:
     mov                  rsi,       qword[rbp-384]
     sub                  rsi,                    1
     mov                  r15,                  rsi
     mov                  r11,       qword[rbp-392]
     mov                  rcx,       qword[rbp-400]
     mov       qword[rbp-408],                  rcx
     cmp                  r11,                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.266.@tak.4.IfTrue
	jmp	@main.267.@tak.3.IfFalse
@main.266.@tak.4.IfTrue:
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-408]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.461.@tak.4.IfTrue
	jmp	@main.462.@tak.3.IfFalse
@main.461.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                  r11
    push                   r9
call	tak
     pop                   r9
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                  r11
    push                   r8
call	tak
     pop                   r8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.459.@tak.2.exit
	jmp	@main.463.@tak.5.IfExit
@main.462.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.459.@tak.2.exit
@main.463.@tak.5.IfExit:
@main.459.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-408]
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.466.@tak.4.IfTrue
	jmp	@main.467.@tak.3.IfFalse
@main.466.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                  rsi
    push                  r11
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                  r10
    push                  r11
    push                   r8
    push                   r9
call	tak
     pop                   r9
     pop                   r8
     pop                  r11
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                  r10
    push                  r11
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  r11
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r10
    push                  r11
call	tak
     pop                  r11
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.464.@tak.2.exit
	jmp	@main.468.@tak.5.IfExit
@main.467.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.464.@tak.2.exit
@main.468.@tak.5.IfExit:
@main.464.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-408]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.471.@tak.4.IfTrue
	jmp	@main.472.@tak.3.IfFalse
@main.471.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  r10
    push                  rsi
call	tak
     pop                  rsi
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                  r10
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                  r10
    push                   r8
call	tak
     pop                   r8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.469.@tak.2.exit
	jmp	@main.473.@tak.5.IfExit
@main.472.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.469.@tak.2.exit
@main.473.@tak.5.IfExit:
@main.469.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.476.@tak.4.IfTrue
	jmp	@main.477.@tak.3.IfFalse
@main.476.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                  rsi
    push                   r8
call	tak
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.474.@tak.2.exit
	jmp	@main.478.@tak.5.IfExit
@main.477.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.474.@tak.2.exit
@main.478.@tak.5.IfExit:
@main.474.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.264.@tak.2.exit
	jmp	@main.268.@tak.5.IfExit
@main.267.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-408]
	jmp	@main.264.@tak.2.exit
@main.268.@tak.5.IfExit:
@main.264.@tak.2.exit:
     mov       qword[rbp-416],                  rsi
     mov                  rsi,       qword[rbp-392]
     sub                  rsi,                    1
     mov                  r15,                  rsi
     mov                  r11,       qword[rbp-400]
     mov                  rcx,       qword[rbp-384]
     mov       qword[rbp-424],                  rcx
     cmp                  r11,                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.271.@tak.4.IfTrue
	jmp	@main.272.@tak.3.IfFalse
@main.271.@tak.4.IfTrue:
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-424]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.481.@tak.4.IfTrue
	jmp	@main.482.@tak.3.IfFalse
@main.481.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  r11
    push                  rsi
call	tak
     pop                  rsi
     pop                  r11
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                   r8
    push                  r11
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  r11
    push                  rsi
call	tak
     pop                  rsi
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.479.@tak.2.exit
	jmp	@main.483.@tak.5.IfExit
@main.482.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.479.@tak.2.exit
@main.483.@tak.5.IfExit:
@main.479.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-424]
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.486.@tak.4.IfTrue
	jmp	@main.487.@tak.3.IfFalse
@main.486.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                   r9
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
    push                   r9
    push                  r10
    push                   r8
call	tak
     pop                   r8
     pop                  r10
     pop                   r9
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                  r11
    push                  r10
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  r10
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
    push                  r10
call	tak
     pop                  r10
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.484.@tak.2.exit
	jmp	@main.488.@tak.5.IfExit
@main.487.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.484.@tak.2.exit
@main.488.@tak.5.IfExit:
@main.484.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-424]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.491.@tak.4.IfTrue
	jmp	@main.492.@tak.3.IfFalse
@main.491.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                  r10
    push                   r9
call	tak
     pop                   r9
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r8
    push                  r10
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  rsi
    push                  r10
call	tak
     pop                  r10
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.489.@tak.2.exit
	jmp	@main.493.@tak.5.IfExit
@main.492.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.489.@tak.2.exit
@main.493.@tak.5.IfExit:
@main.489.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.496.@tak.4.IfTrue
	jmp	@main.497.@tak.3.IfFalse
@main.496.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    push                  rsi
    push                   r9
call	tak
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.494.@tak.2.exit
	jmp	@main.498.@tak.5.IfExit
@main.497.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.494.@tak.2.exit
@main.498.@tak.5.IfExit:
@main.494.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.269.@tak.2.exit
	jmp	@main.273.@tak.5.IfExit
@main.272.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-424]
	jmp	@main.269.@tak.2.exit
@main.273.@tak.5.IfExit:
@main.269.@tak.2.exit:
     mov       qword[rbp-432],                  rsi
     mov                  rsi,       qword[rbp-400]
     sub                  rsi,                    1
     mov                  r10,                  rsi
     mov                  r15,       qword[rbp-384]
     mov                  r11,       qword[rbp-392]
     cmp                  r15,                  r10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.276.@tak.4.IfTrue
	jmp	@main.277.@tak.3.IfFalse
@main.276.@tak.4.IfTrue:
     mov                  rsi,                  r10
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.501.@tak.4.IfTrue
	jmp	@main.502.@tak.3.IfFalse
@main.501.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                  r10
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
    push                  r10
    push                   r9
    push                   r8
call	tak
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r11
    push                  r10
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
    push                  r10
call	tak
     pop                  r10
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.499.@tak.2.exit
	jmp	@main.503.@tak.5.IfExit
@main.502.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.499.@tak.2.exit
@main.503.@tak.5.IfExit:
@main.499.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,                  r10
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.506.@tak.4.IfTrue
	jmp	@main.507.@tak.3.IfFalse
@main.506.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                  rsi
    push                  r10
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    push                  r11
    push                  r10
    push                  rsi
    push                   r9
call	tak
     pop                   r9
     pop                  rsi
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  r11
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  r10
    push                  rsi
call	tak
     pop                  rsi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.504.@tak.2.exit
	jmp	@main.508.@tak.5.IfExit
@main.507.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.504.@tak.2.exit
@main.508.@tak.5.IfExit:
@main.504.@tak.2.exit:
     mov                  r12,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r10
     mov                  rdx,                  r15
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                  r14
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.274.@tak.2.exit
	jmp	@main.278.@tak.5.IfExit
@main.277.@tak.3.IfFalse:
     mov                  rsi,                  r11
	jmp	@main.274.@tak.2.exit
@main.278.@tak.5.IfExit:
@main.274.@tak.2.exit:
     mov                  rbx,       qword[rbp-416]
     mov                  r13,       qword[rbp-432]
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.281.@tak.4.IfTrue
	jmp	@main.282.@tak.3.IfFalse
@main.281.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r9
    push                   r8
call	tak
     pop                   r8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.279.@tak.2.exit
	jmp	@main.283.@tak.5.IfExit
@main.282.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.279.@tak.2.exit
@main.283.@tak.5.IfExit:
@main.279.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.114.@tak.2.exit
	jmp	@main.118.@tak.5.IfExit
@main.117.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-400]
	jmp	@main.114.@tak.2.exit
@main.118.@tak.5.IfExit:
@main.114.@tak.2.exit:
     mov       qword[rbp-440],                  rsi
     mov                  rsi,        qword[rbp-72]
     sub                  rsi,                    1
     mov                  r15,                  rsi
     mov                  r11,        qword[rbp-56]
     mov                  rcx,        qword[rbp-64]
     mov       qword[rbp-448],                  rcx
     cmp                  r11,                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.121.@tak.4.IfTrue
	jmp	@main.122.@tak.3.IfFalse
@main.121.@tak.4.IfTrue:
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-448]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.286.@tak.4.IfTrue
	jmp	@main.287.@tak.3.IfFalse
@main.286.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                  rsi
    push                   r9
call	tak
     pop                   r9
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                  r11
    push                   r8
call	tak
     pop                   r8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.284.@tak.2.exit
	jmp	@main.288.@tak.5.IfExit
@main.287.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.284.@tak.2.exit
@main.288.@tak.5.IfExit:
@main.284.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-448]
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.291.@tak.4.IfTrue
	jmp	@main.292.@tak.3.IfFalse
@main.291.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                  r10
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r11
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
call	tak
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r11
    push                  r10
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  r10
    push                  rsi
call	tak
     pop                  rsi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.289.@tak.2.exit
	jmp	@main.293.@tak.5.IfExit
@main.292.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.289.@tak.2.exit
@main.293.@tak.5.IfExit:
@main.289.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-448]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.296.@tak.4.IfTrue
	jmp	@main.297.@tak.3.IfFalse
@main.296.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                   r9
    push                  rsi
call	tak
     pop                  rsi
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r10
    push                   r9
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r10
    push                  rsi
    push                   r8
call	tak
     pop                   r8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.294.@tak.2.exit
	jmp	@main.298.@tak.5.IfExit
@main.297.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.294.@tak.2.exit
@main.298.@tak.5.IfExit:
@main.294.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.301.@tak.4.IfTrue
	jmp	@main.302.@tak.3.IfFalse
@main.301.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r9
    push                   r8
call	tak
     pop                   r8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.299.@tak.2.exit
	jmp	@main.303.@tak.5.IfExit
@main.302.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.299.@tak.2.exit
@main.303.@tak.5.IfExit:
@main.299.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.119.@tak.2.exit
	jmp	@main.123.@tak.5.IfExit
@main.122.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-448]
	jmp	@main.119.@tak.2.exit
@main.123.@tak.5.IfExit:
@main.119.@tak.2.exit:
     mov                  r15,       qword[rbp-376]
     mov                  r11,       qword[rbp-440]
     mov       qword[rbp-456],                  rsi
     cmp                  r11,                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.126.@tak.4.IfTrue
	jmp	@main.127.@tak.3.IfFalse
@main.126.@tak.4.IfTrue:
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-456]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.306.@tak.4.IfTrue
	jmp	@main.307.@tak.3.IfFalse
@main.306.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                   r9
    push                  rsi
call	tak
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r11
    push                  rsi
    push                   r8
call	tak
     pop                   r8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.304.@tak.2.exit
	jmp	@main.308.@tak.5.IfExit
@main.307.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.304.@tak.2.exit
@main.308.@tak.5.IfExit:
@main.304.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-456]
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.311.@tak.4.IfTrue
	jmp	@main.312.@tak.3.IfFalse
@main.311.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                   r9
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r11
    push                   r9
    push                  rsi
    push                  r10
    push                   r8
call	tak
     pop                   r8
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r11
    push                  rsi
    push                  r10
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  r10
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  r10
    push                  rsi
call	tak
     pop                  rsi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.309.@tak.2.exit
	jmp	@main.313.@tak.5.IfExit
@main.312.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.309.@tak.2.exit
@main.313.@tak.5.IfExit:
@main.309.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-456]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.316.@tak.4.IfTrue
	jmp	@main.317.@tak.3.IfFalse
@main.316.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                  r10
    push                   r9
call	tak
     pop                   r9
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    push                  rsi
    push                  r10
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
    push                  r10
call	tak
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.314.@tak.2.exit
	jmp	@main.318.@tak.5.IfExit
@main.317.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.314.@tak.2.exit
@main.318.@tak.5.IfExit:
@main.314.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.321.@tak.4.IfTrue
	jmp	@main.322.@tak.3.IfFalse
@main.321.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                   r8
    push                  rsi
call	tak
     pop                  rsi
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.319.@tak.2.exit
	jmp	@main.323.@tak.5.IfExit
@main.322.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.319.@tak.2.exit
@main.323.@tak.5.IfExit:
@main.319.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.124.@tak.2.exit
	jmp	@main.128.@tak.5.IfExit
@main.127.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-456]
	jmp	@main.124.@tak.2.exit
@main.128.@tak.5.IfExit:
@main.124.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.29.@tak.2.exit
	jmp	@main.33.@tak.5.IfExit
@main.32.@tak.3.IfFalse:
     mov                  rsi,        qword[rbp-72]
	jmp	@main.29.@tak.2.exit
@main.33.@tak.5.IfExit:
@main.29.@tak.2.exit:
     mov       qword[rbp-464],                  rsi
     mov                  rsi,        qword[rbp-40]
     sub                  rsi,                    1
     mov       qword[rbp-472],                  rsi
     mov                  rcx,        qword[rbp-48]
     mov       qword[rbp-480],                  rcx
     mov                  rcx,        qword[rbp-32]
     mov       qword[rbp-488],                  rcx
     mov                  rcx,       qword[rbp-480]
     cmp                  rcx,       qword[rbp-472]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.36.@tak.4.IfTrue
	jmp	@main.37.@tak.3.IfFalse
@main.36.@tak.4.IfTrue:
     mov                  rsi,       qword[rbp-472]
     sub                  rsi,                    1
     mov                  r15,                  rsi
     mov                  r11,       qword[rbp-480]
     mov                  rcx,       qword[rbp-488]
     mov       qword[rbp-496],                  rcx
     cmp                  r11,                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.131.@tak.4.IfTrue
	jmp	@main.132.@tak.3.IfFalse
@main.131.@tak.4.IfTrue:
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-496]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.326.@tak.4.IfTrue
	jmp	@main.327.@tak.3.IfFalse
@main.326.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
    push                  r11
call	tak
     pop                  r11
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                  rsi
    push                   r8
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
    push                  r11
call	tak
     pop                  r11
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.324.@tak.2.exit
	jmp	@main.328.@tak.5.IfExit
@main.327.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.324.@tak.2.exit
@main.328.@tak.5.IfExit:
@main.324.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-496]
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.331.@tak.4.IfTrue
	jmp	@main.332.@tak.3.IfFalse
@main.331.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                  rsi
    push                   r9
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                   r9
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r10
    push                   r8
    push                  rsi
    push                   r9
    push                  r11
call	tak
     pop                  r11
     pop                   r9
     pop                  rsi
     pop                   r8
     pop                  r10
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r10
    push                   r8
    push                  r11
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     pop                   r8
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r10
    push                  r11
call	tak
     pop                  r11
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.329.@tak.2.exit
	jmp	@main.333.@tak.5.IfExit
@main.332.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.329.@tak.2.exit
@main.333.@tak.5.IfExit:
@main.329.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-496]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.336.@tak.4.IfTrue
	jmp	@main.337.@tak.3.IfFalse
@main.336.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  r10
    push                  rsi
call	tak
     pop                  rsi
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                  r10
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r10
    push                  rsi
    push                   r8
call	tak
     pop                   r8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.334.@tak.2.exit
	jmp	@main.338.@tak.5.IfExit
@main.337.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.334.@tak.2.exit
@main.338.@tak.5.IfExit:
@main.334.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.341.@tak.4.IfTrue
	jmp	@main.342.@tak.3.IfFalse
@main.341.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r9
    push                   r8
call	tak
     pop                   r8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.339.@tak.2.exit
	jmp	@main.343.@tak.5.IfExit
@main.342.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.339.@tak.2.exit
@main.343.@tak.5.IfExit:
@main.339.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.129.@tak.2.exit
	jmp	@main.133.@tak.5.IfExit
@main.132.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-496]
	jmp	@main.129.@tak.2.exit
@main.133.@tak.5.IfExit:
@main.129.@tak.2.exit:
     mov       qword[rbp-504],                  rsi
     mov                  rsi,       qword[rbp-480]
     sub                  rsi,                    1
     mov                  r15,                  rsi
     mov                  r11,       qword[rbp-488]
     mov                  rcx,       qword[rbp-472]
     mov       qword[rbp-512],                  rcx
     cmp                  r11,                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.136.@tak.4.IfTrue
	jmp	@main.137.@tak.3.IfFalse
@main.136.@tak.4.IfTrue:
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-512]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.346.@tak.4.IfTrue
	jmp	@main.347.@tak.3.IfFalse
@main.346.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                  rsi
    push                   r9
call	tak
     pop                   r9
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    push                  r11
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  rsi
    push                  r11
call	tak
     pop                  r11
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.344.@tak.2.exit
	jmp	@main.348.@tak.5.IfExit
@main.347.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.344.@tak.2.exit
@main.348.@tak.5.IfExit:
@main.344.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-512]
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.351.@tak.4.IfTrue
	jmp	@main.352.@tak.3.IfFalse
@main.351.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                  rsi
    push                   r9
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                   r9
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r10
    push                   r9
    push                  r11
    push                  rsi
    push                   r8
call	tak
     pop                   r8
     pop                  rsi
     pop                  r11
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r10
    push                  r11
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r10
    push                  r11
call	tak
     pop                  r11
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.349.@tak.2.exit
	jmp	@main.353.@tak.5.IfExit
@main.352.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.349.@tak.2.exit
@main.353.@tak.5.IfExit:
@main.349.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-512]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.356.@tak.4.IfTrue
	jmp	@main.357.@tak.3.IfFalse
@main.356.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                   r9
    push                  rsi
call	tak
     pop                  rsi
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r10
    push                   r8
    push                  rsi
call	tak
     pop                  rsi
     pop                   r8
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.354.@tak.2.exit
	jmp	@main.358.@tak.5.IfExit
@main.357.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.354.@tak.2.exit
@main.358.@tak.5.IfExit:
@main.354.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.361.@tak.4.IfTrue
	jmp	@main.362.@tak.3.IfFalse
@main.361.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                  rsi
    push                   r8
call	tak
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.359.@tak.2.exit
	jmp	@main.363.@tak.5.IfExit
@main.362.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.359.@tak.2.exit
@main.363.@tak.5.IfExit:
@main.359.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.134.@tak.2.exit
	jmp	@main.138.@tak.5.IfExit
@main.137.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-512]
	jmp	@main.134.@tak.2.exit
@main.138.@tak.5.IfExit:
@main.134.@tak.2.exit:
     mov       qword[rbp-520],                  rsi
     mov                  rsi,       qword[rbp-488]
     sub                  rsi,                    1
     mov                  r15,                  rsi
     mov                  r11,       qword[rbp-472]
     mov                  rcx,       qword[rbp-480]
     mov       qword[rbp-528],                  rcx
     cmp                  r11,                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.141.@tak.4.IfTrue
	jmp	@main.142.@tak.3.IfFalse
@main.141.@tak.4.IfTrue:
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-528]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.366.@tak.4.IfTrue
	jmp	@main.367.@tak.3.IfFalse
@main.366.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                  rsi
    push                   r9
call	tak
     pop                   r9
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r11
    push                  rsi
    push                   r8
call	tak
     pop                   r8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.364.@tak.2.exit
	jmp	@main.368.@tak.5.IfExit
@main.367.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.364.@tak.2.exit
@main.368.@tak.5.IfExit:
@main.364.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-528]
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.371.@tak.4.IfTrue
	jmp	@main.372.@tak.3.IfFalse
@main.371.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                  r11
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r10
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
call	tak
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r10
    push                  r11
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r10
    push                  r11
call	tak
     pop                  r11
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.369.@tak.2.exit
	jmp	@main.373.@tak.5.IfExit
@main.372.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.369.@tak.2.exit
@main.373.@tak.5.IfExit:
@main.369.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-528]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.376.@tak.4.IfTrue
	jmp	@main.377.@tak.3.IfFalse
@main.376.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                  rsi
    push                   r9
call	tak
     pop                   r9
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r10
    push                   r8
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     pop                   r8
     pop                  r10
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r10
    push                  rsi
    push                   r8
call	tak
     pop                   r8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.374.@tak.2.exit
	jmp	@main.378.@tak.5.IfExit
@main.377.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.374.@tak.2.exit
@main.378.@tak.5.IfExit:
@main.374.@tak.2.exit:
     mov                  rbx,                  rsi
     mov                  rdi,                  r10
     mov                  rsi,                  r14
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.139.@tak.2.exit
	jmp	@main.143.@tak.5.IfExit
@main.142.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-528]
	jmp	@main.139.@tak.2.exit
@main.143.@tak.5.IfExit:
@main.139.@tak.2.exit:
     mov                  rbx,       qword[rbp-504]
     mov                  r13,       qword[rbp-520]
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.146.@tak.4.IfTrue
	jmp	@main.147.@tak.3.IfFalse
@main.146.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r8
    push                   r9
call	tak
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.144.@tak.2.exit
	jmp	@main.148.@tak.5.IfExit
@main.147.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.144.@tak.2.exit
@main.148.@tak.5.IfExit:
@main.144.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.34.@tak.2.exit
	jmp	@main.38.@tak.5.IfExit
@main.37.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-488]
	jmp	@main.34.@tak.2.exit
@main.38.@tak.5.IfExit:
@main.34.@tak.2.exit:
     mov                  r15,                  rsi
     mov                  rsi,        qword[rbp-48]
     sub                  rsi,                    1
     mov                  r11,                  rsi
     mov                  rcx,        qword[rbp-32]
     mov       qword[rbp-536],                  rcx
     mov                  rcx,        qword[rbp-40]
     mov       qword[rbp-544],                  rcx
     cmp       qword[rbp-536],                  r11
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.41.@tak.4.IfTrue
	jmp	@main.42.@tak.3.IfFalse
@main.41.@tak.4.IfTrue:
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-536]
     mov                   r9,       qword[rbp-544]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.151.@tak.4.IfTrue
	jmp	@main.152.@tak.3.IfFalse
@main.151.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
    push                  r11
call	tak
     pop                  r11
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                   r8
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
    push                  r11
call	tak
     pop                  r11
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.149.@tak.2.exit
	jmp	@main.153.@tak.5.IfExit
@main.152.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.149.@tak.2.exit
@main.153.@tak.5.IfExit:
@main.149.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,       qword[rbp-536]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-544]
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.156.@tak.4.IfTrue
	jmp	@main.157.@tak.3.IfFalse
@main.156.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r9
    push                   r8
    push                  r10
    push                  r11
call	tak
     pop                  r11
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
    push                  r11
call	tak
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.154.@tak.2.exit
	jmp	@main.158.@tak.5.IfExit
@main.157.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.154.@tak.2.exit
@main.158.@tak.5.IfExit:
@main.154.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-544]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-536]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.161.@tak.4.IfTrue
	jmp	@main.162.@tak.3.IfFalse
@main.161.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
    push                  r10
call	tak
     pop                  r10
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r8
    push                   r9
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
    push                  r10
call	tak
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.159.@tak.2.exit
	jmp	@main.163.@tak.5.IfExit
@main.162.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.159.@tak.2.exit
@main.163.@tak.5.IfExit:
@main.159.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.166.@tak.4.IfTrue
	jmp	@main.167.@tak.3.IfFalse
@main.166.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                  rsi
    push                   r8
call	tak
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.164.@tak.2.exit
	jmp	@main.168.@tak.5.IfExit
@main.167.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.164.@tak.2.exit
@main.168.@tak.5.IfExit:
@main.164.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.39.@tak.2.exit
	jmp	@main.43.@tak.5.IfExit
@main.42.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-544]
	jmp	@main.39.@tak.2.exit
@main.43.@tak.5.IfExit:
@main.39.@tak.2.exit:
     mov                  r11,       qword[rbp-464]
     mov       qword[rbp-552],                  rsi
     cmp                  r15,                  r11
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.46.@tak.4.IfTrue
	jmp	@main.47.@tak.3.IfFalse
@main.46.@tak.4.IfTrue:
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,       qword[rbp-552]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.171.@tak.4.IfTrue
	jmp	@main.172.@tak.3.IfFalse
@main.171.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                   r9
    push                  rsi
call	tak
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                  r11
    push                   r8
call	tak
     pop                   r8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.169.@tak.2.exit
	jmp	@main.173.@tak.5.IfExit
@main.172.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.169.@tak.2.exit
@main.173.@tak.5.IfExit:
@main.169.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-552]
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.176.@tak.4.IfTrue
	jmp	@main.177.@tak.3.IfFalse
@main.176.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                   r9
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r11
    push                   r9
    push                   r8
    push                  rsi
    push                  r10
call	tak
     pop                  r10
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  r11
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
    push                  r10
call	tak
     pop                  r10
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.174.@tak.2.exit
	jmp	@main.178.@tak.5.IfExit
@main.177.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.174.@tak.2.exit
@main.178.@tak.5.IfExit:
@main.174.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-552]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.181.@tak.4.IfTrue
	jmp	@main.182.@tak.3.IfFalse
@main.181.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
    push                  r10
call	tak
     pop                  r10
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
    push                  r10
call	tak
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.179.@tak.2.exit
	jmp	@main.183.@tak.5.IfExit
@main.182.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.179.@tak.2.exit
@main.183.@tak.5.IfExit:
@main.179.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.186.@tak.4.IfTrue
	jmp	@main.187.@tak.3.IfFalse
@main.186.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    push                  rsi
    push                   r9
call	tak
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.184.@tak.2.exit
	jmp	@main.188.@tak.5.IfExit
@main.187.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.184.@tak.2.exit
@main.188.@tak.5.IfExit:
@main.184.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.44.@tak.2.exit
	jmp	@main.48.@tak.5.IfExit
@main.47.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-552]
	jmp	@main.44.@tak.2.exit
@main.48.@tak.5.IfExit:
@main.44.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.9.@tak.2.exit
	jmp	@main.13.@tak.5.IfExit
@main.12.@tak.3.IfFalse:
     mov                  rsi,        qword[rbp-48]
	jmp	@main.9.@tak.2.exit
@main.13.@tak.5.IfExit:
@main.9.@tak.2.exit:
     mov       qword[rbp-560],                  rsi
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                    1
     mov       qword[rbp-568],                  rsi
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-576],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-584],                  rcx
     mov                  rcx,       qword[rbp-576]
     cmp                  rcx,       qword[rbp-568]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.16.@tak.4.IfTrue
	jmp	@main.17.@tak.3.IfFalse
@main.16.@tak.4.IfTrue:
     mov                  rsi,       qword[rbp-568]
     sub                  rsi,                    1
     mov                  r15,                  rsi
     mov                  r11,       qword[rbp-576]
     mov                  rcx,       qword[rbp-584]
     mov       qword[rbp-592],                  rcx
     cmp                  r11,                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.51.@tak.4.IfTrue
	jmp	@main.52.@tak.3.IfFalse
@main.51.@tak.4.IfTrue:
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-592]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.191.@tak.4.IfTrue
	jmp	@main.192.@tak.3.IfFalse
@main.191.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
    push                  r11
call	tak
     pop                  r11
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                   r8
    push                  r11
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
    push                  r11
call	tak
     pop                  r11
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.189.@tak.2.exit
	jmp	@main.193.@tak.5.IfExit
@main.192.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.189.@tak.2.exit
@main.193.@tak.5.IfExit:
@main.189.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-592]
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.196.@tak.4.IfTrue
	jmp	@main.197.@tak.3.IfFalse
@main.196.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                  rsi
    push                   r9
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                   r9
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
    push                   r9
    push                   r8
    push                  r11
call	tak
     pop                  r11
     pop                   r8
     pop                   r9
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                  r10
    push                   r8
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                   r8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
    push                  r11
call	tak
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.194.@tak.2.exit
	jmp	@main.198.@tak.5.IfExit
@main.197.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.194.@tak.2.exit
@main.198.@tak.5.IfExit:
@main.194.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-592]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.201.@tak.4.IfTrue
	jmp	@main.202.@tak.3.IfFalse
@main.201.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
    push                  r10
call	tak
     pop                  r10
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r9
    push                   r8
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  r10
    push                  rsi
call	tak
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.199.@tak.2.exit
	jmp	@main.203.@tak.5.IfExit
@main.202.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.199.@tak.2.exit
@main.203.@tak.5.IfExit:
@main.199.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.206.@tak.4.IfTrue
	jmp	@main.207.@tak.3.IfFalse
@main.206.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    push                   r9
    push                  rsi
call	tak
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.204.@tak.2.exit
	jmp	@main.208.@tak.5.IfExit
@main.207.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.204.@tak.2.exit
@main.208.@tak.5.IfExit:
@main.204.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.49.@tak.2.exit
	jmp	@main.53.@tak.5.IfExit
@main.52.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-592]
	jmp	@main.49.@tak.2.exit
@main.53.@tak.5.IfExit:
@main.49.@tak.2.exit:
     mov                  r11,                  rsi
     mov                  rsi,       qword[rbp-576]
     sub                  rsi,                    1
     mov                  r15,                  rsi
     mov                  rcx,       qword[rbp-584]
     mov       qword[rbp-600],                  rcx
     mov                  rcx,       qword[rbp-568]
     mov       qword[rbp-608],                  rcx
     cmp       qword[rbp-600],                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.56.@tak.4.IfTrue
	jmp	@main.57.@tak.3.IfFalse
@main.56.@tak.4.IfTrue:
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-600]
     mov                   r9,       qword[rbp-608]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.211.@tak.4.IfTrue
	jmp	@main.212.@tak.3.IfFalse
@main.211.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
    push                  r11
call	tak
     pop                  r11
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    push                  rsi
    push                   r9
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  rsi
    push                  r11
call	tak
     pop                  r11
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.209.@tak.2.exit
	jmp	@main.213.@tak.5.IfExit
@main.212.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.209.@tak.2.exit
@main.213.@tak.5.IfExit:
@main.209.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,       qword[rbp-600]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-608]
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.216.@tak.4.IfTrue
	jmp	@main.217.@tak.3.IfFalse
@main.216.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                  r11
    push                  r10
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    push                  rsi
    push                  r11
    push                  r10
    push                   r9
call	tak
     pop                   r9
     pop                  r10
     pop                  r11
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  r11
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
    push                  r10
call	tak
     pop                  r10
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.214.@tak.2.exit
	jmp	@main.218.@tak.5.IfExit
@main.217.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.214.@tak.2.exit
@main.218.@tak.5.IfExit:
@main.214.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-608]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,       qword[rbp-600]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.221.@tak.4.IfTrue
	jmp	@main.222.@tak.3.IfFalse
@main.221.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
    push                  r11
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r9
    push                  r11
    push                  r10
    push                   r8
call	tak
     pop                   r8
     pop                  r10
     pop                  r11
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                  r11
    push                  r10
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  r10
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
    push                  r10
call	tak
     pop                  r10
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.219.@tak.2.exit
	jmp	@main.223.@tak.5.IfExit
@main.222.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.219.@tak.2.exit
@main.223.@tak.5.IfExit:
@main.219.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.226.@tak.4.IfTrue
	jmp	@main.227.@tak.3.IfFalse
@main.226.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
    push                  r11
call	tak
     pop                  r11
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                  rsi
    push                  r11
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  r11
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                  r11
    push                   r8
call	tak
     pop                   r8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.224.@tak.2.exit
	jmp	@main.228.@tak.5.IfExit
@main.227.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.224.@tak.2.exit
@main.228.@tak.5.IfExit:
@main.224.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.54.@tak.2.exit
	jmp	@main.58.@tak.5.IfExit
@main.57.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-608]
	jmp	@main.54.@tak.2.exit
@main.58.@tak.5.IfExit:
@main.54.@tak.2.exit:
     mov                  r15,                  rsi
     mov                  rsi,       qword[rbp-584]
     sub                  rsi,                    1
     mov       qword[rbp-616],                  rsi
     mov                  rcx,       qword[rbp-568]
     mov       qword[rbp-624],                  rcx
     mov                  rcx,       qword[rbp-576]
     mov       qword[rbp-632],                  rcx
     mov                  rcx,       qword[rbp-624]
     cmp                  rcx,       qword[rbp-616]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.61.@tak.4.IfTrue
	jmp	@main.62.@tak.3.IfFalse
@main.61.@tak.4.IfTrue:
     mov                  rsi,       qword[rbp-616]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-624]
     mov                   r9,       qword[rbp-632]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.231.@tak.4.IfTrue
	jmp	@main.232.@tak.3.IfFalse
@main.231.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
    push                  r11
call	tak
     pop                  r11
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                  rsi
    push                   r8
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
    push                  r11
call	tak
     pop                  r11
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.229.@tak.2.exit
	jmp	@main.233.@tak.5.IfExit
@main.232.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.229.@tak.2.exit
@main.233.@tak.5.IfExit:
@main.229.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,       qword[rbp-624]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-632]
     mov                   r9,       qword[rbp-616]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.236.@tak.4.IfTrue
	jmp	@main.237.@tak.3.IfFalse
@main.236.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  r11
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     pop                  r11
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                  rsi
    push                  r11
    push                   r8
    push                  r10
call	tak
     pop                  r10
     pop                   r8
     pop                  r11
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                  r11
    push                   r8
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
    push                  r10
call	tak
     pop                  r10
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.234.@tak.2.exit
	jmp	@main.238.@tak.5.IfExit
@main.237.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.234.@tak.2.exit
@main.238.@tak.5.IfExit:
@main.234.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-632]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-616]
     mov                   r9,       qword[rbp-624]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.241.@tak.4.IfTrue
	jmp	@main.242.@tak.3.IfFalse
@main.241.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
    push                  r11
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                  rsi
    push                  r11
    push                   r8
    push                  r10
call	tak
     pop                  r10
     pop                   r8
     pop                  r11
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                  r11
    push                   r8
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
    push                  r10
call	tak
     pop                  r10
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.239.@tak.2.exit
	jmp	@main.243.@tak.5.IfExit
@main.242.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.239.@tak.2.exit
@main.243.@tak.5.IfExit:
@main.239.@tak.2.exit:
     mov                  rbx,                  rsi
     mov                  rdi,                  r10
     mov                  rsi,                  r14
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.59.@tak.2.exit
	jmp	@main.63.@tak.5.IfExit
@main.62.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-632]
	jmp	@main.59.@tak.2.exit
@main.63.@tak.5.IfExit:
@main.59.@tak.2.exit:
     mov                  rbx,                  r11
     mov                  r13,                  r15
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.66.@tak.4.IfTrue
	jmp	@main.67.@tak.3.IfFalse
@main.66.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r9
    push                   r8
call	tak
     pop                   r8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.64.@tak.2.exit
	jmp	@main.68.@tak.5.IfExit
@main.67.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.64.@tak.2.exit
@main.68.@tak.5.IfExit:
@main.64.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.14.@tak.2.exit
	jmp	@main.18.@tak.5.IfExit
@main.17.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-584]
	jmp	@main.14.@tak.2.exit
@main.18.@tak.5.IfExit:
@main.14.@tak.2.exit:
     mov                  r15,                  rsi
     mov                  rsi,        qword[rbp-24]
     sub                  rsi,                    1
     mov                  r11,                  rsi
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-640],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-648],                  rcx
     cmp       qword[rbp-640],                  r11
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.21.@tak.4.IfTrue
	jmp	@main.22.@tak.3.IfFalse
@main.21.@tak.4.IfTrue:
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-640]
     mov                   r9,       qword[rbp-648]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.71.@tak.4.IfTrue
	jmp	@main.72.@tak.3.IfFalse
@main.71.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                  rsi
    push                   r9
call	tak
     pop                   r9
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                  r11
    push                   r8
call	tak
     pop                   r8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.69.@tak.2.exit
	jmp	@main.73.@tak.5.IfExit
@main.72.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.69.@tak.2.exit
@main.73.@tak.5.IfExit:
@main.69.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,       qword[rbp-640]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-648]
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.76.@tak.4.IfTrue
	jmp	@main.77.@tak.3.IfFalse
@main.76.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                  rsi
    push                  r11
    push                   r9
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r9
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r10
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
call	tak
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r10
    push                  rsi
    push                  r11
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  r11
    push                  rsi
call	tak
     pop                  rsi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.74.@tak.2.exit
	jmp	@main.78.@tak.5.IfExit
@main.77.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.74.@tak.2.exit
@main.78.@tak.5.IfExit:
@main.74.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-648]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,       qword[rbp-640]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.81.@tak.4.IfTrue
	jmp	@main.82.@tak.3.IfFalse
@main.81.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r10
    push                  rsi
    push                   r9
call	tak
     pop                   r9
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  r10
    push                  rsi
    push                   r8
call	tak
     pop                   r8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.79.@tak.2.exit
	jmp	@main.83.@tak.5.IfExit
@main.82.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.79.@tak.2.exit
@main.83.@tak.5.IfExit:
@main.79.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.86.@tak.4.IfTrue
	jmp	@main.87.@tak.3.IfFalse
@main.86.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r8
    push                  rsi
    push                   r9
call	tak
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.84.@tak.2.exit
	jmp	@main.88.@tak.5.IfExit
@main.87.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.84.@tak.2.exit
@main.88.@tak.5.IfExit:
@main.84.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.19.@tak.2.exit
	jmp	@main.23.@tak.5.IfExit
@main.22.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-648]
	jmp	@main.19.@tak.2.exit
@main.23.@tak.5.IfExit:
@main.19.@tak.2.exit:
     mov                  r11,       qword[rbp-560]
     mov       qword[rbp-656],                  rsi
     cmp                  r15,                  r11
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.26.@tak.4.IfTrue
	jmp	@main.27.@tak.3.IfFalse
@main.26.@tak.4.IfTrue:
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r15
     mov                   r9,       qword[rbp-656]
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.91.@tak.4.IfTrue
	jmp	@main.92.@tak.3.IfFalse
@main.91.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  r11
    push                  rsi
call	tak
     pop                  rsi
     pop                  r11
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r8
    push                   r9
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
    push                  r11
call	tak
     pop                  r11
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.89.@tak.2.exit
	jmp	@main.93.@tak.5.IfExit
@main.92.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.89.@tak.2.exit
@main.93.@tak.5.IfExit:
@main.89.@tak.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,                  r15
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-656]
     mov                   r9,                  r11
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.96.@tak.4.IfTrue
	jmp	@main.97.@tak.3.IfFalse
@main.96.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                  r11
    push                  r10
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r8
    push                  r11
    push                  r10
    push                   r9
call	tak
     pop                   r9
     pop                  r10
     pop                  r11
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  r11
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r11
    push                  r10
call	tak
     pop                  r10
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.94.@tak.2.exit
	jmp	@main.98.@tak.5.IfExit
@main.97.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.94.@tak.2.exit
@main.98.@tak.5.IfExit:
@main.94.@tak.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,       qword[rbp-656]
     sub                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  r13,                  r11
     mov                   r9,                  r15
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.101.@tak.4.IfTrue
	jmp	@main.102.@tak.3.IfFalse
@main.101.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
    push                  r10
call	tak
     pop                  r10
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                   r9
    push                   r8
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  r10
    push                  rsi
call	tak
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.99.@tak.2.exit
	jmp	@main.103.@tak.5.IfExit
@main.102.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.99.@tak.2.exit
@main.103.@tak.5.IfExit:
@main.99.@tak.2.exit:
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                   r9,                  rsi
     cmp                  r13,                  rbx
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.106.@tak.4.IfTrue
	jmp	@main.107.@tak.3.IfFalse
@main.106.@tak.4.IfTrue:
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                   r9
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  rbx
    push                  rsi
    push                   r9
    push                   r8
call	tak
     pop                   r8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                  r13
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.104.@tak.2.exit
	jmp	@main.108.@tak.5.IfExit
@main.107.@tak.3.IfFalse:
     mov                  rsi,                   r9
	jmp	@main.104.@tak.2.exit
@main.108.@tak.5.IfExit:
@main.104.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.24.@tak.2.exit
	jmp	@main.28.@tak.5.IfExit
@main.27.@tak.3.IfFalse:
     mov                  rsi,       qword[rbp-656]
	jmp	@main.24.@tak.2.exit
@main.28.@tak.5.IfExit:
@main.24.@tak.2.exit:
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
	jmp	@main.4.@tak.2.exit
	jmp	@main.8.@tak.5.IfExit
@main.7.@tak.3.IfFalse:
     mov                  rsi,        qword[rbp-24]
	jmp	@main.4.@tak.2.exit
@main.8.@tak.5.IfExit:
@main.4.@tak.2.exit:
     mov                  rdi,                  rsi
    push                  rsi
call	toString
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                  656
     pop                  rbp
     ret
tak:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  r13
    push                  rbx
@tak.1.enter:
     mov                   r9,                  rdi
     mov                  r13,                  rsi
     mov                  rbx,                  rdx
     cmp                  r13,                   r9
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@tak.4.IfTrue
	jmp	@tak.3.IfFalse
@tak.4.IfTrue:
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     mov                  rdx,                  rbx
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rsi,                  r13
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     mov                  rdx,                   r9
    push                  rsi
    push                   r9
    push                   r8
call	tak
     pop                   r8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  rsi,                  rbx
     sub                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     mov                  rdx,                  r13
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	tak
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  rsi
call	tak
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                    1
     add                  rbx,                  rsi
     mov                  rax,                  rbx
	jmp	@tak.2.exit
	jmp	@tak.5.IfExit
@tak.3.IfFalse:
     mov                  rax,                  rbx
	jmp	@tak.2.exit
@tak.5.IfExit:
@tak.2.exit:
     pop                  rbx
     pop                  r13
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



