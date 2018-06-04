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
     mov                   r8,                65535
     mov                  rdi,                  rsi
     shl                  rdi,                   16
     mov                  rsi,                   r8
      or                  rsi,                  rdi
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
     mov                  r13,                  rsi
     mov                  rsi,                   r8
     mov                  rbx,                  rdi
     add                  rsi,                    1
     mov                  r12,                  rsi
     mov                  r11,                    0
	jmp	@getnumber.6.@xorshift.5.ForCon
@getnumber.7.@xorshift.4.ForBody:
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
     mov                  rdi,                  rsi
     mov                  rsi,                  r12
     xor                  rsi,                  rdi
     mov                  r12,                  rsi
     mov                   r9,                  r12
     mov                  r10,                   17
     mov                  rdi,                32767
     mov                  rsi,                65535
     shl                  rdi,                   16
      or                  rsi,                  rdi
     mov                  rcx,                  r10
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rdi,                   r9
     mov                  rcx,                  r10
     shr                  rdi,                   cl
     mov                  rsi,                   r8
     and                  rsi,                  rdi
     mov                   r8,                  rsi
     mov                  rdi,                32767
     mov                  rsi,                65535
     shl                  rdi,                   16
      or                  rsi,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,                   r8
     and                  rsi,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,                  r12
     xor                  rsi,                  rdi
     mov                  r12,                  rsi
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
     mov                  rdi,                  rsi
     mov                  rsi,                  r12
     xor                  rsi,                  rdi
     mov                  r12,                  rsi
     mov                  rsi,                  r11
     add                  r11,                    1
@getnumber.6.@xorshift.5.ForCon:
     mov                  rsi,                  rbx
    imul                  rsi,                   10
     cmp                  r11,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@getnumber.7.@xorshift.4.ForBody
     mov                  rsi,                  r12
     xor                  rsi,            123456789
     mov                   r9,                  rsi
     mov                  rsi,                   r9
     mov                  rdi,                  r13
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
     mov                  rbx,                  rsi
     mov                  rsi,                   32
     sub                  rsi,                  r13
     mov                  r10,                   r9
     mov                  r11,                  rsi
     mov                  rsi,                32767
     mov                   r8,                65535
     mov                  rdi,                  rsi
     shl                  rdi,                   16
     mov                  rsi,                   r8
      or                  rsi,                  rdi
     mov                  rcx,                  r11
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rdi,                  r10
     mov                  rcx,                  r11
     shr                  rdi,                   cl
     mov                  rsi,                   r9
     and                  rsi,                  rdi
     mov                   r9,                  rsi
     mov                  rsi,                32767
     mov                   r8,                65535
     mov                  rdi,                  rsi
     shl                  rdi,                   16
     mov                  rsi,                   r8
      or                  rsi,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
     and                  rsi,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
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
     mov                  r10,                  rdi
     mov                  r11,                  rsi
     mov                  rsi,                32767
     mov                   r8,                65535
     mov                  rdi,                  rsi
     shl                  rdi,                   16
     mov                  rsi,                   r8
      or                  rsi,                  rdi
     mov                  rcx,                  r11
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rdi,                  r10
     mov                  rcx,                  r11
     shr                  rdi,                   cl
     mov                  rsi,                   r9
     and                  rsi,                  rdi
     mov                   r9,                  rsi
     mov                  rsi,                32767
     mov                   r8,                65535
     mov                  rdi,                  rsi
     shl                  rdi,                   16
     mov                  rsi,                   r8
      or                  rsi,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,                   r9
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
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     add                  rsi,                    1
     mov                  r12,                  rsi
     mov                  r11,                    0
	jmp	@xorshift.5.ForCon
