  global                 main
  extern	malloc


 section                .text
search:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   24
    push                  r12
    push                  r13
    push                  rbx
@search.1.enter:
     mov                  r12,                  rdi
     mov                   r8,                  rsi
     mov                  rbx,                  rdx
     cmp                   r8,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@search.6.cmp_or
     cmp                   r8,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
@search.6.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@search.7.cmp_or
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@search.7.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@search.8.cmp_or
     mov                  rdi,                  r12
     sub                  rdi,                    1
     mov                  rsi,         qword[@make]
     mov                  r13,                  rdi
     shl                  r13,                    3
     add                  rsi,                  r13
     mov                  rsi,           qword[rsi]
     mov                  r13,         qword[@make]
     mov                   r9,                  rdi
     shl                   r9,                    3
     add                  r13,                   r9
     mov                  r13,           qword[r13]
     mov                  rsi,           qword[rsi]
     add                  rsi,         qword[r13+8]
     mov                  r13,         qword[@make]
     mov                  rdi,                  rdi
     shl                  rdi,                    3
     add                  r13,                  rdi
     mov                  rdi,           qword[r13]
     mov                  rsi,                  rsi
     add                  rsi,        qword[rdi+16]
     cmp                  rsi,                   15
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@search.8.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@search.4.IfTrue
	jmp	@search.3.IfFalse
@search.4.IfTrue:
     cmp                  r12,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@search.12.cmp_and
     cmp                   r8,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@search.12.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@search.10.IfTrue
	jmp	@search.9.IfFalse
@search.10.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rdi,                   45
     sub                  rdi,                  rbx
     mov        qword[rsi+16],                  rdi
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     mov                  rdi,         qword[@make]
     mov                  rdi,           qword[rdi]
     mov                  rsi,           qword[rsi]
     add                  rsi,         qword[rdi+8]
     mov                  rdi,         qword[@make]
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rsi
     add                  rsi,        qword[rdi+16]
     mov                  rsi,                  rsi
     mov                  rdi,         qword[@make]
     mov                  rdi,         qword[rdi+8]
     mov                  r13,         qword[@make]
     mov                  r13,         qword[r13+8]
     mov                  rdi,           qword[rdi]
     add                  rdi,         qword[r13+8]
     mov                  r13,         qword[@make]
     mov                  r13,         qword[r13+8]
     mov                  rdi,                  rdi
     add                  rdi,        qword[r13+16]
     cmp                  rdi,                  rsi
     mov                  rdi,                    0
    sete                  dil
     cmp                  rdi,                    0
	je	@search.16.cmp_and
     mov                  rdi,         qword[@make]
     mov                  rdi,        qword[rdi+16]
     mov                  r13,         qword[@make]
     mov                  r13,        qword[r13+16]
     mov                   r9,           qword[rdi]
     add                   r9,         qword[r13+8]
     mov                  rdi,         qword[@make]
     mov                  rdi,        qword[rdi+16]
     mov                  r13,                   r9
     add                  r13,        qword[rdi+16]
     cmp                  r13,                  rsi
     mov                  rdi,                    0
    sete                  dil
     cmp                  rdi,                    0
@search.16.cmp_and:
     mov                  rdi,                    0
   setne                  dil
     cmp                  rdi,                    0
	je	@search.17.cmp_and
     mov                  rdi,         qword[@make]
     mov                  rdi,           qword[rdi]
     mov                  r13,         qword[@make]
     mov                  r13,         qword[r13+8]
     mov                  rdi,           qword[rdi]
     add                  rdi,           qword[r13]
     mov                  r13,         qword[@make]
     mov                  r13,        qword[r13+16]
     mov                  rdi,                  rdi
     add                  rdi,           qword[r13]
     cmp                  rdi,                  rsi
     mov                  rdi,                    0
    sete                  dil
     cmp                  rdi,                    0
@search.17.cmp_and:
     mov                  rdi,                    0
   setne                  dil
     cmp                  rdi,                    0
	je	@search.18.cmp_and
     mov                  rdi,         qword[@make]
     mov                  rdi,           qword[rdi]
     mov                  r13,         qword[@make]
     mov                  r13,         qword[r13+8]
     mov                  rdi,         qword[rdi+8]
     add                  rdi,         qword[r13+8]
     mov                  r13,         qword[@make]
     mov                  r13,        qword[r13+16]
     mov                  rdi,                  rdi
     add                  rdi,         qword[r13+8]
     cmp                  rdi,                  rsi
     mov                  rdi,                    0
    sete                  dil
     cmp                  rdi,                    0
