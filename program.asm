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
     mov                   r8,                32767
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
getnumber:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  rbx
@getnumber.1.enter:
     mov                  rdi,                  rdi
     mov                   r8,                  rsi
     mov                  rsi,                  rdx
     mov                  rsi,                  rsi
     and                  rsi,                   31
     mov                  rsi,                  rsi
     mov                   r9,                  rdi
     mov                  rdi,                   r8
@getnumber.5.@xorshift.1.enter:
     mov                   r8,                   r9
     add                   r8,                    1
     mov                  r10,                   r8
     mov                   r8,                    0
	jmp	@getnumber.6.@xorshift.5.ForCon
@getnumber.7.@xorshift.4.ForBody:
     mov                  r11,                  r10
     mov                   r9,                   13
@getnumber.17.@shift_l.1.enter:
     mov                  r11,                  r11
     mov                  rcx,                   r9
     shl                  r11,                   cl
     mov                   r9,                32767
     mov                  rbx,                65535
@getnumber.18.@shift_l.5.@hilo.1.enter:
     mov                   r9,                   r9
     shl                   r9,                   16
     mov                  rbx,                  rbx
      or                  rbx,                   r9
     mov                   r9,                  rbx
	jmp	@getnumber.19.@shift_l.4.@hilo.2.exit
@getnumber.19.@shift_l.4.@hilo.2.exit:
     mov                   r9,                   r9
     mov                  r11,                  r11
     and                  r11,                   r9
     mov                   r9,                  r11
	jmp	@getnumber.16.@shift_l.2.exit
@getnumber.16.@shift_l.2.exit:
     mov                   r9,                   r9
     mov                  r10,                  r10
     xor                  r10,                   r9
     mov                  r10,                  r10
     mov                  r11,                  r10
     mov                   r9,                   17
@getnumber.21.@shift_r.1.enter:
     mov                  rbx,                32767
     mov                  r12,                65535
@getnumber.22.@shift_r.5.@hilo.1.enter:
     mov                  rbx,                  rbx
     shl                  rbx,                   16
     mov                  r12,                  r12
      or                  r12,                  rbx
     mov                  rbx,                  r12
	jmp	@getnumber.23.@shift_r.4.@hilo.2.exit
@getnumber.23.@shift_r.4.@hilo.2.exit:
     mov                  rbx,                  rbx
     mov                  rbx,                  rbx
     mov                  rbx,                  rbx
     mov                  rcx,                   r9
     shr                  rbx,                   cl
     mov                  rbx,                  rbx
     shl                  rbx,                    1
     mov                  rbx,                  rbx
     add                  rbx,                    1
     mov                  rbx,                  rbx
     mov                  r11,                  r11
     mov                  rcx,                   r9
     shr                  r11,                   cl
     mov                   r9,                  rbx
     and                   r9,                  r11
     mov                  rbx,                   r9
     mov                   r9,                32767
     mov                  r11,                65535
@getnumber.24.@shift_r.7.@hilo.1.enter:
     mov                   r9,                   r9
     shl                   r9,                   16
     mov                  r11,                  r11
      or                  r11,                   r9
     mov                   r9,                  r11
	jmp	@getnumber.25.@shift_r.6.@hilo.2.exit
@getnumber.25.@shift_r.6.@hilo.2.exit:
     mov                   r9,                   r9
     mov                  r11,                  rbx
     and                  r11,                   r9
     mov                   r9,                  r11
	jmp	@getnumber.20.@shift_r.2.exit
@getnumber.20.@shift_r.2.exit:
     mov                   r9,                   r9
     mov                  r10,                  r10
     xor                  r10,                   r9
     mov                  r10,                  r10
     mov                  r11,                  r10
     mov                   r9,                    5
@getnumber.27.@shift_l.1.enter:
     mov                  r11,                  r11
     mov                  rcx,                   r9
     shl                  r11,                   cl
     mov                   r9,                32767
     mov                  rbx,                65535
@getnumber.28.@shift_l.5.@hilo.1.enter:
     mov                   r9,                   r9
     shl                   r9,                   16
     mov                  rbx,                  rbx
      or                  rbx,                   r9
     mov                   r9,                  rbx
	jmp	@getnumber.29.@shift_l.4.@hilo.2.exit
@getnumber.29.@shift_l.4.@hilo.2.exit:
     mov                   r9,                   r9
     mov                  r11,                  r11
     and                  r11,                   r9
     mov                   r9,                  r11
	jmp	@getnumber.26.@shift_l.2.exit
@getnumber.26.@shift_l.2.exit:
     mov                   r9,                   r9
     mov                  r10,                  r10
     xor                  r10,                   r9
     mov                  r10,                  r10
	jmp	@getnumber.8.@xorshift.3.ForIter
@getnumber.8.@xorshift.3.ForIter:
     mov                   r9,                   r8
     add                   r8,                    1
	jmp	@getnumber.6.@xorshift.5.ForCon
@getnumber.6.@xorshift.5.ForCon:
     mov                   r9,                  rdi
    imul                   r9,                   10
     cmp                   r8,                   r9
     mov                   r9,                    0
    setl                  r9b
     mov                   r9,                   r9
     cmp                   r9,                    1
	je	@getnumber.7.@xorshift.4.ForBody
	jmp	@getnumber.9.@xorshift.6.ForExit
@getnumber.9.@xorshift.6.ForExit:
     mov                  rdi,                  r10
     xor                  rdi,            123456789
     mov                  rdi,                  rdi
	jmp	@getnumber.4.@xorshift.2.exit
@getnumber.4.@xorshift.2.exit:
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
     mov                   r9,                  rdi
     mov                   r8,                  rsi
@getnumber.11.@shift_l.1.enter:
     mov                   r9,                   r9
     mov                  rcx,                   r8
     shl                   r9,                   cl
     mov                   r8,                32767
     mov                  r10,                65535
@getnumber.12.@shift_l.5.@hilo.1.enter:
     mov                   r8,                   r8
     shl                   r8,                   16
     mov                  r10,                  r10
      or                  r10,                   r8
     mov                   r8,                  r10
	jmp	@getnumber.13.@shift_l.4.@hilo.2.exit
@getnumber.13.@shift_l.4.@hilo.2.exit:
     mov                   r8,                   r8
     mov                   r9,                   r9
     and                   r9,                   r8
     mov                   r8,                   r9
	jmp	@getnumber.10.@shift_l.2.exit
@getnumber.10.@shift_l.2.exit:
     mov                   r8,                   r8
     mov                   r9,                   32
     sub                   r9,                  rsi
     mov                  rdi,                  rdi
     mov                  rsi,                   r9
@getnumber.15.@shift_r.1.enter:
     mov                  r10,                32767
     mov                   r9,                65535
@getnumber.31.@hilo.1.enter:
     mov                  r10,                  r10
     shl                  r10,                   16
     mov                   r9,                   r9
      or                   r9,                  r10
     mov                   r9,                   r9
	jmp	@getnumber.30.@hilo.2.exit
@getnumber.30.@hilo.2.exit:
     mov                   r9,                   r9
     mov                   r9,                   r9
     mov                   r9,                   r9
     mov                  rcx,                  rsi
     shr                   r9,                   cl
     mov                   r9,                   r9
     shl                   r9,                    1
     mov                   r9,                   r9
     add                   r9,                    1
     mov                   r9,                   r9
     mov                  rdi,                  rdi
     mov                  rcx,                  rsi
     shr                  rdi,                   cl
     mov                  rsi,                   r9
     and                  rsi,                  rdi
     mov                   r9,                  rsi
     mov                  rdi,                32767
     mov                  rsi,                65535
@getnumber.33.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  rsi,                  rsi
      or                  rsi,                  rdi
     mov                  rsi,                  rsi
	jmp	@getnumber.32.@hilo.2.exit
@getnumber.32.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r9
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@getnumber.14.@shift_r.2.exit
@getnumber.14.@shift_r.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r8
      or                  rdi,                  rsi
     mov                  rax,                  rdi
	jmp	@getnumber.2.exit
@getnumber.2.exit:
     pop                  rbx
     pop                  r12
     pop                  rbp
     ret
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
     mov   qword[@asciiTable],         __const_str2
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
     mov                  rdi,                32767
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
    push                  rbx
@xorshift.1.enter:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     mov                  rdi,                  rdi
     add                  rdi,                    1
     mov                   r8,                  rdi
     mov                  rdi,                    0
	jmp	@xorshift.5.ForCon
@xorshift.4.ForBody:
     mov                  r10,                   r8
     mov                   r9,                   13
@xorshift.9.@shift_l.1.enter:
     mov                  r10,                  r10
     mov                  rcx,                   r9
     shl                  r10,                   cl
     mov                   r9,                32767
     mov                  r11,                65535
@xorshift.10.@shift_l.5.@hilo.1.enter:
     mov                   r9,                   r9
     shl                   r9,                   16
     mov                  r11,                  r11
      or                  r11,                   r9
     mov                   r9,                  r11
	jmp	@xorshift.11.@shift_l.4.@hilo.2.exit
@xorshift.11.@shift_l.4.@hilo.2.exit:
     mov                   r9,                   r9
     mov                  r10,                  r10
     and                  r10,                   r9
     mov                   r9,                  r10
	jmp	@xorshift.8.@shift_l.2.exit
@xorshift.8.@shift_l.2.exit:
     mov                   r9,                   r9
     mov                   r8,                   r8
     xor                   r8,                   r9
     mov                   r8,                   r8
     mov                  r10,                   r8
     mov                   r9,                   17
@xorshift.13.@shift_r.1.enter:
     mov                  r11,                32767
     mov                  rbx,                65535
@xorshift.14.@shift_r.5.@hilo.1.enter:
     mov                  r11,                  r11
     shl                  r11,                   16
     mov                  rbx,                  rbx
      or                  rbx,                  r11
     mov                  r11,                  rbx
	jmp	@xorshift.15.@shift_r.4.@hilo.2.exit
@xorshift.15.@shift_r.4.@hilo.2.exit:
     mov                  r11,                  r11
     mov                  r11,                  r11
     mov                  r11,                  r11
     mov                  rcx,                   r9
     shr                  r11,                   cl
     mov                  r11,                  r11
     shl                  r11,                    1
     mov                  r11,                  r11
     add                  r11,                    1
     mov                  r11,                  r11
     mov                  r10,                  r10
     mov                  rcx,                   r9
     shr                  r10,                   cl
     mov                   r9,                  r11
     and                   r9,                  r10
     mov                  r11,                   r9
     mov                   r9,                32767
     mov                  r10,                65535
@xorshift.16.@shift_r.7.@hilo.1.enter:
     mov                   r9,                   r9
     shl                   r9,                   16
     mov                  r10,                  r10
      or                  r10,                   r9
     mov                   r9,                  r10
	jmp	@xorshift.17.@shift_r.6.@hilo.2.exit
@xorshift.17.@shift_r.6.@hilo.2.exit:
     mov                   r9,                   r9
     mov                  r10,                  r11
     and                  r10,                   r9
     mov                   r9,                  r10
	jmp	@xorshift.12.@shift_r.2.exit
@xorshift.12.@shift_r.2.exit:
     mov                   r9,                   r9
     mov                   r8,                   r8
     xor                   r8,                   r9
     mov                   r8,                   r8
     mov                  r10,                   r8
     mov                   r9,                    5
@xorshift.19.@shift_l.1.enter:
     mov                  r10,                  r10
     mov                  rcx,                   r9
     shl                  r10,                   cl
     mov                   r9,                32767
     mov                  r11,                65535
@xorshift.20.@shift_l.5.@hilo.1.enter:
     mov                   r9,                   r9
     shl                   r9,                   16
     mov                  r11,                  r11
      or                  r11,                   r9
     mov                   r9,                  r11
	jmp	@xorshift.21.@shift_l.4.@hilo.2.exit
@xorshift.21.@shift_l.4.@hilo.2.exit:
     mov                   r9,                   r9
     mov                  r10,                  r10
     and                  r10,                   r9
     mov                   r9,                  r10
	jmp	@xorshift.18.@shift_l.2.exit
@xorshift.18.@shift_l.2.exit:
     mov                   r9,                   r9
     mov                   r8,                   r8
     xor                   r8,                   r9
     mov                   r8,                   r8
	jmp	@xorshift.3.ForIter
@xorshift.3.ForIter:
     mov                   r9,                  rdi
     add                  rdi,                    1
	jmp	@xorshift.5.ForCon
@xorshift.5.ForCon:
     mov                   r9,                  rsi
    imul                   r9,                   10
     cmp                  rdi,                   r9
     mov                   r9,                    0
    setl                  r9b
     mov                   r9,                   r9
     cmp                   r9,                    1
	je	@xorshift.4.ForBody
	jmp	@xorshift.6.ForExit
@xorshift.6.ForExit:
     mov                  rsi,                   r8
     xor                  rsi,            123456789
     mov                  rax,                  rsi
	jmp	@xorshift.2.exit
@xorshift.2.exit:
     pop                  rbx
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                 5904
    push                  rbx
    push                  r12
    push                  r14
    push                  r13
    push                  r15
@main.1.enter:
    push                  rsi
call	getInt
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  r13,                  rsi
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
     mov                  rdi,                  rdi
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	getInt
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  r12,                  rax
     mov                  r12,                  r12
     mov                  r12,                  r12
    push                  rdi
    push                   r8
    push                  rsi
call	getInt
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                   r8,                  rax
     mov                   r8,                   r8
     mov                   r8,                   r8
     mov         qword[rbp-8],                   30
     mov                  r14,                    0
     mov                  r10,                    0
     mov                  r11,                    0
     mov        qword[rbp-16],                    0
     mov        qword[rbp-24],                  r13
	jmp	@main.5.ForCon
@main.4.ForBody:
     mov        qword[rbp-32],                  rbx
	jmp	@main.9.ForCon
@main.8.ForBody:
     mov        qword[rbp-40],                  r12
	jmp	@main.13.ForCon
@main.12.ForBody:
     mov        qword[rbp-48],                  r13
     mov                  r15,         qword[rbp-8]
     mov                   r9,        qword[rbp-40]
@main.17.@getnumber.1.enter:
     mov                   r9,                   r9
     and                   r9,                   31
     mov        qword[rbp-56],                   r9
     mov                   r9,        qword[rbp-48]
     mov                  r15,                  r15
@main.18.@getnumber.5.@xorshift.1.enter:
     mov                   r9,                   r9
     add                   r9,                    1
     mov        qword[rbp-64],                   r9
     mov                   r9,                    0
	jmp	@main.19.@getnumber.6.@xorshift.5.ForCon
@main.20.@getnumber.7.@xorshift.4.ForBody:
     mov                  rcx,        qword[rbp-64]
     mov        qword[rbp-72],                  rcx
     mov        qword[rbp-80],                   13
@main.249.@shift_l.1.enter:
     mov                  rcx,        qword[rbp-72]
     mov        qword[rbp-88],                  rcx
     mov                  rcx,        qword[rbp-80]
     shl        qword[rbp-88],                   cl
     mov        qword[rbp-96],                32767
     mov       qword[rbp-104],                65535
@main.250.@shift_l.5.@hilo.1.enter:
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-112],                  rcx
     shl       qword[rbp-112],                   16
     mov                  rcx,       qword[rbp-104]
     mov       qword[rbp-120],                  rcx
     mov                  rax,       qword[rbp-120]
      or                  rax,       qword[rbp-112]
     mov       qword[rbp-120],                  rax
     mov                  rcx,       qword[rbp-120]
     mov       qword[rbp-128],                  rcx
	jmp	@main.251.@shift_l.4.@hilo.2.exit
@main.251.@shift_l.4.@hilo.2.exit:
     mov                  rcx,       qword[rbp-128]
     mov       qword[rbp-136],                  rcx
     mov                  rcx,        qword[rbp-88]
     mov       qword[rbp-144],                  rcx
     mov                  rax,       qword[rbp-144]
     and                  rax,       qword[rbp-136]
     mov       qword[rbp-144],                  rax
     mov                  rcx,       qword[rbp-144]
     mov       qword[rbp-152],                  rcx
	jmp	@main.248.@shift_l.2.exit
@main.248.@shift_l.2.exit:
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-160],                  rcx
     mov                  rcx,        qword[rbp-64]
     mov       qword[rbp-168],                  rcx
     mov                  rax,       qword[rbp-168]
     xor                  rax,       qword[rbp-160]
     mov       qword[rbp-168],                  rax
     mov                  rcx,       qword[rbp-168]
     mov        qword[rbp-64],                  rcx
     mov                  rcx,        qword[rbp-64]
     mov       qword[rbp-176],                  rcx
     mov       qword[rbp-184],                   17
@main.253.@shift_r.1.enter:
     mov       qword[rbp-192],                32767
     mov       qword[rbp-200],                65535
@main.254.@shift_r.5.@hilo.1.enter:
     mov                  rcx,       qword[rbp-192]
     mov       qword[rbp-208],                  rcx
     shl       qword[rbp-208],                   16
     mov                  rcx,       qword[rbp-200]
     mov       qword[rbp-216],                  rcx
     mov                  rax,       qword[rbp-216]
      or                  rax,       qword[rbp-208]
     mov       qword[rbp-216],                  rax
     mov                  rcx,       qword[rbp-216]
     mov       qword[rbp-224],                  rcx
	jmp	@main.255.@shift_r.4.@hilo.2.exit
@main.255.@shift_r.4.@hilo.2.exit:
     mov                  rcx,       qword[rbp-224]
     mov       qword[rbp-232],                  rcx
     mov                  rcx,       qword[rbp-232]
     mov       qword[rbp-240],                  rcx
     mov                  rcx,       qword[rbp-240]
     mov       qword[rbp-248],                  rcx
     mov                  rcx,       qword[rbp-184]
     shr       qword[rbp-248],                   cl
     mov                  rcx,       qword[rbp-248]
     mov       qword[rbp-256],                  rcx
     shl       qword[rbp-256],                    1
     mov                  rcx,       qword[rbp-256]
     mov       qword[rbp-264],                  rcx
     mov                  rax,       qword[rbp-264]
     add                  rax,                    1
     mov       qword[rbp-264],                  rax
     mov                  rcx,       qword[rbp-264]
     mov       qword[rbp-240],                  rcx
     mov                  rcx,       qword[rbp-176]
     mov       qword[rbp-272],                  rcx
     mov                  rcx,       qword[rbp-184]
     shr       qword[rbp-272],                   cl
     mov                  rcx,       qword[rbp-240]
     mov       qword[rbp-280],                  rcx
     mov                  rax,       qword[rbp-280]
     and                  rax,       qword[rbp-272]
     mov       qword[rbp-280],                  rax
     mov                  rcx,       qword[rbp-280]
     mov       qword[rbp-240],                  rcx
     mov       qword[rbp-288],                32767
     mov       qword[rbp-296],                65535
@main.256.@shift_r.7.@hilo.1.enter:
     mov                  rcx,       qword[rbp-288]
     mov       qword[rbp-304],                  rcx
     shl       qword[rbp-304],                   16
     mov                  rcx,       qword[rbp-296]
     mov       qword[rbp-312],                  rcx
     mov                  rax,       qword[rbp-312]
      or                  rax,       qword[rbp-304]
     mov       qword[rbp-312],                  rax
     mov                  rcx,       qword[rbp-312]
     mov       qword[rbp-320],                  rcx
	jmp	@main.257.@shift_r.6.@hilo.2.exit
@main.257.@shift_r.6.@hilo.2.exit:
     mov                  rcx,       qword[rbp-320]
     mov       qword[rbp-328],                  rcx
     mov                  rcx,       qword[rbp-240]
     mov       qword[rbp-336],                  rcx
     mov                  rax,       qword[rbp-336]
     and                  rax,       qword[rbp-328]
     mov       qword[rbp-336],                  rax
     mov                  rcx,       qword[rbp-336]
     mov       qword[rbp-344],                  rcx
	jmp	@main.252.@shift_r.2.exit
