  global                 main
  extern	malloc


 section                .text
shift_l:
    push                  rbp
     mov                  rbp,                  rsp
@shift_l.1.enter:
     mov                   r9,                  rdi
     mov                  rcx,                  rsi
     shl                   r9,                   cl
     mov                  rsi,                32767
     mov                  rdi,                65535
     mov                   r8,                  rsi
     shl                   r8,                   16
     mov                  rsi,                  rdi
      or                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     and                  rsi,                  rdi
     mov                  rax,                  rsi
     pop                  rbp
     ret
hilo:
    push                  rbp
     mov                  rbp,                  rsp
@hilo.1.enter:
     shl                  rdi,                   16
      or                  rsi,                  rdi
     mov                  rax,                  rsi
     pop                  rbp
     ret
int2chr:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
    push                  rbx
@int2chr.1.enter:
     mov                  rbx,                  rdi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@int2chr.6.cmp_and
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@int2chr.4.IfTrue
	jmp	@int2chr.3.IfFalse
@int2chr.4.IfTrue:
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
     mov                   r8,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,                  rdx
     and                  rsi,                   31
     mov                  r12,                  rsi
     mov                  rsi,                   r8
     mov                  r11,                  rdi
     add                  rsi,                    1
     mov                  r13,                  rsi
     mov                  rbx,                    0
	jmp	@getnumber.7.@xorshift.6.ForCon
@getnumber.8.@xorshift.5.ForBody:
     mov                  rsi,                  r13
     mov                  rdi,                   13
     mov                   r8,                  rsi
     mov                  rcx,                  rdi
     shl                   r8,                   cl
     mov                  rdi,                32767
     mov                  rsi,                65535
     shl                  rdi,                   16
      or                  rsi,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,                   r8
     and                  rsi,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     xor                  rsi,                  rdi
     mov                  r13,                  rsi
     mov                   r8,                  r13
     mov                   r9,                   17
     mov                  rdi,                32767
     mov                  rsi,                65535
     shl                  rdi,                   16
      or                  rsi,                  rdi
     mov                  rcx,                   r9
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                  r10,                  rsi
     mov                  rdi,                   r8
     mov                  rcx,                   r9
     shr                  rdi,                   cl
     mov                  rsi,                  r10
     and                  rsi,                  rdi
     mov                  r10,                  rsi
     mov                  rdi,                32767
     mov                  rsi,                65535
     shl                  rdi,                   16
      or                  rsi,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,                  r10
     and                  rsi,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     xor                  rsi,                  rdi
     mov                  r13,                  rsi
     mov                  rsi,                  r13
     mov                  rdi,                    5
     mov                   r8,                  rsi
     mov                  rcx,                  rdi
     shl                   r8,                   cl
     mov                  rdi,                32767
     mov                  rsi,                65535
     shl                  rdi,                   16
      or                  rsi,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,                   r8
     and                  rsi,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
     xor                  rsi,                  rdi
     mov                  r13,                  rsi
     add                  rbx,                    1
@getnumber.7.@xorshift.6.ForCon:
     mov                  rsi,                  r11
    imul                  rsi,                   10
     cmp                  rbx,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@getnumber.8.@xorshift.5.ForBody
     mov                  rsi,                  r13
     xor                  rsi,            123456789
     mov                   r9,                  rsi
     mov                  rsi,                   r9
     mov                  rdi,                  r12
     mov                   r8,                  rsi
     mov                  rcx,                  rdi
     shl                   r8,                   cl
     mov                  rdi,                32767
     mov                  rsi,                65535
     shl                  rdi,                   16
      or                  rsi,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,                   r8
     and                  rsi,                  rdi
     mov                  r11,                  rsi
     mov                  rsi,                   32
     sub                  rsi,                  r12
     mov                  r10,                  rsi
     mov                  rsi,                32767
     mov                  rdi,                65535
     mov                   r8,                  rsi
     shl                   r8,                   16
     mov                  rsi,                  rdi
      or                  rsi,                   r8
     mov                  rcx,                  r10
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                  rbx,                  rsi
     mov                  rdi,                   r9
     mov                  rcx,                  r10
     shr                  rdi,                   cl
     mov                  rsi,                  rbx
     and                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rsi,                32767
     mov                  rdi,                65535
     mov                   r8,                  rsi
     shl                   r8,                   16
     mov                  rsi,                  rdi
      or                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,                  r11
      or                  rsi,                  rdi
     mov                  rax,                  rsi
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
     mov                   r9,                  rdi
     mov                  r10,                  rsi
     mov                  rsi,                32767
     mov                  rdi,                65535
     mov                   r8,                  rsi
     shl                   r8,                   16
     mov                  rsi,                  rdi
      or                  rsi,                   r8
     mov                  rcx,                  r10
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                  r11,                  rsi
     mov                  rdi,                   r9
     mov                  rcx,                  r10
     shr                  rdi,                   cl
     mov                  rsi,                  r11
     and                  rsi,                  rdi
     mov                  r11,                  rsi
     mov                  rsi,                32767
     mov                  rdi,                65535
     mov                   r8,                  rsi
     shl                   r8,                   16
     mov                  rsi,                  rdi
      or                  rsi,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,                  r11
     and                  rsi,                  rdi
     mov                  rax,                  rsi
     pop                  rbp
     ret