@search.18.cmp_and:
     mov                  rdi,                    0
   setne                  dil
     cmp                  rdi,                    0
	je	@search.19.cmp_and
     mov                  rdi,         qword[@make]
     mov                  rdi,           qword[rdi]
     mov                  r13,         qword[@make]
     mov                  r13,         qword[r13+8]
     mov                  rdi,        qword[rdi+16]
     add                  rdi,        qword[r13+16]
     mov                  r13,         qword[@make]
     mov                  r13,        qword[r13+16]
     mov                  rdi,                  rdi
     add                  rdi,        qword[r13+16]
     cmp                  rdi,                  rsi
     mov                  rdi,                    0
    sete                  dil
     cmp                  rdi,                    0
@search.19.cmp_and:
     mov                  rdi,                    0
   setne                  dil
     cmp                  rdi,                    0
	je	@search.20.cmp_and
     mov                  rdi,         qword[@make]
     mov                  rdi,           qword[rdi]
     mov                  r13,         qword[@make]
     mov                  r13,         qword[r13+8]
     mov                   r9,           qword[rdi]
     add                   r9,         qword[r13+8]
     mov                  rdi,         qword[@make]
     mov                  rdi,        qword[rdi+16]
     mov                  r13,                   r9
     add                  r13,        qword[rdi+16]
     cmp                  r13,                  rsi
     mov                  rdi,                    0
    sete                  dil
     cmp                  rdi,                    0
@search.20.cmp_and:
     mov                  rdi,                    0
   setne                  dil
     cmp                  rdi,                    0
	je	@search.21.cmp_and
     mov                  rdi,         qword[@make]
     mov                  rdi,        qword[rdi+16]
     mov                  r13,         qword[@make]
     mov                  r13,         qword[r13+8]
     mov                   r9,           qword[rdi]
     add                   r9,         qword[r13+8]
     mov                  rdi,         qword[@make]
     mov                  rdi,           qword[rdi]
     mov                  r13,                   r9
     add                  r13,        qword[rdi+16]
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@search.21.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@search.14.IfTrue
	jmp	@search.13.IfFalse
@search.14.IfTrue:
     mov                  rsi,        qword[@count]
     mov                  rdi,        qword[@count]
     mov                  rdi,           qword[rdi]
     add                  rdi,                    1
     mov           qword[rsi],                  rdi
     mov                  r13,                    0
	jmp	@search.24.ForCon
@search.23.ForBody:
     mov                  rsi,                    0
	jmp	@search.28.ForCon
@search.27.ForBody:
     mov                  rdi,         qword[@make]
     mov                   r9,                  r13
     shl                   r9,                    3
     add                  rdi,                   r9
     mov                  rdi,           qword[rdi]
     mov                   r9,                  rsi
     shl                   r9,                    3
     add                  rdi,                   r9
     mov                  rdi,           qword[rdi]
    push                   r8
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     pop                   r8
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rdi,                  rdi
    push                   r8
    push                  rsi
call	print
     pop                  rsi
     pop                   r8
     mov                  rdi,         __const_str0
    push                   r8
    push                  rsi
call	print
     pop                  rsi
     pop                   r8
	jmp	@search.26.ForIter
@search.26.ForIter:
     mov                  rdi,                  rsi
     add                  rsi,                    1
	jmp	@search.28.ForCon
@search.28.ForCon:
     cmp                  rsi,                    2
     mov                  rdi,                    0
   setle                  dil
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@search.27.ForBody
	jmp	@search.29.ForExit
@search.29.ForExit:
     mov                  rdi,         __const_str1
    push                   r8
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                   r8
	jmp	@search.22.ForIter
@search.22.ForIter:
     mov                  rsi,                  r13
     add                  r13,                    1
	jmp	@search.24.ForCon
@search.24.ForCon:
     cmp                  r13,                    2
     mov                  rsi,                    0
   setle                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@search.23.ForBody
	jmp	@search.25.ForExit
