  global                 main
  extern	malloc


 section                .text
build:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   24
@build.1.enter:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     mov            qword[@i],                    1
	jmp	@build.5.ForCon
@build.4.ForBody:
     mov            qword[@j],                   50
	jmp	@build.9.ForCon
@build.8.ForBody:
     mov                   r8,            qword[@c]
     mov                   r9,            qword[@i]
     shl                   r9,                    3
     add                   r8,                   r9
     mov                   r8,            qword[r8]
     mov                   r9,            qword[@j]
     shl                   r9,                    3
     add                   r8,                   r9
     mov            qword[r8],                    1
	jmp	@build.7.ForIter
@build.7.ForIter:
     mov                   r8,            qword[@j]
     add            qword[@j],                    1
	jmp	@build.9.ForCon
@build.9.ForCon:
     mov                   r8,                   98
     sub                   r8,            qword[@i]
     mov                   r8,                   r8
     add                   r8,                    1
     cmp            qword[@j],                   r8
     mov                   r8,                    0
   setle                  r8b
     mov                   r8,                   r8
     cmp                   r8,                    1
	je	@build.8.ForBody
	jmp	@build.10.ForExit
@build.10.ForExit:
	jmp	@build.3.ForIter
@build.3.ForIter:
     mov                   r8,            qword[@i]
     add            qword[@i],                    1
	jmp	@build.5.ForCon
@build.5.ForCon:
     cmp            qword[@i],                   49
     mov                   r8,                    0
   setle                  r8b
     mov                   r8,                   r8
     cmp                   r8,                    1
	je	@build.4.ForBody
	jmp	@build.6.ForExit
@build.6.ForExit:
     mov            qword[@i],                    1
	jmp	@build.13.ForCon
@build.12.ForBody:
     mov                   r8,            qword[@c]
     mov                   r9,                  rdi
     shl                   r9,                    3
     add                   r8,                   r9
     mov                   r8,            qword[r8]
     mov                   r9,            qword[@i]
     shl                   r9,                    3
     add                   r8,                   r9
     mov            qword[r8],                    1
	jmp	@build.11.ForIter
@build.11.ForIter:
     mov                   r8,            qword[@i]
     add            qword[@i],                    1
	jmp	@build.13.ForCon
@build.13.ForCon:
     cmp            qword[@i],                   49
     mov                   r8,                    0
   setle                  r8b
     mov                   r8,                   r8
     cmp                   r8,                    1
	je	@build.12.ForBody
	jmp	@build.14.ForExit
@build.14.ForExit:
     mov            qword[@i],                   50
	jmp	@build.17.ForCon
@build.16.ForBody:
     mov                  rdi,            qword[@c]
     mov                   r8,            qword[@i]
     shl                   r8,                    3
     add                  rdi,                   r8
     mov                  rdi,           qword[rdi]
     mov                   r8,                  rsi
     shl                   r8,                    3
     add                  rdi,                   r8
     mov           qword[rdi],                    1
	jmp	@build.15.ForIter
@build.15.ForIter:
     mov                  rdi,            qword[@i]
     add            qword[@i],                    1
	jmp	@build.17.ForCon
@build.17.ForCon:
     cmp            qword[@i],                   98
     mov                  rdi,                    0
   setle                  dil
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@build.16.ForBody
	jmp	@build.18.ForExit
@build.18.ForExit:
     mov                  rax,                    0
	jmp	@build.2.exit
@build.2.exit:
     add                  rsp,                   24
     pop                  rbp
     ret
find:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   64
@find.1.enter:
     mov                   r8,                  rdi
     mov                  rsi,                  rsi
     mov                  rdi,                  rdx
     mov         qword[@open],                    0
     mov       qword[@closed],                    1
     mov            qword[@i],                    1
	jmp	@find.5.ForCon
@find.4.ForBody:
     mov                  rdi,        qword[@visit]
     mov                   r9,            qword[@i]
     shl                   r9,                    3
     add                  rdi,                   r9
     mov           qword[rdi],                    0
	jmp	@find.3.ForIter
@find.3.ForIter:
     mov                  rdi,            qword[@i]
     add            qword[@i],                    1
	jmp	@find.5.ForCon
