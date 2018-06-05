  global                 main
  extern	malloc


 section                .text
search:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   24
    push                  r12
    push                  r14
    push                  r13
    push                  rbx
@search.1.enter:
     mov                  r14,                  rdi
     mov                   r9,                  rsi
     mov                  r13,                  rdx
     cmp                   r9,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@search.6.cmp_or
     cmp                   r9,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
@search.6.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@search.7.cmp_or
     cmp                  r14,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@search.7.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@search.8.cmp_or
     mov                  rsi,                  r14
     sub                  rsi,                    1
     mov                  rbx,         qword[@make]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r14
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,                  r14
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                   15
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@search.8.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@search.4.IfTrue
	jmp	@search.3.IfFalse
@search.4.IfTrue:
     cmp                  r14,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@search.12.cmp_and
     cmp                   r9,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@search.12.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@search.10.IfTrue
	jmp	@search.9.IfFalse
@search.10.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rbx,                   45
     sub                  rbx,                  r13
     mov        qword[rsi+16],                  rbx
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     add                  rbx,        qword[rsi+16]
     mov                  rdi,                  rbx
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@search.16.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@search.16.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@search.17.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,           qword[rsi]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@search.17.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@search.18.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,         qword[rbx+8]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,         qword[rsi+8]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@search.18.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@search.19.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,        qword[rbx+16]
     add                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@search.19.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@search.20.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@search.20.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@search.21.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@search.21.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@search.14.IfTrue
	jmp	@search.13.IfFalse
@search.14.IfTrue:
     mov                  rbx,        qword[@count]
     mov                  rsi,        qword[@count]
     mov                  rsi,           qword[rsi]
     add                  rsi,                    1
     mov           qword[rbx],                  rsi
     mov                  r12,                    0
	jmp	@search.24.ForCon
@search.23.ForBody:
     mov                   r8,                    0
	jmp	@search.28.ForCon
@search.27.ForBody:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
    push                   r9
    push                  rsi
    push                   r8
call	toString
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
    push                   r8
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     mov                  rdi,         __const_str0
    push                   r9
    push                   r8
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                   r8
     pop                   r9
     add                   r8,                    1
@search.28.ForCon:
     cmp                   r8,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@search.27.ForBody
     mov                  rdi,         __const_str1
    push                   r9
call	print
     pop                   r9
     add                  r12,                    1
@search.24.ForCon:
     cmp                  r12,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@search.23.ForBody
     mov                  rdi,         __const_str1
    push                   r9
call	print
     pop                   r9
	jmp	@search.15.IfExit
@search.13.IfFalse:
@search.15.IfExit:
	jmp	@search.11.IfExit
@search.9.IfFalse:
     cmp                   r9,                    2
     mov                  rdi,                    0
    sete                  dil
     mov                  rsi,                  rdi
     cmp                  rsi,                    1
	je	@search.31.IfTrue
	jmp	@search.30.IfFalse
@search.31.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov                  rbx,                   15
     sub                  rbx,           qword[rsi]
     mov                  r12,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rsi,           qword[r12]
     sub                  rbx,         qword[rsi+8]
     mov            qword[r8],                  rbx
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    0
	je	@search.36.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    0
@search.36.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@search.37.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[r12]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@search.37.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@search.34.IfTrue
	jmp	@search.33.IfFalse
@search.34.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[r12]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rsi,                  rdi
     cmp                  rsi,                    1
	je	@search.39.IfTrue
	jmp	@search.38.IfFalse
@search.39.IfTrue:
     mov                  rdi,                  r14
     add                  rdi,                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,                  r13
     add                  rbx,           qword[r12]
     mov                  rsi,                    0
     mov                  rdx,                  rbx
    push                   r9
call	search
     pop                   r9
     mov                  rsi,                  rax
	jmp	@search.40.IfExit
@search.38.IfFalse:
     mov                  r12,                   r9
     add                  r12,                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,                  r13
     add                  rbx,           qword[rdi]
     mov                  rdi,                  r14
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                   r9
call	search
     pop                   r9
     mov                  rsi,                  rax
@search.40.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@search.35.IfExit
@search.33.IfFalse:
@search.35.IfExit:
	jmp	@search.32.IfExit
@search.30.IfFalse:
     mov                  r12,                    1
	jmp	@search.43.ForCon
@search.42.ForBody:
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@search.46.IfTrue
	jmp	@search.45.IfFalse
@search.46.IfTrue:
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                  r12
     cmp                   r9,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@search.49.IfTrue
	jmp	@search.48.IfFalse
@search.49.IfTrue:
     mov                  rsi,                  r14
     add                  rsi,                    1
     mov                  rbx,                  r13
     add                  rbx,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                    0
     mov                  rdx,                  rbx
    push                   r9
call	search
     pop                   r9
     mov                  rsi,                  rax
	jmp	@search.50.IfExit
@search.48.IfFalse:
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rbx,                  r13
     add                  rbx,                  r12
     mov                  rdi,                  r14
     mov                  rdx,                  rbx
    push                   r9
call	search
     pop                   r9
     mov                  rsi,                  rax
@search.50.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@search.47.IfExit
@search.45.IfFalse:
@search.47.IfExit:
     add                  r12,                    1
@search.43.ForCon:
     cmp                  r12,                    9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@search.42.ForBody
@search.32.IfExit:
@search.11.IfExit:
	jmp	@search.5.IfExit
@search.3.IfFalse:
@search.5.IfExit:
     pop                  rbx
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   24
     pop                  rbp
     ret
origin:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   24
@origin.1.enter:
     mov                   r9,                  rdi
     mov                  rdi,                   r9
     mov                  rsi,                   r9
     add                  rdi,                    1
     shl                  rdi,                    3
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     mov                  rdi,                  rax
     mov           qword[rdi],                  rsi
     add                  rdi,                    8
     mov         qword[@make],                  rdi
     mov            qword[@i],                    0
	jmp	@origin.5.ForCon
@origin.4.ForBody:
     mov                  rdi,         qword[@make]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                   r8,                   r9
     mov                  rsi,                   r9
     add                   r8,                    1
     shl                   r8,                    3
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                   r8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     mov                   r8,                  rax
     mov            qword[r8],                  rsi
     add                   r8,                    8
     mov           qword[rdi],                   r8
     mov            qword[@j],                    0
	jmp	@origin.9.ForCon
@origin.8.ForBody:
     mov                  rdi,         qword[@make]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,            qword[@j]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov           qword[rdi],                    0
     add            qword[@j],                    1
@origin.9.ForCon:
     cmp            qword[@j],                   r9
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@origin.8.ForBody
     add            qword[@i],                    1