@search.25.ForExit:
     mov                  rdi,         __const_str1
    push                   r8
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                   r8
	jmp	@search.15.IfExit
@search.13.IfFalse:
@search.15.IfExit:
	jmp	@search.11.IfExit
@search.9.IfFalse:
     cmp                   r8,                    2
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@search.31.IfTrue
	jmp	@search.30.IfFalse
@search.31.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rdi,                  r12
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rsi,           qword[rsi]
     mov                  rdi,                   r8
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rdi,         qword[@make]
     mov                  r13,                  r12
     shl                  r13,                    3
     add                  rdi,                  r13
     mov                  rdi,           qword[rdi]
     mov                  r13,                   15
     sub                  r13,           qword[rdi]
     mov                  rdi,         qword[@make]
     mov                   r9,                  r12
     shl                   r9,                    3
     add                  rdi,                   r9
     mov                  rdi,           qword[rdi]
     mov                  r13,                  r13
     sub                  r13,         qword[rdi+8]
     mov           qword[rsi],                  r13
     mov                  rsi,         qword[@make]
     mov                  rdi,                  r12
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rsi,           qword[rsi]
     mov                  rdi,                   r8
     shl                  rdi,                    3
     add                  rsi,                  rdi
     cmp           qword[rsi],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    0
	je	@search.36.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,                  r12
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rsi,           qword[rsi]
     mov                  rdi,                   r8
     shl                  rdi,                    3
     add                  rsi,                  rdi
     cmp           qword[rsi],                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    0
@search.36.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@search.37.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,                  r12
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rsi,           qword[rsi]
     mov                  rdi,                   r8
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rdi,        qword[@color]
     mov                  rsi,           qword[rsi]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     cmp           qword[rdi],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@search.37.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@search.34.IfTrue
	jmp	@search.33.IfFalse
@search.34.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rdi,                  r12
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rsi,           qword[rsi]
     mov                  rdi,                   r8
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rdi,        qword[@color]
     mov                  rsi,           qword[rsi]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov           qword[rdi],                    1
     cmp                   r8,                    2
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@search.39.IfTrue
	jmp	@search.38.IfFalse
@search.39.IfTrue:
     mov                  rsi,                  r12
     add                  rsi,                    1
     mov                  rdi,         qword[@make]
     mov                  r13,                  r12
     shl                  r13,                    3
     add                  rdi,                  r13
     mov                  rdi,           qword[rdi]
     mov                  r13,                   r8
     shl                  r13,                    3
     add                  rdi,                  r13
     mov                  r13,                  rbx
     add                  r13,           qword[rdi]
     mov                  rdi,                  rsi
     mov                  rsi,                    0
     mov                  rdx,                  r13
    push                   r8
    push                  rsi
call	search
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
	jmp	@search.40.IfExit
@search.38.IfFalse:
     mov                  rsi,                   r8
     add                  rsi,                    1
     mov                  rdi,         qword[@make]
     mov                  r13,                  r12
     shl                  r13,                    3
     add                  rdi,                  r13
     mov                  rdi,           qword[rdi]
     mov                  r13,                   r8
     shl                  r13,                    3
     add                  rdi,                  r13
     mov                  r13,                  rbx
     add                  r13,           qword[rdi]
     mov                  rdi,                  r12
     mov                  rsi,                  rsi
     mov                  rdx,                  r13
    push                   r8
    push                  rsi
call	search
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
	jmp	@search.40.IfExit
@search.40.IfExit:
     mov                  rsi,         qword[@make]
     mov                  rdi,                  r12
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rsi,           qword[rsi]
     mov                  rdi,                   r8
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rdi,        qword[@color]
     mov                  rsi,           qword[rsi]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov           qword[rdi],                    0
	jmp	@search.35.IfExit
@search.33.IfFalse:
@search.35.IfExit:
	jmp	@search.32.IfExit
@search.30.IfFalse:
     mov                  r13,                    1
	jmp	@search.43.ForCon
@search.42.ForBody:
     mov                  rsi,        qword[@color]
     mov                  rdi,                  r13
     shl                  rdi,                    3
     add                  rsi,                  rdi
     cmp           qword[rsi],                    0
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@search.46.IfTrue
	jmp	@search.45.IfFalse
