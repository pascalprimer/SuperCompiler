  global                 main
  extern	malloc


 section                .text
cd:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  r13
    push                  rbx
@cd.1.enter:
     mov                  r12,                  rdi
     mov                   r9,                  rsi
     mov                  rbx,                  rdx
     mov                  r13,                  rcx
     cmp                  r12,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@cd.4.IfTrue
	jmp	@cd.3.IfFalse
@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                   r9
    push                   r9
    push                  rsi
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r9
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
    push                  rsi
    push                   r9
    push                   r8
call	__string_connect__
     pop                   r8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
    push                   r8
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     add                   r8,                    1
	jmp	@cd.5.IfExit
@cd.3.IfFalse:
     sub                  r12,                    1
     mov                  rdi,                  r12
     mov                  rsi,                   r9
     mov                  rdx,                  r13
     mov                  rcx,                  rbx
    push                   r9
    push                  rsi
     sub                  rsp,                    8
 call	cd
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                   r9
    push                   r9
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r9
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
    push                   r9
    push                  rsi
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
    push                   r8
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     mov                  rdi,                  r12
     mov                  rsi,                  rbx
     mov                  rdx,                   r9
     mov                  rcx,                  r13
    push                  rsi
 call	cd
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     add                   r8,                    1
@cd.5.IfExit:
     mov                  rax,                   r8
     pop                  rbx
     pop                  r13
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
     sub                  rsp,                  224
    push                  rbx
    push                  r12
    push                  r14
    push                  r13
    push                  r15
@main.1.enter:
     mov                   r8,         __const_str2
     mov                  r12,         __const_str3
     mov                  rdi,         __const_str4
    push                   r8
    push                  rsi
    push                  rdi
call	getInt
     pop                  rdi
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov         qword[rbp-8],                   r8
     mov        qword[rbp-16],                  r12
     mov        qword[rbp-24],                  rdi
     mov                  r12,                    0
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.6.@cd.4.IfTrue
	jmp	@main.7.@cd.3.IfFalse
@main.6.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,         qword[rbp-8]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbp-24]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     add                  r12,                    1
	jmp	@main.8.@cd.5.IfExit
@main.7.@cd.3.IfFalse:
     mov        qword[rbp-32],                  rbx
     mov                  rax,        qword[rbp-32]
     sub                  rax,                    1
     mov        qword[rbp-32],                  rax
     mov                  rbx,        qword[rbp-32]
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-40],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-48],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-56],                  rcx
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.11.@cd.4.IfTrue
	jmp	@main.12.@cd.3.IfFalse
@main.11.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,        qword[rbp-40]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbp-56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     add                  r12,                    1
	jmp	@main.13.@cd.5.IfExit
@main.12.@cd.3.IfFalse:
     mov        qword[rbp-64],                  rbx
     mov                  rax,        qword[rbp-64]
     sub                  rax,                    1
     mov        qword[rbp-64],                  rax
     mov                  rbx,        qword[rbp-64]
     mov                  rcx,        qword[rbp-40]
     mov        qword[rbp-72],                  rcx
     mov                  r15,        qword[rbp-56]
     mov                  rcx,        qword[rbp-48]
     mov        qword[rbp-80],                  rcx
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.21.@cd.4.IfTrue
	jmp	@main.22.@cd.3.IfFalse
@main.21.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,        qword[rbp-72]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbp-80]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     add                  r12,                    1
	jmp	@main.23.@cd.5.IfExit
@main.22.@cd.3.IfFalse:
     mov        qword[rbp-88],                  rbx
     mov                  rax,        qword[rbp-88]
     sub                  rax,                    1
     mov        qword[rbp-88],                  rax
     mov                  rbx,        qword[rbp-88]
     mov                  r11,        qword[rbp-72]
     mov                  r14,        qword[rbp-80]
     mov        qword[rbp-96],                  r15
     mov                   r8,                  r12
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.41.@cd.4.IfTrue
	jmp	@main.42.@cd.3.IfFalse
@main.41.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                  r11
    push                   r8
    push                  rsi
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
    push                   r8
    push                  r11
call	__string_connect__
     pop                  r11
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbp-96]
    push                   r8
    push                  rsi
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                  r11
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  r11
     pop                   r8
     add                   r8,                    1
	jmp	@main.43.@cd.5.IfExit
