  global                 main
  extern	malloc


 section                .text
p:
    push                  rbp
     mov                  rbp,                  rsp
     mov        qword[rbp-16],                  rdi
     cmp                  rdi,                    0
      jl @p_purity_checkin_out
     cmp                  rdi,                  150
     jnl @p_purity_checkin_out
     mov                  rdx,                  @@p
     mov                  rcx,        qword[rbp-16]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov                  rdx,           qword[rdx]
     cmp                  rdx,          -1887415157
      je @p_purity_checkin_out
     mov                  rax,                  rdx
     pop                  rbp
     ret
@p_purity_checkin_out:
     sub                  rsp,                   16
    push                  r12
    push                  rbx
@p.1.enter:
     mov                   r8,                  rdi
     cmp                   r8,                   20
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@p.4.IfTrue
	jmp	@p.3.IfFalse
@p.4.IfTrue:
     mov                  r12,                   r8
     sub                  r12,                    1
     mov                  rdi,                  r12
    push                   r8
    push                  rsi
     sub                  rsp,                    8
  call	p
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                    1
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rbx,                   r8
     mov                  rax,                  rbx
     mov                  rcx,                  r12
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    2
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    3
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    4
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    5
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    6
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    7
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    8
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    9
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   10
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   11
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   13
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   14
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   15
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   16
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   17
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   18
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   19
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   20
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rax,                  rsi
	jmp	@p.2.exit
	jmp	@p.5.IfExit
@p.3.IfFalse:
     mov                  rax,                    0
	jmp	@p.2.exit
@p.5.IfExit:
@p.2.exit:
     pop                  rbx
     pop                  r12
     add                  rsp,                   16
     mov                  rdi,                  rax
     cmp        qword[rbp-16],                    0
      jl @p_purity_addition_out
     cmp        qword[rbp-16],                  150
     jnl @p_purity_addition_out
     mov                  rdx,                  @@p
     mov                  rcx,        qword[rbp-16]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov           qword[rdx],                  rax
     mov                  rax,                  rdi
     pop                  rbp
     ret
@p_purity_addition_out:
     pop                  rbp
     ret
f:
    push                  rbp
     mov                  rbp,                  rsp
     mov        qword[rbp-16],                  rdi
     cmp                  rdi,                    0
      jl @f_purity_checkin_out
     cmp                  rdi,                  150
     jnl @f_purity_checkin_out
     mov                  rdx,                  @@f
     mov                  rcx,        qword[rbp-16]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov                  rdx,           qword[rdx]
     cmp                  rdx,          -1887415157
      je @f_purity_checkin_out
     mov                  rax,                  rdx
     pop                  rbp
     ret
@f_purity_checkin_out:
     sub                  rsp,                   16
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
@f.1.enter:
     mov                  rsi,                  rdi
     mov                  r11,                  rsi
     cmp                  r11,                   20
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@f.8.@h.6.@p.4.IfTrue
	jmp	@f.9.@h.7.@p.3.IfFalse
@f.8.@h.6.@p.4.IfTrue:
     mov                  r15,                  r11
     sub                  r15,                    1
     mov                  r10,                  r15
     cmp                  r10,                   20
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@f.14.@p.4.IfTrue
	jmp	@f.15.@p.3.IfFalse
@f.14.@p.4.IfTrue:
     mov                  r14,                  r10
     sub                  r14,                    1
     mov                   r9,                  r14
     cmp                   r9,                   20
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@f.19.@p.4.IfTrue
	jmp	@f.20.@p.3.IfFalse
@f.19.@p.4.IfTrue:
     mov                  r13,                   r9
     sub                  r13,                    1
     mov                   r8,                  r13
     cmp                   r8,                   20
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@f.24.@p.4.IfTrue
	jmp	@f.25.@p.3.IfFalse
@f.24.@p.4.IfTrue:
     mov                  r12,                   r8
     sub                  r12,                    1
     mov                  rdi,                  r12
    push                  r11
    push                   r9
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
  call	p
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                    1
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rbx,                   r8
     mov                  rax,                  rbx
     mov                  rcx,                  r12
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    2
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    3
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    4
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    5
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    6
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    7
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    8
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    9
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   10
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   11
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   13
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   14
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   15
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   16
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   17
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   18
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   19
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   20
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
	jmp	@f.22.@p.2.exit
	jmp	@f.26.@p.5.IfExit
@f.25.@p.3.IfFalse:
     mov                  rsi,                    0
	jmp	@f.22.@p.2.exit
@f.26.@p.5.IfExit:
@f.22.@p.2.exit:
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                    1
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rbx,                   r9
     mov                  rax,                  rbx
     mov                  rcx,                  r13
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    2
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    3
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    4
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    5
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    6
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    7
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    8
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    9
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   10
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   11
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   13
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   14
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   15
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   16
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   17
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   18
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   19
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   20
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
	jmp	@f.17.@p.2.exit
	jmp	@f.21.@p.5.IfExit
@f.20.@p.3.IfFalse:
     mov                  rsi,                    0
	jmp	@f.17.@p.2.exit
@f.21.@p.5.IfExit:
@f.17.@p.2.exit:
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                    1
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rbx,                  r10
     mov                  rax,                  rbx
     mov                  rcx,                  r14
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    2
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    3
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    4
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    5
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    6
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    7
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    8
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    9
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   10
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   11
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   13
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   14
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   15
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   16
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   17
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   18
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   19
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   20
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
	jmp	@f.12.@p.2.exit
	jmp	@f.16.@p.5.IfExit
@f.15.@p.3.IfFalse:
     mov                  rsi,                    0
	jmp	@f.12.@p.2.exit
@f.16.@p.5.IfExit:
@f.12.@p.2.exit:
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                    1
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rbx,                  r11
     mov                  rax,                  rbx
     mov                  rcx,                  r15
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    2
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    3
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    4
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    5
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    6
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    7
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    8
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    9
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   10
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   11
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   13
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   14
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   15
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   16
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   17
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   18
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   19
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   20
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
	jmp	@f.10.@h.4.@p.2.exit
	jmp	@f.11.@h.8.@p.5.IfExit
@f.9.@h.7.@p.3.IfFalse:
     mov                  rsi,                    0
	jmp	@f.10.@h.4.@p.2.exit
@f.11.@h.8.@p.5.IfExit:
@f.10.@h.4.@p.2.exit:
     mov                  rax,                  rsi
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   16
     mov                  rdi,                  rax
     cmp        qword[rbp-16],                    0
      jl @f_purity_addition_out
     cmp        qword[rbp-16],                  150
     jnl @f_purity_addition_out
     mov                  rdx,                  @@f
     mov                  rcx,        qword[rbp-16]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov           qword[rdx],                  rax
     mov                  rax,                  rdi
     pop                  rbp
     ret