@main.252.@shift_r.2.exit:
     mov                  rcx,       qword[rbp-344]
     mov       qword[rbp-352],                  rcx
     mov                  rcx,        qword[rbp-64]
     mov       qword[rbp-360],                  rcx
     mov                  rax,       qword[rbp-360]
     xor                  rax,       qword[rbp-352]
     mov       qword[rbp-360],                  rax
     mov                  rcx,       qword[rbp-360]
     mov        qword[rbp-64],                  rcx
     mov                  rcx,        qword[rbp-64]
     mov       qword[rbp-368],                  rcx
     mov       qword[rbp-376],                    5
@main.259.@shift_l.1.enter:
     mov                  rcx,       qword[rbp-368]
     mov       qword[rbp-384],                  rcx
     mov                  rcx,       qword[rbp-376]
     shl       qword[rbp-384],                   cl
     mov       qword[rbp-392],                32767
     mov       qword[rbp-400],                65535
@main.260.@shift_l.5.@hilo.1.enter:
     mov                  rcx,       qword[rbp-392]
     mov       qword[rbp-408],                  rcx
     shl       qword[rbp-408],                   16
     mov                  rcx,       qword[rbp-400]
     mov       qword[rbp-416],                  rcx
     mov                  rax,       qword[rbp-416]
      or                  rax,       qword[rbp-408]
     mov       qword[rbp-416],                  rax
     mov                  rcx,       qword[rbp-416]
     mov       qword[rbp-424],                  rcx
	jmp	@main.261.@shift_l.4.@hilo.2.exit
@main.261.@shift_l.4.@hilo.2.exit:
     mov                  rcx,       qword[rbp-424]
     mov       qword[rbp-432],                  rcx
     mov                  rcx,       qword[rbp-384]
     mov       qword[rbp-440],                  rcx
     mov                  rax,       qword[rbp-440]
     and                  rax,       qword[rbp-432]
     mov       qword[rbp-440],                  rax
     mov                  rcx,       qword[rbp-440]
     mov       qword[rbp-448],                  rcx
	jmp	@main.258.@shift_l.2.exit
@main.258.@shift_l.2.exit:
     mov                  rcx,       qword[rbp-448]
     mov       qword[rbp-456],                  rcx
     mov                  rcx,        qword[rbp-64]
     mov       qword[rbp-464],                  rcx
     mov                  rax,       qword[rbp-464]
     xor                  rax,       qword[rbp-456]
     mov       qword[rbp-464],                  rax
     mov                  rcx,       qword[rbp-464]
     mov        qword[rbp-64],                  rcx
	jmp	@main.21.@getnumber.8.@xorshift.3.ForIter
@main.21.@getnumber.8.@xorshift.3.ForIter:
     mov       qword[rbp-472],                   r9
     add                   r9,                    1
	jmp	@main.19.@getnumber.6.@xorshift.5.ForCon
@main.19.@getnumber.6.@xorshift.5.ForCon:
     mov       qword[rbp-480],                  r15
     mov                  rax,       qword[rbp-480]
    imul                  rax,                   10
     mov       qword[rbp-480],                  rax
     cmp                   r9,       qword[rbp-480]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-488],                  rax
     mov                  rcx,       qword[rbp-488]
     mov       qword[rbp-496],                  rcx
     cmp       qword[rbp-496],                    1
	je	@main.20.@getnumber.7.@xorshift.4.ForBody
	jmp	@main.22.@getnumber.9.@xorshift.6.ForExit
@main.22.@getnumber.9.@xorshift.6.ForExit:
     mov                   r9,        qword[rbp-64]
     xor                   r9,            123456789
     mov                   r9,                   r9
	jmp	@main.23.@getnumber.4.@xorshift.2.exit
@main.23.@getnumber.4.@xorshift.2.exit:
     mov                   r9,                   r9
     mov                   r9,                   r9
     mov                  r15,                   r9
     mov                  rcx,        qword[rbp-56]
     mov       qword[rbp-504],                  rcx
@main.24.@getnumber.11.@shift_l.1.enter:
     mov       qword[rbp-512],                  r15
     mov                  rcx,       qword[rbp-504]
     shl       qword[rbp-512],                   cl
     mov                  r15,                32767
     mov       qword[rbp-520],                65535
@main.25.@getnumber.12.@shift_l.5.@hilo.1.enter:
     mov                  r15,                  r15
     shl                  r15,                   16
     mov                  rcx,       qword[rbp-520]
     mov       qword[rbp-528],                  rcx
     mov                  rax,       qword[rbp-528]
      or                  rax,                  r15
     mov       qword[rbp-528],                  rax
     mov                  r15,       qword[rbp-528]
	jmp	@main.26.@getnumber.13.@shift_l.4.@hilo.2.exit
@main.26.@getnumber.13.@shift_l.4.@hilo.2.exit:
     mov                  r15,                  r15
     mov                  rcx,       qword[rbp-512]
     mov       qword[rbp-536],                  rcx
     mov                  rax,       qword[rbp-536]
     and                  rax,                  r15
     mov       qword[rbp-536],                  rax
     mov                  r15,       qword[rbp-536]
	jmp	@main.27.@getnumber.10.@shift_l.2.exit
@main.27.@getnumber.10.@shift_l.2.exit:
     mov                  r15,                  r15
     mov       qword[rbp-544],                   32
     mov                  rax,       qword[rbp-544]
     sub                  rax,        qword[rbp-56]
     mov       qword[rbp-544],                  rax
     mov                   r9,                   r9
     mov                  rcx,       qword[rbp-544]
     mov       qword[rbp-552],                  rcx
@main.28.@getnumber.15.@shift_r.1.enter:
     mov       qword[rbp-560],                32767
     mov       qword[rbp-568],                65535
@main.263.@hilo.1.enter:
     mov                  rcx,       qword[rbp-560]
     mov       qword[rbp-576],                  rcx
     shl       qword[rbp-576],                   16
     mov                  rcx,       qword[rbp-568]
     mov       qword[rbp-584],                  rcx
     mov                  rax,       qword[rbp-584]
      or                  rax,       qword[rbp-576]
     mov       qword[rbp-584],                  rax
     mov                  rcx,       qword[rbp-584]
     mov       qword[rbp-592],                  rcx
	jmp	@main.262.@hilo.2.exit
@main.262.@hilo.2.exit:
     mov                  rcx,       qword[rbp-592]
     mov       qword[rbp-600],                  rcx
     mov                  rcx,       qword[rbp-600]
     mov       qword[rbp-608],                  rcx
     mov                  rcx,       qword[rbp-608]
     mov       qword[rbp-616],                  rcx
     mov                  rcx,       qword[rbp-552]
     shr       qword[rbp-616],                   cl
     mov                  rcx,       qword[rbp-616]
     mov       qword[rbp-624],                  rcx
     shl       qword[rbp-624],                    1
     mov                  rcx,       qword[rbp-624]
     mov       qword[rbp-632],                  rcx
     mov                  rax,       qword[rbp-632]
     add                  rax,                    1
     mov       qword[rbp-632],                  rax
     mov                  rcx,       qword[rbp-632]
     mov       qword[rbp-608],                  rcx
     mov                   r9,                   r9
     mov                  rcx,       qword[rbp-552]
     shr                   r9,                   cl
     mov                  rcx,       qword[rbp-608]
     mov       qword[rbp-640],                  rcx
     mov                  rax,       qword[rbp-640]
     and                  rax,                   r9
     mov       qword[rbp-640],                  rax
     mov                  rcx,       qword[rbp-640]
     mov       qword[rbp-608],                  rcx
     mov       qword[rbp-648],                32767
     mov                   r9,                65535
@main.265.@hilo.1.enter:
     mov                  rcx,       qword[rbp-648]
     mov       qword[rbp-656],                  rcx
     shl       qword[rbp-656],                   16
     mov                   r9,                   r9
      or                   r9,       qword[rbp-656]
     mov                   r9,                   r9
	jmp	@main.264.@hilo.2.exit
@main.264.@hilo.2.exit:
     mov                   r9,                   r9
     mov                  rcx,       qword[rbp-608]
     mov       qword[rbp-664],                  rcx
     mov                  rax,       qword[rbp-664]
     and                  rax,                   r9
     mov       qword[rbp-664],                  rax
     mov                   r9,       qword[rbp-664]
	jmp	@main.29.@getnumber.14.@shift_r.2.exit
@main.29.@getnumber.14.@shift_r.2.exit:
     mov                   r9,                   r9
     mov                  r15,                  r15
      or                  r15,                   r9
     mov                   r9,                  r15
	jmp	@main.16.@getnumber.2.exit
@main.16.@getnumber.2.exit:
     mov                   r9,                   r9
     mov                   r9,                   r9
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-672],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-680],                  rcx
     mov                  r15,        qword[rbp-40]
@main.31.@getnumber.1.enter:
     mov                  r15,                  r15
     and                  r15,                   31
     mov                  r15,                  r15
     mov                  rcx,       qword[rbp-672]
     mov       qword[rbp-688],                  rcx
     mov                  rcx,       qword[rbp-680]
     mov       qword[rbp-696],                  rcx
@main.32.@getnumber.5.@xorshift.1.enter:
     mov                  rcx,       qword[rbp-688]
     mov       qword[rbp-704],                  rcx
     mov                  rax,       qword[rbp-704]
     add                  rax,                    1
     mov       qword[rbp-704],                  rax
     mov                  rcx,       qword[rbp-704]
     mov       qword[rbp-712],                  rcx
     mov       qword[rbp-720],                    0
	jmp	@main.33.@getnumber.6.@xorshift.5.ForCon
@main.34.@getnumber.7.@xorshift.4.ForBody:
     mov                  rcx,       qword[rbp-712]
     mov       qword[rbp-728],                  rcx
     mov       qword[rbp-736],                   13
@main.267.@shift_l.1.enter:
     mov                  rcx,       qword[rbp-728]
     mov       qword[rbp-744],                  rcx
     mov                  rcx,       qword[rbp-736]
     shl       qword[rbp-744],                   cl
     mov       qword[rbp-752],                32767
     mov       qword[rbp-760],                65535
@main.268.@shift_l.5.@hilo.1.enter:
     mov                  rcx,       qword[rbp-752]
     mov       qword[rbp-768],                  rcx
     shl       qword[rbp-768],                   16
     mov                  rcx,       qword[rbp-760]
     mov       qword[rbp-776],                  rcx
     mov                  rax,       qword[rbp-776]
      or                  rax,       qword[rbp-768]
     mov       qword[rbp-776],                  rax
     mov                  rcx,       qword[rbp-776]
     mov       qword[rbp-784],                  rcx
	jmp	@main.269.@shift_l.4.@hilo.2.exit
@main.269.@shift_l.4.@hilo.2.exit:
     mov                  rcx,       qword[rbp-784]
     mov       qword[rbp-792],                  rcx
     mov                  rcx,       qword[rbp-744]
     mov       qword[rbp-800],                  rcx
     mov                  rax,       qword[rbp-800]
     and                  rax,       qword[rbp-792]
     mov       qword[rbp-800],                  rax
     mov                  rcx,       qword[rbp-800]
     mov       qword[rbp-808],                  rcx
	jmp	@main.266.@shift_l.2.exit
@main.266.@shift_l.2.exit:
     mov                  rcx,       qword[rbp-808]
     mov       qword[rbp-816],                  rcx
     mov                  rcx,       qword[rbp-712]
     mov       qword[rbp-824],                  rcx
     mov                  rax,       qword[rbp-824]
     xor                  rax,       qword[rbp-816]
     mov       qword[rbp-824],                  rax
     mov                  rcx,       qword[rbp-824]
     mov       qword[rbp-712],                  rcx
     mov                  rcx,       qword[rbp-712]
     mov       qword[rbp-832],                  rcx
     mov       qword[rbp-840],                   17
@main.271.@shift_r.1.enter:
     mov       qword[rbp-848],                32767
     mov       qword[rbp-856],                65535
@main.272.@shift_r.5.@hilo.1.enter:
     mov                  rcx,       qword[rbp-848]
     mov       qword[rbp-864],                  rcx
     shl       qword[rbp-864],                   16
     mov                  rcx,       qword[rbp-856]
     mov       qword[rbp-872],                  rcx
     mov                  rax,       qword[rbp-872]
      or                  rax,       qword[rbp-864]
     mov       qword[rbp-872],                  rax
     mov                  rcx,       qword[rbp-872]
     mov       qword[rbp-880],                  rcx
	jmp	@main.273.@shift_r.4.@hilo.2.exit
@main.273.@shift_r.4.@hilo.2.exit:
     mov                  rcx,       qword[rbp-880]
     mov       qword[rbp-888],                  rcx
     mov                  rcx,       qword[rbp-888]
     mov       qword[rbp-896],                  rcx
     mov                  rcx,       qword[rbp-896]
     mov       qword[rbp-904],                  rcx
     mov                  rcx,       qword[rbp-840]
     shr       qword[rbp-904],                   cl
     mov                  rcx,       qword[rbp-904]
     mov       qword[rbp-912],                  rcx
     shl       qword[rbp-912],                    1
     mov                  rcx,       qword[rbp-912]
     mov       qword[rbp-920],                  rcx
     mov                  rax,       qword[rbp-920]
     add                  rax,                    1
     mov       qword[rbp-920],                  rax
     mov                  rcx,       qword[rbp-920]
     mov       qword[rbp-896],                  rcx
     mov                  rcx,       qword[rbp-832]
     mov       qword[rbp-928],                  rcx
     mov                  rcx,       qword[rbp-840]
     shr       qword[rbp-928],                   cl
     mov                  rcx,       qword[rbp-896]
     mov       qword[rbp-936],                  rcx
     mov                  rax,       qword[rbp-936]
     and                  rax,       qword[rbp-928]
     mov       qword[rbp-936],                  rax
     mov                  rcx,       qword[rbp-936]
     mov       qword[rbp-896],                  rcx
     mov       qword[rbp-944],                32767
     mov       qword[rbp-952],                65535
@main.274.@shift_r.7.@hilo.1.enter:
     mov                  rcx,       qword[rbp-944]
     mov       qword[rbp-960],                  rcx
     shl       qword[rbp-960],                   16
     mov                  rcx,       qword[rbp-952]
     mov       qword[rbp-968],                  rcx
     mov                  rax,       qword[rbp-968]
      or                  rax,       qword[rbp-960]
     mov       qword[rbp-968],                  rax
     mov                  rcx,       qword[rbp-968]
     mov       qword[rbp-976],                  rcx
	jmp	@main.275.@shift_r.6.@hilo.2.exit
@main.275.@shift_r.6.@hilo.2.exit:
     mov                  rcx,       qword[rbp-976]
     mov       qword[rbp-984],                  rcx
     mov                  rcx,       qword[rbp-896]
     mov       qword[rbp-992],                  rcx
     mov                  rax,       qword[rbp-992]
     and                  rax,       qword[rbp-984]
     mov       qword[rbp-992],                  rax
     mov                  rcx,       qword[rbp-992]
     mov      qword[rbp-1000],                  rcx
	jmp	@main.270.@shift_r.2.exit
@main.270.@shift_r.2.exit:
     mov                  rcx,      qword[rbp-1000]
     mov      qword[rbp-1008],                  rcx
     mov                  rcx,       qword[rbp-712]
     mov      qword[rbp-1016],                  rcx
     mov                  rax,      qword[rbp-1016]
     xor                  rax,      qword[rbp-1008]
     mov      qword[rbp-1016],                  rax
     mov                  rcx,      qword[rbp-1016]
     mov       qword[rbp-712],                  rcx
     mov                  rcx,       qword[rbp-712]
     mov      qword[rbp-1024],                  rcx
     mov      qword[rbp-1032],                    5
@main.277.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-1024]
     mov      qword[rbp-1040],                  rcx
     mov                  rcx,      qword[rbp-1032]
     shl      qword[rbp-1040],                   cl
     mov      qword[rbp-1048],                32767
     mov      qword[rbp-1056],                65535
@main.278.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-1048]
     mov      qword[rbp-1064],                  rcx
     shl      qword[rbp-1064],                   16
     mov                  rcx,      qword[rbp-1056]
     mov      qword[rbp-1072],                  rcx
     mov                  rax,      qword[rbp-1072]
      or                  rax,      qword[rbp-1064]
     mov      qword[rbp-1072],                  rax
     mov                  rcx,      qword[rbp-1072]
     mov      qword[rbp-1080],                  rcx
	jmp	@main.279.@shift_l.4.@hilo.2.exit
@main.279.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-1080]
     mov      qword[rbp-1088],                  rcx
     mov                  rcx,      qword[rbp-1040]
     mov      qword[rbp-1096],                  rcx
     mov                  rax,      qword[rbp-1096]
     and                  rax,      qword[rbp-1088]
     mov      qword[rbp-1096],                  rax
     mov                  rcx,      qword[rbp-1096]
     mov      qword[rbp-1104],                  rcx
	jmp	@main.276.@shift_l.2.exit
@main.276.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-1104]
     mov      qword[rbp-1112],                  rcx
     mov                  rcx,       qword[rbp-712]
     mov      qword[rbp-1120],                  rcx
     mov                  rax,      qword[rbp-1120]
     xor                  rax,      qword[rbp-1112]
     mov      qword[rbp-1120],                  rax
     mov                  rcx,      qword[rbp-1120]
     mov       qword[rbp-712],                  rcx
	jmp	@main.35.@getnumber.8.@xorshift.3.ForIter
@main.35.@getnumber.8.@xorshift.3.ForIter:
     mov                  rcx,       qword[rbp-720]
     mov      qword[rbp-1128],                  rcx
     add       qword[rbp-720],                    1
	jmp	@main.33.@getnumber.6.@xorshift.5.ForCon
@main.33.@getnumber.6.@xorshift.5.ForCon:
     mov                  rcx,       qword[rbp-696]
     mov      qword[rbp-1136],                  rcx
     mov                  rax,      qword[rbp-1136]
    imul                  rax,                   10
     mov      qword[rbp-1136],                  rax
     mov                  rcx,       qword[rbp-720]
     cmp                  rcx,      qword[rbp-1136]
     mov                  rax,                    0
    setl                   al
     mov      qword[rbp-1144],                  rax
     mov                  rcx,      qword[rbp-1144]
     mov      qword[rbp-1152],                  rcx
     cmp      qword[rbp-1152],                    1
	je	@main.34.@getnumber.7.@xorshift.4.ForBody
	jmp	@main.36.@getnumber.9.@xorshift.6.ForExit
@main.36.@getnumber.9.@xorshift.6.ForExit:
     mov                  rcx,       qword[rbp-712]
     mov      qword[rbp-1160],                  rcx
     mov                  rax,      qword[rbp-1160]
     xor                  rax,            123456789
     mov      qword[rbp-1160],                  rax
     mov                  rcx,      qword[rbp-1160]
     mov      qword[rbp-1168],                  rcx
	jmp	@main.37.@getnumber.4.@xorshift.2.exit
@main.37.@getnumber.4.@xorshift.2.exit:
     mov                  rcx,      qword[rbp-1168]
     mov      qword[rbp-1176],                  rcx
     mov                  rcx,      qword[rbp-1176]
     mov      qword[rbp-1184],                  rcx
     mov                  rcx,      qword[rbp-1184]
     mov      qword[rbp-1192],                  rcx
     mov      qword[rbp-1200],                  r15
@main.38.@getnumber.11.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-1192]
     mov      qword[rbp-1208],                  rcx
     mov                  rcx,      qword[rbp-1200]
     shl      qword[rbp-1208],                   cl
     mov      qword[rbp-1216],                32767
     mov      qword[rbp-1224],                65535