@xorshift.4.ForBody:
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
     mov                   r9,                  r12
     mov                  r10,                   17
     mov                  rdi,                32767
     mov                  rsi,                65535
     shl                  rdi,                   16
      or                  rsi,                  rdi
     mov                  rcx,                  r10
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                   r8,                  rsi
     mov                  rdi,                   r9
     mov                  rcx,                  r10
     shr                  rdi,                   cl
     mov                  rsi,                   r8
     and                  rsi,                  rdi
     mov                   r8,                  rsi
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
     mov                  rsi,                  r11
     add                  r11,                    1
@xorshift.5.ForCon:
     mov                  rsi,                  rbx
    imul                  rsi,                   10
     cmp                  r11,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@xorshift.4.ForBody
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
     mov         qword[rbp-8],                    0
     mov                  r15,                   40
     mov        qword[rbp-16],                  100
     mov                  r11,                  200
     mov        qword[rbp-24],                  125
     mov        qword[rbp-32],                  250
     mov        qword[rbp-40],                   30
     mov        qword[rbp-48],                    0
     mov        qword[rbp-56],                    0
     mov        qword[rbp-64],                    0
     mov        qword[rbp-72],                    0
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-80],                  rcx
	jmp	@main.5.ForCon
@main.4.ForBody:
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-88],                  rcx
	jmp	@main.9.ForCon
@main.8.ForBody:
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-96],                  rcx
	jmp	@main.13.ForCon
@main.12.ForBody:
     mov                  rsi,         qword[rbp-8]
     mov                  rdi,        qword[rbp-40]
     mov                  rbx,        qword[rbp-96]
     and                  rbx,                   31
     mov                  r14,                  rbx
     mov                   r9,                  rdi
     add                  rsi,                    1
     mov                  r10,                  rsi
     mov                  r13,                    0
	jmp	@main.18.@getnumber.6.@xorshift.5.ForCon
@main.19.@getnumber.7.@xorshift.4.ForBody:
     mov                  rsi,                  r10
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
     mov                  rsi,                  r10
     xor                  rsi,                  rbx
     mov                  r10,                  rsi
     mov                  r12,                  r10
     mov                   r8,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rbx,                  r12
     mov                  rcx,                   r8
     shr                  rbx,                   cl
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                  rbx
     mov                  r10,                  rsi
     mov                  rsi,                  r10
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
     mov                  rsi,                  r10
     xor                  rsi,                  rbx
     mov                  r10,                  rsi
     mov                  rsi,                  r13
     add                  r13,                    1
@main.18.@getnumber.6.@xorshift.5.ForCon:
     mov                  rsi,                   r9
    imul                  rsi,                   10
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.19.@getnumber.7.@xorshift.4.ForBody
     mov                  rsi,                  r10
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
     mov                   r9,                  rsi
     mov                  rsi,                   32
     sub                  rsi,                  r14
     mov                  r13,                  r12
     mov                   r8,                  rsi
     mov                  rsi,                32767
     mov                  rdi,                65535
     mov                  rbx,                  rsi
     shl                  rbx,                   16
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                  r12,                  rsi
     mov                  rbx,                  r13
     mov                  rcx,                   r8
     shr                  rbx,                   cl
     mov                  rsi,                  r12
     and                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                32767
     mov                  rdi,                65535
     mov                  rbx,                  rsi
     shl                  rbx,                   16
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                   r9
      or                  rsi,                  rbx
     mov       qword[rbp-104],                  rsi
     mov                  rsi,        qword[rbp-80]
     mov                  rbx,        qword[rbp-40]
     mov                  rdi,        qword[rbp-96]
     and                  rdi,                   31
     mov                  r14,                  rdi
     mov                   r9,                  rbx
     add                  rsi,                    1
     mov                  r10,                  rsi
     mov                  r13,                    0
	jmp	@main.22.@getnumber.6.@xorshift.5.ForCon