xorshift:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  rbx
@xorshift.1.enter:
     mov                  r11,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                    1
     mov                  r12,                  rsi
     mov                  rbx,                    0
	jmp	@xorshift.6.ForCon
@xorshift.5.ForBody:
     mov                  rsi,                  r12
     mov                  rdi,                   13
     mov                   r8,                  rsi
     mov                  rcx,                  rdi
     shl                   r8,                   cl
     mov                  rdi,                32767
     mov                  rsi,                65535
     shl                  rdi,                   16
      or                  rsi,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,                   r8
     and                  rsi,                  rdi
     mov                  rdi,                  r12
     xor                  rdi,                  rsi
     mov                  r12,                  rdi
     mov                   r8,                  r12
     mov                   r9,                   17
     mov                  rdi,                32767
     mov                  rsi,                65535
     shl                  rdi,                   16
      or                  rsi,                  rdi
     mov                  rcx,                   r9
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                  r10,                  rsi
     mov                  rdi,                   r8
     mov                  rcx,                   r9
     shr                  rdi,                   cl
     mov                  rsi,                  r10
     and                  rsi,                  rdi
     mov                  r10,                  rsi
     mov                  rdi,                32767
     mov                  rsi,                65535
     shl                  rdi,                   16
      or                  rsi,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,                  r10
     and                  rsi,                  rdi
     mov                  rdi,                  r12
     xor                  rdi,                  rsi
     mov                  r12,                  rdi
     mov                  rsi,                  r12
     mov                  rdi,                    5
     mov                   r8,                  rsi
     mov                  rcx,                  rdi
     shl                   r8,                   cl
     mov                  rdi,                32767
     mov                  rsi,                65535
     shl                  rdi,                   16
      or                  rsi,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,                   r8
     and                  rsi,                  rdi
     mov                  rdi,                  r12
     xor                  rdi,                  rsi
     mov                  r12,                  rdi
     add                  rbx,                    1
@xorshift.6.ForCon:
     mov                  rsi,                  r11
    imul                  rsi,                   10
     cmp                  rbx,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@xorshift.5.ForBody
     mov                  rsi,                  r12
     xor                  rsi,            123456789
     mov                  rax,                  rsi
     pop                  rbx
     pop                  r12
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                  136
    push                  rbx
    push                  r12
    push                  r14
    push                  r13
    push                  r15
@main.1.enter:
    push                  rsi
     sub                  rsp,                    8
call	getInt
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov         qword[rbp-8],                  rsi
    push                  rsi
     sub                  rsp,                    8
call	getInt
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r10,                  rsi
    push                  rsi
    push                  r10
call	getInt
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov        qword[rbp-16],                  rsi
    push                  rsi
    push                  r10
call	getInt
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r11,                  rsi
    push                  r11
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	getInt
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov        qword[rbp-24],                  rsi
    push                  rsi
    push                  r11
    push                  r10
     sub                  rsp,                    8
call	getInt
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov        qword[rbp-32],                  rsi
     mov        qword[rbp-40],                   30
     mov        qword[rbp-48],                    0
     mov        qword[rbp-56],                    0
     mov        qword[rbp-64],                    0
     mov        qword[rbp-72],                    0
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-80],                  rcx
	jmp	@main.6.ForCon
@main.5.ForBody:
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-88],                  rcx
	jmp	@main.11.ForCon
