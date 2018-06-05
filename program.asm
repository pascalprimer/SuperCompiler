  global                 main
  extern	malloc


 section                .text
build:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   24
@build.1.enter:
     mov            qword[@i],                    1
	jmp	@build.6.ForCon
@build.5.ForBody:
     mov            qword[@j],                   50
	jmp	@build.11.ForCon
@build.10.ForBody:
     mov                   r9,            qword[@c]
     mov                   r8,            qword[@i]
     shl                   r8,                    3
     add                   r9,                   r8
     mov                   r9,            qword[r9]
     mov                   r8,            qword[@j]
     shl                   r8,                    3
     add                   r9,                   r8
     mov            qword[r9],                    1
     add            qword[@j],                    1
@build.11.ForCon:
     mov                   r8,                   98
     sub                   r8,            qword[@i]
     add                   r8,                    1
     cmp            qword[@j],                   r8
     mov                   r8,                    0
   setle                  r8b
     cmp                   r8,                    1
	je	@build.10.ForBody
     add            qword[@i],                    1
@build.6.ForCon:
     cmp            qword[@i],                   49
     mov                   r8,                    0
   setle                  r8b
     cmp                   r8,                    1
	je	@build.5.ForBody
     mov            qword[@i],                    1
	jmp	@build.16.ForCon
@build.15.ForBody:
     mov                   r9,            qword[@c]
     mov                   r8,                  rdi
     shl                   r8,                    3
     add                   r9,                   r8
     mov                   r9,            qword[r9]
     mov                   r8,            qword[@i]
     shl                   r8,                    3
     add                   r9,                   r8
     mov            qword[r9],                    1
     add            qword[@i],                    1
@build.16.ForCon:
     cmp            qword[@i],                   49
     mov                   r8,                    0
   setle                  r8b
     cmp                   r8,                    1
	je	@build.15.ForBody
     mov            qword[@i],                   50
	jmp	@build.21.ForCon
@build.20.ForBody:
     mov                   r8,            qword[@c]
     mov                  rdi,            qword[@i]
     shl                  rdi,                    3
     add                   r8,                  rdi
     mov                   r8,            qword[r8]
     mov                  rdi,                  rsi
     shl                  rdi,                    3
     add                   r8,                  rdi
     mov            qword[r8],                    1
     add            qword[@i],                    1
@build.21.ForCon:
     cmp            qword[@i],                   98
     mov                  rdi,                    0
   setle                  dil
     cmp                  rdi,                    1
	je	@build.20.ForBody
     mov                  rax,                    0
     add                  rsp,                   24
     pop                  rbp
     ret
find:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   64
@find.1.enter:
     mov                  r10,                  rdi
     mov                   r8,                  rsi
     mov                   r9,                  rdx
     mov         qword[@open],                    0
     mov       qword[@closed],                    1
     mov            qword[@i],                    1
	jmp	@find.6.ForCon
@find.5.ForBody:
     mov                  rdi,        qword[@visit]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov           qword[rdi],                    0
     add            qword[@i],                    1
@find.6.ForCon:
     cmp            qword[@i],                  r10
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@find.5.ForBody
     mov                  rsi,            qword[@f]
     mov         qword[rsi+8],                   r8
     mov                  rdi,        qword[@visit]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov           qword[rdi],                    1
     mov                  rdi,          qword[@pre]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov           qword[rdi],                    0
     mov                   r9,                    0
	jmp	@find.11.ForCon
@find.10.ForBody:
     add         qword[@open],                    1
     mov                  rdi,            qword[@f]
     mov                  rsi,         qword[@open]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     mov            qword[@i],                  rsi
     mov            qword[@j],                    1
	jmp	@find.16.ForCon
@find.15.ForBody:
     mov                  rdi,            qword[@c]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,            qword[@j]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     cmp           qword[rdi],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    0
	je	@find.21.cmp_and
     mov                  rdi,        qword[@visit]
     mov                  rsi,            qword[@j]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     cmp           qword[rdi],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@find.21.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@find.19.IfTrue
	jmp	@find.18.IfFalse
