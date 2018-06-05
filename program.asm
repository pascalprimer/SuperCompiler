  global                 main
  extern	malloc


 section                .text
vector.getDim:
    push                  rbp
     mov                  rbp,                  rsp
    push                  rbx
@vector.getDim.1.enter:
     mov                  rbx,                  rdi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@vector.getDim.4.IfTrue
	jmp	@vector.getDim.3.IfFalse
@vector.getDim.4.IfTrue:
     mov                  rax,                    0
	jmp	@vector.getDim.2.exit
	jmp	@vector.getDim.5.IfExit
@vector.getDim.3.IfFalse:
@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                  rsi
call	__size__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rax,                  rsi
@vector.getDim.2.exit:
     pop                  rbx
     pop                  rbp
     ret
vector.add:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  r14
    push                  r13
    push                  rbx
@vector.add.1.enter:
     mov                   r9,                  rdi
     mov                  r12,                  rsi
     mov                  rbx,                   r9
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@vector.add.14.@vector.getDim.4.IfTrue
	jmp	@vector.add.15.@vector.getDim.3.IfFalse
@vector.add.14.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@vector.add.12.@vector.getDim.2.exit
	jmp	@vector.add.16.@vector.getDim.5.IfExit
@vector.add.15.@vector.getDim.3.IfFalse:
@vector.add.16.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                  rsi
    push                   r9
call	__size__
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
@vector.add.12.@vector.getDim.2.exit:
     mov                  rbx,                  rsi
     mov                  rdi,                  r12
     cmp           qword[rdi],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@vector.add.19.@vector.getDim.4.IfTrue
	jmp	@vector.add.20.@vector.getDim.3.IfFalse
@vector.add.19.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@vector.add.17.@vector.getDim.2.exit
	jmp	@vector.add.21.@vector.getDim.5.IfExit
@vector.add.20.@vector.getDim.3.IfFalse:
@vector.add.21.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rdi]
    push                  rsi
    push                   r9
call	__size__
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
@vector.add.17.@vector.getDim.2.exit:
     cmp                  rbx,                  rsi
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@vector.add.6.cmp_or
     mov                  rbx,                   r9
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@vector.add.24.@vector.getDim.4.IfTrue
	jmp	@vector.add.25.@vector.getDim.3.IfFalse
@vector.add.24.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@vector.add.22.@vector.getDim.2.exit
	jmp	@vector.add.26.@vector.getDim.5.IfExit
@vector.add.25.@vector.getDim.3.IfFalse:
@vector.add.26.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                  rsi
    push                   r9
call	__size__
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
@vector.add.22.@vector.getDim.2.exit:
     cmp                  rsi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@vector.add.6.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@vector.add.4.IfTrue
	jmp	@vector.add.3.IfFalse
@vector.add.4.IfTrue:
	jmp	@vector.add.2.exit
	jmp	@vector.add.5.IfExit
@vector.add.3.IfFalse:
@vector.add.5.IfExit:
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     mov                  rdi,                    8
    call               malloc
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rbx,                   r9
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@vector.add.29.@vector.getDim.4.IfTrue
	jmp	@vector.add.30.@vector.getDim.3.IfFalse
@vector.add.29.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@vector.add.27.@vector.getDim.2.exit
	jmp	@vector.add.31.@vector.getDim.5.IfExit
@vector.add.30.@vector.getDim.3.IfFalse:
@vector.add.31.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
@vector.add.27.@vector.getDim.2.exit:
     mov                  rbx,                  rsi
     add                  rbx,                    1
     shl                  rbx,                    3
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     mov                  rdi,                  rbx
    call               malloc
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov           qword[rbx],                  rsi
     add                  rbx,                    8
     mov            qword[r8],                  rbx
     mov                  r14,                    0
	jmp	@vector.add.9.ForCon
@vector.add.8.ForBody:
     mov                  r13,            qword[r8]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  r13,                  rsi
     mov                  rdi,            qword[r9]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,           qword[r12]
     mov                  rsi,                  r14
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rdi]
     add                  rsi,           qword[rbx]
     mov           qword[r13],                  rsi
     add                  r14,                    1
@vector.add.9.ForCon:
     mov                  rbx,                   r9
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@vector.add.34.@vector.getDim.4.IfTrue
	jmp	@vector.add.35.@vector.getDim.3.IfFalse
@vector.add.34.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@vector.add.32.@vector.getDim.2.exit
	jmp	@vector.add.36.@vector.getDim.5.IfExit
@vector.add.35.@vector.getDim.3.IfFalse:
@vector.add.36.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
@vector.add.32.@vector.getDim.2.exit:
     cmp                  r14,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@vector.add.8.ForBody
     mov                  rax,                   r8
@vector.add.2.exit:
     pop                  rbx
     pop                  r13
     pop                  r14
     pop                  r12
     pop                  rbp
     ret
vector.init:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  r13
    push                  rbx
@vector.init.1.enter:
     mov                  r12,                  rdi
     mov                   r8,                  rsi
     cmp                   r8,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@vector.init.4.IfTrue
	jmp	@vector.init.3.IfFalse
@vector.init.4.IfTrue:
	jmp	@vector.init.2.exit
	jmp	@vector.init.5.IfExit