@f_purity_addition_out:
     pop                  rbp
     ret
g:
    push                  rbp
     mov                  rbp,                  rsp
     mov        qword[rbp-16],                  rdi
     cmp                  rdi,                    0
      jl @g_purity_checkin_out
     cmp                  rdi,                  150
     jnl @g_purity_checkin_out
     mov                  rdx,                  @@g
     mov                  rcx,        qword[rbp-16]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov                  rdx,           qword[rdx]
     cmp                  rdx,          -1887415157
      je @g_purity_checkin_out
     mov                  rax,                  rdx
     pop                  rbp
     ret
@g_purity_checkin_out:
     sub                  rsp,                   16
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
@g.1.enter:
     mov                  rsi,                  rdi
     mov                  r11,                  rsi
     cmp                  r11,                   20
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@g.8.@p.4.IfTrue
	jmp	@g.9.@p.3.IfFalse
@g.8.@p.4.IfTrue:
     mov                  r15,                  r11
     sub                  r15,                    1
     mov                  r10,                  r15
     cmp                  r10,                   20
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@g.13.@p.4.IfTrue
	jmp	@g.14.@p.3.IfFalse
@g.13.@p.4.IfTrue:
     mov                  r14,                  r10
     sub                  r14,                    1
     mov                   r9,                  r14
     cmp                   r9,                   20
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@g.18.@p.4.IfTrue
	jmp	@g.19.@p.3.IfFalse
@g.18.@p.4.IfTrue:
     mov                  r13,                   r9
     sub                  r13,                    1
     mov                   r8,                  r13
     cmp                   r8,                   20
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@g.23.@p.4.IfTrue
	jmp	@g.24.@p.3.IfFalse
@g.23.@p.4.IfTrue:
     mov                  r12,                   r8
     sub                  r12,                    1
     mov                  rdi,                  r12
    push                  r11
    push                   r8
    push                   r9
    push                  rsi
    push                  r10
     sub                  rsp,                    8
  call	p
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                    1
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rbx,                   r8
     mov                  rax,                  rbx
     mov                  rcx,                  r12
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    2
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    3
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    4
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    5
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    6
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    7
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    8
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    9
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   10
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   11
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   13
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   14
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   15
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   16
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   17
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   18
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   19
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   20
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
	jmp	@g.21.@p.2.exit
	jmp	@g.25.@p.5.IfExit
@g.24.@p.3.IfFalse:
     mov                  rsi,                    0
	jmp	@g.21.@p.2.exit
@g.25.@p.5.IfExit:
@g.21.@p.2.exit:
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                    1
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rbx,                   r9
     mov                  rax,                  rbx
     mov                  rcx,                  r13
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    2
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    3
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    4
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    5
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    6
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    7
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    8
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    9
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   10
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   11
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   13
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   14
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   15
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   16
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   17
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   18
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   19
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   20
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
	jmp	@g.16.@p.2.exit
	jmp	@g.20.@p.5.IfExit
@g.19.@p.3.IfFalse:
     mov                  rsi,                    0
	jmp	@g.16.@p.2.exit
@g.20.@p.5.IfExit:
@g.16.@p.2.exit:
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                    1
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rbx,                  r10
     mov                  rax,                  rbx
     mov                  rcx,                  r14
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    2
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    3
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    4
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    5
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    6
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    7
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    8
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    9
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   10
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   11
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   13
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   14
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   15
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   16
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   17
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   18
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   19
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   20
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
	jmp	@g.11.@p.2.exit
	jmp	@g.15.@p.5.IfExit
@g.14.@p.3.IfFalse:
     mov                  rsi,                    0
	jmp	@g.11.@p.2.exit
@g.15.@p.5.IfExit:
@g.11.@p.2.exit:
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                    1
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rbx,                  r11
     mov                  rax,                  rbx
     mov                  rcx,                  r15
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    2
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    3
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    4
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    5
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    6
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    7
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    8
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    9
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   10
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   11
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   13
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   14
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   15
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   16
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   17
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   18
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   19
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   20
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
	jmp	@g.6.@p.2.exit
	jmp	@g.10.@p.5.IfExit
@g.9.@p.3.IfFalse:
     mov                  rsi,                    0
	jmp	@g.6.@p.2.exit
@g.10.@p.5.IfExit:
@g.6.@p.2.exit:
     mov                  rax,                  rsi
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   16
     mov                  rdi,                  rax
     cmp        qword[rbp-16],                    0
      jl @g_purity_addition_out
     cmp        qword[rbp-16],                  150
     jnl @g_purity_addition_out
     mov                  rdx,                  @@g
     mov                  rcx,        qword[rbp-16]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov           qword[rdx],                  rax
     mov                  rax,                  rdi
     pop                  rbp
     ret
@g_purity_addition_out:
     pop                  rbp
     ret
h:
    push                  rbp
     mov                  rbp,                  rsp
     mov        qword[rbp-32],                  rdi
     cmp                  rdi,                    0
      jl @h_purity_checkin_out
     cmp                  rdi,                  150
     jnl @h_purity_checkin_out
     mov                  rdx,                  @@h
     mov                  rcx,        qword[rbp-32]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov                  rdx,           qword[rdx]
     cmp                  rdx,          -1887415157
      je @h_purity_checkin_out
     mov                  rax,                  rdx
     pop                  rbp
     ret
@h_purity_checkin_out:
     sub                  rsp,                   32
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
@h.1.enter:
     mov         qword[rbp-8],                  rdi
     cmp         qword[rbp-8],                   20
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@h.6.@p.4.IfTrue
	jmp	@h.7.@p.3.IfFalse
@h.6.@p.4.IfTrue:
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-16],                  rcx
     mov                  rax,        qword[rbp-16]
     sub                  rax,                    1
     mov        qword[rbp-16],                  rax
     mov                  r11,        qword[rbp-16]
     cmp                  r11,                   20
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@h.11.@p.4.IfTrue
	jmp	@h.12.@p.3.IfFalse
@h.11.@p.4.IfTrue:
     mov                  r15,                  r11
     sub                  r15,                    1
     mov                  r10,                  r15
     cmp                  r10,                   20
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@h.16.@p.4.IfTrue
	jmp	@h.17.@p.3.IfFalse
@h.16.@p.4.IfTrue:
     mov                  r14,                  r10
     sub                  r14,                    1
     mov                   r9,                  r14
     cmp                   r9,                   20
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@h.21.@p.4.IfTrue
	jmp	@h.22.@p.3.IfFalse
@h.21.@p.4.IfTrue:
     mov                  r13,                   r9
     sub                  r13,                    1
     mov                   r8,                  r13
     cmp                   r8,                   20
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@h.26.@p.4.IfTrue
	jmp	@h.27.@p.3.IfFalse
