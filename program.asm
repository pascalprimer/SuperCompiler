  global                 main
  extern	malloc


 section                .text
square:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
@square.1.enter:
     mov                  rdi,                  rdi
     mov                  rsi,                  rdi
     mov                  rax,                  rsi
     mov                  rcx,            qword[@p]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rdi
     mov                  rax,                  rdi
     mov                  rcx,            qword[@p]
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                  rsi
    imul                  rsi,                  rdi
     mov                  rax,                  rsi
	jmp	@square.2.exit
@square.2.exit:
     add                  rsp,                    8
     pop                  rbp
     ret
init:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   24
    push                  r12
    push                  r13
    push                  rbx
@init.1.enter:
     mov                  rsi,               140005
     mov                  rbx,               140005
     add                  rsi,                    1
     shl                  rsi,                    3
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     mov                  rdi,                  rsi
    call               malloc
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     mov                  rdi,                  rax
     mov           qword[rdi],                  rbx
     add                  rdi,                    8
     sub                  rsi,                    8
     mov                   r9,                  rdi
     mov                   r8,                    0
     mov                  r13,                    0
     mov                   r8,                    2
	jmp	@init.6.ForCon
@init.5.ForBody:
     mov                  rbx,                   r9
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                   r8
	jmp	@init.4.ForIter
@init.4.ForIter:
     add                   r8,                    1
     mov                  rsi,                   r8
	jmp	@init.6.ForCon
@init.6.ForCon:
     cmp                   r8,            qword[@p]
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@init.5.ForBody
	jmp	@init.7.ForExit
@init.7.ForExit:
     mov                   r8,                    2
	jmp	@init.10.ForCon
@init.9.ForBody:
     mov                  r13,                    1
	jmp	@init.14.ForCon
@init.13.ForBody:
     mov                  r12,                   r9
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,                   r9
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	square
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,            qword[@p]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov           qword[r12],                  rsi
	jmp	@init.12.ForIter
@init.12.ForIter:
     add                  r13,                    1
     mov                  rsi,                  r13
	jmp	@init.14.ForCon
@init.14.ForCon:
     cmp                  r13,                   15
     mov                  rax,                    0
   setle                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@init.13.ForBody
	jmp	@init.15.ForExit
@init.15.ForExit:
	jmp	@init.8.ForIter
@init.8.ForIter:
     add                   r8,                    1
     mov                  rsi,                   r8
	jmp	@init.10.ForCon
@init.10.ForCon:
     cmp                   r8,            qword[@p]
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@init.9.ForBody
	jmp	@init.11.ForExit
@init.11.ForExit:
     mov                   r8,                    2
	jmp	@init.18.ForCon
@init.17.ForBody:
     mov                  rbx,                   r9
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  r12,                    1
	jmp	@init.21.ForBody
@init.21.ForBody:
     mov                  rdi,                  rdi
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	square
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,            qword[@p]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rsi
     mov                  rbx,            qword[@b]
     mov                  rsi,                  rdi
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rbx,                   r9
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp                  rdi,           qword[rbx]
     mov                  rax,                    0
    sete                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@init.25.IfTrue
	jmp	@init.24.IfFalse
@init.25.IfTrue:
	jmp	@init.23.ForExit
	jmp	@init.26.IfExit
@init.24.IfFalse:
@init.26.IfExit:
	jmp	@init.20.ForIter
@init.20.ForIter:
     add                  r12,                    1
     mov                  rsi,                  r12
	jmp	@init.21.ForBody
@init.23.ForExit:
     mov                  rdi,            qword[@L]
     mov                  rsi,                  r12
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	lcm
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov            qword[@L],                  rsi
	jmp	@init.16.ForIter
@init.16.ForIter:
     add                   r8,                    1
     mov                  rsi,                   r8
	jmp	@init.18.ForCon
@init.18.ForCon:
     cmp                   r8,            qword[@p]
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@init.17.ForBody
	jmp	@init.19.ForExit