@find.5.ForCon:
     cmp            qword[@i],                   r8
     mov                  rdi,                    0
   setle                  dil
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@find.4.ForBody
	jmp	@find.6.ForExit
@find.6.ForExit:
     mov                  rdi,            qword[@f]
     mov         qword[rdi+8],                  rsi
     mov                  rdi,        qword[@visit]
     mov                   r9,                  rsi
     shl                   r9,                    3
     add                  rdi,                   r9
     mov           qword[rdi],                    1
     mov                  rdi,          qword[@pre]
     mov                  rsi,                  rsi
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov           qword[rdi],                    0
     mov                  rdi,                    0
	jmp	@find.9.ForCon
@find.8.ForBody:
     mov                  rsi,         qword[@open]
     add         qword[@open],                    1
     mov                  rsi,            qword[@f]
     mov                   r9,         qword[@open]
     shl                   r9,                    3
     add                  rsi,                   r9
     mov                  rsi,           qword[rsi]
     mov            qword[@i],                  rsi
     mov            qword[@j],                    1
	jmp	@find.13.ForCon
@find.12.ForBody:
     mov                  rsi,            qword[@c]
     mov                   r9,            qword[@i]
     shl                   r9,                    3
     add                  rsi,                   r9
     mov                  rsi,           qword[rsi]
     mov                   r9,            qword[@j]
     shl                   r9,                    3
     add                  rsi,                   r9
     cmp           qword[rsi],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    0
	je	@find.18.cmp_and
     mov                  rsi,        qword[@visit]
     mov                   r9,            qword[@j]
     shl                   r9,                    3
     add                  rsi,                   r9
     cmp           qword[rsi],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@find.18.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@find.16.IfTrue
	jmp	@find.15.IfFalse
@find.16.IfTrue:
     mov                  rsi,        qword[@visit]
     mov                   r9,            qword[@j]
     shl                   r9,                    3
     add                  rsi,                   r9
     mov           qword[rsi],                    1
     mov                  rsi,       qword[@closed]
     add       qword[@closed],                    1
     mov                   r9,            qword[@f]
     mov                  rsi,       qword[@closed]
     shl                  rsi,                    3
     add                   r9,                  rsi
     mov                  rsi,            qword[@j]
     mov            qword[r9],                  rsi
     mov                   r9,          qword[@pre]
     mov                  rsi,            qword[@j]
     shl                  rsi,                    3
     add                   r9,                  rsi
     mov                  rsi,            qword[@i]
     mov            qword[r9],                  rsi
     cmp       qword[@closed],                   r8
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@find.20.IfTrue
	jmp	@find.19.IfFalse
@find.20.IfTrue:
     mov                  rdi,                    1
	jmp	@find.21.IfExit
@find.19.IfFalse:
@find.21.IfExit:
	jmp	@find.17.IfExit
@find.15.IfFalse:
@find.17.IfExit:
	jmp	@find.11.ForIter
@find.11.ForIter:
     mov                  rsi,            qword[@j]
     add            qword[@j],                    1
	jmp	@find.13.ForCon
@find.13.ForCon:
     cmp            qword[@j],                   r8
     mov                  rsi,                    0
   setle                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@find.12.ForBody
	jmp	@find.14.ForExit
@find.14.ForExit:
	jmp	@find.7.ForIter
@find.7.ForIter:
	jmp	@find.9.ForCon
@find.9.ForCon:
     mov                  rsi,         qword[@open]
     cmp                  rsi,       qword[@closed]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    0
	je	@find.22.cmp_and
     cmp                  rdi,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@find.22.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@find.8.ForBody
	jmp	@find.10.ForExit
@find.10.ForExit:
     mov                  rax,                  rdi
	jmp	@find.2.exit
@find.2.exit:
     add                  rsp,                   64
     pop                  rbp
     ret
