  global                 main
  extern	malloc


 section                .text
func:
    push                  rbp
     mov                  rbp,                  rsp
     mov        qword[rbp-16],                  rdi
     cmp                  rdi,                    0
      jl @func_purity_checkin_out
     cmp                  rdi,                  150
     jnl @func_purity_checkin_out
     mov                  rdx,               @@func
     mov                  rcx,        qword[rbp-16]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov                  rdx,           qword[rdx]
     cmp                  rdx,          -1887415157
      je @func_purity_checkin_out
     mov                  rax,                  rdx
     pop                  rbp
     ret
@func_purity_checkin_out:
     sub                  rsp,                   16
    push                  r12
    push                  rbx
@func.1.enter:
     mov                   r8,                  rdi
     mov                  rsi,                   r8
     and                  rsi,                    3
     mov                  r12,                  rsi
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@func.4.IfTrue
	jmp	@func.3.IfFalse
@func.4.IfTrue:
     mov                  rax,                   r8
	jmp	@func.2.exit
	jmp	@func.5.IfExit
@func.3.IfFalse:
@func.5.IfExit:
     mov                  rsi,                   r8
     sub                  rsi,                  r12
     mov                  rdi,                  rsi
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	func
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rsi,                   r8
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    push                  rsi
call	func
     pop                  rsi
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
     mov                  rax,                  rsi
@func.2.exit:
     pop                  rbx
     pop                  r12
     add                  rsp,                   16
     mov                  rdi,                  rax
     cmp        qword[rbp-16],                    0
      jl @func_purity_addition_out
     cmp        qword[rbp-16],                  150
     jnl @func_purity_addition_out
     mov                  rdx,               @@func
     mov                  rcx,        qword[rbp-16]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov           qword[rdx],                  rax
     mov                  rax,                  rdi
     pop                  rbp
     ret