@vector.init.3.IfFalse:
@vector.init.5.IfExit:
     mov                  rdi,                   r8
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     add                  rbx,                    1
     shl                  rbx,                    3
    push                  rdi
    push                   r8
    push                  rsi
     mov                  rdi,                  rbx
    call               malloc
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov           qword[rbx],                  rsi
     add                  rbx,                    8
     mov           qword[r12],                  rbx
     mov                  r13,                    0
	jmp	@vector.init.8.ForCon
@vector.init.7.ForBody:
     mov                  rdi,           qword[r12]
     mov                  rsi,                  r13
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,                   r8
     mov                  rsi,                  r13
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov           qword[rdi],                  rsi
     add                  r13,                    1
@vector.init.8.ForCon:
     mov                  rdi,                   r8
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@vector.init.7.ForBody
@vector.init.2.exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     pop                  rbp
     ret
vector.scalarInPlaceMultiply:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  r13
    push                  rbx
@vector.scalarInPlaceMultiply.1.enter:
     mov                   r8,                  rdi
     mov                  r12,                  rsi
     cmp            qword[r8],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@vector.scalarInPlaceMultiply.4.IfTrue
	jmp	@vector.scalarInPlaceMultiply.3.IfFalse
@vector.scalarInPlaceMultiply.4.IfTrue:
	jmp	@vector.scalarInPlaceMultiply.2.exit
	jmp	@vector.scalarInPlaceMultiply.5.IfExit
@vector.scalarInPlaceMultiply.3.IfFalse:
@vector.scalarInPlaceMultiply.5.IfExit:
     mov                  r13,                    0
	jmp	@vector.scalarInPlaceMultiply.8.ForCon
@vector.scalarInPlaceMultiply.7.ForBody:
     mov                  rdi,            qword[r8]
     mov                  rsi,                  r13
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,            qword[r8]
     mov                  rsi,                  r13
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,                  r12
    imul                  rsi,           qword[rbx]
     mov           qword[rdi],                  rsi
     add                  r13,                    1
@vector.scalarInPlaceMultiply.8.ForCon:
     mov                  rbx,                   r8
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@vector.scalarInPlaceMultiply.13.@vector.getDim.4.IfTrue
	jmp	@vector.scalarInPlaceMultiply.14.@vector.getDim.3.IfFalse
@vector.scalarInPlaceMultiply.13.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@vector.scalarInPlaceMultiply.11.@vector.getDim.2.exit
	jmp	@vector.scalarInPlaceMultiply.15.@vector.getDim.5.IfExit
@vector.scalarInPlaceMultiply.14.@vector.getDim.3.IfFalse:
@vector.scalarInPlaceMultiply.15.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
@vector.scalarInPlaceMultiply.11.@vector.getDim.2.exit:
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@vector.scalarInPlaceMultiply.7.ForBody
     mov                  rax,                   r8
@vector.scalarInPlaceMultiply.2.exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     pop                  rbp
     ret
vector.copy:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  r13
    push                  rbx
@vector.copy.1.enter:
     mov                   r8,                  rdi
     mov                  r12,                  rsi
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@vector.copy.4.IfTrue
	jmp	@vector.copy.3.IfFalse
@vector.copy.4.IfTrue:
     mov                  rax,                    0
	jmp	@vector.copy.2.exit
	jmp	@vector.copy.5.IfExit
@vector.copy.3.IfFalse:
@vector.copy.5.IfExit:
     mov                  rbx,                  r12
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@vector.copy.16.@vector.getDim.4.IfTrue
	jmp	@vector.copy.17.@vector.getDim.3.IfFalse
@vector.copy.16.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@vector.copy.14.@vector.getDim.2.exit
	jmp	@vector.copy.18.@vector.getDim.5.IfExit
@vector.copy.17.@vector.getDim.3.IfFalse:
@vector.copy.18.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
@vector.copy.14.@vector.getDim.2.exit:
     cmp                  rsi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@vector.copy.7.IfTrue
	jmp	@vector.copy.6.IfFalse
@vector.copy.7.IfTrue:
     mov            qword[r8],                    0
	jmp	@vector.copy.8.IfExit
@vector.copy.6.IfFalse:
     mov                  rbx,                  r12
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@vector.copy.21.@vector.getDim.4.IfTrue
	jmp	@vector.copy.22.@vector.getDim.3.IfFalse
@vector.copy.21.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@vector.copy.19.@vector.getDim.2.exit
	jmp	@vector.copy.23.@vector.getDim.5.IfExit
@vector.copy.22.@vector.getDim.3.IfFalse:
@vector.copy.23.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
@vector.copy.19.@vector.getDim.2.exit:
     mov                  rbx,                  rsi
     add                  rbx,                    1
     shl                  rbx,                    3
    push                   r8
    push                  rdi
    push                  rsi
     mov                  rdi,                  rbx
    call               malloc
     pop                  rsi
     pop                  rdi
     pop                   r8
     mov                  rbx,                  rax
     mov           qword[rbx],                  rsi
     add                  rbx,                    8
     mov            qword[r8],                  rbx
     mov                  r13,                    0
	jmp	@vector.copy.11.ForCon
@vector.copy.10.ForBody:
     mov                  rdi,            qword[r8]
     mov                  rsi,                  r13
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,           qword[r12]
     mov                  rsi,                  r13
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov           qword[rdi],                  rsi
     add                  r13,                    1
@vector.copy.11.ForCon:
     mov                  rbx,                   r8
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@vector.copy.26.@vector.getDim.4.IfTrue
	jmp	@vector.copy.27.@vector.getDim.3.IfFalse