@h.26.@p.4.IfTrue:
     mov                  r12,                   r8
     sub                  r12,                    1
     mov                  rdi,                  r12
    push                   r8
    push                  r11
    push                  rsi
    push                  r10
    push                   r9
     sub                  rsp,                    8
  call	p
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                  rsi
     pop                  r11
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                    1
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rbx,                   r8
     mov                  rax,                  rbx
     mov                  rcx,                  r12
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    2
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    3
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    4
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    5
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    6
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    7
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    8
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    9
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   10
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   11
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   13
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   14
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   15
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   16
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   17
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   18
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   19
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   20
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
	jmp	@h.24.@p.2.exit
	jmp	@h.28.@p.5.IfExit
@h.27.@p.3.IfFalse:
     mov                  rsi,                    0
	jmp	@h.24.@p.2.exit
@h.28.@p.5.IfExit:
@h.24.@p.2.exit:
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                    1
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rbx,                   r9
     mov                  rax,                  rbx
     mov                  rcx,                  r13
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    2
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    3
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    4
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    5
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    6
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    7
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    8
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    9
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   10
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   11
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   13
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   14
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   15
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   16
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   17
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   18
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   19
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   20
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
	jmp	@h.19.@p.2.exit
	jmp	@h.23.@p.5.IfExit
@h.22.@p.3.IfFalse:
     mov                  rsi,                    0
	jmp	@h.19.@p.2.exit
@h.23.@p.5.IfExit:
@h.19.@p.2.exit:
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                    1
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rbx,                  r10
     mov                  rax,                  rbx
     mov                  rcx,                  r14
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    2
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    3
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    4
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    5
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    6
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    7
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    8
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    9
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   10
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   11
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   13
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   14
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   15
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   16
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   17
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   18
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   19
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   20
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
	jmp	@h.14.@p.2.exit
	jmp	@h.18.@p.5.IfExit
@h.17.@p.3.IfFalse:
     mov                  rsi,                    0
	jmp	@h.14.@p.2.exit
@h.18.@p.5.IfExit:
@h.14.@p.2.exit:
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                    1
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rbx,                  r11
     mov                  rax,                  rbx
     mov                  rcx,                  r15
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    2
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    3
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    4
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    5
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    6
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    7
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    8
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    9
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   10
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   11
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   13
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   14
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   15
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   16
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   17
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   18
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   19
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   20
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
	jmp	@h.9.@p.2.exit
	jmp	@h.13.@p.5.IfExit
@h.12.@p.3.IfFalse:
     mov                  rsi,                    0
	jmp	@h.9.@p.2.exit
@h.13.@p.5.IfExit:
@h.9.@p.2.exit:
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                    1
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rbx,         qword[rbp-8]
     mov                  rax,                  rbx
     mov                  rcx,        qword[rbp-16]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                    2
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                    3
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                    4
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                    5
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                    6
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                    7
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                    8
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                    9
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                   10
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                   11
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                   12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                   13
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                   14
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                   15
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                   16
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                   17
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                   18
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                   19
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                   20
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
	jmp	@h.4.@p.2.exit
	jmp	@h.8.@p.5.IfExit
@h.7.@p.3.IfFalse:
     mov                  rsi,                    0
	jmp	@h.4.@p.2.exit
@h.8.@p.5.IfExit:
@h.4.@p.2.exit:
     mov                  rax,                  rsi
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   32
     mov                  rdi,                  rax
     cmp        qword[rbp-32],                    0
      jl @h_purity_addition_out
     cmp        qword[rbp-32],                  150
     jnl @h_purity_addition_out
     mov                  rdx,                  @@h
     mov                  rcx,        qword[rbp-32]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov           qword[rdx],                  rax
     mov                  rax,                  rdi
     pop                  rbp
     ret