@main.23.@getnumber.7.@xorshift.4.ForBody:
     mov                  rsi,                  r10
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
     mov                  rsi,                  r10
     xor                  rsi,                  rbx
     mov                  r10,                  rsi
     mov                  r12,                  r10
     mov                   r8,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rbx,                  r12
     mov                  rcx,                   r8
     shr                  rbx,                   cl
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                  rbx
     mov                  r10,                  rsi
     mov                  rsi,                  r10
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
     mov                  rsi,                  r10
     xor                  rsi,                  rbx
     mov                  r10,                  rsi
     mov                  rsi,                  r13
     add                  r13,                    1
@main.22.@getnumber.6.@xorshift.5.ForCon:
     mov                  rsi,                   r9
    imul                  rsi,                   10
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.23.@getnumber.7.@xorshift.4.ForBody
     mov                  rsi,                  r10
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
     mov                   r9,                  rsi
     mov                  rsi,                   32
     sub                  rsi,                  r14
     mov                   r8,                  r12
     mov                  r13,                  rsi
     mov                  rsi,                32767
     mov                  rdi,                65535
     mov                  rbx,                  rsi
     shl                  rbx,                   16
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
     mov                  rcx,                  r13
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                  r12,                  rsi
     mov                  rbx,                   r8
     mov                  rcx,                  r13
     shr                  rbx,                   cl
     mov                  rsi,                  r12
     and                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                32767
     mov                  rdi,                65535
     mov                  rbx,                  rsi
     shl                  rbx,                   16
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                   r9
      or                  rsi,                  rbx
     mov       qword[rbp-112],                  rsi
     mov                  rsi,        qword[rbp-88]
     mov                  rbx,        qword[rbp-40]
     mov                  rdi,        qword[rbp-96]
     and                  rdi,                   31
     mov                  r14,                  rdi
     mov                   r9,                  rbx
     add                  rsi,                    1
     mov                  r10,                  rsi
     mov                  r13,                    0
	jmp	@main.26.@getnumber.6.@xorshift.5.ForCon
@main.27.@getnumber.7.@xorshift.4.ForBody:
     mov                  rsi,                  r10
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
     mov                  rsi,                  r10
     xor                  rsi,                  rbx
     mov                  r10,                  rsi
     mov                  r12,                  r10
     mov                   r8,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rbx,                  r12
     mov                  rcx,                   r8
     shr                  rbx,                   cl
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                  rbx
     mov                  r10,                  rsi
     mov                  rsi,                  r10
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
     mov                  rsi,                  r10
     xor                  rsi,                  rbx
     mov                  r10,                  rsi
     mov                  rsi,                  r13
     add                  r13,                    1
@main.26.@getnumber.6.@xorshift.5.ForCon:
     mov                  rsi,                   r9
    imul                  rsi,                   10
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.27.@getnumber.7.@xorshift.4.ForBody
     mov                  rsi,                  r10
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
     mov                   r9,                  rsi
     mov                  rsi,                   32
     sub                  rsi,                  r14
     mov                   r8,                  r12
     mov                  r13,                  rsi
     mov                  rsi,                32767
     mov                  rdi,                65535
     mov                  rbx,                  rsi
     shl                  rbx,                   16
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
     mov                  rcx,                  r13
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                  r12,                  rsi
     mov                  rbx,                   r8
     mov                  rcx,                  r13
     shr                  rbx,                   cl
     mov                  rsi,                  r12
     and                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                32767
     mov                  rdi,                65535
     mov                  rbx,                  rsi
     shl                  rbx,                   16
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                   r9
      or                  rsi,                  rbx
     mov       qword[rbp-120],                  rsi
     mov                  rsi,        qword[rbp-80]
     xor                  rsi,        qword[rbp-88]
     mov                  rbx,        qword[rbp-40]
     mov                  rdi,        qword[rbp-96]
     and                  rdi,                   31
     mov                  r14,                  rdi
     mov                   r9,                  rbx
     add                  rsi,                    1
     mov                  r10,                  rsi
     mov                  r13,                    0
	jmp	@main.30.@getnumber.6.@xorshift.5.ForCon
