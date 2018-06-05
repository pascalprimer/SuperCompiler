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
	je	@search.6.cmp_or
     cmp                  r14,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@search.6.cmp_or
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
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     add                  rsi,        qword[rdi+16]
     cmp                  rsi,                   15
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@search.6.cmp_or:
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
	je	@search.10.cmp_and
     cmp                   r9,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@search.10.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@search.8.IfTrue
	jmp	@search.7.IfFalse
@search.8.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,                   45
     sub                  rsi,                  r13
     mov        qword[rbx+16],                  rsi
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,           qword[rbx]
     add                  rsi,        qword[rbx+16]
     mov                  r12,                  rsi
     mov                  rsi,         qword[@make]
     mov                  rdi,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,         qword[rbx+8]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,           qword[rbx]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,           qword[rbx]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[rdi+8]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,         qword[rbx+8]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,        qword[rdi+16]
     add                  rsi,        qword[rbx+16]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,           qword[rbx]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@search.14.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@search.12.IfTrue
	jmp	@search.11.IfFalse
@search.12.IfTrue:
     mov                  rbx,        qword[@count]
     mov                  rsi,        qword[@count]
     mov                  rsi,           qword[rsi]
     add                  rsi,                    1
     mov           qword[rbx],                  rsi
     mov                  r12,                    0
	jmp	@search.18.ForCon
@search.17.ForBody:
     mov                   r8,                    0
	jmp	@search.23.ForCon
@search.22.ForBody:
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
@search.23.ForCon:
     cmp                   r8,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@search.22.ForBody
     mov                  rdi,         __const_str1
    push                   r9
call	print
     pop                   r9
     add                  r12,                    1
@search.18.ForCon:
     cmp                  r12,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@search.17.ForBody
     mov                  rdi,         __const_str1
    push                   r9
call	print
     pop                   r9
	jmp	@search.13.IfExit
@search.11.IfFalse:
@search.13.IfExit:
	jmp	@search.9.IfExit
@search.7.IfFalse:
     cmp                   r9,                    2
     mov                  r12,                    0
    sete                 r12b
     mov                  rsi,                  r12
     cmp                  rsi,                    1
	je	@search.26.IfTrue
	jmp	@search.25.IfFalse
@search.26.IfTrue:
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
     mov                  rdi,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     sub                  rsi,         qword[rdi+8]
     mov            qword[r8],                  rsi
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
	je	@search.31.cmp_and
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
	je	@search.31.cmp_and
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
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@search.31.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@search.29.IfTrue
	jmp	@search.28.IfFalse
@search.29.IfTrue:
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
     mov           qword[rbx],                    1
     mov                  rsi,                  r12
     cmp                  rsi,                    1
	je	@search.33.IfTrue
	jmp	@search.32.IfFalse
@search.33.IfTrue:
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
	jmp	@search.34.IfExit
@search.32.IfFalse:
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
@search.34.IfExit:
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
	jmp	@search.30.IfExit
@search.28.IfFalse:
@search.30.IfExit:
	jmp	@search.27.IfExit
@search.25.IfFalse:
     mov                  r12,                    1
	jmp	@search.38.ForCon
@search.37.ForBody:
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@search.41.IfTrue
	jmp	@search.40.IfFalse
@search.41.IfTrue:
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
	je	@search.44.IfTrue
	jmp	@search.43.IfFalse
@search.44.IfTrue:
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
	jmp	@search.45.IfExit
@search.43.IfFalse:
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
@search.45.IfExit:
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
	jmp	@search.42.IfExit
@search.40.IfFalse:
@search.42.IfExit:
     add                  r12,                    1
@search.38.ForCon:
     cmp                  r12,                    9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@search.37.ForBody
@search.27.IfExit:
@search.9.IfExit:
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
     sub                  rsp,                    8
@origin.1.enter:
     mov                   r9,                  rdi
     mov                  rdi,                   r9
     mov                  rsi,                   r9
     add                  rdi,                    1
     shl                  rdi,                    3
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
    call               malloc
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
     mov                  rdi,                  rax
     mov           qword[rdi],                  rsi
     add                  rdi,                    8
     mov         qword[@make],                  rdi
     mov                  r10,                    0
	jmp	@origin.6.ForCon
@origin.5.ForBody:
     mov                  rdi,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                   r8,                   r9
     mov                  rsi,                   r9
     add                   r8,                    1
     shl                   r8,                    3
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     mov                  rdi,                   r8
    call               malloc
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
     mov                   r8,                  rax
     mov            qword[r8],                  rsi
     add                   r8,                    8
     mov           qword[rdi],                   r8
     mov                   r8,                    0
	jmp	@origin.11.ForCon
@origin.10.ForBody:
     mov                  rdi,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov           qword[rdi],                    0
     add                   r8,                    1
@origin.11.ForCon:
     cmp                   r8,                   r9
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@origin.10.ForBody
     add                  r10,                    1
@origin.6.ForCon:
     cmp                  r10,                   r9
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@origin.5.ForBody
     add                  rsp,                    8
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
     sub                  rsp,                   96
    push                  rbx
    push                  r12
    push                  r14
    push                  r13
    push                  r15
@main.1.enter:
     mov                   r8,                    3
     mov                  rbx,                   r8
     mov                  rsi,                   r8
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
     add                  rbx,                    8
     mov         qword[@make],                  rbx
     mov                  r12,                    0
	jmp	@main.6.@origin.6.ForCon
@main.7.@origin.5.ForBody:
     mov                  rdi,         qword[@make]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,                   r8
     mov                  rsi,                   r8
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
     add                  rbx,                    8
     mov           qword[rdi],                  rbx
     mov                  rbx,                    0
	jmp	@main.8.@origin.11.ForCon
@main.9.@origin.10.ForBody:
     mov                  rdi,         qword[@make]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov           qword[rdi],                    0
     add                  rbx,                    1
@main.8.@origin.11.ForCon:
     cmp                  rbx,                   r8
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.9.@origin.10.ForBody
     add                  r12,                    1
@main.6.@origin.6.ForCon:
     cmp                  r12,                   r8
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.7.@origin.5.ForBody
     mov        qword[rbp-16],                    0
     mov        qword[rbp-24],                    0
     mov        qword[rbp-32],                    0
     cmp        qword[rbp-24],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.12.@search.6.cmp_or
     cmp        qword[rbp-24],                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.12.@search.6.cmp_or
     cmp        qword[rbp-16],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.12.@search.6.cmp_or
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                    1
     mov                  rbx,         qword[@make]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     add                  rsi,        qword[rdi+16]
     cmp                  rsi,                   15
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.12.@search.6.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.13.@search.4.IfTrue
	jmp	@main.14.@search.3.IfFalse