@main.42.@cd.3.IfFalse:
     mov                  r10,                  rbx
     sub                  r10,                    1
     mov                  rbx,                  r10
     mov                  r13,                  r11
     mov                  r12,        qword[rbp-96]
     mov                   r9,                  r14
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.81.@cd.4.IfTrue
	jmp	@main.82.@cd.3.IfFalse
@main.81.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                   r9
    push                  r10
    push                  r11
    push                  rsi
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  rsi
     pop                  r11
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
    push                  r10
    push                  r11
    push                   r8
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r8
     pop                  r11
     pop                  r10
     pop                   r9
     add                   r8,                    1
	jmp	@main.83.@cd.5.IfExit
@main.82.@cd.3.IfFalse:
     sub                  rbx,                    1
     mov                  rdi,                  rbx
     mov                  rsi,                  r13
     mov                  rdx,                   r9
     mov                  rcx,                  r12
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
     sub                  rsp,                    8
 call	cd
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                   r9
    push                  r10
    push                  r11
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     pop                  r11
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
    push                  r10
    push                  r11
    push                   r8
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r8
     pop                  r11
     pop                  r10
     pop                   r9
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
     mov                  rdx,                  r13
     mov                  rcx,                   r9
    push                  rsi
    push                  r10
    push                  r11
 call	cd
     pop                  r11
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     add                   r8,                    1
@main.83.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                  r11
    push                   r8
    push                  r10
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
    push                   r8
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbp-96]
    push                   r8
    push                  rsi
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
    push                  r11
call	println
     pop                  r11
     pop                  r10
     pop                   r8
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                  r12,                  r11
     mov                   r9,        qword[rbp-96]
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.86.@cd.4.IfTrue
	jmp	@main.87.@cd.3.IfFalse
@main.86.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                  rsi
    push                   r8
    push                   r9
call	__string_connect__
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r8
    push                  rsi
    push                   r9
call	__string_connect__
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                   r8
    push                   r9
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     add                   r8,                    1
	jmp	@main.88.@cd.5.IfExit
@main.87.@cd.3.IfFalse:
     sub                  rbx,                    1
     mov                  rdi,                  rbx
     mov                  rsi,                  r13
     mov                  rdx,                   r9
     mov                  rcx,                  r12
    push                  rsi
    push                   r9
     sub                  rsp,                    8
 call	cd
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                  rsi
    push                   r8
    push                   r9
call	__string_connect__
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
    push                   r8
    push                   r9
call	__string_connect__
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                   r8
    push                  rsi
    push                   r9
call	__string_connect__
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
     mov                  rdx,                  r13
     mov                  rcx,                   r9
    push                  rsi
 call	cd
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     add                   r8,                    1
@main.88.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                   r8,                  rsi
     add                   r8,                    1
@main.43.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                  r12,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,        qword[rbp-72]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbp-80]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rbx,        qword[rbp-88]
     mov                  r14,        qword[rbp-72]
     mov                  r11,        qword[rbp-80]
     mov                   r8,                  r12
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.46.@cd.4.IfTrue
	jmp	@main.47.@cd.3.IfFalse
@main.46.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                  r15
    push                   r8
    push                  rsi
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r8
    push                  rsi
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r11
    push                  rsi
    push                   r8
    push                  r11
call	__string_connect__
     pop                  r11
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                  r11
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  r11
     pop                   r8
     add                   r8,                    1
	jmp	@main.48.@cd.5.IfExit
@main.47.@cd.3.IfFalse:
     mov                  r10,                  rbx
     sub                  r10,                    1
     mov                  rbx,                  r10
     mov                  r13,                  r15
     mov                  r12,                  r11
     mov                   r9,                  r14
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.91.@cd.4.IfTrue
	jmp	@main.92.@cd.3.IfFalse
@main.91.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                   r9
    push                   r8
    push                  r10
    push                  rsi
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r9
    push                  rsi
    push                   r8
    push                  r10
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                   r9
    push                  rsi
    push                   r8
    push                  r10
    push                  r11
call	__string_connect__
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
     add                   r8,                    1
	jmp	@main.93.@cd.5.IfExit