@init.19.ForExit:
     mov                  rsi,            qword[@b]
     mov           qword[rsi],                    1
     mov                  rsi,            qword[@b]
     mov         qword[rsi+8],                    1
@init.2.exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     add                  rsp,                   24
     pop                  rbp
     ret
Rand:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   32
@Rand.1.enter:
     mov                  rdi,                    1
     mov                  rdi,                    1
	jmp	@Rand.6.ForCon
@Rand.5.ForBody:
     mov                  rsi,           qword[@no]
    imul                  rsi,           qword[@aa]
     mov                  rsi,                  rsi
     add                  rsi,           qword[@bb]
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,          qword[@MOD]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov           qword[@no],                  rsi
	jmp	@Rand.4.ForIter
@Rand.4.ForIter:
     mov                  rsi,                  rdi
     add                  rdi,                    1
	jmp	@Rand.6.ForCon
@Rand.6.ForCon:
     cmp                  rdi,                    3
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@Rand.5.ForBody
	jmp	@Rand.7.ForExit
@Rand.7.ForExit:
     cmp           qword[@no],                    0
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@Rand.9.IfTrue
	jmp	@Rand.8.IfFalse
@Rand.9.IfTrue:
     mov                  rsi,           qword[@no]
     neg                  rsi
     mov           qword[@no],                  rsi
	jmp	@Rand.10.IfExit
@Rand.8.IfFalse:
@Rand.10.IfExit:
     mov                  rax,           qword[@no]
	jmp	@Rand.2.exit
@Rand.2.exit:
     add                  rsp,                   32
     pop                  rbp
     ret
build:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   64
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
@build.1.enter:
     mov                  r14,                  rdi
     mov                  r10,                  rsi
     mov                  r15,                  rdx
     mov                   r8,                    0
     cmp                  r10,                  r15
     mov                  rax,                    0
    sete                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@build.5.IfTrue
	jmp	@build.4.IfFalse
@build.5.IfTrue:
     mov                  rdi,          qword[@sum]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,            qword[@a]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov           qword[rdi],                  rsi
     mov                  rbx,            qword[@a]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     cmp                  rsi,            qword[@p]
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     cmp                  rsi,                    0
	je	@build.10.cmp_and
     mov                  rbx,            qword[@a]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rax,                    0
   setge                   al
     mov                  rsi,                  rax
     cmp                  rsi,                    0
@build.10.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov                  rsi,                  rax
     cmp                  rsi,                    0
	je	@build.11.cmp_and
     mov                  rbx,            qword[@a]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov                  rax,                  rsi
     mov                  rcx,            qword[@p]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,            qword[@b]
     mov                  rsi,                  rsi
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rax,                    0
    setg                   al
     mov                  rsi,                  rax
     cmp                  rsi,                    0
@build.11.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@build.8.IfTrue
	jmp	@build.7.IfFalse
@build.8.IfTrue:
     mov                  rbx,         qword[@flag]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rbx,            qword[@s]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rbx,            qword[@a]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov           qword[rdi],                  rsi
     mov                   r8,                    1
	jmp	@build.14.ForCon
@build.13.ForBody:
     mov                  rbx,            qword[@s]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,            qword[@s]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,                   r8
     sub                  rsi,                    1
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  rsi
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	square
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,            qword[@p]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov           qword[r12],                  rsi
	jmp	@build.12.ForIter
@build.12.ForIter:
     add                   r8,                    1
     mov                  rsi,                   r8
	jmp	@build.14.ForCon
@build.14.ForCon:
     cmp                   r8,            qword[@L]
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@build.13.ForBody
	jmp	@build.15.ForExit
@build.15.ForExit:
	jmp	@build.9.IfExit
@build.7.IfFalse:
@build.9.IfExit:
     mov                  rbx,          qword[@now]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@build.6.IfExit
