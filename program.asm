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
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  rbx
    push                  rsi
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rax,                  rsi
	jmp	@int2chr.2.exit
	jmp	@int2chr.5.IfExit
@int2chr.3.IfFalse:
@int2chr.5.IfExit:
     mov                  rax,         __const_str0
	jmp	@int2chr.2.exit
@int2chr.2.exit:
     pop                  rbx
     add                  rsp,                    8
     pop                  rbp
     ret
getnumber:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  r13
    push                  rbx
@getnumber.1.enter:
     mov                  rbx,                  rdi
     mov                  rsi,                  rsi
     mov                  rdi,                  rdx
     and                  rdi,                   31
     mov                  r12,                  rdi
     mov                  rdi,                  rbx
     mov                  rbx,                  rsi
@getnumber.5.@xorshift.1.enter:
     mov                  rsi,                  rdi
     add                  rsi,                    1
     mov                  r13,                  rsi
     mov                   r8,                    0
	jmp	@getnumber.6.@xorshift.5.ForCon
@getnumber.7.@xorshift.4.ForBody:
     mov                  rdi,                  r13
     mov                  rsi,                   13
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	shift_l
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  r13
     xor                  rdi,                  rsi
     mov                  r13,                  rdi
     mov                  rdi,                  r13
     mov                  rsi,                   17
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	shift_r
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  r13
     xor                  rdi,                  rsi
     mov                  r13,                  rdi
     mov                  rdi,                  r13
     mov                  rsi,                    5
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	shift_l
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  r13
     xor                  rdi,                  rsi
     mov                  r13,                  rdi
	jmp	@getnumber.8.@xorshift.3.ForIter
@getnumber.8.@xorshift.3.ForIter:
     mov                  rsi,                   r8
     add                   r8,                    1
	jmp	@getnumber.6.@xorshift.5.ForCon
@getnumber.6.@xorshift.5.ForCon:
     mov                  rsi,                  rbx
    imul                  rsi,                   10
     cmp                   r8,                  rsi
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@getnumber.7.@xorshift.4.ForBody
	jmp	@getnumber.9.@xorshift.6.ForExit
@getnumber.9.@xorshift.6.ForExit:
     mov                  rsi,                  r13
     xor                  rsi,            123456789
     mov                  rsi,                  rsi
	jmp	@getnumber.4.@xorshift.2.exit
@getnumber.4.@xorshift.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rbx,                  r12
@getnumber.11.@shift_l.1.enter:
     mov                  rdi,                  rdi
     mov                  rcx,                  rbx
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                   r8,                65535
@getnumber.12.@shift_l.5.@hilo.1.enter:
     mov                  rbx,                  rbx
     shl                  rbx,                   16
     mov                   r8,                   r8
      or                   r8,                  rbx
     mov                  rbx,                   r8
	jmp	@getnumber.13.@shift_l.4.@hilo.2.exit
@getnumber.13.@shift_l.4.@hilo.2.exit:
     mov                  rbx,                  rbx
     mov                  rdi,                  rdi
     and                  rdi,                  rbx
     mov                  rbx,                  rdi
	jmp	@getnumber.10.@shift_l.2.exit
@getnumber.10.@shift_l.2.exit:
     mov                  rbx,                  rbx
     mov                  rdi,                   32
     sub                  rdi,                  r12
     mov                  r12,                  rsi
     mov                   r8,                  rdi
@getnumber.15.@shift_r.1.enter:
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	hilo
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  r13,                  rsi
     mov                  rsi,                  r13
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     mov                  rsi,                  rsi
     shl                  rsi,                    1
     mov                  rsi,                  rsi
     add                  rsi,                    1
     mov                  r13,                  rsi
     mov                  rsi,                  r12
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     mov                  rdi,                  r13
     and                  rdi,                  rsi
     mov                  r13,                  rdi
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                  rsi
call	hilo
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  r13
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@getnumber.14.@shift_r.2.exit
@getnumber.14.@shift_r.2.exit:
     mov                  rsi,                  rsi
     mov                  rbx,                  rbx
      or                  rbx,                  rsi
     mov                  rax,                  rbx
	jmp	@getnumber.2.exit
@getnumber.2.exit:
     pop                  rbx
     pop                  r13
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
     sub                  rsp,                 3496
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
@main.1.enter:
     mov                  r14,                    0
     mov                  rbx,                   40
     mov                  r12,                  100
     mov                   r8,                  200
     mov                  r13,                  125
     mov                   r9,                  250
     mov         qword[rbp-8],                   30
     mov                  r15,                    0
     mov                  r10,                    0
     mov                  r11,                    0
     mov        qword[rbp-16],                    0
     mov        qword[rbp-24],                  r14
	jmp	@main.5.ForCon
@main.4.ForBody:
     mov        qword[rbp-32],                  r12
	jmp	@main.9.ForCon
@main.8.ForBody:
     mov        qword[rbp-40],                  r13
	jmp	@main.13.ForCon
@main.12.ForBody:
     mov        qword[rbp-48],                  r14
     mov                  rdi,         qword[rbp-8]
     mov                  rsi,        qword[rbp-40]
@main.17.@getnumber.1.enter:
     mov                  rsi,                  rsi
     and                  rsi,                   31
     mov        qword[rbp-56],                  rsi
     mov                  rsi,        qword[rbp-48]
     mov        qword[rbp-64],                  rdi
@main.18.@getnumber.5.@xorshift.1.enter:
     mov                  rsi,                  rsi
     add                  rsi,                    1
     mov        qword[rbp-72],                  rsi
     mov        qword[rbp-80],                    0
	jmp	@main.19.@getnumber.6.@xorshift.5.ForCon
@main.20.@getnumber.7.@xorshift.4.ForBody:
     mov                  rdi,        qword[rbp-72]
     mov                  rsi,                   13
    push                  r10
    push                  r11
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	shift_l
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,        qword[rbp-72]
     xor                  rdi,                  rsi
     mov        qword[rbp-72],                  rdi
     mov                  rdi,        qword[rbp-72]
     mov                  rsi,                   17
    push                  r10
    push                  r11
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	shift_r
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,        qword[rbp-72]
     xor                  rdi,                  rsi
     mov        qword[rbp-72],                  rdi
     mov                  rdi,        qword[rbp-72]
     mov                  rsi,                    5
    push                  r10
    push                  rsi
    push                  r11
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	shift_l
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,        qword[rbp-72]
     xor                  rdi,                  rsi
     mov        qword[rbp-72],                  rdi
	jmp	@main.21.@getnumber.8.@xorshift.3.ForIter
@main.21.@getnumber.8.@xorshift.3.ForIter:
     mov                  rsi,        qword[rbp-80]
     add        qword[rbp-80],                    1
	jmp	@main.19.@getnumber.6.@xorshift.5.ForCon
@main.19.@getnumber.6.@xorshift.5.ForCon:
     mov                  rsi,        qword[rbp-64]
    imul                  rsi,                   10
     cmp        qword[rbp-80],                  rsi
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.20.@getnumber.7.@xorshift.4.ForBody
	jmp	@main.22.@getnumber.9.@xorshift.6.ForExit
@main.22.@getnumber.9.@xorshift.6.ForExit:
     mov                  rsi,        qword[rbp-72]
     xor                  rsi,            123456789
     mov                  rsi,                  rsi
	jmp	@main.23.@getnumber.4.@xorshift.2.exit
@main.23.@getnumber.4.@xorshift.2.exit:
     mov                  rdi,                  rsi
     mov                  rsi,                  rdi
     mov                  rcx,        qword[rbp-56]
     mov        qword[rbp-88],                  rcx
@main.24.@getnumber.11.@shift_l.1.enter:
     mov        qword[rbp-96],                  rsi
     mov                  rcx,        qword[rbp-88]
     shl        qword[rbp-96],                   cl
     mov                  rsi,                32767
     mov       qword[rbp-104],                65535
@main.25.@getnumber.12.@shift_l.5.@hilo.1.enter:
     mov                  rsi,                  rsi
     shl                  rsi,                   16
     mov                  rcx,       qword[rbp-104]
     mov       qword[rbp-112],                  rcx
     mov                  rax,       qword[rbp-112]
      or                  rax,                  rsi
     mov       qword[rbp-112],                  rax
     mov                  rsi,       qword[rbp-112]
	jmp	@main.26.@getnumber.13.@shift_l.4.@hilo.2.exit
@main.26.@getnumber.13.@shift_l.4.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-120],                  rcx
     mov                  rax,       qword[rbp-120]
     and                  rax,                  rsi
     mov       qword[rbp-120],                  rax
     mov                  rsi,       qword[rbp-120]
	jmp	@main.27.@getnumber.10.@shift_l.2.exit
@main.27.@getnumber.10.@shift_l.2.exit:
     mov       qword[rbp-128],                  rsi
     mov                  rsi,                   32
     sub                  rsi,        qword[rbp-56]
     mov       qword[rbp-136],                  rdi
     mov       qword[rbp-144],                  rsi
@main.28.@getnumber.15.@shift_r.1.enter:
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                  r10
    push                  rsi
    push                  r11
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	hilo
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov       qword[rbp-152],                  rsi
     mov                  rsi,       qword[rbp-152]
     mov                  rcx,       qword[rbp-144]
     shr                  rsi,                   cl
     mov                  rsi,                  rsi
     shl                  rsi,                    1
     mov                  rsi,                  rsi
     add                  rsi,                    1
     mov       qword[rbp-152],                  rsi
     mov                  rsi,       qword[rbp-136]
     mov                  rcx,       qword[rbp-144]
     shr                  rsi,                   cl
     mov                  rdi,       qword[rbp-152]
     and                  rdi,                  rsi
     mov       qword[rbp-152],                  rdi
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                  r10
    push                  r11
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	hilo
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,       qword[rbp-152]
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@main.29.@getnumber.14.@shift_r.2.exit
@main.29.@getnumber.14.@shift_r.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,       qword[rbp-128]
      or                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@main.16.@getnumber.2.exit
@main.16.@getnumber.2.exit:
     mov       qword[rbp-160],                  rsi
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-168],                  rcx
     mov                  rdi,         qword[rbp-8]
     mov                  rsi,        qword[rbp-40]
@main.31.@getnumber.1.enter:
     mov                  rsi,                  rsi
     and                  rsi,                   31
     mov       qword[rbp-176],                  rsi
     mov                  rsi,       qword[rbp-168]
     mov       qword[rbp-184],                  rdi
@main.32.@getnumber.5.@xorshift.1.enter:
     mov                  rsi,                  rsi
     add                  rsi,                    1
     mov       qword[rbp-192],                  rsi
     mov       qword[rbp-200],                    0
	jmp	@main.33.@getnumber.6.@xorshift.5.ForCon
@main.34.@getnumber.7.@xorshift.4.ForBody:
     mov                  rdi,       qword[rbp-192]
     mov                  rsi,                   13
    push                  rsi
    push                  r10
    push                  r11
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	shift_l
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  r11
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,       qword[rbp-192]
     xor                  rdi,                  rsi
     mov       qword[rbp-192],                  rdi
     mov                  rdi,       qword[rbp-192]
     mov                  rsi,                   17
    push                  r10
    push                  r11
    push                   r8
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	shift_r
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,       qword[rbp-192]
     xor                  rdi,                  rsi
     mov       qword[rbp-192],                  rdi
     mov                  rdi,       qword[rbp-192]
     mov                  rsi,                    5
    push                  r10
    push                  rsi
    push                  r11
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	shift_l
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,       qword[rbp-192]
     xor                  rdi,                  rsi
     mov       qword[rbp-192],                  rdi
	jmp	@main.35.@getnumber.8.@xorshift.3.ForIter
@main.35.@getnumber.8.@xorshift.3.ForIter:
     mov                  rsi,       qword[rbp-200]
     add       qword[rbp-200],                    1
	jmp	@main.33.@getnumber.6.@xorshift.5.ForCon
@main.33.@getnumber.6.@xorshift.5.ForCon:
     mov                  rsi,       qword[rbp-184]
    imul                  rsi,                   10
     cmp       qword[rbp-200],                  rsi
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.34.@getnumber.7.@xorshift.4.ForBody
	jmp	@main.36.@getnumber.9.@xorshift.6.ForExit
