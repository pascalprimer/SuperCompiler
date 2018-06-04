  global                 main
  extern	malloc


 section                .text
shift_l:
    push                  rbp
     mov                  rbp,                  rsp
@shift_l.1.enter:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     mov                  rdi,                  rdi
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                   r8,                65535
     mov                  rsi,                65535
@shift_l.5.@hilo.1.enter:
     mov                   r8,                   r8
     shl                   r8,                   16
     mov                  rsi,                  rsi
      or                  rsi,                   r8
     mov                  rsi,                  rsi
	jmp	@shift_l.4.@hilo.2.exit
@shift_l.4.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  rdi
     and                  rdi,                  rsi
     mov                  rax,                  rdi
	jmp	@shift_l.2.exit
@shift_l.2.exit:
     pop                  rbp
     ret
hilo:
    push                  rbp
     mov                  rbp,                  rsp
@hilo.1.enter:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  rsi,                  rsi
      or                  rsi,                  rdi
     mov                  rax,                  rsi
	jmp	@hilo.2.exit
@hilo.2.exit:
     pop                  rbp
     ret
int2chr:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
    push                  r12
    push                  rbx
@int2chr.1.enter:
     mov                  rsi,                  rdi
     cmp                  rsi,                   32
     mov                  rbx,                    0
   setge                   bl
     cmp                  rbx,                    0
	je	@int2chr.6.cmp_and
     cmp                  rsi,                  126
     mov                  rbx,                    0
   setle                   bl
     cmp                  rbx,                    0
@int2chr.6.cmp_and:
     mov                  rbx,                    0
   setne                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@int2chr.4.IfTrue
	jmp	@int2chr.3.IfFalse
@int2chr.4.IfTrue:
     mov                  rbx,                  rsi
     sub                  rbx,                   32
     mov                  r12,                  rsi
     sub                  r12,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  r12
    push                  rsi
call	__substring__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
	jmp	@int2chr.2.exit
	jmp	@int2chr.5.IfExit
@int2chr.3.IfFalse:
@int2chr.5.IfExit:
     mov                  rax,         __const_str0
	jmp	@int2chr.2.exit
@int2chr.2.exit:
     pop                  rbx
     pop                  r12
     add                  rsp,                    8
     pop                  rbp
     ret
assert:
    push                  rbp
     mov                  rbp,                  rsp
@assert.1.enter:
     mov                  rsi,                  rdi
     mov                  rsi,                  rsi
     xor                  rsi,                    1
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@assert.4.IfTrue
	jmp	@assert.3.IfFalse
@assert.4.IfTrue:
     mov                  rdi,         __const_str1
call	println
	jmp	@assert.5.IfExit
@assert.3.IfFalse:
@assert.5.IfExit:
@assert.2.exit:
     pop                  rbp
     ret
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
     mov   qword[@asciiTable],         __const_str3
     add                  rsp,                    8
     pop                  rbp
     ret
shift_r:
    push                  rbp
     mov                  rbp,                  rsp
@shift_r.1.enter:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     mov                   r9,                32767
     mov                   r8,                65535
@shift_r.5.@hilo.1.enter:
     mov                   r9,                   r9
     shl                   r9,                   16
     mov                   r8,                   r8
      or                   r8,                   r9
     mov                   r8,                   r8
	jmp	@shift_r.4.@hilo.2.exit
@shift_r.4.@hilo.2.exit:
     mov                   r8,                   r8
     mov                   r8,                   r8
     mov                   r8,                   r8
     mov                  rcx,                  rsi
     shr                   r8,                   cl
     mov                   r8,                   r8
     shl                   r8,                    1
     mov                   r8,                   r8
     add                   r8,                    1
     mov                   r8,                   r8
     mov                  rdi,                  rdi
     mov                  rcx,                  rsi
     shr                  rdi,                   cl
     mov                  rsi,                   r8
     and                  rsi,                  rdi
     mov                   r8,                  rsi
     mov                  rdi,                65535
     mov                  rsi,                65535
@shift_r.7.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  rsi,                  rsi
      or                  rsi,                  rdi
     mov                  rsi,                  rsi
	jmp	@shift_r.6.@hilo.2.exit
@shift_r.6.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rax,                  rdi
	jmp	@shift_r.2.exit
@shift_r.2.exit:
     pop                  rbp
     ret
xorshift:
    push                  rbp
     mov                  rbp,                  rsp
@xorshift.1.enter:
     mov                  rsi,                  rdi
     mov                  rsi,                  rsi
     mov                   r8,                  rsi
     mov                  rdi,                   13
@xorshift.5.@shift_l.1.enter:
     mov                   r8,                   r8
     mov                  rcx,                  rdi
     shl                   r8,                   cl
     mov                  rdi,                65535
     mov                   r9,                65535
@xorshift.6.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                   r9,                   r9
      or                   r9,                  rdi
     mov                  rdi,                   r9
	jmp	@xorshift.7.@shift_l.4.@hilo.2.exit
@xorshift.7.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                   r8,                   r8
     and                   r8,                  rdi
     mov                  rdi,                   r8
	jmp	@xorshift.4.@shift_l.2.exit
@xorshift.4.@shift_l.2.exit:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     xor                  rsi,                  rdi
     mov                  rsi,                  rsi
     mov                   r8,                  rsi
     mov                  rdi,                   17
@xorshift.9.@shift_r.1.enter:
     mov                   r9,                32767
     mov                  r10,                65535
@xorshift.10.@shift_r.5.@hilo.1.enter:
     mov                   r9,                   r9
     shl                   r9,                   16
     mov                  r10,                  r10
      or                  r10,                   r9
     mov                   r9,                  r10
	jmp	@xorshift.11.@shift_r.4.@hilo.2.exit
@xorshift.11.@shift_r.4.@hilo.2.exit:
     mov                   r9,                   r9
     mov                   r9,                   r9
     mov                   r9,                   r9
     mov                  rcx,                  rdi
     shr                   r9,                   cl
     mov                   r9,                   r9
     shl                   r9,                    1
     mov                   r9,                   r9
     add                   r9,                    1
     mov                   r9,                   r9
     mov                   r8,                   r8
     mov                  rcx,                  rdi
     shr                   r8,                   cl
     mov                  rdi,                   r9
     and                  rdi,                   r8
     mov                   r9,                  rdi
     mov                  rdi,                65535
     mov                   r8,                65535
@xorshift.12.@shift_r.7.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                   r8,                   r8
      or                   r8,                  rdi
     mov                  rdi,                   r8
	jmp	@xorshift.13.@shift_r.6.@hilo.2.exit
@xorshift.13.@shift_r.6.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                   r8,                   r9
     and                   r8,                  rdi
     mov                  rdi,                   r8
	jmp	@xorshift.8.@shift_r.2.exit
@xorshift.8.@shift_r.2.exit:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     xor                  rsi,                  rdi
     mov                  rsi,                  rsi
     mov                   r8,                  rsi
     mov                  rdi,                    5
@xorshift.15.@shift_l.1.enter:
     mov                   r8,                   r8
     mov                  rcx,                  rdi
     shl                   r8,                   cl
     mov                  rdi,                65535
     mov                   r9,                65535
@xorshift.16.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                   r9,                   r9
      or                   r9,                  rdi
     mov                  rdi,                   r9
	jmp	@xorshift.17.@shift_l.4.@hilo.2.exit
@xorshift.17.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                   r8,                   r8
     and                   r8,                  rdi
     mov                  rdi,                   r8
	jmp	@xorshift.14.@shift_l.2.exit
@xorshift.14.@shift_l.2.exit:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     xor                  rsi,                  rdi
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
	jmp	@xorshift.2.exit
@xorshift.2.exit:
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                  192
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
     mov                  rsi,                  rsi
     mov         qword[rbp-8],                  rsi
    push                  rsi
call	getInt
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
    push                  rsi
call	getInt
     pop                  rsi
     mov                  rbx,                  rax
     mov                  rbx,                  rbx
     mov                  rbx,                  rbx
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
call	getInt
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov        qword[rbp-16],                  rdi
     mov                  rdi,         qword[rbp-8]
     add                  rdi,                    1
     mov                  rdi,                  rdi
@main.18.@xorshift10.1.enter:
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                  rdi
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                  rdi
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
	jmp	@main.17.@xorshift10.2.exit
@main.17.@xorshift10.2.exit:
     mov                  rdi,                  rdi
     mov         qword[rbp-8],                  rdi
     mov                  r12,                32767
     mov                  rdi,                65535
@main.20.@hilo.1.enter:
     mov                  r12,                  r12
     shl                  r12,                   16
     mov                  rdi,                  rdi
      or                  rdi,                  r12
     mov                  rdi,                  rdi
	jmp	@main.19.@hilo.2.exit
@main.19.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov        qword[rbp-24],                  rdi
     mov                   r8,                    0
     mov                  r13,                    0
     mov                   r9,                    0
     mov                  r14,                    0
     mov                  rdi,                    0
     mov                  rsi,                  rsi
	jmp	@main.5.ForCon
@main.4.ForBody:
     mov                  rdi,         qword[rbp-8]
@main.22.@xorshift.1.enter:
     mov                  r15,                  rdi
     mov                  rdi,                  r15
     mov                  r12,                   13
@main.23.@xorshift.5.@shift_l.1.enter:
     mov                  r10,                  rdi
     mov                  rcx,                  r12
     shl                  r10,                   cl
     mov                  rdi,                65535
     mov                  r12,                65535
@main.24.@xorshift.6.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  r12,                  r12
      or                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.25.@xorshift.7.@shift_l.4.@hilo.2.exit
@main.25.@xorshift.7.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r10
     and                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.26.@xorshift.4.@shift_l.2.exit
@main.26.@xorshift.4.@shift_l.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r15
     xor                  r12,                  rdi
     mov                  r15,                  r12
     mov                  rdi,                  r15
     mov                  r10,                   17
@main.27.@xorshift.9.@shift_r.1.enter:
     mov                  r12,                32767
     mov                  r11,                65535
@main.28.@xorshift.10.@shift_r.5.@hilo.1.enter:
     mov                  r12,                  r12
     shl                  r12,                   16
     mov                  r11,                  r11
      or                  r11,                  r12
     mov                  r12,                  r11
	jmp	@main.29.@xorshift.11.@shift_r.4.@hilo.2.exit
@main.29.@xorshift.11.@shift_r.4.@hilo.2.exit:
     mov                  r12,                  r12
     mov                  r12,                  r12
     mov                  r12,                  r12
     mov                  rcx,                  r10
     shr                  r12,                   cl
     mov                  r12,                  r12
     shl                  r12,                    1
     mov                  r12,                  r12
     add                  r12,                    1
     mov                  r12,                  r12
     mov                  rdi,                  rdi
     mov                  rcx,                  r10
     shr                  rdi,                   cl
     mov                  r12,                  r12
     and                  r12,                  rdi
     mov                  r12,                  r12
     mov                  rdi,                65535
     mov                  r10,                65535
@main.30.@xorshift.12.@shift_r.7.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  r10,                  r10
      or                  r10,                  rdi
     mov                  rdi,                  r10
	jmp	@main.31.@xorshift.13.@shift_r.6.@hilo.2.exit
@main.31.@xorshift.13.@shift_r.6.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r12
     and                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.32.@xorshift.8.@shift_r.2.exit
@main.32.@xorshift.8.@shift_r.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r15
     xor                  r12,                  rdi
     mov                  r15,                  r12
     mov                  rdi,                  r15
     mov                  r12,                    5
@main.33.@xorshift.15.@shift_l.1.enter:
     mov                  r10,                  rdi
     mov                  rcx,                  r12
     shl                  r10,                   cl
     mov                  rdi,                65535
     mov                  r12,                65535
@main.34.@xorshift.16.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  r12,                  r12
      or                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.35.@xorshift.17.@shift_l.4.@hilo.2.exit
@main.35.@xorshift.17.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r10
     and                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.36.@xorshift.14.@shift_l.2.exit
@main.36.@xorshift.14.@shift_l.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r15
     xor                  r12,                  rdi
     mov                  r15,                  r12
     mov                  rdi,                  r15
	jmp	@main.21.@xorshift.2.exit