@origin.5.ForCon:
     cmp            qword[@i],                   r9
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@origin.4.ForBody
     add                  rsp,                   24
     pop                  rbp
     ret
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   16
     mov                  rdi,                   10
     mov                  rsi,                   10
     add                  rdi,                    1
     shl                  rdi,                    3
    push                  rdi
    push                  rsi
    call               malloc
     pop                  rsi
     pop                  rdi
     mov                  rdi,                  rax
     mov           qword[rdi],                  rsi
     add                  rdi,                    8
     mov        qword[@color],                  rdi
     mov                  rdi,                    1
     mov                  rsi,                    1
     add                  rdi,                    1
     shl                  rdi,                    3
    push                  rdi
    push                  rsi
    call               malloc
     pop                  rsi
     pop                  rdi
     mov                  rdi,                  rax
     mov           qword[rdi],                  rsi
     add                  rdi,                    8
     mov        qword[@count],                  rdi
     add                  rsp,                   16
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                   88
    push                  rbx
    push                  r12
    push                  r14
    push                  r13
    push                  r15
@main.1.enter:
     mov                  r12,                    3
     mov                  rbx,                  r12
     mov                  rsi,                  r12
     add                  rbx,                    1
     shl                  rbx,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
     mov                  rdi,                  rbx
    call               malloc
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rbx,                  rax
     mov           qword[rbx],                  rsi
     add                  rbx,                    8
     mov         qword[@make],                  rbx
     mov            qword[@i],                    0
	jmp	@main.6.@origin.5.ForCon
@main.7.@origin.4.ForBody:
     mov                  rbx,         qword[@make]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,                  r12
     mov                  rsi,                  r12
     add                  rdi,                    1
     shl                  rdi,                    3
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
    push                  r11
    push                  rdi
    call               malloc
     pop                  rdi
     pop                  r11
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rdi,                  rax
     mov           qword[rdi],                  rsi
     add                  rdi,                    8
     mov           qword[rbx],                  rdi
     mov            qword[@j],                    0
	jmp	@main.8.@origin.9.ForCon
@main.9.@origin.8.ForBody:
     mov                  rbx,         qword[@make]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,            qword[@j]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     add            qword[@j],                    1
@main.8.@origin.9.ForCon:
     cmp            qword[@j],                  r12
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.9.@origin.8.ForBody
     add            qword[@i],                    1
@main.6.@origin.5.ForCon:
     cmp            qword[@i],                  r12
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.7.@origin.4.ForBody
     mov        qword[rbp-32],                    0
     mov        qword[rbp-40],                    0
     mov                  r15,                    0
     cmp        qword[rbp-40],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.12.@search.6.cmp_or
     cmp        qword[rbp-40],                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
@main.12.@search.6.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.13.@search.7.cmp_or
     cmp        qword[rbp-32],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.13.@search.7.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.14.@search.8.cmp_or
     mov                  rsi,        qword[rbp-32]
     sub                  rsi,                    1
     mov                  rbx,         qword[@make]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-32]
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,        qword[rbp-32]
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                   15
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.14.@search.8.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.15.@search.4.IfTrue
	jmp	@main.16.@search.3.IfFalse
@main.15.@search.4.IfTrue:
     cmp        qword[rbp-32],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.17.@search.12.cmp_and
     cmp        qword[rbp-40],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.17.@search.12.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.18.@search.10.IfTrue
	jmp	@main.19.@search.9.IfFalse
@main.18.@search.10.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rbx,                   45
     sub                  rbx,                  r15
     mov        qword[rsi+16],                  rbx
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     add                  rbx,        qword[rsi+16]
     mov                  rdi,                  rbx
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.20.@search.16.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.20.@search.16.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.21.@search.17.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,           qword[rsi]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.21.@search.17.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.22.@search.18.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,         qword[rbx+8]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,         qword[rsi+8]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.22.@search.18.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.23.@search.19.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,        qword[rbx+16]
     add                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.23.@search.19.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.24.@search.20.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.24.@search.20.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.25.@search.21.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.25.@search.21.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.26.@search.14.IfTrue
	jmp	@main.27.@search.13.IfFalse
@main.26.@search.14.IfTrue:
     mov                  rbx,        qword[@count]
     mov                  rsi,        qword[@count]
     mov                  rsi,           qword[rsi]
     add                  rsi,                    1
     mov           qword[rbx],                  rsi
     mov                  r14,                    0
	jmp	@main.28.@search.24.ForCon
@main.29.@search.23.ForBody:
     mov                  r12,                    0
	jmp	@main.30.@search.28.ForCon
@main.31.@search.27.ForBody:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
    push                  rsi
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
call	print
     mov                  rdi,         __const_str0
call	print
     add                  r12,                    1
@main.30.@search.28.ForCon:
     cmp                  r12,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.31.@search.27.ForBody
     mov                  rdi,         __const_str1
call	print
     add                  r14,                    1
@main.28.@search.24.ForCon:
     cmp                  r14,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.29.@search.23.ForBody
     mov                  rdi,         __const_str1
call	print
	jmp	@main.32.@search.15.IfExit
@main.27.@search.13.IfFalse:
@main.32.@search.15.IfExit:
	jmp	@main.33.@search.11.IfExit
@main.19.@search.9.IfFalse:
     cmp        qword[rbp-40],                    2
     mov                  rdi,                    0
    sete                  dil
     mov                  rsi,                  rdi
     cmp                  rsi,                    1
	je	@main.34.@search.31.IfTrue
	jmp	@main.35.@search.30.IfFalse
@main.34.@search.31.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov                  rbx,                   15
     sub                  rbx,           qword[rsi]
     mov                  r12,         qword[@make]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rsi,           qword[r12]
     sub                  rbx,         qword[rsi+8]
     mov            qword[r8],                  rbx
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    0
	je	@main.36.@search.36.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    0
@main.36.@search.36.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.37.@search.37.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[r12]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.37.@search.37.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.38.@search.34.IfTrue
	jmp	@main.39.@search.33.IfFalse
@main.38.@search.34.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[r12]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rsi,                  rdi
     cmp                  rsi,                    1
	je	@main.40.@search.39.IfTrue
	jmp	@main.41.@search.38.IfFalse
@main.40.@search.39.IfTrue:
     mov                  rdi,        qword[rbp-32]
     add                  rdi,                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,                  r15
     add                  rsi,           qword[rbx]
     mov        qword[rbp-64],                  rdi
     mov        qword[rbp-72],                    0
     mov                  r14,                  rsi
     cmp        qword[rbp-72],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.56.@search.6.cmp_or
     cmp        qword[rbp-72],                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