improve:
    push                  rbp
     mov                  rbp,                  rsp
     mov        qword[rbp-56],                  rdi
     cmp                  rdi,                    0
      jl @improve_purity_checkin_out
     cmp                  rdi,                  100
     jnl @improve_purity_checkin_out
     mov                  rdx,            @@improve
     mov                  rcx,        qword[rbp-56]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov                  rdx,           qword[rdx]
     cmp                  rdx,          -1887415157
      je @improve_purity_checkin_out
     mov                  rax,                  rdx
     pop                  rbp
     ret
@improve_purity_checkin_out:
     sub                  rsp,                   56
@improve.1.enter:
     mov                  rsi,                  rdi
     mov            qword[@i],                  rsi
     mov                  rsi,          qword[@ans]
     add          qword[@ans],                    1
	jmp	@improve.5.ForCon
@improve.4.ForBody:
     mov                  rsi,          qword[@pre]
     mov                  rdi,            qword[@i]
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rsi,           qword[rsi]
     mov            qword[@j],                  rsi
     mov                  rsi,            qword[@c]
     mov                  rdi,            qword[@j]
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rdi,           qword[rsi]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     sub           qword[rdi],                    1
     mov                  rsi,            qword[@c]
     mov                  rdi,            qword[@i]
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rdi,           qword[rsi]
     mov                  rsi,            qword[@j]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     add           qword[rdi],                    1
     mov                  rsi,            qword[@j]
     mov            qword[@i],                  rsi
	jmp	@improve.3.ForIter
@improve.3.ForIter:
	jmp	@improve.5.ForCon
@improve.5.ForCon:
     mov                  rsi,          qword[@pre]
     mov                  rdi,            qword[@i]
     shl                  rdi,                    3
     add                  rsi,                  rdi
     cmp           qword[rsi],                    0
     mov                  rsi,                    0
    setg                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@improve.4.ForBody
	jmp	@improve.6.ForExit
@improve.6.ForExit:
     mov                  rax,                    0
	jmp	@improve.2.exit
@improve.2.exit:
     add                  rsp,                   56
     mov                  rdi,                  rax
     cmp        qword[rbp-56],                    0
      jl @improve_purity_addition_out
     cmp        qword[rbp-56],                  100
     jnl @improve_purity_addition_out
     mov                  rdx,            @@improve
     mov                  rcx,        qword[rbp-56]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov           qword[rdx],                  rax
     mov                  rax,                  rdi
     pop                  rbp
     ret
@improve_purity_addition_out:
     pop                  rbp
     ret
origin:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   24
@origin.1.enter:
     mov                   r9,                  rdi
     mov                   r8,                   r9
     mov                  rdi,                   r9
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
     mov            qword[@c],                  rsi
     mov            qword[@i],                    0
	jmp	@origin.5.ForCon
@origin.4.ForBody:
     mov                  rdi,            qword[@c]
     mov                  rsi,            qword[@i]
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
     mov                  r10,                  rax
     mov           qword[r10],                  rsi
     add                  r10,                    8
     sub                   r8,                    8
     mov           qword[rdi],                  r10
     mov            qword[@j],                    0
	jmp	@origin.9.ForCon