@main.92.@cd.3.IfFalse:
     sub                  rbx,                    1
     mov                  rdi,                  rbx
     mov                  rsi,                  r13
     mov                  rdx,                   r9
     mov                  rcx,                  r12
    push                   r9
    push                  r10
    push                  r11
    push                  rsi
     sub                  rsp,                    8
 call	cd
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                   r9
    push                  rsi
    push                   r8
    push                  r10
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r9
    push                  rsi
    push                   r8
    push                  r10
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                   r9
    push                  rsi
    push                   r8
    push                  r10
    push                  r11
call	__string_connect__
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
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
     mov                  rdx,                  r13
     mov                  rcx,                   r9
    push                  rsi
    push                  r10
    push                  r11
 call	cd
     pop                  r11
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     add                   r8,                    1
@main.93.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                  r15
    push                  rsi
    push                   r8
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
    push                   r8
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r11
    push                  rsi
    push                   r8
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
    push                  r11
call	println
     pop                  r11
     pop                  r10
     pop                   r8
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                  r12,                  r15
     mov                   r9,                  r11
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.96.@cd.4.IfTrue
	jmp	@main.97.@cd.3.IfFalse
@main.96.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                  rsi
    push                   r9
    push                   r8
call	__string_connect__
     pop                   r8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r9
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                   r9
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
    push                   r8
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     add                   r8,                    1
	jmp	@main.98.@cd.5.IfExit
@main.97.@cd.3.IfFalse:
     sub                  rbx,                    1
     mov                  rdi,                  rbx
     mov                  rsi,                  r13
     mov                  rdx,                   r9
     mov                  rcx,                  r12
    push                   r9
    push                  rsi
     sub                  rsp,                    8
 call	cd
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                   r9
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r9
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                   r9
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
    push                   r8
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
     mov                  rdx,                  r13
     mov                  rcx,                   r9
    push                  rsi
 call	cd
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     add                   r8,                    1
@main.98.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                   r8,                  rsi
     add                   r8,                    1
@main.48.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                  r12,                  rsi
     add                  r12,                    1
@main.23.@cd.5.IfExit:
     mov                  rsi,                  r12
     mov                  r12,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,        qword[rbp-40]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbp-56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rbx,        qword[rbp-64]
     mov                  rcx,        qword[rbp-48]
     mov       qword[rbp-104],                  rcx
     mov                  rcx,        qword[rbp-40]
     mov       qword[rbp-112],                  rcx
     mov                  rcx,        qword[rbp-56]
     mov       qword[rbp-120],                  rcx
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.26.@cd.4.IfTrue
	jmp	@main.27.@cd.3.IfFalse
@main.26.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,       qword[rbp-104]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbp-120]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     add                  r12,                    1
	jmp	@main.28.@cd.5.IfExit
@main.27.@cd.3.IfFalse:
     mov       qword[rbp-128],                  rbx
     mov                  rax,       qword[rbp-128]
     sub                  rax,                    1
     mov       qword[rbp-128],                  rax
     mov                  rbx,       qword[rbp-128]
     mov                  r15,       qword[rbp-104]
     mov                  r14,       qword[rbp-120]
     mov                  r11,       qword[rbp-112]
     mov                   r8,                  r12
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.51.@cd.4.IfTrue
	jmp	@main.52.@cd.3.IfFalse
@main.51.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                  r15
    push                  r11
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  r11
    push                  rsi
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r11
    push                  r11
    push                  rsi
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r11
    push                   r8
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r8
     pop                  r11
     add                   r8,                    1
	jmp	@main.53.@cd.5.IfExit
@main.52.@cd.3.IfFalse:
     mov                  r10,                  rbx
     sub                  r10,                    1
     mov                  rbx,                  r10
     mov                  r13,                  r15
     mov                  r12,                  r11
     mov                   r9,                  r14
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.101.@cd.4.IfTrue
	jmp	@main.102.@cd.3.IfFalse
@main.101.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                  r11
    push                   r8
    push                  r10
    push                   r9
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r9
     pop                  r10
     pop                   r8
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  r11
    push                   r8
    push                  r10
    push                   r9
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r9
     pop                  r10
     pop                   r8
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                  r11
    push                  rsi
    push                   r8
    push                  r10
    push                   r9