@build.4.IfFalse:
     mov                  rsi,                  r14
    imul                  rsi,                    2
     mov                   r9,                  rsi
     mov                  rsi,                  r14
    imul                  rsi,                    2
     mov                  rsi,                  rsi
     add                  rsi,                    1
     mov                  r13,                  rsi
     mov                  rsi,                  r10
     add                  rsi,                  r15
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r9
     mov                  rsi,                  r10
     mov                  rdx,                  rbx
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	build
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
     mov                  rsi,                  rbx
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rsi,                  rsi
     mov                  rdx,                  r15
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	build
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
     mov                  r12,          qword[@sum]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rdi,          qword[@sum]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,          qword[@sum]
     mov                  rsi,                  r13
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rdi]
     add                  rsi,           qword[rbx]
     mov           qword[r12],                  rsi
     mov                  r12,         qword[@flag]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rdi,         qword[@flag]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,         qword[@flag]
     mov                  rsi,                  r13
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rdi]
     and                  rsi,           qword[rbx]
     mov           qword[r12],                  rsi
     mov                  rbx,         qword[@flag]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rax,                    0
    setg                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@build.17.IfTrue
	jmp	@build.16.IfFalse
@build.17.IfTrue:
     mov                   r8,                    0
	jmp	@build.21.ForCon
@build.20.ForBody:
     mov                  rbx,            qword[@s]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,            qword[@s]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,            qword[@s]
     mov                  rsi,                  r13
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rdi]
     add                  rsi,           qword[rbx]
     mov           qword[r12],                  rsi
	jmp	@build.19.ForIter
@build.19.ForIter:
     add                   r8,                    1
     mov                  rsi,                   r8
	jmp	@build.21.ForCon
@build.21.ForCon:
     cmp                   r8,            qword[@L]
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@build.20.ForBody
	jmp	@build.22.ForExit
@build.22.ForExit:
     mov                  rsi,          qword[@now]
     mov           qword[rsi],                    0
	jmp	@build.18.IfExit
@build.16.IfFalse:
@build.18.IfExit:
	jmp	@build.6.IfExit
@build.6.IfExit:
@build.2.exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   64
     pop                  rbp
     ret
lcm:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  rbx
@lcm.1.enter:
     mov                   r8,                  rdi
     mov                  r12,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r12
    push                   r8
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	gcd
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     pop                   r8
     mov                  rbx,                  rax
     mov                  rsi,                   r8
     mov                  rax,                  rsi
     mov                  rcx,                  rbx
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
    imul                  rsi,                  r12
     mov                  rax,                  rsi
	jmp	@lcm.2.exit
@lcm.2.exit:
     pop                  rbx
     pop                  r12
     pop                  rbp
     ret
query:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   40
    push                  r12
    push                  r14
    push                  r13
    push                  rbx
@query.1.enter:
     mov                  rdi,                  rdi
     mov                  r10,                  rsi
     mov                  r14,                  rdx
     cmp           qword[@pl],                  r10
     mov                  rax,                    0
   setle                   al
     mov                  rsi,                  rax
     cmp                  rsi,                    0
	je	@query.7.cmp_and
     cmp           qword[@pr],                  r14
     mov                  rax,                    0
   setge                   al
     mov                  rsi,                  rax
     cmp                  rsi,                    0
@query.7.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@query.5.IfTrue
	jmp	@query.4.IfFalse
@query.5.IfTrue:
     mov                  rbx,          qword[@sum]
     mov                  rsi,                  rdi
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rax,           qword[rbx]
	jmp	@query.2.exit
	jmp	@query.6.IfExit
@query.4.IfFalse:
@query.6.IfExit:
     mov                  rsi,                  rdi
    imul                  rsi,                    2
     mov                   r9,                  rsi
     mov                  rsi,                  rdi
    imul                  rsi,                    2
     mov                  rsi,                  rsi
     add                  rsi,                    1
     mov                  r13,                  rsi
     mov                  rsi,                  r10
     add                  rsi,                  r14
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  r12,                    0
     mov                  rbx,            qword[@t]
     mov                  rsi,                  rdi
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rax,                    0
    setg                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@query.9.IfTrue
	jmp	@query.8.IfFalse