@origin.8.ForBody:
     mov                  rsi,            qword[@c]
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
     cmp            qword[@j],                   r9
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
     cmp            qword[@i],                   r9
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
     sub                  rsp,                   32
     mov          qword[@ans],                    0
     mov                   r8,                  110
     mov                  rdi,                  110
     add                   r8,                    1
     shl                   r8,                    3
    push                  r10
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                   r8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r10
     mov                  rsi,                  rax
     mov           qword[rsi],                  rdi
     add                  rsi,                    8
     sub                   r8,                    8
     mov        qword[@visit],                  rsi
     mov                  rdi,                  110
     mov                  rsi,                  110
     add                  rdi,                    1
     shl                  rdi,                    3
    push                  r10
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
     pop                  r10
     mov                   r9,                  rax
     mov            qword[r9],                  rsi
     add                   r9,                    8
     sub                  rdi,                    8
     mov          qword[@pre],                   r9
     mov                  rdi,                  110
     mov                  rsi,                  110
     add                  rdi,                    1
     shl                  rdi,                    3
    push                  r10
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
     pop                  r10
     mov                  r10,                  rax
     mov           qword[r10],                  rsi
     add                  r10,                    8
     sub                  rdi,                    8
     mov            qword[@f],                  r10
    push                  r10
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  100
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r10
     mov                  rsi,                  rax
     mov     qword[@@improve],                  rsi
     mov     qword[@@improve],          -1887415157
     mov   qword[@@improve+8],          -1887415157
     mov  qword[@@improve+16],          -1887415157
     mov  qword[@@improve+24],          -1887415157
     mov  qword[@@improve+32],          -1887415157
     mov  qword[@@improve+40],          -1887415157
     mov  qword[@@improve+48],          -1887415157
     mov  qword[@@improve+56],          -1887415157
     mov  qword[@@improve+64],          -1887415157
     mov  qword[@@improve+72],          -1887415157
     mov  qword[@@improve+80],          -1887415157
     mov  qword[@@improve+88],          -1887415157
     mov  qword[@@improve+96],          -1887415157
     mov qword[@@improve+104],          -1887415157
     mov qword[@@improve+112],          -1887415157
     mov qword[@@improve+120],          -1887415157
     mov qword[@@improve+128],          -1887415157
     mov qword[@@improve+136],          -1887415157
     mov qword[@@improve+144],          -1887415157
     mov qword[@@improve+152],          -1887415157
     mov qword[@@improve+160],          -1887415157
     mov qword[@@improve+168],          -1887415157
     mov qword[@@improve+176],          -1887415157
     mov qword[@@improve+184],          -1887415157
     mov qword[@@improve+192],          -1887415157
     mov qword[@@improve+200],          -1887415157
     mov qword[@@improve+208],          -1887415157
     mov qword[@@improve+216],          -1887415157
     mov qword[@@improve+224],          -1887415157
     mov qword[@@improve+232],          -1887415157
     mov qword[@@improve+240],          -1887415157
     mov qword[@@improve+248],          -1887415157
     mov qword[@@improve+256],          -1887415157
     mov qword[@@improve+264],          -1887415157
     mov qword[@@improve+272],          -1887415157
     mov qword[@@improve+280],          -1887415157
     mov qword[@@improve+288],          -1887415157
     mov qword[@@improve+296],          -1887415157
     mov qword[@@improve+304],          -1887415157
     mov qword[@@improve+312],          -1887415157
     mov qword[@@improve+320],          -1887415157
     mov qword[@@improve+328],          -1887415157
     mov qword[@@improve+336],          -1887415157
     mov qword[@@improve+344],          -1887415157
     mov qword[@@improve+352],          -1887415157
     mov qword[@@improve+360],          -1887415157
     mov qword[@@improve+368],          -1887415157
     mov qword[@@improve+376],          -1887415157
     mov qword[@@improve+384],          -1887415157
     mov qword[@@improve+392],          -1887415157
     mov qword[@@improve+400],          -1887415157
     mov qword[@@improve+408],          -1887415157
     mov qword[@@improve+416],          -1887415157
     mov qword[@@improve+424],          -1887415157
     mov qword[@@improve+432],          -1887415157
     mov qword[@@improve+440],          -1887415157
     mov qword[@@improve+448],          -1887415157
     mov qword[@@improve+456],          -1887415157
     mov qword[@@improve+464],          -1887415157
     mov qword[@@improve+472],          -1887415157
     mov qword[@@improve+480],          -1887415157
     mov qword[@@improve+488],          -1887415157
     mov qword[@@improve+496],          -1887415157
     mov qword[@@improve+504],          -1887415157
     mov qword[@@improve+512],          -1887415157
     mov qword[@@improve+520],          -1887415157
     mov qword[@@improve+528],          -1887415157
     mov qword[@@improve+536],          -1887415157
     mov qword[@@improve+544],          -1887415157
     mov qword[@@improve+552],          -1887415157
     mov qword[@@improve+560],          -1887415157
     mov qword[@@improve+568],          -1887415157
     mov qword[@@improve+576],          -1887415157
     mov qword[@@improve+584],          -1887415157
     mov qword[@@improve+592],          -1887415157
     mov qword[@@improve+600],          -1887415157
     mov qword[@@improve+608],          -1887415157
     mov qword[@@improve+616],          -1887415157
     mov qword[@@improve+624],          -1887415157
     mov qword[@@improve+632],          -1887415157
     mov qword[@@improve+640],          -1887415157
     mov qword[@@improve+648],          -1887415157
     mov qword[@@improve+656],          -1887415157
     mov qword[@@improve+664],          -1887415157
     mov qword[@@improve+672],          -1887415157
     mov qword[@@improve+680],          -1887415157
     mov qword[@@improve+688],          -1887415157
     mov qword[@@improve+696],          -1887415157
     mov qword[@@improve+704],          -1887415157
     mov qword[@@improve+712],          -1887415157
     mov qword[@@improve+720],          -1887415157
     mov qword[@@improve+728],          -1887415157
     mov qword[@@improve+736],          -1887415157
     mov qword[@@improve+744],          -1887415157
     mov qword[@@improve+752],          -1887415157
     mov qword[@@improve+760],          -1887415157
     mov qword[@@improve+768],          -1887415157
     mov qword[@@improve+776],          -1887415157
     mov qword[@@improve+784],          -1887415157
     mov qword[@@improve+792],          -1887415157
     add                  rsp,                   32
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                   72
    push                  r12
    push                  r13
    push                  rbx