@main.13.@search.4.IfTrue:
     cmp        qword[rbp-16],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.15.@search.10.cmp_and
     cmp        qword[rbp-24],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.15.@search.10.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.16.@search.8.IfTrue
	jmp	@main.17.@search.7.IfFalse
@main.16.@search.8.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,                   45
     sub                  rsi,        qword[rbp-32]
     mov        qword[rbx+16],                  rsi
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,           qword[rbx]
     add                  rsi,        qword[rbx+16]
     mov                  r12,                  rsi
     mov                  rsi,         qword[@make]
     mov                  rdi,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,         qword[rbx+8]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.18.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.18.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,           qword[rbx]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,           qword[rbx]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.18.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[rdi+8]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,         qword[rbx+8]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.18.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,        qword[rdi+16]
     add                  rsi,        qword[rbx+16]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.18.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.18.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,           qword[rbx]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.18.@search.14.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.19.@search.12.IfTrue
	jmp	@main.20.@search.11.IfFalse
@main.19.@search.12.IfTrue:
     mov                  rbx,        qword[@count]
     mov                  rsi,        qword[@count]
     mov                  rsi,           qword[rsi]
     add                  rsi,                    1
     mov           qword[rbx],                  rsi
     mov                  r14,                    0
	jmp	@main.21.@search.18.ForCon
@main.22.@search.17.ForBody:
     mov                  rbx,                    0
	jmp	@main.23.@search.23.ForCon
@main.24.@search.22.ForBody:
     mov                  rdi,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
    push                  rsi
call	toString
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     mov                  rdi,         __const_str0
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     add                  rbx,                    1
@main.23.@search.23.ForCon:
     cmp                  rbx,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.24.@search.22.ForBody
     mov                  rdi,         __const_str1
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     add                  r14,                    1
@main.21.@search.18.ForCon:
     cmp                  r14,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.22.@search.17.ForBody
     mov                  rdi,         __const_str1
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
	jmp	@main.25.@search.13.IfExit
@main.20.@search.11.IfFalse:
@main.25.@search.13.IfExit:
	jmp	@main.26.@search.9.IfExit
@main.17.@search.7.IfFalse:
     cmp        qword[rbp-24],                    2
     mov                  r12,                    0
    sete                 r12b
     mov                  rsi,                  r12
     cmp                  rsi,                    1
	je	@main.27.@search.26.IfTrue
	jmp	@main.28.@search.25.IfFalse
@main.27.@search.26.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
     mov                  rsi,        qword[rbp-24]
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov                  rbx,                   15
     sub                  rbx,           qword[rsi]
     mov                  rdi,         qword[@make]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     sub                  rsi,         qword[rdi+8]
     mov            qword[r8],                  rsi
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-24]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    0
	je	@main.29.@search.31.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-24]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    0
	je	@main.29.@search.31.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,        qword[rbp-24]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.29.@search.31.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.30.@search.29.IfTrue
	jmp	@main.31.@search.28.IfFalse
@main.30.@search.29.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,        qword[rbp-24]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rsi,                  r12
     cmp                  rsi,                    1
	je	@main.32.@search.33.IfTrue
	jmp	@main.33.@search.32.IfFalse
@main.32.@search.33.IfTrue:
     mov                  rbx,        qword[rbp-16]
     add                  rbx,                    1
     mov                  rdi,         qword[@make]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,        qword[rbp-24]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,        qword[rbp-32]
     add                  rsi,           qword[rdi]
     mov        qword[rbp-56],                  rbx
     mov        qword[rbp-64],                    0
     mov                  r15,                  rsi
     cmp        qword[rbp-64],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.48.@search.6.cmp_or
     cmp        qword[rbp-64],                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.48.@search.6.cmp_or
     cmp        qword[rbp-56],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.48.@search.6.cmp_or
     mov                  rsi,        qword[rbp-56]
     sub                  rsi,                    1
     mov                  rbx,         qword[@make]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-56]
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,        qword[rbp-56]
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     add                  rsi,        qword[rdi+16]
     cmp                  rsi,                   15
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.48.@search.6.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.49.@search.4.IfTrue
	jmp	@main.50.@search.3.IfFalse
@main.49.@search.4.IfTrue:
     cmp        qword[rbp-56],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.51.@search.10.cmp_and
     cmp        qword[rbp-64],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.51.@search.10.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.52.@search.8.IfTrue
	jmp	@main.53.@search.7.IfFalse
@main.52.@search.8.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,                   45
     sub                  rsi,                  r15
     mov        qword[rbx+16],                  rsi
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,           qword[rbx]
     add                  rsi,        qword[rbx+16]
     mov                  r12,                  rsi
     mov                  rsi,         qword[@make]
     mov                  rdi,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,         qword[rbx+8]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.54.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.54.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,           qword[rbx]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,           qword[rbx]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.54.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[rdi+8]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,         qword[rbx+8]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.54.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,        qword[rdi+16]
     add                  rsi,        qword[rbx+16]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.54.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.54.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,           qword[rbx]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.54.@search.14.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.55.@search.12.IfTrue
	jmp	@main.56.@search.11.IfFalse
@main.55.@search.12.IfTrue:
     mov                  rbx,        qword[@count]
     mov                  rsi,        qword[@count]
     mov                  rsi,           qword[rsi]
     add                  rsi,                    1
     mov           qword[rbx],                  rsi
     mov                  r12,                    0
	jmp	@main.57.@search.18.ForCon
@main.58.@search.17.ForBody:
     mov                  rbx,                    0
	jmp	@main.59.@search.23.ForCon
@main.60.@search.22.ForBody:
     mov                  rdi,         qword[@make]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
    push                  rsi
call	toString
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     mov                  rdi,         __const_str0
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     add                  rbx,                    1
@main.59.@search.23.ForCon:
     cmp                  rbx,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.60.@search.22.ForBody
     mov                  rdi,         __const_str1
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     add                  r12,                    1
@main.57.@search.18.ForCon:
     cmp                  r12,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.58.@search.17.ForBody
     mov                  rdi,         __const_str1
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
	jmp	@main.61.@search.13.IfExit
@main.56.@search.11.IfFalse:
@main.61.@search.13.IfExit:
	jmp	@main.62.@search.9.IfExit
@main.53.@search.7.IfFalse:
     cmp        qword[rbp-64],                    2
     mov                  r12,                    0
    sete                 r12b
     mov                  rsi,                  r12
     cmp                  rsi,                    1
	je	@main.63.@search.26.IfTrue
	jmp	@main.64.@search.25.IfFalse
@main.63.@search.26.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov                  rbx,                   15
     sub                  rbx,           qword[rsi]
     mov                  rdi,         qword[@make]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     sub                  rsi,         qword[rdi+8]
     mov            qword[r8],                  rsi
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    0
	je	@main.65.@search.31.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    0
	je	@main.65.@search.31.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.65.@search.31.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.66.@search.29.IfTrue
	jmp	@main.67.@search.28.IfFalse