@query.9.IfTrue:
     mov                  rdi,                  rdi
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	pushdown
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
	jmp	@query.10.IfExit
@query.8.IfFalse:
@query.10.IfExit:
     cmp           qword[@pl],                   r8
     mov                  rax,                    0
   setle                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@query.12.IfTrue
	jmp	@query.11.IfFalse
@query.12.IfTrue:
     mov                  rdi,                   r9
     mov                  rsi,                  r10
     mov                  rdx,                   r8
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	query
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
     mov                  rbx,                  rax
     mov                  rsi,                  r12
     add                  rsi,                  rbx
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,          qword[@MOD]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r12,                  rsi
	jmp	@query.13.IfExit
@query.11.IfFalse:
@query.13.IfExit:
     mov                  rsi,                   r8
     add                  rsi,                    1
     cmp           qword[@pr],                  rsi
     mov                  rax,                    0
   setge                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@query.15.IfTrue
	jmp	@query.14.IfFalse
@query.15.IfTrue:
     mov                  rsi,                   r8
     add                  rsi,                    1
     mov                  rdi,                  r13
     mov                  rsi,                  rsi
     mov                  rdx,                  r14
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	query
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
     mov                  rbx,                  rax
     mov                  rsi,                  r12
     add                  rsi,                  rbx
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,          qword[@MOD]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r12,                  rsi
	jmp	@query.16.IfExit
@query.14.IfFalse:
@query.16.IfExit:
     mov                  rax,                  r12
	jmp	@query.2.exit
@query.2.exit:
     pop                  rbx
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   40
     pop                  rbp
     ret
RandRange:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
@RandRange.1.enter:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	Rand
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rsi,                  rsi
     sub                  rsi,                  rdi
     mov                  rsi,                  rsi
     add                  rsi,                    1
     mov                  rbx,                  rbx
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rsi,                  rsi
     add                  rsi,                    1
     mov                  rax,                  rsi
	jmp	@RandRange.2.exit
@RandRange.2.exit:
     pop                  rbx
     pop                  rbp
     ret
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  128
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
     mov                  rsi,               500005
     mov                  rdi,               500005
     add                  rsi,                    1
     shl                  rsi,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  rsi
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov         qword[rbp-8],                  rax
     mov                  rdx,         qword[rbp-8]
     mov           qword[rdx],                  rdi
     mov                  rax,         qword[rbp-8]
     add                  rax,                    8
     mov         qword[rbp-8],                  rax
     sub                  rsi,                    8
     mov                  rcx,         qword[rbp-8]
     mov            qword[@b],                  rcx
     mov                  rsi,               500005
     mov                  rdi,               500005
     add                  rsi,                    1
     shl                  rsi,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  rsi
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  r15,                  rax
     mov           qword[r15],                  rdi
     add                  r15,                    8
     sub                  rsi,                    8
     mov          qword[@now],                  r15
     mov                  rsi,               500005
     mov                  rdi,               500005
     add                  rsi,                    1
     shl                  rsi,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  rsi
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  r14,                  rax
     mov           qword[r14],                  rdi
     add                  r14,                    8
     sub                  rsi,                    8
     mov            qword[@t],                  r14
     mov                  rsi,               200005
     mov                  rdi,               200005
     add                  rsi,                    1
     shl                  rsi,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  rsi
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  r13,                  rax
     mov           qword[r13],                  rdi
     add                  r13,                    8
     sub                  rsi,                    8
     mov            qword[@a],                  r13
     mov            qword[@L],                    1
     mov                  rsi,               500005
     mov                  rdi,               500005
     add                  rsi,                    1
     shl                  rsi,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  rsi
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  r12,                  rax
     mov           qword[r12],                  rdi
     add                  r12,                    8
     sub                  rsi,                    8
     mov         qword[@flag],                  r12
     mov                  rsi,               500005
     mov                  rdi,               500005
     add                  rsi,                    1
     shl                  rsi,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  rsi
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov           qword[rbx],                  rdi
     add                  rbx,                    8
     sub                  rsi,                    8
     mov                  r10,                  rbx
     mov                  r11,                  rbx
     add                  r11,                  rsi