@main.10.ForBody:
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-96],                  rcx
	jmp	@main.16.ForCon
@main.15.ForBody:
     mov                  rsi,         qword[rbp-8]
     mov                  rbx,        qword[rbp-40]
     mov                  rdi,        qword[rbp-96]
     and                  rdi,                   31
     mov                  r14,                  rdi
     mov                  r13,                  rbx
     add                  rsi,                    1
     mov                  r15,                  rsi
     mov                   r9,                    0
	jmp	@main.21.@getnumber.7.@xorshift.6.ForCon
@main.22.@getnumber.8.@xorshift.5.ForBody:
     mov                  rsi,                  r15
     mov                  rbx,                   13
     mov                  rdi,                  rsi
     mov                  rcx,                  rbx
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r15
     xor                  rsi,                  rbx
     mov                  r15,                  rsi
     mov                  rdi,                  r15
     mov                  r12,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                  r12
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rbx,                  rdi
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                   r8
     and                  rsi,                  rbx
     mov                   r8,                  rsi
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                   r8
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r15
     xor                  rsi,                  rbx
     mov                  r15,                  rsi
     mov                  rsi,                  r15
     mov                  rbx,                    5
     mov                  rdi,                  rsi
     mov                  rcx,                  rbx
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r15
     xor                  rsi,                  rbx
     mov                  r15,                  rsi
     add                   r9,                    1
@main.21.@getnumber.7.@xorshift.6.ForCon:
     mov                  rsi,                  r13
    imul                  rsi,                   10
     cmp                   r9,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.22.@getnumber.8.@xorshift.5.ForBody
     mov                  rsi,                  r15
     xor                  rsi,            123456789
     mov                  r12,                  rsi
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  rdi,                  rbx
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  r13,                  rsi
     mov                  rsi,                   32
     sub                  rsi,                  r14
     mov                   r8,                  rsi
     mov                  rsi,                32767
     mov                  rbx,                65535
     mov                  rdi,                  rsi
     shl                  rdi,                   16
     mov                  rsi,                  rbx
      or                  rsi,                  rdi
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rbx,                  r12
     mov                  rcx,                   r8
     shr                  rbx,                   cl
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                   r9,                  rsi
     mov                  rsi,                32767
     mov                  rbx,                65535
     mov                  rdi,                  rsi
     shl                  rdi,                   16
     mov                  rsi,                  rbx
      or                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r13
      or                  rsi,                  rbx
     mov       qword[rbp-104],                  rsi
     mov                  rsi,        qword[rbp-80]
     mov                  rbx,        qword[rbp-40]
     mov                  rdi,        qword[rbp-96]
     and                  rdi,                   31
     mov                  r14,                  rdi
     mov                  r13,                  rbx
     add                  rsi,                    1
     mov                  r15,                  rsi
     mov                   r9,                    0
	jmp	@main.25.@getnumber.7.@xorshift.6.ForCon
@main.26.@getnumber.8.@xorshift.5.ForBody:
     mov                  rsi,                  r15
     mov                  rbx,                   13
     mov                  rdi,                  rsi
     mov                  rcx,                  rbx
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r15
     xor                  rsi,                  rbx
     mov                  r15,                  rsi
     mov                  rdi,                  r15
     mov                  r12,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                  r12
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rbx,                  rdi
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                   r8
     and                  rsi,                  rbx
     mov                   r8,                  rsi
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                   r8
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r15
     xor                  rsi,                  rbx
     mov                  r15,                  rsi
     mov                  rsi,                  r15
     mov                  rbx,                    5
     mov                  rdi,                  rsi
     mov                  rcx,                  rbx
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r15
     xor                  rsi,                  rbx
     mov                  r15,                  rsi
     add                   r9,                    1