@func_purity_addition_out:
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
     mov        qword[@@func],                  rsi
     mov        qword[@@func],          -1887415157
     mov      qword[@@func+8],          -1887415157
     mov     qword[@@func+16],          -1887415157
     mov     qword[@@func+24],          -1887415157
     mov     qword[@@func+32],          -1887415157
     mov     qword[@@func+40],          -1887415157
     mov     qword[@@func+48],          -1887415157
     mov     qword[@@func+56],          -1887415157
     mov     qword[@@func+64],          -1887415157
     mov     qword[@@func+72],          -1887415157
     mov     qword[@@func+80],          -1887415157
     mov     qword[@@func+88],          -1887415157
     mov     qword[@@func+96],          -1887415157
     mov    qword[@@func+104],          -1887415157
     mov    qword[@@func+112],          -1887415157
     mov    qword[@@func+120],          -1887415157
     mov    qword[@@func+128],          -1887415157
     mov    qword[@@func+136],          -1887415157
     mov    qword[@@func+144],          -1887415157
     mov    qword[@@func+152],          -1887415157
     mov    qword[@@func+160],          -1887415157
     mov    qword[@@func+168],          -1887415157
     mov    qword[@@func+176],          -1887415157
     mov    qword[@@func+184],          -1887415157
     mov    qword[@@func+192],          -1887415157
     mov    qword[@@func+200],          -1887415157
     mov    qword[@@func+208],          -1887415157
     mov    qword[@@func+216],          -1887415157
     mov    qword[@@func+224],          -1887415157
     mov    qword[@@func+232],          -1887415157
     mov    qword[@@func+240],          -1887415157
     mov    qword[@@func+248],          -1887415157
     mov    qword[@@func+256],          -1887415157
     mov    qword[@@func+264],          -1887415157
     mov    qword[@@func+272],          -1887415157
     mov    qword[@@func+280],          -1887415157
     mov    qword[@@func+288],          -1887415157
     mov    qword[@@func+296],          -1887415157
     mov    qword[@@func+304],          -1887415157
     mov    qword[@@func+312],          -1887415157
     mov    qword[@@func+320],          -1887415157
     mov    qword[@@func+328],          -1887415157
     mov    qword[@@func+336],          -1887415157
     mov    qword[@@func+344],          -1887415157
     mov    qword[@@func+352],          -1887415157
     mov    qword[@@func+360],          -1887415157
     mov    qword[@@func+368],          -1887415157
     mov    qword[@@func+376],          -1887415157
     mov    qword[@@func+384],          -1887415157
     mov    qword[@@func+392],          -1887415157
     mov    qword[@@func+400],          -1887415157
     mov    qword[@@func+408],          -1887415157
     mov    qword[@@func+416],          -1887415157
     mov    qword[@@func+424],          -1887415157
     mov    qword[@@func+432],          -1887415157
     mov    qword[@@func+440],          -1887415157
     mov    qword[@@func+448],          -1887415157
     mov    qword[@@func+456],          -1887415157
     mov    qword[@@func+464],          -1887415157
     mov    qword[@@func+472],          -1887415157
     mov    qword[@@func+480],          -1887415157
     mov    qword[@@func+488],          -1887415157
     mov    qword[@@func+496],          -1887415157
     mov    qword[@@func+504],          -1887415157
     mov    qword[@@func+512],          -1887415157
     mov    qword[@@func+520],          -1887415157
     mov    qword[@@func+528],          -1887415157
     mov    qword[@@func+536],          -1887415157
     mov    qword[@@func+544],          -1887415157
     mov    qword[@@func+552],          -1887415157
     mov    qword[@@func+560],          -1887415157
     mov    qword[@@func+568],          -1887415157
     mov    qword[@@func+576],          -1887415157
     mov    qword[@@func+584],          -1887415157
     mov    qword[@@func+592],          -1887415157
     mov    qword[@@func+600],          -1887415157
     mov    qword[@@func+608],          -1887415157
     mov    qword[@@func+616],          -1887415157
     mov    qword[@@func+624],          -1887415157
     mov    qword[@@func+632],          -1887415157
     mov    qword[@@func+640],          -1887415157
     mov    qword[@@func+648],          -1887415157
     mov    qword[@@func+656],          -1887415157
     mov    qword[@@func+664],          -1887415157
     mov    qword[@@func+672],          -1887415157
     mov    qword[@@func+680],          -1887415157
     mov    qword[@@func+688],          -1887415157
     mov    qword[@@func+696],          -1887415157
     mov    qword[@@func+704],          -1887415157
     mov    qword[@@func+712],          -1887415157
     mov    qword[@@func+720],          -1887415157
     mov    qword[@@func+728],          -1887415157
     mov    qword[@@func+736],          -1887415157
     mov    qword[@@func+744],          -1887415157
     mov    qword[@@func+752],          -1887415157
     mov    qword[@@func+760],          -1887415157
     mov    qword[@@func+768],          -1887415157
     mov    qword[@@func+776],          -1887415157
     mov    qword[@@func+784],          -1887415157
     mov    qword[@@func+792],          -1887415157
     mov    qword[@@func+800],          -1887415157
     mov    qword[@@func+808],          -1887415157
     mov    qword[@@func+816],          -1887415157
     mov    qword[@@func+824],          -1887415157
     mov    qword[@@func+832],          -1887415157
     mov    qword[@@func+840],          -1887415157
     mov    qword[@@func+848],          -1887415157
     mov    qword[@@func+856],          -1887415157
     mov    qword[@@func+864],          -1887415157
     mov    qword[@@func+872],          -1887415157
     mov    qword[@@func+880],          -1887415157
     mov    qword[@@func+888],          -1887415157
     mov    qword[@@func+896],          -1887415157
     mov    qword[@@func+904],          -1887415157
     mov    qword[@@func+912],          -1887415157
     mov    qword[@@func+920],          -1887415157
     mov    qword[@@func+928],          -1887415157
     mov    qword[@@func+936],          -1887415157
     mov    qword[@@func+944],          -1887415157
     mov    qword[@@func+952],          -1887415157
     mov    qword[@@func+960],          -1887415157
     mov    qword[@@func+968],          -1887415157
     mov    qword[@@func+976],          -1887415157
     mov    qword[@@func+984],          -1887415157
     mov    qword[@@func+992],          -1887415157
     mov   qword[@@func+1000],          -1887415157
     mov   qword[@@func+1008],          -1887415157
     mov   qword[@@func+1016],          -1887415157
     mov   qword[@@func+1024],          -1887415157
     mov   qword[@@func+1032],          -1887415157
     mov   qword[@@func+1040],          -1887415157
     mov   qword[@@func+1048],          -1887415157
     mov   qword[@@func+1056],          -1887415157
     mov   qword[@@func+1064],          -1887415157
     mov   qword[@@func+1072],          -1887415157
     mov   qword[@@func+1080],          -1887415157
     mov   qword[@@func+1088],          -1887415157
     mov   qword[@@func+1096],          -1887415157
     mov   qword[@@func+1104],          -1887415157
     mov   qword[@@func+1112],          -1887415157
     mov   qword[@@func+1120],          -1887415157
     mov   qword[@@func+1128],          -1887415157
     mov   qword[@@func+1136],          -1887415157
     mov   qword[@@func+1144],          -1887415157
     mov   qword[@@func+1152],          -1887415157
     mov   qword[@@func+1160],          -1887415157
     mov   qword[@@func+1168],          -1887415157
     mov   qword[@@func+1176],          -1887415157
     mov   qword[@@func+1184],          -1887415157
     mov   qword[@@func+1192],          -1887415157
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                   48
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
@main.1.enter:
    push                  rsi