call	__string_connect__
     pop                   r9
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r11
    push                   r8
    push                  r10
    push                   r9
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                   r8
     pop                  r11
     add                   r8,                    1
	jmp	@main.103.@cd.5.IfExit
@main.102.@cd.3.IfFalse:
     sub                  rbx,                    1
     mov                  rdi,                  rbx
     mov                  rsi,                  r13
     mov                  rdx,                   r9
     mov                  rcx,                  r12
    push                  r11
    push                  rsi
    push                  r10
    push                   r9
     sub                  rsp,                    8
 call	cd
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                  r11
    push                  rsi
    push                   r8
    push                  r10
    push                   r9
call	__string_connect__
     pop                   r9
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  r11
    push                  rsi
    push                   r8
    push                  r10
    push                   r9
call	__string_connect__
     pop                   r9
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                  r11
    push                   r8
    push                  r10
    push                  rsi
    push                   r9
call	__string_connect__
     pop                   r9
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r11
    push                   r8
    push                  r10
    push                   r9
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                   r8
     pop                  r11
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
     mov                  rdx,                  r13
     mov                  rcx,                   r9
    push                  r11
    push                  r10
    push                  rsi
 call	cd
     pop                  rsi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     add                   r8,                    1
@main.103.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                  r15
    push                  rsi
    push                  r11
    push                  r10
    push                   r8
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                   r8
     pop                  r10
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  r11
    push                  r10
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r11
    push                  r11
    push                  r10
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
    push                   r8
call	println
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                  r12,                  r15
     mov                   r9,                  r11
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.106.@cd.4.IfTrue
	jmp	@main.107.@cd.3.IfFalse
@main.106.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                   r9
    push                  rsi
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
    push                   r9
    push                   r8
call	__string_connect__
     pop                   r8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                   r9
    push                  rsi
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
    push                   r8
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     add                   r8,                    1
	jmp	@main.108.@cd.5.IfExit
@main.107.@cd.3.IfFalse:
     sub                  rbx,                    1
     mov                  rdi,                  rbx
     mov                  rsi,                  r13
     mov                  rdx,                   r9
     mov                  rcx,                  r12
    push                   r9
    push                  rsi
     sub                  rsp,                    8
 call	cd
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                   r9
    push                  rsi
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
    push                   r9
    push                   r8
call	__string_connect__
     pop                   r8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                   r9
    push                  rsi
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
    push                   r8
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
     mov                  rdx,                  r13
     mov                  rcx,                   r9
    push                  rsi
 call	cd
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     add                   r8,                    1
@main.108.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                   r8,                  rsi
     add                   r8,                    1
@main.53.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                  r12,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,       qword[rbp-104]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbp-120]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rbx,       qword[rbp-128]
     mov                  r15,       qword[rbp-112]
     mov                  r14,       qword[rbp-104]
     mov                  r11,       qword[rbp-120]
     mov                   r8,                  r12
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.56.@cd.4.IfTrue
	jmp	@main.57.@cd.3.IfFalse
@main.56.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                  r15
    push                   r8
    push                  rsi
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r8
    push                  rsi
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r11
    push                   r8
    push                  rsi
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                  r11
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  r11
     pop                   r8
     add                   r8,                    1
	jmp	@main.58.@cd.5.IfExit
@main.57.@cd.3.IfFalse:
     mov                  r10,                  rbx
     sub                  r10,                    1
     mov                  rbx,                  r10
     mov                  r13,                  r15
     mov                  r12,                  r11
     mov                   r9,                  r14
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.111.@cd.4.IfTrue
	jmp	@main.112.@cd.3.IfFalse
@main.111.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                   r9
    push                  r10
    push                   r8
    push                  rsi
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r9
    push                  r10
    push                   r8
    push                  rsi
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                   r9
    push                  r10
    push                   r8
    push                  rsi
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
    push                  r10
    push                   r8
    push                  r11
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  r11
     pop                   r8
     pop                  r10
     pop                   r9
     add                   r8,                    1
	jmp	@main.113.@cd.5.IfExit