@main.25.@getnumber.7.@xorshift.6.ForCon:
     mov                  rsi,                  r13
    imul                  rsi,                   10
     cmp                   r9,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.26.@getnumber.8.@xorshift.5.ForBody
     mov                  rsi,                  r15
     xor                  rsi,            123456789
     mov                  r12,                  rsi
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  rdi,                  rbx
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  r13,                  rsi
     mov                  rsi,                   32
     sub                  rsi,                  r14
     mov                   r8,                  rsi
     mov                  rsi,                32767
     mov                  rbx,                65535
     mov                  rdi,                  rsi
     shl                  rdi,                   16
     mov                  rsi,                  rbx
      or                  rsi,                  rdi
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rbx,                  r12
     mov                  rcx,                   r8
     shr                  rbx,                   cl
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                   r9,                  rsi
     mov                  rsi,                32767
     mov                  rbx,                65535
     mov                  rdi,                  rsi
     shl                  rdi,                   16
     mov                  rsi,                  rbx
      or                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r13
      or                  rsi,                  rbx
     mov       qword[rbp-112],                  rsi
     mov                  rsi,        qword[rbp-88]
     mov                  rbx,        qword[rbp-40]
     mov                  rdi,        qword[rbp-96]
     and                  rdi,                   31
     mov                  r14,                  rdi
     mov                  r13,                  rbx
     add                  rsi,                    1
     mov                  r15,                  rsi
     mov                   r9,                    0
	jmp	@main.29.@getnumber.7.@xorshift.6.ForCon
@main.30.@getnumber.8.@xorshift.5.ForBody:
     mov                  rsi,                  r15
     mov                  rbx,                   13
     mov                  rdi,                  rsi
     mov                  rcx,                  rbx
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r15
     xor                  rsi,                  rbx
     mov                  r15,                  rsi
     mov                  rdi,                  r15
     mov                  r12,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                  r12
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rbx,                  rdi
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                   r8
     and                  rsi,                  rbx
     mov                   r8,                  rsi
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                   r8
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r15
     xor                  rsi,                  rbx
     mov                  r15,                  rsi
     mov                  rsi,                  r15
     mov                  rbx,                    5
     mov                  rdi,                  rsi
     mov                  rcx,                  rbx
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r15
     xor                  rsi,                  rbx
     mov                  r15,                  rsi
     add                   r9,                    1
@main.29.@getnumber.7.@xorshift.6.ForCon:
     mov                  rsi,                  r13
    imul                  rsi,                   10
     cmp                   r9,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.30.@getnumber.8.@xorshift.5.ForBody
     mov                  rsi,                  r15
     xor                  rsi,            123456789
     mov                  r12,                  rsi
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  rdi,                  rbx
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  r13,                  rsi
     mov                  rsi,                   32
     sub                  rsi,                  r14
     mov                   r8,                  rsi
     mov                  rsi,                32767
     mov                  rbx,                65535
     mov                  rdi,                  rsi
     shl                  rdi,                   16
     mov                  rsi,                  rbx
      or                  rsi,                  rdi
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rbx,                  r12
     mov                  rcx,                   r8
     shr                  rbx,                   cl
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                   r9,                  rsi
     mov                  rsi,                32767
     mov                  rbx,                65535
     mov                  rdi,                  rsi
     shl                  rdi,                   16
     mov                  rsi,                  rbx
      or                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r13
      or                  rsi,                  rbx
     mov       qword[rbp-120],                  rsi
     mov                  rsi,        qword[rbp-80]
     xor                  rsi,        qword[rbp-88]
     mov                  rbx,        qword[rbp-40]
     mov                  rdi,        qword[rbp-96]
     and                  rdi,                   31
     mov                  r14,                  rdi
     mov                  r13,                  rbx
     add                  rsi,                    1
     mov                  r15,                  rsi
     mov                   r9,                    0
	jmp	@main.33.@getnumber.7.@xorshift.6.ForCon
@main.34.@getnumber.8.@xorshift.5.ForBody:
     mov                  rsi,                  r15
     mov                  rbx,                   13
     mov                  rdi,                  rsi
     mov                  rcx,                  rbx
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r15
     xor                  rsi,                  rbx
     mov                  r15,                  rsi
     mov                  rdi,                  r15
     mov                  r12,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                  r12
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rbx,                  rdi
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                   r8
     and                  rsi,                  rbx
     mov                   r8,                  rsi
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                   r8
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r15
     xor                  rsi,                  rbx
     mov                  r15,                  rsi
     mov                  rsi,                  r15
     mov                  rbx,                    5
     mov                  rdi,                  rsi
     mov                  rcx,                  rbx
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r15
     xor                  rsi,                  rbx
     mov                  r15,                  rsi
     add                   r9,                    1