@h_purity_addition_out:
     pop                  rbp
     ret
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  150
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov           qword[@@h],                  rsi
     mov           qword[@@h],          -1887415157
     mov         qword[@@h+8],          -1887415157
     mov        qword[@@h+16],          -1887415157
     mov        qword[@@h+24],          -1887415157
     mov        qword[@@h+32],          -1887415157
     mov        qword[@@h+40],          -1887415157
     mov        qword[@@h+48],          -1887415157
     mov        qword[@@h+56],          -1887415157
     mov        qword[@@h+64],          -1887415157
     mov        qword[@@h+72],          -1887415157
     mov        qword[@@h+80],          -1887415157
     mov        qword[@@h+88],          -1887415157
     mov        qword[@@h+96],          -1887415157
     mov       qword[@@h+104],          -1887415157
     mov       qword[@@h+112],          -1887415157
     mov       qword[@@h+120],          -1887415157
     mov       qword[@@h+128],          -1887415157
     mov       qword[@@h+136],          -1887415157
     mov       qword[@@h+144],          -1887415157
     mov       qword[@@h+152],          -1887415157
     mov       qword[@@h+160],          -1887415157
     mov       qword[@@h+168],          -1887415157
     mov       qword[@@h+176],          -1887415157
     mov       qword[@@h+184],          -1887415157
     mov       qword[@@h+192],          -1887415157
     mov       qword[@@h+200],          -1887415157
     mov       qword[@@h+208],          -1887415157
     mov       qword[@@h+216],          -1887415157
     mov       qword[@@h+224],          -1887415157
     mov       qword[@@h+232],          -1887415157
     mov       qword[@@h+240],          -1887415157
     mov       qword[@@h+248],          -1887415157
     mov       qword[@@h+256],          -1887415157
     mov       qword[@@h+264],          -1887415157
     mov       qword[@@h+272],          -1887415157
     mov       qword[@@h+280],          -1887415157
     mov       qword[@@h+288],          -1887415157
     mov       qword[@@h+296],          -1887415157
     mov       qword[@@h+304],          -1887415157
     mov       qword[@@h+312],          -1887415157
     mov       qword[@@h+320],          -1887415157
     mov       qword[@@h+328],          -1887415157
     mov       qword[@@h+336],          -1887415157
     mov       qword[@@h+344],          -1887415157
     mov       qword[@@h+352],          -1887415157
     mov       qword[@@h+360],          -1887415157
     mov       qword[@@h+368],          -1887415157
     mov       qword[@@h+376],          -1887415157
     mov       qword[@@h+384],          -1887415157
     mov       qword[@@h+392],          -1887415157
     mov       qword[@@h+400],          -1887415157
     mov       qword[@@h+408],          -1887415157
     mov       qword[@@h+416],          -1887415157
     mov       qword[@@h+424],          -1887415157
     mov       qword[@@h+432],          -1887415157
     mov       qword[@@h+440],          -1887415157
     mov       qword[@@h+448],          -1887415157
     mov       qword[@@h+456],          -1887415157
     mov       qword[@@h+464],          -1887415157
     mov       qword[@@h+472],          -1887415157
     mov       qword[@@h+480],          -1887415157
     mov       qword[@@h+488],          -1887415157
     mov       qword[@@h+496],          -1887415157
     mov       qword[@@h+504],          -1887415157
     mov       qword[@@h+512],          -1887415157
     mov       qword[@@h+520],          -1887415157
     mov       qword[@@h+528],          -1887415157
     mov       qword[@@h+536],          -1887415157
     mov       qword[@@h+544],          -1887415157
     mov       qword[@@h+552],          -1887415157
     mov       qword[@@h+560],          -1887415157
     mov       qword[@@h+568],          -1887415157
     mov       qword[@@h+576],          -1887415157
     mov       qword[@@h+584],          -1887415157
     mov       qword[@@h+592],          -1887415157
     mov       qword[@@h+600],          -1887415157
     mov       qword[@@h+608],          -1887415157
     mov       qword[@@h+616],          -1887415157
     mov       qword[@@h+624],          -1887415157
     mov       qword[@@h+632],          -1887415157
     mov       qword[@@h+640],          -1887415157
     mov       qword[@@h+648],          -1887415157
     mov       qword[@@h+656],          -1887415157
     mov       qword[@@h+664],          -1887415157
     mov       qword[@@h+672],          -1887415157
     mov       qword[@@h+680],          -1887415157
     mov       qword[@@h+688],          -1887415157
     mov       qword[@@h+696],          -1887415157
     mov       qword[@@h+704],          -1887415157
     mov       qword[@@h+712],          -1887415157
     mov       qword[@@h+720],          -1887415157
     mov       qword[@@h+728],          -1887415157
     mov       qword[@@h+736],          -1887415157
     mov       qword[@@h+744],          -1887415157
     mov       qword[@@h+752],          -1887415157
     mov       qword[@@h+760],          -1887415157
     mov       qword[@@h+768],          -1887415157
     mov       qword[@@h+776],          -1887415157
     mov       qword[@@h+784],          -1887415157
     mov       qword[@@h+792],          -1887415157
     mov       qword[@@h+800],          -1887415157
     mov       qword[@@h+808],          -1887415157
     mov       qword[@@h+816],          -1887415157
     mov       qword[@@h+824],          -1887415157
     mov       qword[@@h+832],          -1887415157
     mov       qword[@@h+840],          -1887415157
     mov       qword[@@h+848],          -1887415157
     mov       qword[@@h+856],          -1887415157
     mov       qword[@@h+864],          -1887415157
     mov       qword[@@h+872],          -1887415157
     mov       qword[@@h+880],          -1887415157
     mov       qword[@@h+888],          -1887415157
     mov       qword[@@h+896],          -1887415157
     mov       qword[@@h+904],          -1887415157
     mov       qword[@@h+912],          -1887415157
     mov       qword[@@h+920],          -1887415157
     mov       qword[@@h+928],          -1887415157
     mov       qword[@@h+936],          -1887415157
     mov       qword[@@h+944],          -1887415157
     mov       qword[@@h+952],          -1887415157
     mov       qword[@@h+960],          -1887415157
     mov       qword[@@h+968],          -1887415157
     mov       qword[@@h+976],          -1887415157
     mov       qword[@@h+984],          -1887415157
     mov       qword[@@h+992],          -1887415157
     mov      qword[@@h+1000],          -1887415157
     mov      qword[@@h+1008],          -1887415157
     mov      qword[@@h+1016],          -1887415157
     mov      qword[@@h+1024],          -1887415157
     mov      qword[@@h+1032],          -1887415157
     mov      qword[@@h+1040],          -1887415157
     mov      qword[@@h+1048],          -1887415157
     mov      qword[@@h+1056],          -1887415157
     mov      qword[@@h+1064],          -1887415157
     mov      qword[@@h+1072],          -1887415157
     mov      qword[@@h+1080],          -1887415157
     mov      qword[@@h+1088],          -1887415157
     mov      qword[@@h+1096],          -1887415157
     mov      qword[@@h+1104],          -1887415157
     mov      qword[@@h+1112],          -1887415157
     mov      qword[@@h+1120],          -1887415157
     mov      qword[@@h+1128],          -1887415157
     mov      qword[@@h+1136],          -1887415157
     mov      qword[@@h+1144],          -1887415157
     mov      qword[@@h+1152],          -1887415157
     mov      qword[@@h+1160],          -1887415157
     mov      qword[@@h+1168],          -1887415157
     mov      qword[@@h+1176],          -1887415157
     mov      qword[@@h+1184],          -1887415157
     mov      qword[@@h+1192],          -1887415157
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  150
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov           qword[@@p],                  rsi
     mov           qword[@@p],          -1887415157
     mov         qword[@@p+8],          -1887415157
     mov        qword[@@p+16],          -1887415157
     mov        qword[@@p+24],          -1887415157
     mov        qword[@@p+32],          -1887415157
     mov        qword[@@p+40],          -1887415157
     mov        qword[@@p+48],          -1887415157
     mov        qword[@@p+56],          -1887415157
     mov        qword[@@p+64],          -1887415157
     mov        qword[@@p+72],          -1887415157
     mov        qword[@@p+80],          -1887415157
     mov        qword[@@p+88],          -1887415157
     mov        qword[@@p+96],          -1887415157
     mov       qword[@@p+104],          -1887415157
     mov       qword[@@p+112],          -1887415157
     mov       qword[@@p+120],          -1887415157
     mov       qword[@@p+128],          -1887415157
     mov       qword[@@p+136],          -1887415157
     mov       qword[@@p+144],          -1887415157
     mov       qword[@@p+152],          -1887415157
     mov       qword[@@p+160],          -1887415157
     mov       qword[@@p+168],          -1887415157
     mov       qword[@@p+176],          -1887415157
     mov       qword[@@p+184],          -1887415157
     mov       qword[@@p+192],          -1887415157
     mov       qword[@@p+200],          -1887415157
     mov       qword[@@p+208],          -1887415157
     mov       qword[@@p+216],          -1887415157
     mov       qword[@@p+224],          -1887415157
     mov       qword[@@p+232],          -1887415157
     mov       qword[@@p+240],          -1887415157
     mov       qword[@@p+248],          -1887415157
     mov       qword[@@p+256],          -1887415157
     mov       qword[@@p+264],          -1887415157
     mov       qword[@@p+272],          -1887415157
     mov       qword[@@p+280],          -1887415157
     mov       qword[@@p+288],          -1887415157
     mov       qword[@@p+296],          -1887415157
     mov       qword[@@p+304],          -1887415157
     mov       qword[@@p+312],          -1887415157
     mov       qword[@@p+320],          -1887415157
     mov       qword[@@p+328],          -1887415157
     mov       qword[@@p+336],          -1887415157
     mov       qword[@@p+344],          -1887415157
     mov       qword[@@p+352],          -1887415157
     mov       qword[@@p+360],          -1887415157
     mov       qword[@@p+368],          -1887415157
     mov       qword[@@p+376],          -1887415157
     mov       qword[@@p+384],          -1887415157
     mov       qword[@@p+392],          -1887415157
     mov       qword[@@p+400],          -1887415157
     mov       qword[@@p+408],          -1887415157
     mov       qword[@@p+416],          -1887415157
     mov       qword[@@p+424],          -1887415157
     mov       qword[@@p+432],          -1887415157
     mov       qword[@@p+440],          -1887415157
     mov       qword[@@p+448],          -1887415157
     mov       qword[@@p+456],          -1887415157
     mov       qword[@@p+464],          -1887415157
     mov       qword[@@p+472],          -1887415157
     mov       qword[@@p+480],          -1887415157
     mov       qword[@@p+488],          -1887415157
     mov       qword[@@p+496],          -1887415157
     mov       qword[@@p+504],          -1887415157
     mov       qword[@@p+512],          -1887415157
     mov       qword[@@p+520],          -1887415157
     mov       qword[@@p+528],          -1887415157
     mov       qword[@@p+536],          -1887415157
     mov       qword[@@p+544],          -1887415157
     mov       qword[@@p+552],          -1887415157
     mov       qword[@@p+560],          -1887415157
     mov       qword[@@p+568],          -1887415157
     mov       qword[@@p+576],          -1887415157
     mov       qword[@@p+584],          -1887415157
     mov       qword[@@p+592],          -1887415157
     mov       qword[@@p+600],          -1887415157
     mov       qword[@@p+608],          -1887415157
     mov       qword[@@p+616],          -1887415157
     mov       qword[@@p+624],          -1887415157
     mov       qword[@@p+632],          -1887415157
     mov       qword[@@p+640],          -1887415157
     mov       qword[@@p+648],          -1887415157
     mov       qword[@@p+656],          -1887415157
     mov       qword[@@p+664],          -1887415157
     mov       qword[@@p+672],          -1887415157
     mov       qword[@@p+680],          -1887415157
     mov       qword[@@p+688],          -1887415157
     mov       qword[@@p+696],          -1887415157
     mov       qword[@@p+704],          -1887415157
     mov       qword[@@p+712],          -1887415157
     mov       qword[@@p+720],          -1887415157
     mov       qword[@@p+728],          -1887415157
     mov       qword[@@p+736],          -1887415157
     mov       qword[@@p+744],          -1887415157
     mov       qword[@@p+752],          -1887415157
     mov       qword[@@p+760],          -1887415157
     mov       qword[@@p+768],          -1887415157
     mov       qword[@@p+776],          -1887415157
     mov       qword[@@p+784],          -1887415157
     mov       qword[@@p+792],          -1887415157
     mov       qword[@@p+800],          -1887415157
     mov       qword[@@p+808],          -1887415157
     mov       qword[@@p+816],          -1887415157
     mov       qword[@@p+824],          -1887415157
     mov       qword[@@p+832],          -1887415157
     mov       qword[@@p+840],          -1887415157
     mov       qword[@@p+848],          -1887415157
     mov       qword[@@p+856],          -1887415157
     mov       qword[@@p+864],          -1887415157
     mov       qword[@@p+872],          -1887415157
     mov       qword[@@p+880],          -1887415157
     mov       qword[@@p+888],          -1887415157
     mov       qword[@@p+896],          -1887415157
     mov       qword[@@p+904],          -1887415157
     mov       qword[@@p+912],          -1887415157
     mov       qword[@@p+920],          -1887415157
     mov       qword[@@p+928],          -1887415157
     mov       qword[@@p+936],          -1887415157
     mov       qword[@@p+944],          -1887415157
     mov       qword[@@p+952],          -1887415157
     mov       qword[@@p+960],          -1887415157
     mov       qword[@@p+968],          -1887415157
     mov       qword[@@p+976],          -1887415157
     mov       qword[@@p+984],          -1887415157
     mov       qword[@@p+992],          -1887415157
     mov      qword[@@p+1000],          -1887415157
     mov      qword[@@p+1008],          -1887415157
     mov      qword[@@p+1016],          -1887415157
     mov      qword[@@p+1024],          -1887415157
     mov      qword[@@p+1032],          -1887415157
     mov      qword[@@p+1040],          -1887415157
     mov      qword[@@p+1048],          -1887415157
     mov      qword[@@p+1056],          -1887415157
     mov      qword[@@p+1064],          -1887415157
     mov      qword[@@p+1072],          -1887415157
     mov      qword[@@p+1080],          -1887415157
     mov      qword[@@p+1088],          -1887415157
     mov      qword[@@p+1096],          -1887415157
     mov      qword[@@p+1104],          -1887415157
     mov      qword[@@p+1112],          -1887415157
     mov      qword[@@p+1120],          -1887415157
     mov      qword[@@p+1128],          -1887415157
     mov      qword[@@p+1136],          -1887415157
     mov      qword[@@p+1144],          -1887415157
     mov      qword[@@p+1152],          -1887415157
     mov      qword[@@p+1160],          -1887415157
     mov      qword[@@p+1168],          -1887415157
     mov      qword[@@p+1176],          -1887415157
     mov      qword[@@p+1184],          -1887415157
     mov      qword[@@p+1192],          -1887415157
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  150
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov           qword[@@f],                  rsi
     mov           qword[@@f],          -1887415157
     mov         qword[@@f+8],          -1887415157
     mov        qword[@@f+16],          -1887415157
     mov        qword[@@f+24],          -1887415157
     mov        qword[@@f+32],          -1887415157
     mov        qword[@@f+40],          -1887415157
     mov        qword[@@f+48],          -1887415157
     mov        qword[@@f+56],          -1887415157
     mov        qword[@@f+64],          -1887415157
     mov        qword[@@f+72],          -1887415157
     mov        qword[@@f+80],          -1887415157
     mov        qword[@@f+88],          -1887415157
     mov        qword[@@f+96],          -1887415157
     mov       qword[@@f+104],          -1887415157
     mov       qword[@@f+112],          -1887415157
     mov       qword[@@f+120],          -1887415157
     mov       qword[@@f+128],          -1887415157
     mov       qword[@@f+136],          -1887415157
     mov       qword[@@f+144],          -1887415157
     mov       qword[@@f+152],          -1887415157
     mov       qword[@@f+160],          -1887415157
     mov       qword[@@f+168],          -1887415157
     mov       qword[@@f+176],          -1887415157
     mov       qword[@@f+184],          -1887415157
     mov       qword[@@f+192],          -1887415157
     mov       qword[@@f+200],          -1887415157
     mov       qword[@@f+208],          -1887415157
     mov       qword[@@f+216],          -1887415157
     mov       qword[@@f+224],          -1887415157
     mov       qword[@@f+232],          -1887415157
     mov       qword[@@f+240],          -1887415157
     mov       qword[@@f+248],          -1887415157
     mov       qword[@@f+256],          -1887415157
     mov       qword[@@f+264],          -1887415157
     mov       qword[@@f+272],          -1887415157
     mov       qword[@@f+280],          -1887415157
     mov       qword[@@f+288],          -1887415157
     mov       qword[@@f+296],          -1887415157
     mov       qword[@@f+304],          -1887415157
     mov       qword[@@f+312],          -1887415157
     mov       qword[@@f+320],          -1887415157
     mov       qword[@@f+328],          -1887415157
     mov       qword[@@f+336],          -1887415157
     mov       qword[@@f+344],          -1887415157
     mov       qword[@@f+352],          -1887415157
     mov       qword[@@f+360],          -1887415157
     mov       qword[@@f+368],          -1887415157
     mov       qword[@@f+376],          -1887415157
     mov       qword[@@f+384],          -1887415157
     mov       qword[@@f+392],          -1887415157
     mov       qword[@@f+400],          -1887415157
     mov       qword[@@f+408],          -1887415157
     mov       qword[@@f+416],          -1887415157
     mov       qword[@@f+424],          -1887415157
     mov       qword[@@f+432],          -1887415157
     mov       qword[@@f+440],          -1887415157
     mov       qword[@@f+448],          -1887415157
     mov       qword[@@f+456],          -1887415157
     mov       qword[@@f+464],          -1887415157
     mov       qword[@@f+472],          -1887415157
     mov       qword[@@f+480],          -1887415157
     mov       qword[@@f+488],          -1887415157
     mov       qword[@@f+496],          -1887415157
     mov       qword[@@f+504],          -1887415157
     mov       qword[@@f+512],          -1887415157
     mov       qword[@@f+520],          -1887415157
     mov       qword[@@f+528],          -1887415157
     mov       qword[@@f+536],          -1887415157
     mov       qword[@@f+544],          -1887415157
     mov       qword[@@f+552],          -1887415157
     mov       qword[@@f+560],          -1887415157
     mov       qword[@@f+568],          -1887415157
     mov       qword[@@f+576],          -1887415157
     mov       qword[@@f+584],          -1887415157
     mov       qword[@@f+592],          -1887415157
     mov       qword[@@f+600],          -1887415157
     mov       qword[@@f+608],          -1887415157
     mov       qword[@@f+616],          -1887415157
     mov       qword[@@f+624],          -1887415157
     mov       qword[@@f+632],          -1887415157
     mov       qword[@@f+640],          -1887415157
     mov       qword[@@f+648],          -1887415157
     mov       qword[@@f+656],          -1887415157
     mov       qword[@@f+664],          -1887415157
     mov       qword[@@f+672],          -1887415157
     mov       qword[@@f+680],          -1887415157
     mov       qword[@@f+688],          -1887415157
     mov       qword[@@f+696],          -1887415157
     mov       qword[@@f+704],          -1887415157
     mov       qword[@@f+712],          -1887415157
     mov       qword[@@f+720],          -1887415157
     mov       qword[@@f+728],          -1887415157
     mov       qword[@@f+736],          -1887415157
     mov       qword[@@f+744],          -1887415157
     mov       qword[@@f+752],          -1887415157
     mov       qword[@@f+760],          -1887415157
     mov       qword[@@f+768],          -1887415157
     mov       qword[@@f+776],          -1887415157
     mov       qword[@@f+784],          -1887415157
     mov       qword[@@f+792],          -1887415157
     mov       qword[@@f+800],          -1887415157
     mov       qword[@@f+808],          -1887415157
     mov       qword[@@f+816],          -1887415157
     mov       qword[@@f+824],          -1887415157
     mov       qword[@@f+832],          -1887415157
     mov       qword[@@f+840],          -1887415157
     mov       qword[@@f+848],          -1887415157
     mov       qword[@@f+856],          -1887415157
     mov       qword[@@f+864],          -1887415157
     mov       qword[@@f+872],          -1887415157
     mov       qword[@@f+880],          -1887415157
     mov       qword[@@f+888],          -1887415157
     mov       qword[@@f+896],          -1887415157
     mov       qword[@@f+904],          -1887415157
     mov       qword[@@f+912],          -1887415157
     mov       qword[@@f+920],          -1887415157
     mov       qword[@@f+928],          -1887415157
     mov       qword[@@f+936],          -1887415157
     mov       qword[@@f+944],          -1887415157
     mov       qword[@@f+952],          -1887415157
     mov       qword[@@f+960],          -1887415157
     mov       qword[@@f+968],          -1887415157
     mov       qword[@@f+976],          -1887415157
     mov       qword[@@f+984],          -1887415157
     mov       qword[@@f+992],          -1887415157
     mov      qword[@@f+1000],          -1887415157
     mov      qword[@@f+1008],          -1887415157
     mov      qword[@@f+1016],          -1887415157
     mov      qword[@@f+1024],          -1887415157
     mov      qword[@@f+1032],          -1887415157
     mov      qword[@@f+1040],          -1887415157
     mov      qword[@@f+1048],          -1887415157
     mov      qword[@@f+1056],          -1887415157
     mov      qword[@@f+1064],          -1887415157
     mov      qword[@@f+1072],          -1887415157
     mov      qword[@@f+1080],          -1887415157
     mov      qword[@@f+1088],          -1887415157
     mov      qword[@@f+1096],          -1887415157
     mov      qword[@@f+1104],          -1887415157
     mov      qword[@@f+1112],          -1887415157
     mov      qword[@@f+1120],          -1887415157
     mov      qword[@@f+1128],          -1887415157
     mov      qword[@@f+1136],          -1887415157
     mov      qword[@@f+1144],          -1887415157
     mov      qword[@@f+1152],          -1887415157
     mov      qword[@@f+1160],          -1887415157
     mov      qword[@@f+1168],          -1887415157
     mov      qword[@@f+1176],          -1887415157
     mov      qword[@@f+1184],          -1887415157
     mov      qword[@@f+1192],          -1887415157
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  150
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov           qword[@@g],                  rsi
     mov           qword[@@g],          -1887415157
     mov         qword[@@g+8],          -1887415157
     mov        qword[@@g+16],          -1887415157
     mov        qword[@@g+24],          -1887415157
     mov        qword[@@g+32],          -1887415157
     mov        qword[@@g+40],          -1887415157
     mov        qword[@@g+48],          -1887415157
     mov        qword[@@g+56],          -1887415157
     mov        qword[@@g+64],          -1887415157
     mov        qword[@@g+72],          -1887415157
     mov        qword[@@g+80],          -1887415157
     mov        qword[@@g+88],          -1887415157
     mov        qword[@@g+96],          -1887415157
     mov       qword[@@g+104],          -1887415157
     mov       qword[@@g+112],          -1887415157
     mov       qword[@@g+120],          -1887415157
     mov       qword[@@g+128],          -1887415157
     mov       qword[@@g+136],          -1887415157
     mov       qword[@@g+144],          -1887415157
     mov       qword[@@g+152],          -1887415157
     mov       qword[@@g+160],          -1887415157
     mov       qword[@@g+168],          -1887415157
     mov       qword[@@g+176],          -1887415157
     mov       qword[@@g+184],          -1887415157
     mov       qword[@@g+192],          -1887415157
     mov       qword[@@g+200],          -1887415157
     mov       qword[@@g+208],          -1887415157
     mov       qword[@@g+216],          -1887415157
     mov       qword[@@g+224],          -1887415157
     mov       qword[@@g+232],          -1887415157
     mov       qword[@@g+240],          -1887415157
     mov       qword[@@g+248],          -1887415157
     mov       qword[@@g+256],          -1887415157
     mov       qword[@@g+264],          -1887415157
     mov       qword[@@g+272],          -1887415157
     mov       qword[@@g+280],          -1887415157
     mov       qword[@@g+288],          -1887415157
     mov       qword[@@g+296],          -1887415157
     mov       qword[@@g+304],          -1887415157
     mov       qword[@@g+312],          -1887415157
     mov       qword[@@g+320],          -1887415157
     mov       qword[@@g+328],          -1887415157
     mov       qword[@@g+336],          -1887415157
     mov       qword[@@g+344],          -1887415157
     mov       qword[@@g+352],          -1887415157
     mov       qword[@@g+360],          -1887415157
     mov       qword[@@g+368],          -1887415157
     mov       qword[@@g+376],          -1887415157
     mov       qword[@@g+384],          -1887415157
     mov       qword[@@g+392],          -1887415157
     mov       qword[@@g+400],          -1887415157
     mov       qword[@@g+408],          -1887415157
     mov       qword[@@g+416],          -1887415157
     mov       qword[@@g+424],          -1887415157
     mov       qword[@@g+432],          -1887415157
     mov       qword[@@g+440],          -1887415157
     mov       qword[@@g+448],          -1887415157
     mov       qword[@@g+456],          -1887415157
     mov       qword[@@g+464],          -1887415157
     mov       qword[@@g+472],          -1887415157
     mov       qword[@@g+480],          -1887415157
     mov       qword[@@g+488],          -1887415157
     mov       qword[@@g+496],          -1887415157
     mov       qword[@@g+504],          -1887415157
     mov       qword[@@g+512],          -1887415157
     mov       qword[@@g+520],          -1887415157
     mov       qword[@@g+528],          -1887415157
     mov       qword[@@g+536],          -1887415157
     mov       qword[@@g+544],          -1887415157
     mov       qword[@@g+552],          -1887415157
     mov       qword[@@g+560],          -1887415157
     mov       qword[@@g+568],          -1887415157
     mov       qword[@@g+576],          -1887415157
     mov       qword[@@g+584],          -1887415157
     mov       qword[@@g+592],          -1887415157
     mov       qword[@@g+600],          -1887415157
     mov       qword[@@g+608],          -1887415157
     mov       qword[@@g+616],          -1887415157
     mov       qword[@@g+624],          -1887415157
     mov       qword[@@g+632],          -1887415157
     mov       qword[@@g+640],          -1887415157
     mov       qword[@@g+648],          -1887415157
     mov       qword[@@g+656],          -1887415157
     mov       qword[@@g+664],          -1887415157
     mov       qword[@@g+672],          -1887415157
     mov       qword[@@g+680],          -1887415157
     mov       qword[@@g+688],          -1887415157
     mov       qword[@@g+696],          -1887415157
     mov       qword[@@g+704],          -1887415157
     mov       qword[@@g+712],          -1887415157
     mov       qword[@@g+720],          -1887415157
     mov       qword[@@g+728],          -1887415157
     mov       qword[@@g+736],          -1887415157
     mov       qword[@@g+744],          -1887415157
     mov       qword[@@g+752],          -1887415157
     mov       qword[@@g+760],          -1887415157
     mov       qword[@@g+768],          -1887415157
     mov       qword[@@g+776],          -1887415157
     mov       qword[@@g+784],          -1887415157
     mov       qword[@@g+792],          -1887415157
     mov       qword[@@g+800],          -1887415157
     mov       qword[@@g+808],          -1887415157
     mov       qword[@@g+816],          -1887415157
     mov       qword[@@g+824],          -1887415157
     mov       qword[@@g+832],          -1887415157
     mov       qword[@@g+840],          -1887415157
     mov       qword[@@g+848],          -1887415157
     mov       qword[@@g+856],          -1887415157
     mov       qword[@@g+864],          -1887415157
     mov       qword[@@g+872],          -1887415157
     mov       qword[@@g+880],          -1887415157
     mov       qword[@@g+888],          -1887415157
     mov       qword[@@g+896],          -1887415157
     mov       qword[@@g+904],          -1887415157
     mov       qword[@@g+912],          -1887415157
     mov       qword[@@g+920],          -1887415157
     mov       qword[@@g+928],          -1887415157
     mov       qword[@@g+936],          -1887415157
     mov       qword[@@g+944],          -1887415157
     mov       qword[@@g+952],          -1887415157
     mov       qword[@@g+960],          -1887415157
     mov       qword[@@g+968],          -1887415157
     mov       qword[@@g+976],          -1887415157
     mov       qword[@@g+984],          -1887415157
     mov       qword[@@g+992],          -1887415157
     mov      qword[@@g+1000],          -1887415157
     mov      qword[@@g+1008],          -1887415157
     mov      qword[@@g+1016],          -1887415157
     mov      qword[@@g+1024],          -1887415157
     mov      qword[@@g+1032],          -1887415157
     mov      qword[@@g+1040],          -1887415157
     mov      qword[@@g+1048],          -1887415157
     mov      qword[@@g+1056],          -1887415157
     mov      qword[@@g+1064],          -1887415157
     mov      qword[@@g+1072],          -1887415157
     mov      qword[@@g+1080],          -1887415157
     mov      qword[@@g+1088],          -1887415157
     mov      qword[@@g+1096],          -1887415157
     mov      qword[@@g+1104],          -1887415157
     mov      qword[@@g+1112],          -1887415157
     mov      qword[@@g+1120],          -1887415157
     mov      qword[@@g+1128],          -1887415157
     mov      qword[@@g+1136],          -1887415157
     mov      qword[@@g+1144],          -1887415157
     mov      qword[@@g+1152],          -1887415157
     mov      qword[@@g+1160],          -1887415157
     mov      qword[@@g+1168],          -1887415157
     mov      qword[@@g+1176],          -1887415157
     mov      qword[@@g+1184],          -1887415157
     mov      qword[@@g+1192],          -1887415157
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                   24
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
@main.1.enter:
     mov         qword[rbp-8],                    1
	jmp	@main.5.ForCon