@main.1.enter:
     mov                  r12,                  110
@main.9.@origin.1.enter:
     mov                  rbx,                  r12
     mov                  rsi,                  r12
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
     mov                  rdi,                  rax
     mov           qword[rdi],                  rsi
     add                  rdi,                    8
     sub                  rbx,                    8
     mov            qword[@c],                  rdi
     mov            qword[@i],                    0
	jmp	@main.10.@origin.5.ForCon
@main.11.@origin.4.ForBody:
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@i]
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov                  rdi,                  r12
     mov                  rbx,                  r12
     add                  rdi,                    1
     shl                  rdi,                    3
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     mov                  rdi,                  rdi
    call               malloc
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     mov                   r8,                  rax
     mov            qword[r8],                  rbx
     add                   r8,                    8
     sub                  rdi,                    8
     mov           qword[rsi],                   r8
     mov            qword[@j],                    0
	jmp	@main.12.@origin.9.ForCon
@main.13.@origin.8.ForBody:
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@i]
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov                  rsi,           qword[rsi]
     mov                  rbx,            qword[@j]
     shl                  rbx,                    3
     add                  rsi,                  rbx
     mov           qword[rsi],                    0
	jmp	@main.14.@origin.7.ForIter
@main.14.@origin.7.ForIter:
     mov                  rsi,            qword[@j]
     add            qword[@j],                    1
	jmp	@main.12.@origin.9.ForCon
@main.12.@origin.9.ForCon:
     cmp            qword[@j],                  r12
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.13.@origin.8.ForBody
	jmp	@main.15.@origin.10.ForExit
@main.15.@origin.10.ForExit:
	jmp	@main.16.@origin.3.ForIter
@main.16.@origin.3.ForIter:
     mov                  rsi,            qword[@i]
     add            qword[@i],                    1
	jmp	@main.10.@origin.5.ForCon
@main.10.@origin.5.ForCon:
     cmp            qword[@i],                  r12
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.11.@origin.4.ForBody
	jmp	@main.17.@origin.6.ForExit
@main.17.@origin.6.ForExit:
@main.8.@origin.2.exit:
     mov                  rsi,                    0
     mov                  rsi,                   99
     mov                  rdi,                  100
     mov                  rbx,                    0
     mov                   r8,                  rsi
     mov                  r12,                  rdi
@main.19.@build.1.enter:
     mov            qword[@i],                    1
	jmp	@main.20.@build.5.ForCon
@main.21.@build.4.ForBody:
     mov            qword[@j],                   50
	jmp	@main.22.@build.9.ForCon
@main.23.@build.8.ForBody:
     mov                  r13,            qword[@c]
     mov                   r9,            qword[@i]
     shl                   r9,                    3
     add                  r13,                   r9
     mov                  r13,           qword[r13]
     mov                   r9,            qword[@j]
     shl                   r9,                    3
     add                  r13,                   r9
     mov           qword[r13],                    1
	jmp	@main.24.@build.7.ForIter