@main.33.@getnumber.7.@xorshift.6.ForCon:
     mov                  rsi,                  r13
    imul                  rsi,                   10
     cmp                   r9,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.34.@getnumber.8.@xorshift.5.ForBody
     mov                  rsi,                  r15
     xor                  rsi,            123456789
     mov                  r12,                  rsi
     mov                  rbx,                  r12
     mov                  rsi,                  r14
     mov                  rdi,                  rbx
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  r13,                  rsi
     mov                  rsi,                   32
     sub                  rsi,                  r14
     mov                   r8,                  rsi
     mov                  rsi,                32767
     mov                  rbx,                65535
     mov                  rdi,                  rsi
     shl                  rdi,                   16
     mov                  rsi,                  rbx
      or                  rsi,                  rdi
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rbx,                  r12
     mov                  rcx,                   r8
     shr                  rbx,                   cl
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                   r9,                  rsi
     mov                  rsi,                32767
     mov                  rbx,                65535
     mov                  rdi,                  rsi
     shl                  rdi,                   16
     mov                  rsi,                  rbx
      or                  rsi,                  rdi
     mov                  rbx,                  rsi
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r13
      or                  rsi,                  rbx
     mov       qword[rbp-128],                  rsi
     mov                  rsi,        qword[rbp-96]
     mov                  r12,                    1
     add                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r13,                    0
	jmp	@main.37.@xorshift.6.ForCon
@main.38.@xorshift.5.ForBody:
     mov                  rbx,                  r14
     mov                  rsi,                   13
     mov                  rdi,                  rbx
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r14
     xor                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rdi,                  r14
     mov                   r8,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rbx,                  rdi
     mov                  rcx,                   r8
     shr                  rbx,                   cl
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                   r9,                  rsi
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r14
     xor                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rbx,                  r14
     mov                  rsi,                    5
     mov                  rdi,                  rbx
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r14
     xor                  rsi,                  rbx
     mov                  r14,                  rsi
     add                  r13,                    1
@main.37.@xorshift.6.ForCon:
     mov                  rsi,                  r12
    imul                  rsi,                   10
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.38.@xorshift.5.ForBody
     mov                  rsi,                  r14
     xor                  rsi,            123456789
     mov                  r15,                  rsi
     mov                  rsi,        qword[rbp-88]
     mov                  r12,                    1
     add                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r13,                    0
	jmp	@main.41.@xorshift.6.ForCon
@main.42.@xorshift.5.ForBody:
     mov                  rbx,                  r14
     mov                  rsi,                   13
     mov                  rdi,                  rbx
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r14
     xor                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rdi,                  r14
     mov                   r8,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rbx,                  rdi
     mov                  rcx,                   r8
     shr                  rbx,                   cl
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                   r9,                  rsi
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r14
     xor                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rbx,                  r14
     mov                  rsi,                    5
     mov                  rdi,                  rbx
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r14
     xor                  rsi,                  rbx
     mov                  r14,                  rsi
     add                  r13,                    1
@main.41.@xorshift.6.ForCon:
     mov                  rsi,                  r12
    imul                  rsi,                   10
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.42.@xorshift.5.ForBody
     mov                  rsi,                  r14
     xor                  rsi,            123456789
     xor                  r15,                  rsi
     mov                  rsi,        qword[rbp-80]
     mov                  r12,                    1
     add                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r13,                    0
	jmp	@main.45.@xorshift.6.ForCon
@main.46.@xorshift.5.ForBody:
     mov                  rbx,                  r14
     mov                  rsi,                   13
     mov                  rdi,                  rbx
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r14
     xor                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rdi,                  r14
     mov                   r8,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rbx,                  rdi
     mov                  rcx,                   r8
     shr                  rbx,                   cl
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                   r9,                  rsi
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r14
     xor                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rbx,                  r14
     mov                  rsi,                    5
     mov                  rdi,                  rbx
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r14
     xor                  rsi,                  rbx
     mov                  r14,                  rsi
     add                  r13,                    1
@main.45.@xorshift.6.ForCon:
     mov                  rsi,                  r12
    imul                  rsi,                   10
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.46.@xorshift.5.ForBody
     mov                  rsi,                  r14
     xor                  rsi,            123456789
     mov                  rbx,                  r15
     xor                  rbx,                  rsi
     mov                  r15,                  rbx
     mov                  rsi,       qword[rbp-104]
     xor                  rsi,                  r15
     mov                  r12,                    1
     add                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r13,                    0
	jmp	@main.49.@xorshift.6.ForCon