@search.46.IfTrue:
     mov                  rsi,        qword[@color]
     mov                  rdi,                  r13
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov           qword[rsi],                    1
     mov                  rsi,         qword[@make]
     mov                  rdi,                  r12
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rsi,           qword[rsi]
     mov                  rdi,                   r8
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov           qword[rsi],                  r13
     cmp                   r8,                    2
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@search.49.IfTrue
	jmp	@search.48.IfFalse
@search.49.IfTrue:
     mov                  rsi,                  r12
     add                  rsi,                    1
     mov                   r9,                  rbx
     add                   r9,                  r13
     mov                  rdi,                  rsi
     mov                  rsi,                    0
     mov                  rdx,                   r9
    push                   r8
    push                  rsi
call	search
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
	jmp	@search.50.IfExit
@search.48.IfFalse:
     mov                  rsi,                   r8
     add                  rsi,                    1
     mov                   r9,                  rbx
     add                   r9,                  r13
     mov                  rdi,                  r12
     mov                  rsi,                  rsi
     mov                  rdx,                   r9
    push                   r8
    push                  rsi
call	search
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
	jmp	@search.50.IfExit
@search.50.IfExit:
     mov                  rsi,         qword[@make]
     mov                  rdi,                  r12
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rsi,           qword[rsi]
     mov                  rdi,                   r8
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov           qword[rsi],                    0
     mov                  rsi,        qword[@color]
     mov                  rdi,                  r13
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov           qword[rsi],                    0
	jmp	@search.47.IfExit
@search.45.IfFalse:
@search.47.IfExit:
	jmp	@search.41.ForIter
@search.41.ForIter:
     mov                  rsi,                  r13
     add                  r13,                    1
	jmp	@search.43.ForCon
@search.43.ForCon:
     cmp                  r13,                    9
     mov                  rsi,                    0
   setle                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@search.42.ForBody
	jmp	@search.44.ForExit
@search.44.ForExit:
	jmp	@search.32.IfExit
@search.32.IfExit:
	jmp	@search.11.IfExit
@search.11.IfExit:
	jmp	@search.5.IfExit
@search.3.IfFalse:
@search.5.IfExit:
@search.2.exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     add                  rsp,                   24
     pop                  rbp
     ret
origin:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   24
@origin.1.enter:
     mov                  r10,                  rdi
     mov                   r8,                  r10
     mov                  rdi,                  r10
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
     mov                  rsi,                  rax
     mov           qword[rsi],                  rdi
     add                  rsi,                    8
     sub                   r8,                    8
     mov         qword[@make],                  rsi
     mov            qword[@i],                    0
	jmp	@origin.5.ForCon
@origin.4.ForBody:
     mov                  rdi,         qword[@make]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                   r8,                  r10
     mov                  rsi,                  r10
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
     mov                   r9,                  rax
     mov            qword[r9],                  rsi
     add                   r9,                    8
     sub                   r8,                    8
     mov           qword[rdi],                   r9
     mov            qword[@j],                    0
	jmp	@origin.9.ForCon
@origin.8.ForBody:
     mov                  rsi,         qword[@make]
     mov                  rdi,            qword[@i]
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rsi,           qword[rsi]
     mov                  rdi,            qword[@j]
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov           qword[rsi],                    0
	jmp	@origin.7.ForIter
@origin.7.ForIter:
     mov                  rsi,            qword[@j]
     add            qword[@j],                    1
	jmp	@origin.9.ForCon
@origin.9.ForCon:
     cmp            qword[@j],                  r10
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@origin.8.ForBody
	jmp	@origin.10.ForExit
@origin.10.ForExit:
	jmp	@origin.3.ForIter
@origin.3.ForIter:
     mov                  rsi,            qword[@i]
     add            qword[@i],                    1
	jmp	@origin.5.ForCon
@origin.5.ForCon:
     cmp            qword[@i],                  r10
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@origin.4.ForBody
	jmp	@origin.6.ForExit