@main.36.@getnumber.9.@xorshift.6.ForExit:
     mov                  rsi,       qword[rbp-192]
     xor                  rsi,            123456789
     mov                  rsi,                  rsi
	jmp	@main.37.@getnumber.4.@xorshift.2.exit
@main.37.@getnumber.4.@xorshift.2.exit:
     mov       qword[rbp-208],                  rsi
     mov                  rsi,       qword[rbp-208]
     mov                  rdi,       qword[rbp-176]
@main.38.@getnumber.11.@shift_l.1.enter:
     mov                  rsi,                  rsi
     mov                  rcx,                  rdi
     shl                  rsi,                   cl
     mov                  rdi,                32767
     mov       qword[rbp-216],                65535
@main.39.@getnumber.12.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  rcx,       qword[rbp-216]
     mov       qword[rbp-224],                  rcx
     mov                  rax,       qword[rbp-224]
      or                  rax,                  rdi
     mov       qword[rbp-224],                  rax
     mov                  rdi,       qword[rbp-224]
	jmp	@main.40.@getnumber.13.@shift_l.4.@hilo.2.exit
@main.40.@getnumber.13.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     and                  rsi,                  rdi
     mov                  rsi,                  rsi
	jmp	@main.41.@getnumber.10.@shift_l.2.exit
@main.41.@getnumber.10.@shift_l.2.exit:
     mov       qword[rbp-232],                  rsi
     mov                  rsi,                   32
     sub                  rsi,       qword[rbp-176]
     mov                  rcx,       qword[rbp-208]
     mov       qword[rbp-240],                  rcx
     mov       qword[rbp-248],                  rsi
@main.42.@getnumber.15.@shift_r.1.enter:
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                  r10
    push                  r11
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	hilo
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov       qword[rbp-256],                  rsi
     mov                  rsi,       qword[rbp-256]
     mov                  rcx,       qword[rbp-248]
     shr                  rsi,                   cl
     mov                  rsi,                  rsi
     shl                  rsi,                    1
     mov                  rsi,                  rsi
     add                  rsi,                    1
     mov       qword[rbp-256],                  rsi
     mov                  rsi,       qword[rbp-240]
     mov                  rcx,       qword[rbp-248]
     shr                  rsi,                   cl
     mov                  rdi,       qword[rbp-256]
     and                  rdi,                  rsi
     mov       qword[rbp-256],                  rdi
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                  r10
    push                  r11
    push                   r8
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	hilo
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,       qword[rbp-256]
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@main.43.@getnumber.14.@shift_r.2.exit
@main.43.@getnumber.14.@shift_r.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,       qword[rbp-232]
      or                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@main.30.@getnumber.2.exit
@main.30.@getnumber.2.exit:
     mov       qword[rbp-264],                  rsi
     mov                  rcx,        qword[rbp-32]
     mov       qword[rbp-272],                  rcx
     mov                  rdi,         qword[rbp-8]
     mov                  rsi,        qword[rbp-40]
@main.45.@getnumber.1.enter:
     mov                  rsi,                  rsi
     and                  rsi,                   31
     mov       qword[rbp-280],                  rsi
     mov                  rsi,       qword[rbp-272]
     mov       qword[rbp-288],                  rdi
@main.46.@getnumber.5.@xorshift.1.enter:
     mov                  rsi,                  rsi
     add                  rsi,                    1
     mov       qword[rbp-296],                  rsi
     mov       qword[rbp-304],                    0
	jmp	@main.47.@getnumber.6.@xorshift.5.ForCon
@main.48.@getnumber.7.@xorshift.4.ForBody:
     mov                  rdi,       qword[rbp-296]
     mov                  rsi,                   13
    push                  r10
    push                  r11
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	shift_l
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,       qword[rbp-296]
     xor                  rdi,                  rsi
     mov       qword[rbp-296],                  rdi
     mov                  rdi,       qword[rbp-296]
     mov                  rsi,                   17
    push                  r10
    push                  r11
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	shift_r
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,       qword[rbp-296]
     xor                  rdi,                  rsi
     mov       qword[rbp-296],                  rdi
     mov                  rdi,       qword[rbp-296]
     mov                  rsi,                    5
    push                  r10
    push                  r11
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	shift_l
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,       qword[rbp-296]
     xor                  rdi,                  rsi
     mov       qword[rbp-296],                  rdi
	jmp	@main.49.@getnumber.8.@xorshift.3.ForIter
@main.49.@getnumber.8.@xorshift.3.ForIter:
     mov                  rsi,       qword[rbp-304]
     add       qword[rbp-304],                    1
	jmp	@main.47.@getnumber.6.@xorshift.5.ForCon
@main.47.@getnumber.6.@xorshift.5.ForCon:
     mov                  rsi,       qword[rbp-288]
    imul                  rsi,                   10
     cmp       qword[rbp-304],                  rsi
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.48.@getnumber.7.@xorshift.4.ForBody
	jmp	@main.50.@getnumber.9.@xorshift.6.ForExit
@main.50.@getnumber.9.@xorshift.6.ForExit:
     mov                  rsi,       qword[rbp-296]
     xor                  rsi,            123456789
     mov                  rsi,                  rsi
	jmp	@main.51.@getnumber.4.@xorshift.2.exit
@main.51.@getnumber.4.@xorshift.2.exit:
     mov       qword[rbp-312],                  rsi
     mov                  rsi,       qword[rbp-312]
     mov                  rdi,       qword[rbp-280]
@main.52.@getnumber.11.@shift_l.1.enter:
     mov                  rsi,                  rsi
     mov                  rcx,                  rdi
     shl                  rsi,                   cl
     mov                  rdi,                32767
     mov       qword[rbp-320],                65535
@main.53.@getnumber.12.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  rcx,       qword[rbp-320]
     mov       qword[rbp-328],                  rcx
     mov                  rax,       qword[rbp-328]
      or                  rax,                  rdi
     mov       qword[rbp-328],                  rax
     mov                  rdi,       qword[rbp-328]
	jmp	@main.54.@getnumber.13.@shift_l.4.@hilo.2.exit
@main.54.@getnumber.13.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     and                  rsi,                  rdi
     mov                  rsi,                  rsi
	jmp	@main.55.@getnumber.10.@shift_l.2.exit
@main.55.@getnumber.10.@shift_l.2.exit:
     mov       qword[rbp-336],                  rsi
     mov                  rsi,                   32
     sub                  rsi,       qword[rbp-280]
     mov                  rcx,       qword[rbp-312]
     mov       qword[rbp-344],                  rcx
     mov       qword[rbp-352],                  rsi
@main.56.@getnumber.15.@shift_r.1.enter:
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                  r10
    push                  rsi
    push                  r11
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	hilo
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov       qword[rbp-360],                  rsi
     mov                  rsi,       qword[rbp-360]
     mov                  rcx,       qword[rbp-352]
     shr                  rsi,                   cl
     mov                  rsi,                  rsi
     shl                  rsi,                    1
     mov                  rsi,                  rsi
     add                  rsi,                    1
     mov       qword[rbp-360],                  rsi
     mov                  rsi,       qword[rbp-344]
     mov                  rcx,       qword[rbp-352]
     shr                  rsi,                   cl
     mov                  rdi,       qword[rbp-360]
     and                  rdi,                  rsi
     mov       qword[rbp-360],                  rdi
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                  r10
    push                  rsi
    push                  r11
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	hilo
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,       qword[rbp-360]
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@main.57.@getnumber.14.@shift_r.2.exit
@main.57.@getnumber.14.@shift_r.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,       qword[rbp-336]
      or                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@main.44.@getnumber.2.exit
@main.44.@getnumber.2.exit:
     mov       qword[rbp-368],                  rsi
     mov                  rsi,        qword[rbp-24]
     xor                  rsi,        qword[rbp-32]
     mov       qword[rbp-376],                  rsi
     mov                  rdi,         qword[rbp-8]
     mov                  rsi,        qword[rbp-40]
@main.59.@getnumber.1.enter:
     mov                  rsi,                  rsi
     and                  rsi,                   31
     mov       qword[rbp-384],                  rsi
     mov                  rsi,       qword[rbp-376]
     mov       qword[rbp-392],                  rdi
@main.60.@getnumber.5.@xorshift.1.enter:
     mov                  rsi,                  rsi
     add                  rsi,                    1
     mov       qword[rbp-400],                  rsi
     mov       qword[rbp-408],                    0
	jmp	@main.61.@getnumber.6.@xorshift.5.ForCon
@main.62.@getnumber.7.@xorshift.4.ForBody:
     mov                  rdi,       qword[rbp-400]
     mov                  rsi,                   13
    push                  r10
    push                  rsi
    push                  r11
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	shift_l
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,       qword[rbp-400]
     xor                  rdi,                  rsi
     mov       qword[rbp-400],                  rdi
     mov                  rdi,       qword[rbp-400]
     mov                  rsi,                   17
    push                  r10
    push                  rsi
    push                  r11
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	shift_r
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,       qword[rbp-400]
     xor                  rdi,                  rsi
     mov       qword[rbp-400],                  rdi
     mov                  rdi,       qword[rbp-400]
     mov                  rsi,                    5
    push                  r10
    push                  r11
    push                   r8
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	shift_l
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,       qword[rbp-400]
     xor                  rdi,                  rsi
     mov       qword[rbp-400],                  rdi
	jmp	@main.63.@getnumber.8.@xorshift.3.ForIter
@main.63.@getnumber.8.@xorshift.3.ForIter:
     mov                  rsi,       qword[rbp-408]
     add       qword[rbp-408],                    1
	jmp	@main.61.@getnumber.6.@xorshift.5.ForCon
@main.61.@getnumber.6.@xorshift.5.ForCon:
     mov                  rsi,       qword[rbp-392]
    imul                  rsi,                   10
     cmp       qword[rbp-408],                  rsi
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.62.@getnumber.7.@xorshift.4.ForBody
	jmp	@main.64.@getnumber.9.@xorshift.6.ForExit
@main.64.@getnumber.9.@xorshift.6.ForExit:
     mov                  rsi,       qword[rbp-400]
     xor                  rsi,            123456789
     mov                  rsi,                  rsi
	jmp	@main.65.@getnumber.4.@xorshift.2.exit
@main.65.@getnumber.4.@xorshift.2.exit:
     mov       qword[rbp-416],                  rsi
     mov                  rsi,       qword[rbp-416]
     mov                  rdi,       qword[rbp-384]
@main.66.@getnumber.11.@shift_l.1.enter:
     mov       qword[rbp-424],                  rsi
     mov                  rcx,                  rdi
     shl       qword[rbp-424],                   cl
     mov                  rsi,                32767
     mov                  rdi,                65535
@main.67.@getnumber.12.@shift_l.5.@hilo.1.enter:
     mov                  rsi,                  rsi
     shl                  rsi,                   16
     mov                  rdi,                  rdi
      or                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@main.68.@getnumber.13.@shift_l.4.@hilo.2.exit
@main.68.@getnumber.13.@shift_l.4.@hilo.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,       qword[rbp-424]
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@main.69.@getnumber.10.@shift_l.2.exit
@main.69.@getnumber.10.@shift_l.2.exit:
     mov       qword[rbp-432],                  rsi
     mov                  rsi,                   32
     sub                  rsi,       qword[rbp-384]
     mov                  rcx,       qword[rbp-416]
     mov       qword[rbp-440],                  rcx
     mov       qword[rbp-448],                  rsi
@main.70.@getnumber.15.@shift_r.1.enter:
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                  r10
    push                  rsi
    push                  r11
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	hilo
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov       qword[rbp-456],                  rsi
     mov                  rsi,       qword[rbp-456]
     mov                  rcx,       qword[rbp-448]
     shr                  rsi,                   cl
     mov                  rsi,                  rsi
     shl                  rsi,                    1
     mov                  rsi,                  rsi
     add                  rsi,                    1
     mov       qword[rbp-456],                  rsi
     mov                  rsi,       qword[rbp-440]
     mov                  rcx,       qword[rbp-448]
     shr                  rsi,                   cl
     mov                  rdi,       qword[rbp-456]
     and                  rdi,                  rsi
     mov       qword[rbp-456],                  rdi
     mov                  rdi,                32767
     mov                  rsi,                65535
    push                  r10
    push                  rsi
    push                  r11
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	hilo
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,       qword[rbp-456]
     and                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@main.71.@getnumber.14.@shift_r.2.exit