@main.66.@search.29.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rsi,                  r12
     cmp                  rsi,                    1
	je	@main.68.@search.33.IfTrue
	jmp	@main.69.@search.32.IfFalse
@main.68.@search.33.IfTrue:
     mov                  rbx,        qword[rbp-56]
     add                  rbx,                    1
     mov                  rdi,         qword[@make]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,                  r15
     add                  rsi,           qword[rdi]
     mov        qword[rbp-72],                  rbx
     mov        qword[rbp-80],                    0
     mov                  r14,                  rsi
     cmp        qword[rbp-80],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.156.@search.6.cmp_or
     cmp        qword[rbp-80],                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.156.@search.6.cmp_or
     cmp        qword[rbp-72],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.156.@search.6.cmp_or
     mov                  rsi,        qword[rbp-72]
     sub                  rsi,                    1
     mov                  rbx,         qword[@make]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-72]
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,        qword[rbp-72]
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     add                  rsi,        qword[rdi+16]
     cmp                  rsi,                   15
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.156.@search.6.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.157.@search.4.IfTrue
	jmp	@main.158.@search.3.IfFalse
@main.157.@search.4.IfTrue:
     cmp        qword[rbp-72],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.159.@search.10.cmp_and
     cmp        qword[rbp-80],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.159.@search.10.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.160.@search.8.IfTrue
	jmp	@main.161.@search.7.IfFalse
@main.160.@search.8.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,                   45
     sub                  rsi,                  r14
     mov        qword[rbx+16],                  rsi
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,           qword[rbx]
     add                  rsi,        qword[rbx+16]
     mov                  r12,                  rsi
     mov                  rsi,         qword[@make]
     mov                  rdi,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,         qword[rbx+8]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.162.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.162.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,           qword[rbx]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,           qword[rbx]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.162.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[rdi+8]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,         qword[rbx+8]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.162.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,        qword[rdi+16]
     add                  rsi,        qword[rbx+16]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.162.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.162.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,           qword[rbx]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.162.@search.14.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.163.@search.12.IfTrue
	jmp	@main.164.@search.11.IfFalse
@main.163.@search.12.IfTrue:
     mov                  rbx,        qword[@count]
     mov                  rsi,        qword[@count]
     mov                  rsi,           qword[rsi]
     add                  rsi,                    1
     mov           qword[rbx],                  rsi
     mov                  r12,                    0
	jmp	@main.165.@search.18.ForCon
@main.166.@search.17.ForBody:
     mov                  rbx,                    0
	jmp	@main.167.@search.23.ForCon
@main.168.@search.22.ForBody:
     mov                  rdi,         qword[@make]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
    push                  rsi
call	toString
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     mov                  rdi,         __const_str0
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     add                  rbx,                    1
@main.167.@search.23.ForCon:
     cmp                  rbx,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.168.@search.22.ForBody
     mov                  rdi,         __const_str1
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     add                  r12,                    1
@main.165.@search.18.ForCon:
     cmp                  r12,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.166.@search.17.ForBody
     mov                  rdi,         __const_str1
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
	jmp	@main.169.@search.13.IfExit
@main.164.@search.11.IfFalse:
@main.169.@search.13.IfExit:
	jmp	@main.170.@search.9.IfExit
@main.161.@search.7.IfFalse:
     cmp        qword[rbp-80],                    2
     mov                  r12,                    0
    sete                 r12b
     mov                  rsi,                  r12
     cmp                  rsi,                    1
	je	@main.171.@search.26.IfTrue
	jmp	@main.172.@search.25.IfFalse
@main.171.@search.26.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov                  rbx,                   15
     sub                  rbx,           qword[rsi]
     mov                  rdi,         qword[@make]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     sub                  rsi,         qword[rdi+8]
     mov            qword[r8],                  rsi
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    0
	je	@main.173.@search.31.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    0
	je	@main.173.@search.31.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.173.@search.31.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.174.@search.29.IfTrue
	jmp	@main.175.@search.28.IfFalse
@main.174.@search.29.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rsi,                  r12
     cmp                  rsi,                    1
	je	@main.176.@search.33.IfTrue
	jmp	@main.177.@search.32.IfFalse
@main.176.@search.33.IfTrue:
     mov                  rbx,        qword[rbp-72]
     add                  rbx,                    1
     mov                  rdi,         qword[@make]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,                  r14
     add                  rsi,           qword[rdi]
     mov        qword[rbp-88],                  rbx
     mov                  r11,                    0
     mov                   r9,                  rsi
     cmp                  r11,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.228.@search.6.cmp_or
     cmp                  r11,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.228.@search.6.cmp_or
     cmp        qword[rbp-88],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.228.@search.6.cmp_or
     mov                  rsi,        qword[rbp-88]
     sub                  rsi,                    1
     mov                  rbx,         qword[@make]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-88]
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,        qword[rbp-88]
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     add                  rsi,        qword[rdi+16]
     cmp                  rsi,                   15
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.228.@search.6.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.229.@search.4.IfTrue
	jmp	@main.230.@search.3.IfFalse
@main.229.@search.4.IfTrue:
     cmp        qword[rbp-88],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.231.@search.10.cmp_and
     cmp                  r11,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.231.@search.10.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.232.@search.8.IfTrue
	jmp	@main.233.@search.7.IfFalse
@main.232.@search.8.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,                   45
     sub                  rsi,                   r9
     mov        qword[rbx+16],                  rsi
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,           qword[rbx]
     add                  rsi,        qword[rbx+16]
     mov                  r12,                  rsi
     mov                  rsi,         qword[@make]
     mov                  rdi,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,         qword[rbx+8]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.234.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.234.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,           qword[rbx]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,           qword[rbx]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.234.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[rdi+8]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,         qword[rbx+8]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.234.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,        qword[rdi+16]
     add                  rsi,        qword[rbx+16]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.234.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.234.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,           qword[rbx]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.234.@search.14.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.235.@search.12.IfTrue
	jmp	@main.236.@search.11.IfFalse
@main.235.@search.12.IfTrue:
     mov                  rbx,        qword[@count]
     mov                  rsi,        qword[@count]
     mov                  rsi,           qword[rsi]
     add                  rsi,                    1
     mov           qword[rbx],                  rsi
     mov                  r12,                    0
	jmp	@main.237.@search.18.ForCon
@main.238.@search.17.ForBody:
     mov                  rbx,                    0
	jmp	@main.239.@search.23.ForCon
@main.240.@search.22.ForBody:
     mov                  rdi,         qword[@make]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
    push                  r11
    push                  rsi
    push                   r9