@origin.6.ForExit:
@origin.2.exit:
     add                  rsp,                   24
     pop                  rbp
     ret
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   16
     mov                   r8,                   10
     mov                  rdi,                   10
     add                   r8,                    1
     shl                   r8,                    3
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     mov                  rdi,                   r8
    call               malloc
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                  rsi,                  rax
     mov           qword[rsi],                  rdi
     add                  rsi,                    8
     sub                   r8,                    8
     mov        qword[@color],                  rsi
     mov                  rdi,                    1
     mov                  rsi,                    1
     add                  rdi,                    1
     shl                  rdi,                    3
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     mov                  rdi,                  rdi
    call               malloc
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                   r9,                  rax
     mov            qword[r9],                  rsi
     add                   r9,                    8
     sub                  rdi,                    8
     mov        qword[@count],                   r9
     add                  rsp,                   16
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                   40
    push                  r12
    push                  r14
    push                  r13
    push                  rbx
@main.1.enter:
     mov                   r8,                    3
@main.5.@origin.1.enter:
     mov                  rdi,                   r8
     mov                  rsi,                   r8
     add                  rdi,                    1
     shl                  rdi,                    3
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  rdi
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                  r12,                  rax
     mov           qword[r12],                  rsi
     add                  r12,                    8
     sub                  rdi,                    8
     mov         qword[@make],                  r12
     mov            qword[@i],                    0
	jmp	@main.6.@origin.5.ForCon
@main.7.@origin.4.ForBody:
     mov                  rsi,         qword[@make]
     mov                  rdi,            qword[@i]
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  r12,                   r8
     mov                  rdi,                   r8
     add                  r12,                    1
     shl                  r12,                    3
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  r12
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                  r13,                  rax
     mov           qword[r13],                  rdi
     add                  r13,                    8
     sub                  r12,                    8
     mov           qword[rsi],                  r13
     mov            qword[@j],                    0
	jmp	@main.8.@origin.9.ForCon
@main.9.@origin.8.ForBody:
     mov                  rsi,         qword[@make]
     mov                  rdi,            qword[@i]
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rsi,           qword[rsi]
     mov                  rdi,            qword[@j]
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov           qword[rsi],                    0
	jmp	@main.10.@origin.7.ForIter
@main.10.@origin.7.ForIter:
     mov                  rsi,            qword[@j]
     add            qword[@j],                    1
	jmp	@main.8.@origin.9.ForCon
@main.8.@origin.9.ForCon:
     cmp            qword[@j],                   r8
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.9.@origin.8.ForBody
	jmp	@main.11.@origin.10.ForExit
@main.11.@origin.10.ForExit:
	jmp	@main.12.@origin.3.ForIter
@main.12.@origin.3.ForIter:
     mov                  rsi,            qword[@i]
     add            qword[@i],                    1
	jmp	@main.6.@origin.5.ForCon
@main.6.@origin.5.ForCon:
     cmp            qword[@i],                   r8
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.7.@origin.4.ForBody
	jmp	@main.13.@origin.6.ForExit
@main.13.@origin.6.ForExit:
@main.4.@origin.2.exit:
     mov                  r14,                    0
     mov                   r9,                    0
     mov                  r12,                    0
@main.15.@search.1.enter:
     cmp                   r9,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.16.@search.6.cmp_or
     cmp                   r9,                    0
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
@main.16.@search.6.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.17.@search.7.cmp_or
     cmp                  r14,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.17.@search.7.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.18.@search.8.cmp_or
     mov                  rdi,                  r14
     sub                  rdi,                    1
     mov                  rsi,         qword[@make]
     mov                   r8,                  rdi
     shl                   r8,                    3
     add                  rsi,                   r8
     mov                  rsi,           qword[rsi]
     mov                   r8,         qword[@make]
     mov                  r13,                  rdi
     shl                  r13,                    3
     add                   r8,                  r13
     mov                   r8,            qword[r8]
     mov                  rsi,           qword[rsi]
     add                  rsi,          qword[r8+8]
     mov                   r8,         qword[@make]
     mov                  rdi,                  rdi
     shl                  rdi,                    3
     add                   r8,                  rdi
     mov                  rdi,            qword[r8]
     mov                  rsi,                  rsi
     add                  rsi,        qword[rdi+16]
     cmp                  rsi,                   15
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.18.@search.8.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.19.@search.4.IfTrue
	jmp	@main.20.@search.3.IfFalse