@main.4.ForBody:
     mov        qword[rbp-16],                  100
     cmp        qword[rbp-16],                   20
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.13.@p.4.IfTrue
	jmp	@main.14.@p.3.IfFalse
@main.13.@p.4.IfTrue:
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-24],                  rcx
     mov                  rax,        qword[rbp-24]
     sub                  rax,                    1
     mov        qword[rbp-24],                  rax
     mov                  r11,        qword[rbp-24]
     cmp                  r11,                   20
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.18.@p.4.IfTrue
	jmp	@main.19.@p.3.IfFalse
@main.18.@p.4.IfTrue:
     mov                  r15,                  r11
     sub                  r15,                    1
     mov                  r10,                  r15
     cmp                  r10,                   20
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.23.@p.4.IfTrue
	jmp	@main.24.@p.3.IfFalse
@main.23.@p.4.IfTrue:
     mov                  r14,                  r10
     sub                  r14,                    1
     mov                   r9,                  r14
     cmp                   r9,                   20
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.28.@p.4.IfTrue
	jmp	@main.29.@p.3.IfFalse
@main.28.@p.4.IfTrue:
     mov                  r13,                   r9
     sub                  r13,                    1
     mov                   r8,                  r13
     cmp                   r8,                   20
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.33.@p.4.IfTrue
	jmp	@main.34.@p.3.IfFalse