call	toString
     pop                   r9
     pop                  rsi
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r11
    push                   r9
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                   r9
     pop                  r11
     mov                  rdi,         __const_str0
    push                  r11
    push                   r9
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                   r9
     pop                  r11
     add                  rbx,                    1
@main.239.@search.23.ForCon:
     cmp                  rbx,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.240.@search.22.ForBody
     mov                  rdi,         __const_str1
    push                  r11
    push                   r9
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                   r9
     pop                  r11
     add                  r12,                    1
@main.237.@search.18.ForCon:
     cmp                  r12,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.238.@search.17.ForBody
     mov                  rdi,         __const_str1
    push                  r11
    push                   r9
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                   r9
     pop                  r11
	jmp	@main.241.@search.13.IfExit
@main.236.@search.11.IfFalse:
@main.241.@search.13.IfExit:
	jmp	@main.242.@search.9.IfExit
@main.233.@search.7.IfFalse:
     cmp                  r11,                    2
     mov                  r12,                    0
    sete                 r12b
     mov                  rsi,                  r12
     cmp                  rsi,                    1
	je	@main.243.@search.26.IfTrue
	jmp	@main.244.@search.25.IfFalse
@main.243.@search.26.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov                  rbx,                   15
     sub                  rbx,           qword[rsi]
     mov                  rdi,         qword[@make]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     sub                  rsi,         qword[rdi+8]
     mov            qword[r8],                  rsi
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    0
	je	@main.245.@search.31.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    0
	je	@main.245.@search.31.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.245.@search.31.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.246.@search.29.IfTrue
	jmp	@main.247.@search.28.IfFalse
@main.246.@search.29.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rsi,                  r12
     cmp                  rsi,                    1
	je	@main.248.@search.33.IfTrue
	jmp	@main.249.@search.32.IfFalse
@main.248.@search.33.IfTrue:
     mov                  rbx,        qword[rbp-88]
     add                  rbx,                    1
     mov                  rdi,         qword[@make]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,                   r9
     add                  rsi,           qword[rdi]
     mov        qword[rbp-96],                  rbx
     mov                  r10,                    0
     mov                  r13,                  rsi
     cmp                  r10,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.264.@search.6.cmp_or
     cmp                  r10,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.264.@search.6.cmp_or
     cmp        qword[rbp-96],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.264.@search.6.cmp_or
     mov                  rsi,        qword[rbp-96]
     sub                  rsi,                    1
     mov                  rbx,         qword[@make]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-96]
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     mov                  rbx,           qword[rbx]
     add                  rbx,         qword[rsi+8]
     mov                  rsi,        qword[rbp-96]
     sub                  rsi,                    1
     mov                  rdi,         qword[@make]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     add                  rsi,        qword[rdi+16]
     cmp                  rsi,                   15
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.264.@search.6.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.265.@search.4.IfTrue
	jmp	@main.266.@search.3.IfFalse
@main.265.@search.4.IfTrue:
     cmp        qword[rbp-96],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.267.@search.10.cmp_and
     cmp                  r10,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.267.@search.10.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.268.@search.8.IfTrue
	jmp	@main.269.@search.7.IfFalse
@main.268.@search.8.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,                   45
     sub                  rsi,                  r13
     mov        qword[rbx+16],                  rsi
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,           qword[rbx]
     add                  rsi,        qword[rbx+16]
     mov                  r12,                  rsi
     mov                  rsi,         qword[@make]
     mov                  rdi,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,         qword[rbx+8]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.270.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.270.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,           qword[rbx]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,           qword[rbx]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.270.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[rdi+8]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,         qword[rbx+8]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.270.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,        qword[rdi+16]
     add                  rsi,        qword[rbx+16]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.270.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.270.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,           qword[rbx]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.270.@search.14.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.271.@search.12.IfTrue
	jmp	@main.272.@search.11.IfFalse
@main.271.@search.12.IfTrue:
     mov                  rbx,        qword[@count]
     mov                  rsi,        qword[@count]
     mov                  rsi,           qword[rsi]
     add                  rsi,                    1
     mov           qword[rbx],                  rsi
     mov                  r12,                    0
	jmp	@main.273.@search.18.ForCon
@main.274.@search.17.ForBody:
     mov                  rbx,                    0
	jmp	@main.275.@search.23.ForCon
@main.276.@search.22.ForBody:
     mov                  rdi,         qword[@make]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
    push                  r10
    push                  r11
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                   r9
call	print
     pop                   r9
     pop                  r11
     pop                  r10
     mov                  rdi,         __const_str0
    push                  r10
    push                  r11
    push                   r9
call	print
     pop                   r9
     pop                  r11
     pop                  r10
     add                  rbx,                    1
@main.275.@search.23.ForCon:
     cmp                  rbx,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.276.@search.22.ForBody
     mov                  rdi,         __const_str1
    push                  r10
    push                  r11
    push                   r9
call	print
     pop                   r9
     pop                  r11
     pop                  r10
     add                  r12,                    1
@main.273.@search.18.ForCon:
     cmp                  r12,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.274.@search.17.ForBody
     mov                  rdi,         __const_str1
    push                  r10
    push                  r11
    push                   r9
call	print
     pop                   r9
     pop                  r11
     pop                  r10
	jmp	@main.277.@search.13.IfExit
@main.272.@search.11.IfFalse:
@main.277.@search.13.IfExit:
	jmp	@main.278.@search.9.IfExit
@main.269.@search.7.IfFalse:
     cmp                  r10,                    2
     mov                  r12,                    0
    sete                 r12b
     mov                  rsi,                  r12
     cmp                  rsi,                    1
	je	@main.279.@search.26.IfTrue
	jmp	@main.280.@search.25.IfFalse
@main.279.@search.26.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-96]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-96]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov                  rbx,                   15
     sub                  rbx,           qword[rsi]
     mov                  rdi,         qword[@make]
     mov                  rsi,        qword[rbp-96]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     sub                  rsi,         qword[rdi+8]
     mov            qword[r8],                  rsi
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-96]
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
	je	@main.281.@search.31.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-96]
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
	je	@main.281.@search.31.cmp_and
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-96]
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
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.281.@search.31.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.282.@search.29.IfTrue
	jmp	@main.283.@search.28.IfFalse
@main.282.@search.29.IfTrue:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-96]
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
     mov           qword[rbx],                    1
     mov                  rsi,                  r12
     cmp                  rsi,                    1
	je	@main.284.@search.33.IfTrue
	jmp	@main.285.@search.32.IfFalse
@main.284.@search.33.IfTrue:
     mov                  rdi,        qword[rbp-96]
     add                  rdi,                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-96]
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
    push                  r10
    push                  r11
    push                   r9
call	search
     pop                   r9
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
	jmp	@main.286.@search.34.IfExit