@find.19.IfTrue:
     mov                  rdi,        qword[@visit]
     mov                  rsi,            qword[@j]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov           qword[rdi],                    1
     add       qword[@closed],                    1
     mov                  rdi,            qword[@f]
     mov                  rsi,       qword[@closed]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,            qword[@j]
     mov           qword[rdi],                  rsi
     mov                  rdi,          qword[@pre]
     mov                  rsi,            qword[@j]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,            qword[@i]
     mov           qword[rdi],                  rsi
     cmp       qword[@closed],                  r10
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@find.23.IfTrue
	jmp	@find.22.IfFalse
@find.23.IfTrue:
     mov                   r9,                    1
	jmp	@find.24.IfExit
@find.22.IfFalse:
@find.24.IfExit:
	jmp	@find.20.IfExit
@find.18.IfFalse:
@find.20.IfExit:
     add            qword[@j],                    1
@find.16.ForCon:
     cmp            qword[@j],                  r10
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@find.15.ForBody
@find.11.ForCon:
     mov                  rsi,         qword[@open]
     cmp                  rsi,       qword[@closed]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    0
	je	@find.25.cmp_and
     cmp                   r9,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@find.25.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@find.10.ForBody
     mov                  rax,                   r9
     add                  rsp,                   64
     pop                  rbp
     ret
improve:
    push                  rbp
     mov                  rbp,                  rsp
     mov        qword[rbp-56],                  rdi
     cmp                  rdi,                    0
      jl @improve_purity_checkin_out
     cmp                  rdi,                  150
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
     add          qword[@ans],                    1
	jmp	@improve.6.ForCon
@improve.5.ForBody:
     mov                  rdi,          qword[@pre]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,           qword[rdi]
     mov            qword[@j],                  rsi
     mov                  rdi,            qword[@c]
     mov                  rsi,            qword[@j]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     sub           qword[rdi],                    1
     mov                  rdi,            qword[@c]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,            qword[@j]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     add           qword[rdi],                    1
     mov                  rsi,            qword[@j]
     mov            qword[@i],                  rsi
@improve.6.ForCon:
     mov                  rdi,          qword[@pre]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     cmp           qword[rdi],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@improve.5.ForBody
     mov                  rax,                    0
     add                  rsp,                   56
     mov                  rdi,                  rax
     cmp        qword[rbp-56],                    0
      jl @improve_purity_addition_out
     cmp        qword[rbp-56],                  150
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
     mov            qword[@c],                  rdi
     mov            qword[@i],                    0
	jmp	@origin.6.ForCon
@origin.5.ForBody:
     mov                  rdi,            qword[@c]
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
	jmp	@origin.11.ForCon
@origin.10.ForBody:
     mov                  rdi,            qword[@c]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,            qword[@j]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov           qword[rdi],                    0
     add            qword[@j],                    1
@origin.11.ForCon:
     cmp            qword[@j],                   r9
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@origin.10.ForBody
     add            qword[@i],                    1