@main.39.@getnumber.12.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-1216]
     mov      qword[rbp-1232],                  rcx
     shl      qword[rbp-1232],                   16
     mov                  rcx,      qword[rbp-1224]
     mov      qword[rbp-1240],                  rcx
     mov                  rax,      qword[rbp-1240]
      or                  rax,      qword[rbp-1232]
     mov      qword[rbp-1240],                  rax
     mov                  rcx,      qword[rbp-1240]
     mov      qword[rbp-1248],                  rcx
	jmp	@main.40.@getnumber.13.@shift_l.4.@hilo.2.exit
@main.40.@getnumber.13.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-1248]
     mov      qword[rbp-1256],                  rcx
     mov                  rcx,      qword[rbp-1208]
     mov      qword[rbp-1264],                  rcx
     mov                  rax,      qword[rbp-1264]
     and                  rax,      qword[rbp-1256]
     mov      qword[rbp-1264],                  rax
     mov                  rcx,      qword[rbp-1264]
     mov      qword[rbp-1272],                  rcx
	jmp	@main.41.@getnumber.10.@shift_l.2.exit
@main.41.@getnumber.10.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-1272]
     mov      qword[rbp-1280],                  rcx
     mov      qword[rbp-1288],                   32
     mov                  rax,      qword[rbp-1288]
     sub                  rax,                  r15
     mov      qword[rbp-1288],                  rax
     mov                  r15,      qword[rbp-1184]
     mov                  rcx,      qword[rbp-1288]
     mov      qword[rbp-1296],                  rcx
@main.42.@getnumber.15.@shift_r.1.enter:
     mov      qword[rbp-1304],                32767
     mov      qword[rbp-1312],                65535
@main.281.@hilo.1.enter:
     mov                  rcx,      qword[rbp-1304]
     mov      qword[rbp-1320],                  rcx
     shl      qword[rbp-1320],                   16
     mov                  rcx,      qword[rbp-1312]
     mov      qword[rbp-1328],                  rcx
     mov                  rax,      qword[rbp-1328]
      or                  rax,      qword[rbp-1320]
     mov      qword[rbp-1328],                  rax
     mov                  rcx,      qword[rbp-1328]
     mov      qword[rbp-1336],                  rcx
	jmp	@main.280.@hilo.2.exit
@main.280.@hilo.2.exit:
     mov                  rcx,      qword[rbp-1336]
     mov      qword[rbp-1344],                  rcx
     mov                  rcx,      qword[rbp-1344]
     mov      qword[rbp-1352],                  rcx
     mov                  rcx,      qword[rbp-1352]
     mov      qword[rbp-1360],                  rcx
     mov                  rcx,      qword[rbp-1296]
     shr      qword[rbp-1360],                   cl
     mov                  rcx,      qword[rbp-1360]
     mov      qword[rbp-1368],                  rcx
     shl      qword[rbp-1368],                    1
     mov                  rcx,      qword[rbp-1368]
     mov      qword[rbp-1376],                  rcx
     mov                  rax,      qword[rbp-1376]
     add                  rax,                    1
     mov      qword[rbp-1376],                  rax
     mov                  rcx,      qword[rbp-1376]
     mov      qword[rbp-1352],                  rcx
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-1296]
     shr                  r15,                   cl
     mov                  rcx,      qword[rbp-1352]
     mov      qword[rbp-1384],                  rcx
     mov                  rax,      qword[rbp-1384]
     and                  rax,                  r15
     mov      qword[rbp-1384],                  rax
     mov                  rcx,      qword[rbp-1384]
     mov      qword[rbp-1352],                  rcx
     mov      qword[rbp-1392],                32767
     mov                  r15,                65535
@main.283.@hilo.1.enter:
     mov                  rcx,      qword[rbp-1392]
     mov      qword[rbp-1400],                  rcx
     shl      qword[rbp-1400],                   16
     mov                  r15,                  r15
      or                  r15,      qword[rbp-1400]
     mov                  r15,                  r15
	jmp	@main.282.@hilo.2.exit
@main.282.@hilo.2.exit:
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-1352]
     mov      qword[rbp-1408],                  rcx
     mov                  rax,      qword[rbp-1408]
     and                  rax,                  r15
     mov      qword[rbp-1408],                  rax
     mov                  r15,      qword[rbp-1408]
	jmp	@main.43.@getnumber.14.@shift_r.2.exit
@main.43.@getnumber.14.@shift_r.2.exit:
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-1280]
     mov      qword[rbp-1416],                  rcx
     mov                  rax,      qword[rbp-1416]
      or                  rax,                  r15
     mov      qword[rbp-1416],                  rax
     mov                  r15,      qword[rbp-1416]
	jmp	@main.30.@getnumber.2.exit
@main.30.@getnumber.2.exit:
     mov                  r15,                  r15
     mov                  r15,                  r15
     mov                  rcx,        qword[rbp-32]
     mov      qword[rbp-1424],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov      qword[rbp-1432],                  rcx
     mov                  rcx,        qword[rbp-40]
     mov      qword[rbp-1440],                  rcx
@main.45.@getnumber.1.enter:
     mov                  rcx,      qword[rbp-1440]
     mov      qword[rbp-1448],                  rcx
     mov                  rax,      qword[rbp-1448]
     and                  rax,                   31
     mov      qword[rbp-1448],                  rax
     mov                  rcx,      qword[rbp-1448]
     mov      qword[rbp-1456],                  rcx
     mov                  rcx,      qword[rbp-1424]
     mov      qword[rbp-1464],                  rcx
     mov                  rcx,      qword[rbp-1432]
     mov      qword[rbp-1472],                  rcx
@main.46.@getnumber.5.@xorshift.1.enter:
     mov                  rcx,      qword[rbp-1464]
     mov      qword[rbp-1480],                  rcx
     mov                  rax,      qword[rbp-1480]
     add                  rax,                    1
     mov      qword[rbp-1480],                  rax
     mov                  rcx,      qword[rbp-1480]
     mov      qword[rbp-1488],                  rcx
     mov      qword[rbp-1496],                    0
	jmp	@main.47.@getnumber.6.@xorshift.5.ForCon
@main.48.@getnumber.7.@xorshift.4.ForBody:
     mov                  rcx,      qword[rbp-1488]
     mov      qword[rbp-1504],                  rcx
     mov      qword[rbp-1512],                   13
@main.285.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-1504]
     mov      qword[rbp-1520],                  rcx
     mov                  rcx,      qword[rbp-1512]
     shl      qword[rbp-1520],                   cl
     mov      qword[rbp-1528],                32767
     mov      qword[rbp-1536],                65535
@main.286.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-1528]
     mov      qword[rbp-1544],                  rcx
     shl      qword[rbp-1544],                   16
     mov                  rcx,      qword[rbp-1536]
     mov      qword[rbp-1552],                  rcx
     mov                  rax,      qword[rbp-1552]
      or                  rax,      qword[rbp-1544]
     mov      qword[rbp-1552],                  rax
     mov                  rcx,      qword[rbp-1552]
     mov      qword[rbp-1560],                  rcx
	jmp	@main.287.@shift_l.4.@hilo.2.exit
@main.287.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-1560]
     mov      qword[rbp-1568],                  rcx
     mov                  rcx,      qword[rbp-1520]
     mov      qword[rbp-1576],                  rcx
     mov                  rax,      qword[rbp-1576]
     and                  rax,      qword[rbp-1568]
     mov      qword[rbp-1576],                  rax
     mov                  rcx,      qword[rbp-1576]
     mov      qword[rbp-1584],                  rcx
	jmp	@main.284.@shift_l.2.exit
@main.284.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-1584]
     mov      qword[rbp-1592],                  rcx
     mov                  rcx,      qword[rbp-1488]
     mov      qword[rbp-1600],                  rcx
     mov                  rax,      qword[rbp-1600]
     xor                  rax,      qword[rbp-1592]
     mov      qword[rbp-1600],                  rax
     mov                  rcx,      qword[rbp-1600]
     mov      qword[rbp-1488],                  rcx
     mov                  rcx,      qword[rbp-1488]
     mov      qword[rbp-1608],                  rcx
     mov      qword[rbp-1616],                   17
@main.289.@shift_r.1.enter:
     mov      qword[rbp-1624],                32767
     mov      qword[rbp-1632],                65535
@main.290.@shift_r.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-1624]
     mov      qword[rbp-1640],                  rcx
     shl      qword[rbp-1640],                   16
     mov                  rcx,      qword[rbp-1632]
     mov      qword[rbp-1648],                  rcx
     mov                  rax,      qword[rbp-1648]
      or                  rax,      qword[rbp-1640]
     mov      qword[rbp-1648],                  rax
     mov                  rcx,      qword[rbp-1648]
     mov      qword[rbp-1656],                  rcx
	jmp	@main.291.@shift_r.4.@hilo.2.exit
@main.291.@shift_r.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-1656]
     mov      qword[rbp-1664],                  rcx
     mov                  rcx,      qword[rbp-1664]
     mov      qword[rbp-1672],                  rcx
     mov                  rcx,      qword[rbp-1672]
     mov      qword[rbp-1680],                  rcx
     mov                  rcx,      qword[rbp-1616]
     shr      qword[rbp-1680],                   cl
     mov                  rcx,      qword[rbp-1680]
     mov      qword[rbp-1688],                  rcx
     shl      qword[rbp-1688],                    1
     mov                  rcx,      qword[rbp-1688]
     mov      qword[rbp-1696],                  rcx
     mov                  rax,      qword[rbp-1696]
     add                  rax,                    1
     mov      qword[rbp-1696],                  rax
     mov                  rcx,      qword[rbp-1696]
     mov      qword[rbp-1672],                  rcx
     mov                  rcx,      qword[rbp-1608]
     mov      qword[rbp-1704],                  rcx
     mov                  rcx,      qword[rbp-1616]
     shr      qword[rbp-1704],                   cl
     mov                  rcx,      qword[rbp-1672]
     mov      qword[rbp-1712],                  rcx
     mov                  rax,      qword[rbp-1712]
     and                  rax,      qword[rbp-1704]
     mov      qword[rbp-1712],                  rax
     mov                  rcx,      qword[rbp-1712]
     mov      qword[rbp-1672],                  rcx
     mov      qword[rbp-1720],                32767
     mov      qword[rbp-1728],                65535
@main.292.@shift_r.7.@hilo.1.enter:
     mov                  rcx,      qword[rbp-1720]
     mov      qword[rbp-1736],                  rcx
     shl      qword[rbp-1736],                   16
     mov                  rcx,      qword[rbp-1728]
     mov      qword[rbp-1744],                  rcx
     mov                  rax,      qword[rbp-1744]
      or                  rax,      qword[rbp-1736]
     mov      qword[rbp-1744],                  rax
     mov                  rcx,      qword[rbp-1744]
     mov      qword[rbp-1752],                  rcx
	jmp	@main.293.@shift_r.6.@hilo.2.exit
@main.293.@shift_r.6.@hilo.2.exit:
     mov                  rcx,      qword[rbp-1752]
     mov      qword[rbp-1760],                  rcx
     mov                  rcx,      qword[rbp-1672]
     mov      qword[rbp-1768],                  rcx
     mov                  rax,      qword[rbp-1768]
     and                  rax,      qword[rbp-1760]
     mov      qword[rbp-1768],                  rax
     mov                  rcx,      qword[rbp-1768]
     mov      qword[rbp-1776],                  rcx
	jmp	@main.288.@shift_r.2.exit
@main.288.@shift_r.2.exit:
     mov                  rcx,      qword[rbp-1776]
     mov      qword[rbp-1784],                  rcx
     mov                  rcx,      qword[rbp-1488]
     mov      qword[rbp-1792],                  rcx
     mov                  rax,      qword[rbp-1792]
     xor                  rax,      qword[rbp-1784]
     mov      qword[rbp-1792],                  rax
     mov                  rcx,      qword[rbp-1792]
     mov      qword[rbp-1488],                  rcx
     mov                  rcx,      qword[rbp-1488]
     mov      qword[rbp-1800],                  rcx
     mov      qword[rbp-1808],                    5
@main.295.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-1800]
     mov      qword[rbp-1816],                  rcx
     mov                  rcx,      qword[rbp-1808]
     shl      qword[rbp-1816],                   cl
     mov      qword[rbp-1824],                32767
     mov      qword[rbp-1832],                65535
@main.296.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-1824]
     mov      qword[rbp-1840],                  rcx
     shl      qword[rbp-1840],                   16
     mov                  rcx,      qword[rbp-1832]
     mov      qword[rbp-1848],                  rcx
     mov                  rax,      qword[rbp-1848]
      or                  rax,      qword[rbp-1840]
     mov      qword[rbp-1848],                  rax
     mov                  rcx,      qword[rbp-1848]
     mov      qword[rbp-1856],                  rcx
	jmp	@main.297.@shift_l.4.@hilo.2.exit
@main.297.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-1856]
     mov      qword[rbp-1864],                  rcx
     mov                  rcx,      qword[rbp-1816]
     mov      qword[rbp-1872],                  rcx
     mov                  rax,      qword[rbp-1872]
     and                  rax,      qword[rbp-1864]
     mov      qword[rbp-1872],                  rax
     mov                  rcx,      qword[rbp-1872]
     mov      qword[rbp-1880],                  rcx
	jmp	@main.294.@shift_l.2.exit
@main.294.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-1880]
     mov      qword[rbp-1888],                  rcx
     mov                  rcx,      qword[rbp-1488]
     mov      qword[rbp-1896],                  rcx
     mov                  rax,      qword[rbp-1896]
     xor                  rax,      qword[rbp-1888]
     mov      qword[rbp-1896],                  rax
     mov                  rcx,      qword[rbp-1896]
     mov      qword[rbp-1488],                  rcx
	jmp	@main.49.@getnumber.8.@xorshift.3.ForIter
@main.49.@getnumber.8.@xorshift.3.ForIter:
     mov                  rcx,      qword[rbp-1496]
     mov      qword[rbp-1904],                  rcx
     add      qword[rbp-1496],                    1
	jmp	@main.47.@getnumber.6.@xorshift.5.ForCon
@main.47.@getnumber.6.@xorshift.5.ForCon:
     mov                  rcx,      qword[rbp-1472]
     mov      qword[rbp-1912],                  rcx
     mov                  rax,      qword[rbp-1912]
    imul                  rax,                   10
     mov      qword[rbp-1912],                  rax
     mov                  rcx,      qword[rbp-1496]
     cmp                  rcx,      qword[rbp-1912]
     mov                  rax,                    0
    setl                   al
     mov      qword[rbp-1920],                  rax
     mov                  rcx,      qword[rbp-1920]
     mov      qword[rbp-1928],                  rcx
     cmp      qword[rbp-1928],                    1
	je	@main.48.@getnumber.7.@xorshift.4.ForBody
	jmp	@main.50.@getnumber.9.@xorshift.6.ForExit
@main.50.@getnumber.9.@xorshift.6.ForExit:
     mov                  rcx,      qword[rbp-1488]
     mov      qword[rbp-1936],                  rcx
     mov                  rax,      qword[rbp-1936]
     xor                  rax,            123456789
     mov      qword[rbp-1936],                  rax
     mov                  rcx,      qword[rbp-1936]
     mov      qword[rbp-1944],                  rcx
	jmp	@main.51.@getnumber.4.@xorshift.2.exit
@main.51.@getnumber.4.@xorshift.2.exit:
     mov                  rcx,      qword[rbp-1944]
     mov      qword[rbp-1952],                  rcx
     mov                  rcx,      qword[rbp-1952]
     mov      qword[rbp-1960],                  rcx
     mov                  rcx,      qword[rbp-1960]
     mov      qword[rbp-1968],                  rcx
     mov                  rcx,      qword[rbp-1456]
     mov      qword[rbp-1976],                  rcx
@main.52.@getnumber.11.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-1968]
     mov      qword[rbp-1984],                  rcx
     mov                  rcx,      qword[rbp-1976]
     shl      qword[rbp-1984],                   cl
     mov      qword[rbp-1992],                32767
     mov      qword[rbp-2000],                65535
@main.53.@getnumber.12.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-1992]
     mov      qword[rbp-2008],                  rcx
     shl      qword[rbp-2008],                   16
     mov                  rcx,      qword[rbp-2000]
     mov      qword[rbp-2016],                  rcx
     mov                  rax,      qword[rbp-2016]
      or                  rax,      qword[rbp-2008]
     mov      qword[rbp-2016],                  rax
     mov                  rcx,      qword[rbp-2016]
     mov      qword[rbp-2024],                  rcx
	jmp	@main.54.@getnumber.13.@shift_l.4.@hilo.2.exit
@main.54.@getnumber.13.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-2024]
     mov      qword[rbp-2032],                  rcx
     mov                  rcx,      qword[rbp-1984]
     mov      qword[rbp-2040],                  rcx
     mov                  rax,      qword[rbp-2040]
     and                  rax,      qword[rbp-2032]
     mov      qword[rbp-2040],                  rax
     mov                  rcx,      qword[rbp-2040]
     mov      qword[rbp-2048],                  rcx
	jmp	@main.55.@getnumber.10.@shift_l.2.exit
@main.55.@getnumber.10.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-2048]
     mov      qword[rbp-2056],                  rcx
     mov      qword[rbp-2064],                   32
     mov                  rax,      qword[rbp-2064]
     sub                  rax,      qword[rbp-1456]
     mov      qword[rbp-2064],                  rax
     mov                  rcx,      qword[rbp-1960]
     mov      qword[rbp-2072],                  rcx
     mov                  rcx,      qword[rbp-2064]
     mov      qword[rbp-2080],                  rcx
@main.56.@getnumber.15.@shift_r.1.enter:
     mov      qword[rbp-2088],                32767
     mov      qword[rbp-2096],                65535
@main.299.@hilo.1.enter:
     mov                  rcx,      qword[rbp-2088]
     mov      qword[rbp-2104],                  rcx
     shl      qword[rbp-2104],                   16
     mov                  rcx,      qword[rbp-2096]
     mov      qword[rbp-2112],                  rcx
     mov                  rax,      qword[rbp-2112]
      or                  rax,      qword[rbp-2104]
     mov      qword[rbp-2112],                  rax
     mov                  rcx,      qword[rbp-2112]
     mov      qword[rbp-2120],                  rcx
	jmp	@main.298.@hilo.2.exit
@main.298.@hilo.2.exit:
     mov                  rcx,      qword[rbp-2120]
     mov      qword[rbp-2128],                  rcx
     mov                  rcx,      qword[rbp-2128]
     mov      qword[rbp-2136],                  rcx
     mov                  rcx,      qword[rbp-2136]
     mov      qword[rbp-2144],                  rcx
     mov                  rcx,      qword[rbp-2080]
     shr      qword[rbp-2144],                   cl
     mov                  rcx,      qword[rbp-2144]
     mov      qword[rbp-2152],                  rcx
     shl      qword[rbp-2152],                    1
     mov                  rcx,      qword[rbp-2152]
     mov      qword[rbp-2160],                  rcx
     mov                  rax,      qword[rbp-2160]
     add                  rax,                    1
     mov      qword[rbp-2160],                  rax
     mov                  rcx,      qword[rbp-2160]
     mov      qword[rbp-2136],                  rcx
     mov                  rcx,      qword[rbp-2072]
     mov      qword[rbp-2168],                  rcx
     mov                  rcx,      qword[rbp-2080]
     shr      qword[rbp-2168],                   cl
     mov                  rcx,      qword[rbp-2136]
     mov      qword[rbp-2176],                  rcx
     mov                  rax,      qword[rbp-2176]
     and                  rax,      qword[rbp-2168]
     mov      qword[rbp-2176],                  rax
     mov                  rcx,      qword[rbp-2176]
     mov      qword[rbp-2136],                  rcx
     mov      qword[rbp-2184],                32767
     mov      qword[rbp-2192],                65535