@main.22.Allocate2:
     mov                  rsi,                   80
     mov                  rdi,                   80
     add                  rsi,                    1
     shl                  rsi,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  rsi
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                   r9,                  rax
     mov            qword[r9],                  rdi
     add                   r9,                    8
     sub                  rsi,                    8
     mov           qword[r10],                   r9
     add                  r10,                    8
     cmp                  r10,                  r11
	jl	@main.22.Allocate2
     mov            qword[@s],                  rbx
     mov                  rsi,               500005
     mov                  rdi,               500005
     add                  rsi,                    1
     shl                  rsi,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  rsi
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                   r8,                  rax
     mov            qword[r8],                  rdi
     add                   r8,                    8
     sub                  rsi,                    8
     mov          qword[@sum],                   r8
     mov          qword[@ans],                    0
     mov           qword[@aa],                13131
     mov           qword[@bb],                 5353
     mov          qword[@MOD],                32761
     mov           qword[@no],                    1
     mov           qword[@pl],                    0
     mov           qword[@pr],                    0
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                  128
     pop                  rbp
     ret
gcd:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  rbx
@gcd.1.enter:
     mov                  r12,                  rdi
     mov                  rbx,                  rsi
     cmp                  rbx,                    0
     mov                  rax,                    0
    sete                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@gcd.5.IfTrue
	jmp	@gcd.4.IfFalse
@gcd.5.IfTrue:
     mov                  rax,                  r12
	jmp	@gcd.2.exit
	jmp	@gcd.6.IfExit
@gcd.4.IfFalse:
@gcd.6.IfExit:
     cmp                  r12,                  rbx
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@gcd.8.IfTrue
	jmp	@gcd.7.IfFalse
@gcd.8.IfTrue:
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
    push                  rdi
    push                  rsi
call	gcd
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rax,                  rsi
	jmp	@gcd.2.exit
	jmp	@gcd.9.IfExit
@gcd.7.IfFalse:
     mov                  rsi,                  r12
     mov                  rax,                  rsi
     mov                  rcx,                  rbx
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rdi,                  rbx
     mov                  rsi,                  rsi
    push                  rdi
    push                  rsi
call	gcd
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rax,                  rsi
	jmp	@gcd.2.exit
	jmp	@gcd.9.IfExit
@gcd.9.IfExit:
@gcd.2.exit:
     pop                  rbx
     pop                  r12
     pop                  rbp
     ret
update:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   80
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
@update.1.enter:
     mov                  r10,                  rdi
     mov                  r15,                  rsi
     mov                  r13,                  rdx
     cmp           qword[@pl],                  r15
     mov                  rax,                    0
   setle                   al
     mov                  rsi,                  rax
     cmp                  rsi,                    0
	je	@update.7.cmp_and
     cmp           qword[@pr],                  r13
     mov                  rax,                    0
   setge                   al
     mov                  rsi,                  rax
     cmp                  rsi,                    0
@update.7.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov                  rsi,                  rax
     cmp                  rsi,                    0
	je	@update.8.cmp_and
     mov                  rbx,         qword[@flag]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rax,                    0
    setg                   al
     mov                  rsi,                  rax
     cmp                  rsi,                    0
@update.8.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@update.5.IfTrue
	jmp	@update.4.IfFalse
@update.5.IfTrue:
     mov                  rdi,          qword[@now]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,          qword[@now]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     add                  rsi,                    1
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,            qword[@L]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov           qword[rdi],                  rsi
     mov                  r12,          qword[@sum]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,            qword[@s]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,          qword[@now]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov           qword[r12],                  rsi
     mov                  rdi,            qword[@t]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,            qword[@t]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     add                  rsi,                    1
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,            qword[@L]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov           qword[rdi],                  rsi
	jmp	@update.2.exit
	jmp	@update.6.IfExit