@main.50.@xorshift.5.ForBody:
     mov                  rbx,                  r14
     mov                  rsi,                   13
     mov                  rdi,                  rbx
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r14
     xor                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rdi,                  r14
     mov                   r8,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rbx,                  rdi
     mov                  rcx,                   r8
     shr                  rbx,                   cl
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                   r9,                  rsi
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r14
     xor                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rbx,                  r14
     mov                  rsi,                    5
     mov                  rdi,                  rbx
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r14
     xor                  rsi,                  rbx
     mov                  r14,                  rsi
     add                  r13,                    1
@main.49.@xorshift.6.ForCon:
     mov                  rsi,                  r12
    imul                  rsi,                   10
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.50.@xorshift.5.ForBody
     mov                  rsi,                  r14
     xor                  rsi,            123456789
     mov                  rbx,        qword[rbp-48]
     add                  rbx,                  rsi
     mov        qword[rbp-48],                  rbx
     mov                  rsi,       qword[rbp-112]
     xor                  rsi,                  r15
     mov                  r12,                    1
     add                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r13,                    0
	jmp	@main.53.@xorshift.6.ForCon
@main.54.@xorshift.5.ForBody:
     mov                  rbx,                  r14
     mov                  rsi,                   13
     mov                  rdi,                  rbx
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r14
     xor                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rdi,                  r14
     mov                   r8,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rbx,                  rdi
     mov                  rcx,                   r8
     shr                  rbx,                   cl
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                   r9,                  rsi
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r14
     xor                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rbx,                  r14
     mov                  rsi,                    5
     mov                  rdi,                  rbx
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r14
     xor                  rsi,                  rbx
     mov                  r14,                  rsi
     add                  r13,                    1
@main.53.@xorshift.6.ForCon:
     mov                  rsi,                  r12
    imul                  rsi,                   10
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.54.@xorshift.5.ForBody
     mov                  rsi,                  r14
     xor                  rsi,            123456789
     mov                  rbx,        qword[rbp-56]
     add                  rbx,                  rsi
     mov        qword[rbp-56],                  rbx
     mov                  rsi,       qword[rbp-120]
     xor                  rsi,                  r15
     mov                  r12,                    1
     add                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r13,                    0
	jmp	@main.57.@xorshift.6.ForCon
@main.58.@xorshift.5.ForBody:
     mov                  rbx,                  r14
     mov                  rsi,                   13
     mov                  rdi,                  rbx
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r14
     xor                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rdi,                  r14
     mov                   r8,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rbx,                  rdi
     mov                  rcx,                   r8
     shr                  rbx,                   cl
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                   r9,                  rsi
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r14
     xor                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rbx,                  r14
     mov                  rsi,                    5
     mov                  rdi,                  rbx
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r14
     xor                  rsi,                  rbx
     mov                  r14,                  rsi
     add                  r13,                    1
@main.57.@xorshift.6.ForCon:
     mov                  rsi,                  r12
    imul                  rsi,                   10
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.58.@xorshift.5.ForBody
     mov                  rsi,                  r14
     xor                  rsi,            123456789
     mov                  rbx,        qword[rbp-64]
     add                  rbx,                  rsi
     mov        qword[rbp-64],                  rbx
     mov                  rsi,       qword[rbp-128]
     xor                  rsi,                  r15
     mov                  r12,                    1
     add                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r13,                    0
	jmp	@main.61.@xorshift.6.ForCon
@main.62.@xorshift.5.ForBody:
     mov                  rbx,                  r14
     mov                  rsi,                   13
     mov                  rdi,                  rbx
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r14
     xor                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rdi,                  r14
     mov                   r8,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rbx,                  rdi
     mov                  rcx,                   r8
     shr                  rbx,                   cl
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                   r9,                  rsi
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r14
     xor                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rbx,                  r14
     mov                  rsi,                    5
     mov                  rdi,                  rbx
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r14
     xor                  rsi,                  rbx
     mov                  r14,                  rsi
     add                  r13,                    1
@main.61.@xorshift.6.ForCon:
     mov                  rsi,                  r12
    imul                  rsi,                   10
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.62.@xorshift.5.ForBody
     mov                  rsi,                  r14
     xor                  rsi,            123456789
     mov                  rbx,        qword[rbp-72]
     add                  rbx,                  rsi
     mov        qword[rbp-72],                  rbx
     add        qword[rbp-96],                    1