@main.56.@search.6.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.57.@search.7.cmp_or
     cmp        qword[rbp-64],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.57.@search.7.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.58.@search.8.cmp_or
     mov                  rsi,        qword[rbp-64]
     sub                  rsi,                    1
     mov                  rbx,         qword[@make]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-64]
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,        qword[rbp-64]
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                   15
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.58.@search.8.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.59.@search.4.IfTrue
	jmp	@main.60.@search.3.IfFalse
@main.59.@search.4.IfTrue:
     cmp        qword[rbp-64],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.61.@search.12.cmp_and
     cmp        qword[rbp-72],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.61.@search.12.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.62.@search.10.IfTrue
	jmp	@main.63.@search.9.IfFalse
@main.62.@search.10.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rbx,                   45
     sub                  rbx,                  r14
     mov        qword[rsi+16],                  rbx
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     add                  rbx,        qword[rsi+16]
     mov                  rdi,                  rbx
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.64.@search.16.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.64.@search.16.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.65.@search.17.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,           qword[rsi]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.65.@search.17.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.66.@search.18.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,         qword[rbx+8]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,         qword[rsi+8]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.66.@search.18.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.67.@search.19.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,        qword[rbx+16]
     add                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.67.@search.19.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.68.@search.20.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.68.@search.20.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.69.@search.21.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.69.@search.21.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.70.@search.14.IfTrue
	jmp	@main.71.@search.13.IfFalse
@main.70.@search.14.IfTrue:
     mov                  rbx,        qword[@count]
     mov                  rsi,        qword[@count]
     mov                  rsi,           qword[rsi]
     add                  rsi,                    1
     mov           qword[rbx],                  rsi
     mov                   r8,                    0
	jmp	@main.72.@search.24.ForCon
@main.73.@search.23.ForBody:
     mov                  r12,                    0
	jmp	@main.74.@search.28.ForCon
@main.75.@search.27.ForBody:
     mov                  rbx,         qword[@make]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
    push                   r8
    push                  rsi
call	toString
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                   r8
     mov                  rdi,         __const_str0
    push                   r8
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                   r8
     add                  r12,                    1
@main.74.@search.28.ForCon:
     cmp                  r12,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.75.@search.27.ForBody
     mov                  rdi,         __const_str1
    push                   r8
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                   r8
     add                   r8,                    1
@main.72.@search.24.ForCon:
     cmp                   r8,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.73.@search.23.ForBody
     mov                  rdi,         __const_str1
call	print
	jmp	@main.76.@search.15.IfExit
@main.71.@search.13.IfFalse:
@main.76.@search.15.IfExit:
	jmp	@main.77.@search.11.IfExit
@main.63.@search.9.IfFalse:
     cmp        qword[rbp-72],                    2
     mov                  rdi,                    0
    sete                  dil
     mov                  rsi,                  rdi
     cmp                  rsi,                    1
	je	@main.78.@search.31.IfTrue
	jmp	@main.79.@search.30.IfFalse
@main.78.@search.31.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov                  rbx,                   15
     sub                  rbx,           qword[rsi]
     mov                  r12,         qword[@make]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rsi,           qword[r12]
     sub                  rbx,         qword[rsi+8]
     mov            qword[r8],                  rbx
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    0
	je	@main.80.@search.36.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    0
@main.80.@search.36.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.81.@search.37.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[r12]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.81.@search.37.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.82.@search.34.IfTrue
	jmp	@main.83.@search.33.IfFalse
@main.82.@search.34.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[r12]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rsi,                  rdi
     cmp                  rsi,                    1
	je	@main.84.@search.39.IfTrue
	jmp	@main.85.@search.38.IfFalse
@main.84.@search.39.IfTrue:
     mov                  rdi,        qword[rbp-64]
     add                  rdi,                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,                  r14
     add                  rsi,           qword[rbx]
     mov        qword[rbp-80],                  rdi
     mov        qword[rbp-88],                    0
     mov                   r9,                  rsi
     cmp        qword[rbp-88],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.188.@search.6.cmp_or
     cmp        qword[rbp-88],                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
@main.188.@search.6.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.189.@search.7.cmp_or
     cmp        qword[rbp-80],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.189.@search.7.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.190.@search.8.cmp_or
     mov                  rsi,        qword[rbp-80]
     sub                  rsi,                    1
     mov                  rbx,         qword[@make]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-80]
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,        qword[rbp-80]
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                   15
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.190.@search.8.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.191.@search.4.IfTrue
	jmp	@main.192.@search.3.IfFalse
@main.191.@search.4.IfTrue:
     cmp        qword[rbp-80],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.193.@search.12.cmp_and
     cmp        qword[rbp-88],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.193.@search.12.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.194.@search.10.IfTrue
	jmp	@main.195.@search.9.IfFalse
@main.194.@search.10.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rbx,                   45
     sub                  rbx,                   r9
     mov        qword[rsi+16],                  rbx
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     add                  rbx,        qword[rsi+16]
     mov                  rdi,                  rbx
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.196.@search.16.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.196.@search.16.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.197.@search.17.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,           qword[rsi]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.197.@search.17.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.198.@search.18.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,         qword[rbx+8]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,         qword[rsi+8]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.198.@search.18.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.199.@search.19.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,        qword[rbx+16]
     add                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.199.@search.19.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.200.@search.20.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.200.@search.20.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.201.@search.21.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.201.@search.21.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.202.@search.14.IfTrue
	jmp	@main.203.@search.13.IfFalse
@main.202.@search.14.IfTrue:
     mov                  rbx,        qword[@count]
     mov                  rsi,        qword[@count]
     mov                  rsi,           qword[rsi]
     add                  rsi,                    1
     mov           qword[rbx],                  rsi
     mov                   r8,                    0
	jmp	@main.204.@search.24.ForCon
@main.205.@search.23.ForBody:
     mov                  r12,                    0
	jmp	@main.206.@search.28.ForCon
@main.207.@search.27.ForBody:
     mov                  rbx,         qword[@make]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
call	print
     pop                   r9
     pop                   r8
     mov                  rdi,         __const_str0
    push                   r8
    push                   r9
call	print
     pop                   r9
     pop                   r8
     add                  r12,                    1
@main.206.@search.28.ForCon:
     cmp                  r12,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.207.@search.27.ForBody
     mov                  rdi,         __const_str1
    push                   r8
    push                   r9
call	print
     pop                   r9
     pop                   r8
     add                   r8,                    1
@main.204.@search.24.ForCon:
     cmp                   r8,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.205.@search.23.ForBody
     mov                  rdi,         __const_str1
    push                   r9
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                   r9
	jmp	@main.208.@search.15.IfExit
@main.203.@search.13.IfFalse:
@main.208.@search.15.IfExit:
	jmp	@main.209.@search.11.IfExit