call	getInt
     pop                  rsi
     mov                  rsi,                  rax
     mov         qword[rbp-8],                  rsi
     mov        qword[rbp-16],                    0
     mov        qword[rbp-24],                    0
	jmp	@main.5.ForCon
@main.4.ForBody:
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-32],                  rcx
     mov                  rsi,        qword[rbp-32]
     and                  rsi,                    3
     mov                  r15,                  rsi
     cmp                  r15,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.10.@func.4.IfTrue
	jmp	@main.11.@func.3.IfFalse
@main.10.@func.4.IfTrue:
     mov                  rsi,        qword[rbp-32]
	jmp	@main.8.@func.2.exit
	jmp	@main.12.@func.5.IfExit
@main.11.@func.3.IfFalse:
@main.12.@func.5.IfExit:
     mov                  rsi,        qword[rbp-32]
     sub                  rsi,                  r15
     mov        qword[rbp-40],                  rsi
     mov                  rsi,        qword[rbp-40]
     and                  rsi,                    3
     mov                  r10,                  rsi
     cmp                  r10,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.15.@func.4.IfTrue
	jmp	@main.16.@func.3.IfFalse
@main.15.@func.4.IfTrue:
     mov                  rsi,        qword[rbp-40]
	jmp	@main.13.@func.2.exit
	jmp	@main.17.@func.5.IfExit
@main.16.@func.3.IfFalse:
@main.17.@func.5.IfExit:
     mov                  rsi,        qword[rbp-40]
     sub                  rsi,                  r10
     mov                  r11,                  rsi
     mov                  rsi,                  r11
     and                  rsi,                    3
     mov                   r9,                  rsi
     cmp                   r9,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.25.@func.4.IfTrue
	jmp	@main.26.@func.3.IfFalse
@main.25.@func.4.IfTrue:
     mov                  rsi,                  r11
	jmp	@main.23.@func.2.exit
	jmp	@main.27.@func.5.IfExit
@main.26.@func.3.IfFalse:
@main.27.@func.5.IfExit:
     mov                  rsi,                  r11
     sub                  rsi,                   r9
     mov                  r14,                  rsi
     mov                  rsi,                  r14
     and                  rsi,                    3
     mov                  r13,                  rsi
     cmp                  r13,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.45.@func.4.IfTrue
	jmp	@main.46.@func.3.IfFalse
@main.45.@func.4.IfTrue:
     mov                  rsi,                  r14
	jmp	@main.43.@func.2.exit
	jmp	@main.47.@func.5.IfExit
@main.46.@func.3.IfFalse:
@main.47.@func.5.IfExit:
     mov                  rsi,                  r14
     sub                  rsi,                  r13
     mov                   r8,                  rsi
     mov                  rsi,                   r8
     and                  rsi,                    3
     mov                  r12,                  rsi
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.85.@func.4.IfTrue
	jmp	@main.86.@func.3.IfFalse
@main.85.@func.4.IfTrue:
     mov                  rsi,                   r8
	jmp	@main.83.@func.2.exit
	jmp	@main.87.@func.5.IfExit
@main.86.@func.3.IfFalse:
@main.87.@func.5.IfExit:
     mov                  rsi,                   r8
     sub                  rsi,                  r12
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                   r9
    push                  rsi
    push                   r8
call	func
     pop                   r8
     pop                  rsi
     pop                   r9
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rsi,                   r8
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	func
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.83.@func.2.exit:
     mov                  r12,                  rsi
     mov                  rsi,                  r14
     add                  rsi,                  r13
     mov                  r13,                  rsi
     mov                  rsi,                  r13
     and                  rsi,                    3
     mov                   r8,                  rsi
     cmp                   r8,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.90.@func.4.IfTrue
	jmp	@main.91.@func.3.IfFalse
@main.90.@func.4.IfTrue:
     mov                  rsi,                  r13
	jmp	@main.88.@func.2.exit
	jmp	@main.92.@func.5.IfExit