@update.4.IfFalse:
@update.6.IfExit:
     cmp                  r15,                  r13
     mov                  rax,                    0
    sete                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@update.10.IfTrue
	jmp	@update.9.IfFalse
@update.10.IfTrue:
     mov                  r12,          qword[@sum]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,          qword[@sum]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	square
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,            qword[@p]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov           qword[r12],                  rsi
     mov                  rdi,          qword[@sum]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,            qword[@b]
     mov                  rsi,           qword[rdi]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rax,                    0
    setg                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@update.13.IfTrue
	jmp	@update.12.IfFalse
@update.13.IfTrue:
     mov                  rbx,         qword[@flag]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     mov                  rbx,            qword[@s]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rbx,          qword[@sum]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov           qword[rdi],                  rsi
     mov                   r8,                    0
     mov                   r8,                    1
	jmp	@update.17.ForCon
@update.16.ForBody:
     mov                  rbx,            qword[@s]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  r12,           qword[rbx]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,            qword[@s]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,                   r8
     sub                  rsi,                    1
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  rsi
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	square
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,            qword[@p]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov           qword[r12],                  rsi
	jmp	@update.15.ForIter
@update.15.ForIter:
     add                   r8,                    1
     mov                  rsi,                   r8
	jmp	@update.17.ForCon
@update.17.ForCon:
     cmp                   r8,            qword[@L]
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@update.16.ForBody
	jmp	@update.18.ForExit
@update.18.ForExit:
	jmp	@update.14.IfExit
@update.12.IfFalse:
@update.14.IfExit:
	jmp	@update.2.exit
	jmp	@update.11.IfExit
@update.9.IfFalse:
@update.11.IfExit:
     mov                  rbx,            qword[@t]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rax,                    0
    setg                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@update.20.IfTrue
	jmp	@update.19.IfFalse
@update.20.IfTrue:
     mov                  rdi,                  r10
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	pushdown
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
	jmp	@update.21.IfExit
@update.19.IfFalse:
@update.21.IfExit:
     mov                  rsi,                  r10
    imul                  rsi,                    2
     mov                  r14,                  rsi
     mov                  rsi,                  r10
    imul                  rsi,                    2
     mov                  rsi,                  rsi
     add                  rsi,                    1
     mov                   r9,                  rsi
     mov                  rsi,                  r15
     add                  rsi,                  r13
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     cmp           qword[@pl],                  rbx
     mov                  rax,                    0
   setle                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@update.23.IfTrue
	jmp	@update.22.IfFalse
@update.23.IfTrue:
     mov                  rdi,                  r14
     mov                  rsi,                  r15
     mov                  rdx,                  rbx
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	update
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
	jmp	@update.24.IfExit
@update.22.IfFalse:
@update.24.IfExit:
     mov                  rsi,                  rbx
     add                  rsi,                    1
     cmp           qword[@pr],                  rsi
     mov                  rax,                    0
   setge                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@update.26.IfTrue
	jmp	@update.25.IfFalse
@update.26.IfTrue:
     mov                  rsi,                  rbx
     add                  rsi,                    1
     mov                  rdi,                   r9
     mov                  rsi,                  rsi
     mov                  rdx,                  r13
    push                  r10
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	update
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r10
	jmp	@update.27.IfExit
@update.25.IfFalse:
@update.27.IfExit:
     mov                  r12,          qword[@sum]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rdi,          qword[@sum]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,          qword[@sum]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rdi]
     add                  rsi,           qword[rbx]
     mov           qword[r12],                  rsi
     mov                  r12,         qword[@flag]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rdi,         qword[@flag]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,         qword[@flag]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rdi]
     and                  rsi,           qword[rbx]
     mov           qword[r12],                  rsi
     mov                  rbx,         qword[@flag]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rax,                    0
    setg                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@update.29.IfTrue
	jmp	@update.28.IfFalse