@main.21.@xorshift.2.exit:
     mov                  rdi,                  rdi
     mov         qword[rbp-8],                  rdi
     mov                  rdi,         qword[rbp-8]
     and                  rdi,        qword[rbp-24]
     mov        qword[rbp-32],                  rdi
     mov                  rdi,         qword[rbp-8]
@main.38.@xorshift.1.enter:
     mov                  r15,                  rdi
     mov                  rdi,                  r15
     mov                  r12,                   13
@main.39.@xorshift.5.@shift_l.1.enter:
     mov                  rdi,                  rdi
     mov                  rcx,                  r12
     shl                  rdi,                   cl
     mov                  r12,                65535
     mov                  r10,                65535
@main.40.@xorshift.6.@shift_l.5.@hilo.1.enter:
     mov                  r12,                  r12
     shl                  r12,                   16
     mov                  r10,                  r10
      or                  r10,                  r12
     mov                  r12,                  r10
	jmp	@main.41.@xorshift.7.@shift_l.4.@hilo.2.exit
@main.41.@xorshift.7.@shift_l.4.@hilo.2.exit:
     mov                  r12,                  r12
     mov                  rdi,                  rdi
     and                  rdi,                  r12
     mov                  rdi,                  rdi
	jmp	@main.42.@xorshift.4.@shift_l.2.exit
@main.42.@xorshift.4.@shift_l.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r15
     xor                  r12,                  rdi
     mov                  r15,                  r12
     mov                  rdi,                  r15
     mov                  r12,                   17
@main.43.@xorshift.9.@shift_r.1.enter:
     mov                  r10,                32767
     mov                  r11,                65535
@main.44.@xorshift.10.@shift_r.5.@hilo.1.enter:
     mov                  r10,                  r10
     shl                  r10,                   16
     mov                  r11,                  r11
      or                  r11,                  r10
     mov                  r10,                  r11
	jmp	@main.45.@xorshift.11.@shift_r.4.@hilo.2.exit
@main.45.@xorshift.11.@shift_r.4.@hilo.2.exit:
     mov                  r10,                  r10
     mov                  r10,                  r10
     mov                  r10,                  r10
     mov                  rcx,                  r12
     shr                  r10,                   cl
     mov                  r10,                  r10
     shl                  r10,                    1
     mov                  r10,                  r10
     add                  r10,                    1
     mov                  r10,                  r10
     mov                  rdi,                  rdi
     mov                  rcx,                  r12
     shr                  rdi,                   cl
     mov                  r12,                  r10
     and                  r12,                  rdi
     mov                  r10,                  r12
     mov                  rdi,                65535
     mov                  r12,                65535
@main.46.@xorshift.12.@shift_r.7.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  r12,                  r12
      or                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.47.@xorshift.13.@shift_r.6.@hilo.2.exit
@main.47.@xorshift.13.@shift_r.6.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r10
     and                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.48.@xorshift.8.@shift_r.2.exit
@main.48.@xorshift.8.@shift_r.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r15
     xor                  r12,                  rdi
     mov                  r15,                  r12
     mov                  rdi,                  r15
     mov                  r12,                    5
@main.49.@xorshift.15.@shift_l.1.enter:
     mov                  rdi,                  rdi
     mov                  rcx,                  r12
     shl                  rdi,                   cl
     mov                  r12,                65535
     mov                  r10,                65535
@main.50.@xorshift.16.@shift_l.5.@hilo.1.enter:
     mov                  r12,                  r12
     shl                  r12,                   16
     mov                  r10,                  r10
      or                  r10,                  r12
     mov                  r12,                  r10
	jmp	@main.51.@xorshift.17.@shift_l.4.@hilo.2.exit
@main.51.@xorshift.17.@shift_l.4.@hilo.2.exit:
     mov                  r12,                  r12
     mov                  rdi,                  rdi
     and                  rdi,                  r12
     mov                  rdi,                  rdi
	jmp	@main.52.@xorshift.14.@shift_l.2.exit
@main.52.@xorshift.14.@shift_l.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r15
     xor                  r12,                  rdi
     mov                  r15,                  r12
     mov                  rdi,                  r15
	jmp	@main.37.@xorshift.2.exit
@main.37.@xorshift.2.exit:
     mov                  rdi,                  rdi
     mov         qword[rbp-8],                  rdi
     mov                  rdi,         qword[rbp-8]
     and                  rdi,        qword[rbp-24]
     mov        qword[rbp-40],                  rdi
     mov                  rdi,         qword[rbp-8]
@main.54.@xorshift.1.enter:
     mov                  r15,                  rdi
     mov                  rdi,                  r15
     mov                  r12,                   13
@main.55.@xorshift.5.@shift_l.1.enter:
     mov                  rdi,                  rdi
     mov                  rcx,                  r12
     shl                  rdi,                   cl
     mov                  r12,                65535
     mov                  r10,                65535
@main.56.@xorshift.6.@shift_l.5.@hilo.1.enter:
     mov                  r12,                  r12
     shl                  r12,                   16
     mov                  r10,                  r10
      or                  r10,                  r12
     mov                  r12,                  r10
	jmp	@main.57.@xorshift.7.@shift_l.4.@hilo.2.exit
@main.57.@xorshift.7.@shift_l.4.@hilo.2.exit:
     mov                  r12,                  r12
     mov                  rdi,                  rdi
     and                  rdi,                  r12
     mov                  rdi,                  rdi
	jmp	@main.58.@xorshift.4.@shift_l.2.exit
@main.58.@xorshift.4.@shift_l.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r15
     xor                  r12,                  rdi
     mov                  r15,                  r12
     mov                  rdi,                  r15
     mov                  r10,                   17
@main.59.@xorshift.9.@shift_r.1.enter:
     mov                  r12,                32767
     mov                  r11,                65535
@main.60.@xorshift.10.@shift_r.5.@hilo.1.enter:
     mov                  r12,                  r12
     shl                  r12,                   16
     mov                  r11,                  r11
      or                  r11,                  r12
     mov                  r12,                  r11
	jmp	@main.61.@xorshift.11.@shift_r.4.@hilo.2.exit
@main.61.@xorshift.11.@shift_r.4.@hilo.2.exit:
     mov                  r12,                  r12
     mov                  r12,                  r12
     mov                  r12,                  r12
     mov                  rcx,                  r10
     shr                  r12,                   cl
     mov                  r12,                  r12
     shl                  r12,                    1
     mov                  r12,                  r12
     add                  r12,                    1
     mov                  r12,                  r12
     mov                  rdi,                  rdi
     mov                  rcx,                  r10
     shr                  rdi,                   cl
     mov                  r12,                  r12
     and                  r12,                  rdi
     mov                  r12,                  r12
     mov                  rdi,                65535
     mov                  r10,                65535
@main.62.@xorshift.12.@shift_r.7.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  r10,                  r10
      or                  r10,                  rdi
     mov                  rdi,                  r10
	jmp	@main.63.@xorshift.13.@shift_r.6.@hilo.2.exit
@main.63.@xorshift.13.@shift_r.6.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r12
     and                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.64.@xorshift.8.@shift_r.2.exit
@main.64.@xorshift.8.@shift_r.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r15
     xor                  r12,                  rdi
     mov                  r15,                  r12
     mov                  rdi,                  r15
     mov                  r12,                    5
@main.65.@xorshift.15.@shift_l.1.enter:
     mov                  r10,                  rdi
     mov                  rcx,                  r12
     shl                  r10,                   cl
     mov                  rdi,                65535
     mov                  r12,                65535
@main.66.@xorshift.16.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  r12,                  r12
      or                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.67.@xorshift.17.@shift_l.4.@hilo.2.exit
@main.67.@xorshift.17.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r10
     and                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.68.@xorshift.14.@shift_l.2.exit
@main.68.@xorshift.14.@shift_l.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r15
     xor                  r12,                  rdi
     mov                  r15,                  r12
     mov                  rdi,                  r15
	jmp	@main.53.@xorshift.2.exit
@main.53.@xorshift.2.exit:
     mov                  rdi,                  rdi
     mov         qword[rbp-8],                  rdi
     mov                  rdi,         qword[rbp-8]
     and                  rdi,        qword[rbp-24]
     mov        qword[rbp-48],                  rdi
     mov                  rdi,         qword[rbp-8]
@main.70.@xorshift.1.enter:
     mov                  r15,                  rdi
     mov                  rdi,                  r15
     mov                  r12,                   13
@main.71.@xorshift.5.@shift_l.1.enter:
     mov                  r10,                  rdi
     mov                  rcx,                  r12
     shl                  r10,                   cl
     mov                  rdi,                65535
     mov                  r12,                65535
@main.72.@xorshift.6.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  r12,                  r12
      or                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.73.@xorshift.7.@shift_l.4.@hilo.2.exit
@main.73.@xorshift.7.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r10
     and                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.74.@xorshift.4.@shift_l.2.exit
@main.74.@xorshift.4.@shift_l.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r15
     xor                  r12,                  rdi
     mov                  r15,                  r12
     mov                  rdi,                  r15
     mov                  r12,                   17
@main.75.@xorshift.9.@shift_r.1.enter:
     mov                  r10,                32767
     mov                  r11,                65535
@main.76.@xorshift.10.@shift_r.5.@hilo.1.enter:
     mov                  r10,                  r10
     shl                  r10,                   16
     mov                  r11,                  r11
      or                  r11,                  r10
     mov                  r10,                  r11
	jmp	@main.77.@xorshift.11.@shift_r.4.@hilo.2.exit
@main.77.@xorshift.11.@shift_r.4.@hilo.2.exit:
     mov                  r10,                  r10
     mov                  r10,                  r10
     mov                  r10,                  r10
     mov                  rcx,                  r12
     shr                  r10,                   cl
     mov                  r10,                  r10
     shl                  r10,                    1
     mov                  r10,                  r10
     add                  r10,                    1
     mov                  r10,                  r10
     mov                  rdi,                  rdi
     mov                  rcx,                  r12
     shr                  rdi,                   cl
     mov                  r12,                  r10
     and                  r12,                  rdi
     mov                  r10,                  r12
     mov                  rdi,                65535
     mov                  r12,                65535
@main.78.@xorshift.12.@shift_r.7.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  r12,                  r12
      or                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.79.@xorshift.13.@shift_r.6.@hilo.2.exit
@main.79.@xorshift.13.@shift_r.6.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r10
     and                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.80.@xorshift.8.@shift_r.2.exit
@main.80.@xorshift.8.@shift_r.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r15
     xor                  r12,                  rdi
     mov                  r15,                  r12
     mov                  rdi,                  r15
     mov                  r12,                    5
@main.81.@xorshift.15.@shift_l.1.enter:
     mov                  r10,                  rdi
     mov                  rcx,                  r12
     shl                  r10,                   cl
     mov                  rdi,                65535
     mov                  r12,                65535
@main.82.@xorshift.16.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  r12,                  r12
      or                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.83.@xorshift.17.@shift_l.4.@hilo.2.exit
@main.83.@xorshift.17.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r10
     and                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.84.@xorshift.14.@shift_l.2.exit
@main.84.@xorshift.14.@shift_l.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r15
     xor                  r12,                  rdi
     mov                  r15,                  r12
     mov                  rdi,                  r15
	jmp	@main.69.@xorshift.2.exit
@main.69.@xorshift.2.exit:
     mov                  rdi,                  rdi
     mov         qword[rbp-8],                  rdi
     mov                  rdi,         qword[rbp-8]
     and                  rdi,        qword[rbp-24]
     mov                  r11,                  rdi
     mov                  rdi,         qword[rbp-8]
@main.86.@xorshift.1.enter:
     mov                  r15,                  rdi
     mov                  rdi,                  r15
     mov                  r12,                   13
@main.87.@xorshift.5.@shift_l.1.enter:
     mov                  r10,                  rdi
     mov                  rcx,                  r12
     shl                  r10,                   cl
     mov                  rdi,                65535
     mov                  r12,                65535
@main.88.@xorshift.6.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  r12,                  r12
      or                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.89.@xorshift.7.@shift_l.4.@hilo.2.exit
@main.89.@xorshift.7.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r10
     and                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.90.@xorshift.4.@shift_l.2.exit