@vector.copy.26.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@vector.copy.24.@vector.getDim.2.exit
	jmp	@vector.copy.28.@vector.getDim.5.IfExit
@vector.copy.27.@vector.getDim.3.IfFalse:
@vector.copy.28.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
@vector.copy.24.@vector.getDim.2.exit:
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@vector.copy.10.ForBody
@vector.copy.8.IfExit:
     mov                  rax,                    1
@vector.copy.2.exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     pop                  rbp
     ret
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     pop                  rbp
     ret
vector.dot:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  r13
    push                  rbx
@vector.dot.1.enter:
     mov                  r13,                  rdi
     mov                  r12,                  rsi
     mov                   r9,                    0
     mov                   r8,                    0
	jmp	@vector.dot.5.ForCon
@vector.dot.4.ForBody:
     mov                  rdi,           qword[r13]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,           qword[r12]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rdi]
    imul                  rsi,           qword[rbx]
     mov                   r8,                  rsi
     add                   r9,                    1
@vector.dot.5.ForCon:
     mov                  rbx,                  r13
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@vector.dot.10.@vector.getDim.4.IfTrue
	jmp	@vector.dot.11.@vector.getDim.3.IfFalse
@vector.dot.10.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@vector.dot.8.@vector.getDim.2.exit
	jmp	@vector.dot.12.@vector.getDim.5.IfExit
@vector.dot.11.@vector.getDim.3.IfFalse:
@vector.dot.12.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                   r9
    push                   r8
    push                  rsi
call	__size__
     pop                  rsi
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
@vector.dot.8.@vector.getDim.2.exit:
     cmp                   r9,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@vector.dot.4.ForBody
     mov                  rax,                   r8
     pop                  rbx
     pop                  r13
     pop                  r12
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
@main.1.enter:
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  r15,                  rsi
     mov                  rbx,                   10
     mov                  rsi,                   10
     add                  rbx,                    1
     shl                  rbx,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  rbx
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov           qword[rbx],                  rsi
     add                  rbx,                    8
     mov                  rsi,                  rbx
     mov                  r12,                    0
	jmp	@main.5.ForCon
@main.4.ForBody:
     mov                  rdi,                  rsi
     mov                  rbx,                  r12
     shl                  rbx,                    3
     add                  rdi,                  rbx
     mov                  rbx,                    9
     sub                  rbx,                  r12
     mov           qword[rdi],                  rbx
     add                  r12,                    1
@main.5.ForCon:
     cmp                  r12,                   10
     mov                  rbx,                    0
    setl                   bl
     cmp                  rbx,                    1
	je	@main.4.ForBody
     mov                  r12,                  r15
     mov                   r8,                  rsi
     cmp                   r8,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.13.@vector.init.4.IfTrue
	jmp	@main.14.@vector.init.3.IfFalse
@main.13.@vector.init.4.IfTrue:
	jmp	@main.11.@vector.init.2.exit
	jmp	@main.15.@vector.init.5.IfExit
@main.14.@vector.init.3.IfFalse:
@main.15.@vector.init.5.IfExit:
     mov                  rdi,                   r8
    push                   r9
    push                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     add                  rbx,                    1
     shl                  rbx,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  rbx
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov           qword[rbx],                  rsi
     add                  rbx,                    8
     mov           qword[r12],                  rbx
     mov                  r13,                    0
	jmp	@main.16.@vector.init.8.ForCon
@main.17.@vector.init.7.ForBody:
     mov                  rdi,           qword[r12]
     mov                  rsi,                  r13
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,                   r8
     mov                  rsi,                  r13
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov           qword[rdi],                  rsi
     add                  r13,                    1
@main.16.@vector.init.8.ForCon:
     mov                  rdi,                   r8
    push                  rsi
    push                   r9
    push                   r8
    push                  r10
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.17.@vector.init.7.ForBody
@main.11.@vector.init.2.exit:
     mov                  rdi,         __const_str0
    push                   r9
    push                  r10
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                  r10
     pop                   r9
     mov                   r8,                  r15
     mov                  r13,         __const_str6
     mov                  rbx,                   r8
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.122.@vector.getDim.4.IfTrue
	jmp	@main.123.@vector.getDim.3.IfFalse
@main.122.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@main.120.@vector.getDim.2.exit
	jmp	@main.124.@vector.getDim.5.IfExit
@main.123.@vector.getDim.3.IfFalse:
@main.124.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                   r9
    push                  r10
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
@main.120.@vector.getDim.2.exit:
     cmp                  rsi,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.20.@vector.tostring.4.IfTrue
	jmp	@main.21.@vector.tostring.3.IfFalse
@main.20.@vector.tostring.4.IfTrue:
     mov                  rsi,            qword[r8]
     mov                  rdi,           qword[rsi]
    push                   r9
    push                  r10
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  r13
    push                   r9
    push                  r10
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                  r13,                  rsi
	jmp	@main.22.@vector.tostring.5.IfExit
@main.21.@vector.tostring.3.IfFalse:
@main.22.@vector.tostring.5.IfExit:
     mov                  r12,                    1
	jmp	@main.23.@vector.tostring.8.ForCon