@main.71.@getnumber.14.@shift_r.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,       qword[rbp-432]
      or                  rdi,                  rsi
     mov                  rsi,                  rdi
	jmp	@main.58.@getnumber.2.exit
@main.58.@getnumber.2.exit:
     mov                  rsi,                  rsi
     mov                  rcx,        qword[rbp-40]
     mov       qword[rbp-464],                  rcx
     mov                  rdi,                    1
@main.73.@xorshift.1.enter:
     mov                  rcx,       qword[rbp-464]
     mov       qword[rbp-472],                  rcx
     mov                  rax,       qword[rbp-472]
     add                  rax,                    1
     mov       qword[rbp-472],                  rax
     mov                  rcx,       qword[rbp-472]
     mov       qword[rbp-480],                  rcx
     mov       qword[rbp-488],                    0
	jmp	@main.74.@xorshift.5.ForCon
@main.75.@xorshift.4.ForBody:
     mov                  rcx,       qword[rbp-480]
     mov       qword[rbp-496],                  rcx
     mov       qword[rbp-504],                   13
@main.76.@xorshift.9.@shift_l.1.enter:
     mov                  rcx,       qword[rbp-496]
     mov       qword[rbp-512],                  rcx
     mov                  rcx,       qword[rbp-504]
     shl       qword[rbp-512],                   cl
     mov       qword[rbp-520],                32767
     mov       qword[rbp-528],                65535
@main.77.@xorshift.10.@shift_l.5.@hilo.1.enter:
     mov                  rcx,       qword[rbp-520]
     mov       qword[rbp-536],                  rcx
     shl       qword[rbp-536],                   16
     mov                  rcx,       qword[rbp-528]
     mov       qword[rbp-544],                  rcx
     mov                  rax,       qword[rbp-544]
      or                  rax,       qword[rbp-536]
     mov       qword[rbp-544],                  rax
     mov                  rcx,       qword[rbp-544]
     mov       qword[rbp-552],                  rcx
	jmp	@main.78.@xorshift.11.@shift_l.4.@hilo.2.exit
@main.78.@xorshift.11.@shift_l.4.@hilo.2.exit:
     mov                  rcx,       qword[rbp-552]
     mov       qword[rbp-560],                  rcx
     mov                  rcx,       qword[rbp-512]
     mov       qword[rbp-568],                  rcx
     mov                  rax,       qword[rbp-568]
     and                  rax,       qword[rbp-560]
     mov       qword[rbp-568],                  rax
     mov                  rcx,       qword[rbp-568]
     mov       qword[rbp-576],                  rcx
	jmp	@main.79.@xorshift.8.@shift_l.2.exit
@main.79.@xorshift.8.@shift_l.2.exit:
     mov                  rcx,       qword[rbp-576]
     mov       qword[rbp-584],                  rcx
     mov                  rcx,       qword[rbp-480]
     mov       qword[rbp-592],                  rcx
     mov                  rax,       qword[rbp-592]
     xor                  rax,       qword[rbp-584]
     mov       qword[rbp-592],                  rax
     mov                  rcx,       qword[rbp-592]
     mov       qword[rbp-480],                  rcx
     mov                  rcx,       qword[rbp-480]
     mov       qword[rbp-600],                  rcx
     mov       qword[rbp-608],                   17
@main.80.@xorshift.13.@shift_r.1.enter:
     mov       qword[rbp-616],                32767
     mov       qword[rbp-624],                65535
@main.81.@xorshift.14.@shift_r.5.@hilo.1.enter:
     mov                  rcx,       qword[rbp-616]
     mov       qword[rbp-632],                  rcx
     shl       qword[rbp-632],                   16
     mov                  rcx,       qword[rbp-624]
     mov       qword[rbp-640],                  rcx
     mov                  rax,       qword[rbp-640]
      or                  rax,       qword[rbp-632]
     mov       qword[rbp-640],                  rax
     mov                  rcx,       qword[rbp-640]
     mov       qword[rbp-648],                  rcx
	jmp	@main.82.@xorshift.15.@shift_r.4.@hilo.2.exit
@main.82.@xorshift.15.@shift_r.4.@hilo.2.exit:
     mov                  rcx,       qword[rbp-648]
     mov       qword[rbp-656],                  rcx
     mov                  rcx,       qword[rbp-656]
     mov       qword[rbp-664],                  rcx
     mov                  rcx,       qword[rbp-608]
     shr       qword[rbp-664],                   cl
     mov                  rcx,       qword[rbp-664]
     mov       qword[rbp-672],                  rcx
     shl       qword[rbp-672],                    1
     mov                  rcx,       qword[rbp-672]
     mov       qword[rbp-680],                  rcx
     mov                  rax,       qword[rbp-680]
     add                  rax,                    1
     mov       qword[rbp-680],                  rax
     mov                  rcx,       qword[rbp-680]
     mov       qword[rbp-656],                  rcx
     mov                  rcx,       qword[rbp-600]
     mov       qword[rbp-688],                  rcx
     mov                  rcx,       qword[rbp-608]
     shr       qword[rbp-688],                   cl
     mov                  rcx,       qword[rbp-656]
     mov       qword[rbp-696],                  rcx
     mov                  rax,       qword[rbp-696]
     and                  rax,       qword[rbp-688]
     mov       qword[rbp-696],                  rax
     mov                  rcx,       qword[rbp-696]
     mov       qword[rbp-656],                  rcx
     mov       qword[rbp-704],                32767
     mov       qword[rbp-712],                65535
@main.83.@xorshift.16.@shift_r.7.@hilo.1.enter:
     mov                  rcx,       qword[rbp-704]
     mov       qword[rbp-720],                  rcx
     shl       qword[rbp-720],                   16
     mov                  rcx,       qword[rbp-712]
     mov       qword[rbp-728],                  rcx
     mov                  rax,       qword[rbp-728]
      or                  rax,       qword[rbp-720]
     mov       qword[rbp-728],                  rax
     mov                  rcx,       qword[rbp-728]
     mov       qword[rbp-736],                  rcx
	jmp	@main.84.@xorshift.17.@shift_r.6.@hilo.2.exit
@main.84.@xorshift.17.@shift_r.6.@hilo.2.exit:
     mov                  rcx,       qword[rbp-736]
     mov       qword[rbp-744],                  rcx
     mov                  rcx,       qword[rbp-656]
     mov       qword[rbp-752],                  rcx
     mov                  rax,       qword[rbp-752]
     and                  rax,       qword[rbp-744]
     mov       qword[rbp-752],                  rax
     mov                  rcx,       qword[rbp-752]
     mov       qword[rbp-760],                  rcx
	jmp	@main.85.@xorshift.12.@shift_r.2.exit
@main.85.@xorshift.12.@shift_r.2.exit:
     mov                  rcx,       qword[rbp-760]
     mov       qword[rbp-768],                  rcx
     mov                  rcx,       qword[rbp-480]
     mov       qword[rbp-776],                  rcx
     mov                  rax,       qword[rbp-776]
     xor                  rax,       qword[rbp-768]
     mov       qword[rbp-776],                  rax
     mov                  rcx,       qword[rbp-776]
     mov       qword[rbp-480],                  rcx
     mov                  rcx,       qword[rbp-480]
     mov       qword[rbp-784],                  rcx
     mov       qword[rbp-792],                    5
@main.86.@xorshift.19.@shift_l.1.enter:
     mov                  rcx,       qword[rbp-784]
     mov       qword[rbp-800],                  rcx
     mov                  rcx,       qword[rbp-792]
     shl       qword[rbp-800],                   cl
     mov       qword[rbp-808],                32767
     mov       qword[rbp-816],                65535
@main.87.@xorshift.20.@shift_l.5.@hilo.1.enter:
     mov                  rcx,       qword[rbp-808]
     mov       qword[rbp-824],                  rcx
     shl       qword[rbp-824],                   16
     mov                  rcx,       qword[rbp-816]
     mov       qword[rbp-832],                  rcx
     mov                  rax,       qword[rbp-832]
      or                  rax,       qword[rbp-824]
     mov       qword[rbp-832],                  rax
     mov                  rcx,       qword[rbp-832]
     mov       qword[rbp-840],                  rcx
	jmp	@main.88.@xorshift.21.@shift_l.4.@hilo.2.exit
@main.88.@xorshift.21.@shift_l.4.@hilo.2.exit:
     mov                  rcx,       qword[rbp-840]
     mov       qword[rbp-848],                  rcx
     mov                  rcx,       qword[rbp-800]
     mov       qword[rbp-856],                  rcx
     mov                  rax,       qword[rbp-856]
     and                  rax,       qword[rbp-848]
     mov       qword[rbp-856],                  rax
     mov                  rcx,       qword[rbp-856]
     mov       qword[rbp-864],                  rcx
	jmp	@main.89.@xorshift.18.@shift_l.2.exit
@main.89.@xorshift.18.@shift_l.2.exit:
     mov                  rcx,       qword[rbp-864]
     mov       qword[rbp-872],                  rcx
     mov                  rcx,       qword[rbp-480]
     mov       qword[rbp-880],                  rcx
     mov                  rax,       qword[rbp-880]
     xor                  rax,       qword[rbp-872]
     mov       qword[rbp-880],                  rax
     mov                  rcx,       qword[rbp-880]
     mov       qword[rbp-480],                  rcx
	jmp	@main.90.@xorshift.3.ForIter
@main.90.@xorshift.3.ForIter:
     mov                  rcx,       qword[rbp-488]
     mov       qword[rbp-888],                  rcx
     add       qword[rbp-488],                    1
	jmp	@main.74.@xorshift.5.ForCon
@main.74.@xorshift.5.ForCon:
     mov       qword[rbp-896],                  rdi
     mov                  rax,       qword[rbp-896]
    imul                  rax,                   10
     mov       qword[rbp-896],                  rax
     mov                  rcx,       qword[rbp-488]
     cmp                  rcx,       qword[rbp-896]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-904],                  rax
     mov                  rcx,       qword[rbp-904]
     mov       qword[rbp-912],                  rcx
     cmp       qword[rbp-912],                    1
	je	@main.75.@xorshift.4.ForBody
	jmp	@main.91.@xorshift.6.ForExit
@main.91.@xorshift.6.ForExit:
     mov                  rdi,       qword[rbp-480]
     xor                  rdi,            123456789
     mov                  rdi,                  rdi
	jmp	@main.72.@xorshift.2.exit
@main.72.@xorshift.2.exit:
     mov                  rdi,                  rdi
     mov                  rcx,        qword[rbp-32]
     mov       qword[rbp-920],                  rcx
     mov       qword[rbp-928],                    1
@main.93.@xorshift.1.enter:
     mov                  rcx,       qword[rbp-920]
     mov       qword[rbp-936],                  rcx
     mov                  rax,       qword[rbp-936]
     add                  rax,                    1
     mov       qword[rbp-936],                  rax
     mov                  rcx,       qword[rbp-936]
     mov       qword[rbp-944],                  rcx
     mov       qword[rbp-952],                    0
	jmp	@main.94.@xorshift.5.ForCon
@main.95.@xorshift.4.ForBody:
     mov                  rcx,       qword[rbp-944]
     mov       qword[rbp-960],                  rcx
     mov       qword[rbp-968],                   13
@main.96.@xorshift.9.@shift_l.1.enter:
     mov                  rcx,       qword[rbp-960]
     mov       qword[rbp-976],                  rcx
     mov                  rcx,       qword[rbp-968]
     shl       qword[rbp-976],                   cl
     mov       qword[rbp-984],                32767
     mov       qword[rbp-992],                65535
@main.97.@xorshift.10.@shift_l.5.@hilo.1.enter:
     mov                  rcx,       qword[rbp-984]
     mov      qword[rbp-1000],                  rcx
     shl      qword[rbp-1000],                   16
     mov                  rcx,       qword[rbp-992]
     mov      qword[rbp-1008],                  rcx
     mov                  rax,      qword[rbp-1008]
      or                  rax,      qword[rbp-1000]
     mov      qword[rbp-1008],                  rax
     mov                  rcx,      qword[rbp-1008]
     mov      qword[rbp-1016],                  rcx
	jmp	@main.98.@xorshift.11.@shift_l.4.@hilo.2.exit