@main.90.@xorshift.4.@shift_l.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r15
     xor                  r12,                  rdi
     mov                  r15,                  r12
     mov                  rdi,                  r15
     mov                  r12,                   17
@main.91.@xorshift.9.@shift_r.1.enter:
     mov                  r10,                32767
     mov        qword[rbp-56],                65535
@main.92.@xorshift.10.@shift_r.5.@hilo.1.enter:
     mov                  r10,                  r10
     shl                  r10,                   16
     mov                  rcx,        qword[rbp-56]
     mov        qword[rbp-64],                  rcx
     mov                  rax,        qword[rbp-64]
      or                  rax,                  r10
     mov        qword[rbp-64],                  rax
     mov                  r10,        qword[rbp-64]
	jmp	@main.93.@xorshift.11.@shift_r.4.@hilo.2.exit
@main.93.@xorshift.11.@shift_r.4.@hilo.2.exit:
     mov                  r10,                  r10
     mov                  r10,                  r10
     mov                  r10,                  r10
     mov                  rcx,                  r12
     shr                  r10,                   cl
     mov                  r10,                  r10
     shl                  r10,                    1
     mov                  r10,                  r10
     add                  r10,                    1
     mov                  r10,                  r10
     mov                  rdi,                  rdi
     mov                  rcx,                  r12
     shr                  rdi,                   cl
     mov                  r12,                  r10
     and                  r12,                  rdi
     mov                  r10,                  r12
     mov                  rdi,                65535
     mov                  r12,                65535
@main.94.@xorshift.12.@shift_r.7.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  r12,                  r12
      or                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.95.@xorshift.13.@shift_r.6.@hilo.2.exit
@main.95.@xorshift.13.@shift_r.6.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r10
     and                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.96.@xorshift.8.@shift_r.2.exit
@main.96.@xorshift.8.@shift_r.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r15
     xor                  r12,                  rdi
     mov                  r15,                  r12
     mov                  rdi,                  r15
     mov                  r12,                    5
@main.97.@xorshift.15.@shift_l.1.enter:
     mov                  r10,                  rdi
     mov                  rcx,                  r12
     shl                  r10,                   cl
     mov                  rdi,                65535
     mov                  r12,                65535
@main.98.@xorshift.16.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  r12,                  r12
      or                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.99.@xorshift.17.@shift_l.4.@hilo.2.exit
@main.99.@xorshift.17.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r10
     and                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.100.@xorshift.14.@shift_l.2.exit
@main.100.@xorshift.14.@shift_l.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r15
     xor                  r12,                  rdi
     mov                  r15,                  r12
     mov                  rdi,                  r15
	jmp	@main.85.@xorshift.2.exit
@main.85.@xorshift.2.exit:
     mov                  rdi,                  rdi
     mov         qword[rbp-8],                  rdi
     mov                  rdi,         qword[rbp-8]
     and                  rdi,        qword[rbp-24]
     mov        qword[rbp-72],                  rdi
     mov                  rdi,         qword[rbp-8]
@main.102.@xorshift.1.enter:
     mov                  r15,                  rdi
     mov                  rdi,                  r15
     mov                  r12,                   13
@main.103.@xorshift.5.@shift_l.1.enter:
     mov                  rdi,                  rdi
     mov                  rcx,                  r12
     shl                  rdi,                   cl
     mov                  r12,                65535
     mov                  r10,                65535
@main.104.@xorshift.6.@shift_l.5.@hilo.1.enter:
     mov                  r12,                  r12
     shl                  r12,                   16
     mov                  r10,                  r10
      or                  r10,                  r12
     mov                  r12,                  r10
	jmp	@main.105.@xorshift.7.@shift_l.4.@hilo.2.exit
@main.105.@xorshift.7.@shift_l.4.@hilo.2.exit:
     mov                  r12,                  r12
     mov                  rdi,                  rdi
     and                  rdi,                  r12
     mov                  rdi,                  rdi
	jmp	@main.106.@xorshift.4.@shift_l.2.exit
@main.106.@xorshift.4.@shift_l.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r15
     xor                  r12,                  rdi
     mov                  r15,                  r12
     mov                  rdi,                  r15
     mov                  r10,                   17
@main.107.@xorshift.9.@shift_r.1.enter:
     mov                  r12,                32767
     mov        qword[rbp-80],                65535
@main.108.@xorshift.10.@shift_r.5.@hilo.1.enter:
     mov                  r12,                  r12
     shl                  r12,                   16
     mov                  rcx,        qword[rbp-80]
     mov        qword[rbp-88],                  rcx
     mov                  rax,        qword[rbp-88]
      or                  rax,                  r12
     mov        qword[rbp-88],                  rax
     mov                  r12,        qword[rbp-88]
	jmp	@main.109.@xorshift.11.@shift_r.4.@hilo.2.exit
@main.109.@xorshift.11.@shift_r.4.@hilo.2.exit:
     mov                  r12,                  r12
     mov                  r12,                  r12
     mov                  r12,                  r12
     mov                  rcx,                  r10
     shr                  r12,                   cl
     mov                  r12,                  r12
     shl                  r12,                    1
     mov                  r12,                  r12
     add                  r12,                    1
     mov                  r12,                  r12
     mov                  rdi,                  rdi
     mov                  rcx,                  r10
     shr                  rdi,                   cl
     mov                  r12,                  r12
     and                  r12,                  rdi
     mov                  r12,                  r12
     mov                  rdi,                65535
     mov                  r10,                65535
@main.110.@xorshift.12.@shift_r.7.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  r10,                  r10
      or                  r10,                  rdi
     mov                  rdi,                  r10
	jmp	@main.111.@xorshift.13.@shift_r.6.@hilo.2.exit
@main.111.@xorshift.13.@shift_r.6.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r12
     and                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.112.@xorshift.8.@shift_r.2.exit
@main.112.@xorshift.8.@shift_r.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r15
     xor                  r12,                  rdi
     mov                  r15,                  r12
     mov                  rdi,                  r15
     mov                  r12,                    5
@main.113.@xorshift.15.@shift_l.1.enter:
     mov                  r10,                  rdi
     mov                  rcx,                  r12
     shl                  r10,                   cl
     mov                  rdi,                65535
     mov                  r12,                65535
@main.114.@xorshift.16.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  r12,                  r12
      or                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.115.@xorshift.17.@shift_l.4.@hilo.2.exit
@main.115.@xorshift.17.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r10
     and                  r12,                  rdi
     mov                  rdi,                  r12
	jmp	@main.116.@xorshift.14.@shift_l.2.exit
@main.116.@xorshift.14.@shift_l.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r15
     xor                  r12,                  rdi
     mov                  r15,                  r12
     mov                  rdi,                  r15
	jmp	@main.101.@xorshift.2.exit
@main.101.@xorshift.2.exit:
     mov                  rdi,                  rdi
     mov         qword[rbp-8],                  rdi
     mov                  rdi,         qword[rbp-8]
     and                  rdi,        qword[rbp-24]
     mov        qword[rbp-96],                  rdi
     mov                  rdi,        qword[rbp-32]
     xor                  rdi,        qword[rbp-40]
     mov                  rdi,                  rdi
     xor                  rdi,        qword[rbp-48]
     mov                  rdi,                  rdi
     mov                  r12,                  r11
     xor                  r12,        qword[rbp-72]
     mov                  r12,                  r12
     xor                  r12,        qword[rbp-96]
     mov                  rdi,                  rdi
     xor                  rdi,                  r12
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     and                  rdi,        qword[rbp-24]
     mov                  rdi,                  rdi
     mov                  r12,        qword[rbp-32]
     add                  r12,        qword[rbp-40]
     mov                  r12,                  r12
     add                  r12,        qword[rbp-48]
     mov                  r12,                  r12
     add                  r12,                    1
     mov                  r10,                  r12
     mov                  r12,                  r11
     add                  r12,        qword[rbp-72]
     mov                  r12,                  r12
     add                  r12,        qword[rbp-96]
     mov                  r10,                  r10
     sub                  r10,                  r12
     mov                  r10,                  r10
     mov                  r12,                  r10
     and                  r12,        qword[rbp-24]
     mov                  r10,                  r12
     mov                  r12,        qword[rbp-32]
     mov                  rax,                  r12
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  r15,        qword[rbp-40]
     mov                  rax,                  r15
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r15,                  rdx
     mov                  r12,                  r12
    imul                  r12,                  r15
     mov                  r15,        qword[rbp-48]
     mov                  rax,                  r15
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r15,                  rdx
     mov                  r12,                  r12
    imul                  r12,                  r15
     mov                  r15,                  r12
     mov                  r12,                  r11
     mov                  rax,                  r12
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  r15,                  r15
    imul                  r15,                  r12
     mov                  r12,        qword[rbp-72]
     mov                  rax,                  r12
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  r15,                  r15
    imul                  r15,                  r12
     mov                  r12,        qword[rbp-96]
     mov                  rax,                  r12
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  r15,                  r15
    imul                  r15,                  r12
     mov                  r15,                  r15
     mov                  r12,                  r15
     and                  r12,        qword[rbp-24]
     mov                  r15,                  r12
     mov                  r12,        qword[rbp-32]
     xor                  r12,        qword[rbp-40]
     mov                  r12,                  r12
     xor                  r12,        qword[rbp-48]
     mov       qword[rbp-104],                  r11
     mov                  rax,       qword[rbp-104]
     xor                  rax,        qword[rbp-72]
     mov       qword[rbp-104],                  rax
     mov                  rcx,       qword[rbp-104]
     mov       qword[rbp-112],                  rcx
     mov                  rax,       qword[rbp-112]
     xor                  rax,        qword[rbp-96]
     mov       qword[rbp-112],                  rax
     cmp                  r12,       qword[rbp-112]
     mov                  r12,                    0
    setg                 r12b
     mov                  r12,                  r12
     cmp                  r12,                    1
	je	@main.8.IfTrue
	jmp	@main.7.IfFalse
@main.8.IfTrue:
     mov                  r12,        qword[rbp-32]
     add                  r12,        qword[rbp-40]
     mov                  r12,                  r12
     and                  r12,        qword[rbp-24]
     mov                  r12,                  r12
     mov                  rax,                  r12
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  rcx,        qword[rbp-48]
     mov       qword[rbp-120],                  rcx
     mov                  rax,       qword[rbp-120]
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov       qword[rbp-120],                  rdx
     mov                  rcx,       qword[rbp-120]
     mov       qword[rbp-128],                  rcx
     mov                  rax,       qword[rbp-128]
     add                  rax,                    1
     mov       qword[rbp-128],                  rax
     mov                  r12,                  r12
     mov                  rax,                  r12
     mov                  rcx,       qword[rbp-128]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  r12,                  r12
	jmp	@main.9.IfExit
@main.7.IfFalse:
     mov                  r12,        qword[rbp-48]
     add                  r12,        qword[rbp-40]
     mov                  r12,                  r12
     and                  r12,        qword[rbp-24]
     mov                  r12,                  r12
     mov                  rax,                  r12
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  rcx,        qword[rbp-32]
     mov       qword[rbp-136],                  rcx
     mov                  rax,       qword[rbp-136]
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov       qword[rbp-136],                  rdx
     mov                  rcx,       qword[rbp-136]
     mov       qword[rbp-144],                  rcx
     mov                  rax,       qword[rbp-144]
     add                  rax,                    1
     mov       qword[rbp-144],                  rax
     mov                  r12,                  r12
     mov                  rax,                  r12
     mov                  rcx,       qword[rbp-144]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  r12,                  r12
	jmp	@main.9.IfExit
@main.9.IfExit:
     mov                  rdi,                  rdi
     xor                  rdi,                10001
     mov                  rdi,                  rdi
@main.118.@xorshift10.1.enter:
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                  rdi
    push                  r10
    push                   r9
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r10
     pop                  rdi
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  r11
    push                  r10
    push                   r9
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r10
     pop                  r11
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                  r10
    push                  rdi
    push                   r9
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                  r10
    push                  rdi
    push                   r9
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  r11
    push                  r10
    push                   r9
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r10
     pop                  r11
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  r11
    push                  r10
    push                   r9
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r10
     pop                  r11
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                  r10
    push                  rdi
    push                   r9
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  r11
    push                  r10
    push                   r9
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r10
     pop                  r11
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                  rdi
    push                  r10
    push                   r9
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r10
     pop                  rdi
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                  r10
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     pop                  r10
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
	jmp	@main.117.@xorshift10.2.exit