@main.195.@search.9.IfFalse:
     cmp        qword[rbp-88],                    2
     mov                  rdi,                    0
    sete                  dil
     mov                  rsi,                  rdi
     cmp                  rsi,                    1
	je	@main.210.@search.31.IfTrue
	jmp	@main.211.@search.30.IfFalse
@main.210.@search.31.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov                  rbx,                   15
     sub                  rbx,           qword[rsi]
     mov                  r12,         qword[@make]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rsi,           qword[r12]
     sub                  rbx,         qword[rsi+8]
     mov            qword[r8],                  rbx
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    0
	je	@main.212.@search.36.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    0
@main.212.@search.36.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.213.@search.37.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[r12]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.213.@search.37.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.214.@search.34.IfTrue
	jmp	@main.215.@search.33.IfFalse
@main.214.@search.34.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[r12]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rsi,                  rdi
     cmp                  rsi,                    1
	je	@main.216.@search.39.IfTrue
	jmp	@main.217.@search.38.IfFalse
@main.216.@search.39.IfTrue:
     mov                  rdi,        qword[rbp-80]
     add                  rdi,                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,           qword[rbx]
     mov                  r11,                  rdi
     mov                  r10,                    0
     mov                  r13,                  rsi
     cmp                  r10,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.276.@search.6.cmp_or
     cmp                  r10,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
@main.276.@search.6.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.277.@search.7.cmp_or
     cmp                  r11,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.277.@search.7.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.278.@search.8.cmp_or
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rbx,         qword[@make]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,                  r11
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                   15
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.278.@search.8.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.279.@search.4.IfTrue
	jmp	@main.280.@search.3.IfFalse
@main.279.@search.4.IfTrue:
     cmp                  r11,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.281.@search.12.cmp_and
     cmp                  r10,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.281.@search.12.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.282.@search.10.IfTrue
	jmp	@main.283.@search.9.IfFalse
@main.282.@search.10.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rbx,                   45
     sub                  rbx,                  r13
     mov        qword[rsi+16],                  rbx
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     add                  rbx,        qword[rsi+16]
     mov                  rdi,                  rbx
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.284.@search.16.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.284.@search.16.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.285.@search.17.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,           qword[rsi]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.285.@search.17.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.286.@search.18.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,         qword[rbx+8]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,         qword[rsi+8]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.286.@search.18.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.287.@search.19.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,        qword[rbx+16]
     add                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.287.@search.19.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.288.@search.20.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.288.@search.20.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.289.@search.21.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.289.@search.21.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.290.@search.14.IfTrue
	jmp	@main.291.@search.13.IfFalse
@main.290.@search.14.IfTrue:
     mov                  rbx,        qword[@count]
     mov                  rsi,        qword[@count]
     mov                  rsi,           qword[rsi]
     add                  rsi,                    1
     mov           qword[rbx],                  rsi
     mov                   r8,                    0
	jmp	@main.292.@search.24.ForCon
@main.293.@search.23.ForBody:
     mov                  r12,                    0
	jmp	@main.294.@search.28.ForCon
@main.295.@search.27.ForBody:
     mov                  rbx,         qword[@make]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
    push                   r8
    push                  r10
    push                  r11
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     pop                  r11
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
    push                  r11
    push                   r9
call	print
     pop                   r9
     pop                  r11
     pop                  r10
     pop                   r8
     mov                  rdi,         __const_str0
    push                   r8
    push                  r10
    push                  r11
    push                   r9
call	print
     pop                   r9
     pop                  r11
     pop                  r10
     pop                   r8
     add                  r12,                    1
@main.294.@search.28.ForCon:
     cmp                  r12,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.295.@search.27.ForBody
     mov                  rdi,         __const_str1
    push                   r8
    push                  r10
    push                  r11
    push                   r9
call	print
     pop                   r9
     pop                  r11
     pop                  r10
     pop                   r8
     add                   r8,                    1
@main.292.@search.24.ForCon:
     cmp                   r8,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.293.@search.23.ForBody
     mov                  rdi,         __const_str1
    push                  r11
    push                   r9
    push                  r10
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                  r10
     pop                   r9
     pop                  r11
	jmp	@main.296.@search.15.IfExit
@main.291.@search.13.IfFalse:
@main.296.@search.15.IfExit:
	jmp	@main.297.@search.11.IfExit
@main.283.@search.9.IfFalse:
     cmp                  r10,                    2
     mov                  rdi,                    0
    sete                  dil
     mov                  rsi,                  rdi
     cmp                  rsi,                    1
	je	@main.298.@search.31.IfTrue
	jmp	@main.299.@search.30.IfFalse
@main.298.@search.31.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov                  rbx,                   15
     sub                  rbx,           qword[rsi]
     mov                  r12,         qword[@make]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rsi,           qword[r12]
     sub                  rbx,         qword[rsi+8]
     mov            qword[r8],                  rbx
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    0
	je	@main.300.@search.36.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    0
@main.300.@search.36.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.301.@search.37.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[r12]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.301.@search.37.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.302.@search.34.IfTrue
	jmp	@main.303.@search.33.IfFalse
@main.302.@search.34.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[r12]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rsi,                  rdi
     cmp                  rsi,                    1
	je	@main.304.@search.39.IfTrue
	jmp	@main.305.@search.38.IfFalse
@main.304.@search.39.IfTrue:
     mov                  rdi,                  r11
     add                  rdi,                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,                  r13
     add                  rbx,           qword[r12]
     mov                  rsi,                    0
     mov                  rdx,                  rbx
    push                  r11
    push                   r9
    push                  r10
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                  r10
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
	jmp	@main.306.@search.40.IfExit
@main.305.@search.38.IfFalse:
     mov                  r12,                  r10
     add                  r12,                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,                  r13
     add                  rbx,           qword[rdi]
     mov                  rdi,                  r11
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                   r9
    push                  r10
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                  r10
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
@main.306.@search.40.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.307.@search.35.IfExit
@main.303.@search.33.IfFalse:
@main.307.@search.35.IfExit:
	jmp	@main.308.@search.32.IfExit
@main.299.@search.30.IfFalse:
     mov                   r8,                    1
	jmp	@main.309.@search.43.ForCon
@main.310.@search.42.ForBody:
     mov                  rbx,        qword[@color]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.311.@search.46.IfTrue
	jmp	@main.312.@search.45.IfFalse
@main.311.@search.46.IfTrue:
     mov                  rbx,        qword[@color]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                   r8
     cmp                  r10,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.313.@search.49.IfTrue
	jmp	@main.314.@search.48.IfFalse
@main.313.@search.49.IfTrue:
     mov                  rsi,                  r11
     add                  rsi,                    1
     mov                  rbx,                  r13
     add                  rbx,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,                    0
     mov                  rdx,                  rbx
    push                   r8
    push                  r10
    push                  r11
    push                   r9