@main.98.@xorshift.11.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-1016]
     mov      qword[rbp-1024],                  rcx
     mov                  rcx,       qword[rbp-976]
     mov      qword[rbp-1032],                  rcx
     mov                  rax,      qword[rbp-1032]
     and                  rax,      qword[rbp-1024]
     mov      qword[rbp-1032],                  rax
     mov                  rcx,      qword[rbp-1032]
     mov      qword[rbp-1040],                  rcx
	jmp	@main.99.@xorshift.8.@shift_l.2.exit
@main.99.@xorshift.8.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-1040]
     mov      qword[rbp-1048],                  rcx
     mov                  rcx,       qword[rbp-944]
     mov      qword[rbp-1056],                  rcx
     mov                  rax,      qword[rbp-1056]
     xor                  rax,      qword[rbp-1048]
     mov      qword[rbp-1056],                  rax
     mov                  rcx,      qword[rbp-1056]
     mov       qword[rbp-944],                  rcx
     mov                  rcx,       qword[rbp-944]
     mov      qword[rbp-1064],                  rcx
     mov      qword[rbp-1072],                   17
@main.100.@xorshift.13.@shift_r.1.enter:
     mov      qword[rbp-1080],                32767
     mov      qword[rbp-1088],                65535
@main.101.@xorshift.14.@shift_r.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-1080]
     mov      qword[rbp-1096],                  rcx
     shl      qword[rbp-1096],                   16
     mov                  rcx,      qword[rbp-1088]
     mov      qword[rbp-1104],                  rcx
     mov                  rax,      qword[rbp-1104]
      or                  rax,      qword[rbp-1096]
     mov      qword[rbp-1104],                  rax
     mov                  rcx,      qword[rbp-1104]
     mov      qword[rbp-1112],                  rcx
	jmp	@main.102.@xorshift.15.@shift_r.4.@hilo.2.exit
@main.102.@xorshift.15.@shift_r.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-1112]
     mov      qword[rbp-1120],                  rcx
     mov                  rcx,      qword[rbp-1120]
     mov      qword[rbp-1128],                  rcx
     mov                  rcx,      qword[rbp-1072]
     shr      qword[rbp-1128],                   cl
     mov                  rcx,      qword[rbp-1128]
     mov      qword[rbp-1136],                  rcx
     shl      qword[rbp-1136],                    1
     mov                  rcx,      qword[rbp-1136]
     mov      qword[rbp-1144],                  rcx
     mov                  rax,      qword[rbp-1144]
     add                  rax,                    1
     mov      qword[rbp-1144],                  rax
     mov                  rcx,      qword[rbp-1144]
     mov      qword[rbp-1120],                  rcx
     mov                  rcx,      qword[rbp-1064]
     mov      qword[rbp-1152],                  rcx
     mov                  rcx,      qword[rbp-1072]
     shr      qword[rbp-1152],                   cl
     mov                  rcx,      qword[rbp-1120]
     mov      qword[rbp-1160],                  rcx
     mov                  rax,      qword[rbp-1160]
     and                  rax,      qword[rbp-1152]
     mov      qword[rbp-1160],                  rax
     mov                  rcx,      qword[rbp-1160]
     mov      qword[rbp-1120],                  rcx
     mov      qword[rbp-1168],                32767
     mov      qword[rbp-1176],                65535
@main.103.@xorshift.16.@shift_r.7.@hilo.1.enter:
     mov                  rcx,      qword[rbp-1168]
     mov      qword[rbp-1184],                  rcx
     shl      qword[rbp-1184],                   16
     mov                  rcx,      qword[rbp-1176]
     mov      qword[rbp-1192],                  rcx
     mov                  rax,      qword[rbp-1192]
      or                  rax,      qword[rbp-1184]
     mov      qword[rbp-1192],                  rax
     mov                  rcx,      qword[rbp-1192]
     mov      qword[rbp-1200],                  rcx
	jmp	@main.104.@xorshift.17.@shift_r.6.@hilo.2.exit
@main.104.@xorshift.17.@shift_r.6.@hilo.2.exit:
     mov                  rcx,      qword[rbp-1200]
     mov      qword[rbp-1208],                  rcx
     mov                  rcx,      qword[rbp-1120]
     mov      qword[rbp-1216],                  rcx
     mov                  rax,      qword[rbp-1216]
     and                  rax,      qword[rbp-1208]
     mov      qword[rbp-1216],                  rax
     mov                  rcx,      qword[rbp-1216]
     mov      qword[rbp-1224],                  rcx
	jmp	@main.105.@xorshift.12.@shift_r.2.exit
@main.105.@xorshift.12.@shift_r.2.exit:
     mov                  rcx,      qword[rbp-1224]
     mov      qword[rbp-1232],                  rcx
     mov                  rcx,       qword[rbp-944]
     mov      qword[rbp-1240],                  rcx
     mov                  rax,      qword[rbp-1240]
     xor                  rax,      qword[rbp-1232]
     mov      qword[rbp-1240],                  rax
     mov                  rcx,      qword[rbp-1240]
     mov       qword[rbp-944],                  rcx
     mov                  rcx,       qword[rbp-944]
     mov      qword[rbp-1248],                  rcx
     mov      qword[rbp-1256],                    5
@main.106.@xorshift.19.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-1248]
     mov      qword[rbp-1264],                  rcx
     mov                  rcx,      qword[rbp-1256]
     shl      qword[rbp-1264],                   cl
     mov      qword[rbp-1272],                32767
     mov      qword[rbp-1280],                65535
@main.107.@xorshift.20.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-1272]
     mov      qword[rbp-1288],                  rcx
     shl      qword[rbp-1288],                   16
     mov                  rcx,      qword[rbp-1280]
     mov      qword[rbp-1296],                  rcx
     mov                  rax,      qword[rbp-1296]
      or                  rax,      qword[rbp-1288]
     mov      qword[rbp-1296],                  rax
     mov                  rcx,      qword[rbp-1296]
     mov      qword[rbp-1304],                  rcx
	jmp	@main.108.@xorshift.21.@shift_l.4.@hilo.2.exit
@main.108.@xorshift.21.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-1304]
     mov      qword[rbp-1312],                  rcx
     mov                  rcx,      qword[rbp-1264]
     mov      qword[rbp-1320],                  rcx
     mov                  rax,      qword[rbp-1320]
     and                  rax,      qword[rbp-1312]
     mov      qword[rbp-1320],                  rax
     mov                  rcx,      qword[rbp-1320]
     mov      qword[rbp-1328],                  rcx
	jmp	@main.109.@xorshift.18.@shift_l.2.exit
@main.109.@xorshift.18.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-1328]
     mov      qword[rbp-1336],                  rcx
     mov                  rcx,       qword[rbp-944]
     mov      qword[rbp-1344],                  rcx
     mov                  rax,      qword[rbp-1344]
     xor                  rax,      qword[rbp-1336]
     mov      qword[rbp-1344],                  rax
     mov                  rcx,      qword[rbp-1344]
     mov       qword[rbp-944],                  rcx
	jmp	@main.110.@xorshift.3.ForIter
@main.110.@xorshift.3.ForIter:
     mov                  rcx,       qword[rbp-952]
     mov      qword[rbp-1352],                  rcx
     add       qword[rbp-952],                    1
	jmp	@main.94.@xorshift.5.ForCon
@main.94.@xorshift.5.ForCon:
     mov                  rcx,       qword[rbp-928]
     mov      qword[rbp-1360],                  rcx
     mov                  rax,      qword[rbp-1360]
    imul                  rax,                   10
     mov      qword[rbp-1360],                  rax
     mov                  rcx,       qword[rbp-952]
     cmp                  rcx,      qword[rbp-1360]
     mov                  rax,                    0
    setl                   al
     mov      qword[rbp-1368],                  rax
     mov                  rcx,      qword[rbp-1368]
     mov      qword[rbp-1376],                  rcx
     cmp      qword[rbp-1376],                    1
	je	@main.95.@xorshift.4.ForBody
	jmp	@main.111.@xorshift.6.ForExit
@main.111.@xorshift.6.ForExit:
     mov                  rcx,       qword[rbp-944]
     mov      qword[rbp-1384],                  rcx
     mov                  rax,      qword[rbp-1384]
     xor                  rax,            123456789
     mov      qword[rbp-1384],                  rax
     mov                  rcx,      qword[rbp-1384]
     mov      qword[rbp-1392],                  rcx
	jmp	@main.92.@xorshift.2.exit
@main.92.@xorshift.2.exit:
     mov                  rcx,      qword[rbp-1392]
     mov      qword[rbp-1400],                  rcx
     mov      qword[rbp-1408],                  rdi
     mov                  rax,      qword[rbp-1408]
     xor                  rax,      qword[rbp-1400]
     mov      qword[rbp-1408],                  rax
     mov                  rcx,        qword[rbp-24]
     mov      qword[rbp-1416],                  rcx
     mov                  rdi,                    1
@main.113.@xorshift.1.enter:
     mov                  rcx,      qword[rbp-1416]
     mov      qword[rbp-1424],                  rcx
     mov                  rax,      qword[rbp-1424]
     add                  rax,                    1
     mov      qword[rbp-1424],                  rax
     mov                  rcx,      qword[rbp-1424]
     mov      qword[rbp-1432],                  rcx
     mov      qword[rbp-1440],                    0
	jmp	@main.114.@xorshift.5.ForCon
@main.115.@xorshift.4.ForBody:
     mov                  rcx,      qword[rbp-1432]
     mov      qword[rbp-1448],                  rcx
     mov      qword[rbp-1456],                   13
@main.116.@xorshift.9.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-1448]
     mov      qword[rbp-1464],                  rcx
     mov                  rcx,      qword[rbp-1456]
     shl      qword[rbp-1464],                   cl
     mov      qword[rbp-1472],                32767
     mov      qword[rbp-1480],                65535
@main.117.@xorshift.10.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-1472]
     mov      qword[rbp-1488],                  rcx
     shl      qword[rbp-1488],                   16
     mov                  rcx,      qword[rbp-1480]
     mov      qword[rbp-1496],                  rcx
     mov                  rax,      qword[rbp-1496]
      or                  rax,      qword[rbp-1488]
     mov      qword[rbp-1496],                  rax
     mov                  rcx,      qword[rbp-1496]
     mov      qword[rbp-1504],                  rcx
	jmp	@main.118.@xorshift.11.@shift_l.4.@hilo.2.exit
@main.118.@xorshift.11.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-1504]
     mov      qword[rbp-1512],                  rcx
     mov                  rcx,      qword[rbp-1464]
     mov      qword[rbp-1520],                  rcx
     mov                  rax,      qword[rbp-1520]
     and                  rax,      qword[rbp-1512]
     mov      qword[rbp-1520],                  rax
     mov                  rcx,      qword[rbp-1520]
     mov      qword[rbp-1528],                  rcx
	jmp	@main.119.@xorshift.8.@shift_l.2.exit
@main.119.@xorshift.8.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-1528]
     mov      qword[rbp-1536],                  rcx
     mov                  rcx,      qword[rbp-1432]
     mov      qword[rbp-1544],                  rcx
     mov                  rax,      qword[rbp-1544]
     xor                  rax,      qword[rbp-1536]
     mov      qword[rbp-1544],                  rax
     mov                  rcx,      qword[rbp-1544]
     mov      qword[rbp-1432],                  rcx
     mov                  rcx,      qword[rbp-1432]
     mov      qword[rbp-1552],                  rcx
     mov      qword[rbp-1560],                   17
@main.120.@xorshift.13.@shift_r.1.enter:
     mov      qword[rbp-1568],                32767
     mov      qword[rbp-1576],                65535
@main.121.@xorshift.14.@shift_r.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-1568]
     mov      qword[rbp-1584],                  rcx
     shl      qword[rbp-1584],                   16
     mov                  rcx,      qword[rbp-1576]
     mov      qword[rbp-1592],                  rcx
     mov                  rax,      qword[rbp-1592]
      or                  rax,      qword[rbp-1584]
     mov      qword[rbp-1592],                  rax
     mov                  rcx,      qword[rbp-1592]
     mov      qword[rbp-1600],                  rcx
	jmp	@main.122.@xorshift.15.@shift_r.4.@hilo.2.exit
