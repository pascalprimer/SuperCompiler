  global                 main
  extern	malloc


 section                .text
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                   72
@main.1.enter:
     mov         qword[rbp-8],                    0
     mov        qword[rbp-16],                    1
     mov        qword[rbp-24],                    1
jmp	@main.6.ForCon
@main.5.ForBody:
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-32],                  rcx
     mov                  rax,        qword[rbp-32]
     add                  rax,        qword[rbp-16]
     mov        qword[rbp-32],                  rax
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-40],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov         qword[rbp-8],                  rcx
     mov                  rcx,        qword[rbp-40]
     mov        qword[rbp-16],                  rcx
jmp	@main.4.ForIter
@main.4.ForIter:
     add        qword[rbp-24],                    1
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-48],                  rcx
jmp	@main.6.ForCon
@main.6.ForCon:
     cmp        qword[rbp-24],                   10
     mov                  rax,                    0
    setl                   al
     mov        qword[rbp-56],                  rax
     mov                  rcx,        qword[rbp-56]
     mov        qword[rbp-64],                  rcx
     cmp        qword[rbp-64],                    1
je	@main.5.ForBody
jne	@main.7.ForExit
@main.7.ForExit:
     mov                  rax,        qword[rbp-40]
jmp	@main.2.exit
@main.2.exit:
     add                  rsp,                   72
     pop                  rbp
     ret


 section                 .bss


 section                .data