@main.24.@vector.tostring.7.ForBody:
     mov                  rdi,                  r13
     mov                  rsi,         __const_str7
    push                   r9
    push                  r10
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,            qword[r8]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
    push                   r9
    push                  r10
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                  rsi
    push                   r9
    push                  r10
    push                   r8
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                   r8
     pop                  r10
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r13,                  rsi
     add                  r12,                    1
@main.23.@vector.tostring.8.ForCon:
     mov                  rbx,                   r8
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.127.@vector.getDim.4.IfTrue
	jmp	@main.128.@vector.getDim.3.IfFalse
@main.127.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@main.125.@vector.getDim.2.exit
	jmp	@main.129.@vector.getDim.5.IfExit
@main.128.@vector.getDim.3.IfFalse:
@main.129.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                   r9
    push                  r10
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
@main.125.@vector.getDim.2.exit:
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.24.@vector.tostring.7.ForBody
     mov                  rdi,                  r13
     mov                  rsi,         __const_str8
    push                   r9
    push                  rsi
    push                  r10
call	__string_connect__
     pop                  r10
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  r13,                  rsi
     mov                  rsi,                  r13
     mov                  rdi,                  rsi
    push                   r9
    push                  r10
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  r10
     pop                   r9
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  r11,                  rsi
     mov                  r13,                  r11
     mov                  r12,                  r15
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.27.@vector.copy.4.IfTrue
	jmp	@main.28.@vector.copy.3.IfFalse
@main.27.@vector.copy.4.IfTrue:
	jmp	@main.25.@vector.copy.2.exit
	jmp	@main.29.@vector.copy.5.IfExit
@main.28.@vector.copy.3.IfFalse:
@main.29.@vector.copy.5.IfExit:
     mov                  rbx,                  r12
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.30.@vector.copy.16.@vector.getDim.4.IfTrue
	jmp	@main.31.@vector.copy.17.@vector.getDim.3.IfFalse
@main.30.@vector.copy.16.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@main.32.@vector.copy.14.@vector.getDim.2.exit
	jmp	@main.33.@vector.copy.18.@vector.getDim.5.IfExit
@main.31.@vector.copy.17.@vector.getDim.3.IfFalse:
@main.33.@vector.copy.18.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                   r9
    push                  r11
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                  r11
     pop                   r9
     mov                  rsi,                  rax
@main.32.@vector.copy.14.@vector.getDim.2.exit:
     cmp                  rsi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.34.@vector.copy.7.IfTrue
	jmp	@main.35.@vector.copy.6.IfFalse
@main.34.@vector.copy.7.IfTrue:
     mov           qword[r13],                    0
	jmp	@main.36.@vector.copy.8.IfExit
@main.35.@vector.copy.6.IfFalse:
     mov                  rbx,                  r12
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.37.@vector.copy.21.@vector.getDim.4.IfTrue
	jmp	@main.38.@vector.copy.22.@vector.getDim.3.IfFalse
@main.37.@vector.copy.21.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@main.39.@vector.copy.19.@vector.getDim.2.exit
	jmp	@main.40.@vector.copy.23.@vector.getDim.5.IfExit
@main.38.@vector.copy.22.@vector.getDim.3.IfFalse:
@main.40.@vector.copy.23.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                   r9
    push                  r11
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                  r11
     pop                   r9
     mov                  rsi,                  rax
@main.39.@vector.copy.19.@vector.getDim.2.exit:
     mov                  rbx,                  rsi
     add                  rbx,                    1
     shl                  rbx,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  rbx
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov           qword[rbx],                  rsi
     add                  rbx,                    8
     mov           qword[r13],                  rbx
     mov                   r8,                    0
	jmp	@main.41.@vector.copy.11.ForCon
@main.42.@vector.copy.10.ForBody:
     mov                  rdi,           qword[r13]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,           qword[r12]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov           qword[rdi],                  rsi
     add                   r8,                    1
@main.41.@vector.copy.11.ForCon:
     mov                  rbx,                  r13
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.43.@vector.copy.26.@vector.getDim.4.IfTrue
	jmp	@main.44.@vector.copy.27.@vector.getDim.3.IfFalse
@main.43.@vector.copy.26.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@main.45.@vector.copy.24.@vector.getDim.2.exit
	jmp	@main.46.@vector.copy.28.@vector.getDim.5.IfExit
@main.44.@vector.copy.27.@vector.getDim.3.IfFalse:
@main.46.@vector.copy.28.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                   r9
    push                  rsi
    push                   r8
    push                  r11
    push                  r10
call	__size__
     pop                  r10
     pop                  r11
     pop                   r8
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
@main.45.@vector.copy.24.@vector.getDim.2.exit:
     cmp                   r8,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.42.@vector.copy.10.ForBody
@main.36.@vector.copy.8.IfExit:
@main.25.@vector.copy.2.exit:
     mov                  r13,                  r11
     mov                   r8,                    3
     mov                  r12,                  817
     mov                  rbx,                  r13
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.132.@vector.getDim.4.IfTrue
	jmp	@main.133.@vector.getDim.3.IfFalse
@main.132.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@main.130.@vector.getDim.2.exit
	jmp	@main.134.@vector.getDim.5.IfExit
@main.133.@vector.getDim.3.IfFalse:
@main.134.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                   r9
    push                  rsi
    push                  r11
    push                  r10
    push                   r8
call	__size__
     pop                   r8
     pop                  r10
     pop                  r11
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
@main.130.@vector.getDim.2.exit:
     cmp                  rsi,                   r8
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.49.@vector.set.4.IfTrue
	jmp	@main.50.@vector.set.3.IfFalse