@origin.6.ForCon:
     cmp            qword[@i],                   r9
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@origin.5.ForBody
     add                  rsp,                   24
     pop                  rbp
     ret
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   32
    push                  rdi
    push                  rsi
     mov                  rdi,                  150
    call               malloc
     pop                  rsi
     pop                  rdi
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
     mov qword[@@improve+800],          -1887415157
     mov qword[@@improve+808],          -1887415157
     mov qword[@@improve+816],          -1887415157
     mov qword[@@improve+824],          -1887415157
     mov qword[@@improve+832],          -1887415157
     mov qword[@@improve+840],          -1887415157
     mov qword[@@improve+848],          -1887415157
     mov qword[@@improve+856],          -1887415157
     mov qword[@@improve+864],          -1887415157
     mov qword[@@improve+872],          -1887415157
     mov qword[@@improve+880],          -1887415157
     mov qword[@@improve+888],          -1887415157
     mov qword[@@improve+896],          -1887415157
     mov qword[@@improve+904],          -1887415157
     mov qword[@@improve+912],          -1887415157
     mov qword[@@improve+920],          -1887415157
     mov qword[@@improve+928],          -1887415157
     mov qword[@@improve+936],          -1887415157
     mov qword[@@improve+944],          -1887415157
     mov qword[@@improve+952],          -1887415157
     mov qword[@@improve+960],          -1887415157
     mov qword[@@improve+968],          -1887415157
     mov qword[@@improve+976],          -1887415157
     mov qword[@@improve+984],          -1887415157
     mov qword[@@improve+992],          -1887415157
     mov qword[@@improve+1000],          -1887415157
     mov qword[@@improve+1008],          -1887415157
     mov qword[@@improve+1016],          -1887415157
     mov qword[@@improve+1024],          -1887415157
     mov qword[@@improve+1032],          -1887415157
     mov qword[@@improve+1040],          -1887415157
     mov qword[@@improve+1048],          -1887415157
     mov qword[@@improve+1056],          -1887415157
     mov qword[@@improve+1064],          -1887415157
     mov qword[@@improve+1072],          -1887415157
     mov qword[@@improve+1080],          -1887415157
     mov qword[@@improve+1088],          -1887415157
     mov qword[@@improve+1096],          -1887415157
     mov qword[@@improve+1104],          -1887415157
     mov qword[@@improve+1112],          -1887415157
     mov qword[@@improve+1120],          -1887415157
     mov qword[@@improve+1128],          -1887415157
     mov qword[@@improve+1136],          -1887415157
     mov qword[@@improve+1144],          -1887415157
     mov qword[@@improve+1152],          -1887415157
     mov qword[@@improve+1160],          -1887415157
     mov qword[@@improve+1168],          -1887415157
     mov qword[@@improve+1176],          -1887415157
     mov qword[@@improve+1184],          -1887415157
     mov qword[@@improve+1192],          -1887415157
     mov          qword[@ans],                    0
     mov                  rdi,                  110
     mov                  rsi,                  110
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
     mov        qword[@visit],                  rdi
     mov                  rdi,                  110
     mov                  rsi,                  110
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
     mov          qword[@pre],                  rdi
     mov                  rdi,                  110
     mov                  rsi,                  110
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
     mov            qword[@f],                  rdi
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
     mov                  rbx,                  r12
     mov                  rsi,                  r12
     add                  rbx,                    1
     shl                  rbx,                    3
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  rbx
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov           qword[rbx],                  rsi
     add                  rbx,                    8
     mov            qword[@c],                  rbx
     mov            qword[@i],                    0
	jmp	@main.11.@origin.6.ForCon
@main.12.@origin.5.ForBody:
     mov                  rdi,            qword[@c]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,                  r12
     mov                  rsi,                  r12
     add                  rbx,                    1
     shl                  rbx,                    3
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  rbx
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov           qword[rbx],                  rsi
     add                  rbx,                    8
     mov           qword[rdi],                  rbx
     mov            qword[@j],                    0
	jmp	@main.13.@origin.11.ForCon
@main.14.@origin.10.ForBody:
     mov                  rbx,            qword[@c]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,            qword[@j]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     add            qword[@j],                    1
@main.13.@origin.11.ForCon:
     cmp            qword[@j],                  r12
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.14.@origin.10.ForBody
     add            qword[@i],                    1
@main.11.@origin.6.ForCon:
     cmp            qword[@i],                  r12
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.12.@origin.5.ForBody
     mov                   r8,                   99
     mov                  r13,                  100
     mov                  rbx,                   r8
     mov                  rdi,                  r13
     mov            qword[@i],                    1
	jmp	@main.17.@build.6.ForCon
@main.18.@build.5.ForBody:
     mov            qword[@j],                   50
	jmp	@main.19.@build.11.ForCon
@main.20.@build.10.ForBody:
     mov                  r12,            qword[@c]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  r12,           qword[r12]
     mov                  rsi,            qword[@j]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov           qword[r12],                    1
     add            qword[@j],                    1
@main.19.@build.11.ForCon:
     mov                  rsi,                   98
     sub                  rsi,            qword[@i]
     add                  rsi,                    1
     cmp            qword[@j],                  rsi
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.20.@build.10.ForBody
     add            qword[@i],                    1
@main.17.@build.6.ForCon:
     cmp            qword[@i],                   49
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.18.@build.5.ForBody
     mov            qword[@i],                    1
	jmp	@main.21.@build.16.ForCon
@main.22.@build.15.ForBody:
     mov                  r12,            qword[@c]
     mov                  rsi,                  rbx
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  r12,           qword[r12]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov           qword[r12],                    1
     add            qword[@i],                    1