call	search
     pop                   r9
     pop                  r11
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
	jmp	@main.315.@search.50.IfExit
@main.314.@search.48.IfFalse:
     mov                  rsi,                  r10
     add                  rsi,                    1
     mov                  rbx,                  r13
     add                  rbx,                   r8
     mov                  rdi,                  r11
     mov                  rdx,                  rbx
    push                   r8
    push                  r10
    push                  r11
    push                   r9
call	search
     pop                   r9
     pop                  r11
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
@main.315.@search.50.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     mov                  rbx,        qword[@color]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.316.@search.47.IfExit
@main.312.@search.45.IfFalse:
@main.316.@search.47.IfExit:
     add                   r8,                    1
@main.309.@search.43.ForCon:
     cmp                   r8,                    9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.310.@search.42.ForBody
@main.308.@search.32.IfExit:
@main.297.@search.11.IfExit:
	jmp	@main.317.@search.5.IfExit
@main.280.@search.3.IfFalse:
@main.317.@search.5.IfExit:
	jmp	@main.218.@search.40.IfExit
@main.217.@search.38.IfFalse:
     mov                  r12,        qword[rbp-88]
     add                  r12,                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,                   r9
     add                  rbx,           qword[rdi]
     mov                  rdi,        qword[rbp-80]
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                   r9
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                   r9
     mov                  rsi,                  rax
@main.218.@search.40.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.219.@search.35.IfExit
@main.215.@search.33.IfFalse:
@main.219.@search.35.IfExit:
	jmp	@main.220.@search.32.IfExit
@main.211.@search.30.IfFalse:
     mov                   r8,                    1
	jmp	@main.221.@search.43.ForCon
@main.222.@search.42.ForBody:
     mov                  rbx,        qword[@color]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.223.@search.46.IfTrue
	jmp	@main.224.@search.45.IfFalse
@main.223.@search.46.IfTrue:
     mov                  rbx,        qword[@color]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                   r8
     cmp        qword[rbp-88],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.225.@search.49.IfTrue
	jmp	@main.226.@search.48.IfFalse
@main.225.@search.49.IfTrue:
     mov                  rsi,        qword[rbp-80]
     add                  rsi,                    1
     mov                  rbx,                   r9
     add                  rbx,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,                    0
     mov                  rdx,                  rbx
    push                   r8
    push                   r9
call	search
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
	jmp	@main.227.@search.50.IfExit
@main.226.@search.48.IfFalse:
     mov                  rsi,        qword[rbp-88]
     add                  rsi,                    1
     mov                  rbx,                   r9
     add                  rbx,                   r8
     mov                  rdi,        qword[rbp-80]
     mov                  rdx,                  rbx
    push                   r8
    push                   r9
call	search
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
@main.227.@search.50.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     mov                  rbx,        qword[@color]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.228.@search.47.IfExit
@main.224.@search.45.IfFalse:
@main.228.@search.47.IfExit:
     add                   r8,                    1
@main.221.@search.43.ForCon:
     cmp                   r8,                    9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.222.@search.42.ForBody
@main.220.@search.32.IfExit:
@main.209.@search.11.IfExit:
	jmp	@main.229.@search.5.IfExit
@main.192.@search.3.IfFalse:
@main.229.@search.5.IfExit:
	jmp	@main.86.@search.40.IfExit
@main.85.@search.38.IfFalse:
     mov                  rdi,        qword[rbp-72]
     add                  rdi,                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,                  r14
     add                  rsi,           qword[rbx]
     mov                  r10,        qword[rbp-64]
     mov                   r9,                  rdi
     mov                  r13,                  rsi
     cmp                   r9,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.232.@search.6.cmp_or
     cmp                   r9,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
@main.232.@search.6.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.233.@search.7.cmp_or
     cmp                  r10,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.233.@search.7.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.234.@search.8.cmp_or
     mov                  rsi,                  r10
     sub                  rsi,                    1
     mov                  rbx,         qword[@make]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r10
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,                  r10
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                   15
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.234.@search.8.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.235.@search.4.IfTrue
	jmp	@main.236.@search.3.IfFalse
@main.235.@search.4.IfTrue:
     cmp                  r10,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.237.@search.12.cmp_and
     cmp                   r9,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.237.@search.12.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.238.@search.10.IfTrue
	jmp	@main.239.@search.9.IfFalse
@main.238.@search.10.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rbx,                   45
     sub                  rbx,                  r13
     mov        qword[rsi+16],                  rbx
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     add                  rbx,        qword[rsi+16]
     mov                  rdi,                  rbx
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.240.@search.16.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.240.@search.16.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.241.@search.17.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,           qword[rsi]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.241.@search.17.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.242.@search.18.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,         qword[rbx+8]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,         qword[rsi+8]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.242.@search.18.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.243.@search.19.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,        qword[rbx+16]
     add                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.243.@search.19.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.244.@search.20.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.244.@search.20.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.245.@search.21.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.245.@search.21.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.246.@search.14.IfTrue
	jmp	@main.247.@search.13.IfFalse
@main.246.@search.14.IfTrue:
     mov                  rbx,        qword[@count]
     mov                  rsi,        qword[@count]
     mov                  rsi,           qword[rsi]
     add                  rsi,                    1
     mov           qword[rbx],                  rsi
     mov                   r8,                    0
	jmp	@main.248.@search.24.ForCon
@main.249.@search.23.ForBody:
     mov                  r12,                    0
	jmp	@main.250.@search.28.ForCon
@main.251.@search.27.ForBody:
     mov                  rbx,         qword[@make]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
    push                   r9
    push                   r8
    push                  r10
    push                  rsi
call	toString
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
    push                   r8
    push                  r10
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                   r9
     mov                  rdi,         __const_str0
    push                   r9
    push                   r8
    push                  r10
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                   r9
     add                  r12,                    1
@main.250.@search.28.ForCon:
     cmp                  r12,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.251.@search.27.ForBody
     mov                  rdi,         __const_str1
    push                   r9
    push                   r8
    push                  r10
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                   r9
     add                   r8,                    1
@main.248.@search.24.ForCon:
     cmp                   r8,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.249.@search.23.ForBody
     mov                  rdi,         __const_str1
    push                   r9
    push                  r10
call	print
     pop                  r10
     pop                   r9
	jmp	@main.252.@search.15.IfExit
@main.247.@search.13.IfFalse:
@main.252.@search.15.IfExit:
	jmp	@main.253.@search.11.IfExit
@main.239.@search.9.IfFalse:
     cmp                   r9,                    2
     mov                  rdi,                    0
    sete                  dil
     mov                  rsi,                  rdi
     cmp                  rsi,                    1
	je	@main.254.@search.31.IfTrue
	jmp	@main.255.@search.30.IfFalse