@main.33.@p.4.IfTrue:
     mov                  r12,                   r8
     sub                  r12,                    1
     mov                  rdi,                  r12
    push                   r8
    push                   r9
    push                  r10
    push                  rsi
    push                  r11
     sub                  rsp,                    8
  call	p
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     pop                  r10
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                    1
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rbx,                   r8
     mov                  rax,                  rbx
     mov                  rcx,                  r12
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    2
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    3
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    4
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    5
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    6
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    7
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    8
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                    9
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   10
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   11
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   13
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   14
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   15
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   16
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   17
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   18
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   19
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r8
     sub                  rsi,                   20
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
	jmp	@main.31.@p.2.exit
	jmp	@main.35.@p.5.IfExit
@main.34.@p.3.IfFalse:
     mov                  rsi,                    0
	jmp	@main.31.@p.2.exit
@main.35.@p.5.IfExit:
@main.31.@p.2.exit:
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                    1
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rbx,                   r9
     mov                  rax,                  rbx
     mov                  rcx,                  r13
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    2
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    3
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    4
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    5
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    6
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    7
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    8
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                    9
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   10
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   11
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   13
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   14
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   15
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   16
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   17
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   18
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   19
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                   r9
     sub                  rsi,                   20
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
	jmp	@main.26.@p.2.exit
	jmp	@main.30.@p.5.IfExit