@main.24.@build.7.ForIter:
     mov                  r13,            qword[@j]
     add            qword[@j],                    1
	jmp	@main.22.@build.9.ForCon
@main.22.@build.9.ForCon:
     mov                  r13,                   98
     sub                  r13,            qword[@i]
     mov                  r13,                  r13
     add                  r13,                    1
     cmp            qword[@j],                  r13
     mov                  r13,                    0
   setle                 r13b
     mov                  r13,                  r13
     cmp                  r13,                    1
	je	@main.23.@build.8.ForBody
	jmp	@main.25.@build.10.ForExit
@main.25.@build.10.ForExit:
	jmp	@main.26.@build.3.ForIter
@main.26.@build.3.ForIter:
     mov                  r13,            qword[@i]
     add            qword[@i],                    1
	jmp	@main.20.@build.5.ForCon
@main.20.@build.5.ForCon:
     cmp            qword[@i],                   49
     mov                  r13,                    0
   setle                 r13b
     mov                  r13,                  r13
     cmp                  r13,                    1
	je	@main.21.@build.4.ForBody
	jmp	@main.27.@build.6.ForExit
@main.27.@build.6.ForExit:
     mov            qword[@i],                    1
	jmp	@main.28.@build.13.ForCon
@main.29.@build.12.ForBody:
     mov                  r13,            qword[@c]
     mov                   r9,                   r8
     shl                   r9,                    3
     add                  r13,                   r9
     mov                  r13,           qword[r13]
     mov                   r9,            qword[@i]
     shl                   r9,                    3
     add                  r13,                   r9
     mov           qword[r13],                    1
	jmp	@main.30.@build.11.ForIter
@main.30.@build.11.ForIter:
     mov                  r13,            qword[@i]
     add            qword[@i],                    1
	jmp	@main.28.@build.13.ForCon
@main.28.@build.13.ForCon:
     cmp            qword[@i],                   49
     mov                  r13,                    0
   setle                 r13b
     mov                  r13,                  r13
     cmp                  r13,                    1
	je	@main.29.@build.12.ForBody
	jmp	@main.31.@build.14.ForExit
@main.31.@build.14.ForExit:
     mov            qword[@i],                   50
	jmp	@main.32.@build.17.ForCon
@main.33.@build.16.ForBody:
     mov                   r8,            qword[@c]
     mov                  r13,            qword[@i]
     shl                  r13,                    3
     add                   r8,                  r13
     mov                   r8,            qword[r8]
     mov                  r13,                  r12
     shl                  r13,                    3
     add                   r8,                  r13
     mov            qword[r8],                    1
	jmp	@main.34.@build.15.ForIter
@main.34.@build.15.ForIter:
     mov                   r8,            qword[@i]
     add            qword[@i],                    1
	jmp	@main.32.@build.17.ForCon
@main.32.@build.17.ForCon:
     cmp            qword[@i],                   98
     mov                   r8,                    0
   setle                  r8b
     mov                   r8,                   r8
     cmp                   r8,                    1
	je	@main.33.@build.16.ForBody
	jmp	@main.35.@build.18.ForExit
@main.35.@build.18.ForExit:
     mov                  r12,                    0
	jmp	@main.18.@build.2.exit
@main.18.@build.2.exit:
     mov                  r12,                  r12
	jmp	@main.5.ForCon
@main.4.ForBody:
     mov                  r12,                  rdi
@main.37.@improve.1.enter:
     mov            qword[@i],                  r12
     mov                  r12,          qword[@ans]
     add          qword[@ans],                    1
	jmp	@main.38.@improve.5.ForCon