@main.21.@build.16.ForCon:
     cmp            qword[@i],                   49
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.22.@build.15.ForBody
     mov            qword[@i],                   50
	jmp	@main.23.@build.21.ForCon
@main.24.@build.20.ForBody:
     mov                  rbx,            qword[@c]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                  rdi
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     add            qword[@i],                    1
@main.23.@build.21.ForCon:
     cmp            qword[@i],                   98
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.24.@build.20.ForBody
	jmp	@main.6.ForCon
@main.5.ForBody:
     mov                  rsi,                  r13
     mov            qword[@i],                  rsi
     add          qword[@ans],                    1
	jmp	@main.27.@improve.6.ForCon
@main.28.@improve.5.ForBody:
     mov                  rbx,          qword[@pre]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov            qword[@j],                  rsi
     mov                  rbx,            qword[@c]
     mov                  rsi,            qword[@j]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     sub           qword[rbx],                    1
     mov                  rbx,            qword[@c]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,            qword[@j]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     add           qword[rbx],                    1
     mov                  rsi,            qword[@j]
     mov            qword[@i],                  rsi
@main.27.@improve.6.ForCon:
     mov                  rbx,          qword[@pre]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.28.@improve.5.ForBody
@main.6.ForCon:
     mov                  rdi,                  r13
     mov                  rbx,                   r8
     mov         qword[@open],                    0
     mov       qword[@closed],                    1
     mov            qword[@i],                    1
	jmp	@main.31.@find.6.ForCon
@main.32.@find.5.ForBody:
     mov                  r12,        qword[@visit]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov           qword[r12],                    0
     add            qword[@i],                    1
@main.31.@find.6.ForCon:
     cmp            qword[@i],                  rdi
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.32.@find.5.ForBody
     mov                  rsi,            qword[@f]
     mov         qword[rsi+8],                  rbx
     mov                  r12,        qword[@visit]
     mov                  rsi,                  rbx
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov           qword[r12],                    1
     mov                  r12,          qword[@pre]
     mov                  rsi,                  rbx
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov           qword[r12],                    0
     mov                  r12,                    0
	jmp	@main.33.@find.11.ForCon
@main.34.@find.10.ForBody:
     add         qword[@open],                    1
     mov                  rbx,            qword[@f]
     mov                  rsi,         qword[@open]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov            qword[@i],                  rsi
     mov            qword[@j],                    1
	jmp	@main.35.@find.16.ForCon
@main.36.@find.15.ForBody:
     mov                  rbx,            qword[@c]
     mov                  rsi,            qword[@i]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,            qword[@j]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    0
	je	@main.37.@find.21.cmp_and
     mov                  rbx,        qword[@visit]
     mov                  rsi,            qword[@j]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.37.@find.21.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.38.@find.19.IfTrue
	jmp	@main.39.@find.18.IfFalse
@main.38.@find.19.IfTrue:
     mov                  rbx,        qword[@visit]
     mov                  rsi,            qword[@j]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    1
     add       qword[@closed],                    1
     mov                  rbx,            qword[@f]
     mov                  rsi,       qword[@closed]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,            qword[@j]
     mov           qword[rbx],                  rsi
     mov                  rbx,          qword[@pre]
     mov                  rsi,            qword[@j]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,            qword[@i]
     mov           qword[rbx],                  rsi
     cmp       qword[@closed],                  rdi
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.40.@find.23.IfTrue
	jmp	@main.41.@find.22.IfFalse
@main.40.@find.23.IfTrue:
     mov                  r12,                    1
	jmp	@main.42.@find.24.IfExit
@main.41.@find.22.IfFalse:
@main.42.@find.24.IfExit:
	jmp	@main.43.@find.20.IfExit
@main.39.@find.18.IfFalse:
@main.43.@find.20.IfExit:
     add            qword[@j],                    1
@main.35.@find.16.ForCon:
     cmp            qword[@j],                  rdi
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.36.@find.15.ForBody
@main.33.@find.11.ForCon:
     mov                  rsi,         qword[@open]
     cmp                  rsi,       qword[@closed]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    0
	je	@main.44.@find.25.cmp_and
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    0
@main.44.@find.25.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.34.@find.10.ForBody
     mov                  rsi,                  r12
     cmp                  rsi,                    0
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.5.ForBody
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