@main.117.@xorshift10.2.exit:
     mov                  rdi,                  rdi
     mov                   r8,                   r8
     add                   r8,                  rdi
     mov                   r8,                   r8
     mov                  rdi,                  r10
     xor                  rdi,                10002
     mov                  rdi,                  rdi
@main.120.@xorshift10.1.enter:
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                  rdi
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
    push                  rdi
call	xorshift
     pop                  rdi
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                  rdi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                  rdi
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                  rdi
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
	jmp	@main.119.@xorshift10.2.exit
@main.119.@xorshift10.2.exit:
     mov                  rdi,                  rdi
     mov                  r13,                  r13
     add                  r13,                  rdi
     mov                  r13,                  r13
     mov                  rdi,                  r15
     xor                  rdi,                10003
     mov                  rdi,                  rdi
@main.122.@xorshift10.1.enter:
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
    push                  rdi
call	xorshift
     pop                  rdi
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
    push                  rdi
call	xorshift
     pop                  rdi
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                  rdi
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
    push                  rdi
call	xorshift
     pop                  rdi
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
	jmp	@main.121.@xorshift10.2.exit
@main.121.@xorshift10.2.exit:
     mov                  rdi,                  rdi
     mov                   r9,                   r9
     add                   r9,                  rdi
     mov                   r9,                   r9
     mov                  rdi,                  r12
     xor                  rdi,                10004
     mov                  rdi,                  rdi
@main.124.@xorshift10.1.enter:
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                  rdi
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                  rdi
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                  rdi
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
	jmp	@main.123.@xorshift10.2.exit
@main.123.@xorshift10.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r14
     add                  r12,                  rdi
     mov                  r14,                  r12
     mov                  rdi,                  r11
     xor                  rdi,        qword[rbp-40]
     mov                  rdi,                  rdi
     xor                  rdi,        qword[rbp-48]
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     xor                  rdi,        qword[rbp-32]
     mov                  rdi,                  rdi
     xor                  rdi,        qword[rbp-96]
     mov                  rdi,                  rdi
     xor                  rdi,        qword[rbp-72]
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     and                  rdi,        qword[rbp-24]
     mov                  rdi,                  rdi
     mov                  r12,                  r11
     neg                  r12
     mov                  r12,                  r12
     add                  r12,        qword[rbp-40]
     mov                  r12,                  r12
     add                  r12,        qword[rbp-48]
     mov                  r10,                  r12
     mov                  r12,                  r10
     add                  r12,        qword[rbp-32]
     mov                  r12,                  r12
     sub                  r12,        qword[rbp-96]
     mov                  r12,                  r12
     sub                  r12,        qword[rbp-72]
     mov                  r12,                  r12
     add                  r12,                    1
     mov                  r10,                  r12
     mov                  r12,                  r10
     and                  r12,        qword[rbp-24]
     mov                  r10,                  r12
     mov                  r12,                  r11
     mov                  rax,                  r12
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  r15,        qword[rbp-40]
     mov                  rax,                  r15
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r15,                  rdx
     mov                  r12,                  r12
    imul                  r12,                  r15
     mov                  r15,        qword[rbp-48]
     mov                  rax,                  r15
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r15,                  rdx
     mov                  r12,                  r12
    imul                  r12,                  r15
     mov                  r15,                  r12
     mov                  r12,        qword[rbp-32]
     mov                  rax,                  r12
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  r15,                  r15
    imul                  r15,                  r12
     mov                  r12,        qword[rbp-96]
     mov                  rax,                  r12
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  r15,                  r15
    imul                  r15,                  r12
     mov                  r12,        qword[rbp-72]
     mov                  rax,                  r12
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  r15,                  r15
    imul                  r15,                  r12
     mov                  r15,                  r15
     mov                  r12,                  r15
     and                  r12,        qword[rbp-24]
     mov                  r15,                  r12
     mov                  r12,        qword[rbp-32]
     xor                  r12,        qword[rbp-40]
     mov                  r12,                  r12
     xor                  r12,        qword[rbp-48]
     mov       qword[rbp-152],                  r11
     mov                  rax,       qword[rbp-152]
     xor                  rax,        qword[rbp-72]
     mov       qword[rbp-152],                  rax
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-160],                  rcx
     mov                  rax,       qword[rbp-160]
     xor                  rax,        qword[rbp-96]
     mov       qword[rbp-160],                  rax
     cmp                  r12,       qword[rbp-160]
     mov                  r12,                    0
   setle                 r12b
     mov                  r12,                  r12
     cmp                  r12,                    1
	je	@main.11.IfTrue
	jmp	@main.10.IfFalse
@main.11.IfTrue:
     mov                  r12,        qword[rbp-48]
     add                  r12,        qword[rbp-40]
     mov                  r12,                  r12
     and                  r12,        qword[rbp-24]
     mov                  r12,                  r12
     mov                  rax,                  r12
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  rcx,        qword[rbp-32]
     mov       qword[rbp-168],                  rcx
     mov                  rax,       qword[rbp-168]
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov       qword[rbp-168],                  rdx
     mov                  rcx,       qword[rbp-168]
     mov       qword[rbp-176],                  rcx
     mov                  rax,       qword[rbp-176]
     add                  rax,                    1
     mov       qword[rbp-176],                  rax
     mov                  r12,                  r12
     mov                  rax,                  r12
     mov                  rcx,       qword[rbp-176]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  r12,                  r12
	jmp	@main.12.IfExit
@main.10.IfFalse:
     mov                  r12,        qword[rbp-32]
     add                  r12,        qword[rbp-40]
     mov                  r12,                  r12
     and                  r12,        qword[rbp-24]
     mov                  r12,                  r12
     mov                  rax,                  r12
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  rcx,        qword[rbp-48]
     mov       qword[rbp-184],                  rcx
     mov                  rax,       qword[rbp-184]
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov       qword[rbp-184],                  rdx
     mov                  rcx,       qword[rbp-184]
     mov       qword[rbp-192],                  rcx
     mov                  rax,       qword[rbp-192]
     add                  rax,                    1
     mov       qword[rbp-192],                  rax
     mov                  r12,                  r12
     mov                  rax,                  r12
     mov                  rcx,       qword[rbp-192]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  r12,                  r12
	jmp	@main.12.IfExit
@main.12.IfExit:
     mov                  rdi,                  rdi
     xor                  rdi,                10001
     mov                  rdi,                  rdi
@main.126.@xorshift10.1.enter:
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  r10
    push                  rsi
    push                   r8
    push                  rdi
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                  rdi
     pop                   r8
     pop                  rsi
     pop                  r10
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  r10
    push                  rsi
    push                   r8
    push                  rdi
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                  rdi
     pop                   r8
     pop                  rsi
     pop                  r10
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  r11
    push                   r9
    push                  r10
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                  r10
     pop                   r9
     pop                  r11
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                  rdi
    push                   r9
    push                  r10
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                  r10
     pop                   r9
     pop                  rdi
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  r10
    push                  rdi
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                  r10
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  r10
    push                  rsi
    push                  rdi
    push                   r8
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                  r10
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  r10
    push                  rsi
    push                   r8
    push                  rdi
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                  rdi
     pop                   r8
     pop                  rsi
     pop                  r10
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  r11
    push                   r9
    push                  r10
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                  r10
     pop                   r9
     pop                  r11
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  r10
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                  r10
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  r10
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                  r10
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
	jmp	@main.125.@xorshift10.2.exit
@main.125.@xorshift10.2.exit:
     mov                  rdi,                  rdi
     mov                   r8,                   r8
     add                   r8,                  rdi
     mov                   r8,                   r8
     mov                  rdi,                  r10
     xor                  rdi,                10002
     mov                  rdi,                  rdi
@main.128.@xorshift10.1.enter:
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
    push                  rdi
call	xorshift
     pop                  rdi
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
    push                  rdi
call	xorshift
     pop                  rdi
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                  rdi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
	jmp	@main.127.@xorshift10.2.exit
@main.127.@xorshift10.2.exit:
     mov                  rdi,                  rdi
     mov                  r13,                  r13
     add                  r13,                  rdi
     mov                  r13,                  r13
     mov                  rdi,                  r15
     xor                  rdi,                10003
     mov                  rdi,                  rdi
@main.130.@xorshift10.1.enter:
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
    push                  rdi
call	xorshift
     pop                  rdi
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                  rdi
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
    push                  rdi
call	xorshift
     pop                  rdi
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
    push                  rdi
call	xorshift
     pop                  rdi
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
    push                  rdi
call	xorshift
     pop                  rdi
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
    push                  rdi
call	xorshift
     pop                  rdi
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
	jmp	@main.129.@xorshift10.2.exit
@main.129.@xorshift10.2.exit:
     mov                  rdi,                  rdi
     mov                   r9,                   r9
     add                   r9,                  rdi
     mov                   r9,                   r9
     mov                  rdi,                  r12
     xor                  rdi,                10004
     mov                  rdi,                  rdi
@main.132.@xorshift10.1.enter:
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                  rdi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                  rdi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rdi
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                  rdi
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
    push                  rdi
call	xorshift
     pop                  rdi
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                  rdi
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
    push                  rdi
call	xorshift
     pop                  rdi
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  r11
    push                  rdi
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                  r11
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
call	xorshift
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
	jmp	@main.131.@xorshift10.2.exit
@main.131.@xorshift10.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r14
     add                  r12,                  rdi
     mov                  r14,                  r12
     mov                  rdi,                  r11
     xor                  rdi,        qword[rbp-32]
     mov                  rdi,                  rdi
     xor                  rdi,        qword[rbp-48]
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     xor                  rdi,        qword[rbp-40]
     mov                  rdi,                  rdi
     xor                  rdi,        qword[rbp-96]
     mov                  rdi,                  rdi
     xor                  rdi,        qword[rbp-72]
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     and                  rdi,        qword[rbp-24]
     mov                  rdi,                  rdi
     mov                  r12,                  r11
     sub                  r12,        qword[rbp-40]
     mov                  r10,        qword[rbp-48]
     neg                  r10
     mov                  r12,                  r12
     add                  r12,                  r10
     mov                  r10,                  r12
     mov                  r12,                  r10
     sub                  r12,        qword[rbp-32]
     mov                  r12,                  r12
     add                  r12,        qword[rbp-96]
     mov                  r12,                  r12
     add                  r12,        qword[rbp-72]
     mov                  r12,                  r12
     sub                  r12,                    1
     mov                  r10,                  r12
     mov                  r12,                  r10
     neg                  r12
     mov                  r12,                  r12
     and                  r12,        qword[rbp-24]
     mov                  r10,                  r12
     mov                  r12,                  r11
     mov                  rax,                  r12
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  r15,        qword[rbp-72]
     mov                  rax,                  r15
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r15,                  rdx
     mov                  r12,                  r12
    imul                  r12,                  r15
     mov                  r15,        qword[rbp-96]
     mov                  rax,                  r15
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r15,                  rdx
     mov                  r12,                  r12
    imul                  r12,                  r15
     mov                  r15,                  r12
     mov                  r12,        qword[rbp-32]
     mov                  rax,                  r12
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  r15,                  r15
    imul                  r15,                  r12
     mov                  r12,        qword[rbp-40]
     mov                  rax,                  r12
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  r15,                  r15
    imul                  r15,                  r12
     mov                  r12,        qword[rbp-48]
     mov                  rax,                  r12
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  r15,                  r15
    imul                  r15,                  r12
     mov                  r15,                  r15
     mov                  r12,                  r15
     and                  r12,        qword[rbp-24]
     mov                  r15,                  r12
     mov                  r12,                  r11
     xor                  r12,        qword[rbp-72]
     mov                  r12,                  r12
     xor                  r12,        qword[rbp-96]
     mov                  r11,        qword[rbp-48]
     xor                  r11,        qword[rbp-40]
     mov                  r11,                  r11
     xor                  r11,        qword[rbp-32]
     cmp                  r12,                  r11
     mov                  r12,                    0
    setl                 r12b
     mov                  r12,                  r12
     cmp                  r12,                    1
	je	@main.14.IfTrue
	jmp	@main.13.IfFalse