@main.122.@xorshift.15.@shift_r.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-1600]
     mov      qword[rbp-1608],                  rcx
     mov                  rcx,      qword[rbp-1608]
     mov      qword[rbp-1616],                  rcx
     mov                  rcx,      qword[rbp-1560]
     shr      qword[rbp-1616],                   cl
     mov                  rcx,      qword[rbp-1616]
     mov      qword[rbp-1624],                  rcx
     shl      qword[rbp-1624],                    1
     mov                  rcx,      qword[rbp-1624]
     mov      qword[rbp-1632],                  rcx
     mov                  rax,      qword[rbp-1632]
     add                  rax,                    1
     mov      qword[rbp-1632],                  rax
     mov                  rcx,      qword[rbp-1632]
     mov      qword[rbp-1608],                  rcx
     mov                  rcx,      qword[rbp-1552]
     mov      qword[rbp-1640],                  rcx
     mov                  rcx,      qword[rbp-1560]
     shr      qword[rbp-1640],                   cl
     mov                  rcx,      qword[rbp-1608]
     mov      qword[rbp-1648],                  rcx
     mov                  rax,      qword[rbp-1648]
     and                  rax,      qword[rbp-1640]
     mov      qword[rbp-1648],                  rax
     mov                  rcx,      qword[rbp-1648]
     mov      qword[rbp-1608],                  rcx
     mov      qword[rbp-1656],                32767
     mov      qword[rbp-1664],                65535
@main.123.@xorshift.16.@shift_r.7.@hilo.1.enter:
     mov                  rcx,      qword[rbp-1656]
     mov      qword[rbp-1672],                  rcx
     shl      qword[rbp-1672],                   16
     mov                  rcx,      qword[rbp-1664]
     mov      qword[rbp-1680],                  rcx
     mov                  rax,      qword[rbp-1680]
      or                  rax,      qword[rbp-1672]
     mov      qword[rbp-1680],                  rax
     mov                  rcx,      qword[rbp-1680]
     mov      qword[rbp-1688],                  rcx
	jmp	@main.124.@xorshift.17.@shift_r.6.@hilo.2.exit
@main.124.@xorshift.17.@shift_r.6.@hilo.2.exit:
     mov                  rcx,      qword[rbp-1688]
     mov      qword[rbp-1696],                  rcx
     mov                  rcx,      qword[rbp-1608]
     mov      qword[rbp-1704],                  rcx
     mov                  rax,      qword[rbp-1704]
     and                  rax,      qword[rbp-1696]
     mov      qword[rbp-1704],                  rax
     mov                  rcx,      qword[rbp-1704]
     mov      qword[rbp-1712],                  rcx
	jmp	@main.125.@xorshift.12.@shift_r.2.exit
@main.125.@xorshift.12.@shift_r.2.exit:
     mov                  rcx,      qword[rbp-1712]
     mov      qword[rbp-1720],                  rcx
     mov                  rcx,      qword[rbp-1432]
     mov      qword[rbp-1728],                  rcx
     mov                  rax,      qword[rbp-1728]
     xor                  rax,      qword[rbp-1720]
     mov      qword[rbp-1728],                  rax
     mov                  rcx,      qword[rbp-1728]
     mov      qword[rbp-1432],                  rcx
     mov                  rcx,      qword[rbp-1432]
     mov      qword[rbp-1736],                  rcx
     mov      qword[rbp-1744],                    5
@main.126.@xorshift.19.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-1736]
     mov      qword[rbp-1752],                  rcx
     mov                  rcx,      qword[rbp-1744]
     shl      qword[rbp-1752],                   cl
     mov      qword[rbp-1760],                32767
     mov      qword[rbp-1768],                65535
@main.127.@xorshift.20.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-1760]
     mov      qword[rbp-1776],                  rcx
     shl      qword[rbp-1776],                   16
     mov                  rcx,      qword[rbp-1768]
     mov      qword[rbp-1784],                  rcx
     mov                  rax,      qword[rbp-1784]
      or                  rax,      qword[rbp-1776]
     mov      qword[rbp-1784],                  rax
     mov                  rcx,      qword[rbp-1784]
     mov      qword[rbp-1792],                  rcx
	jmp	@main.128.@xorshift.21.@shift_l.4.@hilo.2.exit
@main.128.@xorshift.21.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-1792]
     mov      qword[rbp-1800],                  rcx
     mov                  rcx,      qword[rbp-1752]
     mov      qword[rbp-1808],                  rcx
     mov                  rax,      qword[rbp-1808]
     and                  rax,      qword[rbp-1800]
     mov      qword[rbp-1808],                  rax
     mov                  rcx,      qword[rbp-1808]
     mov      qword[rbp-1816],                  rcx
	jmp	@main.129.@xorshift.18.@shift_l.2.exit
@main.129.@xorshift.18.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-1816]
     mov      qword[rbp-1824],                  rcx
     mov                  rcx,      qword[rbp-1432]
     mov      qword[rbp-1832],                  rcx
     mov                  rax,      qword[rbp-1832]
     xor                  rax,      qword[rbp-1824]
     mov      qword[rbp-1832],                  rax
     mov                  rcx,      qword[rbp-1832]
     mov      qword[rbp-1432],                  rcx
	jmp	@main.130.@xorshift.3.ForIter
@main.130.@xorshift.3.ForIter:
     mov                  rcx,      qword[rbp-1440]
     mov      qword[rbp-1840],                  rcx
     add      qword[rbp-1440],                    1
	jmp	@main.114.@xorshift.5.ForCon
@main.114.@xorshift.5.ForCon:
     mov      qword[rbp-1848],                  rdi
     mov                  rax,      qword[rbp-1848]
    imul                  rax,                   10
     mov      qword[rbp-1848],                  rax
     mov                  rcx,      qword[rbp-1440]
     cmp                  rcx,      qword[rbp-1848]
     mov                  rax,                    0
    setl                   al
     mov      qword[rbp-1856],                  rax
     mov                  rcx,      qword[rbp-1856]
     mov      qword[rbp-1864],                  rcx
     cmp      qword[rbp-1864],                    1
	je	@main.115.@xorshift.4.ForBody
	jmp	@main.131.@xorshift.6.ForExit
@main.131.@xorshift.6.ForExit:
     mov                  rdi,      qword[rbp-1432]
     xor                  rdi,            123456789
     mov                  rdi,                  rdi
	jmp	@main.112.@xorshift.2.exit
@main.112.@xorshift.2.exit:
     mov                  rdi,                  rdi
     mov                  rcx,      qword[rbp-1408]
     mov      qword[rbp-1872],                  rcx
     mov                  rax,      qword[rbp-1872]
     xor                  rax,                  rdi
     mov      qword[rbp-1872],                  rax
     mov                  rcx,      qword[rbp-1872]
     mov      qword[rbp-1880],                  rcx
     mov                  rdi,       qword[rbp-160]
     xor                  rdi,      qword[rbp-1880]
     mov      qword[rbp-1888],                  rdi
     mov                  rdi,                    1
@main.133.@xorshift.1.enter:
     mov                  rcx,      qword[rbp-1888]
     mov      qword[rbp-1896],                  rcx
     mov                  rax,      qword[rbp-1896]
     add                  rax,                    1
     mov      qword[rbp-1896],                  rax
     mov                  rcx,      qword[rbp-1896]
     mov      qword[rbp-1904],                  rcx
     mov      qword[rbp-1912],                    0
	jmp	@main.134.@xorshift.5.ForCon
@main.135.@xorshift.4.ForBody:
     mov                  rcx,      qword[rbp-1904]
     mov      qword[rbp-1920],                  rcx
     mov      qword[rbp-1928],                   13
@main.136.@xorshift.9.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-1920]
     mov      qword[rbp-1936],                  rcx
     mov                  rcx,      qword[rbp-1928]
     shl      qword[rbp-1936],                   cl
     mov      qword[rbp-1944],                32767
     mov      qword[rbp-1952],                65535
@main.137.@xorshift.10.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-1944]
     mov      qword[rbp-1960],                  rcx
     shl      qword[rbp-1960],                   16
     mov                  rcx,      qword[rbp-1952]
     mov      qword[rbp-1968],                  rcx
     mov                  rax,      qword[rbp-1968]
      or                  rax,      qword[rbp-1960]
     mov      qword[rbp-1968],                  rax
     mov                  rcx,      qword[rbp-1968]
     mov      qword[rbp-1976],                  rcx
	jmp	@main.138.@xorshift.11.@shift_l.4.@hilo.2.exit
@main.138.@xorshift.11.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-1976]
     mov      qword[rbp-1984],                  rcx
     mov                  rcx,      qword[rbp-1936]
     mov      qword[rbp-1992],                  rcx
     mov                  rax,      qword[rbp-1992]
     and                  rax,      qword[rbp-1984]
     mov      qword[rbp-1992],                  rax
     mov                  rcx,      qword[rbp-1992]
     mov      qword[rbp-2000],                  rcx
	jmp	@main.139.@xorshift.8.@shift_l.2.exit
@main.139.@xorshift.8.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-2000]
     mov      qword[rbp-2008],                  rcx
     mov                  rcx,      qword[rbp-1904]
     mov      qword[rbp-2016],                  rcx
     mov                  rax,      qword[rbp-2016]
     xor                  rax,      qword[rbp-2008]
     mov      qword[rbp-2016],                  rax
     mov                  rcx,      qword[rbp-2016]
     mov      qword[rbp-1904],                  rcx
     mov                  rcx,      qword[rbp-1904]
     mov      qword[rbp-2024],                  rcx
     mov      qword[rbp-2032],                   17
@main.140.@xorshift.13.@shift_r.1.enter:
     mov      qword[rbp-2040],                32767
     mov      qword[rbp-2048],                65535
@main.141.@xorshift.14.@shift_r.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-2040]
     mov      qword[rbp-2056],                  rcx
     shl      qword[rbp-2056],                   16
     mov                  rcx,      qword[rbp-2048]
     mov      qword[rbp-2064],                  rcx
     mov                  rax,      qword[rbp-2064]
      or                  rax,      qword[rbp-2056]
     mov      qword[rbp-2064],                  rax
     mov                  rcx,      qword[rbp-2064]
     mov      qword[rbp-2072],                  rcx
	jmp	@main.142.@xorshift.15.@shift_r.4.@hilo.2.exit
@main.142.@xorshift.15.@shift_r.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-2072]
     mov      qword[rbp-2080],                  rcx
     mov                  rcx,      qword[rbp-2080]
     mov      qword[rbp-2088],                  rcx
     mov                  rcx,      qword[rbp-2032]
     shr      qword[rbp-2088],                   cl
     mov                  rcx,      qword[rbp-2088]
     mov      qword[rbp-2096],                  rcx
     shl      qword[rbp-2096],                    1
     mov                  rcx,      qword[rbp-2096]
     mov      qword[rbp-2104],                  rcx
     mov                  rax,      qword[rbp-2104]
     add                  rax,                    1
     mov      qword[rbp-2104],                  rax
     mov                  rcx,      qword[rbp-2104]
     mov      qword[rbp-2080],                  rcx
     mov                  rcx,      qword[rbp-2024]
     mov      qword[rbp-2112],                  rcx
     mov                  rcx,      qword[rbp-2032]
     shr      qword[rbp-2112],                   cl
     mov                  rcx,      qword[rbp-2080]
     mov      qword[rbp-2120],                  rcx
     mov                  rax,      qword[rbp-2120]
     and                  rax,      qword[rbp-2112]
     mov      qword[rbp-2120],                  rax
     mov                  rcx,      qword[rbp-2120]
     mov      qword[rbp-2080],                  rcx
     mov      qword[rbp-2128],                32767
     mov      qword[rbp-2136],                65535
@main.143.@xorshift.16.@shift_r.7.@hilo.1.enter:
     mov                  rcx,      qword[rbp-2128]
     mov      qword[rbp-2144],                  rcx
     shl      qword[rbp-2144],                   16
     mov                  rcx,      qword[rbp-2136]
     mov      qword[rbp-2152],                  rcx
     mov                  rax,      qword[rbp-2152]
      or                  rax,      qword[rbp-2144]
     mov      qword[rbp-2152],                  rax
     mov                  rcx,      qword[rbp-2152]
     mov      qword[rbp-2160],                  rcx
	jmp	@main.144.@xorshift.17.@shift_r.6.@hilo.2.exit