@main.31.@getnumber.7.@xorshift.4.ForBody:
     mov                  rsi,                  r10
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
     mov                  rsi,                  r10
     xor                  rsi,                  rbx
     mov                  r10,                  rsi
     mov                  r12,                  r10
     mov                   r8,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rbx,                  r12
     mov                  rcx,                   r8
     shr                  rbx,                   cl
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r10
     xor                  rsi,                  rbx
     mov                  r10,                  rsi
     mov                  rsi,                  r10
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
     mov                  rsi,                  r10
     xor                  rsi,                  rbx
     mov                  r10,                  rsi
     mov                  rsi,                  r13
     add                  r13,                    1
@main.30.@getnumber.6.@xorshift.5.ForCon:
     mov                  rsi,                   r9
    imul                  rsi,                   10
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.31.@getnumber.7.@xorshift.4.ForBody
     mov                  rsi,                  r10
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
     mov                   r9,                  rsi
     mov                  rsi,                   32
     sub                  rsi,                  r14
     mov                   r8,                  r12
     mov                  r13,                  rsi
     mov                  rsi,                32767
     mov                  rdi,                65535
     mov                  rbx,                  rsi
     shl                  rbx,                   16
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
     mov                  rcx,                  r13
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                  r12,                  rsi
     mov                  rbx,                   r8
     mov                  rcx,                  r13
     shr                  rbx,                   cl
     mov                  rsi,                  r12
     and                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                32767
     mov                  rdi,                65535
     mov                  rbx,                  rsi
     shl                  rbx,                   16
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                  r12
     and                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rsi,                   r9
      or                  rsi,                  rbx
     mov       qword[rbp-128],                  rsi
     mov                  rsi,        qword[rbp-96]
     mov                   r9,                    1
     add                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r13,                    0
	jmp	@main.34.@xorshift.5.ForCon
@main.35.@xorshift.4.ForBody:
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
     mov                   r8,                  r14
     mov                  r12,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                  r12
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rbx,                   r8
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
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
     mov                  rsi,                  r13
     add                  r13,                    1
@main.34.@xorshift.5.ForCon:
     mov                  rsi,                   r9
    imul                  rsi,                   10
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.35.@xorshift.4.ForBody
     mov                  rsi,                  r14
     xor                  rsi,            123456789
     mov                  r10,                  rsi
     mov                  rsi,        qword[rbp-88]
     mov                   r9,                    1
     add                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r13,                    0
	jmp	@main.38.@xorshift.5.ForCon
@main.39.@xorshift.4.ForBody:
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
     mov                   r8,                  r14
     mov                  r12,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                  r12
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rbx,                   r8
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
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
     mov                  rsi,                  r13
     add                  r13,                    1
@main.38.@xorshift.5.ForCon:
     mov                  rsi,                   r9
    imul                  rsi,                   10
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.39.@xorshift.4.ForBody
     mov                  rsi,                  r14
     xor                  rsi,            123456789
     xor                  r10,                  rsi
     mov                  rsi,        qword[rbp-80]
     mov                   r9,                    1
     add                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r13,                    0
	jmp	@main.42.@xorshift.5.ForCon
@main.43.@xorshift.4.ForBody:
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
     mov                  r12,                  r14
     mov                   r8,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rbx,                  r12
     mov                  rcx,                   r8
     shr                  rbx,                   cl
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
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
     mov                  rsi,                  r13
     add                  r13,                    1
@main.42.@xorshift.5.ForCon:
     mov                  rsi,                   r9
    imul                  rsi,                   10
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.43.@xorshift.4.ForBody
     mov                  rsi,                  r14
     xor                  rsi,            123456789
     mov                  rbx,                  r10
     xor                  rbx,                  rsi
     mov                  r10,                  rbx
     mov                  rsi,       qword[rbp-104]
     xor                  rsi,                  r10
     mov                   r9,                    1
     add                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r13,                    0
	jmp	@main.46.@xorshift.5.ForCon