@main.91.@func.3.IfFalse:
@main.92.@func.5.IfExit:
     mov                  rsi,                  r13
     sub                  rsi,                   r8
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                   r8
    push                  rsi
    push                   r9
call	func
     pop                   r9
     pop                  rsi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rsi,                  r13
     add                  rsi,                   r8
     mov                  rdi,                  rsi
    push                  r10
    push                  r11
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	func
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.88.@func.2.exit:
     mov                  rbx,                  r12
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.43.@func.2.exit:
     mov                  r13,                  rsi
     mov                  rsi,                  r11
     add                  rsi,                   r9
     mov                  r14,                  rsi
     mov                  rsi,                  r14
     and                  rsi,                    3
     mov                   r9,                  rsi
     cmp                   r9,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.50.@func.4.IfTrue
	jmp	@main.51.@func.3.IfFalse
@main.50.@func.4.IfTrue:
     mov                  rsi,                  r14
	jmp	@main.48.@func.2.exit
	jmp	@main.52.@func.5.IfExit
@main.51.@func.3.IfFalse:
@main.52.@func.5.IfExit:
     mov                  rsi,                  r14
     sub                  rsi,                   r9
     mov                   r8,                  rsi
     mov                  rsi,                   r8
     and                  rsi,                    3
     mov                  r12,                  rsi
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.95.@func.4.IfTrue
	jmp	@main.96.@func.3.IfFalse
@main.95.@func.4.IfTrue:
     mov                  rsi,                   r8
	jmp	@main.93.@func.2.exit
	jmp	@main.97.@func.5.IfExit
@main.96.@func.3.IfFalse:
@main.97.@func.5.IfExit:
     mov                  rsi,                   r8
     sub                  rsi,                  r12
     mov                  rdi,                  rsi
    push                  rsi
    push                   r9
    push                  r10
    push                   r8
     sub                  rsp,                    8
call	func
     add                  rsp,                    8
     pop                   r8
     pop                  r10
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rsi,                   r8
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    push                   r9
    push                  r10
    push                  rsi
call	func
     pop                  rsi
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.93.@func.2.exit:
     mov                  r12,                  rsi
     mov                  rsi,                  r14
     add                  rsi,                   r9
     mov                   r9,                  rsi
     mov                  rsi,                   r9
     and                  rsi,                    3
     mov                   r8,                  rsi
     cmp                   r8,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.100.@func.4.IfTrue
	jmp	@main.101.@func.3.IfFalse
@main.100.@func.4.IfTrue:
     mov                  rsi,                   r9
	jmp	@main.98.@func.2.exit
	jmp	@main.102.@func.5.IfExit
@main.101.@func.3.IfFalse:
@main.102.@func.5.IfExit:
     mov                  rsi,                   r9
     sub                  rsi,                   r8
     mov                  rdi,                  rsi
    push                  r10
    push                   r8
    push                  rsi
    push                   r9
     sub                  rsp,                    8
call	func
     add                  rsp,                    8
     pop                   r9
     pop                  rsi
     pop                   r8
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                   r8
     mov                  rdi,                  rsi
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	func
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.98.@func.2.exit:
     mov                  rbx,                  r12
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.48.@func.2.exit:
     mov                  rbx,                  r13
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.23.@func.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,        qword[rbp-40]
     add                  rsi,                  r10
     mov                  r11,                  rsi
     mov                  rsi,                  r11
     and                  rsi,                    3
     mov                   r9,                  rsi
     cmp                   r9,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.30.@func.4.IfTrue
	jmp	@main.31.@func.3.IfFalse
@main.30.@func.4.IfTrue:
     mov                  rsi,                  r11
	jmp	@main.28.@func.2.exit
	jmp	@main.32.@func.5.IfExit
@main.31.@func.3.IfFalse:
@main.32.@func.5.IfExit:
     mov                  rsi,                  r11
     sub                  rsi,                   r9
     mov                  r10,                  rsi
     mov                  rsi,                  r10
     and                  rsi,                    3
     mov                  r13,                  rsi
     cmp                  r13,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.55.@func.4.IfTrue
	jmp	@main.56.@func.3.IfFalse
@main.55.@func.4.IfTrue:
     mov                  rsi,                  r10
	jmp	@main.53.@func.2.exit
	jmp	@main.57.@func.5.IfExit