@main.14.IfTrue:
     mov                  r12,        qword[rbp-32]
     add                  r12,        qword[rbp-40]
     mov                  r12,                  r12
     and                  r12,        qword[rbp-24]
     mov                  r12,                  r12
     mov                  rax,                  r12
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  r11,        qword[rbp-48]
     mov                  rax,                  r11
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r11,                  rdx
     mov                  r11,                  r11
     add                  r11,                    1
     mov                  r12,                  r12
     mov                  rax,                  r12
     mov                  rcx,                  r11
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  r12,                  r12
	jmp	@main.15.IfExit
@main.13.IfFalse:
     mov                  r12,        qword[rbp-48]
     add                  r12,        qword[rbp-40]
     mov                  r12,                  r12
     and                  r12,        qword[rbp-24]
     mov                  r12,                  r12
     mov                  rax,                  r12
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  r11,        qword[rbp-32]
     mov                  rax,                  r11
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  r11,                  rdx
     mov                  r11,                  r11
     add                  r11,                    1
     mov                  r12,                  r12
     mov                  rax,                  r12
     mov                  rcx,                  r11
     cdq
    idiv                  ecx
     mov                  r12,                  rdx
     mov                  r12,                  r12
	jmp	@main.15.IfExit
@main.15.IfExit:
     mov                  rdi,                  rdi
     xor                  rdi,                10001
     mov                  rdi,                  rdi
@main.134.@xorshift10.1.enter:
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                   r9
    push                  rsi
    push                   r8
    push                  rdi
    push                  r10
call	xorshift
     pop                  r10
     pop                  rdi
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                   r9
    push                  rsi
    push                   r8
    push                  r10
call	xorshift
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                   r9
    push                  rsi
    push                   r8
    push                  r10
call	xorshift
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                   r9
    push                  rsi
    push                   r8
    push                  r10
call	xorshift
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                   r9
    push                  rsi
    push                   r8
    push                  r10
call	xorshift
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                   r9
    push                  rsi
    push                   r8
    push                  r10
call	xorshift
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
    push                  r10
call	xorshift
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
    push                  r10
call	xorshift
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                   r9
    push                  rsi
    push                   r8
    push                  r10
call	xorshift
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                   r9
    push                  rdi
    push                  rsi
    push                   r8
    push                  r10
call	xorshift
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                  rdi
     pop                   r9
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
	jmp	@main.133.@xorshift10.2.exit
@main.133.@xorshift10.2.exit:
     mov                  rdi,                  rdi
     mov                   r8,                   r8
     add                   r8,                  rdi
     mov                   r8,                   r8
     mov                  rdi,                  r10
     xor                  rdi,                10002
     mov                  rdi,                  rdi
@main.136.@xorshift10.1.enter:
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                   r8
    push                  rdi
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                   r8
    push                  rdi
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                   r8
    push                  rdi
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
	jmp	@main.135.@xorshift10.2.exit
@main.135.@xorshift10.2.exit:
     mov                  rdi,                  rdi
     mov                  r13,                  r13
     add                  r13,                  rdi
     mov                  r13,                  r13
     mov                  rdi,                  r15
     xor                  rdi,                10003
     mov                  rdi,                  rdi
@main.138.@xorshift10.1.enter:
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                   r8
    push                  rdi
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                   r8
    push                  rdi
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                   r8
    push                  rdi
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                   r8
    push                  rdi
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
	jmp	@main.137.@xorshift10.2.exit
@main.137.@xorshift10.2.exit:
     mov                  rdi,                  rdi
     mov                   r9,                   r9
     add                   r9,                  rdi
     mov                   r9,                   r9
     mov                  rdi,                  r12
     xor                  rdi,                10004
     mov                  rdi,                  rdi
@main.140.@xorshift10.1.enter:
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                   r8
    push                   r9
    push                  rdi
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                  rdi
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                   r8
    push                  rdi
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                  rdi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rsi
    push                   r8
    push                  rdi
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  rsi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                  rdi
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	xorshift
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  rdi
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
	jmp	@main.139.@xorshift10.2.exit
@main.139.@xorshift10.2.exit:
     mov                  rdi,                  rdi
     mov                  r12,                  r14
     add                  r12,                  rdi
     mov                  r14,                  r12
	jmp	@main.3.ForIter
@main.3.ForIter:
     mov                  rdi,                  rsi
     add                  rsi,                    1
	jmp	@main.5.ForCon
@main.5.ForCon:
     cmp                  rsi,                  rbx
     mov                  rdi,                    0
    setl                  dil
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@main.4.ForBody
	jmp	@main.6.ForExit
@main.6.ForExit:
     mov                  rbx,                   r8
@main.142.@toStringHex.1.enter:
     mov                  r12,         __const_str0
     mov                   r8,                   28
	jmp	@main.143.@toStringHex.5.ForCon
@main.144.@toStringHex.4.ForBody:
     mov                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     mov                  rsi,                  rsi
     and                  rsi,                   15
     mov                  r10,                  rsi
     cmp                  r10,                   10
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.145.@toStringHex.8.IfTrue
	jmp	@main.146.@toStringHex.7.IfFalse
@main.145.@toStringHex.8.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                  r10
     mov                  rdi,                  rsi
    push                  rsi
    push                   r8
    push                  r10
    push                   r9
     sub                  rsp,                    8
call	int2chr
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  r12
     mov                  rsi,                  rsi
    push                  rsi
    push                   r8
    push                  r10
    push                   r9
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  r12,                  rsi
	jmp	@main.147.@toStringHex.9.IfExit
@main.146.@toStringHex.7.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                  r10
     mov                  rsi,                  rsi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
    push                   r8
    push                  rsi
    push                   r9
call	int2chr
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  r12
     mov                  rsi,                  rsi
    push                   r8
    push                  rsi
    push                   r9
call	__string_connect__
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  r12,                  rsi
	jmp	@main.147.@toStringHex.9.IfExit
@main.147.@toStringHex.9.IfExit:
	jmp	@main.148.@toStringHex.3.ForIter
@main.148.@toStringHex.3.ForIter:
     mov                  rsi,                   r8
     sub                  rsi,                    4
     mov                   r8,                  rsi
	jmp	@main.143.@toStringHex.5.ForCon
@main.143.@toStringHex.5.ForCon:
     cmp                   r8,                    0
     mov                  rsi,                    0
   setge                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.144.@toStringHex.4.ForBody
	jmp	@main.149.@toStringHex.6.ForExit
@main.149.@toStringHex.6.ForExit:
     mov                  rsi,                  r12
	jmp	@main.141.@toStringHex.2.exit
@main.141.@toStringHex.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str2
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
    push                   r9
call	print
     pop                   r9
     mov                  rbx,                  r13
@main.151.@toStringHex.1.enter:
     mov                  r12,         __const_str0
     mov                   r8,                   28
	jmp	@main.152.@toStringHex.5.ForCon
@main.153.@toStringHex.4.ForBody:
     mov                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     mov                  rsi,                  rsi
     and                  rsi,                   15
     mov                  r13,                  rsi
     cmp                  r13,                   10
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.154.@toStringHex.8.IfTrue
	jmp	@main.155.@toStringHex.7.IfFalse
@main.154.@toStringHex.8.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                  r13
     mov                  rdi,                  rsi
    push                  rsi
    push                   r8
    push                   r9
call	int2chr
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  r12
     mov                  rsi,                  rsi
    push                   r8
    push                  rsi
    push                   r9
call	__string_connect__
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  r12,                  rsi
	jmp	@main.156.@toStringHex.9.IfExit
@main.155.@toStringHex.7.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                  r13
     mov                  rsi,                  rsi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
    push                  rsi
    push                   r8
    push                   r9
call	int2chr
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  r12
     mov                  rsi,                  rsi
    push                  rsi
    push                   r8
    push                   r9
call	__string_connect__
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  r12,                  rsi
	jmp	@main.156.@toStringHex.9.IfExit
@main.156.@toStringHex.9.IfExit:
	jmp	@main.157.@toStringHex.3.ForIter
@main.157.@toStringHex.3.ForIter:
     mov                  rsi,                   r8
     sub                  rsi,                    4
     mov                   r8,                  rsi
	jmp	@main.152.@toStringHex.5.ForCon
@main.152.@toStringHex.5.ForCon:
     cmp                   r8,                    0
     mov                  rsi,                    0
   setge                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.153.@toStringHex.4.ForBody
	jmp	@main.158.@toStringHex.6.ForExit
@main.158.@toStringHex.6.ForExit:
     mov                  rsi,                  r12
	jmp	@main.150.@toStringHex.2.exit
@main.150.@toStringHex.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str2
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
    push                   r9
call	print
     pop                   r9
     mov                  rbx,                   r9
@main.160.@toStringHex.1.enter:
     mov                  r12,         __const_str0
     mov                   r8,                   28
	jmp	@main.161.@toStringHex.5.ForCon
@main.162.@toStringHex.4.ForBody:
     mov                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     mov                  rsi,                  rsi
     and                  rsi,                   15
     mov                  r13,                  rsi
     cmp                  r13,                   10
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.163.@toStringHex.8.IfTrue
	jmp	@main.164.@toStringHex.7.IfFalse
@main.163.@toStringHex.8.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                  r13
     mov                  rdi,                  rsi
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	int2chr
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  r12
     mov                  rsi,                  rsi
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  r12,                  rsi
	jmp	@main.165.@toStringHex.9.IfExit
@main.164.@toStringHex.7.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                  r13
     mov                  rsi,                  rsi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	int2chr
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  r12
     mov                  rsi,                  rsi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  r12,                  rsi
	jmp	@main.165.@toStringHex.9.IfExit
@main.165.@toStringHex.9.IfExit:
	jmp	@main.166.@toStringHex.3.ForIter
@main.166.@toStringHex.3.ForIter:
     mov                  rsi,                   r8
     sub                  rsi,                    4
     mov                   r8,                  rsi
	jmp	@main.161.@toStringHex.5.ForCon
@main.161.@toStringHex.5.ForCon:
     cmp                   r8,                    0
     mov                  rsi,                    0
   setge                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.162.@toStringHex.4.ForBody
	jmp	@main.167.@toStringHex.6.ForExit
@main.167.@toStringHex.6.ForExit:
     mov                  rsi,                  r12
	jmp	@main.159.@toStringHex.2.exit
@main.159.@toStringHex.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str2
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     mov                  rbx,                  r14
@main.169.@toStringHex.1.enter:
     mov                   r8,         __const_str0
     mov                  r12,                   28
	jmp	@main.170.@toStringHex.5.ForCon
@main.171.@toStringHex.4.ForBody:
     mov                  rsi,                  rbx
     mov                  rcx,                  r12
     shr                  rsi,                   cl
     mov                  rsi,                  rsi
     and                  rsi,                   15
     mov                  r13,                  rsi
     cmp                  r13,                   10
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.172.@toStringHex.8.IfTrue
	jmp	@main.173.@toStringHex.7.IfFalse
@main.172.@toStringHex.8.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                  r13
     mov                  rdi,                  rsi
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	int2chr
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  rsi
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                   r8,                  rsi
	jmp	@main.174.@toStringHex.9.IfExit
@main.173.@toStringHex.7.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                  r13
     mov                  rsi,                  rsi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	int2chr
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  rsi
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                   r8,                  rsi
	jmp	@main.174.@toStringHex.9.IfExit
@main.174.@toStringHex.9.IfExit:
	jmp	@main.175.@toStringHex.3.ForIter
@main.175.@toStringHex.3.ForIter:
     mov                  rsi,                  r12
     sub                  rsi,                    4
     mov                  r12,                  rsi
	jmp	@main.170.@toStringHex.5.ForCon
@main.170.@toStringHex.5.ForCon:
     cmp                  r12,                    0
     mov                  rsi,                    0
   setge                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.171.@toStringHex.4.ForBody
	jmp	@main.176.@toStringHex.6.ForExit