@main.301.@hilo.1.enter:
     mov                  rcx,      qword[rbp-2184]
     mov      qword[rbp-2200],                  rcx
     shl      qword[rbp-2200],                   16
     mov                  rcx,      qword[rbp-2192]
     mov      qword[rbp-2208],                  rcx
     mov                  rax,      qword[rbp-2208]
      or                  rax,      qword[rbp-2200]
     mov      qword[rbp-2208],                  rax
     mov                  rcx,      qword[rbp-2208]
     mov      qword[rbp-2216],                  rcx
	jmp	@main.300.@hilo.2.exit
@main.300.@hilo.2.exit:
     mov                  rcx,      qword[rbp-2216]
     mov      qword[rbp-2224],                  rcx
     mov                  rcx,      qword[rbp-2136]
     mov      qword[rbp-2232],                  rcx
     mov                  rax,      qword[rbp-2232]
     and                  rax,      qword[rbp-2224]
     mov      qword[rbp-2232],                  rax
     mov                  rcx,      qword[rbp-2232]
     mov      qword[rbp-2240],                  rcx
	jmp	@main.57.@getnumber.14.@shift_r.2.exit
@main.57.@getnumber.14.@shift_r.2.exit:
     mov                  rcx,      qword[rbp-2240]
     mov      qword[rbp-2248],                  rcx
     mov                  rcx,      qword[rbp-2056]
     mov      qword[rbp-2256],                  rcx
     mov                  rax,      qword[rbp-2256]
      or                  rax,      qword[rbp-2248]
     mov      qword[rbp-2256],                  rax
     mov                  rcx,      qword[rbp-2256]
     mov      qword[rbp-2264],                  rcx
	jmp	@main.44.@getnumber.2.exit
@main.44.@getnumber.2.exit:
     mov                  rcx,      qword[rbp-2264]
     mov      qword[rbp-2272],                  rcx
     mov                  rcx,      qword[rbp-2272]
     mov      qword[rbp-2280],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov      qword[rbp-2288],                  rcx
     mov                  rax,      qword[rbp-2288]
     xor                  rax,        qword[rbp-32]
     mov      qword[rbp-2288],                  rax
     mov                  rcx,      qword[rbp-2288]
     mov      qword[rbp-2296],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov      qword[rbp-2304],                  rcx
     mov                  rcx,        qword[rbp-40]
     mov      qword[rbp-2312],                  rcx
@main.59.@getnumber.1.enter:
     mov                  rcx,      qword[rbp-2312]
     mov      qword[rbp-2320],                  rcx
     mov                  rax,      qword[rbp-2320]
     and                  rax,                   31
     mov      qword[rbp-2320],                  rax
     mov                  rcx,      qword[rbp-2320]
     mov      qword[rbp-2328],                  rcx
     mov                  rcx,      qword[rbp-2296]
     mov      qword[rbp-2336],                  rcx
     mov                  rcx,      qword[rbp-2304]
     mov      qword[rbp-2344],                  rcx
@main.60.@getnumber.5.@xorshift.1.enter:
     mov                  rcx,      qword[rbp-2336]
     mov      qword[rbp-2352],                  rcx
     mov                  rax,      qword[rbp-2352]
     add                  rax,                    1
     mov      qword[rbp-2352],                  rax
     mov                  rcx,      qword[rbp-2352]
     mov      qword[rbp-2360],                  rcx
     mov      qword[rbp-2368],                    0
	jmp	@main.61.@getnumber.6.@xorshift.5.ForCon
@main.62.@getnumber.7.@xorshift.4.ForBody:
     mov                  rcx,      qword[rbp-2360]
     mov      qword[rbp-2376],                  rcx
     mov      qword[rbp-2384],                   13
@main.303.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-2376]
     mov      qword[rbp-2392],                  rcx
     mov                  rcx,      qword[rbp-2384]
     shl      qword[rbp-2392],                   cl
     mov      qword[rbp-2400],                32767
     mov      qword[rbp-2408],                65535
@main.304.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-2400]
     mov      qword[rbp-2416],                  rcx
     shl      qword[rbp-2416],                   16
     mov                  rcx,      qword[rbp-2408]
     mov      qword[rbp-2424],                  rcx
     mov                  rax,      qword[rbp-2424]
      or                  rax,      qword[rbp-2416]
     mov      qword[rbp-2424],                  rax
     mov                  rcx,      qword[rbp-2424]
     mov      qword[rbp-2432],                  rcx
	jmp	@main.305.@shift_l.4.@hilo.2.exit
@main.305.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-2432]
     mov      qword[rbp-2440],                  rcx
     mov                  rcx,      qword[rbp-2392]
     mov      qword[rbp-2448],                  rcx
     mov                  rax,      qword[rbp-2448]
     and                  rax,      qword[rbp-2440]
     mov      qword[rbp-2448],                  rax
     mov                  rcx,      qword[rbp-2448]
     mov      qword[rbp-2456],                  rcx
	jmp	@main.302.@shift_l.2.exit
@main.302.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-2456]
     mov      qword[rbp-2464],                  rcx
     mov                  rcx,      qword[rbp-2360]
     mov      qword[rbp-2472],                  rcx
     mov                  rax,      qword[rbp-2472]
     xor                  rax,      qword[rbp-2464]
     mov      qword[rbp-2472],                  rax
     mov                  rcx,      qword[rbp-2472]
     mov      qword[rbp-2360],                  rcx
     mov                  rcx,      qword[rbp-2360]
     mov      qword[rbp-2480],                  rcx
     mov      qword[rbp-2488],                   17
@main.307.@shift_r.1.enter:
     mov      qword[rbp-2496],                32767
     mov      qword[rbp-2504],                65535
@main.308.@shift_r.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-2496]
     mov      qword[rbp-2512],                  rcx
     shl      qword[rbp-2512],                   16
     mov                  rcx,      qword[rbp-2504]
     mov      qword[rbp-2520],                  rcx
     mov                  rax,      qword[rbp-2520]
      or                  rax,      qword[rbp-2512]
     mov      qword[rbp-2520],                  rax
     mov                  rcx,      qword[rbp-2520]
     mov      qword[rbp-2528],                  rcx
	jmp	@main.309.@shift_r.4.@hilo.2.exit
@main.309.@shift_r.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-2528]
     mov      qword[rbp-2536],                  rcx
     mov                  rcx,      qword[rbp-2536]
     mov      qword[rbp-2544],                  rcx
     mov                  rcx,      qword[rbp-2544]
     mov      qword[rbp-2552],                  rcx
     mov                  rcx,      qword[rbp-2488]
     shr      qword[rbp-2552],                   cl
     mov                  rcx,      qword[rbp-2552]
     mov      qword[rbp-2560],                  rcx
     shl      qword[rbp-2560],                    1
     mov                  rcx,      qword[rbp-2560]
     mov      qword[rbp-2568],                  rcx
     mov                  rax,      qword[rbp-2568]
     add                  rax,                    1
     mov      qword[rbp-2568],                  rax
     mov                  rcx,      qword[rbp-2568]
     mov      qword[rbp-2544],                  rcx
     mov                  rcx,      qword[rbp-2480]
     mov      qword[rbp-2576],                  rcx
     mov                  rcx,      qword[rbp-2488]
     shr      qword[rbp-2576],                   cl
     mov                  rcx,      qword[rbp-2544]
     mov      qword[rbp-2584],                  rcx
     mov                  rax,      qword[rbp-2584]
     and                  rax,      qword[rbp-2576]
     mov      qword[rbp-2584],                  rax
     mov                  rcx,      qword[rbp-2584]
     mov      qword[rbp-2544],                  rcx
     mov      qword[rbp-2592],                32767
     mov      qword[rbp-2600],                65535
@main.310.@shift_r.7.@hilo.1.enter:
     mov                  rcx,      qword[rbp-2592]
     mov      qword[rbp-2608],                  rcx
     shl      qword[rbp-2608],                   16
     mov                  rcx,      qword[rbp-2600]
     mov      qword[rbp-2616],                  rcx
     mov                  rax,      qword[rbp-2616]
      or                  rax,      qword[rbp-2608]
     mov      qword[rbp-2616],                  rax
     mov                  rcx,      qword[rbp-2616]
     mov      qword[rbp-2624],                  rcx
	jmp	@main.311.@shift_r.6.@hilo.2.exit
@main.311.@shift_r.6.@hilo.2.exit:
     mov                  rcx,      qword[rbp-2624]
     mov      qword[rbp-2632],                  rcx
     mov                  rcx,      qword[rbp-2544]
     mov      qword[rbp-2640],                  rcx
     mov                  rax,      qword[rbp-2640]
     and                  rax,      qword[rbp-2632]
     mov      qword[rbp-2640],                  rax
     mov                  rcx,      qword[rbp-2640]
     mov      qword[rbp-2648],                  rcx
	jmp	@main.306.@shift_r.2.exit
@main.306.@shift_r.2.exit:
     mov                  rcx,      qword[rbp-2648]
     mov      qword[rbp-2656],                  rcx
     mov                  rcx,      qword[rbp-2360]
     mov      qword[rbp-2664],                  rcx
     mov                  rax,      qword[rbp-2664]
     xor                  rax,      qword[rbp-2656]
     mov      qword[rbp-2664],                  rax
     mov                  rcx,      qword[rbp-2664]
     mov      qword[rbp-2360],                  rcx
     mov                  rcx,      qword[rbp-2360]
     mov      qword[rbp-2672],                  rcx
     mov      qword[rbp-2680],                    5
@main.313.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-2672]
     mov      qword[rbp-2688],                  rcx
     mov                  rcx,      qword[rbp-2680]
     shl      qword[rbp-2688],                   cl
     mov      qword[rbp-2696],                32767
     mov      qword[rbp-2704],                65535
@main.314.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-2696]
     mov      qword[rbp-2712],                  rcx
     shl      qword[rbp-2712],                   16
     mov                  rcx,      qword[rbp-2704]
     mov      qword[rbp-2720],                  rcx
     mov                  rax,      qword[rbp-2720]
      or                  rax,      qword[rbp-2712]
     mov      qword[rbp-2720],                  rax
     mov                  rcx,      qword[rbp-2720]
     mov      qword[rbp-2728],                  rcx
	jmp	@main.315.@shift_l.4.@hilo.2.exit
@main.315.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-2728]
     mov      qword[rbp-2736],                  rcx
     mov                  rcx,      qword[rbp-2688]
     mov      qword[rbp-2744],                  rcx
     mov                  rax,      qword[rbp-2744]
     and                  rax,      qword[rbp-2736]
     mov      qword[rbp-2744],                  rax
     mov                  rcx,      qword[rbp-2744]
     mov      qword[rbp-2752],                  rcx
	jmp	@main.312.@shift_l.2.exit
@main.312.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-2752]
     mov      qword[rbp-2760],                  rcx
     mov                  rcx,      qword[rbp-2360]
     mov      qword[rbp-2768],                  rcx
     mov                  rax,      qword[rbp-2768]
     xor                  rax,      qword[rbp-2760]
     mov      qword[rbp-2768],                  rax
     mov                  rcx,      qword[rbp-2768]
     mov      qword[rbp-2360],                  rcx
	jmp	@main.63.@getnumber.8.@xorshift.3.ForIter
@main.63.@getnumber.8.@xorshift.3.ForIter:
     mov                  rcx,      qword[rbp-2368]
     mov      qword[rbp-2776],                  rcx
     add      qword[rbp-2368],                    1
	jmp	@main.61.@getnumber.6.@xorshift.5.ForCon
@main.61.@getnumber.6.@xorshift.5.ForCon:
     mov                  rcx,      qword[rbp-2344]
     mov      qword[rbp-2784],                  rcx
     mov                  rax,      qword[rbp-2784]
    imul                  rax,                   10
     mov      qword[rbp-2784],                  rax
     mov                  rcx,      qword[rbp-2368]
     cmp                  rcx,      qword[rbp-2784]
     mov                  rax,                    0
    setl                   al
     mov      qword[rbp-2792],                  rax
     mov                  rcx,      qword[rbp-2792]
     mov      qword[rbp-2800],                  rcx
     cmp      qword[rbp-2800],                    1
	je	@main.62.@getnumber.7.@xorshift.4.ForBody
	jmp	@main.64.@getnumber.9.@xorshift.6.ForExit
@main.64.@getnumber.9.@xorshift.6.ForExit:
     mov                  rcx,      qword[rbp-2360]
     mov      qword[rbp-2808],                  rcx
     mov                  rax,      qword[rbp-2808]
     xor                  rax,            123456789
     mov      qword[rbp-2808],                  rax
     mov                  rcx,      qword[rbp-2808]
     mov      qword[rbp-2816],                  rcx
	jmp	@main.65.@getnumber.4.@xorshift.2.exit
@main.65.@getnumber.4.@xorshift.2.exit:
     mov                  rcx,      qword[rbp-2816]
     mov      qword[rbp-2824],                  rcx
     mov                  rcx,      qword[rbp-2824]
     mov      qword[rbp-2832],                  rcx
     mov                  rcx,      qword[rbp-2832]
     mov      qword[rbp-2840],                  rcx
     mov                  rcx,      qword[rbp-2328]
     mov      qword[rbp-2848],                  rcx
@main.66.@getnumber.11.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-2840]
     mov      qword[rbp-2856],                  rcx
     mov                  rcx,      qword[rbp-2848]
     shl      qword[rbp-2856],                   cl
     mov      qword[rbp-2864],                32767
     mov      qword[rbp-2872],                65535
@main.67.@getnumber.12.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-2864]
     mov      qword[rbp-2880],                  rcx
     shl      qword[rbp-2880],                   16
     mov                  rcx,      qword[rbp-2872]
     mov      qword[rbp-2888],                  rcx
     mov                  rax,      qword[rbp-2888]
      or                  rax,      qword[rbp-2880]
     mov      qword[rbp-2888],                  rax
     mov                  rcx,      qword[rbp-2888]
     mov      qword[rbp-2896],                  rcx
	jmp	@main.68.@getnumber.13.@shift_l.4.@hilo.2.exit
@main.68.@getnumber.13.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-2896]
     mov      qword[rbp-2904],                  rcx
     mov                  rcx,      qword[rbp-2856]
     mov      qword[rbp-2912],                  rcx
     mov                  rax,      qword[rbp-2912]
     and                  rax,      qword[rbp-2904]
     mov      qword[rbp-2912],                  rax
     mov                  rcx,      qword[rbp-2912]
     mov      qword[rbp-2920],                  rcx
	jmp	@main.69.@getnumber.10.@shift_l.2.exit
@main.69.@getnumber.10.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-2920]
     mov      qword[rbp-2928],                  rcx
     mov      qword[rbp-2936],                   32
     mov                  rax,      qword[rbp-2936]
     sub                  rax,      qword[rbp-2328]
     mov      qword[rbp-2936],                  rax
     mov                  rcx,      qword[rbp-2832]
     mov      qword[rbp-2944],                  rcx
     mov                  rcx,      qword[rbp-2936]
     mov      qword[rbp-2952],                  rcx
@main.70.@getnumber.15.@shift_r.1.enter:
     mov      qword[rbp-2960],                32767
     mov      qword[rbp-2968],                65535
@main.317.@hilo.1.enter:
     mov                  rcx,      qword[rbp-2960]
     mov      qword[rbp-2976],                  rcx
     shl      qword[rbp-2976],                   16
     mov                  rcx,      qword[rbp-2968]
     mov      qword[rbp-2984],                  rcx
     mov                  rax,      qword[rbp-2984]
      or                  rax,      qword[rbp-2976]
     mov      qword[rbp-2984],                  rax
     mov                  rcx,      qword[rbp-2984]
     mov      qword[rbp-2992],                  rcx
	jmp	@main.316.@hilo.2.exit
@main.316.@hilo.2.exit:
     mov                  rcx,      qword[rbp-2992]
     mov      qword[rbp-3000],                  rcx
     mov                  rcx,      qword[rbp-3000]
     mov      qword[rbp-3008],                  rcx
     mov                  rcx,      qword[rbp-3008]
     mov      qword[rbp-3016],                  rcx
     mov                  rcx,      qword[rbp-2952]
     shr      qword[rbp-3016],                   cl
     mov                  rcx,      qword[rbp-3016]
     mov      qword[rbp-3024],                  rcx
     shl      qword[rbp-3024],                    1
     mov                  rcx,      qword[rbp-3024]
     mov      qword[rbp-3032],                  rcx
     mov                  rax,      qword[rbp-3032]
     add                  rax,                    1
     mov      qword[rbp-3032],                  rax
     mov                  rcx,      qword[rbp-3032]
     mov      qword[rbp-3008],                  rcx
     mov                  rcx,      qword[rbp-2944]
     mov      qword[rbp-3040],                  rcx
     mov                  rcx,      qword[rbp-2952]
     shr      qword[rbp-3040],                   cl
     mov                  rcx,      qword[rbp-3008]
     mov      qword[rbp-3048],                  rcx
     mov                  rax,      qword[rbp-3048]
     and                  rax,      qword[rbp-3040]
     mov      qword[rbp-3048],                  rax
     mov                  rcx,      qword[rbp-3048]
     mov      qword[rbp-3008],                  rcx
     mov      qword[rbp-3056],                32767
     mov      qword[rbp-3064],                65535
@main.319.@hilo.1.enter:
     mov                  rcx,      qword[rbp-3056]
     mov      qword[rbp-3072],                  rcx
     shl      qword[rbp-3072],                   16
     mov                  rcx,      qword[rbp-3064]
     mov      qword[rbp-3080],                  rcx
     mov                  rax,      qword[rbp-3080]
      or                  rax,      qword[rbp-3072]
     mov      qword[rbp-3080],                  rax
     mov                  rcx,      qword[rbp-3080]
     mov      qword[rbp-3088],                  rcx
	jmp	@main.318.@hilo.2.exit
@main.318.@hilo.2.exit:
     mov                  rcx,      qword[rbp-3088]
     mov      qword[rbp-3096],                  rcx
     mov                  rcx,      qword[rbp-3008]
     mov      qword[rbp-3104],                  rcx
     mov                  rax,      qword[rbp-3104]
     and                  rax,      qword[rbp-3096]
     mov      qword[rbp-3104],                  rax
     mov                  rcx,      qword[rbp-3104]
     mov      qword[rbp-3112],                  rcx
	jmp	@main.71.@getnumber.14.@shift_r.2.exit
@main.71.@getnumber.14.@shift_r.2.exit:
     mov                  rcx,      qword[rbp-3112]
     mov      qword[rbp-3120],                  rcx
     mov                  rcx,      qword[rbp-2928]
     mov      qword[rbp-3128],                  rcx
     mov                  rax,      qword[rbp-3128]
      or                  rax,      qword[rbp-3120]
     mov      qword[rbp-3128],                  rax
     mov                  rcx,      qword[rbp-3128]
     mov      qword[rbp-3136],                  rcx
	jmp	@main.58.@getnumber.2.exit
@main.58.@getnumber.2.exit:
     mov                  rcx,      qword[rbp-3136]
     mov      qword[rbp-3144],                  rcx
     mov                  rcx,      qword[rbp-3144]
     mov      qword[rbp-3152],                  rcx
     mov                  rcx,        qword[rbp-40]
     mov      qword[rbp-3160],                  rcx
     mov      qword[rbp-3168],                    1