@main.47.@xorshift.4.ForBody:
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
     mov                   r8,                  r14
     mov                  r12,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                  r12
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rbx,                   r8
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
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
     mov                  rsi,                  r13
     add                  r13,                    1
@main.46.@xorshift.5.ForCon:
     mov                  rsi,                   r9
    imul                  rsi,                   10
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.47.@xorshift.4.ForBody
     mov                  rsi,                  r14
     xor                  rsi,            123456789
     mov                  rbx,        qword[rbp-48]
     add                  rbx,                  rsi
     mov        qword[rbp-48],                  rbx
     mov                  rsi,       qword[rbp-112]
     xor                  rsi,                  r10
     mov                   r9,                    1
     add                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r13,                    0
	jmp	@main.50.@xorshift.5.ForCon
@main.51.@xorshift.4.ForBody:
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
     mov                   r8,                  r14
     mov                  r12,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                  r12
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rbx,                   r8
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
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
     mov                  rsi,                  r13
     add                  r13,                    1
@main.50.@xorshift.5.ForCon:
     mov                  rsi,                   r9
    imul                  rsi,                   10
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.51.@xorshift.4.ForBody
     mov                  rsi,                  r14
     xor                  rsi,            123456789
     mov                  rbx,        qword[rbp-56]
     add                  rbx,                  rsi
     mov        qword[rbp-56],                  rbx
     mov                  rsi,       qword[rbp-120]
     xor                  rsi,                  r10
     mov                   r9,                    1
     add                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r13,                    0
	jmp	@main.54.@xorshift.5.ForCon
@main.55.@xorshift.4.ForBody:
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
     mov                  r12,                  r14
     mov                   r8,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rbx,                  r12
     mov                  rcx,                   r8
     shr                  rbx,                   cl
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
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
     mov                  rsi,                  r13
     add                  r13,                    1
@main.54.@xorshift.5.ForCon:
     mov                  rsi,                   r9
    imul                  rsi,                   10
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.55.@xorshift.4.ForBody
     mov                  rsi,                  r14
     xor                  rsi,            123456789
     mov                  rbx,        qword[rbp-64]
     add                  rbx,                  rsi
     mov        qword[rbp-64],                  rbx
     mov                  rsi,       qword[rbp-128]
     xor                  rsi,                  r10
     mov                   r9,                    1
     add                  rsi,                    1
     mov                  r14,                  rsi
     mov                  r13,                    0
	jmp	@main.58.@xorshift.5.ForCon
@main.59.@xorshift.4.ForBody:
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
     mov                  r12,                  r14
     mov                   r8,                   17
     mov                  rbx,                32767
     mov                  rsi,                65535
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     shl                  rsi,                    1
     add                  rsi,                    1
     mov                  rdi,                  rsi
     mov                  rbx,                  r12
     mov                  rcx,                   r8
     shr                  rbx,                   cl
     mov                  rsi,                  rdi
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
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
     mov                  rsi,                  r13
     add                  r13,                    1
@main.58.@xorshift.5.ForCon:
     mov                  rsi,                   r9
    imul                  rsi,                   10
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.59.@xorshift.4.ForBody
     mov                  rsi,                  r14
     xor                  rsi,            123456789
     mov                  rbx,        qword[rbp-72]
     add                  rbx,                  rsi
     mov        qword[rbp-72],                  rbx
     mov                  rsi,        qword[rbp-96]
     add        qword[rbp-96],                    1
@main.13.ForCon:
     mov                  rcx,        qword[rbp-96]
     cmp                  rcx,        qword[rbp-32]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.12.ForBody
     mov                  rsi,        qword[rbp-88]
     add        qword[rbp-88],                    1