@main.39.@improve.4.ForBody:
     mov                  r12,          qword[@pre]
     mov                   r8,            qword[@i]
     shl                   r8,                    3
     add                  r12,                   r8
     mov                  r12,           qword[r12]
     mov            qword[@j],                  r12
     mov                  r12,            qword[@c]
     mov                   r8,            qword[@j]
     shl                   r8,                    3
     add                  r12,                   r8
     mov                   r8,           qword[r12]
     mov                  r12,            qword[@i]
     shl                  r12,                    3
     add                   r8,                  r12
     mov                  r12,            qword[r8]
     sub            qword[r8],                    1
     mov                  r12,            qword[@c]
     mov                   r8,            qword[@i]
     shl                   r8,                    3
     add                  r12,                   r8
     mov                   r8,           qword[r12]
     mov                  r12,            qword[@j]
     shl                  r12,                    3
     add                   r8,                  r12
     mov                  r12,            qword[r8]
     add            qword[r8],                    1
     mov                  r12,            qword[@j]
     mov            qword[@i],                  r12
	jmp	@main.40.@improve.3.ForIter
@main.40.@improve.3.ForIter:
	jmp	@main.38.@improve.5.ForCon
@main.38.@improve.5.ForCon:
     mov                  r12,          qword[@pre]
     mov                   r8,            qword[@i]
     shl                   r8,                    3
     add                  r12,                   r8
     cmp           qword[r12],                    0
     mov                  r12,                    0
    setg                 r12b
     mov                  r12,                  r12
     cmp                  r12,                    1
	je	@main.39.@improve.4.ForBody
	jmp	@main.41.@improve.6.ForExit
@main.41.@improve.6.ForExit:
     mov                  r12,                    0
	jmp	@main.36.@improve.2.exit
@main.36.@improve.2.exit:
     mov                  r12,                  r12
	jmp	@main.3.ForIter
@main.3.ForIter:
	jmp	@main.5.ForCon
@main.5.ForCon:
     mov                  r13,                  rdi
     mov                   r8,                  rsi
     mov                  r12,                  rbx
@main.43.@find.1.enter:
     mov         qword[@open],                    0
     mov       qword[@closed],                    1
     mov            qword[@i],                    1
	jmp	@main.44.@find.5.ForCon
@main.45.@find.4.ForBody:
     mov                  r12,        qword[@visit]
     mov                   r9,            qword[@i]
     shl                   r9,                    3
     add                  r12,                   r9
     mov           qword[r12],                    0
	jmp	@main.46.@find.3.ForIter
@main.46.@find.3.ForIter:
     mov                  r12,            qword[@i]
     add            qword[@i],                    1
	jmp	@main.44.@find.5.ForCon
@main.44.@find.5.ForCon:
     cmp            qword[@i],                  r13
     mov                  r12,                    0
   setle                 r12b
     mov                  r12,                  r12
     cmp                  r12,                    1
	je	@main.45.@find.4.ForBody
	jmp	@main.47.@find.6.ForExit
@main.47.@find.6.ForExit:
     mov                  r12,            qword[@f]
     mov         qword[r12+8],                   r8
     mov                  r12,        qword[@visit]
     mov                   r9,                   r8
     shl                   r9,                    3
     add                  r12,                   r9
     mov           qword[r12],                    1
     mov                  r12,          qword[@pre]
     mov                   r8,                   r8
     shl                   r8,                    3
     add                  r12,                   r8
     mov           qword[r12],                    0
     mov                  r12,                    0
	jmp	@main.48.@find.9.ForCon
@main.49.@find.8.ForBody:
     mov                   r8,         qword[@open]
     add         qword[@open],                    1
     mov                   r8,            qword[@f]
     mov                   r9,         qword[@open]
     shl                   r9,                    3
     add                   r8,                   r9
     mov                   r8,            qword[r8]
     mov            qword[@i],                   r8
     mov            qword[@j],                    1
	jmp	@main.50.@find.13.ForCon
@main.51.@find.12.ForBody:
     mov                   r8,            qword[@c]
     mov                   r9,            qword[@i]
     shl                   r9,                    3
     add                   r8,                   r9
     mov                   r8,            qword[r8]
     mov                   r9,            qword[@j]
     shl                   r9,                    3
     add                   r8,                   r9
     cmp            qword[r8],                    0
     mov                   r8,                    0
    setg                  r8b
     cmp                   r8,                    0
	je	@main.52.@find.18.cmp_and
     mov                   r8,        qword[@visit]
     mov                   r9,            qword[@j]
     shl                   r9,                    3
     add                   r8,                   r9
     cmp            qword[r8],                    0
     mov                   r8,                    0
    sete                  r8b
     cmp                   r8,                    0