@main.73.@xorshift.1.enter:
     mov                  rcx,      qword[rbp-3160]
     mov      qword[rbp-3176],                  rcx
     mov                  rax,      qword[rbp-3176]
     add                  rax,                    1
     mov      qword[rbp-3176],                  rax
     mov                  rcx,      qword[rbp-3176]
     mov      qword[rbp-3184],                  rcx
     mov      qword[rbp-3192],                    0
	jmp	@main.74.@xorshift.5.ForCon
@main.75.@xorshift.4.ForBody:
     mov                  rcx,      qword[rbp-3184]
     mov      qword[rbp-3200],                  rcx
     mov      qword[rbp-3208],                   13
@main.76.@xorshift.9.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-3200]
     mov      qword[rbp-3216],                  rcx
     mov                  rcx,      qword[rbp-3208]
     shl      qword[rbp-3216],                   cl
     mov      qword[rbp-3224],                32767
     mov      qword[rbp-3232],                65535
@main.77.@xorshift.10.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-3224]
     mov      qword[rbp-3240],                  rcx
     shl      qword[rbp-3240],                   16
     mov                  rcx,      qword[rbp-3232]
     mov      qword[rbp-3248],                  rcx
     mov                  rax,      qword[rbp-3248]
      or                  rax,      qword[rbp-3240]
     mov      qword[rbp-3248],                  rax
     mov                  rcx,      qword[rbp-3248]
     mov      qword[rbp-3256],                  rcx
	jmp	@main.78.@xorshift.11.@shift_l.4.@hilo.2.exit
@main.78.@xorshift.11.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-3256]
     mov      qword[rbp-3264],                  rcx
     mov                  rcx,      qword[rbp-3216]
     mov      qword[rbp-3272],                  rcx
     mov                  rax,      qword[rbp-3272]
     and                  rax,      qword[rbp-3264]
     mov      qword[rbp-3272],                  rax
     mov                  rcx,      qword[rbp-3272]
     mov      qword[rbp-3280],                  rcx
	jmp	@main.79.@xorshift.8.@shift_l.2.exit
@main.79.@xorshift.8.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-3280]
     mov      qword[rbp-3288],                  rcx
     mov                  rcx,      qword[rbp-3184]
     mov      qword[rbp-3296],                  rcx
     mov                  rax,      qword[rbp-3296]
     xor                  rax,      qword[rbp-3288]
     mov      qword[rbp-3296],                  rax
     mov                  rcx,      qword[rbp-3296]
     mov      qword[rbp-3184],                  rcx
     mov                  rcx,      qword[rbp-3184]
     mov      qword[rbp-3304],                  rcx
     mov      qword[rbp-3312],                   17
@main.80.@xorshift.13.@shift_r.1.enter:
     mov      qword[rbp-3320],                32767
     mov      qword[rbp-3328],                65535
@main.81.@xorshift.14.@shift_r.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-3320]
     mov      qword[rbp-3336],                  rcx
     shl      qword[rbp-3336],                   16
     mov                  rcx,      qword[rbp-3328]
     mov      qword[rbp-3344],                  rcx
     mov                  rax,      qword[rbp-3344]
      or                  rax,      qword[rbp-3336]
     mov      qword[rbp-3344],                  rax
     mov                  rcx,      qword[rbp-3344]
     mov      qword[rbp-3352],                  rcx
	jmp	@main.82.@xorshift.15.@shift_r.4.@hilo.2.exit
@main.82.@xorshift.15.@shift_r.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-3352]
     mov      qword[rbp-3360],                  rcx
     mov                  rcx,      qword[rbp-3360]
     mov      qword[rbp-3368],                  rcx
     mov                  rcx,      qword[rbp-3368]
     mov      qword[rbp-3376],                  rcx
     mov                  rcx,      qword[rbp-3312]
     shr      qword[rbp-3376],                   cl
     mov                  rcx,      qword[rbp-3376]
     mov      qword[rbp-3384],                  rcx
     shl      qword[rbp-3384],                    1
     mov                  rcx,      qword[rbp-3384]
     mov      qword[rbp-3392],                  rcx
     mov                  rax,      qword[rbp-3392]
     add                  rax,                    1
     mov      qword[rbp-3392],                  rax
     mov                  rcx,      qword[rbp-3392]
     mov      qword[rbp-3368],                  rcx
     mov                  rcx,      qword[rbp-3304]
     mov      qword[rbp-3400],                  rcx
     mov                  rcx,      qword[rbp-3312]
     shr      qword[rbp-3400],                   cl
     mov                  rcx,      qword[rbp-3368]
     mov      qword[rbp-3408],                  rcx
     mov                  rax,      qword[rbp-3408]
     and                  rax,      qword[rbp-3400]
     mov      qword[rbp-3408],                  rax
     mov                  rcx,      qword[rbp-3408]
     mov      qword[rbp-3368],                  rcx
     mov      qword[rbp-3416],                32767
     mov      qword[rbp-3424],                65535
@main.83.@xorshift.16.@shift_r.7.@hilo.1.enter:
     mov                  rcx,      qword[rbp-3416]
     mov      qword[rbp-3432],                  rcx
     shl      qword[rbp-3432],                   16
     mov                  rcx,      qword[rbp-3424]
     mov      qword[rbp-3440],                  rcx
     mov                  rax,      qword[rbp-3440]
      or                  rax,      qword[rbp-3432]
     mov      qword[rbp-3440],                  rax
     mov                  rcx,      qword[rbp-3440]
     mov      qword[rbp-3448],                  rcx
	jmp	@main.84.@xorshift.17.@shift_r.6.@hilo.2.exit
@main.84.@xorshift.17.@shift_r.6.@hilo.2.exit:
     mov                  rcx,      qword[rbp-3448]
     mov      qword[rbp-3456],                  rcx
     mov                  rcx,      qword[rbp-3368]
     mov      qword[rbp-3464],                  rcx
     mov                  rax,      qword[rbp-3464]
     and                  rax,      qword[rbp-3456]
     mov      qword[rbp-3464],                  rax
     mov                  rcx,      qword[rbp-3464]
     mov      qword[rbp-3472],                  rcx
	jmp	@main.85.@xorshift.12.@shift_r.2.exit
@main.85.@xorshift.12.@shift_r.2.exit:
     mov                  rcx,      qword[rbp-3472]
     mov      qword[rbp-3480],                  rcx
     mov                  rcx,      qword[rbp-3184]
     mov      qword[rbp-3488],                  rcx
     mov                  rax,      qword[rbp-3488]
     xor                  rax,      qword[rbp-3480]
     mov      qword[rbp-3488],                  rax
     mov                  rcx,      qword[rbp-3488]
     mov      qword[rbp-3184],                  rcx
     mov                  rcx,      qword[rbp-3184]
     mov      qword[rbp-3496],                  rcx
     mov      qword[rbp-3504],                    5
@main.86.@xorshift.19.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-3496]
     mov      qword[rbp-3512],                  rcx
     mov                  rcx,      qword[rbp-3504]
     shl      qword[rbp-3512],                   cl
     mov      qword[rbp-3520],                32767
     mov      qword[rbp-3528],                65535
@main.87.@xorshift.20.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-3520]
     mov      qword[rbp-3536],                  rcx
     shl      qword[rbp-3536],                   16
     mov                  rcx,      qword[rbp-3528]
     mov      qword[rbp-3544],                  rcx
     mov                  rax,      qword[rbp-3544]
      or                  rax,      qword[rbp-3536]
     mov      qword[rbp-3544],                  rax
     mov                  rcx,      qword[rbp-3544]
     mov      qword[rbp-3552],                  rcx
	jmp	@main.88.@xorshift.21.@shift_l.4.@hilo.2.exit
@main.88.@xorshift.21.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-3552]
     mov      qword[rbp-3560],                  rcx
     mov                  rcx,      qword[rbp-3512]
     mov      qword[rbp-3568],                  rcx
     mov                  rax,      qword[rbp-3568]
     and                  rax,      qword[rbp-3560]
     mov      qword[rbp-3568],                  rax
     mov                  rcx,      qword[rbp-3568]
     mov      qword[rbp-3576],                  rcx
	jmp	@main.89.@xorshift.18.@shift_l.2.exit
@main.89.@xorshift.18.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-3576]
     mov      qword[rbp-3584],                  rcx
     mov                  rcx,      qword[rbp-3184]
     mov      qword[rbp-3592],                  rcx
     mov                  rax,      qword[rbp-3592]
     xor                  rax,      qword[rbp-3584]
     mov      qword[rbp-3592],                  rax
     mov                  rcx,      qword[rbp-3592]
     mov      qword[rbp-3184],                  rcx
	jmp	@main.90.@xorshift.3.ForIter
@main.90.@xorshift.3.ForIter:
     mov                  rcx,      qword[rbp-3192]
     mov      qword[rbp-3600],                  rcx
     add      qword[rbp-3192],                    1
	jmp	@main.74.@xorshift.5.ForCon
@main.74.@xorshift.5.ForCon:
     mov                  rcx,      qword[rbp-3168]
     mov      qword[rbp-3608],                  rcx
     mov                  rax,      qword[rbp-3608]
    imul                  rax,                   10
     mov      qword[rbp-3608],                  rax
     mov                  rcx,      qword[rbp-3192]
     cmp                  rcx,      qword[rbp-3608]
     mov                  rax,                    0
    setl                   al
     mov      qword[rbp-3616],                  rax
     mov                  rcx,      qword[rbp-3616]
     mov      qword[rbp-3624],                  rcx
     cmp      qword[rbp-3624],                    1
	je	@main.75.@xorshift.4.ForBody
	jmp	@main.91.@xorshift.6.ForExit
@main.91.@xorshift.6.ForExit:
     mov                  rcx,      qword[rbp-3184]
     mov      qword[rbp-3632],                  rcx
     mov                  rax,      qword[rbp-3632]
     xor                  rax,            123456789
     mov      qword[rbp-3632],                  rax
     mov                  rcx,      qword[rbp-3632]
     mov      qword[rbp-3640],                  rcx
	jmp	@main.72.@xorshift.2.exit
@main.72.@xorshift.2.exit:
     mov                  rcx,      qword[rbp-3640]
     mov      qword[rbp-3648],                  rcx
     mov                  rcx,        qword[rbp-32]
     mov      qword[rbp-3656],                  rcx
     mov      qword[rbp-3664],                    1
@main.93.@xorshift.1.enter:
     mov                  rcx,      qword[rbp-3656]
     mov      qword[rbp-3672],                  rcx
     mov                  rax,      qword[rbp-3672]
     add                  rax,                    1
     mov      qword[rbp-3672],                  rax
     mov                  rcx,      qword[rbp-3672]
     mov      qword[rbp-3680],                  rcx
     mov      qword[rbp-3688],                    0
	jmp	@main.94.@xorshift.5.ForCon
@main.95.@xorshift.4.ForBody:
     mov                  rcx,      qword[rbp-3680]
     mov      qword[rbp-3696],                  rcx
     mov      qword[rbp-3704],                   13
@main.96.@xorshift.9.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-3696]
     mov      qword[rbp-3712],                  rcx
     mov                  rcx,      qword[rbp-3704]
     shl      qword[rbp-3712],                   cl
     mov      qword[rbp-3720],                32767
     mov      qword[rbp-3728],                65535
@main.97.@xorshift.10.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-3720]
     mov      qword[rbp-3736],                  rcx
     shl      qword[rbp-3736],                   16
     mov                  rcx,      qword[rbp-3728]
     mov      qword[rbp-3744],                  rcx
     mov                  rax,      qword[rbp-3744]
      or                  rax,      qword[rbp-3736]
     mov      qword[rbp-3744],                  rax
     mov                  rcx,      qword[rbp-3744]
     mov      qword[rbp-3752],                  rcx
	jmp	@main.98.@xorshift.11.@shift_l.4.@hilo.2.exit
@main.98.@xorshift.11.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-3752]
     mov      qword[rbp-3760],                  rcx
     mov                  rcx,      qword[rbp-3712]
     mov      qword[rbp-3768],                  rcx
     mov                  rax,      qword[rbp-3768]
     and                  rax,      qword[rbp-3760]
     mov      qword[rbp-3768],                  rax
     mov                  rcx,      qword[rbp-3768]
     mov      qword[rbp-3776],                  rcx
	jmp	@main.99.@xorshift.8.@shift_l.2.exit
@main.99.@xorshift.8.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-3776]
     mov      qword[rbp-3784],                  rcx
     mov                  rcx,      qword[rbp-3680]
     mov      qword[rbp-3792],                  rcx
     mov                  rax,      qword[rbp-3792]
     xor                  rax,      qword[rbp-3784]
     mov      qword[rbp-3792],                  rax
     mov                  rcx,      qword[rbp-3792]
     mov      qword[rbp-3680],                  rcx
     mov                  rcx,      qword[rbp-3680]
     mov      qword[rbp-3800],                  rcx
     mov      qword[rbp-3808],                   17
@main.100.@xorshift.13.@shift_r.1.enter:
     mov      qword[rbp-3816],                32767
     mov      qword[rbp-3824],                65535
@main.101.@xorshift.14.@shift_r.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-3816]
     mov      qword[rbp-3832],                  rcx
     shl      qword[rbp-3832],                   16
     mov                  rcx,      qword[rbp-3824]
     mov      qword[rbp-3840],                  rcx
     mov                  rax,      qword[rbp-3840]
      or                  rax,      qword[rbp-3832]
     mov      qword[rbp-3840],                  rax
     mov                  rcx,      qword[rbp-3840]
     mov      qword[rbp-3848],                  rcx
	jmp	@main.102.@xorshift.15.@shift_r.4.@hilo.2.exit
@main.102.@xorshift.15.@shift_r.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-3848]
     mov      qword[rbp-3856],                  rcx
     mov                  rcx,      qword[rbp-3856]
     mov      qword[rbp-3864],                  rcx
     mov                  rcx,      qword[rbp-3864]
     mov      qword[rbp-3872],                  rcx
     mov                  rcx,      qword[rbp-3808]
     shr      qword[rbp-3872],                   cl
     mov                  rcx,      qword[rbp-3872]
     mov      qword[rbp-3880],                  rcx
     shl      qword[rbp-3880],                    1
     mov                  rcx,      qword[rbp-3880]
     mov      qword[rbp-3888],                  rcx
     mov                  rax,      qword[rbp-3888]
     add                  rax,                    1
     mov      qword[rbp-3888],                  rax
     mov                  rcx,      qword[rbp-3888]
     mov      qword[rbp-3864],                  rcx
     mov                  rcx,      qword[rbp-3800]
     mov      qword[rbp-3896],                  rcx
     mov                  rcx,      qword[rbp-3808]
     shr      qword[rbp-3896],                   cl
     mov                  rcx,      qword[rbp-3864]
     mov      qword[rbp-3904],                  rcx
     mov                  rax,      qword[rbp-3904]
     and                  rax,      qword[rbp-3896]
     mov      qword[rbp-3904],                  rax
     mov                  rcx,      qword[rbp-3904]
     mov      qword[rbp-3864],                  rcx
     mov      qword[rbp-3912],                32767
     mov      qword[rbp-3920],                65535
@main.103.@xorshift.16.@shift_r.7.@hilo.1.enter:
     mov                  rcx,      qword[rbp-3912]
     mov      qword[rbp-3928],                  rcx
     shl      qword[rbp-3928],                   16
     mov                  rcx,      qword[rbp-3920]
     mov      qword[rbp-3936],                  rcx
     mov                  rax,      qword[rbp-3936]
      or                  rax,      qword[rbp-3928]
     mov      qword[rbp-3936],                  rax
     mov                  rcx,      qword[rbp-3936]
     mov      qword[rbp-3944],                  rcx
	jmp	@main.104.@xorshift.17.@shift_r.6.@hilo.2.exit
@main.104.@xorshift.17.@shift_r.6.@hilo.2.exit:
     mov                  rcx,      qword[rbp-3944]
     mov      qword[rbp-3952],                  rcx
     mov                  rcx,      qword[rbp-3864]
     mov      qword[rbp-3960],                  rcx
     mov                  rax,      qword[rbp-3960]
     and                  rax,      qword[rbp-3952]
     mov      qword[rbp-3960],                  rax
     mov                  rcx,      qword[rbp-3960]
     mov      qword[rbp-3968],                  rcx
	jmp	@main.105.@xorshift.12.@shift_r.2.exit
@main.105.@xorshift.12.@shift_r.2.exit:
     mov                  rcx,      qword[rbp-3968]
     mov      qword[rbp-3976],                  rcx
     mov                  rcx,      qword[rbp-3680]
     mov      qword[rbp-3984],                  rcx
     mov                  rax,      qword[rbp-3984]
     xor                  rax,      qword[rbp-3976]
     mov      qword[rbp-3984],                  rax
     mov                  rcx,      qword[rbp-3984]
     mov      qword[rbp-3680],                  rcx
     mov                  rcx,      qword[rbp-3680]
     mov      qword[rbp-3992],                  rcx
     mov      qword[rbp-4000],                    5
@main.106.@xorshift.19.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-3992]
     mov      qword[rbp-4008],                  rcx
     mov                  rcx,      qword[rbp-4000]
     shl      qword[rbp-4008],                   cl
     mov      qword[rbp-4016],                32767
     mov      qword[rbp-4024],                65535
@main.107.@xorshift.20.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-4016]
     mov      qword[rbp-4032],                  rcx
     shl      qword[rbp-4032],                   16
     mov                  rcx,      qword[rbp-4024]
     mov      qword[rbp-4040],                  rcx
     mov                  rax,      qword[rbp-4040]
      or                  rax,      qword[rbp-4032]
     mov      qword[rbp-4040],                  rax
     mov                  rcx,      qword[rbp-4040]
     mov      qword[rbp-4048],                  rcx
	jmp	@main.108.@xorshift.21.@shift_l.4.@hilo.2.exit
@main.108.@xorshift.21.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-4048]
     mov      qword[rbp-4056],                  rcx
     mov                  rcx,      qword[rbp-4008]
     mov      qword[rbp-4064],                  rcx
     mov                  rax,      qword[rbp-4064]
     and                  rax,      qword[rbp-4056]
     mov      qword[rbp-4064],                  rax
     mov                  rcx,      qword[rbp-4064]
     mov      qword[rbp-4072],                  rcx
	jmp	@main.109.@xorshift.18.@shift_l.2.exit
@main.109.@xorshift.18.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-4072]
     mov      qword[rbp-4080],                  rcx
     mov                  rcx,      qword[rbp-3680]
     mov      qword[rbp-4088],                  rcx
     mov                  rax,      qword[rbp-4088]
     xor                  rax,      qword[rbp-4080]
     mov      qword[rbp-4088],                  rax
     mov                  rcx,      qword[rbp-4088]
     mov      qword[rbp-3680],                  rcx
	jmp	@main.110.@xorshift.3.ForIter
@main.110.@xorshift.3.ForIter:
     mov                  rcx,      qword[rbp-3688]
     mov      qword[rbp-4096],                  rcx
     add      qword[rbp-3688],                    1
	jmp	@main.94.@xorshift.5.ForCon
@main.94.@xorshift.5.ForCon:
     mov                  rcx,      qword[rbp-3664]
     mov      qword[rbp-4104],                  rcx
     mov                  rax,      qword[rbp-4104]
    imul                  rax,                   10
     mov      qword[rbp-4104],                  rax
     mov                  rcx,      qword[rbp-3688]
     cmp                  rcx,      qword[rbp-4104]
     mov                  rax,                    0
    setl                   al
     mov      qword[rbp-4112],                  rax
     mov                  rcx,      qword[rbp-4112]
     mov      qword[rbp-4120],                  rcx
     cmp      qword[rbp-4120],                    1
	je	@main.95.@xorshift.4.ForBody
	jmp	@main.111.@xorshift.6.ForExit