@main.56.@func.3.IfFalse:
@main.57.@func.5.IfExit:
     mov                  rsi,                  r10
     sub                  rsi,                  r13
     mov                   r8,                  rsi
     mov                  rsi,                   r8
     and                  rsi,                    3
     mov                  r12,                  rsi
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.105.@func.4.IfTrue
	jmp	@main.106.@func.3.IfFalse
@main.105.@func.4.IfTrue:
     mov                  rsi,                   r8
	jmp	@main.103.@func.2.exit
	jmp	@main.107.@func.5.IfExit
@main.106.@func.3.IfFalse:
@main.107.@func.5.IfExit:
     mov                  rsi,                   r8
     sub                  rsi,                  r12
     mov                  rdi,                  rsi
    push                  r10
    push                  rsi
    push                   r9
    push                  r11
    push                   r8
call	func
     pop                   r8
     pop                  r11
     pop                   r9
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rsi,                   r8
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    push                  r10
    push                  rsi
    push                   r9
    push                  r11
     sub                  rsp,                    8
call	func
     add                  rsp,                    8
     pop                  r11
     pop                   r9
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.103.@func.2.exit:
     mov                  r12,                  rsi
     mov                  rsi,                  r10
     add                  rsi,                  r13
     mov                  r13,                  rsi
     mov                  rsi,                  r13
     and                  rsi,                    3
     mov                   r8,                  rsi
     cmp                   r8,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.110.@func.4.IfTrue
	jmp	@main.111.@func.3.IfFalse
@main.110.@func.4.IfTrue:
     mov                  rsi,                  r13
	jmp	@main.108.@func.2.exit
	jmp	@main.112.@func.5.IfExit
@main.111.@func.3.IfFalse:
@main.112.@func.5.IfExit:
     mov                  rsi,                  r13
     sub                  rsi,                   r8
     mov                  rdi,                  rsi
    push                  rsi
    push                   r8
    push                   r9
    push                  r11
     sub                  rsp,                    8
call	func
     add                  rsp,                    8
     pop                  r11
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rsi,                  r13
     add                  rsi,                   r8
     mov                  rdi,                  rsi
    push                   r9
    push                  r11
    push                  rsi
call	func
     pop                  rsi
     pop                  r11
     pop                   r9
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.108.@func.2.exit:
     mov                  rbx,                  r12
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.53.@func.2.exit:
     mov                  r13,                  rsi
     mov                  rsi,                  r11
     add                  rsi,                   r9
     mov                  r10,                  rsi
     mov                  rsi,                  r10
     and                  rsi,                    3
     mov                   r9,                  rsi
     cmp                   r9,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.60.@func.4.IfTrue
	jmp	@main.61.@func.3.IfFalse
@main.60.@func.4.IfTrue:
     mov                  rsi,                  r10
	jmp	@main.58.@func.2.exit
	jmp	@main.62.@func.5.IfExit
@main.61.@func.3.IfFalse:
@main.62.@func.5.IfExit:
     mov                  rsi,                  r10
     sub                  rsi,                   r9
     mov                   r8,                  rsi
     mov                  rsi,                   r8
     and                  rsi,                    3
     mov                  r12,                  rsi
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.115.@func.4.IfTrue
	jmp	@main.116.@func.3.IfFalse
@main.115.@func.4.IfTrue:
     mov                  rsi,                   r8
	jmp	@main.113.@func.2.exit
	jmp	@main.117.@func.5.IfExit
@main.116.@func.3.IfFalse:
@main.117.@func.5.IfExit:
     mov                  rsi,                   r8
     sub                  rsi,                  r12
     mov                  rdi,                  rsi
    push                   r9
    push                  r10
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	func
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rsi,                   r8
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    push                   r9
    push                  r10
    push                  rsi
call	func
     pop                  rsi
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.113.@func.2.exit:
     mov                  r12,                  rsi
     mov                  rsi,                  r10
     add                  rsi,                   r9
     mov                   r9,                  rsi
     mov                  rsi,                   r9
     and                  rsi,                    3
     mov                   r8,                  rsi
     cmp                   r8,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.120.@func.4.IfTrue
	jmp	@main.121.@func.3.IfFalse
@main.120.@func.4.IfTrue:
     mov                  rsi,                   r9
	jmp	@main.118.@func.2.exit
	jmp	@main.122.@func.5.IfExit
@main.121.@func.3.IfFalse:
@main.122.@func.5.IfExit:
     mov                  rsi,                   r9
     sub                  rsi,                   r8
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  rsi
call	func
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                   r8
     mov                  rdi,                  rsi
    push                  rsi