@main.9.ForCon:
     cmp        qword[rbp-88],                  r11
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.8.ForBody
     mov                  rsi,        qword[rbp-80]
     add        qword[rbp-80],                    1
@main.5.ForCon:
     cmp        qword[rbp-80],                  r15
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.4.ForBody
     mov                   r8,        qword[rbp-48]
     mov                   r9,         __const_str0
     mov                  r13,                   28
	jmp	@main.62.@toStringHex.5.ForCon
@main.63.@toStringHex.4.ForBody:
     mov                  rsi,                   r8
     mov                  rcx,                  r13
     shr                  rsi,                   cl
     and                  rsi,                   15
     mov                  r12,                  rsi
     cmp                  r12,                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.64.@toStringHex.8.IfTrue
	jmp	@main.65.@toStringHex.7.IfFalse
@main.64.@toStringHex.8.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                  r12
     mov                  rbx,                  rsi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.130.@int2chr.6.cmp_and
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.130.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.131.@int2chr.4.IfTrue
	jmp	@main.132.@int2chr.3.IfFalse
@main.131.@int2chr.4.IfTrue:
     sub                  rbx,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  rbx
    push                   r9
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
	jmp	@main.128.@int2chr.2.exit
	jmp	@main.133.@int2chr.5.IfExit
@main.132.@int2chr.3.IfFalse:
@main.133.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@main.128.@int2chr.2.exit:
     mov                  rdi,                   r9
    push                  rsi
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r9,                  rsi
	jmp	@main.66.@toStringHex.9.IfExit
@main.65.@toStringHex.7.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                  r12
     sub                  rsi,                   10
     mov                  rbx,                  rsi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.136.@int2chr.6.cmp_and
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.136.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.137.@int2chr.4.IfTrue
	jmp	@main.138.@int2chr.3.IfFalse
@main.137.@int2chr.4.IfTrue:
     sub                  rbx,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  rbx
    push                   r9
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
	jmp	@main.134.@int2chr.2.exit
	jmp	@main.139.@int2chr.5.IfExit
@main.138.@int2chr.3.IfFalse:
@main.139.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@main.134.@int2chr.2.exit:
     mov                  rdi,                   r9
    push                  rsi
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r9,                  rsi
@main.66.@toStringHex.9.IfExit:
     mov                  rsi,                  r13
     sub                  rsi,                    4
     mov                  r13,                  rsi
@main.62.@toStringHex.5.ForCon:
     cmp                  r13,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
	je	@main.63.@toStringHex.4.ForBody
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
     mov                  r12,        qword[rbp-56]
     mov                  r13,         __const_str0
     mov                   r8,                   28
	jmp	@main.69.@toStringHex.5.ForCon
@main.70.@toStringHex.4.ForBody:
     mov                  rsi,                  r12
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     and                  rsi,                   15
     mov                  rbx,                  rsi
     cmp                  rbx,                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.71.@toStringHex.8.IfTrue
	jmp	@main.72.@toStringHex.7.IfFalse
@main.71.@toStringHex.8.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                  rbx
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
	jmp	@main.73.@toStringHex.9.IfExit
@main.72.@toStringHex.7.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                  rbx
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
@main.73.@toStringHex.9.IfExit:
     mov                  rsi,                   r8
     sub                  rsi,                    4
     mov                   r8,                  rsi
@main.69.@toStringHex.5.ForCon:
     cmp                   r8,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
	je	@main.70.@toStringHex.4.ForBody
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
     mov                  r12,        qword[rbp-64]
     mov                  r13,         __const_str0
     mov                   r8,                   28
	jmp	@main.76.@toStringHex.5.ForCon
@main.77.@toStringHex.4.ForBody:
     mov                  rsi,                  r12
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     and                  rsi,                   15
     mov                  rbx,                  rsi
     cmp                  rbx,                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.78.@toStringHex.8.IfTrue
	jmp	@main.79.@toStringHex.7.IfFalse