@main.112.@cd.3.IfFalse:
     sub                  rbx,                    1
     mov                  rdi,                  rbx
     mov                  rsi,                  r13
     mov                  rdx,                   r9
     mov                  rcx,                  r12
    push                   r9
    push                  r10
    push                  rsi
    push                  r11
     sub                  rsp,                    8
 call	cd
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                   r9
    push                  r10
    push                   r8
    push                  rsi
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r9
    push                  r10
    push                   r8
    push                  rsi
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                  rsi
    push                   r9
    push                  r10
    push                   r8
    push                  r11
call	__string_connect__
     pop                  r11
     pop                   r8
     pop                  r10
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
    push                  r10
    push                   r8
    push                  r11
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  r11
     pop                   r8
     pop                  r10
     pop                   r9
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
     mov                  rdx,                  r13
     mov                  rcx,                   r9
    push                  r10
    push                  rsi
    push                  r11
 call	cd
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     add                   r8,                    1
@main.113.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                  r15
    push                  rsi
    push                   r8
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r8
    push                  rsi
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r11
    push                   r8
    push                  r10
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
    push                  r11
call	println
     pop                  r11
     pop                  r10
     pop                   r8
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                  r12,                  r15
     mov                   r9,                  r11
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.116.@cd.4.IfTrue
	jmp	@main.117.@cd.3.IfFalse
@main.116.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                   r8
    push                  rsi
    push                   r9
call	__string_connect__
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r8
    push                   r9
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                  rsi
    push                   r8
    push                   r9
call	__string_connect__
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     add                   r8,                    1
	jmp	@main.118.@cd.5.IfExit
@main.117.@cd.3.IfFalse:
     sub                  rbx,                    1
     mov                  rdi,                  rbx
     mov                  rsi,                  r13
     mov                  rdx,                   r9
     mov                  rcx,                  r12
    push                  rsi
    push                   r9
     sub                  rsp,                    8
 call	cd
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                   r8
    push                   r9
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r8
    push                  rsi
    push                   r9
call	__string_connect__
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                   r8
    push                  rsi
    push                   r9
call	__string_connect__
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
     mov                  rdx,                  r13
     mov                  rcx,                   r9
    push                  rsi
 call	cd
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     add                   r8,                    1
@main.118.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                   r8,                  rsi
     add                   r8,                    1
@main.58.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                  r12,                  rsi
     add                  r12,                    1
@main.28.@cd.5.IfExit:
     mov                  rsi,                  r12
     mov                  r12,                  rsi
     add                  r12,                    1
@main.13.@cd.5.IfExit:
     mov                  rsi,                  r12
     mov                  r12,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,         qword[rbp-8]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbp-24]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rbx,        qword[rbp-32]
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-136],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-144],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-152],                  rcx
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.16.@cd.4.IfTrue
	jmp	@main.17.@cd.3.IfFalse
@main.16.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,       qword[rbp-136]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbp-152]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     add                  r12,                    1
	jmp	@main.18.@cd.5.IfExit
@main.17.@cd.3.IfFalse:
     mov       qword[rbp-160],                  rbx
     mov                  rax,       qword[rbp-160]
     sub                  rax,                    1
     mov       qword[rbp-160],                  rax
     mov                  rbx,       qword[rbp-160]
     mov                  rcx,       qword[rbp-136]
     mov       qword[rbp-168],                  rcx
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-176],                  rcx
     mov                  rcx,       qword[rbp-144]
     mov       qword[rbp-184],                  rcx
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.31.@cd.4.IfTrue
	jmp	@main.32.@cd.3.IfFalse
@main.31.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,       qword[rbp-168]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbp-184]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     add                  r12,                    1
	jmp	@main.33.@cd.5.IfExit
@main.32.@cd.3.IfFalse:
     mov       qword[rbp-192],                  rbx
     mov                  rax,       qword[rbp-192]
     sub                  rax,                    1
     mov       qword[rbp-192],                  rax
     mov                  rbx,       qword[rbp-192]
     mov                  r15,       qword[rbp-168]
     mov                  r14,       qword[rbp-184]
     mov                  r11,       qword[rbp-176]
     mov                   r8,                  r12
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.61.@cd.4.IfTrue
	jmp	@main.62.@cd.3.IfFalse
@main.61.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                  r15
    push                  r11
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
    push                  r11
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r11
    push                   r8
    push                  r11
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                  r11
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  r11
     pop                   r8
     add                   r8,                    1
	jmp	@main.63.@cd.5.IfExit