@main.111.@xorshift.6.ForExit:
     mov                  rcx,      qword[rbp-3680]
     mov      qword[rbp-4128],                  rcx
     mov                  rax,      qword[rbp-4128]
     xor                  rax,            123456789
     mov      qword[rbp-4128],                  rax
     mov                  rcx,      qword[rbp-4128]
     mov      qword[rbp-4136],                  rcx
	jmp	@main.92.@xorshift.2.exit
@main.92.@xorshift.2.exit:
     mov                  rcx,      qword[rbp-4136]
     mov      qword[rbp-4144],                  rcx
     mov                  rcx,      qword[rbp-3648]
     mov      qword[rbp-4152],                  rcx
     mov                  rax,      qword[rbp-4152]
     xor                  rax,      qword[rbp-4144]
     mov      qword[rbp-4152],                  rax
     mov                  rcx,        qword[rbp-24]
     mov      qword[rbp-4160],                  rcx
     mov      qword[rbp-4168],                    1
@main.113.@xorshift.1.enter:
     mov                  rcx,      qword[rbp-4160]
     mov      qword[rbp-4176],                  rcx
     mov                  rax,      qword[rbp-4176]
     add                  rax,                    1
     mov      qword[rbp-4176],                  rax
     mov                  rcx,      qword[rbp-4176]
     mov      qword[rbp-4184],                  rcx
     mov      qword[rbp-4192],                    0
	jmp	@main.114.@xorshift.5.ForCon
@main.115.@xorshift.4.ForBody:
     mov                  rcx,      qword[rbp-4184]
     mov      qword[rbp-4200],                  rcx
     mov      qword[rbp-4208],                   13
@main.116.@xorshift.9.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-4200]
     mov      qword[rbp-4216],                  rcx
     mov                  rcx,      qword[rbp-4208]
     shl      qword[rbp-4216],                   cl
     mov      qword[rbp-4224],                32767
     mov      qword[rbp-4232],                65535
@main.117.@xorshift.10.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-4224]
     mov      qword[rbp-4240],                  rcx
     shl      qword[rbp-4240],                   16
     mov                  rcx,      qword[rbp-4232]
     mov      qword[rbp-4248],                  rcx
     mov                  rax,      qword[rbp-4248]
      or                  rax,      qword[rbp-4240]
     mov      qword[rbp-4248],                  rax
     mov                  rcx,      qword[rbp-4248]
     mov      qword[rbp-4256],                  rcx
	jmp	@main.118.@xorshift.11.@shift_l.4.@hilo.2.exit
@main.118.@xorshift.11.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-4256]
     mov      qword[rbp-4264],                  rcx
     mov                  rcx,      qword[rbp-4216]
     mov      qword[rbp-4272],                  rcx
     mov                  rax,      qword[rbp-4272]
     and                  rax,      qword[rbp-4264]
     mov      qword[rbp-4272],                  rax
     mov                  rcx,      qword[rbp-4272]
     mov      qword[rbp-4280],                  rcx
	jmp	@main.119.@xorshift.8.@shift_l.2.exit
@main.119.@xorshift.8.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-4280]
     mov      qword[rbp-4288],                  rcx
     mov                  rcx,      qword[rbp-4184]
     mov      qword[rbp-4296],                  rcx
     mov                  rax,      qword[rbp-4296]
     xor                  rax,      qword[rbp-4288]
     mov      qword[rbp-4296],                  rax
     mov                  rcx,      qword[rbp-4296]
     mov      qword[rbp-4184],                  rcx
     mov                  rcx,      qword[rbp-4184]
     mov      qword[rbp-4304],                  rcx
     mov      qword[rbp-4312],                   17
@main.120.@xorshift.13.@shift_r.1.enter:
     mov      qword[rbp-4320],                32767
     mov      qword[rbp-4328],                65535
@main.121.@xorshift.14.@shift_r.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-4320]
     mov      qword[rbp-4336],                  rcx
     shl      qword[rbp-4336],                   16
     mov                  rcx,      qword[rbp-4328]
     mov      qword[rbp-4344],                  rcx
     mov                  rax,      qword[rbp-4344]
      or                  rax,      qword[rbp-4336]
     mov      qword[rbp-4344],                  rax
     mov                  rcx,      qword[rbp-4344]
     mov      qword[rbp-4352],                  rcx
	jmp	@main.122.@xorshift.15.@shift_r.4.@hilo.2.exit
@main.122.@xorshift.15.@shift_r.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-4352]
     mov      qword[rbp-4360],                  rcx
     mov                  rcx,      qword[rbp-4360]
     mov      qword[rbp-4368],                  rcx
     mov                  rcx,      qword[rbp-4368]
     mov      qword[rbp-4376],                  rcx
     mov                  rcx,      qword[rbp-4312]
     shr      qword[rbp-4376],                   cl
     mov                  rcx,      qword[rbp-4376]
     mov      qword[rbp-4384],                  rcx
     shl      qword[rbp-4384],                    1
     mov                  rcx,      qword[rbp-4384]
     mov      qword[rbp-4392],                  rcx
     mov                  rax,      qword[rbp-4392]
     add                  rax,                    1
     mov      qword[rbp-4392],                  rax
     mov                  rcx,      qword[rbp-4392]
     mov      qword[rbp-4368],                  rcx
     mov                  rcx,      qword[rbp-4304]
     mov      qword[rbp-4400],                  rcx
     mov                  rcx,      qword[rbp-4312]
     shr      qword[rbp-4400],                   cl
     mov                  rcx,      qword[rbp-4368]
     mov      qword[rbp-4408],                  rcx
     mov                  rax,      qword[rbp-4408]
     and                  rax,      qword[rbp-4400]
     mov      qword[rbp-4408],                  rax
     mov                  rcx,      qword[rbp-4408]
     mov      qword[rbp-4368],                  rcx
     mov      qword[rbp-4416],                32767
     mov      qword[rbp-4424],                65535
@main.123.@xorshift.16.@shift_r.7.@hilo.1.enter:
     mov                  rcx,      qword[rbp-4416]
     mov      qword[rbp-4432],                  rcx
     shl      qword[rbp-4432],                   16
     mov                  rcx,      qword[rbp-4424]
     mov      qword[rbp-4440],                  rcx
     mov                  rax,      qword[rbp-4440]
      or                  rax,      qword[rbp-4432]
     mov      qword[rbp-4440],                  rax
     mov                  rcx,      qword[rbp-4440]
     mov      qword[rbp-4448],                  rcx
	jmp	@main.124.@xorshift.17.@shift_r.6.@hilo.2.exit
@main.124.@xorshift.17.@shift_r.6.@hilo.2.exit:
     mov                  rcx,      qword[rbp-4448]
     mov      qword[rbp-4456],                  rcx
     mov                  rcx,      qword[rbp-4368]
     mov      qword[rbp-4464],                  rcx
     mov                  rax,      qword[rbp-4464]
     and                  rax,      qword[rbp-4456]
     mov      qword[rbp-4464],                  rax
     mov                  rcx,      qword[rbp-4464]
     mov      qword[rbp-4472],                  rcx
	jmp	@main.125.@xorshift.12.@shift_r.2.exit
@main.125.@xorshift.12.@shift_r.2.exit:
     mov                  rcx,      qword[rbp-4472]
     mov      qword[rbp-4480],                  rcx
     mov                  rcx,      qword[rbp-4184]
     mov      qword[rbp-4488],                  rcx
     mov                  rax,      qword[rbp-4488]
     xor                  rax,      qword[rbp-4480]
     mov      qword[rbp-4488],                  rax
     mov                  rcx,      qword[rbp-4488]
     mov      qword[rbp-4184],                  rcx
     mov                  rcx,      qword[rbp-4184]
     mov      qword[rbp-4496],                  rcx
     mov      qword[rbp-4504],                    5
@main.126.@xorshift.19.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-4496]
     mov      qword[rbp-4512],                  rcx
     mov                  rcx,      qword[rbp-4504]
     shl      qword[rbp-4512],                   cl
     mov      qword[rbp-4520],                32767
     mov      qword[rbp-4528],                65535
@main.127.@xorshift.20.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-4520]
     mov      qword[rbp-4536],                  rcx
     shl      qword[rbp-4536],                   16
     mov                  rcx,      qword[rbp-4528]
     mov      qword[rbp-4544],                  rcx
     mov                  rax,      qword[rbp-4544]
      or                  rax,      qword[rbp-4536]
     mov      qword[rbp-4544],                  rax
     mov                  rcx,      qword[rbp-4544]
     mov      qword[rbp-4552],                  rcx
	jmp	@main.128.@xorshift.21.@shift_l.4.@hilo.2.exit
@main.128.@xorshift.21.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-4552]
     mov      qword[rbp-4560],                  rcx
     mov                  rcx,      qword[rbp-4512]
     mov      qword[rbp-4568],                  rcx
     mov                  rax,      qword[rbp-4568]
     and                  rax,      qword[rbp-4560]
     mov      qword[rbp-4568],                  rax
     mov                  rcx,      qword[rbp-4568]
     mov      qword[rbp-4576],                  rcx
	jmp	@main.129.@xorshift.18.@shift_l.2.exit
@main.129.@xorshift.18.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-4576]
     mov      qword[rbp-4584],                  rcx
     mov                  rcx,      qword[rbp-4184]
     mov      qword[rbp-4592],                  rcx
     mov                  rax,      qword[rbp-4592]
     xor                  rax,      qword[rbp-4584]
     mov      qword[rbp-4592],                  rax
     mov                  rcx,      qword[rbp-4592]
     mov      qword[rbp-4184],                  rcx
	jmp	@main.130.@xorshift.3.ForIter
@main.130.@xorshift.3.ForIter:
     mov                  rcx,      qword[rbp-4192]
     mov      qword[rbp-4600],                  rcx
     add      qword[rbp-4192],                    1
	jmp	@main.114.@xorshift.5.ForCon
@main.114.@xorshift.5.ForCon:
     mov                  rcx,      qword[rbp-4168]
     mov      qword[rbp-4608],                  rcx
     mov                  rax,      qword[rbp-4608]
    imul                  rax,                   10
     mov      qword[rbp-4608],                  rax
     mov                  rcx,      qword[rbp-4192]
     cmp                  rcx,      qword[rbp-4608]
     mov                  rax,                    0
    setl                   al
     mov      qword[rbp-4616],                  rax
     mov                  rcx,      qword[rbp-4616]
     mov      qword[rbp-4624],                  rcx
     cmp      qword[rbp-4624],                    1
	je	@main.115.@xorshift.4.ForBody
	jmp	@main.131.@xorshift.6.ForExit
@main.131.@xorshift.6.ForExit:
     mov                  rcx,      qword[rbp-4184]
     mov      qword[rbp-4632],                  rcx
     mov                  rax,      qword[rbp-4632]
     xor                  rax,            123456789
     mov      qword[rbp-4632],                  rax
     mov                  rcx,      qword[rbp-4632]
     mov      qword[rbp-4640],                  rcx
	jmp	@main.112.@xorshift.2.exit
@main.112.@xorshift.2.exit:
     mov                  rcx,      qword[rbp-4640]
     mov      qword[rbp-4648],                  rcx
     mov                  rcx,      qword[rbp-4152]
     mov      qword[rbp-4656],                  rcx
     mov                  rax,      qword[rbp-4656]
     xor                  rax,      qword[rbp-4648]
     mov      qword[rbp-4656],                  rax
     mov                  rcx,      qword[rbp-4656]
     mov      qword[rbp-4664],                  rcx
     mov                   r9,                   r9
     xor                   r9,      qword[rbp-4664]
     mov      qword[rbp-4672],                   r9
     mov                   r9,                    1
@main.133.@xorshift.1.enter:
     mov                  rcx,      qword[rbp-4672]
     mov      qword[rbp-4680],                  rcx
     mov                  rax,      qword[rbp-4680]
     add                  rax,                    1
     mov      qword[rbp-4680],                  rax
     mov                  rcx,      qword[rbp-4680]
     mov      qword[rbp-4688],                  rcx
     mov      qword[rbp-4696],                    0
	jmp	@main.134.@xorshift.5.ForCon
@main.135.@xorshift.4.ForBody:
     mov                  rcx,      qword[rbp-4688]
     mov      qword[rbp-4704],                  rcx
     mov      qword[rbp-4712],                   13
@main.136.@xorshift.9.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-4704]
     mov      qword[rbp-4720],                  rcx
     mov                  rcx,      qword[rbp-4712]
     shl      qword[rbp-4720],                   cl
     mov      qword[rbp-4728],                32767
     mov      qword[rbp-4736],                65535
@main.137.@xorshift.10.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-4728]
     mov      qword[rbp-4744],                  rcx
     shl      qword[rbp-4744],                   16
     mov                  rcx,      qword[rbp-4736]
     mov      qword[rbp-4752],                  rcx
     mov                  rax,      qword[rbp-4752]
      or                  rax,      qword[rbp-4744]
     mov      qword[rbp-4752],                  rax
     mov                  rcx,      qword[rbp-4752]
     mov      qword[rbp-4760],                  rcx
	jmp	@main.138.@xorshift.11.@shift_l.4.@hilo.2.exit
@main.138.@xorshift.11.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-4760]
     mov      qword[rbp-4768],                  rcx
     mov                  rcx,      qword[rbp-4720]
     mov      qword[rbp-4776],                  rcx
     mov                  rax,      qword[rbp-4776]
     and                  rax,      qword[rbp-4768]
     mov      qword[rbp-4776],                  rax
     mov                  rcx,      qword[rbp-4776]
     mov      qword[rbp-4784],                  rcx
	jmp	@main.139.@xorshift.8.@shift_l.2.exit
@main.139.@xorshift.8.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-4784]
     mov      qword[rbp-4792],                  rcx
     mov                  rcx,      qword[rbp-4688]
     mov      qword[rbp-4800],                  rcx
     mov                  rax,      qword[rbp-4800]
     xor                  rax,      qword[rbp-4792]
     mov      qword[rbp-4800],                  rax
     mov                  rcx,      qword[rbp-4800]
     mov      qword[rbp-4688],                  rcx
     mov                  rcx,      qword[rbp-4688]
     mov      qword[rbp-4808],                  rcx
     mov      qword[rbp-4816],                   17
@main.140.@xorshift.13.@shift_r.1.enter:
     mov      qword[rbp-4824],                32767
     mov      qword[rbp-4832],                65535
@main.141.@xorshift.14.@shift_r.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-4824]
     mov      qword[rbp-4840],                  rcx
     shl      qword[rbp-4840],                   16
     mov                  rcx,      qword[rbp-4832]
     mov      qword[rbp-4848],                  rcx
     mov                  rax,      qword[rbp-4848]
      or                  rax,      qword[rbp-4840]
     mov      qword[rbp-4848],                  rax
     mov                  rcx,      qword[rbp-4848]
     mov      qword[rbp-4856],                  rcx
	jmp	@main.142.@xorshift.15.@shift_r.4.@hilo.2.exit
@main.142.@xorshift.15.@shift_r.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-4856]
     mov      qword[rbp-4864],                  rcx
     mov                  rcx,      qword[rbp-4864]
     mov      qword[rbp-4872],                  rcx
     mov                  rcx,      qword[rbp-4872]
     mov      qword[rbp-4880],                  rcx
     mov                  rcx,      qword[rbp-4816]
     shr      qword[rbp-4880],                   cl
     mov                  rcx,      qword[rbp-4880]
     mov      qword[rbp-4888],                  rcx
     shl      qword[rbp-4888],                    1
     mov                  rcx,      qword[rbp-4888]
     mov      qword[rbp-4896],                  rcx
     mov                  rax,      qword[rbp-4896]
     add                  rax,                    1
     mov      qword[rbp-4896],                  rax
     mov                  rcx,      qword[rbp-4896]
     mov      qword[rbp-4872],                  rcx
     mov                  rcx,      qword[rbp-4808]
     mov      qword[rbp-4904],                  rcx
     mov                  rcx,      qword[rbp-4816]
     shr      qword[rbp-4904],                   cl
     mov                  rcx,      qword[rbp-4872]
     mov      qword[rbp-4912],                  rcx
     mov                  rax,      qword[rbp-4912]
     and                  rax,      qword[rbp-4904]
     mov      qword[rbp-4912],                  rax
     mov                  rcx,      qword[rbp-4912]
     mov      qword[rbp-4872],                  rcx
     mov      qword[rbp-4920],                32767
     mov      qword[rbp-4928],                65535
@main.143.@xorshift.16.@shift_r.7.@hilo.1.enter:
     mov                  rcx,      qword[rbp-4920]
     mov      qword[rbp-4936],                  rcx
     shl      qword[rbp-4936],                   16
     mov                  rcx,      qword[rbp-4928]
     mov      qword[rbp-4944],                  rcx
     mov                  rax,      qword[rbp-4944]
      or                  rax,      qword[rbp-4936]
     mov      qword[rbp-4944],                  rax
     mov                  rcx,      qword[rbp-4944]
     mov      qword[rbp-4952],                  rcx
	jmp	@main.144.@xorshift.17.@shift_r.6.@hilo.2.exit
@main.144.@xorshift.17.@shift_r.6.@hilo.2.exit:
     mov                  rcx,      qword[rbp-4952]
     mov      qword[rbp-4960],                  rcx
     mov                  rcx,      qword[rbp-4872]
     mov      qword[rbp-4968],                  rcx
     mov                  rax,      qword[rbp-4968]
     and                  rax,      qword[rbp-4960]
     mov      qword[rbp-4968],                  rax
     mov                  rcx,      qword[rbp-4968]
     mov      qword[rbp-4976],                  rcx
	jmp	@main.145.@xorshift.12.@shift_r.2.exit
@main.145.@xorshift.12.@shift_r.2.exit:
     mov                  rcx,      qword[rbp-4976]
     mov      qword[rbp-4984],                  rcx
     mov                  rcx,      qword[rbp-4688]
     mov      qword[rbp-4992],                  rcx
     mov                  rax,      qword[rbp-4992]
     xor                  rax,      qword[rbp-4984]
     mov      qword[rbp-4992],                  rax
     mov                  rcx,      qword[rbp-4992]
     mov      qword[rbp-4688],                  rcx
     mov                  rcx,      qword[rbp-4688]
     mov      qword[rbp-5000],                  rcx
     mov      qword[rbp-5008],                    5
@main.146.@xorshift.19.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-5000]
     mov      qword[rbp-5016],                  rcx
     mov                  rcx,      qword[rbp-5008]
     shl      qword[rbp-5016],                   cl
     mov      qword[rbp-5024],                32767
     mov      qword[rbp-5032],                65535
@main.147.@xorshift.20.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-5024]
     mov      qword[rbp-5040],                  rcx
     shl      qword[rbp-5040],                   16
     mov                  rcx,      qword[rbp-5032]
     mov      qword[rbp-5048],                  rcx
     mov                  rax,      qword[rbp-5048]
      or                  rax,      qword[rbp-5040]
     mov      qword[rbp-5048],                  rax
     mov                  rcx,      qword[rbp-5048]
     mov      qword[rbp-5056],                  rcx
	jmp	@main.148.@xorshift.21.@shift_l.4.@hilo.2.exit
@main.148.@xorshift.21.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-5056]
     mov      qword[rbp-5064],                  rcx
     mov                  rcx,      qword[rbp-5016]
     mov      qword[rbp-5072],                  rcx
     mov                  rax,      qword[rbp-5072]
     and                  rax,      qword[rbp-5064]
     mov      qword[rbp-5072],                  rax
     mov                  rcx,      qword[rbp-5072]
     mov      qword[rbp-5080],                  rcx
	jmp	@main.149.@xorshift.18.@shift_l.2.exit