@main.49.@vector.set.4.IfTrue:
     mov                  rsi,                    0
	jmp	@main.47.@vector.set.2.exit
	jmp	@main.51.@vector.set.5.IfExit
@main.50.@vector.set.3.IfFalse:
@main.51.@vector.set.5.IfExit:
     mov                  rbx,           qword[r13]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                  r12
     mov                  rsi,                    1
@main.47.@vector.set.2.exit:
     cmp                  rsi,                    1
	je	@main.8.IfTrue
	jmp	@main.7.IfFalse
@main.8.IfTrue:
     mov                  rdi,         __const_str1
    push                   r9
    push                  r11
    push                  r10
call	println
     pop                  r10
     pop                  r11
     pop                   r9
	jmp	@main.9.IfExit
@main.7.IfFalse:
@main.9.IfExit:
     mov                  rdi,         __const_str2
    push                   r9
    push                  r11
    push                  r10
call	print
     pop                  r10
     pop                  r11
     pop                   r9
     mov                   r8,                  r11
     mov                  r13,         __const_str6
     mov                  rbx,                   r8
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.137.@vector.getDim.4.IfTrue
	jmp	@main.138.@vector.getDim.3.IfFalse
@main.137.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@main.135.@vector.getDim.2.exit
	jmp	@main.139.@vector.getDim.5.IfExit
@main.138.@vector.getDim.3.IfFalse:
@main.139.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                   r9
    push                  r11
    push                  r10
    push                  rsi
    push                   r8
call	__size__
     pop                   r8
     pop                  rsi
     pop                  r10
     pop                  r11
     pop                   r9
     mov                  rsi,                  rax
@main.135.@vector.getDim.2.exit:
     cmp                  rsi,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.54.@vector.tostring.4.IfTrue
	jmp	@main.55.@vector.tostring.3.IfFalse
@main.54.@vector.tostring.4.IfTrue:
     mov                  rsi,            qword[r8]
     mov                  rdi,           qword[rsi]
    push                   r9
    push                  rsi
    push                  r11
    push                  r10
    push                   r8
call	toString
     pop                   r8
     pop                  r10
     pop                  r11
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  r13
    push                  rsi
    push                   r9
    push                  r11
    push                  r10
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  r10
     pop                  r11
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r13,                  rsi
	jmp	@main.56.@vector.tostring.5.IfExit
@main.55.@vector.tostring.3.IfFalse:
@main.56.@vector.tostring.5.IfExit:
     mov                  r12,                    1
	jmp	@main.57.@vector.tostring.8.ForCon
@main.58.@vector.tostring.7.ForBody:
     mov                  rdi,                  r13
     mov                  rsi,         __const_str7
    push                   r9
    push                  r11
    push                  r10
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                  r11
     pop                   r9
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,            qword[r8]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
    push                   r9
    push                  r11
    push                  r10
    push                   r8
    push                  rsi
call	toString
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                  r11
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                   r9
    push                  r11
    push                  r10
    push                  rsi
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  rsi
     pop                  r10
     pop                  r11
     pop                   r9
     mov                  rsi,                  rax
     mov                  r13,                  rsi
     add                  r12,                    1
@main.57.@vector.tostring.8.ForCon:
     mov                  rbx,                   r8
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.142.@vector.getDim.4.IfTrue
	jmp	@main.143.@vector.getDim.3.IfFalse
@main.142.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@main.140.@vector.getDim.2.exit
	jmp	@main.144.@vector.getDim.5.IfExit
@main.143.@vector.getDim.3.IfFalse:
@main.144.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                  rsi
    push                   r9
    push                  r11
    push                  r10
    push                   r8
call	__size__
     pop                   r8
     pop                  r10
     pop                  r11
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
@main.140.@vector.getDim.2.exit:
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.58.@vector.tostring.7.ForBody
     mov                  rdi,                  r13
     mov                  rsi,         __const_str8
    push                   r9
    push                  r11
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                  r11
     pop                   r9
     mov                  rsi,                  rax
     mov                  r13,                  rsi
     mov                  rsi,                  r13
     mov                  rdi,                  rsi
    push                   r9
    push                  r11
    push                  r10
call	println
     pop                  r10
     pop                  r11
     pop                   r9
     mov                  rdi,         __const_str3
    push                   r9
    push                  r11
    push                  r10
call	print
     pop                  r10
     pop                  r11
     pop                   r9
     mov                  r14,                  r15
     mov                   r8,                  r11
     mov                  rbx,                  r14
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.61.@vector.add.14.@vector.getDim.4.IfTrue
	jmp	@main.62.@vector.add.15.@vector.getDim.3.IfFalse
@main.61.@vector.add.14.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@main.63.@vector.add.12.@vector.getDim.2.exit
	jmp	@main.64.@vector.add.16.@vector.getDim.5.IfExit
@main.62.@vector.add.15.@vector.getDim.3.IfFalse:
@main.64.@vector.add.16.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                   r8
    push                   r9
    push                  r11
    push                  r10
    push                  rsi
call	__size__
     pop                  rsi
     pop                  r10
     pop                  r11
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
@main.63.@vector.add.12.@vector.getDim.2.exit:
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     cmp           qword[rdi],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.65.@vector.add.19.@vector.getDim.4.IfTrue
	jmp	@main.66.@vector.add.20.@vector.getDim.3.IfFalse