@main.176.@toStringHex.6.ForExit:
     mov                  rsi,                   r8
	jmp	@main.168.@toStringHex.2.exit
@main.168.@toStringHex.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str2
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     mov                  rdi,         __const_str0
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rax,                    0
	jmp	@main.2.exit
@main.2.exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                  192
     pop                  rbp
     ret
xorshift10:
    push                  rbp
     mov                  rbp,                  rsp
@xorshift10.1.enter:
     mov                  rsi,                  rdi
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
@xorshift10.5.@xorshift.1.enter:
     mov                   r9,                  rsi
     mov                  rsi,                   r9
     mov                  rdi,                   13
@xorshift10.6.@xorshift.5.@shift_l.1.enter:
     mov                  rsi,                  rsi
     mov                  rcx,                  rdi
     shl                  rsi,                   cl
     mov                  rdi,                65535
     mov                   r8,                65535
@xorshift10.7.@xorshift.6.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                   r8,                   r8
      or                   r8,                  rdi
     mov                  rdi,                   r8
	jmp	@xorshift10.8.@xorshift.7.@shift_l.4.@hilo.2.exit
@xorshift10.8.@xorshift.7.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     and                  rsi,                  rdi
     mov                  rsi,                  rsi
	jmp	@xorshift10.9.@xorshift.4.@shift_l.2.exit
@xorshift10.9.@xorshift.4.@shift_l.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     mov                  rdi,                   17
@xorshift10.10.@xorshift.9.@shift_r.1.enter:
     mov                   r8,                32767
     mov                  r10,                65535
@xorshift10.11.@xorshift.10.@shift_r.5.@hilo.1.enter:
     mov                   r8,                   r8
     shl                   r8,                   16
     mov                  r10,                  r10
      or                  r10,                   r8
     mov                   r8,                  r10
	jmp	@xorshift10.12.@xorshift.11.@shift_r.4.@hilo.2.exit
@xorshift10.12.@xorshift.11.@shift_r.4.@hilo.2.exit:
     mov                   r8,                   r8
     mov                   r8,                   r8
     mov                   r8,                   r8
     mov                  rcx,                  rdi
     shr                   r8,                   cl
     mov                   r8,                   r8
     shl                   r8,                    1
     mov                   r8,                   r8
     add                   r8,                    1
     mov                   r8,                   r8
     mov                  rsi,                  rsi
     mov                  rcx,                  rdi
     shr                  rsi,                   cl
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                   r8,                  rdi
     mov                  rsi,                65535
     mov                  rdi,                65535
@xorshift10.13.@xorshift.12.@shift_r.7.@hilo.1.enter:
     mov                  rsi,                  rsi
     shl                  rsi,                   16
     mov                  rdi,                  rdi
      or                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.14.@xorshift.13.@shift_r.6.@hilo.2.exit
@xorshift10.14.@xorshift.13.@shift_r.6.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.15.@xorshift.8.@shift_r.2.exit
@xorshift10.15.@xorshift.8.@shift_r.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     mov                  rdi,                    5
@xorshift10.16.@xorshift.15.@shift_l.1.enter:
     mov                  rsi,                  rsi
     mov                  rcx,                  rdi
     shl                  rsi,                   cl
     mov                  rdi,                65535
     mov                   r8,                65535
@xorshift10.17.@xorshift.16.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                   r8,                   r8
      or                   r8,                  rdi
     mov                  rdi,                   r8
	jmp	@xorshift10.18.@xorshift.17.@shift_l.4.@hilo.2.exit
@xorshift10.18.@xorshift.17.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     and                  rsi,                  rdi
     mov                  rsi,                  rsi
	jmp	@xorshift10.19.@xorshift.14.@shift_l.2.exit
@xorshift10.19.@xorshift.14.@shift_l.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
	jmp	@xorshift10.4.@xorshift.2.exit
@xorshift10.4.@xorshift.2.exit:
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
@xorshift10.21.@xorshift.1.enter:
     mov                   r9,                  rsi
     mov                  rsi,                   r9
     mov                  rdi,                   13
@xorshift10.22.@xorshift.5.@shift_l.1.enter:
     mov                  rsi,                  rsi
     mov                  rcx,                  rdi
     shl                  rsi,                   cl
     mov                  rdi,                65535
     mov                   r8,                65535
@xorshift10.23.@xorshift.6.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                   r8,                   r8
      or                   r8,                  rdi
     mov                  rdi,                   r8
	jmp	@xorshift10.24.@xorshift.7.@shift_l.4.@hilo.2.exit
@xorshift10.24.@xorshift.7.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     and                  rsi,                  rdi
     mov                  rsi,                  rsi
	jmp	@xorshift10.25.@xorshift.4.@shift_l.2.exit
@xorshift10.25.@xorshift.4.@shift_l.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     mov                  rdi,                   17
@xorshift10.26.@xorshift.9.@shift_r.1.enter:
     mov                   r8,                32767
     mov                  r10,                65535
@xorshift10.27.@xorshift.10.@shift_r.5.@hilo.1.enter:
     mov                   r8,                   r8
     shl                   r8,                   16
     mov                  r10,                  r10
      or                  r10,                   r8
     mov                   r8,                  r10
	jmp	@xorshift10.28.@xorshift.11.@shift_r.4.@hilo.2.exit
@xorshift10.28.@xorshift.11.@shift_r.4.@hilo.2.exit:
     mov                   r8,                   r8
     mov                   r8,                   r8
     mov                   r8,                   r8
     mov                  rcx,                  rdi
     shr                   r8,                   cl
     mov                   r8,                   r8
     shl                   r8,                    1
     mov                   r8,                   r8
     add                   r8,                    1
     mov                   r8,                   r8
     mov                  rsi,                  rsi
     mov                  rcx,                  rdi
     shr                  rsi,                   cl
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                   r8,                  rdi
     mov                  rsi,                65535
     mov                  rdi,                65535
@xorshift10.29.@xorshift.12.@shift_r.7.@hilo.1.enter:
     mov                  rsi,                  rsi
     shl                  rsi,                   16
     mov                  rdi,                  rdi
      or                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.30.@xorshift.13.@shift_r.6.@hilo.2.exit
@xorshift10.30.@xorshift.13.@shift_r.6.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.31.@xorshift.8.@shift_r.2.exit
@xorshift10.31.@xorshift.8.@shift_r.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     mov                  rdi,                    5
@xorshift10.32.@xorshift.15.@shift_l.1.enter:
     mov                  rsi,                  rsi
     mov                  rcx,                  rdi
     shl                  rsi,                   cl
     mov                  rdi,                65535
     mov                   r8,                65535
@xorshift10.33.@xorshift.16.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                   r8,                   r8
      or                   r8,                  rdi
     mov                  rdi,                   r8
	jmp	@xorshift10.34.@xorshift.17.@shift_l.4.@hilo.2.exit
@xorshift10.34.@xorshift.17.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     and                  rsi,                  rdi
     mov                  rsi,                  rsi
	jmp	@xorshift10.35.@xorshift.14.@shift_l.2.exit
@xorshift10.35.@xorshift.14.@shift_l.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
	jmp	@xorshift10.20.@xorshift.2.exit
@xorshift10.20.@xorshift.2.exit:
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
@xorshift10.37.@xorshift.1.enter:
     mov                   r9,                  rsi
     mov                  rsi,                   r9
     mov                  rdi,                   13
@xorshift10.38.@xorshift.5.@shift_l.1.enter:
     mov                   r8,                  rsi
     mov                  rcx,                  rdi
     shl                   r8,                   cl
     mov                  rsi,                65535
     mov                  rdi,                65535
@xorshift10.39.@xorshift.6.@shift_l.5.@hilo.1.enter:
     mov                  rsi,                  rsi
     shl                  rsi,                   16
     mov                  rdi,                  rdi
      or                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.40.@xorshift.7.@shift_l.4.@hilo.2.exit
@xorshift10.40.@xorshift.7.@shift_l.4.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.41.@xorshift.4.@shift_l.2.exit
@xorshift10.41.@xorshift.4.@shift_l.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     mov                   r8,                   17
@xorshift10.42.@xorshift.9.@shift_r.1.enter:
     mov                  rdi,                32767
     mov                  r10,                65535
@xorshift10.43.@xorshift.10.@shift_r.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  r10,                  r10
      or                  r10,                  rdi
     mov                  rdi,                  r10
	jmp	@xorshift10.44.@xorshift.11.@shift_r.4.@hilo.2.exit
@xorshift10.44.@xorshift.11.@shift_r.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rcx,                   r8
     shr                  rdi,                   cl
     mov                  rdi,                  rdi
     shl                  rdi,                    1
     mov                  rdi,                  rdi
     add                  rdi,                    1
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     mov                  rdi,                  rdi
     and                  rdi,                  rsi
     mov                  rdi,                  rdi
     mov                  rsi,                65535
     mov                   r8,                65535
@xorshift10.45.@xorshift.12.@shift_r.7.@hilo.1.enter:
     mov                  rsi,                  rsi
     shl                  rsi,                   16
     mov                   r8,                   r8
      or                   r8,                  rsi
     mov                  rsi,                   r8
	jmp	@xorshift10.46.@xorshift.13.@shift_r.6.@hilo.2.exit
@xorshift10.46.@xorshift.13.@shift_r.6.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  rdi
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.47.@xorshift.8.@shift_r.2.exit
@xorshift10.47.@xorshift.8.@shift_r.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     mov                  rdi,                    5
@xorshift10.48.@xorshift.15.@shift_l.1.enter:
     mov                   r8,                  rsi
     mov                  rcx,                  rdi
     shl                   r8,                   cl
     mov                  rsi,                65535
     mov                  rdi,                65535
@xorshift10.49.@xorshift.16.@shift_l.5.@hilo.1.enter:
     mov                  rsi,                  rsi
     shl                  rsi,                   16
     mov                  rdi,                  rdi
      or                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.50.@xorshift.17.@shift_l.4.@hilo.2.exit
@xorshift10.50.@xorshift.17.@shift_l.4.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.51.@xorshift.14.@shift_l.2.exit
@xorshift10.51.@xorshift.14.@shift_l.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
	jmp	@xorshift10.36.@xorshift.2.exit
@xorshift10.36.@xorshift.2.exit:
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
@xorshift10.53.@xorshift.1.enter:
     mov                   r9,                  rsi
     mov                  rsi,                   r9
     mov                  rdi,                   13
@xorshift10.54.@xorshift.5.@shift_l.1.enter:
     mov                   r8,                  rsi
     mov                  rcx,                  rdi
     shl                   r8,                   cl
     mov                  rsi,                65535
     mov                  rdi,                65535
@xorshift10.55.@xorshift.6.@shift_l.5.@hilo.1.enter:
     mov                  rsi,                  rsi
     shl                  rsi,                   16
     mov                  rdi,                  rdi
      or                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.56.@xorshift.7.@shift_l.4.@hilo.2.exit
@xorshift10.56.@xorshift.7.@shift_l.4.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.57.@xorshift.4.@shift_l.2.exit
@xorshift10.57.@xorshift.4.@shift_l.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     mov                   r8,                   17
@xorshift10.58.@xorshift.9.@shift_r.1.enter:
     mov                  rdi,                32767
     mov                  r10,                65535
@xorshift10.59.@xorshift.10.@shift_r.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  r10,                  r10
      or                  r10,                  rdi
     mov                  rdi,                  r10
	jmp	@xorshift10.60.@xorshift.11.@shift_r.4.@hilo.2.exit
@xorshift10.60.@xorshift.11.@shift_r.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rcx,                   r8
     shr                  rdi,                   cl
     mov                  rdi,                  rdi
     shl                  rdi,                    1
     mov                  rdi,                  rdi
     add                  rdi,                    1
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     mov                  rdi,                  rdi
     and                  rdi,                  rsi
     mov                  rdi,                  rdi
     mov                  rsi,                65535
     mov                   r8,                65535
@xorshift10.61.@xorshift.12.@shift_r.7.@hilo.1.enter:
     mov                  rsi,                  rsi
     shl                  rsi,                   16
     mov                   r8,                   r8
      or                   r8,                  rsi
     mov                  rsi,                   r8
	jmp	@xorshift10.62.@xorshift.13.@shift_r.6.@hilo.2.exit