@update.29.IfTrue:
     mov                  r13,                    0
     mov                  r13,                    0
	jmp	@update.33.ForCon
@update.32.ForBody:
     mov                  rbx,            qword[@s]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
     mov                  rsi,                  r13
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rdi,            qword[@s]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,          qword[@now]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,                  r13
     add                  rsi,           qword[rbx]
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,            qword[@L]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  r12,           qword[rdi]
     mov                  rsi,                  rsi
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rdi,            qword[@s]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,          qword[@now]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,                  r13
     add                  rsi,           qword[rbx]
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,            qword[@L]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rbx,           qword[rdi]
     mov                  rsi,                  rsi
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[r12]
     add                  rsi,           qword[rbx]
     mov            qword[r8],                  rsi
	jmp	@update.31.ForIter
@update.31.ForIter:
     add                  r13,                    1
     mov                  rsi,                  r13
	jmp	@update.33.ForCon
@update.33.ForCon:
     cmp                  r13,            qword[@L]
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@update.32.ForBody
	jmp	@update.34.ForExit
@update.34.ForExit:
     mov                  rbx,          qword[@now]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
	jmp	@update.30.IfExit
@update.28.IfFalse:
@update.30.IfExit:
@update.2.exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   80
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                   72
    push                  r12
    push                  rbx
@main.1.enter:
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	getInt
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov            qword[@n],                  rsi
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	getInt
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov            qword[@m],                  rsi
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	getInt
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov            qword[@p],                  rsi
     mov                  r12,                    1
     mov                  r12,                    1
	jmp	@main.6.ForCon
@main.5.ForBody:
     mov                  rbx,            qword[@a]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,                    0
     mov                  rsi,            qword[@p]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	RandRange
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov           qword[rbx],                  rsi
	jmp	@main.4.ForIter
@main.4.ForIter:
     add                  r12,                    1
     mov                  rsi,                  r12
	jmp	@main.6.ForCon
@main.6.ForCon:
     cmp                  r12,            qword[@n]
     mov                  rax,                    0
   setle                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.5.ForBody
	jmp	@main.7.ForExit
@main.7.ForExit:
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	init
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rdi,                    1
     mov                  rsi,                    1
     mov                  rdx,            qword[@n]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	build
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
	jmp	@main.10.ForCon
@main.9.ForBody:
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	Rand
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov           qword[@op],                  rsi
     mov                  rdi,                    1
     mov                  rsi,            qword[@n]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	RandRange
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov           qword[@pl],                  rsi
     mov                  rdi,                    1
     mov                  rsi,            qword[@n]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	RandRange
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov           qword[@pr],                  rsi
	jmp	@main.14.ForCon
@main.13.ForBody:
     mov                  rdi,                    1
     mov                  rsi,            qword[@n]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	RandRange
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov           qword[@pr],                  rsi
	jmp	@main.12.ForIter
@main.12.ForIter:
	jmp	@main.14.ForCon
@main.14.ForCon:
     mov                  rsi,           qword[@pr]
     cmp                  rsi,           qword[@pl]
     mov                  rax,                    0
   setle                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.13.ForBody
	jmp	@main.15.ForExit
@main.15.ForExit:
     cmp           qword[@op],                    0
     mov                  rax,                    0
    sete                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.17.IfTrue
	jmp	@main.16.IfFalse
@main.17.IfTrue:
     mov                  rdi,                    1
     mov                  rsi,                    1
     mov                  rdx,            qword[@n]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	update
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
	jmp	@main.18.IfExit
@main.16.IfFalse:
@main.18.IfExit:
     cmp           qword[@op],                    1
     mov                  rax,                    0
    sete                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.20.IfTrue
	jmp	@main.19.IfFalse
@main.20.IfTrue:
     mov                  rdi,                    1
     mov                  rsi,                    1
     mov                  rdx,            qword[@n]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	query
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rsi,          qword[@ans]
     add                  rsi,                  rbx
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,          qword[@MOD]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov          qword[@ans],                  rsi
	jmp	@main.21.IfExit