@main.65.@vector.add.19.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@main.67.@vector.add.17.@vector.getDim.2.exit
	jmp	@main.68.@vector.add.21.@vector.getDim.5.IfExit
@main.66.@vector.add.20.@vector.getDim.3.IfFalse:
@main.68.@vector.add.21.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rdi]
    push                   r8
    push                  rsi
    push                   r9
    push                  r11
    push                  r10
call	__size__
     pop                  r10
     pop                  r11
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
@main.67.@vector.add.17.@vector.getDim.2.exit:
     cmp                  rbx,                  rsi
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.69.@vector.add.6.cmp_or
     mov                  rbx,                  r14
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.70.@vector.add.24.@vector.getDim.4.IfTrue
	jmp	@main.71.@vector.add.25.@vector.getDim.3.IfFalse
@main.70.@vector.add.24.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@main.72.@vector.add.22.@vector.getDim.2.exit
	jmp	@main.73.@vector.add.26.@vector.getDim.5.IfExit
@main.71.@vector.add.25.@vector.getDim.3.IfFalse:
@main.73.@vector.add.26.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                   r8
    push                   r9
    push                  r11
    push                  r10
    push                  rsi
call	__size__
     pop                  rsi
     pop                  r10
     pop                  r11
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
@main.72.@vector.add.22.@vector.getDim.2.exit:
     cmp                  rsi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
@main.69.@vector.add.6.cmp_or:
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.74.@vector.add.4.IfTrue
	jmp	@main.75.@vector.add.3.IfFalse
@main.74.@vector.add.4.IfTrue:
	jmp	@main.59.@vector.add.2.exit
	jmp	@main.76.@vector.add.5.IfExit
@main.75.@vector.add.3.IfFalse:
@main.76.@vector.add.5.IfExit:
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  r13,                  rsi
     mov                  rbx,                  r14
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.77.@vector.add.29.@vector.getDim.4.IfTrue
	jmp	@main.78.@vector.add.30.@vector.getDim.3.IfFalse
@main.77.@vector.add.29.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@main.79.@vector.add.27.@vector.getDim.2.exit
	jmp	@main.80.@vector.add.31.@vector.getDim.5.IfExit
@main.78.@vector.add.30.@vector.getDim.3.IfFalse:
@main.80.@vector.add.31.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                  rsi
    push                   r8
    push                  r11
    push                  r10
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
@main.79.@vector.add.27.@vector.getDim.2.exit:
     mov                  rbx,                  rsi
     add                  rbx,                    1
     shl                  rbx,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  rbx
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov           qword[rbx],                  rsi
     add                  rbx,                    8
     mov           qword[r13],                  rbx
     mov                   r9,                    0
	jmp	@main.81.@vector.add.9.ForCon
@main.82.@vector.add.8.ForBody:
     mov                  r12,           qword[r13]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rdi,           qword[r14]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,            qword[r8]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rdi]
     add                  rsi,           qword[rbx]
     mov           qword[r12],                  rsi
     add                   r9,                    1
@main.81.@vector.add.9.ForCon:
     mov                  rbx,                  r14
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.83.@vector.add.34.@vector.getDim.4.IfTrue
	jmp	@main.84.@vector.add.35.@vector.getDim.3.IfFalse
@main.83.@vector.add.34.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@main.85.@vector.add.32.@vector.getDim.2.exit
	jmp	@main.86.@vector.add.36.@vector.getDim.5.IfExit
@main.84.@vector.add.35.@vector.getDim.3.IfFalse:
@main.86.@vector.add.36.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                   r8
    push                   r9
    push                  r11
    push                  r10
    push                  rsi
call	__size__
     pop                  rsi
     pop                  r10
     pop                  r11
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
@main.85.@vector.add.32.@vector.getDim.2.exit:
     cmp                   r9,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.82.@vector.add.8.ForBody
     mov                   r9,                  r13
@main.59.@vector.add.2.exit:
     mov                   r8,                   r9
     mov                  r13,         __const_str6
     mov                  rbx,                   r8
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.147.@vector.getDim.4.IfTrue
	jmp	@main.148.@vector.getDim.3.IfFalse
@main.147.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@main.145.@vector.getDim.2.exit
	jmp	@main.149.@vector.getDim.5.IfExit
@main.148.@vector.getDim.3.IfFalse:
@main.149.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                  r11
    push                  r10
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
@main.145.@vector.getDim.2.exit:
     cmp                  rsi,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.89.@vector.tostring.4.IfTrue
	jmp	@main.90.@vector.tostring.3.IfFalse
@main.89.@vector.tostring.4.IfTrue:
     mov                  rsi,            qword[r8]
     mov                  rdi,           qword[rsi]
    push                  rsi
    push                  r11
    push                  r10
    push                   r8
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                   r8
     pop                  r10
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  r13
    push                  rsi
    push                  r11
    push                  r10
    push                   r8
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                   r8
     pop                  r10
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r13,                  rsi
	jmp	@main.91.@vector.tostring.5.IfExit
@main.90.@vector.tostring.3.IfFalse:
@main.91.@vector.tostring.5.IfExit:
     mov                  r12,                    1
	jmp	@main.92.@vector.tostring.8.ForCon