@xorshift10.62.@xorshift.13.@shift_r.6.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  rdi
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.63.@xorshift.8.@shift_r.2.exit
@xorshift10.63.@xorshift.8.@shift_r.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     mov                  rdi,                    5
@xorshift10.64.@xorshift.15.@shift_l.1.enter:
     mov                   r8,                  rsi
     mov                  rcx,                  rdi
     shl                   r8,                   cl
     mov                  rsi,                65535
     mov                  rdi,                65535
@xorshift10.65.@xorshift.16.@shift_l.5.@hilo.1.enter:
     mov                  rsi,                  rsi
     shl                  rsi,                   16
     mov                  rdi,                  rdi
      or                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.66.@xorshift.17.@shift_l.4.@hilo.2.exit
@xorshift10.66.@xorshift.17.@shift_l.4.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.67.@xorshift.14.@shift_l.2.exit
@xorshift10.67.@xorshift.14.@shift_l.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
	jmp	@xorshift10.52.@xorshift.2.exit
@xorshift10.52.@xorshift.2.exit:
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
@xorshift10.69.@xorshift.1.enter:
     mov                   r9,                  rsi
     mov                  rsi,                   r9
     mov                  rdi,                   13
@xorshift10.70.@xorshift.5.@shift_l.1.enter:
     mov                  rsi,                  rsi
     mov                  rcx,                  rdi
     shl                  rsi,                   cl
     mov                  rdi,                65535
     mov                   r8,                65535
@xorshift10.71.@xorshift.6.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                   r8,                   r8
      or                   r8,                  rdi
     mov                  rdi,                   r8
	jmp	@xorshift10.72.@xorshift.7.@shift_l.4.@hilo.2.exit
@xorshift10.72.@xorshift.7.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     and                  rsi,                  rdi
     mov                  rsi,                  rsi
	jmp	@xorshift10.73.@xorshift.4.@shift_l.2.exit
@xorshift10.73.@xorshift.4.@shift_l.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     mov                   r8,                   17
@xorshift10.74.@xorshift.9.@shift_r.1.enter:
     mov                  rdi,                32767
     mov                  r10,                65535
@xorshift10.75.@xorshift.10.@shift_r.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  r10,                  r10
      or                  r10,                  rdi
     mov                  rdi,                  r10
	jmp	@xorshift10.76.@xorshift.11.@shift_r.4.@hilo.2.exit
@xorshift10.76.@xorshift.11.@shift_r.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rcx,                   r8
     shr                  rdi,                   cl
     mov                  rdi,                  rdi
     shl                  rdi,                    1
     mov                  rdi,                  rdi
     add                  rdi,                    1
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     mov                  rdi,                  rdi
     and                  rdi,                  rsi
     mov                  rdi,                  rdi
     mov                  rsi,                65535
     mov                   r8,                65535
@xorshift10.77.@xorshift.12.@shift_r.7.@hilo.1.enter:
     mov                  rsi,                  rsi
     shl                  rsi,                   16
     mov                   r8,                   r8
      or                   r8,                  rsi
     mov                  rsi,                   r8
	jmp	@xorshift10.78.@xorshift.13.@shift_r.6.@hilo.2.exit
@xorshift10.78.@xorshift.13.@shift_r.6.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  rdi
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.79.@xorshift.8.@shift_r.2.exit
@xorshift10.79.@xorshift.8.@shift_r.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     mov                  rdi,                    5
@xorshift10.80.@xorshift.15.@shift_l.1.enter:
     mov                   r8,                  rsi
     mov                  rcx,                  rdi
     shl                   r8,                   cl
     mov                  rsi,                65535
     mov                  rdi,                65535
@xorshift10.81.@xorshift.16.@shift_l.5.@hilo.1.enter:
     mov                  rsi,                  rsi
     shl                  rsi,                   16
     mov                  rdi,                  rdi
      or                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.82.@xorshift.17.@shift_l.4.@hilo.2.exit
@xorshift10.82.@xorshift.17.@shift_l.4.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.83.@xorshift.14.@shift_l.2.exit
@xorshift10.83.@xorshift.14.@shift_l.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
	jmp	@xorshift10.68.@xorshift.2.exit
@xorshift10.68.@xorshift.2.exit:
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
@xorshift10.85.@xorshift.1.enter:
     mov                   r9,                  rsi
     mov                  rsi,                   r9
     mov                  rdi,                   13
@xorshift10.86.@xorshift.5.@shift_l.1.enter:
     mov                   r8,                  rsi
     mov                  rcx,                  rdi
     shl                   r8,                   cl
     mov                  rsi,                65535
     mov                  rdi,                65535
@xorshift10.87.@xorshift.6.@shift_l.5.@hilo.1.enter:
     mov                  rsi,                  rsi
     shl                  rsi,                   16
     mov                  rdi,                  rdi
      or                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.88.@xorshift.7.@shift_l.4.@hilo.2.exit
@xorshift10.88.@xorshift.7.@shift_l.4.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.89.@xorshift.4.@shift_l.2.exit
@xorshift10.89.@xorshift.4.@shift_l.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     mov                   r8,                   17
@xorshift10.90.@xorshift.9.@shift_r.1.enter:
     mov                  rdi,                32767
     mov                  r10,                65535
@xorshift10.91.@xorshift.10.@shift_r.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  r10,                  r10
      or                  r10,                  rdi
     mov                  rdi,                  r10
	jmp	@xorshift10.92.@xorshift.11.@shift_r.4.@hilo.2.exit
@xorshift10.92.@xorshift.11.@shift_r.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rcx,                   r8
     shr                  rdi,                   cl
     mov                  rdi,                  rdi
     shl                  rdi,                    1
     mov                  rdi,                  rdi
     add                  rdi,                    1
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     mov                  rdi,                  rdi
     and                  rdi,                  rsi
     mov                  rdi,                  rdi
     mov                  rsi,                65535
     mov                   r8,                65535
@xorshift10.93.@xorshift.12.@shift_r.7.@hilo.1.enter:
     mov                  rsi,                  rsi
     shl                  rsi,                   16
     mov                   r8,                   r8
      or                   r8,                  rsi
     mov                  rsi,                   r8
	jmp	@xorshift10.94.@xorshift.13.@shift_r.6.@hilo.2.exit
@xorshift10.94.@xorshift.13.@shift_r.6.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  rdi
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.95.@xorshift.8.@shift_r.2.exit
@xorshift10.95.@xorshift.8.@shift_r.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     mov                  rdi,                    5
@xorshift10.96.@xorshift.15.@shift_l.1.enter:
     mov                  rsi,                  rsi
     mov                  rcx,                  rdi
     shl                  rsi,                   cl
     mov                  rdi,                65535
     mov                   r8,                65535
@xorshift10.97.@xorshift.16.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                   r8,                   r8
      or                   r8,                  rdi
     mov                  rdi,                   r8
	jmp	@xorshift10.98.@xorshift.17.@shift_l.4.@hilo.2.exit
@xorshift10.98.@xorshift.17.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     and                  rsi,                  rdi
     mov                  rsi,                  rsi
	jmp	@xorshift10.99.@xorshift.14.@shift_l.2.exit
@xorshift10.99.@xorshift.14.@shift_l.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
	jmp	@xorshift10.84.@xorshift.2.exit
@xorshift10.84.@xorshift.2.exit:
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
@xorshift10.101.@xorshift.1.enter:
     mov                   r9,                  rsi
     mov                  rsi,                   r9
     mov                  rdi,                   13
@xorshift10.102.@xorshift.5.@shift_l.1.enter:
     mov                  rsi,                  rsi
     mov                  rcx,                  rdi
     shl                  rsi,                   cl
     mov                  rdi,                65535
     mov                   r8,                65535
@xorshift10.103.@xorshift.6.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                   r8,                   r8
      or                   r8,                  rdi
     mov                  rdi,                   r8
	jmp	@xorshift10.104.@xorshift.7.@shift_l.4.@hilo.2.exit
@xorshift10.104.@xorshift.7.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     and                  rsi,                  rdi
     mov                  rsi,                  rsi
	jmp	@xorshift10.105.@xorshift.4.@shift_l.2.exit
@xorshift10.105.@xorshift.4.@shift_l.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     mov                   r8,                   17
@xorshift10.106.@xorshift.9.@shift_r.1.enter:
     mov                  rdi,                32767
     mov                  r10,                65535
@xorshift10.107.@xorshift.10.@shift_r.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  r10,                  r10
      or                  r10,                  rdi
     mov                  rdi,                  r10
	jmp	@xorshift10.108.@xorshift.11.@shift_r.4.@hilo.2.exit
@xorshift10.108.@xorshift.11.@shift_r.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rcx,                   r8
     shr                  rdi,                   cl
     mov                  rdi,                  rdi
     shl                  rdi,                    1
     mov                  rdi,                  rdi
     add                  rdi,                    1
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     mov                  rdi,                  rdi
     and                  rdi,                  rsi
     mov                  rdi,                  rdi
     mov                  rsi,                65535
     mov                   r8,                65535
@xorshift10.109.@xorshift.12.@shift_r.7.@hilo.1.enter:
     mov                  rsi,                  rsi
     shl                  rsi,                   16
     mov                   r8,                   r8
      or                   r8,                  rsi
     mov                  rsi,                   r8
	jmp	@xorshift10.110.@xorshift.13.@shift_r.6.@hilo.2.exit
@xorshift10.110.@xorshift.13.@shift_r.6.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  rdi
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.111.@xorshift.8.@shift_r.2.exit
@xorshift10.111.@xorshift.8.@shift_r.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     mov                  rdi,                    5
@xorshift10.112.@xorshift.15.@shift_l.1.enter:
     mov                  rsi,                  rsi
     mov                  rcx,                  rdi
     shl                  rsi,                   cl
     mov                  rdi,                65535
     mov                   r8,                65535
@xorshift10.113.@xorshift.16.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                   r8,                   r8
      or                   r8,                  rdi
     mov                  rdi,                   r8
	jmp	@xorshift10.114.@xorshift.17.@shift_l.4.@hilo.2.exit
@xorshift10.114.@xorshift.17.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     and                  rsi,                  rdi
     mov                  rsi,                  rsi
	jmp	@xorshift10.115.@xorshift.14.@shift_l.2.exit
@xorshift10.115.@xorshift.14.@shift_l.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
	jmp	@xorshift10.100.@xorshift.2.exit
@xorshift10.100.@xorshift.2.exit:
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
@xorshift10.117.@xorshift.1.enter:
     mov                   r9,                  rsi
     mov                  rsi,                   r9
     mov                  rdi,                   13
@xorshift10.118.@xorshift.5.@shift_l.1.enter:
     mov                   r8,                  rsi
     mov                  rcx,                  rdi
     shl                   r8,                   cl
     mov                  rsi,                65535
     mov                  rdi,                65535
@xorshift10.119.@xorshift.6.@shift_l.5.@hilo.1.enter:
     mov                  rsi,                  rsi
     shl                  rsi,                   16
     mov                  rdi,                  rdi
      or                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.120.@xorshift.7.@shift_l.4.@hilo.2.exit
@xorshift10.120.@xorshift.7.@shift_l.4.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.121.@xorshift.4.@shift_l.2.exit
@xorshift10.121.@xorshift.4.@shift_l.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     mov                   r8,                   17
@xorshift10.122.@xorshift.9.@shift_r.1.enter:
     mov                  rdi,                32767
     mov                  r10,                65535
@xorshift10.123.@xorshift.10.@shift_r.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  r10,                  r10
      or                  r10,                  rdi
     mov                  rdi,                  r10
	jmp	@xorshift10.124.@xorshift.11.@shift_r.4.@hilo.2.exit
@xorshift10.124.@xorshift.11.@shift_r.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                  rcx,                   r8
     shr                  rdi,                   cl
     mov                  rdi,                  rdi
     shl                  rdi,                    1
     mov                  rdi,                  rdi
     add                  rdi,                    1
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     mov                  rdi,                  rdi
     and                  rdi,                  rsi
     mov                  rdi,                  rdi
     mov                  rsi,                65535
     mov                   r8,                65535