@main.285.@search.32.IfFalse:
     mov                  r12,                  r10
     add                  r12,                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-96]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,                  r13
     add                  rbx,           qword[rdi]
     mov                  rdi,        qword[rbp-96]
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r10
    push                  r11
    push                   r9
call	search
     pop                   r9
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
@main.286.@search.34.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-96]
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
	jmp	@main.287.@search.30.IfExit
@main.283.@search.28.IfFalse:
@main.287.@search.30.IfExit:
	jmp	@main.288.@search.27.IfExit
@main.280.@search.25.IfFalse:
     mov                  r12,                    1
	jmp	@main.289.@search.38.ForCon
@main.290.@search.37.ForBody:
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.291.@search.41.IfTrue
	jmp	@main.292.@search.40.IfFalse
@main.291.@search.41.IfTrue:
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-96]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                  r12
     cmp                  r10,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.293.@search.44.IfTrue
	jmp	@main.294.@search.43.IfFalse
@main.293.@search.44.IfTrue:
     mov                  rsi,        qword[rbp-96]
     add                  rsi,                    1
     mov                  rbx,                  r13
     add                  rbx,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                    0
     mov                  rdx,                  rbx
    push                  r10
    push                  r11
    push                   r9
call	search
     pop                   r9
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
	jmp	@main.295.@search.45.IfExit
@main.294.@search.43.IfFalse:
     mov                  rsi,                  r10
     add                  rsi,                    1
     mov                  rbx,                  r13
     add                  rbx,                  r12
     mov                  rdi,        qword[rbp-96]
     mov                  rdx,                  rbx
    push                  r10
    push                  r11
    push                   r9
call	search
     pop                   r9
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
@main.295.@search.45.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-96]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.296.@search.42.IfExit
@main.292.@search.40.IfFalse:
@main.296.@search.42.IfExit:
     add                  r12,                    1
@main.289.@search.38.ForCon:
     cmp                  r12,                    9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.290.@search.37.ForBody
@main.288.@search.27.IfExit:
@main.278.@search.9.IfExit:
	jmp	@main.297.@search.5.IfExit
@main.266.@search.3.IfFalse:
@main.297.@search.5.IfExit:
	jmp	@main.250.@search.34.IfExit
@main.249.@search.32.IfFalse:
     mov                  r12,                  r11
     add                  r12,                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,                   r9
     add                  rbx,           qword[rdi]
     mov                  rdi,        qword[rbp-88]
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
    push                  r11
    push                   r9
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
@main.250.@search.34.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.251.@search.30.IfExit
@main.247.@search.28.IfFalse:
@main.251.@search.30.IfExit:
	jmp	@main.252.@search.27.IfExit
@main.244.@search.25.IfFalse:
     mov                  r12,                    1
	jmp	@main.253.@search.38.ForCon
@main.254.@search.37.ForBody:
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.255.@search.41.IfTrue
	jmp	@main.256.@search.40.IfFalse
@main.255.@search.41.IfTrue:
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                  r12
     cmp                  r11,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.257.@search.44.IfTrue
	jmp	@main.258.@search.43.IfFalse
@main.257.@search.44.IfTrue:
     mov                  rsi,        qword[rbp-88]
     add                  rsi,                    1
     mov                  rbx,                   r9
     add                  rbx,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                    0
     mov                  rdx,                  rbx
    push                  r11
    push                   r9
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
	jmp	@main.259.@search.45.IfExit
@main.258.@search.43.IfFalse:
     mov                  rsi,                  r11
     add                  rsi,                    1
     mov                  rbx,                   r9
     add                  rbx,                  r12
     mov                  rdi,        qword[rbp-88]
     mov                  rdx,                  rbx
    push                  r11
    push                   r9
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
@main.259.@search.45.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-88]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.260.@search.42.IfExit
@main.256.@search.40.IfFalse:
@main.260.@search.42.IfExit:
     add                  r12,                    1
@main.253.@search.38.ForCon:
     cmp                  r12,                    9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.254.@search.37.ForBody
@main.252.@search.27.IfExit:
@main.242.@search.9.IfExit:
	jmp	@main.261.@search.5.IfExit
@main.230.@search.3.IfFalse:
@main.261.@search.5.IfExit:
	jmp	@main.178.@search.34.IfExit
@main.177.@search.32.IfFalse:
     mov                  r12,        qword[rbp-80]
     add                  r12,                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,                  r14
     add                  rbx,           qword[rdi]
     mov                  rdi,        qword[rbp-72]
     mov                  rsi,                  r12
     mov                  rdx,                  rbx
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     mov                  rsi,                  rax
@main.178.@search.34.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.179.@search.30.IfExit
@main.175.@search.28.IfFalse:
@main.179.@search.30.IfExit:
	jmp	@main.180.@search.27.IfExit
@main.172.@search.25.IfFalse:
     mov                  r12,                    1
	jmp	@main.181.@search.38.ForCon
@main.182.@search.37.ForBody:
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.183.@search.41.IfTrue
	jmp	@main.184.@search.40.IfFalse
@main.183.@search.41.IfTrue:
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                  r12
     cmp        qword[rbp-80],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.185.@search.44.IfTrue
	jmp	@main.186.@search.43.IfFalse
@main.185.@search.44.IfTrue:
     mov                  rsi,        qword[rbp-72]
     add                  rsi,                    1
     mov                  rbx,                  r14
     add                  rbx,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                    0
     mov                  rdx,                  rbx
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     mov                  rsi,                  rax
	jmp	@main.187.@search.45.IfExit
@main.186.@search.43.IfFalse:
     mov                  rsi,        qword[rbp-80]
     add                  rsi,                    1
     mov                  rbx,                  r14
     add                  rbx,                  r12
     mov                  rdi,        qword[rbp-72]
     mov                  rdx,                  rbx
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     mov                  rsi,                  rax
@main.187.@search.45.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-72]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-80]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.188.@search.42.IfExit
@main.184.@search.40.IfFalse:
@main.188.@search.42.IfExit:
     add                  r12,                    1
@main.181.@search.38.ForCon:
     cmp                  r12,                    9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.182.@search.37.ForBody
@main.180.@search.27.IfExit:
@main.170.@search.9.IfExit:
	jmp	@main.189.@search.5.IfExit
@main.158.@search.3.IfFalse:
@main.189.@search.5.IfExit:
	jmp	@main.70.@search.34.IfExit
@main.69.@search.32.IfFalse:
     mov                  rbx,        qword[rbp-64]
     add                  rbx,                    1
     mov                  rdi,         qword[@make]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,                  r15
     add                  rsi,           qword[rdi]
     mov                  r14,        qword[rbp-56]
     mov                   r9,                  rbx
     mov                  r13,                  rsi
     cmp                   r9,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.192.@search.6.cmp_or
     cmp                   r9,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.192.@search.6.cmp_or
     cmp                  r14,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.192.@search.6.cmp_or
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
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     add                  rsi,        qword[rdi+16]
     cmp                  rsi,                   15
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.192.@search.6.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.193.@search.4.IfTrue
	jmp	@main.194.@search.3.IfFalse