@main.254.@search.31.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov                  rbx,                   15
     sub                  rbx,           qword[rsi]
     mov                  r12,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rsi,           qword[r12]
     sub                  rbx,         qword[rsi+8]
     mov            qword[r8],                  rbx
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    0
	je	@main.256.@search.36.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    0
@main.256.@search.36.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.257.@search.37.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[r12]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.257.@search.37.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.258.@search.34.IfTrue
	jmp	@main.259.@search.33.IfFalse
@main.258.@search.34.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[r12]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rsi,                  rdi
     cmp                  rsi,                    1
	je	@main.260.@search.39.IfTrue
	jmp	@main.261.@search.38.IfFalse
@main.260.@search.39.IfTrue:
     mov                  rdi,                  r10
     add                  rdi,                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,                  r13
     add                  rbx,           qword[r12]
     mov                  rsi,                    0
     mov                  rdx,                  rbx
    push                   r9
    push                  r10
call	search
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
	jmp	@main.262.@search.40.IfExit
@main.261.@search.38.IfFalse:
     mov                  r12,                   r9
     add                  r12,                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,                  r13
     add                  rbx,           qword[rdi]
     mov                  rdi,                  r10
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                   r9
    push                  r10
call	search
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
@main.262.@search.40.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.263.@search.35.IfExit
@main.259.@search.33.IfFalse:
@main.263.@search.35.IfExit:
	jmp	@main.264.@search.32.IfExit
@main.255.@search.30.IfFalse:
     mov                   r8,                    1
	jmp	@main.265.@search.43.ForCon
@main.266.@search.42.ForBody:
     mov                  rbx,        qword[@color]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.267.@search.46.IfTrue
	jmp	@main.268.@search.45.IfFalse
@main.267.@search.46.IfTrue:
     mov                  rbx,        qword[@color]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                   r8
     cmp                   r9,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.269.@search.49.IfTrue
	jmp	@main.270.@search.48.IfFalse
@main.269.@search.49.IfTrue:
     mov                  rsi,                  r10
     add                  rsi,                    1
     mov                  rbx,                  r13
     add                  rbx,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,                    0
     mov                  rdx,                  rbx
    push                   r9
    push                   r8
    push                  r10
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
	jmp	@main.271.@search.50.IfExit
@main.270.@search.48.IfFalse:
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rbx,                  r13
     add                  rbx,                   r8
     mov                  rdi,                  r10
     mov                  rdx,                  rbx
    push                   r9
    push                   r8
    push                  r10
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
@main.271.@search.50.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     mov                  rbx,        qword[@color]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.272.@search.47.IfExit
@main.268.@search.45.IfFalse:
@main.272.@search.47.IfExit:
     add                   r8,                    1
@main.265.@search.43.ForCon:
     cmp                   r8,                    9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.266.@search.42.ForBody
@main.264.@search.32.IfExit:
@main.253.@search.11.IfExit:
	jmp	@main.273.@search.5.IfExit
@main.236.@search.3.IfFalse:
@main.273.@search.5.IfExit:
@main.86.@search.40.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.87.@search.35.IfExit
@main.83.@search.33.IfFalse:
@main.87.@search.35.IfExit:
	jmp	@main.88.@search.32.IfExit
@main.79.@search.30.IfFalse:
     mov                   r8,                    1
	jmp	@main.89.@search.43.ForCon
@main.90.@search.42.ForBody:
     mov                  rbx,        qword[@color]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.91.@search.46.IfTrue
	jmp	@main.92.@search.45.IfFalse
@main.91.@search.46.IfTrue:
     mov                  rbx,        qword[@color]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                   r8
     cmp        qword[rbp-72],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.93.@search.49.IfTrue
	jmp	@main.94.@search.48.IfFalse
@main.93.@search.49.IfTrue:
     mov                  rsi,        qword[rbp-64]
     add                  rsi,                    1
     mov                  rbx,                  r14
     add                  rbx,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,                    0
     mov                  rdx,                  rbx
    push                   r8
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
	jmp	@main.95.@search.50.IfExit
@main.94.@search.48.IfFalse:
     mov                  rsi,        qword[rbp-72]
     add                  rsi,                    1
     mov                  rbx,                  r14
     add                  rbx,                   r8
     mov                  rdi,        qword[rbp-64]
     mov                  rdx,                  rbx
    push                   r8
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                   r8
     mov                  rsi,                  rax
@main.95.@search.50.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     mov                  rbx,        qword[@color]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.96.@search.47.IfExit
@main.92.@search.45.IfFalse:
@main.96.@search.47.IfExit:
     add                   r8,                    1
@main.89.@search.43.ForCon:
     cmp                   r8,                    9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.90.@search.42.ForBody
@main.88.@search.32.IfExit:
@main.77.@search.11.IfExit:
	jmp	@main.97.@search.5.IfExit
@main.60.@search.3.IfFalse:
@main.97.@search.5.IfExit:
	jmp	@main.42.@search.40.IfExit
@main.41.@search.38.IfFalse:
     mov                  rdi,        qword[rbp-40]
     add                  rdi,                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,                  r15
     add                  rsi,           qword[rbx]
     mov                  r14,        qword[rbp-32]
     mov                   r9,                  rdi
     mov                  r13,                  rsi
     cmp                   r9,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.100.@search.6.cmp_or
     cmp                   r9,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
@main.100.@search.6.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.101.@search.7.cmp_or
     cmp                  r14,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.101.@search.7.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.102.@search.8.cmp_or
     mov                  rsi,                  r14
     sub                  rsi,                    1
     mov                  rbx,         qword[@make]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r14
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,                  r14
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                   15
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.102.@search.8.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.103.@search.4.IfTrue
	jmp	@main.104.@search.3.IfFalse
@main.103.@search.4.IfTrue:
     cmp                  r14,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.105.@search.12.cmp_and
     cmp                   r9,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.105.@search.12.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.106.@search.10.IfTrue
	jmp	@main.107.@search.9.IfFalse
@main.106.@search.10.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rbx,                   45
     sub                  rbx,                  r13
     mov        qword[rsi+16],                  rbx
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     add                  rbx,        qword[rsi+16]
     mov                  rdi,                  rbx
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.108.@search.16.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.108.@search.16.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.109.@search.17.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,           qword[rsi]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.109.@search.17.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.110.@search.18.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,         qword[rbx+8]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,         qword[rsi+8]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.110.@search.18.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.111.@search.19.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,        qword[rbx+16]
     add                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.111.@search.19.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.112.@search.20.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.112.@search.20.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.113.@search.21.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.113.@search.21.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.114.@search.14.IfTrue
	jmp	@main.115.@search.13.IfFalse