@main.144.@xorshift.17.@shift_r.6.@hilo.2.exit:
     mov                  rcx,      qword[rbp-2160]
     mov      qword[rbp-2168],                  rcx
     mov                  rcx,      qword[rbp-2080]
     mov      qword[rbp-2176],                  rcx
     mov                  rax,      qword[rbp-2176]
     and                  rax,      qword[rbp-2168]
     mov      qword[rbp-2176],                  rax
     mov                  rcx,      qword[rbp-2176]
     mov      qword[rbp-2184],                  rcx
	jmp	@main.145.@xorshift.12.@shift_r.2.exit
@main.145.@xorshift.12.@shift_r.2.exit:
     mov                  rcx,      qword[rbp-2184]
     mov      qword[rbp-2192],                  rcx
     mov                  rcx,      qword[rbp-1904]
     mov      qword[rbp-2200],                  rcx
     mov                  rax,      qword[rbp-2200]
     xor                  rax,      qword[rbp-2192]
     mov      qword[rbp-2200],                  rax
     mov                  rcx,      qword[rbp-2200]
     mov      qword[rbp-1904],                  rcx
     mov                  rcx,      qword[rbp-1904]
     mov      qword[rbp-2208],                  rcx
     mov      qword[rbp-2216],                    5
@main.146.@xorshift.19.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-2208]
     mov      qword[rbp-2224],                  rcx
     mov                  rcx,      qword[rbp-2216]
     shl      qword[rbp-2224],                   cl
     mov      qword[rbp-2232],                32767
     mov      qword[rbp-2240],                65535
@main.147.@xorshift.20.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-2232]
     mov      qword[rbp-2248],                  rcx
     shl      qword[rbp-2248],                   16
     mov                  rcx,      qword[rbp-2240]
     mov      qword[rbp-2256],                  rcx
     mov                  rax,      qword[rbp-2256]
      or                  rax,      qword[rbp-2248]
     mov      qword[rbp-2256],                  rax
     mov                  rcx,      qword[rbp-2256]
     mov      qword[rbp-2264],                  rcx
	jmp	@main.148.@xorshift.21.@shift_l.4.@hilo.2.exit
@main.148.@xorshift.21.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-2264]
     mov      qword[rbp-2272],                  rcx
     mov                  rcx,      qword[rbp-2224]
     mov      qword[rbp-2280],                  rcx
     mov                  rax,      qword[rbp-2280]
     and                  rax,      qword[rbp-2272]
     mov      qword[rbp-2280],                  rax
     mov                  rcx,      qword[rbp-2280]
     mov      qword[rbp-2288],                  rcx
	jmp	@main.149.@xorshift.18.@shift_l.2.exit
@main.149.@xorshift.18.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-2288]
     mov      qword[rbp-2296],                  rcx
     mov                  rcx,      qword[rbp-1904]
     mov      qword[rbp-2304],                  rcx
     mov                  rax,      qword[rbp-2304]
     xor                  rax,      qword[rbp-2296]
     mov      qword[rbp-2304],                  rax
     mov                  rcx,      qword[rbp-2304]
     mov      qword[rbp-1904],                  rcx
	jmp	@main.150.@xorshift.3.ForIter
@main.150.@xorshift.3.ForIter:
     mov                  rcx,      qword[rbp-1912]
     mov      qword[rbp-2312],                  rcx
     add      qword[rbp-1912],                    1
	jmp	@main.134.@xorshift.5.ForCon
@main.134.@xorshift.5.ForCon:
     mov      qword[rbp-2320],                  rdi
     mov                  rax,      qword[rbp-2320]
    imul                  rax,                   10
     mov      qword[rbp-2320],                  rax
     mov                  rcx,      qword[rbp-1912]
     cmp                  rcx,      qword[rbp-2320]
     mov                  rax,                    0
    setl                   al
     mov      qword[rbp-2328],                  rax
     mov                  rcx,      qword[rbp-2328]
     mov      qword[rbp-2336],                  rcx
     cmp      qword[rbp-2336],                    1
	je	@main.135.@xorshift.4.ForBody
	jmp	@main.151.@xorshift.6.ForExit
@main.151.@xorshift.6.ForExit:
     mov                  rdi,      qword[rbp-1904]
     xor                  rdi,            123456789
     mov                  rdi,                  rdi
	jmp	@main.132.@xorshift.2.exit
@main.132.@xorshift.2.exit:
     mov                  rdi,                  rdi
     mov                  r15,                  r15
     add                  r15,                  rdi
     mov                  r15,                  r15
     mov                  rdi,       qword[rbp-264]
     xor                  rdi,      qword[rbp-1880]
     mov      qword[rbp-2344],                  rdi
     mov                  rdi,                    1
@main.153.@xorshift.1.enter:
     mov                  rcx,      qword[rbp-2344]
     mov      qword[rbp-2352],                  rcx
     mov                  rax,      qword[rbp-2352]
     add                  rax,                    1
     mov      qword[rbp-2352],                  rax
     mov                  rcx,      qword[rbp-2352]
     mov      qword[rbp-2360],                  rcx
     mov      qword[rbp-2368],                    0
	jmp	@main.154.@xorshift.5.ForCon
@main.155.@xorshift.4.ForBody:
     mov                  rcx,      qword[rbp-2360]
     mov      qword[rbp-2376],                  rcx
     mov      qword[rbp-2384],                   13
@main.156.@xorshift.9.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-2376]
     mov      qword[rbp-2392],                  rcx
     mov                  rcx,      qword[rbp-2384]
     shl      qword[rbp-2392],                   cl
     mov      qword[rbp-2400],                32767
     mov      qword[rbp-2408],                65535
@main.157.@xorshift.10.@shift_l.5.@hilo.1.enter:
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
	jmp	@main.158.@xorshift.11.@shift_l.4.@hilo.2.exit
@main.158.@xorshift.11.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-2432]
     mov      qword[rbp-2440],                  rcx
     mov                  rcx,      qword[rbp-2392]
     mov      qword[rbp-2448],                  rcx
     mov                  rax,      qword[rbp-2448]
     and                  rax,      qword[rbp-2440]
     mov      qword[rbp-2448],                  rax
     mov                  rcx,      qword[rbp-2448]
     mov      qword[rbp-2456],                  rcx
	jmp	@main.159.@xorshift.8.@shift_l.2.exit
@main.159.@xorshift.8.@shift_l.2.exit:
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
@main.160.@xorshift.13.@shift_r.1.enter:
     mov      qword[rbp-2496],                32767
     mov      qword[rbp-2504],                65535
@main.161.@xorshift.14.@shift_r.5.@hilo.1.enter:
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
	jmp	@main.162.@xorshift.15.@shift_r.4.@hilo.2.exit
@main.162.@xorshift.15.@shift_r.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-2528]
     mov      qword[rbp-2536],                  rcx
     mov                  rcx,      qword[rbp-2536]
     mov      qword[rbp-2544],                  rcx
     mov                  rcx,      qword[rbp-2488]
     shr      qword[rbp-2544],                   cl
     mov                  rcx,      qword[rbp-2544]
     mov      qword[rbp-2552],                  rcx
     shl      qword[rbp-2552],                    1
     mov                  rcx,      qword[rbp-2552]
     mov      qword[rbp-2560],                  rcx
     mov                  rax,      qword[rbp-2560]
     add                  rax,                    1
     mov      qword[rbp-2560],                  rax
     mov                  rcx,      qword[rbp-2560]
     mov      qword[rbp-2536],                  rcx
     mov                  rcx,      qword[rbp-2480]
     mov      qword[rbp-2568],                  rcx
     mov                  rcx,      qword[rbp-2488]
     shr      qword[rbp-2568],                   cl
     mov                  rcx,      qword[rbp-2536]
     mov      qword[rbp-2576],                  rcx
     mov                  rax,      qword[rbp-2576]
     and                  rax,      qword[rbp-2568]
     mov      qword[rbp-2576],                  rax
     mov                  rcx,      qword[rbp-2576]
     mov      qword[rbp-2536],                  rcx
     mov      qword[rbp-2584],                32767
     mov      qword[rbp-2592],                65535
@main.163.@xorshift.16.@shift_r.7.@hilo.1.enter:
     mov                  rcx,      qword[rbp-2584]
     mov      qword[rbp-2600],                  rcx
     shl      qword[rbp-2600],                   16
     mov                  rcx,      qword[rbp-2592]
     mov      qword[rbp-2608],                  rcx
     mov                  rax,      qword[rbp-2608]
      or                  rax,      qword[rbp-2600]
     mov      qword[rbp-2608],                  rax
     mov                  rcx,      qword[rbp-2608]
     mov      qword[rbp-2616],                  rcx
	jmp	@main.164.@xorshift.17.@shift_r.6.@hilo.2.exit
@main.164.@xorshift.17.@shift_r.6.@hilo.2.exit:
     mov                  rcx,      qword[rbp-2616]
     mov      qword[rbp-2624],                  rcx
     mov                  rcx,      qword[rbp-2536]
     mov      qword[rbp-2632],                  rcx
     mov                  rax,      qword[rbp-2632]
     and                  rax,      qword[rbp-2624]
     mov      qword[rbp-2632],                  rax
     mov                  rcx,      qword[rbp-2632]
     mov      qword[rbp-2640],                  rcx
	jmp	@main.165.@xorshift.12.@shift_r.2.exit
@main.165.@xorshift.12.@shift_r.2.exit:
     mov                  rcx,      qword[rbp-2640]
     mov      qword[rbp-2648],                  rcx
     mov                  rcx,      qword[rbp-2360]
     mov      qword[rbp-2656],                  rcx
     mov                  rax,      qword[rbp-2656]
     xor                  rax,      qword[rbp-2648]
     mov      qword[rbp-2656],                  rax
     mov                  rcx,      qword[rbp-2656]
     mov      qword[rbp-2360],                  rcx
     mov                  rcx,      qword[rbp-2360]
     mov      qword[rbp-2664],                  rcx
     mov      qword[rbp-2672],                    5
@main.166.@xorshift.19.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-2664]
     mov      qword[rbp-2680],                  rcx
     mov                  rcx,      qword[rbp-2672]
     shl      qword[rbp-2680],                   cl
     mov      qword[rbp-2688],                32767
     mov      qword[rbp-2696],                65535
@main.167.@xorshift.20.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-2688]
     mov      qword[rbp-2704],                  rcx
     shl      qword[rbp-2704],                   16
     mov                  rcx,      qword[rbp-2696]
     mov      qword[rbp-2712],                  rcx
     mov                  rax,      qword[rbp-2712]
      or                  rax,      qword[rbp-2704]
     mov      qword[rbp-2712],                  rax
     mov                  rcx,      qword[rbp-2712]
     mov      qword[rbp-2720],                  rcx
	jmp	@main.168.@xorshift.21.@shift_l.4.@hilo.2.exit
@main.168.@xorshift.21.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-2720]
     mov      qword[rbp-2728],                  rcx
     mov                  rcx,      qword[rbp-2680]
     mov      qword[rbp-2736],                  rcx
     mov                  rax,      qword[rbp-2736]
     and                  rax,      qword[rbp-2728]
     mov      qword[rbp-2736],                  rax
     mov                  rcx,      qword[rbp-2736]
     mov      qword[rbp-2744],                  rcx
	jmp	@main.169.@xorshift.18.@shift_l.2.exit
@main.169.@xorshift.18.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-2744]
     mov      qword[rbp-2752],                  rcx
     mov                  rcx,      qword[rbp-2360]
     mov      qword[rbp-2760],                  rcx
     mov                  rax,      qword[rbp-2760]
     xor                  rax,      qword[rbp-2752]
     mov      qword[rbp-2760],                  rax
     mov                  rcx,      qword[rbp-2760]
     mov      qword[rbp-2360],                  rcx
	jmp	@main.170.@xorshift.3.ForIter
@main.170.@xorshift.3.ForIter:
     mov                  rcx,      qword[rbp-2368]
     mov      qword[rbp-2768],                  rcx
     add      qword[rbp-2368],                    1
	jmp	@main.154.@xorshift.5.ForCon