@main.193.@search.4.IfTrue:
     cmp                  r14,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.195.@search.10.cmp_and
     cmp                   r9,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.195.@search.10.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.196.@search.8.IfTrue
	jmp	@main.197.@search.7.IfFalse
@main.196.@search.8.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,                   45
     sub                  rsi,                  r13
     mov        qword[rbx+16],                  rsi
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,           qword[rbx]
     add                  rsi,        qword[rbx+16]
     mov                  r12,                  rsi
     mov                  rsi,         qword[@make]
     mov                  rdi,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,         qword[rbx+8]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.198.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.198.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,           qword[rbx]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,           qword[rbx]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.198.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[rdi+8]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,         qword[rbx+8]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.198.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,        qword[rdi+16]
     add                  rsi,        qword[rbx+16]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.198.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.198.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,           qword[rbx]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.198.@search.14.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.199.@search.12.IfTrue
	jmp	@main.200.@search.11.IfFalse
@main.199.@search.12.IfTrue:
     mov                  rbx,        qword[@count]
     mov                  rsi,        qword[@count]
     mov                  rsi,           qword[rsi]
     add                  rsi,                    1
     mov           qword[rbx],                  rsi
     mov                  r12,                    0
	jmp	@main.201.@search.18.ForCon
@main.202.@search.17.ForBody:
     mov                  rbx,                    0
	jmp	@main.203.@search.23.ForCon
@main.204.@search.22.ForBody:
     mov                  rdi,         qword[@make]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
call	print
     pop                   r9
     mov                  rdi,         __const_str0
    push                   r9
call	print
     pop                   r9
     add                  rbx,                    1
@main.203.@search.23.ForCon:
     cmp                  rbx,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.204.@search.22.ForBody
     mov                  rdi,         __const_str1
    push                   r9
call	print
     pop                   r9
     add                  r12,                    1
@main.201.@search.18.ForCon:
     cmp                  r12,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.202.@search.17.ForBody
     mov                  rdi,         __const_str1
    push                   r9
call	print
     pop                   r9
	jmp	@main.205.@search.13.IfExit
@main.200.@search.11.IfFalse:
@main.205.@search.13.IfExit:
	jmp	@main.206.@search.9.IfExit
@main.197.@search.7.IfFalse:
     cmp                   r9,                    2
     mov                  r12,                    0
    sete                 r12b
     mov                  rsi,                  r12
     cmp                  rsi,                    1
	je	@main.207.@search.26.IfTrue
	jmp	@main.208.@search.25.IfFalse
@main.207.@search.26.IfTrue:
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
     mov                  rdi,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     sub                  rsi,         qword[rdi+8]
     mov            qword[r8],                  rsi
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
	je	@main.209.@search.31.cmp_and
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
	je	@main.209.@search.31.cmp_and
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
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.209.@search.31.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.210.@search.29.IfTrue
	jmp	@main.211.@search.28.IfFalse
@main.210.@search.29.IfTrue:
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
     mov           qword[rbx],                    1
     mov                  rsi,                  r12
     cmp                  rsi,                    1
	je	@main.212.@search.33.IfTrue
	jmp	@main.213.@search.32.IfFalse
@main.212.@search.33.IfTrue:
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
	jmp	@main.214.@search.34.IfExit
@main.213.@search.32.IfFalse:
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
@main.214.@search.34.IfExit:
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
	jmp	@main.215.@search.30.IfExit
@main.211.@search.28.IfFalse:
@main.215.@search.30.IfExit:
	jmp	@main.216.@search.27.IfExit
@main.208.@search.25.IfFalse:
     mov                  r12,                    1
	jmp	@main.217.@search.38.ForCon
@main.218.@search.37.ForBody:
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.219.@search.41.IfTrue
	jmp	@main.220.@search.40.IfFalse
@main.219.@search.41.IfTrue:
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
	je	@main.221.@search.44.IfTrue
	jmp	@main.222.@search.43.IfFalse
@main.221.@search.44.IfTrue:
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
	jmp	@main.223.@search.45.IfExit
@main.222.@search.43.IfFalse:
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
@main.223.@search.45.IfExit:
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
	jmp	@main.224.@search.42.IfExit
@main.220.@search.40.IfFalse:
@main.224.@search.42.IfExit:
     add                  r12,                    1
@main.217.@search.38.ForCon:
     cmp                  r12,                    9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.218.@search.37.ForBody
@main.216.@search.27.IfExit:
@main.206.@search.9.IfExit:
	jmp	@main.225.@search.5.IfExit
@main.194.@search.3.IfFalse:
@main.225.@search.5.IfExit:
@main.70.@search.34.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.71.@search.30.IfExit
@main.67.@search.28.IfFalse:
@main.71.@search.30.IfExit:
	jmp	@main.72.@search.27.IfExit
@main.64.@search.25.IfFalse:
     mov                  r12,                    1
	jmp	@main.73.@search.38.ForCon
@main.74.@search.37.ForBody:
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.75.@search.41.IfTrue
	jmp	@main.76.@search.40.IfFalse
@main.75.@search.41.IfTrue:
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                  r12
     cmp        qword[rbp-64],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.77.@search.44.IfTrue
	jmp	@main.78.@search.43.IfFalse
@main.77.@search.44.IfTrue:
     mov                  rsi,        qword[rbp-56]
     add                  rsi,                    1
     mov                  rbx,                  r15
     add                  rbx,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                    0
     mov                  rdx,                  rbx
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     mov                  rsi,                  rax
	jmp	@main.79.@search.45.IfExit
@main.78.@search.43.IfFalse:
     mov                  rsi,        qword[rbp-64]
     add                  rsi,                    1
     mov                  rbx,                  r15
     add                  rbx,                  r12
     mov                  rdi,        qword[rbp-56]
     mov                  rdx,                  rbx
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     mov                  rsi,                  rax
@main.79.@search.45.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.80.@search.42.IfExit
@main.76.@search.40.IfFalse:
@main.80.@search.42.IfExit:
     add                  r12,                    1
@main.73.@search.38.ForCon:
     cmp                  r12,                    9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.74.@search.37.ForBody
@main.72.@search.27.IfExit:
@main.62.@search.9.IfExit:
	jmp	@main.81.@search.5.IfExit
@main.50.@search.3.IfFalse:
@main.81.@search.5.IfExit:
	jmp	@main.34.@search.34.IfExit