@main.19.@search.4.IfTrue:
     cmp                  r14,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.21.@search.12.cmp_and
     cmp                   r9,                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.21.@search.12.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.22.@search.10.IfTrue
	jmp	@main.23.@search.9.IfFalse
@main.22.@search.10.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rdi,                   45
     sub                  rdi,                  r12
     mov        qword[rsi+16],                  rdi
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     mov                  rdi,         qword[@make]
     mov                  rdi,           qword[rdi]
     mov                   r8,           qword[rsi]
     add                   r8,         qword[rdi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     mov                  rdi,                   r8
     add                  rdi,        qword[rsi+16]
     mov                   r8,                  rdi
     mov                  rsi,         qword[@make]
     mov                  rsi,         qword[rsi+8]
     mov                  rdi,         qword[@make]
     mov                  rdi,         qword[rdi+8]
     mov                  rsi,           qword[rsi]
     add                  rsi,         qword[rdi+8]
     mov                  rdi,         qword[@make]
     mov                  rdi,         qword[rdi+8]
     mov                  rsi,                  rsi
     add                  rsi,        qword[rdi+16]
     cmp                  rsi,                   r8
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
	je	@main.24.@search.16.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rdi,         qword[@make]
     mov                  rdi,        qword[rdi+16]
     mov                  r13,           qword[rsi]
     add                  r13,         qword[rdi+8]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rdi,                  r13
     add                  rdi,        qword[rsi+16]
     cmp                  rdi,                   r8
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.24.@search.16.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.25.@search.17.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     mov                  rdi,         qword[@make]
     mov                  rdi,         qword[rdi+8]
     mov                  r13,           qword[rsi]
     add                  r13,           qword[rdi]
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rdi,                  r13
     add                  rdi,           qword[rsi]
     cmp                  rdi,                   r8
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.25.@search.17.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.26.@search.18.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     mov                  rdi,         qword[@make]
     mov                  rdi,         qword[rdi+8]
     mov                  rsi,         qword[rsi+8]
     add                  rsi,         qword[rdi+8]
     mov                  rdi,         qword[@make]
     mov                  rdi,        qword[rdi+16]
     mov                  rsi,                  rsi
     add                  rsi,         qword[rdi+8]
     cmp                  rsi,                   r8
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.26.@search.18.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.27.@search.19.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     mov                  rdi,         qword[@make]
     mov                  rdi,         qword[rdi+8]
     mov                  rsi,        qword[rsi+16]
     add                  rsi,        qword[rdi+16]
     mov                  rdi,         qword[@make]
     mov                  rdi,        qword[rdi+16]
     mov                  rsi,                  rsi
     add                  rsi,        qword[rdi+16]
     cmp                  rsi,                   r8
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.27.@search.19.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.28.@search.20.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rsi,           qword[rsi]
     mov                  rdi,         qword[@make]
     mov                  rdi,         qword[rdi+8]
     mov                  rsi,           qword[rsi]
     add                  rsi,         qword[rdi+8]
     mov                  rdi,         qword[@make]
     mov                  rdi,        qword[rdi+16]
     mov                  rsi,                  rsi
     add                  rsi,        qword[rdi+16]
     cmp                  rsi,                   r8
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.28.@search.20.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.29.@search.21.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rsi,        qword[rsi+16]
     mov                  rdi,         qword[@make]
     mov                  rdi,         qword[rdi+8]
     mov                  rsi,           qword[rsi]
     add                  rsi,         qword[rdi+8]
     mov                  rdi,         qword[@make]
     mov                  rdi,           qword[rdi]
     mov                  rsi,                  rsi
     add                  rsi,        qword[rdi+16]
     cmp                  rsi,                   r8
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.29.@search.21.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.30.@search.14.IfTrue
	jmp	@main.31.@search.13.IfFalse
@main.30.@search.14.IfTrue:
     mov                  rsi,        qword[@count]
     mov                  rdi,        qword[@count]
     mov                  rdi,           qword[rdi]
     add                  rdi,                    1
     mov           qword[rsi],                  rdi
     mov                  r13,                    0
	jmp	@main.32.@search.24.ForCon
@main.33.@search.23.ForBody:
     mov                   r8,                    0
	jmp	@main.34.@search.28.ForCon
@main.35.@search.27.ForBody:
     mov                  rsi,         qword[@make]
     mov                  rdi,                  r13
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rsi,           qword[rsi]
     mov                  rdi,                   r8
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rdi,           qword[rsi]
    push                  rsi
    push                   r8
    push                   r9
call	toString
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     mov                  rdi,         __const_str0
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                   r9
     pop                   r8
	jmp	@main.36.@search.26.ForIter
@main.36.@search.26.ForIter:
     mov                  rsi,                   r8
     add                   r8,                    1
	jmp	@main.34.@search.28.ForCon
@main.34.@search.28.ForCon:
     cmp                   r8,                    2
     mov                  rsi,                    0
   setle                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.35.@search.27.ForBody
	jmp	@main.37.@search.29.ForExit
@main.37.@search.29.ForExit:
     mov                  rdi,         __const_str1
    push                   r9
call	print
     pop                   r9
	jmp	@main.38.@search.22.ForIter
@main.38.@search.22.ForIter:
     mov                  rsi,                  r13
     add                  r13,                    1
	jmp	@main.32.@search.24.ForCon
@main.32.@search.24.ForCon:
     cmp                  r13,                    2
     mov                  rsi,                    0
   setle                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.33.@search.23.ForBody
	jmp	@main.39.@search.25.ForExit
@main.39.@search.25.ForExit:
     mov                  rdi,         __const_str1
    push                   r9
call	print
     pop                   r9
	jmp	@main.40.@search.15.IfExit
@main.31.@search.13.IfFalse:
@main.40.@search.15.IfExit:
	jmp	@main.41.@search.11.IfExit
@main.23.@search.9.IfFalse:
     cmp                   r9,                    2
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.42.@search.31.IfTrue
	jmp	@main.43.@search.30.IfFalse
@main.42.@search.31.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rdi,                  r14
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rsi,           qword[rsi]
     mov                  rdi,                   r9
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rdi,         qword[@make]
     mov                   r8,                  r14
     shl                   r8,                    3
     add                  rdi,                   r8
     mov                  rdi,           qword[rdi]
     mov                   r8,                   15
     sub                   r8,           qword[rdi]
     mov                  rdi,         qword[@make]
     mov                  r13,                  r14
     shl                  r13,                    3
     add                  rdi,                  r13
     mov                  rdi,           qword[rdi]
     mov                   r8,                   r8
     sub                   r8,         qword[rdi+8]
     mov           qword[rsi],                   r8
     mov                  rsi,         qword[@make]
     mov                  rdi,                  r14
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rsi,           qword[rsi]
     mov                  rdi,                   r9
     shl                  rdi,                    3
     add                  rsi,                  rdi
     cmp           qword[rsi],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    0
	je	@main.44.@search.36.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,                  r14
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rsi,           qword[rsi]
     mov                  rdi,                   r9
     shl                  rdi,                    3
     add                  rsi,                  rdi
     cmp           qword[rsi],                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    0
@main.44.@search.36.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    0
	je	@main.45.@search.37.cmp_and
     mov                  rsi,         qword[@make]
     mov                  rdi,                  r14
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rsi,           qword[rsi]
     mov                  rdi,                   r9
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rdi,        qword[@color]
     mov                  rsi,           qword[rsi]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     cmp           qword[rdi],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.45.@search.37.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.46.@search.34.IfTrue
	jmp	@main.47.@search.33.IfFalse
@main.46.@search.34.IfTrue:
     mov                  rsi,         qword[@make]
     mov                  rdi,                  r14
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rsi,           qword[rsi]
     mov                  rdi,                   r9
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rdi,        qword[@color]
     mov                  rsi,           qword[rsi]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov           qword[rdi],                    1
     cmp                   r9,                    2
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.48.@search.39.IfTrue
	jmp	@main.49.@search.38.IfFalse
@main.48.@search.39.IfTrue:
     mov                  rsi,                  r14
     add                  rsi,                    1
     mov                  rdi,         qword[@make]
     mov                   r8,                  r14
     shl                   r8,                    3
     add                  rdi,                   r8
     mov                  rdi,           qword[rdi]
     mov                   r8,                   r9
     shl                   r8,                    3
     add                  rdi,                   r8
     mov                   r8,                  r12
     add                   r8,           qword[rdi]
     mov                  rdi,                  rsi
     mov                  rsi,                    0
     mov                  rdx,                   r8
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
	jmp	@main.50.@search.40.IfExit
@main.49.@search.38.IfFalse:
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                  rdi,         qword[@make]
     mov                   r8,                  r14
     shl                   r8,                    3
     add                  rdi,                   r8
     mov                  rdi,           qword[rdi]
     mov                   r8,                   r9
     shl                   r8,                    3
     add                  rdi,                   r8
     mov                   r8,                  r12
     add                   r8,           qword[rdi]
     mov                  rdi,                  r14
     mov                  rsi,                  rsi
     mov                  rdx,                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
	jmp	@main.50.@search.40.IfExit
@main.50.@search.40.IfExit:
     mov                  rsi,         qword[@make]
     mov                  rdi,                  r14
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rsi,           qword[rsi]
     mov                  rdi,                   r9
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rdi,        qword[@color]
     mov                  rsi,           qword[rsi]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov           qword[rdi],                    0
	jmp	@main.51.@search.35.IfExit
@main.47.@search.33.IfFalse:
@main.51.@search.35.IfExit:
	jmp	@main.52.@search.32.IfExit
@main.43.@search.30.IfFalse:
     mov                  r13,                    1
	jmp	@main.53.@search.43.ForCon
@main.54.@search.42.ForBody:
     mov                  rsi,        qword[@color]
     mov                  rdi,                  r13
     shl                  rdi,                    3
     add                  rsi,                  rdi
     cmp           qword[rsi],                    0
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.55.@search.46.IfTrue
	jmp	@main.56.@search.45.IfFalse
@main.55.@search.46.IfTrue:
     mov                  rsi,        qword[@color]
     mov                  rdi,                  r13
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov           qword[rsi],                    1
     mov                  rsi,         qword[@make]
     mov                  rdi,                  r14
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rsi,           qword[rsi]
     mov                  rdi,                   r9
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov           qword[rsi],                  r13
     cmp                   r9,                    2
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.57.@search.49.IfTrue
	jmp	@main.58.@search.48.IfFalse
@main.57.@search.49.IfTrue:
     mov                  rsi,                  r14
     add                  rsi,                    1
     mov                   r8,                  r12
     add                   r8,                  r13
     mov                  rdi,                  rsi
     mov                  rsi,                    0
     mov                  rdx,                   r8
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
	jmp	@main.59.@search.50.IfExit
@main.58.@search.48.IfFalse:
     mov                  rsi,                   r9
     add                  rsi,                    1
     mov                   r8,                  r12
     add                   r8,                  r13
     mov                  rdi,                  r14
     mov                  rsi,                  rsi
     mov                  rdx,                   r8
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	search
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
	jmp	@main.59.@search.50.IfExit
@main.59.@search.50.IfExit:
     mov                  rsi,         qword[@make]
     mov                  rdi,                  r14
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rsi,           qword[rsi]
     mov                  rdi,                   r9
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov           qword[rsi],                    0
     mov                  rsi,        qword[@color]
     mov                  rdi,                  r13
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov           qword[rsi],                    0
	jmp	@main.60.@search.47.IfExit
@main.56.@search.45.IfFalse:
@main.60.@search.47.IfExit:
	jmp	@main.61.@search.41.ForIter
@main.61.@search.41.ForIter:
     mov                  rsi,                  r13
     add                  r13,                    1
	jmp	@main.53.@search.43.ForCon
@main.53.@search.43.ForCon:
     cmp                  r13,                    9
     mov                  rsi,                    0
   setle                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.54.@search.42.ForBody
	jmp	@main.62.@search.44.ForExit
@main.62.@search.44.ForExit:
	jmp	@main.52.@search.32.IfExit
@main.52.@search.32.IfExit:
	jmp	@main.41.@search.11.IfExit
@main.41.@search.11.IfExit:
	jmp	@main.63.@search.5.IfExit
@main.20.@search.3.IfFalse:
@main.63.@search.5.IfExit:
@main.14.@search.2.exit:
     mov                  rsi,                  rbx
     mov                  rsi,        qword[@count]
     mov                  rdi,           qword[rsi]
    push                  rsi
call	toString
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rax,                    0
	jmp	@main.2.exit
@main.2.exit:
     pop                  rbx
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   40
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