call	func
     pop                  rsi
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.118.@func.2.exit:
     mov                  rbx,                  r12
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.58.@func.2.exit:
     mov                  rbx,                  r13
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.28.@func.2.exit:
     mov                  rbx,                  r14
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.13.@func.2.exit:
     mov                  r10,                  rsi
     mov                  rsi,        qword[rbp-32]
     add                  rsi,                  r15
     mov        qword[rbp-48],                  rsi
     mov                  rsi,        qword[rbp-48]
     and                  rsi,                    3
     mov                  r15,                  rsi
     cmp                  r15,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.20.@func.4.IfTrue
	jmp	@main.21.@func.3.IfFalse
@main.20.@func.4.IfTrue:
     mov                  rsi,        qword[rbp-48]
	jmp	@main.18.@func.2.exit
	jmp	@main.22.@func.5.IfExit
@main.21.@func.3.IfFalse:
@main.22.@func.5.IfExit:
     mov                  rsi,        qword[rbp-48]
     sub                  rsi,                  r15
     mov                  r11,                  rsi
     mov                  rsi,                  r11
     and                  rsi,                    3
     mov                  r14,                  rsi
     cmp                  r14,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.35.@func.4.IfTrue
	jmp	@main.36.@func.3.IfFalse
@main.35.@func.4.IfTrue:
     mov                  rsi,                  r11
	jmp	@main.33.@func.2.exit
	jmp	@main.37.@func.5.IfExit
@main.36.@func.3.IfFalse:
@main.37.@func.5.IfExit:
     mov                  rsi,                  r11
     sub                  rsi,                  r14
     mov                   r9,                  rsi
     mov                  rsi,                   r9
     and                  rsi,                    3
     mov                  r13,                  rsi
     cmp                  r13,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.65.@func.4.IfTrue
	jmp	@main.66.@func.3.IfFalse
@main.65.@func.4.IfTrue:
     mov                  rsi,                   r9
	jmp	@main.63.@func.2.exit
	jmp	@main.67.@func.5.IfExit
@main.66.@func.3.IfFalse:
@main.67.@func.5.IfExit:
     mov                  rsi,                   r9
     sub                  rsi,                  r13
     mov                   r8,                  rsi
     mov                  rsi,                   r8
     and                  rsi,                    3
     mov                  r12,                  rsi
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.125.@func.4.IfTrue
	jmp	@main.126.@func.3.IfFalse
@main.125.@func.4.IfTrue:
     mov                  rsi,                   r8
	jmp	@main.123.@func.2.exit
	jmp	@main.127.@func.5.IfExit
@main.126.@func.3.IfFalse:
@main.127.@func.5.IfExit:
     mov                  rsi,                   r8
     sub                  rsi,                  r12
     mov                  rdi,                  rsi
    push                  rsi
    push                   r8
    push                   r9
    push                  r10
    push                  r11
call	func
     pop                  r11
     pop                  r10
     pop                   r9
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rsi,                   r8
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    push                   r9
    push                  r10
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	func
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.123.@func.2.exit:
     mov                  r12,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r13
     mov                  r13,                  rsi
     mov                  rsi,                  r13
     and                  rsi,                    3
     mov                   r8,                  rsi
     cmp                   r8,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.130.@func.4.IfTrue
	jmp	@main.131.@func.3.IfFalse
@main.130.@func.4.IfTrue:
     mov                  rsi,                  r13
	jmp	@main.128.@func.2.exit
	jmp	@main.132.@func.5.IfExit
@main.131.@func.3.IfFalse:
@main.132.@func.5.IfExit:
     mov                  rsi,                  r13
     sub                  rsi,                   r8
     mov                  rdi,                  rsi
    push                  rsi
    push                  r10
    push                   r8
    push                  r11
     sub                  rsp,                    8
call	func
     add                  rsp,                    8
     pop                  r11
     pop                   r8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rsi,                  r13
     add                  rsi,                   r8
     mov                  rdi,                  rsi
    push                  rsi
    push                  r10
    push                  r11
call	func
     pop                  r11
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.128.@func.2.exit:
     mov                  rbx,                  r12
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.63.@func.2.exit:
     mov                   r9,                  rsi
     mov                  rsi,                  r11
     add                  rsi,                  r14
     mov                  r14,                  rsi
     mov                  rsi,                  r14
     and                  rsi,                    3
     mov                  r13,                  rsi
     cmp                  r13,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.70.@func.4.IfTrue
	jmp	@main.71.@func.3.IfFalse