@main.16.ForCon:
     mov                  rcx,        qword[rbp-96]
     cmp                  rcx,        qword[rbp-32]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.15.ForBody
     add        qword[rbp-88],                    1
@main.11.ForCon:
     cmp        qword[rbp-88],                  r11
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.10.ForBody
     add        qword[rbp-80],                    1
@main.6.ForCon:
     cmp        qword[rbp-80],                  r10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.5.ForBody
     mov                  r12,        qword[rbp-48]
     mov                   r9,         __const_str0
     mov                  r13,                   28
	jmp	@main.66.@toStringHex.6.ForCon
@main.67.@toStringHex.5.ForBody:
     mov                  rsi,                  r12
     mov                  rcx,                  r13
     shr                  rsi,                   cl
     and                  rsi,                   15
     mov                   r8,                  rsi
     cmp                   r8,                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.68.@toStringHex.9.IfTrue
	jmp	@main.69.@toStringHex.8.IfFalse
@main.68.@toStringHex.9.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                   r8
     mov                  rbx,                  rsi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.145.@int2chr.6.cmp_and
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.145.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.146.@int2chr.4.IfTrue
	jmp	@main.147.@int2chr.3.IfFalse
@main.146.@int2chr.4.IfTrue:
     sub                  rbx,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  rbx
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
	jmp	@main.143.@int2chr.2.exit
	jmp	@main.148.@int2chr.5.IfExit
@main.147.@int2chr.3.IfFalse:
@main.148.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@main.143.@int2chr.2.exit:
     mov                  rdi,                   r9
    push                  rsi
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r9,                  rsi
	jmp	@main.70.@toStringHex.10.IfExit
@main.69.@toStringHex.8.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                   r8
     sub                  rsi,                   10
     mov                  rbx,                  rsi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.151.@int2chr.6.cmp_and
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.151.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.152.@int2chr.4.IfTrue
	jmp	@main.153.@int2chr.3.IfFalse
@main.152.@int2chr.4.IfTrue:
     sub                  rbx,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  rbx
    push                   r9
    push                  rsi
call	__substring__
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
	jmp	@main.149.@int2chr.2.exit
	jmp	@main.154.@int2chr.5.IfExit
@main.153.@int2chr.3.IfFalse:
@main.154.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@main.149.@int2chr.2.exit:
     mov                  rdi,                   r9
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r9,                  rsi
@main.70.@toStringHex.10.IfExit:
     mov                  rsi,                  r13
     sub                  rsi,                    4
     mov                  r13,                  rsi
@main.66.@toStringHex.6.ForCon:
     cmp                  r13,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
	je	@main.67.@toStringHex.5.ForBody
     mov                  rsi,                   r9
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
     mov                  rbx,        qword[rbp-56]
     mov                  r13,         __const_str0
     mov                   r8,                   28
	jmp	@main.76.@toStringHex.6.ForCon
@main.77.@toStringHex.5.ForBody:
     mov                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     and                  rsi,                   15
     mov                  r12,                  rsi
     cmp                  r12,                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.78.@toStringHex.9.IfTrue
	jmp	@main.79.@toStringHex.8.IfFalse
@main.78.@toStringHex.9.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    push                  rsi
    push                   r8
call	int2chr
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  r13
    push                  rsi
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r13,                  rsi
	jmp	@main.80.@toStringHex.10.IfExit
@main.79.@toStringHex.8.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                  r12
     sub                  rsi,                   10
     mov                  rdi,                  rsi
    push                  rsi
    push                   r8
call	int2chr
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  r13
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  r13,                  rsi
@main.80.@toStringHex.10.IfExit:
     mov                  rsi,                   r8
     sub                  rsi,                    4
     mov                   r8,                  rsi
@main.76.@toStringHex.6.ForCon:
     cmp                   r8,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
	je	@main.77.@toStringHex.5.ForBody
     mov                  rsi,                  r13
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
     mov                  rbx,        qword[rbp-64]
     mov                  r13,         __const_str0
     mov                   r8,                   28
	jmp	@main.86.@toStringHex.6.ForCon
@main.87.@toStringHex.5.ForBody:
     mov                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     and                  rsi,                   15
     mov                  r12,                  rsi
     cmp                  r12,                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.88.@toStringHex.9.IfTrue
	jmp	@main.89.@toStringHex.8.IfFalse