@main.29.@p.3.IfFalse:
     mov                  rsi,                    0
	jmp	@main.26.@p.2.exit
@main.30.@p.5.IfExit:
@main.26.@p.2.exit:
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                    1
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rbx,                  r10
     mov                  rax,                  rbx
     mov                  rcx,                  r14
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    2
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    3
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    4
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    5
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    6
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    7
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    8
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                    9
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   10
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   11
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   13
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   14
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   15
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   16
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   17
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   18
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   19
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r10
     sub                  rsi,                   20
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
	jmp	@main.21.@p.2.exit
	jmp	@main.25.@p.5.IfExit
@main.24.@p.3.IfFalse:
     mov                  rsi,                    0
	jmp	@main.21.@p.2.exit
@main.25.@p.5.IfExit:
@main.21.@p.2.exit:
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                    1
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rbx,                  r11
     mov                  rax,                  rbx
     mov                  rcx,                  r15
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    2
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    3
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    4
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    5
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    6
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    7
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    8
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                    9
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   10
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   11
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   13
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   14
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   15
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   16
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   17
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   18
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   19
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  r11
     sub                  rsi,                   20
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
	jmp	@main.16.@p.2.exit
	jmp	@main.20.@p.5.IfExit
@main.19.@p.3.IfFalse:
     mov                  rsi,                    0
	jmp	@main.16.@p.2.exit