@main.33.@search.32.IfFalse:
     mov                  rbx,        qword[rbp-24]
     add                  rbx,                    1
     mov                  rdi,         qword[@make]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,        qword[rbp-24]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,        qword[rbp-32]
     add                  rsi,           qword[rdi]
     mov                  r14,        qword[rbp-16]
     mov                   r9,                  rbx
     mov                  r13,                  rsi
     cmp                   r9,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.84.@search.6.cmp_or
     cmp                   r9,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.84.@search.6.cmp_or
     cmp                  r14,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.84.@search.6.cmp_or
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
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     add                  rsi,        qword[rdi+16]
     cmp                  rsi,                   15
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.84.@search.6.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.85.@search.4.IfTrue
	jmp	@main.86.@search.3.IfFalse
@main.85.@search.4.IfTrue:
     cmp                  r14,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.87.@search.10.cmp_and
     cmp                   r9,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.87.@search.10.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.88.@search.8.IfTrue
	jmp	@main.89.@search.7.IfFalse
@main.88.@search.8.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,                   45
     sub                  rsi,                  r13
     mov        qword[rbx+16],                  rsi
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,           qword[rbx]
     add                  rsi,        qword[rbx+16]
     mov                  r12,                  rsi
     mov                  rsi,         qword[@make]
     mov                  rdi,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,         qword[rbx+8]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.90.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.90.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,           qword[rbx]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,           qword[rbx]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.90.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[rdi+8]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,         qword[rbx+8]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.90.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,        qword[rdi+16]
     add                  rsi,        qword[rbx+16]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.90.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.90.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,           qword[rbx]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.90.@search.14.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.91.@search.12.IfTrue
	jmp	@main.92.@search.11.IfFalse
@main.91.@search.12.IfTrue:
     mov                  rbx,        qword[@count]
     mov                  rsi,        qword[@count]
     mov                  rsi,           qword[rsi]
     add                  rsi,                    1
     mov           qword[rbx],                  rsi
     mov                  r12,                    0
	jmp	@main.93.@search.18.ForCon
@main.94.@search.17.ForBody:
     mov                  rbx,                    0
	jmp	@main.95.@search.23.ForCon
@main.96.@search.22.ForBody:
     mov                  rdi,         qword[@make]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                   r9
call	print
     pop                   r9
     mov                  rdi,         __const_str0
    push                   r9
call	print
     pop                   r9
     add                  rbx,                    1
@main.95.@search.23.ForCon:
     cmp                  rbx,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.96.@search.22.ForBody
     mov                  rdi,         __const_str1
    push                   r9
call	print
     pop                   r9
     add                  r12,                    1
@main.93.@search.18.ForCon:
     cmp                  r12,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.94.@search.17.ForBody
     mov                  rdi,         __const_str1
    push                   r9
call	print
     pop                   r9
	jmp	@main.97.@search.13.IfExit
@main.92.@search.11.IfFalse:
@main.97.@search.13.IfExit:
	jmp	@main.98.@search.9.IfExit
@main.89.@search.7.IfFalse:
     cmp                   r9,                    2
     mov                  r12,                    0
    sete                 r12b
     mov                  rsi,                  r12
     cmp                  rsi,                    1
	je	@main.99.@search.26.IfTrue
	jmp	@main.100.@search.25.IfFalse
@main.99.@search.26.IfTrue:
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
     mov                  rdi,         qword[@make]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     sub                  rsi,         qword[rdi+8]
     mov            qword[r8],                  rsi
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
	je	@main.101.@search.31.cmp_and
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
	je	@main.101.@search.31.cmp_and
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
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.101.@search.31.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.102.@search.29.IfTrue
	jmp	@main.103.@search.28.IfFalse
@main.102.@search.29.IfTrue:
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
     mov           qword[rbx],                    1
     mov                  rsi,                  r12
     cmp                  rsi,                    1
	je	@main.104.@search.33.IfTrue
	jmp	@main.105.@search.32.IfFalse
@main.104.@search.33.IfTrue:
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
	jmp	@main.106.@search.34.IfExit
@main.105.@search.32.IfFalse:
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
@main.106.@search.34.IfExit:
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
	jmp	@main.107.@search.30.IfExit
@main.103.@search.28.IfFalse:
@main.107.@search.30.IfExit:
	jmp	@main.108.@search.27.IfExit
@main.100.@search.25.IfFalse:
     mov                  r12,                    1
	jmp	@main.109.@search.38.ForCon
@main.110.@search.37.ForBody:
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.111.@search.41.IfTrue
	jmp	@main.112.@search.40.IfFalse
@main.111.@search.41.IfTrue:
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
	je	@main.113.@search.44.IfTrue
	jmp	@main.114.@search.43.IfFalse
@main.113.@search.44.IfTrue:
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
	jmp	@main.115.@search.45.IfExit
@main.114.@search.43.IfFalse:
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
@main.115.@search.45.IfExit:
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
	jmp	@main.116.@search.42.IfExit
@main.112.@search.40.IfFalse:
@main.116.@search.42.IfExit:
     add                  r12,                    1
@main.109.@search.38.ForCon:
     cmp                  r12,                    9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.110.@search.37.ForBody
@main.108.@search.27.IfExit:
@main.98.@search.9.IfExit:
	jmp	@main.117.@search.5.IfExit
@main.86.@search.3.IfFalse:
@main.117.@search.5.IfExit:
@main.34.@search.34.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,        qword[rbp-24]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[@color]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.35.@search.30.IfExit
@main.31.@search.28.IfFalse:
@main.35.@search.30.IfExit:
	jmp	@main.36.@search.27.IfExit
@main.28.@search.25.IfFalse:
     mov                  r14,                    1
	jmp	@main.37.@search.38.ForCon
@main.38.@search.37.ForBody:
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.39.@search.41.IfTrue
	jmp	@main.40.@search.40.IfFalse
@main.39.@search.41.IfTrue:
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-24]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                  r14
     cmp        qword[rbp-24],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.41.@search.44.IfTrue
	jmp	@main.42.@search.43.IfFalse
@main.41.@search.44.IfTrue:
     mov                  rbx,        qword[rbp-16]
     add                  rbx,                    1
     mov                  rsi,        qword[rbp-32]
     add                  rsi,                  r14
     mov                  r10,                  rbx
     mov                   r9,                    0
     mov                  r13,                  rsi
     cmp                   r9,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.120.@search.6.cmp_or
     cmp                   r9,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.120.@search.6.cmp_or
     cmp                  r10,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.120.@search.6.cmp_or
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
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     add                  rsi,        qword[rdi+16]
     cmp                  rsi,                   15
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.120.@search.6.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.121.@search.4.IfTrue
	jmp	@main.122.@search.3.IfFalse
@main.121.@search.4.IfTrue:
     cmp                  r10,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.123.@search.10.cmp_and
     cmp                   r9,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.123.@search.10.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.124.@search.8.IfTrue
	jmp	@main.125.@search.7.IfFalse