@main.62.@cd.3.IfFalse:
     mov                  r10,                  rbx
     sub                  r10,                    1
     mov                  rbx,                  r10
     mov                  r13,                  r15
     mov                  r12,                  r11
     mov                   r9,                  r14
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.121.@cd.4.IfTrue
	jmp	@main.122.@cd.3.IfFalse
@main.121.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                  r10
    push                   r8
    push                  rsi
    push                   r9
    push                  r11
call	__string_connect__
     pop                  r11
     pop                   r9
     pop                  rsi
     pop                   r8
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  r10
    push                  rsi
    push                   r8
    push                   r9
    push                  r11
call	__string_connect__
     pop                  r11
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                  r10
    push                  rsi
    push                   r8
    push                   r9
    push                  r11
call	__string_connect__
     pop                  r11
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
    push                   r8
    push                   r9
    push                  r11
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  r11
     pop                   r9
     pop                   r8
     pop                  r10
     add                   r8,                    1
	jmp	@main.123.@cd.5.IfExit
@main.122.@cd.3.IfFalse:
     sub                  rbx,                    1
     mov                  rdi,                  rbx
     mov                  rsi,                  r13
     mov                  rdx,                   r9
     mov                  rcx,                  r12
    push                  r10
    push                   r9
    push                  r11
    push                  rsi
     sub                  rsp,                    8
 call	cd
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                  r10
    push                  rsi
    push                   r8
    push                   r9
    push                  r11
call	__string_connect__
     pop                  r11
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  r10
    push                   r8
    push                  rsi
    push                   r9
    push                  r11
call	__string_connect__
     pop                  r11
     pop                   r9
     pop                  rsi
     pop                   r8
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                  r10
    push                  rsi
    push                   r8
    push                   r9
    push                  r11
call	__string_connect__
     pop                  r11
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
    push                   r8
    push                   r9
    push                  r11
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  r11
     pop                   r9
     pop                   r8
     pop                  r10
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
     mov                  rdx,                  r13
     mov                  rcx,                   r9
    push                  r10
    push                  r11
    push                  rsi
 call	cd
     pop                  rsi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     add                   r8,                    1
@main.123.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                  r15
    push                  r10
    push                  rsi
    push                  r11
    push                   r8
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                   r8
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  r10
    push                  rsi
    push                  r11
    push                   r8
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                   r8
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r11
    push                  r10
    push                  rsi
    push                  r11
    push                   r8
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                   r8
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                   r8
call	println
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                  r12,                  r15
     mov                   r9,                  r11
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.126.@cd.4.IfTrue
	jmp	@main.127.@cd.3.IfFalse
@main.126.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                   r8
    push                   r9
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r8
    push                  rsi
    push                   r9
call	__string_connect__
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                  rsi
    push                   r8
    push                   r9
call	__string_connect__
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     add                   r8,                    1
	jmp	@main.128.@cd.5.IfExit
@main.127.@cd.3.IfFalse:
     sub                  rbx,                    1
     mov                  rdi,                  rbx
     mov                  rsi,                  r13
     mov                  rdx,                   r9
     mov                  rcx,                  r12
    push                  rsi
    push                   r9
     sub                  rsp,                    8
 call	cd
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                   r8
    push                  rsi
    push                   r9
call	__string_connect__
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
    push                   r8
    push                   r9
call	__string_connect__
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                  rsi
    push                   r8
    push                   r9
call	__string_connect__
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
     mov                  rdx,                  r13
     mov                  rcx,                   r9
    push                  rsi
 call	cd
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     add                   r8,                    1
@main.128.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                   r8,                  rsi
     add                   r8,                    1
@main.63.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                  r12,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,       qword[rbp-168]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbp-184]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rbx,       qword[rbp-192]
     mov                  r15,       qword[rbp-176]
     mov                  r14,       qword[rbp-168]
     mov                  r11,       qword[rbp-184]
     mov                   r8,                  r12
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.66.@cd.4.IfTrue
	jmp	@main.67.@cd.3.IfFalse
@main.66.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                  r15
    push                   r8
    push                  r11
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r8
    push                  r11
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r11
    push                   r8
    push                  rsi
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                  r11
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  r11
     pop                   r8
     add                   r8,                    1
	jmp	@main.68.@cd.5.IfExit