@main.93.@vector.tostring.7.ForBody:
     mov                  rdi,                  r13
     mov                  rsi,         __const_str7
    push                  r11
    push                  r10
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,            qword[r8]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
    push                  r11
    push                  r10
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                  rsi
    push                  r11
    push                  r10
    push                   r8
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                   r8
     pop                  r10
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r13,                  rsi
     add                  r12,                    1
@main.92.@vector.tostring.8.ForCon:
     mov                  rbx,                   r8
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.152.@vector.getDim.4.IfTrue
	jmp	@main.153.@vector.getDim.3.IfFalse
@main.152.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@main.150.@vector.getDim.2.exit
	jmp	@main.154.@vector.getDim.5.IfExit
@main.153.@vector.getDim.3.IfFalse:
@main.154.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                  rsi
    push                  r11
    push                  r10
    push                   r8
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                   r8
     pop                  r10
     pop                  r11
     pop                  rsi
     mov                  rsi,                  rax
@main.150.@vector.getDim.2.exit:
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.93.@vector.tostring.7.ForBody
     mov                  rdi,                  r13
     mov                  rsi,         __const_str8
    push                  r11
    push                  r10
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                  r13,                  rsi
     mov                  rsi,                  r13
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,         __const_str4
    push                  r11
    push                  r10
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                   r8,                  r15
     mov                  rbx,                  r11
     mov                  r13,                    0
     mov                  r12,                    0
	jmp	@main.96.@vector.dot.5.ForCon
@main.97.@vector.dot.4.ForBody:
     mov                  r12,            qword[r8]
     mov                  rsi,                  r13
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rdi,           qword[rbx]
     mov                  rsi,                  r13
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[r12]
    imul                  rsi,           qword[rdi]
     mov                  r12,                  rsi
     add                  r13,                    1
@main.96.@vector.dot.5.ForCon:
     mov                  rdi,                   r8
     cmp           qword[rdi],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.98.@vector.dot.10.@vector.getDim.4.IfTrue
	jmp	@main.99.@vector.dot.11.@vector.getDim.3.IfFalse
@main.98.@vector.dot.10.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@main.100.@vector.dot.8.@vector.getDim.2.exit
	jmp	@main.101.@vector.dot.12.@vector.getDim.5.IfExit
@main.99.@vector.dot.11.@vector.getDim.3.IfFalse:
@main.101.@vector.dot.12.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rdi]
    push                  r11
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                  r11
     mov                  rsi,                  rax
@main.100.@vector.dot.8.@vector.getDim.2.exit:
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.97.@vector.dot.4.ForBody
     mov                  rsi,                  r12
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
    push                  rsi
call	toString
     pop                  rsi
     pop                  r10
     pop                  r11
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r11
    push                  r10
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  rdi,         __const_str5
    push                  r11
    push                  r10
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                  r10
     pop                  r11
     mov                  r13,                  r11
     mov                  rbx,                    8
     cmp           qword[r13],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.104.@vector.scalarInPlaceMultiply.4.IfTrue
	jmp	@main.105.@vector.scalarInPlaceMultiply.3.IfFalse
@main.104.@vector.scalarInPlaceMultiply.4.IfTrue:
	jmp	@main.102.@vector.scalarInPlaceMultiply.2.exit
	jmp	@main.106.@vector.scalarInPlaceMultiply.5.IfExit
@main.105.@vector.scalarInPlaceMultiply.3.IfFalse:
@main.106.@vector.scalarInPlaceMultiply.5.IfExit:
     mov                   r8,                    0
	jmp	@main.107.@vector.scalarInPlaceMultiply.8.ForCon
@main.108.@vector.scalarInPlaceMultiply.7.ForBody:
     mov                  r12,           qword[r13]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rdi,           qword[r13]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,                  rbx
    imul                  rsi,           qword[rdi]
     mov           qword[r12],                  rsi
     add                   r8,                    1
@main.107.@vector.scalarInPlaceMultiply.8.ForCon:
     mov                  rdi,                  r13
     cmp           qword[rdi],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.109.@vector.scalarInPlaceMultiply.13.@vector.getDim.4.IfTrue
	jmp	@main.110.@vector.scalarInPlaceMultiply.14.@vector.getDim.3.IfFalse
@main.109.@vector.scalarInPlaceMultiply.13.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@main.111.@vector.scalarInPlaceMultiply.11.@vector.getDim.2.exit
	jmp	@main.112.@vector.scalarInPlaceMultiply.15.@vector.getDim.5.IfExit
@main.110.@vector.scalarInPlaceMultiply.14.@vector.getDim.3.IfFalse:
@main.112.@vector.scalarInPlaceMultiply.15.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rdi]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
@main.111.@vector.scalarInPlaceMultiply.11.@vector.getDim.2.exit:
     cmp                   r8,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.108.@vector.scalarInPlaceMultiply.7.ForBody
     mov                  r10,                  r13
@main.102.@vector.scalarInPlaceMultiply.2.exit:
     mov                   r8,                  r10
     mov                  r13,         __const_str6
     mov                  rbx,                   r8
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.157.@vector.getDim.4.IfTrue
	jmp	@main.158.@vector.getDim.3.IfFalse
@main.157.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@main.155.@vector.getDim.2.exit
	jmp	@main.159.@vector.getDim.5.IfExit
@main.158.@vector.getDim.3.IfFalse:
@main.159.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
@main.155.@vector.getDim.2.exit:
     cmp                  rsi,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.115.@vector.tostring.4.IfTrue
	jmp	@main.116.@vector.tostring.3.IfFalse