@main.70.@func.4.IfTrue:
     mov                  rsi,                  r14
	jmp	@main.68.@func.2.exit
	jmp	@main.72.@func.5.IfExit
@main.71.@func.3.IfFalse:
@main.72.@func.5.IfExit:
     mov                  rsi,                  r14
     sub                  rsi,                  r13
     mov                   r8,                  rsi
     mov                  rsi,                   r8
     and                  rsi,                    3
     mov                  r12,                  rsi
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.135.@func.4.IfTrue
	jmp	@main.136.@func.3.IfFalse
@main.135.@func.4.IfTrue:
     mov                  rsi,                   r8
	jmp	@main.133.@func.2.exit
	jmp	@main.137.@func.5.IfExit
@main.136.@func.3.IfFalse:
@main.137.@func.5.IfExit:
     mov                  rsi,                   r8
     sub                  rsi,                  r12
     mov                  rdi,                  rsi
    push                  rsi
    push                   r8
    push                  r10
    push                   r9
     sub                  rsp,                    8
call	func
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rsi,                   r8
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    push                  rsi
    push                  r10
    push                   r9
call	func
     pop                   r9
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.133.@func.2.exit:
     mov                   r8,                  rsi
     mov                  rsi,                  r14
     add                  rsi,                  r13
     mov                  r13,                  rsi
     mov                  rsi,                  r13
     and                  rsi,                    3
     mov                  r12,                  rsi
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.140.@func.4.IfTrue
	jmp	@main.141.@func.3.IfFalse
@main.140.@func.4.IfTrue:
     mov                  rsi,                  r13
	jmp	@main.138.@func.2.exit
	jmp	@main.142.@func.5.IfExit
@main.141.@func.3.IfFalse:
@main.142.@func.5.IfExit:
     mov                  rsi,                  r13
     sub                  rsi,                  r12
     mov                  rdi,                  rsi
    push                   r8
    push                  rsi
    push                  r10
    push                   r9
     sub                  rsp,                    8
call	func
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rsi,                  r13
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    push                   r8
    push                  rsi
    push                  r10
    push                   r9
     sub                  rsp,                    8
call	func
     add                  rsp,                    8
     pop                   r9
     pop                  r10
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.138.@func.2.exit:
     mov                  rbx,                   r8
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.68.@func.2.exit:
     mov                  rbx,                   r9
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.33.@func.2.exit:
     mov                  r14,                  rsi
     mov                  rsi,        qword[rbp-48]
     add                  rsi,                  r15
     mov                  r11,                  rsi
     mov                  rsi,                  r11
     and                  rsi,                    3
     mov                  r15,                  rsi
     cmp                  r15,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.40.@func.4.IfTrue
	jmp	@main.41.@func.3.IfFalse
@main.40.@func.4.IfTrue:
     mov                  rsi,                  r11
	jmp	@main.38.@func.2.exit
	jmp	@main.42.@func.5.IfExit
@main.41.@func.3.IfFalse:
@main.42.@func.5.IfExit:
     mov                  rsi,                  r11
     sub                  rsi,                  r15
     mov                   r9,                  rsi
     mov                  rsi,                   r9
     and                  rsi,                    3
     mov                  r13,                  rsi
     cmp                  r13,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.75.@func.4.IfTrue
	jmp	@main.76.@func.3.IfFalse
@main.75.@func.4.IfTrue:
     mov                  rsi,                   r9
	jmp	@main.73.@func.2.exit
	jmp	@main.77.@func.5.IfExit
@main.76.@func.3.IfFalse:
@main.77.@func.5.IfExit:
     mov                  rsi,                   r9
     sub                  rsi,                  r13
     mov                   r8,                  rsi
     mov                  rsi,                   r8
     and                  rsi,                    3
     mov                  r12,                  rsi
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.145.@func.4.IfTrue
	jmp	@main.146.@func.3.IfFalse
@main.145.@func.4.IfTrue:
     mov                  rsi,                   r8
	jmp	@main.143.@func.2.exit
	jmp	@main.147.@func.5.IfExit
@main.146.@func.3.IfFalse:
@main.147.@func.5.IfExit:
     mov                  rsi,                   r8
     sub                  rsi,                  r12
     mov                  rdi,                  rsi
    push                   r9
    push                   r8
    push                  r10
    push                  rsi
    push                  r11