@main.114.@search.14.IfTrue:
     mov                  rbx,        qword[@count]
     mov                  rsi,        qword[@count]
     mov                  rsi,           qword[rsi]
     add                  rsi,                    1
     mov           qword[rbx],                  rsi
     mov                   r8,                    0
	jmp	@main.116.@search.24.ForCon
@main.117.@search.23.ForBody:
     mov                  r12,                    0
	jmp	@main.118.@search.28.ForCon
@main.119.@search.27.ForBody:
     mov                  rbx,         qword[@make]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
    push                   r9
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
    push                   r8
call	print
     pop                   r8
     pop                   r9
     mov                  rdi,         __const_str0
    push                   r9
    push                   r8
call	print
     pop                   r8
     pop                   r9
     add                  r12,                    1
@main.118.@search.28.ForCon:
     cmp                  r12,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.119.@search.27.ForBody
     mov                  rdi,         __const_str1
    push                   r9
    push                   r8
call	print
     pop                   r8
     pop                   r9
     add                   r8,                    1
@main.116.@search.24.ForCon:
     cmp                   r8,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.117.@search.23.ForBody
     mov                  rdi,         __const_str1
    push                   r9
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                   r9
	jmp	@main.120.@search.15.IfExit
@main.115.@search.13.IfFalse:
@main.120.@search.15.IfExit:
	jmp	@main.121.@search.11.IfExit
@main.107.@search.9.IfFalse:
     cmp                   r9,                    2
     mov                  rdi,                    0
    sete                  dil
     mov                  rsi,                  rdi
     cmp                  rsi,                    1
	je	@main.122.@search.31.IfTrue
	jmp	@main.123.@search.30.IfFalse
@main.122.@search.31.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov                  rbx,                   15
     sub                  rbx,           qword[rsi]
     mov                  r12,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rsi,           qword[r12]
     sub                  rbx,         qword[rsi+8]
     mov            qword[r8],                  rbx
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    0
	je	@main.124.@search.36.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    0
@main.124.@search.36.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.125.@search.37.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[r12]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.125.@search.37.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.126.@search.34.IfTrue
	jmp	@main.127.@search.33.IfFalse
@main.126.@search.34.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[r12]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rsi,                  rdi
     cmp                  rsi,                    1
	je	@main.128.@search.39.IfTrue
	jmp	@main.129.@search.38.IfFalse
@main.128.@search.39.IfTrue:
     mov                  rdi,                  r14
     add                  rdi,                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,                  r13
     add                  rbx,           qword[r12]
     mov                  rsi,                    0
     mov                  rdx,                  rbx
    push                   r9
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                   r9
     mov                  rsi,                  rax
	jmp	@main.130.@search.40.IfExit
@main.129.@search.38.IfFalse:
     mov                  r12,                   r9
     add                  r12,                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,                  r13
     add                  rbx,           qword[rdi]
     mov                  rdi,                  r14
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                   r9
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                   r9
     mov                  rsi,                  rax
@main.130.@search.40.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.131.@search.35.IfExit
@main.127.@search.33.IfFalse:
@main.131.@search.35.IfExit:
	jmp	@main.132.@search.32.IfExit
@main.123.@search.30.IfFalse:
     mov                   r8,                    1
	jmp	@main.133.@search.43.ForCon
@main.134.@search.42.ForBody:
     mov                  rbx,        qword[@color]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.135.@search.46.IfTrue
	jmp	@main.136.@search.45.IfFalse
@main.135.@search.46.IfTrue:
     mov                  rbx,        qword[@color]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                   r8
     cmp                   r9,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.137.@search.49.IfTrue
	jmp	@main.138.@search.48.IfFalse
@main.137.@search.49.IfTrue:
     mov                  rsi,                  r14
     add                  rsi,                    1
     mov                  rbx,                  r13
     add                  rbx,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,                    0
     mov                  rdx,                  rbx
    push                   r9
    push                   r8
call	search
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
	jmp	@main.139.@search.50.IfExit
@main.138.@search.48.IfFalse:
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rbx,                  r13
     add                  rbx,                   r8
     mov                  rdi,                  r14
     mov                  rdx,                  rbx
    push                   r9
    push                   r8
call	search
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
@main.139.@search.50.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     mov                  rbx,        qword[@color]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.140.@search.47.IfExit
@main.136.@search.45.IfFalse:
@main.140.@search.47.IfExit:
     add                   r8,                    1
@main.133.@search.43.ForCon:
     cmp                   r8,                    9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.134.@search.42.ForBody
@main.132.@search.32.IfExit:
@main.121.@search.11.IfExit:
	jmp	@main.141.@search.5.IfExit
@main.104.@search.3.IfFalse:
@main.141.@search.5.IfExit:
@main.42.@search.40.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.43.@search.35.IfExit
@main.39.@search.33.IfFalse:
@main.43.@search.35.IfExit:
	jmp	@main.44.@search.32.IfExit
@main.35.@search.30.IfFalse:
     mov                  r14,                    1
	jmp	@main.45.@search.43.ForCon
@main.46.@search.42.ForBody:
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.47.@search.46.IfTrue
	jmp	@main.48.@search.45.IfFalse
@main.47.@search.46.IfTrue:
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                  r14
     cmp        qword[rbp-40],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.49.@search.49.IfTrue
	jmp	@main.50.@search.48.IfFalse
@main.49.@search.49.IfTrue:
     mov                  rbx,        qword[rbp-32]
     add                  rbx,                    1
     mov                  rsi,                  r15
     add                  rsi,                  r14
     mov                  r10,                  rbx
     mov                   r9,                    0
     mov                  r13,                  rsi
     cmp                   r9,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.144.@search.6.cmp_or
     cmp                   r9,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
@main.144.@search.6.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.145.@search.7.cmp_or
     cmp                  r10,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.145.@search.7.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.146.@search.8.cmp_or
     mov                  rsi,                  r10
     sub                  rsi,                    1
     mov                  rbx,         qword[@make]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r10
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,                  r10
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                   15
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.146.@search.8.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.147.@search.4.IfTrue
	jmp	@main.148.@search.3.IfFalse
@main.147.@search.4.IfTrue:
     cmp                  r10,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.149.@search.12.cmp_and
     cmp                   r9,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.149.@search.12.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.150.@search.10.IfTrue
	jmp	@main.151.@search.9.IfFalse