@main.52.@find.18.cmp_and:
     mov                   r8,                    0
   setne                  r8b
     mov                   r8,                   r8
     cmp                   r8,                    1
	je	@main.53.@find.16.IfTrue
	jmp	@main.54.@find.15.IfFalse
@main.53.@find.16.IfTrue:
     mov                   r8,        qword[@visit]
     mov                   r9,            qword[@j]
     shl                   r9,                    3
     add                   r8,                   r9
     mov            qword[r8],                    1
     mov                   r8,       qword[@closed]
     add       qword[@closed],                    1
     mov                   r8,            qword[@f]
     mov                   r9,       qword[@closed]
     shl                   r9,                    3
     add                   r8,                   r9
     mov                   r9,            qword[@j]
     mov            qword[r8],                   r9
     mov                   r8,          qword[@pre]
     mov                   r9,            qword[@j]
     shl                   r9,                    3
     add                   r8,                   r9
     mov                   r9,            qword[@i]
     mov            qword[r8],                   r9
     cmp       qword[@closed],                  r13
     mov                   r8,                    0
    sete                  r8b
     mov                   r8,                   r8
     cmp                   r8,                    1
	je	@main.55.@find.20.IfTrue
	jmp	@main.56.@find.19.IfFalse
@main.55.@find.20.IfTrue:
     mov                  r12,                    1
	jmp	@main.57.@find.21.IfExit
@main.56.@find.19.IfFalse:
@main.57.@find.21.IfExit:
	jmp	@main.58.@find.17.IfExit
@main.54.@find.15.IfFalse:
@main.58.@find.17.IfExit:
	jmp	@main.59.@find.11.ForIter
@main.59.@find.11.ForIter:
     mov                   r8,            qword[@j]
     add            qword[@j],                    1
	jmp	@main.50.@find.13.ForCon
@main.50.@find.13.ForCon:
     cmp            qword[@j],                  r13
     mov                   r8,                    0
   setle                  r8b
     mov                   r8,                   r8
     cmp                   r8,                    1
	je	@main.51.@find.12.ForBody
	jmp	@main.60.@find.14.ForExit
@main.60.@find.14.ForExit:
	jmp	@main.61.@find.7.ForIter
@main.61.@find.7.ForIter:
	jmp	@main.48.@find.9.ForCon
@main.48.@find.9.ForCon:
     mov                   r8,         qword[@open]
     cmp                   r8,       qword[@closed]
     mov                   r8,                    0
    setl                  r8b
     cmp                   r8,                    0
	je	@main.62.@find.22.cmp_and
     cmp                  r12,                    0
     mov                   r8,                    0
    sete                  r8b
     cmp                   r8,                    0
@main.62.@find.22.cmp_and:
     mov                   r8,                    0
   setne                  r8b
     mov                   r8,                   r8
     cmp                   r8,                    1
	je	@main.49.@find.8.ForBody
	jmp	@main.63.@find.10.ForExit
@main.63.@find.10.ForExit:
     mov                  r12,                  r12
	jmp	@main.42.@find.2.exit
@main.42.@find.2.exit:
     mov                  r12,                  r12
     cmp                  r12,                    0
     mov                  r12,                    0
    setg                 r12b
     mov                  r12,                  r12
     cmp                  r12,                    1
	je	@main.4.ForBody
	jmp	@main.6.ForExit
@main.6.ForExit:
     mov                  rdi,          qword[@ans]
    push                  rsi
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
call	println
     mov                  rax,                    0
	jmp	@main.2.exit
@main.2.exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     add                  rsp,                   72
     pop                  rbp
     ret


 section                 .bss
@c:
  	resq 		1
@ans:
  	resq 		1
@visit:
  	resq 		1
@pre:
  	resq 		1
@f:
  	resq 		1
@i:
  	resq 		1
@j:
  	resq 		1
@open:
  	resq 		1
@closed:
  	resq 		1
@@improve:
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