@main.20.@p.5.IfExit:
@main.16.@p.2.exit:
     mov                  rdi,                  rsi
     mov                  rax,                  rdi
     mov                  rcx,                    1
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rbx,        qword[rbp-16]
     mov                  rax,                  rbx
     mov                  rcx,        qword[rbp-24]
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                    2
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                    3
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                    4
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                    5
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                    6
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                    7
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                    8
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                    9
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                   10
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                   11
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                   12
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                   13
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                   14
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                   15
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                   16
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                   17
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                   18
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                   19
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                   20
     mov                  rax,                  rbx
     mov                  rcx,                  rsi
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
	jmp	@main.11.@p.2.exit
	jmp	@main.15.@p.5.IfExit
@main.14.@p.3.IfFalse:
     mov                  rsi,                    0
	jmp	@main.11.@p.2.exit
@main.15.@p.5.IfExit:
@main.11.@p.2.exit:
     mov                  rbx,                  rsi
     mov                  rsi,         qword[rbp-8]
     mov                  rax,                  rsi
     mov                  rcx,              3000000
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     cmp                  rsi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.8.IfTrue
	jmp	@main.7.IfFalse
@main.8.IfTrue:
     mov                  rdi,                  rbx
    push                  rsi
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
call	println
	jmp	@main.9.IfExit
@main.7.IfFalse:
@main.9.IfExit:
     add         qword[rbp-8],                    1
     mov                  rsi,         qword[rbp-8]
@main.5.ForCon:
     cmp         qword[rbp-8],             30000000
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.4.ForBody
     mov                  rax,                    0
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   24
     pop                  rbp
     ret


 section                 .bss
@@h:
  	resq 		1
@@p:
  	resq 		1
@@f:
  	resq 		1
@@g:
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