@main.78.@toStringHex.8.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                  rbx
     mov                  rdi,                  rsi
    push                   r8
    push                  rsi
call	int2chr
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  r13
    push                  rsi
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r13,                  rsi
	jmp	@main.80.@toStringHex.9.IfExit
@main.79.@toStringHex.7.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                  rbx
     sub                  rsi,                   10
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
@main.80.@toStringHex.9.IfExit:
     mov                  rsi,                   r8
     sub                  rsi,                    4
     mov                   r8,                  rsi
@main.76.@toStringHex.5.ForCon:
     cmp                   r8,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
	je	@main.77.@toStringHex.4.ForBody
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
     mov                  r12,        qword[rbp-72]
     mov                  r13,         __const_str0
     mov                   r8,                   28
	jmp	@main.83.@toStringHex.5.ForCon
@main.84.@toStringHex.4.ForBody:
     mov                  rsi,                  r12
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     and                  rsi,                   15
     mov                  rbx,                  rsi
     cmp                  rbx,                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.85.@toStringHex.8.IfTrue
	jmp	@main.86.@toStringHex.7.IfFalse
@main.85.@toStringHex.8.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                  rbx
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
	jmp	@main.87.@toStringHex.9.IfExit
@main.86.@toStringHex.7.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                  rbx
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
@main.87.@toStringHex.9.IfExit:
     mov                  rsi,                   r8
     sub                  rsi,                    4
     mov                   r8,                  rsi
@main.83.@toStringHex.5.ForCon:
     cmp                   r8,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
	je	@main.84.@toStringHex.4.ForBody
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
     mov                   r8,                  rdi
     mov                   r9,         __const_str0
     mov                  r13,                   28
	jmp	@toStringHex.5.ForCon
@toStringHex.4.ForBody:
     mov                  rsi,                   r8
     mov                  rcx,                  r13
     shr                  rsi,                   cl
     and                  rsi,                   15
     mov                  r12,                  rsi
     cmp                  r12,                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@toStringHex.8.IfTrue
	jmp	@toStringHex.7.IfFalse
@toStringHex.8.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                  r12
     mov                  rbx,                  rsi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@toStringHex.13.@int2chr.6.cmp_and
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@toStringHex.13.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@toStringHex.14.@int2chr.4.IfTrue
	jmp	@toStringHex.15.@int2chr.3.IfFalse
@toStringHex.14.@int2chr.4.IfTrue:
     sub                  rbx,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  rbx
    push                   r8
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
	jmp	@toStringHex.11.@int2chr.2.exit
	jmp	@toStringHex.16.@int2chr.5.IfExit
@toStringHex.15.@int2chr.3.IfFalse:
@toStringHex.16.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@toStringHex.11.@int2chr.2.exit:
     mov                  rdi,                   r9
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                   r9,                  rsi
	jmp	@toStringHex.9.IfExit
@toStringHex.7.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                  r12
     sub                  rsi,                   10
     mov                  rbx,                  rsi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@toStringHex.19.@int2chr.6.cmp_and
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@toStringHex.19.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@toStringHex.20.@int2chr.4.IfTrue
	jmp	@toStringHex.21.@int2chr.3.IfFalse
@toStringHex.20.@int2chr.4.IfTrue:
     sub                  rbx,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  rbx
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
	jmp	@toStringHex.17.@int2chr.2.exit
	jmp	@toStringHex.22.@int2chr.5.IfExit
@toStringHex.21.@int2chr.3.IfFalse:
@toStringHex.22.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@toStringHex.17.@int2chr.2.exit:
     mov                  rdi,                   r9
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                   r9,                  rsi
@toStringHex.9.IfExit:
     mov                  rsi,                  r13
     sub                  rsi,                    4
     mov                  r13,                  rsi
@toStringHex.5.ForCon:
     cmp                  r13,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
	je	@toStringHex.4.ForBody
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