@main.154.@xorshift.5.ForCon:
     mov      qword[rbp-2776],                  rdi
     mov                  rax,      qword[rbp-2776]
    imul                  rax,                   10
     mov      qword[rbp-2776],                  rax
     mov                  rcx,      qword[rbp-2368]
     cmp                  rcx,      qword[rbp-2776]
     mov                  rax,                    0
    setl                   al
     mov      qword[rbp-2784],                  rax
     mov                  rcx,      qword[rbp-2784]
     mov      qword[rbp-2792],                  rcx
     cmp      qword[rbp-2792],                    1
	je	@main.155.@xorshift.4.ForBody
	jmp	@main.171.@xorshift.6.ForExit
@main.171.@xorshift.6.ForExit:
     mov                  rdi,      qword[rbp-2360]
     xor                  rdi,            123456789
     mov                  rdi,                  rdi
	jmp	@main.152.@xorshift.2.exit
@main.152.@xorshift.2.exit:
     mov                  rdi,                  rdi
     mov                  r10,                  r10
     add                  r10,                  rdi
     mov                  r10,                  r10
     mov                  rdi,       qword[rbp-368]
     xor                  rdi,      qword[rbp-1880]
     mov      qword[rbp-2800],                  rdi
     mov                  rdi,                    1
@main.173.@xorshift.1.enter:
     mov                  rcx,      qword[rbp-2800]
     mov      qword[rbp-2808],                  rcx
     mov                  rax,      qword[rbp-2808]
     add                  rax,                    1
     mov      qword[rbp-2808],                  rax
     mov                  rcx,      qword[rbp-2808]
     mov      qword[rbp-2816],                  rcx
     mov      qword[rbp-2824],                    0
	jmp	@main.174.@xorshift.5.ForCon
@main.175.@xorshift.4.ForBody:
     mov                  rcx,      qword[rbp-2816]
     mov      qword[rbp-2832],                  rcx
     mov      qword[rbp-2840],                   13
@main.176.@xorshift.9.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-2832]
     mov      qword[rbp-2848],                  rcx
     mov                  rcx,      qword[rbp-2840]
     shl      qword[rbp-2848],                   cl
     mov      qword[rbp-2856],                32767
     mov      qword[rbp-2864],                65535
@main.177.@xorshift.10.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-2856]
     mov      qword[rbp-2872],                  rcx
     shl      qword[rbp-2872],                   16
     mov                  rcx,      qword[rbp-2864]
     mov      qword[rbp-2880],                  rcx
     mov                  rax,      qword[rbp-2880]
      or                  rax,      qword[rbp-2872]
     mov      qword[rbp-2880],                  rax
     mov                  rcx,      qword[rbp-2880]
     mov      qword[rbp-2888],                  rcx
	jmp	@main.178.@xorshift.11.@shift_l.4.@hilo.2.exit
@main.178.@xorshift.11.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-2888]
     mov      qword[rbp-2896],                  rcx
     mov                  rcx,      qword[rbp-2848]
     mov      qword[rbp-2904],                  rcx
     mov                  rax,      qword[rbp-2904]
     and                  rax,      qword[rbp-2896]
     mov      qword[rbp-2904],                  rax
     mov                  rcx,      qword[rbp-2904]
     mov      qword[rbp-2912],                  rcx
	jmp	@main.179.@xorshift.8.@shift_l.2.exit
@main.179.@xorshift.8.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-2912]
     mov      qword[rbp-2920],                  rcx
     mov                  rcx,      qword[rbp-2816]
     mov      qword[rbp-2928],                  rcx
     mov                  rax,      qword[rbp-2928]
     xor                  rax,      qword[rbp-2920]
     mov      qword[rbp-2928],                  rax
     mov                  rcx,      qword[rbp-2928]
     mov      qword[rbp-2816],                  rcx
     mov                  rcx,      qword[rbp-2816]
     mov      qword[rbp-2936],                  rcx
     mov      qword[rbp-2944],                   17
@main.180.@xorshift.13.@shift_r.1.enter:
     mov      qword[rbp-2952],                32767
     mov      qword[rbp-2960],                65535
@main.181.@xorshift.14.@shift_r.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-2952]
     mov      qword[rbp-2968],                  rcx
     shl      qword[rbp-2968],                   16
     mov                  rcx,      qword[rbp-2960]
     mov      qword[rbp-2976],                  rcx
     mov                  rax,      qword[rbp-2976]
      or                  rax,      qword[rbp-2968]
     mov      qword[rbp-2976],                  rax
     mov                  rcx,      qword[rbp-2976]
     mov      qword[rbp-2984],                  rcx
	jmp	@main.182.@xorshift.15.@shift_r.4.@hilo.2.exit
@main.182.@xorshift.15.@shift_r.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-2984]
     mov      qword[rbp-2992],                  rcx
     mov                  rcx,      qword[rbp-2992]
     mov      qword[rbp-3000],                  rcx
     mov                  rcx,      qword[rbp-2944]
     shr      qword[rbp-3000],                   cl
     mov                  rcx,      qword[rbp-3000]
     mov      qword[rbp-3008],                  rcx
     shl      qword[rbp-3008],                    1
     mov                  rcx,      qword[rbp-3008]
     mov      qword[rbp-3016],                  rcx
     mov                  rax,      qword[rbp-3016]
     add                  rax,                    1
     mov      qword[rbp-3016],                  rax
     mov                  rcx,      qword[rbp-3016]
     mov      qword[rbp-2992],                  rcx
     mov                  rcx,      qword[rbp-2936]
     mov      qword[rbp-3024],                  rcx
     mov                  rcx,      qword[rbp-2944]
     shr      qword[rbp-3024],                   cl
     mov                  rcx,      qword[rbp-2992]
     mov      qword[rbp-3032],                  rcx
     mov                  rax,      qword[rbp-3032]
     and                  rax,      qword[rbp-3024]
     mov      qword[rbp-3032],                  rax
     mov                  rcx,      qword[rbp-3032]
     mov      qword[rbp-2992],                  rcx
     mov      qword[rbp-3040],                32767
     mov      qword[rbp-3048],                65535
@main.183.@xorshift.16.@shift_r.7.@hilo.1.enter:
     mov                  rcx,      qword[rbp-3040]
     mov      qword[rbp-3056],                  rcx
     shl      qword[rbp-3056],                   16
     mov                  rcx,      qword[rbp-3048]
     mov      qword[rbp-3064],                  rcx
     mov                  rax,      qword[rbp-3064]
      or                  rax,      qword[rbp-3056]
     mov      qword[rbp-3064],                  rax
     mov                  rcx,      qword[rbp-3064]
     mov      qword[rbp-3072],                  rcx
	jmp	@main.184.@xorshift.17.@shift_r.6.@hilo.2.exit
@main.184.@xorshift.17.@shift_r.6.@hilo.2.exit:
     mov                  rcx,      qword[rbp-3072]
     mov      qword[rbp-3080],                  rcx
     mov                  rcx,      qword[rbp-2992]
     mov      qword[rbp-3088],                  rcx
     mov                  rax,      qword[rbp-3088]
     and                  rax,      qword[rbp-3080]
     mov      qword[rbp-3088],                  rax
     mov                  rcx,      qword[rbp-3088]
     mov      qword[rbp-3096],                  rcx
	jmp	@main.185.@xorshift.12.@shift_r.2.exit
@main.185.@xorshift.12.@shift_r.2.exit:
     mov                  rcx,      qword[rbp-3096]
     mov      qword[rbp-3104],                  rcx
     mov                  rcx,      qword[rbp-2816]
     mov      qword[rbp-3112],                  rcx
     mov                  rax,      qword[rbp-3112]
     xor                  rax,      qword[rbp-3104]
     mov      qword[rbp-3112],                  rax
     mov                  rcx,      qword[rbp-3112]
     mov      qword[rbp-2816],                  rcx
     mov                  rcx,      qword[rbp-2816]
     mov      qword[rbp-3120],                  rcx
     mov      qword[rbp-3128],                    5
@main.186.@xorshift.19.@shift_l.1.enter:
     mov                  rcx,      qword[rbp-3120]
     mov      qword[rbp-3136],                  rcx
     mov                  rcx,      qword[rbp-3128]
     shl      qword[rbp-3136],                   cl
     mov      qword[rbp-3144],                32767
     mov      qword[rbp-3152],                65535
@main.187.@xorshift.20.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-3144]
     mov      qword[rbp-3160],                  rcx
     shl      qword[rbp-3160],                   16
     mov                  rcx,      qword[rbp-3152]
     mov      qword[rbp-3168],                  rcx
     mov                  rax,      qword[rbp-3168]
      or                  rax,      qword[rbp-3160]
     mov      qword[rbp-3168],                  rax
     mov                  rcx,      qword[rbp-3168]
     mov      qword[rbp-3176],                  rcx
	jmp	@main.188.@xorshift.21.@shift_l.4.@hilo.2.exit
@main.188.@xorshift.21.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-3176]
     mov      qword[rbp-3184],                  rcx
     mov                  rcx,      qword[rbp-3136]
     mov      qword[rbp-3192],                  rcx
     mov                  rax,      qword[rbp-3192]
     and                  rax,      qword[rbp-3184]
     mov      qword[rbp-3192],                  rax
     mov                  rcx,      qword[rbp-3192]
     mov      qword[rbp-3200],                  rcx
	jmp	@main.189.@xorshift.18.@shift_l.2.exit
@main.189.@xorshift.18.@shift_l.2.exit:
     mov                  rcx,      qword[rbp-3200]
     mov      qword[rbp-3208],                  rcx
     mov                  rcx,      qword[rbp-2816]
     mov      qword[rbp-3216],                  rcx
     mov                  rax,      qword[rbp-3216]
     xor                  rax,      qword[rbp-3208]
     mov      qword[rbp-3216],                  rax
     mov                  rcx,      qword[rbp-3216]
     mov      qword[rbp-2816],                  rcx
	jmp	@main.190.@xorshift.3.ForIter
@main.190.@xorshift.3.ForIter:
     mov                  rcx,      qword[rbp-2824]
     mov      qword[rbp-3224],                  rcx
     add      qword[rbp-2824],                    1
	jmp	@main.174.@xorshift.5.ForCon
@main.174.@xorshift.5.ForCon:
     mov      qword[rbp-3232],                  rdi
     mov                  rax,      qword[rbp-3232]
    imul                  rax,                   10
     mov      qword[rbp-3232],                  rax
     mov                  rcx,      qword[rbp-2824]
     cmp                  rcx,      qword[rbp-3232]
     mov                  rax,                    0
    setl                   al
     mov      qword[rbp-3240],                  rax
     mov                  rcx,      qword[rbp-3240]
     mov      qword[rbp-3248],                  rcx
     cmp      qword[rbp-3248],                    1
	je	@main.175.@xorshift.4.ForBody
	jmp	@main.191.@xorshift.6.ForExit
@main.191.@xorshift.6.ForExit:
     mov                  rdi,      qword[rbp-2816]
     xor                  rdi,            123456789
     mov                  rdi,                  rdi
	jmp	@main.172.@xorshift.2.exit
@main.172.@xorshift.2.exit:
     mov                  rdi,                  rdi
     mov                  r11,                  r11
     add                  r11,                  rdi
     mov                  r11,                  r11
     mov                  rsi,                  rsi
     xor                  rsi,      qword[rbp-1880]
     mov                  rdi,                  rsi
     mov                  rsi,                    1
@main.193.@xorshift.1.enter:
     mov                  rdi,                  rdi
     add                  rdi,                    1
     mov      qword[rbp-3256],                  rdi
     mov      qword[rbp-3264],                    0
	jmp	@main.194.@xorshift.5.ForCon
@main.195.@xorshift.4.ForBody:
     mov                  rdi,      qword[rbp-3256]
     mov      qword[rbp-3272],                   13
@main.196.@xorshift.9.@shift_l.1.enter:
     mov      qword[rbp-3280],                  rdi
     mov                  rcx,      qword[rbp-3272]
     shl      qword[rbp-3280],                   cl
     mov                  rdi,                32767
     mov      qword[rbp-3288],                65535
@main.197.@xorshift.10.@shift_l.5.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  rcx,      qword[rbp-3288]
     mov      qword[rbp-3296],                  rcx
     mov                  rax,      qword[rbp-3296]
      or                  rax,                  rdi
     mov      qword[rbp-3296],                  rax
     mov                  rdi,      qword[rbp-3296]
	jmp	@main.198.@xorshift.11.@shift_l.4.@hilo.2.exit