@main.67.@cd.3.IfFalse:
     mov                  r10,                  rbx
     sub                  r10,                    1
     mov                  rbx,                  r10
     mov                  r13,                  r15
     mov                  r12,                  r11
     mov                   r9,                  r14
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.131.@cd.4.IfTrue
	jmp	@main.132.@cd.3.IfFalse
@main.131.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                   r9
    push                   r8
    push                  r10
    push                  rsi
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r9
    push                   r8
    push                  r10
    push                  rsi
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                   r9
    push                   r8
    push                  rsi
    push                  r10
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r8
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
     add                   r8,                    1
	jmp	@main.133.@cd.5.IfExit
@main.132.@cd.3.IfFalse:
     sub                  rbx,                    1
     mov                  rdi,                  rbx
     mov                  rsi,                  r13
     mov                  rdx,                   r9
     mov                  rcx,                  r12
    push                   r9
    push                  r10
    push                  rsi
    push                  r11
     sub                  rsp,                    8
 call	cd
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                  rsi
    push                   r9
    push                   r8
    push                  r10
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r9
    push                   r8
    push                  r10
    push                  rsi
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                   r9
    push                   r8
    push                  r10
    push                  rsi
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  rsi
     pop                  r10
     pop                   r8
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
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
     mov                  rdx,                  r13
     mov                  rcx,                   r9
    push                  r10
    push                  rsi
    push                  r11
 call	cd
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     add                   r8,                    1
@main.133.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                  r15
    push                   r8
    push                  r10
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r8
    push                  rsi
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r11
    push                   r8
    push                  r10
    push                  r11
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                  r11
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
    push                  r11
call	println
     pop                  r11
     pop                  r10
     pop                   r8
     mov                  rbx,                  r10
     mov                  r13,                  r14
     mov                  r12,                  r15
     mov                   r9,                  r11
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.136.@cd.4.IfTrue
	jmp	@main.137.@cd.3.IfFalse
@main.136.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                   r8
    push                   r9
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r8
    push                   r9
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                   r8
    push                   r9
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     add                   r8,                    1
	jmp	@main.138.@cd.5.IfExit
@main.137.@cd.3.IfFalse:
     sub                  rbx,                    1
     mov                  rdi,                  rbx
     mov                  rsi,                  r13
     mov                  rdx,                   r9
     mov                  rcx,                  r12
    push                   r9
    push                  rsi
     sub                  rsp,                    8
 call	cd
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                   r8
    push                   r9
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
    push                   r8
    push                   r9
call	__string_connect__
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                   r8
    push                   r9
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
     mov                  rdx,                  r13
     mov                  rcx,                   r9
    push                  rsi
 call	cd
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     add                   r8,                    1
@main.138.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                   r8,                  rsi
     add                   r8,                    1
@main.68.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                  r12,                  rsi
     add                  r12,                    1
@main.33.@cd.5.IfExit:
     mov                  rsi,                  r12
     mov                  r12,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,       qword[rbp-136]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbp-152]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rbx,       qword[rbp-160]
     mov                  rcx,       qword[rbp-144]
     mov       qword[rbp-200],                  rcx
     mov                  rcx,       qword[rbp-136]
     mov       qword[rbp-208],                  rcx
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-216],                  rcx
     mov                   r8,                  r12
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.36.@cd.4.IfTrue
	jmp	@main.37.@cd.3.IfFalse
@main.36.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,       qword[rbp-200]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbp-216]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
call	println
     pop                   r8
     add                   r8,                    1
	jmp	@main.38.@cd.5.IfExit
@main.37.@cd.3.IfFalse:
     mov       qword[rbp-224],                  rbx
     mov                  rax,       qword[rbp-224]
     sub                  rax,                    1
     mov       qword[rbp-224],                  rax
     mov                  rbx,       qword[rbp-224]
     mov                  r15,       qword[rbp-200]
     mov                  r14,       qword[rbp-216]
     mov                  r11,       qword[rbp-208]
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.71.@cd.4.IfTrue
	jmp	@main.72.@cd.3.IfFalse
@main.71.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                  r15
    push                  r11
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  r11
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r11
    push                  r11
    push                  rsi
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r11
    push                   r8
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r8
     pop                  r11
     add                   r8,                    1
	jmp	@main.73.@cd.5.IfExit