call	func
     pop                  r11
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rsi,                   r8
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    push                  rsi
    push                   r9
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	func
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.143.@func.2.exit:
     mov                   r8,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                  r13
     mov                  r13,                  rsi
     mov                  rsi,                  r13
     and                  rsi,                    3
     mov                  r12,                  rsi
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.150.@func.4.IfTrue
	jmp	@main.151.@func.3.IfFalse
@main.150.@func.4.IfTrue:
     mov                  rsi,                  r13
	jmp	@main.148.@func.2.exit
	jmp	@main.152.@func.5.IfExit
@main.151.@func.3.IfFalse:
@main.152.@func.5.IfExit:
     mov                  rsi,                  r13
     sub                  rsi,                  r12
     mov                  rdi,                  rsi
    push                   r8
    push                  r10
    push                  rsi
    push                  r11
     sub                  rsp,                    8
call	func
     add                  rsp,                    8
     pop                  r11
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rsi,                  r13
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    push                  rsi
    push                   r8
    push                  r10
    push                  r11
     sub                  rsp,                    8
call	func
     add                  rsp,                    8
     pop                  r11
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.148.@func.2.exit:
     mov                  rbx,                   r8
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.73.@func.2.exit:
     mov                   r9,                  rsi
     mov                  rsi,                  r11
     add                  rsi,                  r15
     mov                  r15,                  rsi
     mov                  rsi,                  r15
     and                  rsi,                    3
     mov                  r13,                  rsi
     cmp                  r13,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.80.@func.4.IfTrue
	jmp	@main.81.@func.3.IfFalse
@main.80.@func.4.IfTrue:
     mov                  rsi,                  r15
	jmp	@main.78.@func.2.exit
	jmp	@main.82.@func.5.IfExit
@main.81.@func.3.IfFalse:
@main.82.@func.5.IfExit:
     mov                  rsi,                  r15
     sub                  rsi,                  r13
     mov                   r8,                  rsi
     mov                  rsi,                   r8
     and                  rsi,                    3
     mov                  r12,                  rsi
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.155.@func.4.IfTrue
	jmp	@main.156.@func.3.IfFalse
@main.155.@func.4.IfTrue:
     mov                  rsi,                   r8
	jmp	@main.153.@func.2.exit
	jmp	@main.157.@func.5.IfExit
@main.156.@func.3.IfFalse:
@main.157.@func.5.IfExit:
     mov                  rsi,                   r8
     sub                  rsi,                  r12
     mov                  rdi,                  rsi
    push                  rsi
    push                   r9
    push                  r10
    push                   r8
     sub                  rsp,                    8
call	func
     add                  rsp,                    8
     pop                   r8
     pop                  r10
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rsi,                   r8
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    push                   r9
    push                  r10
    push                  rsi
call	func
     pop                  rsi
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.153.@func.2.exit:
     mov                   r8,                  rsi
     mov                  rsi,                  r15
     add                  rsi,                  r13
     mov                  r13,                  rsi
     mov                  rsi,                  r13
     and                  rsi,                    3
     mov                  r12,                  rsi
     cmp                  r12,                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.160.@func.4.IfTrue
	jmp	@main.161.@func.3.IfFalse
@main.160.@func.4.IfTrue:
     mov                  rsi,                  r13
	jmp	@main.158.@func.2.exit
	jmp	@main.162.@func.5.IfExit
@main.161.@func.3.IfFalse:
@main.162.@func.5.IfExit:
     mov                  rsi,                  r13
     sub                  rsi,                  r12
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	func
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rsi,                  r13
     add                  rsi,                  r12
     mov                  rdi,                  rsi
    push                   r8
    push                   r9
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	func
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.158.@func.2.exit:
     mov                  rbx,                   r8
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.78.@func.2.exit:
     mov                  rbx,                   r9
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.38.@func.2.exit:
     mov                  rbx,                  r14
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.18.@func.2.exit:
     mov                  rbx,                  r10
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
@main.8.@func.2.exit:
     mov                  rbx,        qword[rbp-16]
     add                  rbx,                  rsi
     mov                  rsi,                  rbx
     and                  rsi,                65535
     mov        qword[rbp-16],                  rsi
     mov                  rsi,        qword[rbp-24]
     add        qword[rbp-24],                    1
@main.5.ForCon:
     mov                  rcx,        qword[rbp-24]
     cmp                  rcx,         qword[rbp-8]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.4.ForBody
     mov                  rdi,        qword[rbp-16]
    push                  rsi
call	toString
     pop                  rsi
     mov                  rsi,                  rax
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
     add                  rsp,                   48
     pop                  rbp
     ret


 section                 .bss
@@func:
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