@main.149.@xorshift.18.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-5080]
     mov      qword[rbp-5088],                  rcx
     mov                  rcx,      qword[rbp-4688]
     mov      qword[rbp-5096],                  rcx
     mov                  rax,      qword[rbp-5096]
     xor                  rax,      qword[rbp-5088]
     mov      qword[rbp-5096],                  rax
     mov                  rcx,      qword[rbp-5096]
     mov      qword[rbp-4688],                  rcx
	jmp	@main.150.@xorshift.3.ForIter
@main.150.@xorshift.3.ForIter:
     mov                  rcx,      qword[rbp-4696]
     mov      qword[rbp-5104],                  rcx
     add      qword[rbp-4696],                    1
	jmp	@main.134.@xorshift.5.ForCon
@main.134.@xorshift.5.ForCon:
     mov      qword[rbp-5112],                   r9
     mov                  rax,      qword[rbp-5112]
    imul                  rax,                   10
     mov      qword[rbp-5112],                  rax
     mov                  rcx,      qword[rbp-4696]
     cmp                  rcx,      qword[rbp-5112]
     mov                  rax,                    0
    setl                   al
     mov      qword[rbp-5120],                  rax
     mov                  rcx,      qword[rbp-5120]
     mov      qword[rbp-5128],                  rcx
     cmp      qword[rbp-5128],                    1
	je	@main.135.@xorshift.4.ForBody
	jmp	@main.151.@xorshift.6.ForExit
@main.151.@xorshift.6.ForExit:
     mov                   r9,      qword[rbp-4688]
     xor                   r9,            123456789
     mov                   r9,                   r9
	jmp	@main.132.@xorshift.2.exit
@main.132.@xorshift.2.exit:
     mov                   r9,                   r9
     mov                  r14,                  r14
     add                  r14,                   r9
     mov                  r14,                  r14
     mov                   r9,                  r15
     xor                   r9,      qword[rbp-4664]
     mov                  r15,                   r9
     mov                   r9,                    1
@main.153.@xorshift.1.enter:
     mov                  r15,                  r15
     add                  r15,                    1
     mov      qword[rbp-5136],                  r15
     mov      qword[rbp-5144],                    0
	jmp	@main.154.@xorshift.5.ForCon
@main.155.@xorshift.4.ForBody:
     mov                  r15,      qword[rbp-5136]
     mov      qword[rbp-5152],                   13
@main.156.@xorshift.9.@shift_l.1.enter:
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-5152]
     shl                  r15,                   cl
     mov      qword[rbp-5160],                32767
     mov      qword[rbp-5168],                65535
@main.157.@xorshift.10.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-5160]
     mov      qword[rbp-5176],                  rcx
     shl      qword[rbp-5176],                   16
     mov                  rcx,      qword[rbp-5168]
     mov      qword[rbp-5184],                  rcx
     mov                  rax,      qword[rbp-5184]
      or                  rax,      qword[rbp-5176]
     mov      qword[rbp-5184],                  rax
     mov                  rcx,      qword[rbp-5184]
     mov      qword[rbp-5192],                  rcx
	jmp	@main.158.@xorshift.11.@shift_l.4.@hilo.2.exit
@main.158.@xorshift.11.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-5192]
     mov      qword[rbp-5200],                  rcx
     mov                  r15,                  r15
     and                  r15,      qword[rbp-5200]
     mov                  r15,                  r15
	jmp	@main.159.@xorshift.8.@shift_l.2.exit
@main.159.@xorshift.8.@shift_l.2.exit:
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-5136]
     mov      qword[rbp-5208],                  rcx
     mov                  rax,      qword[rbp-5208]
     xor                  rax,                  r15
     mov      qword[rbp-5208],                  rax
     mov                  rcx,      qword[rbp-5208]
     mov      qword[rbp-5136],                  rcx
     mov                  r15,      qword[rbp-5136]
     mov      qword[rbp-5216],                   17
@main.160.@xorshift.13.@shift_r.1.enter:
     mov      qword[rbp-5224],                32767
     mov      qword[rbp-5232],                65535
@main.161.@xorshift.14.@shift_r.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-5224]
     mov      qword[rbp-5240],                  rcx
     shl      qword[rbp-5240],                   16
     mov                  rcx,      qword[rbp-5232]
     mov      qword[rbp-5248],                  rcx
     mov                  rax,      qword[rbp-5248]
      or                  rax,      qword[rbp-5240]
     mov      qword[rbp-5248],                  rax
     mov                  rcx,      qword[rbp-5248]
     mov      qword[rbp-5256],                  rcx
	jmp	@main.162.@xorshift.15.@shift_r.4.@hilo.2.exit
@main.162.@xorshift.15.@shift_r.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-5256]
     mov      qword[rbp-5264],                  rcx
     mov                  rcx,      qword[rbp-5264]
     mov      qword[rbp-5272],                  rcx
     mov                  rcx,      qword[rbp-5272]
     mov      qword[rbp-5280],                  rcx
     mov                  rcx,      qword[rbp-5216]
     shr      qword[rbp-5280],                   cl
     mov                  rcx,      qword[rbp-5280]
     mov      qword[rbp-5288],                  rcx
     shl      qword[rbp-5288],                    1
     mov                  rcx,      qword[rbp-5288]
     mov      qword[rbp-5296],                  rcx
     mov                  rax,      qword[rbp-5296]
     add                  rax,                    1
     mov      qword[rbp-5296],                  rax
     mov                  rcx,      qword[rbp-5296]
     mov      qword[rbp-5272],                  rcx
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-5216]
     shr                  r15,                   cl
     mov                  rcx,      qword[rbp-5272]
     mov      qword[rbp-5304],                  rcx
     mov                  rax,      qword[rbp-5304]
     and                  rax,                  r15
     mov      qword[rbp-5304],                  rax
     mov                  rcx,      qword[rbp-5304]
     mov      qword[rbp-5272],                  rcx
     mov                  r15,                32767
     mov      qword[rbp-5312],                65535
@main.163.@xorshift.16.@shift_r.7.@hilo.1.enter:
     mov                  r15,                  r15
     shl                  r15,                   16
     mov                  rcx,      qword[rbp-5312]
     mov      qword[rbp-5320],                  rcx
     mov                  rax,      qword[rbp-5320]
      or                  rax,                  r15
     mov      qword[rbp-5320],                  rax
     mov                  r15,      qword[rbp-5320]
	jmp	@main.164.@xorshift.17.@shift_r.6.@hilo.2.exit
@main.164.@xorshift.17.@shift_r.6.@hilo.2.exit:
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-5272]
     mov      qword[rbp-5328],                  rcx
     mov                  rax,      qword[rbp-5328]
     and                  rax,                  r15
     mov      qword[rbp-5328],                  rax
     mov                  r15,      qword[rbp-5328]
	jmp	@main.165.@xorshift.12.@shift_r.2.exit
@main.165.@xorshift.12.@shift_r.2.exit:
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-5136]
     mov      qword[rbp-5336],                  rcx
     mov                  rax,      qword[rbp-5336]
     xor                  rax,                  r15
     mov      qword[rbp-5336],                  rax
     mov                  rcx,      qword[rbp-5336]
     mov      qword[rbp-5136],                  rcx
     mov                  r15,      qword[rbp-5136]
     mov      qword[rbp-5344],                    5
@main.166.@xorshift.19.@shift_l.1.enter:
     mov      qword[rbp-5352],                  r15
     mov                  rcx,      qword[rbp-5344]
     shl      qword[rbp-5352],                   cl
     mov                  r15,                32767
     mov      qword[rbp-5360],                65535
@main.167.@xorshift.20.@shift_l.5.@hilo.1.enter:
     mov                  r15,                  r15
     shl                  r15,                   16
     mov                  rcx,      qword[rbp-5360]
     mov      qword[rbp-5368],                  rcx
     mov                  rax,      qword[rbp-5368]
      or                  rax,                  r15
     mov      qword[rbp-5368],                  rax
     mov                  r15,      qword[rbp-5368]
	jmp	@main.168.@xorshift.21.@shift_l.4.@hilo.2.exit
@main.168.@xorshift.21.@shift_l.4.@hilo.2.exit:
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-5352]
     mov      qword[rbp-5376],                  rcx
     mov                  rax,      qword[rbp-5376]
     and                  rax,                  r15
     mov      qword[rbp-5376],                  rax
     mov                  r15,      qword[rbp-5376]
	jmp	@main.169.@xorshift.18.@shift_l.2.exit
@main.169.@xorshift.18.@shift_l.2.exit:
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-5136]
     mov      qword[rbp-5384],                  rcx
     mov                  rax,      qword[rbp-5384]
     xor                  rax,                  r15
     mov      qword[rbp-5384],                  rax
     mov                  rcx,      qword[rbp-5384]
     mov      qword[rbp-5136],                  rcx
	jmp	@main.170.@xorshift.3.ForIter
@main.170.@xorshift.3.ForIter:
     mov                  r15,      qword[rbp-5144]
     add      qword[rbp-5144],                    1
	jmp	@main.154.@xorshift.5.ForCon
@main.154.@xorshift.5.ForCon:
     mov                  r15,                   r9
    imul                  r15,                   10
     cmp      qword[rbp-5144],                  r15
     mov                  r15,                    0
    setl                 r15b
     mov                  r15,                  r15
     cmp                  r15,                    1
	je	@main.155.@xorshift.4.ForBody
	jmp	@main.171.@xorshift.6.ForExit
@main.171.@xorshift.6.ForExit:
     mov                   r9,      qword[rbp-5136]
     xor                   r9,            123456789
     mov                   r9,                   r9
	jmp	@main.152.@xorshift.2.exit
@main.152.@xorshift.2.exit:
     mov                   r9,                   r9
     mov                  r10,                  r10
     add                  r10,                   r9
     mov                  r10,                  r10
     mov                   r9,      qword[rbp-2280]
     xor                   r9,      qword[rbp-4664]
     mov                  r15,                   r9
     mov                   r9,                    1
@main.173.@xorshift.1.enter:
     mov                  r15,                  r15
     add                  r15,                    1
     mov      qword[rbp-5392],                  r15
     mov      qword[rbp-5400],                    0
	jmp	@main.174.@xorshift.5.ForCon
@main.175.@xorshift.4.ForBody:
     mov                  r15,      qword[rbp-5392]
     mov      qword[rbp-5408],                   13
@main.176.@xorshift.9.@shift_l.1.enter:
     mov      qword[rbp-5416],                  r15
     mov                  rcx,      qword[rbp-5408]
     shl      qword[rbp-5416],                   cl
     mov                  r15,                32767
     mov      qword[rbp-5424],                65535
@main.177.@xorshift.10.@shift_l.5.@hilo.1.enter:
     mov                  r15,                  r15
     shl                  r15,                   16
     mov                  rcx,      qword[rbp-5424]
     mov      qword[rbp-5432],                  rcx
     mov                  rax,      qword[rbp-5432]
      or                  rax,                  r15
     mov      qword[rbp-5432],                  rax
     mov                  r15,      qword[rbp-5432]
	jmp	@main.178.@xorshift.11.@shift_l.4.@hilo.2.exit
@main.178.@xorshift.11.@shift_l.4.@hilo.2.exit:
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-5416]
     mov      qword[rbp-5440],                  rcx
     mov                  rax,      qword[rbp-5440]
     and                  rax,                  r15
     mov      qword[rbp-5440],                  rax
     mov                  r15,      qword[rbp-5440]
	jmp	@main.179.@xorshift.8.@shift_l.2.exit
@main.179.@xorshift.8.@shift_l.2.exit:
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-5392]
     mov      qword[rbp-5448],                  rcx
     mov                  rax,      qword[rbp-5448]
     xor                  rax,                  r15
     mov      qword[rbp-5448],                  rax
     mov                  rcx,      qword[rbp-5448]
     mov      qword[rbp-5392],                  rcx
     mov                  r15,      qword[rbp-5392]
     mov      qword[rbp-5456],                   17
@main.180.@xorshift.13.@shift_r.1.enter:
     mov      qword[rbp-5464],                32767
     mov      qword[rbp-5472],                65535
@main.181.@xorshift.14.@shift_r.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-5464]
     mov      qword[rbp-5480],                  rcx
     shl      qword[rbp-5480],                   16
     mov                  rcx,      qword[rbp-5472]
     mov      qword[rbp-5488],                  rcx
     mov                  rax,      qword[rbp-5488]
      or                  rax,      qword[rbp-5480]
     mov      qword[rbp-5488],                  rax
     mov                  rcx,      qword[rbp-5488]
     mov      qword[rbp-5496],                  rcx
	jmp	@main.182.@xorshift.15.@shift_r.4.@hilo.2.exit
@main.182.@xorshift.15.@shift_r.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-5496]
     mov      qword[rbp-5504],                  rcx
     mov                  rcx,      qword[rbp-5504]
     mov      qword[rbp-5512],                  rcx
     mov                  rcx,      qword[rbp-5512]
     mov      qword[rbp-5520],                  rcx
     mov                  rcx,      qword[rbp-5456]
     shr      qword[rbp-5520],                   cl
     mov                  rcx,      qword[rbp-5520]
     mov      qword[rbp-5528],                  rcx
     shl      qword[rbp-5528],                    1
     mov                  rcx,      qword[rbp-5528]
     mov      qword[rbp-5536],                  rcx
     mov                  rax,      qword[rbp-5536]
     add                  rax,                    1
     mov      qword[rbp-5536],                  rax
     mov                  rcx,      qword[rbp-5536]
     mov      qword[rbp-5512],                  rcx
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-5456]
     shr                  r15,                   cl
     mov                  rcx,      qword[rbp-5512]
     mov      qword[rbp-5544],                  rcx
     mov                  rax,      qword[rbp-5544]
     and                  rax,                  r15
     mov      qword[rbp-5544],                  rax
     mov                  rcx,      qword[rbp-5544]
     mov      qword[rbp-5512],                  rcx
     mov                  r15,                32767
     mov      qword[rbp-5552],                65535
@main.183.@xorshift.16.@shift_r.7.@hilo.1.enter:
     mov                  r15,                  r15
     shl                  r15,                   16
     mov                  rcx,      qword[rbp-5552]
     mov      qword[rbp-5560],                  rcx
     mov                  rax,      qword[rbp-5560]
      or                  rax,                  r15
     mov      qword[rbp-5560],                  rax
     mov                  r15,      qword[rbp-5560]
	jmp	@main.184.@xorshift.17.@shift_r.6.@hilo.2.exit
@main.184.@xorshift.17.@shift_r.6.@hilo.2.exit:
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-5512]
     mov      qword[rbp-5568],                  rcx
     mov                  rax,      qword[rbp-5568]
     and                  rax,                  r15
     mov      qword[rbp-5568],                  rax
     mov                  r15,      qword[rbp-5568]
	jmp	@main.185.@xorshift.12.@shift_r.2.exit
@main.185.@xorshift.12.@shift_r.2.exit:
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-5392]
     mov      qword[rbp-5576],                  rcx
     mov                  rax,      qword[rbp-5576]
     xor                  rax,                  r15
     mov      qword[rbp-5576],                  rax
     mov                  rcx,      qword[rbp-5576]
     mov      qword[rbp-5392],                  rcx
     mov                  r15,      qword[rbp-5392]
     mov      qword[rbp-5584],                    5
@main.186.@xorshift.19.@shift_l.1.enter:
     mov      qword[rbp-5592],                  r15
     mov                  rcx,      qword[rbp-5584]
     shl      qword[rbp-5592],                   cl
     mov                  r15,                32767
     mov      qword[rbp-5600],                65535
@main.187.@xorshift.20.@shift_l.5.@hilo.1.enter:
     mov                  r15,                  r15
     shl                  r15,                   16
     mov                  rcx,      qword[rbp-5600]
     mov      qword[rbp-5608],                  rcx
     mov                  rax,      qword[rbp-5608]
      or                  rax,                  r15
     mov      qword[rbp-5608],                  rax
     mov                  r15,      qword[rbp-5608]
	jmp	@main.188.@xorshift.21.@shift_l.4.@hilo.2.exit
@main.188.@xorshift.21.@shift_l.4.@hilo.2.exit:
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-5592]
     mov      qword[rbp-5616],                  rcx
     mov                  rax,      qword[rbp-5616]
     and                  rax,                  r15
     mov      qword[rbp-5616],                  rax
     mov                  r15,      qword[rbp-5616]
	jmp	@main.189.@xorshift.18.@shift_l.2.exit
@main.189.@xorshift.18.@shift_l.2.exit:
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-5392]
     mov      qword[rbp-5624],                  rcx
     mov                  rax,      qword[rbp-5624]
     xor                  rax,                  r15
     mov      qword[rbp-5624],                  rax
     mov                  rcx,      qword[rbp-5624]
     mov      qword[rbp-5392],                  rcx
	jmp	@main.190.@xorshift.3.ForIter
@main.190.@xorshift.3.ForIter:
     mov                  r15,      qword[rbp-5400]
     add      qword[rbp-5400],                    1
	jmp	@main.174.@xorshift.5.ForCon
@main.174.@xorshift.5.ForCon:
     mov                  r15,                   r9
    imul                  r15,                   10
     cmp      qword[rbp-5400],                  r15
     mov                  r15,                    0
    setl                 r15b
     mov                  r15,                  r15
     cmp                  r15,                    1
	je	@main.175.@xorshift.4.ForBody
	jmp	@main.191.@xorshift.6.ForExit
@main.191.@xorshift.6.ForExit:
     mov                   r9,      qword[rbp-5392]
     xor                   r9,            123456789
     mov                   r9,                   r9
	jmp	@main.172.@xorshift.2.exit
@main.172.@xorshift.2.exit:
     mov                   r9,                   r9
     mov                  r15,                  r11
     add                  r15,                   r9
     mov                  r11,                  r15
     mov                   r9,      qword[rbp-3152]
     xor                   r9,      qword[rbp-4664]
     mov                  r15,                   r9
     mov                   r9,                    1
@main.193.@xorshift.1.enter:
     mov                  r15,                  r15
     add                  r15,                    1
     mov      qword[rbp-5632],                  r15
     mov      qword[rbp-5640],                    0
	jmp	@main.194.@xorshift.5.ForCon
@main.195.@xorshift.4.ForBody:
     mov                  r15,      qword[rbp-5632]
     mov      qword[rbp-5648],                   13
@main.196.@xorshift.9.@shift_l.1.enter:
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-5648]
     shl                  r15,                   cl
     mov      qword[rbp-5656],                32767
     mov      qword[rbp-5664],                65535
@main.197.@xorshift.10.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-5656]
     mov      qword[rbp-5672],                  rcx
     shl      qword[rbp-5672],                   16
     mov                  rcx,      qword[rbp-5664]
     mov      qword[rbp-5680],                  rcx
     mov                  rax,      qword[rbp-5680]
      or                  rax,      qword[rbp-5672]
     mov      qword[rbp-5680],                  rax
     mov                  rcx,      qword[rbp-5680]
     mov      qword[rbp-5688],                  rcx
	jmp	@main.198.@xorshift.11.@shift_l.4.@hilo.2.exit
@main.198.@xorshift.11.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-5688]
     mov      qword[rbp-5696],                  rcx
     mov                  r15,                  r15
     and                  r15,      qword[rbp-5696]
     mov                  r15,                  r15
	jmp	@main.199.@xorshift.8.@shift_l.2.exit
@main.199.@xorshift.8.@shift_l.2.exit:
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-5632]
     mov      qword[rbp-5704],                  rcx
     mov                  rax,      qword[rbp-5704]
     xor                  rax,                  r15
     mov      qword[rbp-5704],                  rax
     mov                  rcx,      qword[rbp-5704]
     mov      qword[rbp-5632],                  rcx
     mov                  r15,      qword[rbp-5632]
     mov      qword[rbp-5712],                   17