@main.72.@cd.3.IfFalse:
     mov                  r10,                  rbx
     sub                  r10,                    1
     mov                  rbx,                  r10
     mov                  r13,                  r15
     mov                  r12,                  r11
     mov                   r9,                  r14
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.141.@cd.4.IfTrue
	jmp	@main.142.@cd.3.IfFalse
@main.141.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                   r8
    push                  r11
    push                   r9
    push                  r10
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                  r10
     pop                   r9
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r8
    push                  r11
    push                  rsi
    push                   r9
    push                  r10
call	__string_connect__
     pop                  r10
     pop                   r9
     pop                  rsi
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                   r8
    push                  r11
    push                   r9
    push                  r10
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                  r10
     pop                   r9
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                  r11
    push                   r9
    push                  r10
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  r10
     pop                   r9
     pop                  r11
     pop                   r8
     add                   r8,                    1
	jmp	@main.143.@cd.5.IfExit
@main.142.@cd.3.IfFalse:
     sub                  rbx,                    1
     mov                  rdi,                  rbx
     mov                  rsi,                  r13
     mov                  rdx,                   r9
     mov                  rcx,                  r12
    push                  r11
    push                  rsi
    push                   r9
    push                  r10
     sub                  rsp,                    8
 call	cd
     add                  rsp,                    8
     pop                  r10
     pop                   r9
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                   r8
    push                  r11
    push                   r9
    push                  r10
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                  r10
     pop                   r9
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r8
    push                  r11
    push                   r9
    push                  r10
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                  r10
     pop                   r9
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                   r8
    push                  r11
    push                   r9
    push                  r10
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                  r10
     pop                   r9
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                  r11
    push                   r9
    push                  r10
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  r10
     pop                   r9
     pop                  r11
     pop                   r8
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
     mov                  rdx,                  r13
     mov                  rcx,                   r9
    push                  r11
    push                  r10
    push                  rsi
 call	cd
     pop                  rsi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     add                   r8,                    1
@main.143.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                  r15
    push                  r11
    push                  r10
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  r11
    push                  r10
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r11
    push                  r11
    push                  r10
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
    push                   r8
call	println
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rdi,                  r10
     mov                  rsi,                  r14
     mov                  rdx,                  r15
     mov                  rcx,                  r11
    push                  rsi
 call	cd
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     add                   r8,                    1
@main.73.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,       qword[rbp-200]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbp-216]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
call	println
     pop                   r8
     mov                  rbx,       qword[rbp-224]
     mov                  r13,       qword[rbp-208]
     mov                  r12,       qword[rbp-200]
     mov                   r9,       qword[rbp-216]
     cmp                  rbx,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.76.@cd.4.IfTrue
	jmp	@main.77.@cd.3.IfFalse
@main.76.@cd.4.IfTrue:
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                   r8
    push                   r9
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r8
    push                   r9
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                   r8
    push                   r9
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     add                   r8,                    1
	jmp	@main.78.@cd.5.IfExit
@main.77.@cd.3.IfFalse:
     sub                  rbx,                    1
     mov                  rdi,                  rbx
     mov                  rsi,                  r13
     mov                  rdx,                   r9
     mov                  rcx,                  r12
    push                   r9
    push                  rsi
     sub                  rsp,                    8
 call	cd
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rdi,         __const_str0
     mov                  rsi,                  r13
    push                   r8
    push                   r9
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                   r8
    push                  rsi
    push                   r9
call	__string_connect__
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
    push                   r8
    push                  rsi
    push                   r9
call	__string_connect__
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
     mov                  rdx,                  r13
     mov                  rcx,                   r9
    push                  rsi
 call	cd
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     add                   r8,                    1
@main.78.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                   r8,                  rsi
     add                   r8,                    1
@main.38.@cd.5.IfExit:
     mov                  rsi,                   r8
     mov                  r12,                  rsi
     add                  r12,                    1
@main.18.@cd.5.IfExit:
     mov                  rsi,                  r12
     mov                  r12,                  rsi
     add                  r12,                    1
@main.8.@cd.5.IfExit:
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
    push                  rsi
call	toString
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rax,                    0
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     pop                  rbx
     add                  rsp,                  224
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