@xorshift10.125.@xorshift.12.@shift_r.7.@hilo.1.enter:
     mov                  rsi,                  rsi
     shl                  rsi,                   16
     mov                   r8,                   r8
      or                   r8,                  rsi
     mov                  rsi,                   r8
	jmp	@xorshift10.126.@xorshift.13.@shift_r.6.@hilo.2.exit
@xorshift10.126.@xorshift.13.@shift_r.6.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  rdi
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.127.@xorshift.8.@shift_r.2.exit
@xorshift10.127.@xorshift.8.@shift_r.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     mov                  rdi,                    5
@xorshift10.128.@xorshift.15.@shift_l.1.enter:
     mov                  rsi,                  rsi
     mov                  rcx,                  rdi
     shl                  rsi,                   cl
     mov                  rdi,                65535
     mov                   r8,                65535
@xorshift10.129.@xorshift.16.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                   r8,                   r8
      or                   r8,                  rdi
     mov                  rdi,                   r8
	jmp	@xorshift10.130.@xorshift.17.@shift_l.4.@hilo.2.exit
@xorshift10.130.@xorshift.17.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     and                  rsi,                  rdi
     mov                  rsi,                  rsi
	jmp	@xorshift10.131.@xorshift.14.@shift_l.2.exit
@xorshift10.131.@xorshift.14.@shift_l.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
	jmp	@xorshift10.116.@xorshift.2.exit
@xorshift10.116.@xorshift.2.exit:
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
@xorshift10.133.@xorshift.1.enter:
     mov                   r9,                  rsi
     mov                  rsi,                   r9
     mov                  rdi,                   13
@xorshift10.134.@xorshift.5.@shift_l.1.enter:
     mov                  rsi,                  rsi
     mov                  rcx,                  rdi
     shl                  rsi,                   cl
     mov                  rdi,                65535
     mov                   r8,                65535
@xorshift10.135.@xorshift.6.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                   r8,                   r8
      or                   r8,                  rdi
     mov                  rdi,                   r8
	jmp	@xorshift10.136.@xorshift.7.@shift_l.4.@hilo.2.exit
@xorshift10.136.@xorshift.7.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     and                  rsi,                  rdi
     mov                  rsi,                  rsi
	jmp	@xorshift10.137.@xorshift.4.@shift_l.2.exit
@xorshift10.137.@xorshift.4.@shift_l.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     mov                  rdi,                   17
@xorshift10.138.@xorshift.9.@shift_r.1.enter:
     mov                   r8,                32767
     mov                  r10,                65535
@xorshift10.139.@xorshift.10.@shift_r.5.@hilo.1.enter:
     mov                   r8,                   r8
     shl                   r8,                   16
     mov                  r10,                  r10
      or                  r10,                   r8
     mov                   r8,                  r10
	jmp	@xorshift10.140.@xorshift.11.@shift_r.4.@hilo.2.exit
@xorshift10.140.@xorshift.11.@shift_r.4.@hilo.2.exit:
     mov                   r8,                   r8
     mov                   r8,                   r8
     mov                   r8,                   r8
     mov                  rcx,                  rdi
     shr                   r8,                   cl
     mov                   r8,                   r8
     shl                   r8,                    1
     mov                   r8,                   r8
     add                   r8,                    1
     mov                   r8,                   r8
     mov                  rsi,                  rsi
     mov                  rcx,                  rdi
     shr                  rsi,                   cl
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                   r8,                  rdi
     mov                  rsi,                65535
     mov                  rdi,                65535
@xorshift10.141.@xorshift.12.@shift_r.7.@hilo.1.enter:
     mov                  rsi,                  rsi
     shl                  rsi,                   16
     mov                  rdi,                  rdi
      or                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.142.@xorshift.13.@shift_r.6.@hilo.2.exit
@xorshift10.142.@xorshift.13.@shift_r.6.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.143.@xorshift.8.@shift_r.2.exit
@xorshift10.143.@xorshift.8.@shift_r.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     mov                  rdi,                    5
@xorshift10.144.@xorshift.15.@shift_l.1.enter:
     mov                  rsi,                  rsi
     mov                  rcx,                  rdi
     shl                  rsi,                   cl
     mov                  rdi,                65535
     mov                   r8,                65535
@xorshift10.145.@xorshift.16.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                   r8,                   r8
      or                   r8,                  rdi
     mov                  rdi,                   r8
	jmp	@xorshift10.146.@xorshift.17.@shift_l.4.@hilo.2.exit
@xorshift10.146.@xorshift.17.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     and                  rsi,                  rdi
     mov                  rsi,                  rsi
	jmp	@xorshift10.147.@xorshift.14.@shift_l.2.exit
@xorshift10.147.@xorshift.14.@shift_l.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
	jmp	@xorshift10.132.@xorshift.2.exit
@xorshift10.132.@xorshift.2.exit:
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
@xorshift10.149.@xorshift.1.enter:
     mov                   r9,                  rsi
     mov                  rsi,                   r9
     mov                  rdi,                   13
@xorshift10.150.@xorshift.5.@shift_l.1.enter:
     mov                  rsi,                  rsi
     mov                  rcx,                  rdi
     shl                  rsi,                   cl
     mov                  rdi,                65535
     mov                   r8,                65535
@xorshift10.151.@xorshift.6.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                   r8,                   r8
      or                   r8,                  rdi
     mov                  rdi,                   r8
	jmp	@xorshift10.152.@xorshift.7.@shift_l.4.@hilo.2.exit
@xorshift10.152.@xorshift.7.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     and                  rsi,                  rdi
     mov                  rsi,                  rsi
	jmp	@xorshift10.153.@xorshift.4.@shift_l.2.exit
@xorshift10.153.@xorshift.4.@shift_l.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     mov                  rdi,                   17
@xorshift10.154.@xorshift.9.@shift_r.1.enter:
     mov                   r8,                32767
     mov                  r10,                65535
@xorshift10.155.@xorshift.10.@shift_r.5.@hilo.1.enter:
     mov                   r8,                   r8
     shl                   r8,                   16
     mov                  r10,                  r10
      or                  r10,                   r8
     mov                   r8,                  r10
	jmp	@xorshift10.156.@xorshift.11.@shift_r.4.@hilo.2.exit
@xorshift10.156.@xorshift.11.@shift_r.4.@hilo.2.exit:
     mov                   r8,                   r8
     mov                   r8,                   r8
     mov                   r8,                   r8
     mov                  rcx,                  rdi
     shr                   r8,                   cl
     mov                   r8,                   r8
     shl                   r8,                    1
     mov                   r8,                   r8
     add                   r8,                    1
     mov                   r8,                   r8
     mov                  rsi,                  rsi
     mov                  rcx,                  rdi
     shr                  rsi,                   cl
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                   r8,                  rdi
     mov                  rsi,                65535
     mov                  rdi,                65535
@xorshift10.157.@xorshift.12.@shift_r.7.@hilo.1.enter:
     mov                  rsi,                  rsi
     shl                  rsi,                   16
     mov                  rdi,                  rdi
      or                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.158.@xorshift.13.@shift_r.6.@hilo.2.exit
@xorshift10.158.@xorshift.13.@shift_r.6.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r8
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@xorshift10.159.@xorshift.8.@shift_r.2.exit
@xorshift10.159.@xorshift.8.@shift_r.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
     mov                  rdi,                    5
@xorshift10.160.@xorshift.15.@shift_l.1.enter:
     mov                  rsi,                  rsi
     mov                  rcx,                  rdi
     shl                  rsi,                   cl
     mov                  rdi,                65535
     mov                   r8,                65535
@xorshift10.161.@xorshift.16.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                   r8,                   r8
      or                   r8,                  rdi
     mov                  rdi,                   r8
	jmp	@xorshift10.162.@xorshift.17.@shift_l.4.@hilo.2.exit
@xorshift10.162.@xorshift.17.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     and                  rsi,                  rdi
     mov                  rsi,                  rsi
	jmp	@xorshift10.163.@xorshift.14.@shift_l.2.exit
@xorshift10.163.@xorshift.14.@shift_l.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     xor                  rdi,                  rsi
     mov                   r9,                  rdi
     mov                  rsi,                   r9
	jmp	@xorshift10.148.@xorshift.2.exit
@xorshift10.148.@xorshift.2.exit:
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
	jmp	@xorshift10.2.exit
@xorshift10.2.exit:
     pop                  rbp
     ret
toStringHex:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
    push                  r12
    push                  r13
    push                  rbx
@toStringHex.1.enter:
     mov                  rbx,                  rdi
     mov                  r12,         __const_str0
     mov                  r13,                   28
	jmp	@toStringHex.5.ForCon
@toStringHex.4.ForBody:
     mov                  rsi,                  rbx
     mov                  rcx,                  r13
     shr                  rsi,                   cl
     mov                  rsi,                  rsi
     and                  rsi,                   15
     mov                   r8,                  rsi
     cmp                   r8,                   10
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@toStringHex.8.IfTrue
	jmp	@toStringHex.7.IfFalse
@toStringHex.8.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                   r8
     mov                  rdi,                  rsi
@toStringHex.12.@int2chr.1.enter:
     cmp                  rdi,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@toStringHex.13.@int2chr.6.cmp_and
     cmp                  rdi,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@toStringHex.13.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@toStringHex.14.@int2chr.4.IfTrue
	jmp	@toStringHex.15.@int2chr.3.IfFalse
@toStringHex.14.@int2chr.4.IfTrue:
     mov                  rsi,                  rdi
     sub                  rsi,                   32
     mov                   r9,                  rdi
     sub                   r9,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rsi
     mov                  rdx,                   r9
    push                   r8
    push                  rsi
call	__substring__
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
	jmp	@toStringHex.11.@int2chr.2.exit
	jmp	@toStringHex.16.@int2chr.5.IfExit
@toStringHex.15.@int2chr.3.IfFalse:
@toStringHex.16.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
	jmp	@toStringHex.11.@int2chr.2.exit
@toStringHex.11.@int2chr.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  r12
     mov                  rsi,                  rsi
    push                  rsi
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  r12,                  rsi
	jmp	@toStringHex.9.IfExit
@toStringHex.7.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                   r8
     mov                  rsi,                  rsi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
@toStringHex.18.@int2chr.1.enter:
     cmp                  rdi,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@toStringHex.19.@int2chr.6.cmp_and
     cmp                  rdi,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@toStringHex.19.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@toStringHex.20.@int2chr.4.IfTrue
	jmp	@toStringHex.21.@int2chr.3.IfFalse
@toStringHex.20.@int2chr.4.IfTrue:
     mov                  rsi,                  rdi
     sub                  rsi,                   32
     mov                   r8,                  rdi
     sub                   r8,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rsi
     mov                  rdx,                   r8
    push                  rsi
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
	jmp	@toStringHex.17.@int2chr.2.exit
	jmp	@toStringHex.22.@int2chr.5.IfExit
@toStringHex.21.@int2chr.3.IfFalse:
@toStringHex.22.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
	jmp	@toStringHex.17.@int2chr.2.exit
@toStringHex.17.@int2chr.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  r12
     mov                  rsi,                  rsi
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  r12,                  rsi
	jmp	@toStringHex.9.IfExit
@toStringHex.9.IfExit:
	jmp	@toStringHex.3.ForIter
@toStringHex.3.ForIter:
     mov                  rsi,                  r13
     sub                  rsi,                    4
     mov                  r13,                  rsi
	jmp	@toStringHex.5.ForCon
@toStringHex.5.ForCon:
     cmp                  r13,                    0
     mov                  rsi,                    0
   setge                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@toStringHex.4.ForBody
	jmp	@toStringHex.6.ForExit
@toStringHex.6.ForExit:
     mov                  rax,                  r12
	jmp	@toStringHex.2.exit
@toStringHex.2.exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     add                  rsp,                    8
     pop                  rbp
     ret


 section                 .bss
@asciiTable:
  	resq 		1


 section                .data
      dq                    0
__const_str0:
      db "",0
      dq                    1
__const_str2:
      db " ",0
      dq                   95
__const_str3:
      db " !",34,"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[",92,"]^_`abcdefghijklmnopqrstuvwxyz{|}~",0
      dq                   17
__const_str1:
      db "Assertion Failed!",0






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