@main.124.@search.8.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,                   45
     sub                  rsi,                  r13
     mov        qword[rbx+16],                  rsi
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,           qword[rsi]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,           qword[rbx]
     add                  rsi,        qword[rbx+16]
     mov                  r12,                  rsi
     mov                  rsi,         qword[@make]
     mov                  rdi,         qword[rsi+8]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,         qword[rbx+8]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.126.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rbx,        qword[rsi+16]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.126.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,           qword[rbx]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,           qword[rbx]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.126.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,         qword[rdi+8]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,         qword[rbx+8]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.126.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,        qword[rdi+16]
     add                  rsi,        qword[rbx+16]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.126.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,           qword[rsi]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,        qword[rbx+16]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.126.@search.14.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,        qword[rsi+16]
     mov                  rsi,         qword[@make]
     mov                  rbx,         qword[rsi+8]
     mov                  rsi,           qword[rdi]
     add                  rsi,         qword[rbx+8]
     mov                  rbx,         qword[@make]
     mov                  rbx,           qword[rbx]
     add                  rsi,        qword[rbx+16]
     cmp                  rsi,                  r12
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.126.@search.14.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.127.@search.12.IfTrue
	jmp	@main.128.@search.11.IfFalse
@main.127.@search.12.IfTrue:
     mov                  rbx,        qword[@count]
     mov                  rsi,        qword[@count]
     mov                  rsi,           qword[rsi]
     add                  rsi,                    1
     mov           qword[rbx],                  rsi
     mov                  r12,                    0
	jmp	@main.129.@search.18.ForCon
@main.130.@search.17.ForBody:
     mov                  rbx,                    0
	jmp	@main.131.@search.23.ForCon
@main.132.@search.22.ForBody:
     mov                  rdi,         qword[@make]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
    push                  rsi
    push                  r10
    push                   r9
call	toString
     pop                   r9
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
    push                   r9
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     mov                  rdi,         __const_str0
    push                  r10
    push                   r9
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     add                  rbx,                    1
@main.131.@search.23.ForCon:
     cmp                  rbx,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.132.@search.22.ForBody
     mov                  rdi,         __const_str1
    push                  r10
    push                   r9
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     add                  r12,                    1
@main.129.@search.18.ForCon:
     cmp                  r12,                    2
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.130.@search.17.ForBody
     mov                  rdi,         __const_str1
    push                  r10
    push                   r9
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                   r9
     pop                  r10
	jmp	@main.133.@search.13.IfExit
@main.128.@search.11.IfFalse:
@main.133.@search.13.IfExit:
	jmp	@main.134.@search.9.IfExit
@main.125.@search.7.IfFalse:
     cmp                   r9,                    2
     mov                  r12,                    0
    sete                 r12b
     mov                  rsi,                  r12
     cmp                  rsi,                    1
	je	@main.135.@search.26.IfTrue
	jmp	@main.136.@search.25.IfFalse
@main.135.@search.26.IfTrue:
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
     mov                  rdi,         qword[@make]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rbx
     sub                  rsi,         qword[rdi+8]
     mov            qword[r8],                  rsi
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
	je	@main.137.@search.31.cmp_and
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
	je	@main.137.@search.31.cmp_and
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
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.137.@search.31.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.138.@search.29.IfTrue
	jmp	@main.139.@search.28.IfFalse
@main.138.@search.29.IfTrue:
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
     mov           qword[rbx],                    1
     mov                  rsi,                  r12
     cmp                  rsi,                    1
	je	@main.140.@search.33.IfTrue
	jmp	@main.141.@search.32.IfFalse
@main.140.@search.33.IfTrue:
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
    push                  r10
    push                   r9
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
	jmp	@main.142.@search.34.IfExit
@main.141.@search.32.IfFalse:
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
    push                  r10
    push                   r9
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
@main.142.@search.34.IfExit:
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
	jmp	@main.143.@search.30.IfExit
@main.139.@search.28.IfFalse:
@main.143.@search.30.IfExit:
	jmp	@main.144.@search.27.IfExit
@main.136.@search.25.IfFalse:
     mov                  r12,                    1
	jmp	@main.145.@search.38.ForCon
@main.146.@search.37.ForBody:
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.147.@search.41.IfTrue
	jmp	@main.148.@search.40.IfFalse
@main.147.@search.41.IfTrue:
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r12
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
     mov           qword[rbx],                  r12
     cmp                   r9,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.149.@search.44.IfTrue
	jmp	@main.150.@search.43.IfFalse
@main.149.@search.44.IfTrue:
     mov                  rsi,                  r10
     add                  rsi,                    1
     mov                  rbx,                  r13
     add                  rbx,                  r12
     mov                  rdi,                  rsi
     mov                  rsi,                    0
     mov                  rdx,                  rbx
    push                  r10
    push                   r9
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
	jmp	@main.151.@search.45.IfExit
@main.150.@search.43.IfFalse:
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rbx,                  r13
     add                  rbx,                  r12
     mov                  rdi,                  r10
     mov                  rdx,                  rbx
    push                  r10
    push                   r9
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
@main.151.@search.45.IfExit:
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
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.152.@search.42.IfExit
@main.148.@search.40.IfFalse:
@main.152.@search.42.IfExit:
     add                  r12,                    1
@main.145.@search.38.ForCon:
     cmp                  r12,                    9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.146.@search.37.ForBody
@main.144.@search.27.IfExit:
@main.134.@search.9.IfExit:
	jmp	@main.153.@search.5.IfExit
@main.122.@search.3.IfFalse:
@main.153.@search.5.IfExit:
	jmp	@main.43.@search.45.IfExit
@main.42.@search.43.IfFalse:
     mov                  rsi,        qword[rbp-24]
     add                  rsi,                    1
     mov                  rbx,        qword[rbp-32]
     add                  rbx,                  r14
     mov                  rdi,        qword[rbp-16]
     mov                  rdx,                  rbx
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     mov                  rsi,                  rax
@main.43.@search.45.IfExit:
     mov                  rbx,         qword[@make]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-24]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     mov                  rbx,        qword[@color]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@main.44.@search.42.IfExit
@main.40.@search.40.IfFalse:
@main.44.@search.42.IfExit:
     add                  r14,                    1
@main.37.@search.38.ForCon:
     cmp                  r14,                    9
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.38.@search.37.ForBody
@main.36.@search.27.IfExit:
@main.26.@search.9.IfExit:
	jmp	@main.45.@search.5.IfExit
@main.14.@search.3.IfFalse:
@main.45.@search.5.IfExit:
     mov                  rsi,        qword[@count]
     mov                  rdi,           qword[rsi]
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
     add                  rsp,                   96
     pop                  rbp
     ret


 section                 .bss
@make:
  	resq 		1
@color:
  	resq 		1
@count:
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