@main.200.@xorshift.13.@shift_r.1.enter:
     mov      qword[rbp-5720],                32767
     mov      qword[rbp-5728],                65535
@main.201.@xorshift.14.@shift_r.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-5720]
     mov      qword[rbp-5736],                  rcx
     shl      qword[rbp-5736],                   16
     mov                  rcx,      qword[rbp-5728]
     mov      qword[rbp-5744],                  rcx
     mov                  rax,      qword[rbp-5744]
      or                  rax,      qword[rbp-5736]
     mov      qword[rbp-5744],                  rax
     mov                  rcx,      qword[rbp-5744]
     mov      qword[rbp-5752],                  rcx
	jmp	@main.202.@xorshift.15.@shift_r.4.@hilo.2.exit
@main.202.@xorshift.15.@shift_r.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-5752]
     mov      qword[rbp-5760],                  rcx
     mov                  rcx,      qword[rbp-5760]
     mov      qword[rbp-5768],                  rcx
     mov                  rcx,      qword[rbp-5768]
     mov      qword[rbp-5776],                  rcx
     mov                  rcx,      qword[rbp-5712]
     shr      qword[rbp-5776],                   cl
     mov                  rcx,      qword[rbp-5776]
     mov      qword[rbp-5784],                  rcx
     shl      qword[rbp-5784],                    1
     mov                  rcx,      qword[rbp-5784]
     mov      qword[rbp-5792],                  rcx
     mov                  rax,      qword[rbp-5792]
     add                  rax,                    1
     mov      qword[rbp-5792],                  rax
     mov                  rcx,      qword[rbp-5792]
     mov      qword[rbp-5768],                  rcx
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-5712]
     shr                  r15,                   cl
     mov                  rcx,      qword[rbp-5768]
     mov      qword[rbp-5800],                  rcx
     mov                  rax,      qword[rbp-5800]
     and                  rax,                  r15
     mov      qword[rbp-5800],                  rax
     mov                  rcx,      qword[rbp-5800]
     mov      qword[rbp-5768],                  rcx
     mov                  r15,                32767
     mov      qword[rbp-5808],                65535
@main.203.@xorshift.16.@shift_r.7.@hilo.1.enter:
     mov                  r15,                  r15
     shl                  r15,                   16
     mov                  rcx,      qword[rbp-5808]
     mov      qword[rbp-5816],                  rcx
     mov                  rax,      qword[rbp-5816]
      or                  rax,                  r15
     mov      qword[rbp-5816],                  rax
     mov                  r15,      qword[rbp-5816]
	jmp	@main.204.@xorshift.17.@shift_r.6.@hilo.2.exit
@main.204.@xorshift.17.@shift_r.6.@hilo.2.exit:
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-5768]
     mov      qword[rbp-5824],                  rcx
     mov                  rax,      qword[rbp-5824]
     and                  rax,                  r15
     mov      qword[rbp-5824],                  rax
     mov                  r15,      qword[rbp-5824]
	jmp	@main.205.@xorshift.12.@shift_r.2.exit
@main.205.@xorshift.12.@shift_r.2.exit:
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-5632]
     mov      qword[rbp-5832],                  rcx
     mov                  rax,      qword[rbp-5832]
     xor                  rax,                  r15
     mov      qword[rbp-5832],                  rax
     mov                  rcx,      qword[rbp-5832]
     mov      qword[rbp-5632],                  rcx
     mov                  r15,      qword[rbp-5632]
     mov      qword[rbp-5840],                    5
@main.206.@xorshift.19.@shift_l.1.enter:
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-5840]
     shl                  r15,                   cl
     mov      qword[rbp-5848],                32767
     mov      qword[rbp-5856],                65535
@main.207.@xorshift.20.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-5848]
     mov      qword[rbp-5864],                  rcx
     shl      qword[rbp-5864],                   16
     mov                  rcx,      qword[rbp-5856]
     mov      qword[rbp-5872],                  rcx
     mov                  rax,      qword[rbp-5872]
      or                  rax,      qword[rbp-5864]
     mov      qword[rbp-5872],                  rax
     mov                  rcx,      qword[rbp-5872]
     mov      qword[rbp-5880],                  rcx
	jmp	@main.208.@xorshift.21.@shift_l.4.@hilo.2.exit
@main.208.@xorshift.21.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-5880]
     mov      qword[rbp-5888],                  rcx
     mov                  r15,                  r15
     and                  r15,      qword[rbp-5888]
     mov                  r15,                  r15
	jmp	@main.209.@xorshift.18.@shift_l.2.exit
@main.209.@xorshift.18.@shift_l.2.exit:
     mov                  r15,                  r15
     mov                  rcx,      qword[rbp-5632]
     mov      qword[rbp-5896],                  rcx
     mov                  rax,      qword[rbp-5896]
     xor                  rax,                  r15
     mov      qword[rbp-5896],                  rax
     mov                  rcx,      qword[rbp-5896]
     mov      qword[rbp-5632],                  rcx
	jmp	@main.210.@xorshift.3.ForIter
@main.210.@xorshift.3.ForIter:
     mov                  r15,      qword[rbp-5640]
     add      qword[rbp-5640],                    1
	jmp	@main.194.@xorshift.5.ForCon
@main.194.@xorshift.5.ForCon:
     mov                  r15,                   r9
    imul                  r15,                   10
     cmp      qword[rbp-5640],                  r15
     mov                  r15,                    0
    setl                 r15b
     mov                  r15,                  r15
     cmp                  r15,                    1
	je	@main.195.@xorshift.4.ForBody
	jmp	@main.211.@xorshift.6.ForExit
@main.211.@xorshift.6.ForExit:
     mov                   r9,      qword[rbp-5632]
     xor                   r9,            123456789
     mov                   r9,                   r9
	jmp	@main.192.@xorshift.2.exit
@main.192.@xorshift.2.exit:
     mov                   r9,                   r9
     mov                  r15,        qword[rbp-16]
     add                  r15,                   r9
     mov        qword[rbp-16],                  r15
	jmp	@main.11.ForIter
@main.11.ForIter:
     mov                   r9,        qword[rbp-40]
     add        qword[rbp-40],                    1
	jmp	@main.13.ForCon
@main.13.ForCon:
     cmp        qword[rbp-40],                   r8
     mov                   r9,                    0
    setl                  r9b
     mov                   r9,                   r9
     cmp                   r9,                    1
	je	@main.12.ForBody
	jmp	@main.14.ForExit
@main.14.ForExit:
	jmp	@main.7.ForIter
@main.7.ForIter:
     mov                   r9,        qword[rbp-32]
     add        qword[rbp-32],                    1
	jmp	@main.9.ForCon
@main.9.ForCon:
     cmp        qword[rbp-32],                  rdi
     mov                   r9,                    0
    setl                  r9b
     mov                   r9,                   r9
     cmp                   r9,                    1
	je	@main.8.ForBody
	jmp	@main.10.ForExit
@main.10.ForExit:
	jmp	@main.3.ForIter
@main.3.ForIter:
     mov                   r9,        qword[rbp-24]
     add        qword[rbp-24],                    1
	jmp	@main.5.ForCon
@main.5.ForCon:
     cmp        qword[rbp-24],                  rsi
     mov                   r9,                    0
    setl                  r9b
     mov                   r9,                   r9
     cmp                   r9,                    1
	je	@main.4.ForBody
	jmp	@main.6.ForExit
@main.6.ForExit:
     mov                  rbx,                  r14
@main.213.@toStringHex.1.enter:
     mov                   r8,         __const_str0
     mov                  r12,                   28
	jmp	@main.214.@toStringHex.5.ForCon
@main.215.@toStringHex.4.ForBody:
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
	je	@main.216.@toStringHex.8.IfTrue
	jmp	@main.217.@toStringHex.7.IfFalse
@main.216.@toStringHex.8.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                  r13
     mov                  rdi,                  rsi
@main.321.@int2chr.1.enter:
     cmp                  rdi,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.322.@int2chr.6.cmp_and
     cmp                  rdi,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.322.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.323.@int2chr.4.IfTrue
	jmp	@main.324.@int2chr.3.IfFalse
@main.323.@int2chr.4.IfTrue:
     mov                  rsi,                  rdi
     sub                  rsi,                   32
     mov                   r9,                  rdi
     sub                   r9,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rsi
     mov                  rdx,                   r9
    push                   r8
    push                  r10
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
	jmp	@main.320.@int2chr.2.exit
	jmp	@main.325.@int2chr.5.IfExit
@main.324.@int2chr.3.IfFalse:
@main.325.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
	jmp	@main.320.@int2chr.2.exit
@main.320.@int2chr.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  rsi
    push                  rsi
    push                  r10
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                   r8,                  rsi
	jmp	@main.218.@toStringHex.9.IfExit
@main.217.@toStringHex.7.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                  r13
     mov                  rsi,                  rsi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
@main.327.@int2chr.1.enter:
     cmp                  rdi,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.328.@int2chr.6.cmp_and
     cmp                  rdi,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.328.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.329.@int2chr.4.IfTrue
	jmp	@main.330.@int2chr.3.IfFalse
@main.329.@int2chr.4.IfTrue:
     mov                  rsi,                  rdi
     sub                  rsi,                   32
     mov                  r13,                  rdi
     sub                  r13,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rsi
     mov                  rdx,                  r13
    push                   r8
    push                  r10
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
	jmp	@main.326.@int2chr.2.exit
	jmp	@main.331.@int2chr.5.IfExit
@main.330.@int2chr.3.IfFalse:
@main.331.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
	jmp	@main.326.@int2chr.2.exit
@main.326.@int2chr.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  rsi
    push                  r10
    push                  rsi
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                   r8,                  rsi
	jmp	@main.218.@toStringHex.9.IfExit
@main.218.@toStringHex.9.IfExit:
	jmp	@main.219.@toStringHex.3.ForIter
@main.219.@toStringHex.3.ForIter:
     mov                  rsi,                  r12
     sub                  rsi,                    4
     mov                  r12,                  rsi
	jmp	@main.214.@toStringHex.5.ForCon
@main.214.@toStringHex.5.ForCon:
     cmp                  r12,                    0
     mov                  rsi,                    0
   setge                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.215.@toStringHex.4.ForBody
	jmp	@main.220.@toStringHex.6.ForExit
@main.220.@toStringHex.6.ForExit:
     mov                  rsi,                   r8
	jmp	@main.212.@toStringHex.2.exit
@main.212.@toStringHex.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
    push                  r10
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     mov                  rbx,                  r10
@main.222.@toStringHex.1.enter:
     mov                  r12,         __const_str0
     mov                   r8,                   28
	jmp	@main.223.@toStringHex.5.ForCon
@main.224.@toStringHex.4.ForBody:
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
	je	@main.225.@toStringHex.8.IfTrue
	jmp	@main.226.@toStringHex.7.IfFalse
@main.225.@toStringHex.8.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                  r13
     mov                  rdi,                  rsi
@main.333.@int2chr.1.enter:
     cmp                  rdi,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.334.@int2chr.6.cmp_and
     cmp                  rdi,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.334.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.335.@int2chr.4.IfTrue
	jmp	@main.336.@int2chr.3.IfFalse
@main.335.@int2chr.4.IfTrue:
     mov                  rsi,                  rdi
     sub                  rsi,                   32
     mov                   r9,                  rdi
     sub                   r9,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rsi
     mov                  rdx,                   r9
    push                   r8
    push                  r11
    push                  rsi
call	__substring__
     pop                  rsi
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
	jmp	@main.332.@int2chr.2.exit
	jmp	@main.337.@int2chr.5.IfExit
@main.336.@int2chr.3.IfFalse:
@main.337.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
	jmp	@main.332.@int2chr.2.exit
@main.332.@int2chr.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  r12
     mov                  rsi,                  rsi
    push                  rsi
    push                   r8
    push                  r11
call	__string_connect__
     pop                  r11
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  r12,                  rsi
	jmp	@main.227.@toStringHex.9.IfExit
@main.226.@toStringHex.7.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                  r13
     mov                  rsi,                  rsi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
@main.339.@int2chr.1.enter:
     cmp                  rdi,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.340.@int2chr.6.cmp_and
     cmp                  rdi,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.340.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.341.@int2chr.4.IfTrue
	jmp	@main.342.@int2chr.3.IfFalse
@main.341.@int2chr.4.IfTrue:
     mov                  rsi,                  rdi
     sub                  rsi,                   32
     mov                  r13,                  rdi
     sub                  r13,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rsi
     mov                  rdx,                  r13
    push                  rsi
    push                   r8
    push                  r11
call	__substring__
     pop                  r11
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
	jmp	@main.338.@int2chr.2.exit
	jmp	@main.343.@int2chr.5.IfExit
@main.342.@int2chr.3.IfFalse:
@main.343.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
	jmp	@main.338.@int2chr.2.exit
@main.338.@int2chr.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  r12
     mov                  rsi,                  rsi
    push                   r8
    push                  r11
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  r12,                  rsi
	jmp	@main.227.@toStringHex.9.IfExit
@main.227.@toStringHex.9.IfExit:
	jmp	@main.228.@toStringHex.3.ForIter
@main.228.@toStringHex.3.ForIter:
     mov                  rsi,                   r8
     sub                  rsi,                    4
     mov                   r8,                  rsi
	jmp	@main.223.@toStringHex.5.ForCon
@main.223.@toStringHex.5.ForCon:
     cmp                   r8,                    0
     mov                  rsi,                    0
   setge                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.224.@toStringHex.4.ForBody
	jmp	@main.229.@toStringHex.6.ForExit
@main.229.@toStringHex.6.ForExit:
     mov                  rsi,                  r12
	jmp	@main.221.@toStringHex.2.exit
@main.221.@toStringHex.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
    push                  r11
call	print
     pop                  r11
     mov                  rbx,                  r11
@main.231.@toStringHex.1.enter:
     mov                  r12,         __const_str0
     mov                   r8,                   28
	jmp	@main.232.@toStringHex.5.ForCon
@main.233.@toStringHex.4.ForBody:
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
	je	@main.234.@toStringHex.8.IfTrue
	jmp	@main.235.@toStringHex.7.IfFalse
@main.234.@toStringHex.8.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                  r13
     mov                  rdi,                  rsi
@main.345.@int2chr.1.enter:
     cmp                  rdi,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.346.@int2chr.6.cmp_and
     cmp                  rdi,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.346.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.347.@int2chr.4.IfTrue
	jmp	@main.348.@int2chr.3.IfFalse
@main.347.@int2chr.4.IfTrue:
     mov                  rsi,                  rdi
     sub                  rsi,                   32
     mov                   r9,                  rdi
     sub                   r9,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rsi
     mov                  rdx,                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
	jmp	@main.344.@int2chr.2.exit
	jmp	@main.349.@int2chr.5.IfExit
@main.348.@int2chr.3.IfFalse:
@main.349.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
	jmp	@main.344.@int2chr.2.exit
@main.344.@int2chr.2.exit:
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
	jmp	@main.236.@toStringHex.9.IfExit
@main.235.@toStringHex.7.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                  r13
     mov                  rsi,                  rsi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
@main.351.@int2chr.1.enter:
     cmp                  rdi,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.352.@int2chr.6.cmp_and
     cmp                  rdi,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.352.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.353.@int2chr.4.IfTrue
	jmp	@main.354.@int2chr.3.IfFalse
@main.353.@int2chr.4.IfTrue:
     mov                  rsi,                  rdi
     sub                  rsi,                   32
     mov                  r13,                  rdi
     sub                  r13,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rsi
     mov                  rdx,                  r13
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
	jmp	@main.350.@int2chr.2.exit
	jmp	@main.355.@int2chr.5.IfExit
@main.354.@int2chr.3.IfFalse:
@main.355.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
	jmp	@main.350.@int2chr.2.exit
@main.350.@int2chr.2.exit:
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
	jmp	@main.236.@toStringHex.9.IfExit
@main.236.@toStringHex.9.IfExit:
	jmp	@main.237.@toStringHex.3.ForIter
@main.237.@toStringHex.3.ForIter:
     mov                  rsi,                   r8
     sub                  rsi,                    4
     mov                   r8,                  rsi
	jmp	@main.232.@toStringHex.5.ForCon
@main.232.@toStringHex.5.ForCon:
     cmp                   r8,                    0
     mov                  rsi,                    0
   setge                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.233.@toStringHex.4.ForBody
	jmp	@main.238.@toStringHex.6.ForExit
@main.238.@toStringHex.6.ForExit:
     mov                  rsi,                  r12
	jmp	@main.230.@toStringHex.2.exit
@main.230.@toStringHex.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     mov                  rbx,        qword[rbp-16]
@main.240.@toStringHex.1.enter:
     mov                   r8,         __const_str0
     mov                  r12,                   28
	jmp	@main.241.@toStringHex.5.ForCon
@main.242.@toStringHex.4.ForBody:
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
	je	@main.243.@toStringHex.8.IfTrue
	jmp	@main.244.@toStringHex.7.IfFalse
@main.243.@toStringHex.8.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                  r13
     mov                  rdi,                  rsi
@main.357.@int2chr.1.enter:
     cmp                  rdi,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.358.@int2chr.6.cmp_and
     cmp                  rdi,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.358.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.359.@int2chr.4.IfTrue
	jmp	@main.360.@int2chr.3.IfFalse
@main.359.@int2chr.4.IfTrue:
     mov                  rsi,                  rdi
     sub                  rsi,                   32
     mov                   r9,                  rdi
     sub                   r9,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rsi
     mov                  rdx,                   r9
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
	jmp	@main.356.@int2chr.2.exit
	jmp	@main.361.@int2chr.5.IfExit
@main.360.@int2chr.3.IfFalse:
@main.361.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
	jmp	@main.356.@int2chr.2.exit
@main.356.@int2chr.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  rsi
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                   r8,                  rsi
	jmp	@main.245.@toStringHex.9.IfExit
@main.244.@toStringHex.7.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                  r13
     mov                  rsi,                  rsi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
@main.363.@int2chr.1.enter:
     cmp                  rdi,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.364.@int2chr.6.cmp_and
     cmp                  rdi,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.364.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.365.@int2chr.4.IfTrue
	jmp	@main.366.@int2chr.3.IfFalse
@main.365.@int2chr.4.IfTrue:
     mov                  rsi,                  rdi
     sub                  rsi,                   32
     mov                  r13,                  rdi
     sub                  r13,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rsi
     mov                  rdx,                  r13
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
	jmp	@main.362.@int2chr.2.exit
	jmp	@main.367.@int2chr.5.IfExit
@main.366.@int2chr.3.IfFalse:
@main.367.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
	jmp	@main.362.@int2chr.2.exit
@main.362.@int2chr.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  rsi
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                   r8,                  rsi
	jmp	@main.245.@toStringHex.9.IfExit
@main.245.@toStringHex.9.IfExit:
	jmp	@main.246.@toStringHex.3.ForIter
@main.246.@toStringHex.3.ForIter:
     mov                  rsi,                  r12
     sub                  rsi,                    4
     mov                  r12,                  rsi
	jmp	@main.241.@toStringHex.5.ForCon
@main.241.@toStringHex.5.ForCon:
     cmp                  r12,                    0
     mov                  rsi,                    0
   setge                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.242.@toStringHex.4.ForBody
	jmp	@main.247.@toStringHex.6.ForExit
@main.247.@toStringHex.6.ForExit:
     mov                  rsi,                   r8
	jmp	@main.239.@toStringHex.2.exit
@main.239.@toStringHex.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
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
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     pop                  rbx
     add                  rsp,                 5904
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
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
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
__const_str1:
      db " ",0
      dq                   95
__const_str2:
      db " !",34,"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[",92,"]^_`abcdefghijklmnopqrstuvwxyz{|}~",0






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