@main.19.IfFalse:
@main.21.IfExit:
     mov                  rsi,            qword[@m]
     sub            qword[@m],                    1
	jmp	@main.8.ForIter
@main.8.ForIter:
	jmp	@main.10.ForCon
@main.10.ForCon:
     cmp            qword[@m],                    0
     mov                  rax,                    0
    setg                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.9.ForBody
	jmp	@main.11.ForExit
@main.11.ForExit:
     mov                  rdi,          qword[@ans]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rax,                    0
	jmp	@main.2.exit
@main.2.exit:
     pop                  rbx
     pop                  r12
     add                  rsp,                   72
     pop                  rbp
     ret
pushdown:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   40
    push                  rbx
@pushdown.1.enter:
     mov                  rbx,                  rdi
     mov                  rdi,            qword[@t]
     mov                  rsi,                  rbx
     shl                  rsi,                    3
     add                  rdi,                  rsi
     cmp           qword[rdi],                    0
     mov                  rax,                    0
    setg                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@pushdown.5.IfTrue
	jmp	@pushdown.4.IfFalse
@pushdown.5.IfTrue:
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  r11,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,                    2
     mov                  rsi,                  rsi
     add                  rsi,                    1
     mov                  r10,                  rsi
     mov                   r9,          qword[@now]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                   r9,                  rsi
     mov                   r8,          qword[@now]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rdi,            qword[@t]
     mov                  rsi,                  rbx
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,            qword[r8]
     add                  rsi,           qword[rdi]
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,            qword[@L]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov            qword[r9],                  rsi
     mov                   r9,          qword[@sum]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                   r9,                  rsi
     mov                  rdi,            qword[@s]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                   r8,          qword[@now]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,            qword[r8]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     mov            qword[r9],                  rsi
     mov                   r9,            qword[@t]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                   r9,                  rsi
     mov                   r8,            qword[@t]
     mov                  rsi,                  r11
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rdi,            qword[@t]
     mov                  rsi,                  rbx
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,            qword[r8]
     add                  rsi,           qword[rdi]
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,            qword[@L]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov            qword[r9],                  rsi
     mov                   r9,          qword[@now]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                   r9,                  rsi
     mov                   r8,          qword[@now]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rdi,            qword[@t]
     mov                  rsi,                  rbx
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,            qword[r8]
     add                  rsi,           qword[rdi]
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,            qword[@L]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov            qword[r9],                  rsi
     mov                   r9,          qword[@sum]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                   r9,                  rsi
     mov                  rdi,            qword[@s]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                   r8,          qword[@now]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,            qword[r8]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     mov            qword[r9],                  rsi
     mov                   r9,            qword[@t]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                   r9,                  rsi
     mov                   r8,            qword[@t]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rdi,            qword[@t]
     mov                  rsi,                  rbx
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,            qword[r8]
     add                  rsi,           qword[rdi]
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
     mov                  rcx,            qword[@L]
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov            qword[r9],                  rsi
     mov                  rdi,            qword[@t]
     mov                  rsi,                  rbx
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov           qword[rdi],                    0
	jmp	@pushdown.6.IfExit
@pushdown.4.IfFalse:
@pushdown.6.IfExit:
@pushdown.2.exit:
     pop                  rbx
     add                  rsp,                   40
     pop                  rbp
     ret


 section                 .bss
@b:
  	resq 		1
@now:
  	resq 		1
@t:
  	resq 		1
@a:
  	resq 		1
@n:
  	resq 		1
@m:
  	resq 		1
@p:
  	resq 		1
@op:
  	resq 		1
@L:
  	resq 		1
@flag:
  	resq 		1
@s:
  	resq 		1
@sum:
  	resq 		1
@ans:
  	resq 		1
@aa:
  	resq 		1
@bb:
  	resq 		1
@MOD:
  	resq 		1
@no:
  	resq 		1
@pl:
  	resq 		1
@pr:
  	resq 		1


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