@main.198.@xorshift.11.@shift_l.4.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rcx,      qword[rbp-3280]
     mov      qword[rbp-3304],                  rcx
     mov                  rax,      qword[rbp-3304]
     and                  rax,                  rdi
     mov      qword[rbp-3304],                  rax
     mov                  rdi,      qword[rbp-3304]
	jmp	@main.199.@xorshift.8.@shift_l.2.exit
@main.199.@xorshift.8.@shift_l.2.exit:
     mov                  rdi,                  rdi
     mov                  rcx,      qword[rbp-3256]
     mov      qword[rbp-3312],                  rcx
     mov                  rax,      qword[rbp-3312]
     xor                  rax,                  rdi
     mov      qword[rbp-3312],                  rax
     mov                  rcx,      qword[rbp-3312]
     mov      qword[rbp-3256],                  rcx
     mov                  rdi,      qword[rbp-3256]
     mov      qword[rbp-3320],                   17
@main.200.@xorshift.13.@shift_r.1.enter:
     mov      qword[rbp-3328],                32767
     mov      qword[rbp-3336],                65535
@main.201.@xorshift.14.@shift_r.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-3328]
     mov      qword[rbp-3344],                  rcx
     shl      qword[rbp-3344],                   16
     mov                  rcx,      qword[rbp-3336]
     mov      qword[rbp-3352],                  rcx
     mov                  rax,      qword[rbp-3352]
      or                  rax,      qword[rbp-3344]
     mov      qword[rbp-3352],                  rax
     mov                  rcx,      qword[rbp-3352]
     mov      qword[rbp-3360],                  rcx
	jmp	@main.202.@xorshift.15.@shift_r.4.@hilo.2.exit
@main.202.@xorshift.15.@shift_r.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-3360]
     mov      qword[rbp-3368],                  rcx
     mov                  rcx,      qword[rbp-3368]
     mov      qword[rbp-3376],                  rcx
     mov                  rcx,      qword[rbp-3320]
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
     mov                  rdi,                  rdi
     mov                  rcx,      qword[rbp-3320]
     shr                  rdi,                   cl
     mov                  rcx,      qword[rbp-3368]
     mov      qword[rbp-3400],                  rcx
     mov                  rax,      qword[rbp-3400]
     and                  rax,                  rdi
     mov      qword[rbp-3400],                  rax
     mov                  rcx,      qword[rbp-3400]
     mov      qword[rbp-3368],                  rcx
     mov                  rdi,                32767
     mov      qword[rbp-3408],                65535
@main.203.@xorshift.16.@shift_r.7.@hilo.1.enter:
     mov                  rdi,                  rdi
     shl                  rdi,                   16
     mov                  rcx,      qword[rbp-3408]
     mov      qword[rbp-3416],                  rcx
     mov                  rax,      qword[rbp-3416]
      or                  rax,                  rdi
     mov      qword[rbp-3416],                  rax
     mov                  rdi,      qword[rbp-3416]
	jmp	@main.204.@xorshift.17.@shift_r.6.@hilo.2.exit
@main.204.@xorshift.17.@shift_r.6.@hilo.2.exit:
     mov                  rdi,                  rdi
     mov                  rcx,      qword[rbp-3368]
     mov      qword[rbp-3424],                  rcx
     mov                  rax,      qword[rbp-3424]
     and                  rax,                  rdi
     mov      qword[rbp-3424],                  rax
     mov                  rdi,      qword[rbp-3424]
	jmp	@main.205.@xorshift.12.@shift_r.2.exit
@main.205.@xorshift.12.@shift_r.2.exit:
     mov                  rdi,                  rdi
     mov                  rcx,      qword[rbp-3256]
     mov      qword[rbp-3432],                  rcx
     mov                  rax,      qword[rbp-3432]
     xor                  rax,                  rdi
     mov      qword[rbp-3432],                  rax
     mov                  rcx,      qword[rbp-3432]
     mov      qword[rbp-3256],                  rcx
     mov                  rdi,      qword[rbp-3256]
     mov      qword[rbp-3440],                    5
@main.206.@xorshift.19.@shift_l.1.enter:
     mov                  rdi,                  rdi
     mov                  rcx,      qword[rbp-3440]
     shl                  rdi,                   cl
     mov      qword[rbp-3448],                32767
     mov      qword[rbp-3456],                65535
@main.207.@xorshift.20.@shift_l.5.@hilo.1.enter:
     mov                  rcx,      qword[rbp-3448]
     mov      qword[rbp-3464],                  rcx
     shl      qword[rbp-3464],                   16
     mov                  rcx,      qword[rbp-3456]
     mov      qword[rbp-3472],                  rcx
     mov                  rax,      qword[rbp-3472]
      or                  rax,      qword[rbp-3464]
     mov      qword[rbp-3472],                  rax
     mov                  rcx,      qword[rbp-3472]
     mov      qword[rbp-3480],                  rcx
	jmp	@main.208.@xorshift.21.@shift_l.4.@hilo.2.exit
@main.208.@xorshift.21.@shift_l.4.@hilo.2.exit:
     mov                  rcx,      qword[rbp-3480]
     mov      qword[rbp-3488],                  rcx
     mov                  rdi,                  rdi
     and                  rdi,      qword[rbp-3488]
     mov                  rdi,                  rdi
	jmp	@main.209.@xorshift.18.@shift_l.2.exit
@main.209.@xorshift.18.@shift_l.2.exit:
     mov                  rdi,                  rdi
     mov                  rcx,      qword[rbp-3256]
     mov      qword[rbp-3496],                  rcx
     mov                  rax,      qword[rbp-3496]
     xor                  rax,                  rdi
     mov      qword[rbp-3496],                  rax
     mov                  rcx,      qword[rbp-3496]
     mov      qword[rbp-3256],                  rcx
	jmp	@main.210.@xorshift.3.ForIter
@main.210.@xorshift.3.ForIter:
     mov                  rdi,      qword[rbp-3264]
     add      qword[rbp-3264],                    1
	jmp	@main.194.@xorshift.5.ForCon
@main.194.@xorshift.5.ForCon:
     mov                  rdi,                  rsi
    imul                  rdi,                   10
     cmp      qword[rbp-3264],                  rdi
     mov                  rdi,                    0
    setl                  dil
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@main.195.@xorshift.4.ForBody
	jmp	@main.211.@xorshift.6.ForExit
@main.211.@xorshift.6.ForExit:
     mov                  rsi,      qword[rbp-3256]
     xor                  rsi,            123456789
     mov                  rsi,                  rsi
	jmp	@main.192.@xorshift.2.exit
@main.192.@xorshift.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,        qword[rbp-16]
     add                  rdi,                  rsi
     mov        qword[rbp-16],                  rdi
	jmp	@main.11.ForIter
@main.11.ForIter:
     mov                  rsi,        qword[rbp-40]
     add        qword[rbp-40],                    1
	jmp	@main.13.ForCon
@main.13.ForCon:
     cmp        qword[rbp-40],                   r9
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.12.ForBody
	jmp	@main.14.ForExit
@main.14.ForExit:
	jmp	@main.7.ForIter
@main.7.ForIter:
     mov                  rsi,        qword[rbp-32]
     add        qword[rbp-32],                    1
	jmp	@main.9.ForCon
@main.9.ForCon:
     cmp        qword[rbp-32],                   r8
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.8.ForBody
	jmp	@main.10.ForExit
@main.10.ForExit:
	jmp	@main.3.ForIter
@main.3.ForIter:
     mov                  rsi,        qword[rbp-24]
     add        qword[rbp-24],                    1
	jmp	@main.5.ForCon
@main.5.ForCon:
     cmp        qword[rbp-24],                  rbx
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.4.ForBody
	jmp	@main.6.ForExit
@main.6.ForExit:
     mov                  rbx,                  r15
@main.213.@toStringHex.1.enter:
     mov                  r13,         __const_str0
     mov                  r12,                   28
	jmp	@main.214.@toStringHex.5.ForCon
@main.215.@toStringHex.4.ForBody:
     mov                  rsi,                  rbx
     mov                  rcx,                  r12
     shr                  rsi,                   cl
     mov                  rsi,                  rsi
     and                  rsi,                   15
     mov                   r8,                  rsi
     cmp                   r8,                   10
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.216.@toStringHex.8.IfTrue
	jmp	@main.217.@toStringHex.7.IfFalse
@main.216.@toStringHex.8.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                   r8
     mov                  rdi,                  rsi
    push                  r10
    push                  rsi
    push                   r8
    push                  r11
call	int2chr
     pop                  r11
     pop                   r8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  r13
     mov                  rsi,                  rsi
    push                  r10
    push                  rsi
    push                   r8
    push                  r11
call	__string_connect__
     pop                  r11
     pop                   r8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  r13,                  rsi
	jmp	@main.218.@toStringHex.9.IfExit
@main.217.@toStringHex.7.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                   r8
     mov                  rsi,                  rsi
     sub                  rsi,                   10
     mov                  rdi,                  rsi
    push                  r10
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	int2chr
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  r13
     mov                  rsi,                  rsi
    push                  r10
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  r13,                  rsi
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
     mov                  rsi,                  r13
	jmp	@main.212.@toStringHex.2.exit
@main.212.@toStringHex.2.exit:
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  r10
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
call	print
     pop                  r11
     pop                  r10
     mov                  rdi,                  r10
    push                  rsi
    push                  r11
call	toStringHex
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
    push                  r11
call	__string_connect__
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r11
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                  r11
     mov                  rdi,                  r11
    push                  rsi
     sub                  rsp,                    8
call	toStringHex
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
call	print
     mov                  rdi,        qword[rbp-16]
    push                  rsi
     sub                  rsp,                    8
call	toStringHex
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,         __const_str1
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
call	print
     mov                  rdi,         __const_str0
call	println
     mov                  rax,                    0
	jmp	@main.2.exit
@main.2.exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                 3496
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
     mov                  r13,         __const_str0
     mov                   r8,                   28
	jmp	@toStringHex.5.ForCon
@toStringHex.4.ForBody:
     mov                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     mov                  rsi,                  rsi
     and                  rsi,                   15
     mov                  r12,                  rsi
     cmp                  r12,                   10
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@toStringHex.8.IfTrue
	jmp	@toStringHex.7.IfFalse
@toStringHex.8.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                  r12
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
     mov                   r9,                  rdi
     sub                   r9,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                   r9
     mov                  rdx,                   r9
    push                  rsi
    push                   r8
call	__substring__
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
	jmp	@toStringHex.11.@int2chr.2.exit
	jmp	@toStringHex.16.@int2chr.5.IfExit
@toStringHex.15.@int2chr.3.IfFalse:
@toStringHex.16.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
	jmp	@toStringHex.11.@int2chr.2.exit
@toStringHex.11.@int2chr.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  r13
     mov                  rsi,                  rsi
    push                  rsi
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r13,                  rsi
	jmp	@toStringHex.9.IfExit
@toStringHex.7.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                  r12
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
     mov                  r12,                  rdi
     sub                  r12,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  r12
     mov                  rdx,                  r12
    push                  rsi
    push                   r8
call	__substring__
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
	jmp	@toStringHex.17.@int2chr.2.exit
	jmp	@toStringHex.22.@int2chr.5.IfExit
@toStringHex.21.@int2chr.3.IfFalse:
@toStringHex.22.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
	jmp	@toStringHex.17.@int2chr.2.exit
@toStringHex.17.@int2chr.2.exit:
     mov                  rsi,                  rsi
     mov                  rdi,                  r13
     mov                  rsi,                  rsi
    push                  rsi
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r13,                  rsi
	jmp	@toStringHex.9.IfExit
@toStringHex.9.IfExit:
	jmp	@toStringHex.3.ForIter
@toStringHex.3.ForIter:
     mov                  rsi,                   r8
     sub                  rsi,                    4
     mov                   r8,                  rsi
	jmp	@toStringHex.5.ForCon
@toStringHex.5.ForCon:
     cmp                   r8,                    0
     mov                  rsi,                    0
   setge                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@toStringHex.4.ForBody
	jmp	@toStringHex.6.ForExit
@toStringHex.6.ForExit:
     mov                  rax,                  r13
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