@main.88.@toStringHex.9.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    push                   r8
    push                  rsi
call	int2chr
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  r13
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  r13,                  rsi
	jmp	@main.90.@toStringHex.10.IfExit
@main.89.@toStringHex.8.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                  r12
     sub                  rsi,                   10
     mov                  rdi,                  rsi
    push                   r8
    push                  rsi
call	int2chr
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  r13
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  r13,                  rsi
@main.90.@toStringHex.10.IfExit:
     mov                  rsi,                   r8
     sub                  rsi,                    4
     mov                   r8,                  rsi
@main.86.@toStringHex.6.ForCon:
     cmp                   r8,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
	je	@main.87.@toStringHex.5.ForBody
     mov                  rsi,                  r13
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
     mov                  rbx,        qword[rbp-72]
     mov                  r13,         __const_str0
     mov                   r8,                   28
	jmp	@main.96.@toStringHex.6.ForCon
@main.97.@toStringHex.5.ForBody:
     mov                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     and                  rsi,                   15
     mov                  r12,                  rsi
     cmp                  r12,                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.98.@toStringHex.9.IfTrue
	jmp	@main.99.@toStringHex.8.IfFalse
@main.98.@toStringHex.9.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    push                  rsi
    push                   r8
call	int2chr
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  r13
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  r13,                  rsi
	jmp	@main.100.@toStringHex.10.IfExit
@main.99.@toStringHex.8.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                  r12
     sub                  rsi,                   10
     mov                  rdi,                  rsi
    push                   r8
    push                  rsi
call	int2chr
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  r13
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  r13,                  rsi
@main.100.@toStringHex.10.IfExit:
     mov                  rsi,                   r8
     sub                  rsi,                    4
     mov                   r8,                  rsi
@main.96.@toStringHex.6.ForCon:
     cmp                   r8,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
	je	@main.97.@toStringHex.5.ForBody
     mov                  rsi,                  r13
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
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     pop                  rbx
     add                  rsp,                  136
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
     mov                  r12,                  rdi
     mov                   r9,         __const_str0
     mov                  r13,                   28
	jmp	@toStringHex.6.ForCon
@toStringHex.5.ForBody:
     mov                  rsi,                  r12
     mov                  rcx,                  r13
     shr                  rsi,                   cl
     and                  rsi,                   15
     mov                   r8,                  rsi
     cmp                   r8,                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@toStringHex.9.IfTrue
	jmp	@toStringHex.8.IfFalse
@toStringHex.9.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                   r8
     mov                  rbx,                  rsi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@toStringHex.14.@int2chr.6.cmp_and
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@toStringHex.14.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@toStringHex.15.@int2chr.4.IfTrue
	jmp	@toStringHex.16.@int2chr.3.IfFalse
@toStringHex.15.@int2chr.4.IfTrue:
     sub                  rbx,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  rbx
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
	jmp	@toStringHex.12.@int2chr.2.exit
	jmp	@toStringHex.17.@int2chr.5.IfExit
@toStringHex.16.@int2chr.3.IfFalse:
@toStringHex.17.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@toStringHex.12.@int2chr.2.exit:
     mov                  rdi,                   r9
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                   r9,                  rsi
	jmp	@toStringHex.10.IfExit
@toStringHex.8.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                   r8
     sub                  rsi,                   10
     mov                  rbx,                  rsi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@toStringHex.20.@int2chr.6.cmp_and
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@toStringHex.20.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@toStringHex.21.@int2chr.4.IfTrue
	jmp	@toStringHex.22.@int2chr.3.IfFalse
@toStringHex.21.@int2chr.4.IfTrue:
     sub                  rbx,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  rbx
    push                   r9
    push                  rsi
call	__substring__
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
	jmp	@toStringHex.18.@int2chr.2.exit
	jmp	@toStringHex.23.@int2chr.5.IfExit
@toStringHex.22.@int2chr.3.IfFalse:
@toStringHex.23.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@toStringHex.18.@int2chr.2.exit:
     mov                  rdi,                   r9
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r9,                  rsi
@toStringHex.10.IfExit:
     mov                  rsi,                  r13
     sub                  rsi,                    4
     mov                  r13,                  rsi
@toStringHex.6.ForCon:
     cmp                  r13,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
	je	@toStringHex.5.ForBody
     mov                  rax,                   r9
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