@main.150.@search.10.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rbx,                   45
     sub                  rbx,                  r13
     mov        qword[rsi+16],                  rbx
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     add                  rbx,        qword[rsi+16]
     mov                  rdi,                  rbx
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.152.@search.16.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.152.@search.16.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.153.@search.17.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,           qword[rsi]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.153.@search.17.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.154.@search.18.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,         qword[rbx+8]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,         qword[rsi+8]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.154.@search.18.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.155.@search.19.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,        qword[rbx+16]
     add                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.155.@search.19.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.156.@search.20.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.156.@search.20.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.157.@search.21.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     add                  rbx,        qword[rsi+16]
     cmp                  rbx,                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.157.@search.21.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.158.@search.14.IfTrue
	jmp	@main.159.@search.13.IfFalse
@main.158.@search.14.IfTrue:
     mov                  rbx,        qword[@count]
     mov                  rsi,        qword[@count]
     mov                  rsi,           qword[rsi]
     add                  rsi,                    1
     mov           qword[rbx],                  rsi
     mov                   r8,                    0
	jmp	@main.160.@search.24.ForCon
@main.161.@search.23.ForBody:
     mov                  r12,                    0
	jmp	@main.162.@search.28.ForCon
@main.163.@search.27.ForBody:
     mov                  rbx,         qword[@make]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
    push                  rsi
    push                   r8
    push                   r9
    push                  r10
call	toString
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  r10
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                  r10
     pop                   r9
     pop                   r8
     mov                  rdi,         __const_str0
    push                   r8
    push                   r9
    push                  r10
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                  r10
     pop                   r9
     pop                   r8
     add                  r12,                    1
@main.162.@search.28.ForCon:
     cmp                  r12,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.163.@search.27.ForBody
     mov                  rdi,         __const_str1
    push                   r8
    push                   r9
    push                  r10
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                  r10
     pop                   r9
     pop                   r8
     add                   r8,                    1
@main.160.@search.24.ForCon:
     cmp                   r8,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.161.@search.23.ForBody
     mov                  rdi,         __const_str1
    push                   r9
    push                  r10
call	print
     pop                  r10
     pop                   r9
	jmp	@main.164.@search.15.IfExit
@main.159.@search.13.IfFalse:
@main.164.@search.15.IfExit:
	jmp	@main.165.@search.11.IfExit
@main.151.@search.9.IfFalse:
     cmp                   r9,                    2
     mov                  rdi,                    0
    sete                  dil
     mov                  rsi,                  rdi
     cmp                  rsi,                    1
	je	@main.166.@search.31.IfTrue
	jmp	@main.167.@search.30.IfFalse
@main.166.@search.31.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov                  rbx,                   15
     sub                  rbx,           qword[rsi]
     mov                  r12,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rsi,           qword[r12]
     sub                  rbx,         qword[rsi+8]
     mov            qword[r8],                  rbx
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    0
	je	@main.168.@search.36.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    0
@main.168.@search.36.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.169.@search.37.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[r12]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.169.@search.37.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.170.@search.34.IfTrue
	jmp	@main.171.@search.33.IfFalse
@main.170.@search.34.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[r12]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rsi,                  rdi
     cmp                  rsi,                    1
	je	@main.172.@search.39.IfTrue
	jmp	@main.173.@search.38.IfFalse
@main.172.@search.39.IfTrue:
     mov                  rdi,                  r10
     add                  rdi,                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,                  r13
     add                  rbx,           qword[r12]
     mov                  rsi,                    0
     mov                  rdx,                  rbx
    push                   r9
    push                  r10
call	search
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
	jmp	@main.174.@search.40.IfExit
@main.173.@search.38.IfFalse:
     mov                  r12,                   r9
     add                  r12,                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,                  r13
     add                  rbx,           qword[rdi]
     mov                  rdi,                  r10
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                   r9
    push                  r10
call	search
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
@main.174.@search.40.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.175.@search.35.IfExit
@main.171.@search.33.IfFalse:
@main.175.@search.35.IfExit:
	jmp	@main.176.@search.32.IfExit
@main.167.@search.30.IfFalse:
     mov                   r8,                    1
	jmp	@main.177.@search.43.ForCon
@main.178.@search.42.ForBody:
     mov                  rbx,        qword[@color]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.179.@search.46.IfTrue
	jmp	@main.180.@search.45.IfFalse
@main.179.@search.46.IfTrue:
     mov                  rbx,        qword[@color]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                   r8
     cmp                   r9,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.181.@search.49.IfTrue
	jmp	@main.182.@search.48.IfFalse
@main.181.@search.49.IfTrue:
     mov                  rsi,                  r10
     add                  rsi,                    1
     mov                  rbx,                  r13
     add                  rbx,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,                    0
     mov                  rdx,                  rbx
    push                   r9
    push                   r8
    push                  r10
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
	jmp	@main.183.@search.50.IfExit
@main.182.@search.48.IfFalse:
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rbx,                  r13
     add                  rbx,                   r8
     mov                  rdi,                  r10
     mov                  rdx,                  rbx
    push                   r9
    push                   r8
    push                  r10
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
@main.183.@search.50.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     mov                  rbx,        qword[@color]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.184.@search.47.IfExit
@main.180.@search.45.IfFalse:
@main.184.@search.47.IfExit:
     add                   r8,                    1
@main.177.@search.43.ForCon:
     cmp                   r8,                    9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.178.@search.42.ForBody
@main.176.@search.32.IfExit:
@main.165.@search.11.IfExit:
	jmp	@main.185.@search.5.IfExit
@main.148.@search.3.IfFalse:
@main.185.@search.5.IfExit:
	jmp	@main.51.@search.50.IfExit
@main.50.@search.48.IfFalse:
     mov                  rsi,        qword[rbp-40]
     add                  rsi,                    1
     mov                  rbx,                  r15
     add                  rbx,                  r14
     mov                  rdi,        qword[rbp-32]
     mov                  rdx,                  rbx
call	search
     mov                  rsi,                  rax
@main.51.@search.50.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.52.@search.47.IfExit
@main.48.@search.45.IfFalse:
@main.52.@search.47.IfExit:
     add                  r14,                    1
@main.45.@search.43.ForCon:
     cmp                  r14,                    9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.46.@search.42.ForBody
@main.44.@search.32.IfExit:
@main.33.@search.11.IfExit:
	jmp	@main.53.@search.5.IfExit
@main.16.@search.3.IfFalse:
@main.53.@search.5.IfExit:
     mov                  rsi,        qword[@count]
     mov                  rdi,           qword[rsi]
    push                  rsi
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
call	println
     mov                  rax,                    0
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     pop                  rbx
     add                  rsp,                   88
     pop                  rbp
     ret


 section                 .bss
@make:
  	resq 		1
@color:
  	resq 		1
@count:
  	resq 		1
@i:
  	resq 		1
@j:
  	resq 		1


 section                .data
      dq                    1
__const_str0:
      db " ",0
      dq                    1
__const_str1:
      db "",10,"",0






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