@main.115.@vector.tostring.4.IfTrue:
     mov                  rsi,            qword[r8]
     mov                  rdi,           qword[rsi]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  r13
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  r13,                  rsi
	jmp	@main.117.@vector.tostring.5.IfExit
@main.116.@vector.tostring.3.IfFalse:
@main.117.@vector.tostring.5.IfExit:
     mov                  r12,                    1
	jmp	@main.118.@vector.tostring.8.ForCon
@main.119.@vector.tostring.7.ForBody:
     mov                  rdi,                  r13
     mov                  rsi,         __const_str7
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,            qword[r8]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r13,                  rsi
     add                  r12,                    1
@main.118.@vector.tostring.8.ForCon:
     mov                  rbx,                   r8
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.162.@vector.getDim.4.IfTrue
	jmp	@main.163.@vector.getDim.3.IfFalse
@main.162.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@main.160.@vector.getDim.2.exit
	jmp	@main.164.@vector.getDim.5.IfExit
@main.163.@vector.getDim.3.IfFalse:
@main.164.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
@main.160.@vector.getDim.2.exit:
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.119.@vector.tostring.7.ForBody
     mov                  rdi,                  r13
     mov                  rsi,         __const_str8
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r13,                  rsi
     mov                  rsi,                  r13
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rax,                    0
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     pop                  rbp
     ret
vector.tostring:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  r13
    push                  rbx
@vector.tostring.1.enter:
     mov                  r12,                  rdi
     mov                   r8,         __const_str6
     mov                  rbx,                  r12
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@vector.tostring.13.@vector.getDim.4.IfTrue
	jmp	@vector.tostring.14.@vector.getDim.3.IfFalse
@vector.tostring.13.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@vector.tostring.11.@vector.getDim.2.exit
	jmp	@vector.tostring.15.@vector.getDim.5.IfExit
@vector.tostring.14.@vector.getDim.3.IfFalse:
@vector.tostring.15.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
@vector.tostring.11.@vector.getDim.2.exit:
     cmp                  rsi,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@vector.tostring.4.IfTrue
	jmp	@vector.tostring.3.IfFalse
@vector.tostring.4.IfTrue:
     mov                  rsi,           qword[r12]
     mov                  rdi,           qword[rsi]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
	jmp	@vector.tostring.5.IfExit
@vector.tostring.3.IfFalse:
@vector.tostring.5.IfExit:
     mov                  r13,                    1
	jmp	@vector.tostring.8.ForCon
@vector.tostring.7.ForBody:
     mov                  rdi,                   r8
     mov                  rsi,         __const_str7
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,           qword[r12]
     mov                  rsi,                  r13
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
    push                  rsi
call	toString
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rbx
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     add                  r13,                    1
@vector.tostring.8.ForCon:
     mov                  rbx,                  r12
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@vector.tostring.18.@vector.getDim.4.IfTrue
	jmp	@vector.tostring.19.@vector.getDim.3.IfFalse
@vector.tostring.18.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@vector.tostring.16.@vector.getDim.2.exit
	jmp	@vector.tostring.20.@vector.getDim.5.IfExit
@vector.tostring.19.@vector.getDim.3.IfFalse:
@vector.tostring.20.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
@vector.tostring.16.@vector.getDim.2.exit:
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@vector.tostring.7.ForBody
     mov                  rdi,                   r8
     mov                  rsi,         __const_str8
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rax,                   r8
     pop                  rbx
     pop                  r13
     pop                  r12
     pop                  rbp
     ret
vector.set:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  r13
    push                  rbx
@vector.set.1.enter:
     mov                  r13,                  rdi
     mov                   r8,                  rsi
     mov                  r12,                  rdx
     mov                  rbx,                  r13
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@vector.set.9.@vector.getDim.4.IfTrue
	jmp	@vector.set.10.@vector.getDim.3.IfFalse
@vector.set.9.@vector.getDim.4.IfTrue:
     mov                  rsi,                    0
	jmp	@vector.set.7.@vector.getDim.2.exit
	jmp	@vector.set.11.@vector.getDim.5.IfExit
@vector.set.10.@vector.getDim.3.IfFalse:
@vector.set.11.@vector.getDim.5.IfExit:
     mov                  rdi,           qword[rbx]
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
@vector.set.7.@vector.getDim.2.exit:
     cmp                  rsi,                   r8
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@vector.set.4.IfTrue
	jmp	@vector.set.3.IfFalse
@vector.set.4.IfTrue:
     mov                  rax,                    0
	jmp	@vector.set.2.exit
	jmp	@vector.set.5.IfExit
@vector.set.3.IfFalse:
@vector.set.5.IfExit:
     mov                  rbx,           qword[r13]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                  r12
     mov                  rax,                    1
@vector.set.2.exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     pop                  rbp
     ret


 section                 .bss


 section                .data
      dq                   10
__const_str0:
      db "vector x: ",0
      dq                   10
__const_str2:
      db "vector y: ",0
      dq                    2
__const_str7:
      db ", ",0
      dq                    7
__const_str4:
      db "x * y: ",0
      dq                    8
__const_str1:
      db "excited!",0
      dq                    7
__const_str3:
      db "x + y: ",0
      dq                    2
__const_str6:
      db "( ",0
      dq                    2
__const_str8:
      db " )",0
      dq                   14
__const_str5:
      db "(1 << 3) * y: ",0






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



