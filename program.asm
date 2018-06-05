  global                 main
  extern	malloc


 section                .text
add:
    push                  rbp
     mov                  rbp,                  rsp
@add.1.enter:
     mov                   r8,                  rdi
     mov                  r10,                  rsi
     mov                  rsi,                   r8
     and                  rsi,                65535
     mov                  rdi,                  r10
     and                  rdi,                65535
     add                  rsi,                  rdi
     mov                   r9,                  rsi
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                   r8,                  rsi
     and                   r8,                65535
     mov                  rsi,                  r10
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     add                  rsi,                  rdi
     mov                  rdi,                   r9
     shr                  rdi,                   16
     add                  rsi,                  rdi
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rdi,                   r9
     and                  rdi,                65535
      or                  rsi,                  rdi
     mov                  rax,                  rsi
     pop                  rbp
     ret
nextText:
    push                  rbp
     mov                  rbp,                  rsp
@nextText.1.enter:
     mov                   r9,                  rdi
     sub                  rsi,                    1
     mov                  r10,                  rsi
	jmp	@nextText.6.ForCon
@nextText.5.ForBody:
     mov                   r8,                   r9
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rdi,                   r9
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     cmp                  rdi,                  122
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@nextText.14.@nextLetter.4.IfTrue
	jmp	@nextText.15.@nextLetter.3.IfFalse
@nextText.14.@nextLetter.4.IfTrue:
     mov                  rsi,                   -1
	jmp	@nextText.12.@nextLetter.2.exit
	jmp	@nextText.16.@nextLetter.5.IfExit
@nextText.15.@nextLetter.3.IfFalse:
@nextText.16.@nextLetter.5.IfExit:
     cmp                  rdi,                   90
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@nextText.17.@nextLetter.7.IfTrue
	jmp	@nextText.18.@nextLetter.6.IfFalse
@nextText.17.@nextLetter.7.IfTrue:
     mov                  rsi,                   97
	jmp	@nextText.12.@nextLetter.2.exit
	jmp	@nextText.19.@nextLetter.8.IfExit
@nextText.18.@nextLetter.6.IfFalse:
@nextText.19.@nextLetter.8.IfExit:
     cmp                  rdi,                   57
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@nextText.20.@nextLetter.10.IfTrue
	jmp	@nextText.21.@nextLetter.9.IfFalse
@nextText.20.@nextLetter.10.IfTrue:
     mov                  rsi,                   65
	jmp	@nextText.12.@nextLetter.2.exit
	jmp	@nextText.22.@nextLetter.11.IfExit
@nextText.21.@nextLetter.9.IfFalse:
@nextText.22.@nextLetter.11.IfExit:
     mov                  rsi,                  rdi
     add                  rsi,                    1
@nextText.12.@nextLetter.2.exit:
     mov            qword[r8],                  rsi
     mov                  rdi,                   r9
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rdi,                  rsi
     cmp           qword[rdi],                   -1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@nextText.9.IfTrue
	jmp	@nextText.8.IfFalse
@nextText.9.IfTrue:
     mov                  rdi,                   r9
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov           qword[rdi],                   48
	jmp	@nextText.10.IfExit
@nextText.8.IfFalse:
     mov                  rax,                    1
	jmp	@nextText.2.exit
@nextText.10.IfExit:
     sub                  r10,                    1
@nextText.6.ForCon:
     cmp                  r10,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
	je	@nextText.5.ForBody
     mov                  rax,                    0
@nextText.2.exit:
     pop                  rbp
     ret
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   48
    push                  r10
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  150
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r10
     mov                  rsi,                  rax
     mov  qword[@@nextLetter],                  rsi
     mov  qword[@@nextLetter],          -1887415157
     mov qword[@@nextLetter+8],          -1887415157
     mov qword[@@nextLetter+16],          -1887415157
     mov qword[@@nextLetter+24],          -1887415157
     mov qword[@@nextLetter+32],          -1887415157
     mov qword[@@nextLetter+40],          -1887415157
     mov qword[@@nextLetter+48],          -1887415157
     mov qword[@@nextLetter+56],          -1887415157
     mov qword[@@nextLetter+64],          -1887415157
     mov qword[@@nextLetter+72],          -1887415157
     mov qword[@@nextLetter+80],          -1887415157
     mov qword[@@nextLetter+88],          -1887415157
     mov qword[@@nextLetter+96],          -1887415157
     mov qword[@@nextLetter+104],          -1887415157
     mov qword[@@nextLetter+112],          -1887415157
     mov qword[@@nextLetter+120],          -1887415157
     mov qword[@@nextLetter+128],          -1887415157
     mov qword[@@nextLetter+136],          -1887415157
     mov qword[@@nextLetter+144],          -1887415157
     mov qword[@@nextLetter+152],          -1887415157
     mov qword[@@nextLetter+160],          -1887415157
     mov qword[@@nextLetter+168],          -1887415157
     mov qword[@@nextLetter+176],          -1887415157
     mov qword[@@nextLetter+184],          -1887415157
     mov qword[@@nextLetter+192],          -1887415157
     mov qword[@@nextLetter+200],          -1887415157
     mov qword[@@nextLetter+208],          -1887415157
     mov qword[@@nextLetter+216],          -1887415157
     mov qword[@@nextLetter+224],          -1887415157
     mov qword[@@nextLetter+232],          -1887415157
     mov qword[@@nextLetter+240],          -1887415157
     mov qword[@@nextLetter+248],          -1887415157
     mov qword[@@nextLetter+256],          -1887415157
     mov qword[@@nextLetter+264],          -1887415157
     mov qword[@@nextLetter+272],          -1887415157
     mov qword[@@nextLetter+280],          -1887415157
     mov qword[@@nextLetter+288],          -1887415157
     mov qword[@@nextLetter+296],          -1887415157
     mov qword[@@nextLetter+304],          -1887415157
     mov qword[@@nextLetter+312],          -1887415157
     mov qword[@@nextLetter+320],          -1887415157
     mov qword[@@nextLetter+328],          -1887415157
     mov qword[@@nextLetter+336],          -1887415157
     mov qword[@@nextLetter+344],          -1887415157
     mov qword[@@nextLetter+352],          -1887415157
     mov qword[@@nextLetter+360],          -1887415157
     mov qword[@@nextLetter+368],          -1887415157
     mov qword[@@nextLetter+376],          -1887415157
     mov qword[@@nextLetter+384],          -1887415157
     mov qword[@@nextLetter+392],          -1887415157
     mov qword[@@nextLetter+400],          -1887415157
     mov qword[@@nextLetter+408],          -1887415157
     mov qword[@@nextLetter+416],          -1887415157
     mov qword[@@nextLetter+424],          -1887415157
     mov qword[@@nextLetter+432],          -1887415157
     mov qword[@@nextLetter+440],          -1887415157
     mov qword[@@nextLetter+448],          -1887415157
     mov qword[@@nextLetter+456],          -1887415157
     mov qword[@@nextLetter+464],          -1887415157
     mov qword[@@nextLetter+472],          -1887415157
     mov qword[@@nextLetter+480],          -1887415157
     mov qword[@@nextLetter+488],          -1887415157
     mov qword[@@nextLetter+496],          -1887415157
     mov qword[@@nextLetter+504],          -1887415157
     mov qword[@@nextLetter+512],          -1887415157
     mov qword[@@nextLetter+520],          -1887415157
     mov qword[@@nextLetter+528],          -1887415157
     mov qword[@@nextLetter+536],          -1887415157
     mov qword[@@nextLetter+544],          -1887415157
     mov qword[@@nextLetter+552],          -1887415157
     mov qword[@@nextLetter+560],          -1887415157
     mov qword[@@nextLetter+568],          -1887415157
     mov qword[@@nextLetter+576],          -1887415157
     mov qword[@@nextLetter+584],          -1887415157
     mov qword[@@nextLetter+592],          -1887415157
     mov qword[@@nextLetter+600],          -1887415157
     mov qword[@@nextLetter+608],          -1887415157
     mov qword[@@nextLetter+616],          -1887415157
     mov qword[@@nextLetter+624],          -1887415157
     mov qword[@@nextLetter+632],          -1887415157
     mov qword[@@nextLetter+640],          -1887415157
     mov qword[@@nextLetter+648],          -1887415157
     mov qword[@@nextLetter+656],          -1887415157
     mov qword[@@nextLetter+664],          -1887415157
     mov qword[@@nextLetter+672],          -1887415157
     mov qword[@@nextLetter+680],          -1887415157
     mov qword[@@nextLetter+688],          -1887415157
     mov qword[@@nextLetter+696],          -1887415157
     mov qword[@@nextLetter+704],          -1887415157
     mov qword[@@nextLetter+712],          -1887415157
     mov qword[@@nextLetter+720],          -1887415157
     mov qword[@@nextLetter+728],          -1887415157
     mov qword[@@nextLetter+736],          -1887415157
     mov qword[@@nextLetter+744],          -1887415157
     mov qword[@@nextLetter+752],          -1887415157
     mov qword[@@nextLetter+760],          -1887415157
     mov qword[@@nextLetter+768],          -1887415157
     mov qword[@@nextLetter+776],          -1887415157
     mov qword[@@nextLetter+784],          -1887415157
     mov qword[@@nextLetter+792],          -1887415157
     mov qword[@@nextLetter+800],          -1887415157
     mov qword[@@nextLetter+808],          -1887415157
     mov qword[@@nextLetter+816],          -1887415157
     mov qword[@@nextLetter+824],          -1887415157
     mov qword[@@nextLetter+832],          -1887415157
     mov qword[@@nextLetter+840],          -1887415157
     mov qword[@@nextLetter+848],          -1887415157
     mov qword[@@nextLetter+856],          -1887415157
     mov qword[@@nextLetter+864],          -1887415157
     mov qword[@@nextLetter+872],          -1887415157
     mov qword[@@nextLetter+880],          -1887415157
     mov qword[@@nextLetter+888],          -1887415157
     mov qword[@@nextLetter+896],          -1887415157
     mov qword[@@nextLetter+904],          -1887415157
     mov qword[@@nextLetter+912],          -1887415157
     mov qword[@@nextLetter+920],          -1887415157
     mov qword[@@nextLetter+928],          -1887415157
     mov qword[@@nextLetter+936],          -1887415157
     mov qword[@@nextLetter+944],          -1887415157
     mov qword[@@nextLetter+952],          -1887415157
     mov qword[@@nextLetter+960],          -1887415157
     mov qword[@@nextLetter+968],          -1887415157
     mov qword[@@nextLetter+976],          -1887415157
     mov qword[@@nextLetter+984],          -1887415157
     mov qword[@@nextLetter+992],          -1887415157
     mov qword[@@nextLetter+1000],          -1887415157
     mov qword[@@nextLetter+1008],          -1887415157
     mov qword[@@nextLetter+1016],          -1887415157
     mov qword[@@nextLetter+1024],          -1887415157
     mov qword[@@nextLetter+1032],          -1887415157
     mov qword[@@nextLetter+1040],          -1887415157
     mov qword[@@nextLetter+1048],          -1887415157
     mov qword[@@nextLetter+1056],          -1887415157
     mov qword[@@nextLetter+1064],          -1887415157
     mov qword[@@nextLetter+1072],          -1887415157
     mov qword[@@nextLetter+1080],          -1887415157
     mov qword[@@nextLetter+1088],          -1887415157
     mov qword[@@nextLetter+1096],          -1887415157
     mov qword[@@nextLetter+1104],          -1887415157
     mov qword[@@nextLetter+1112],          -1887415157
     mov qword[@@nextLetter+1120],          -1887415157
     mov qword[@@nextLetter+1128],          -1887415157
     mov qword[@@nextLetter+1136],          -1887415157
     mov qword[@@nextLetter+1144],          -1887415157
     mov qword[@@nextLetter+1152],          -1887415157
     mov qword[@@nextLetter+1160],          -1887415157
     mov qword[@@nextLetter+1168],          -1887415157
     mov qword[@@nextLetter+1176],          -1887415157
     mov qword[@@nextLetter+1184],          -1887415157
     mov qword[@@nextLetter+1192],          -1887415157
     mov   qword[@asciiTable],         __const_str4
     mov     qword[@MAXCHUNK],                  100
     mov                  rsi,     qword[@MAXCHUNK]
     sub                  rsi,                    1
    imul                  rsi,                   64
     sub                  rsi,                   16
     mov    qword[@MAXLENGTH],                  rsi
     mov                   r8,     qword[@MAXCHUNK]
     mov                  rsi,     qword[@MAXCHUNK]
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
     mov                  r10,                  rax
     mov           qword[r10],                  rsi
     add                  r10,                    8
     sub                   r8,                    8
     mov                   r9,                  r10
     mov                  rdi,                  r10
     add                  rdi,                   r8
@main.18.Allocate2:
     mov                   r8,                   80
     mov                  rsi,                   80
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
     mov                   r8,                  rax
     mov            qword[r8],                  rsi
     add                   r8,                    8
     mov            qword[r9],                   r8
     add                   r9,                    8
     cmp                   r9,                  rdi
	jl	@main.18.Allocate2
     mov       qword[@chunks],                  r10
     mov                  rdi,    qword[@MAXLENGTH]
     mov                  rsi,    qword[@MAXLENGTH]
     add                  rdi,                    1
     shl                  rdi,                    3
    push                  r10
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r10
     mov                  rdi,                  rax
     mov           qword[rdi],                  rsi
     add                  rdi,                    8
     mov  qword[@inputBuffer],                  rdi
     mov                  rdi,                    5
     mov                  rsi,                    5
     add                  rdi,                    1
     shl                  rdi,                    3
    push                  r10
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     sub                  rsp,                    8
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r10
     mov                  rdi,                  rax
     mov           qword[rdi],                  rsi
     add                  rdi,                    8
     mov qword[@outputBuffer],                  rdi
     add                  rsp,                   48
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                  248
    push                  rbx
    push                  r12
    push                  r14
    push                  r13
    push                  r15
@main.1.enter:
	jmp	@main.6.ForCon
@main.5.ForBody:
    push                  rsi
     sub                  rsp,                    8
call	getInt
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov         qword[rbp-8],                  rsi
     cmp         qword[rbp-8],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.9.IfTrue
	jmp	@main.8.IfFalse
@main.9.IfTrue:
	jmp	@main.7.ForExit
	jmp	@main.10.IfExit
@main.8.IfFalse:
@main.10.IfExit:
     cmp         qword[rbp-8],                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.12.IfTrue
	jmp	@main.11.IfFalse
@main.12.IfTrue:
    push                  rsi
     sub                  rsp,                    8
call	getString
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  r10,                    0
	jmp	@main.22.@computeSHA1.6.ForCon
@main.23.@computeSHA1.5.ForBody:
     mov                  r12,  qword[@inputBuffer]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                  r10
    push                  r10
    push                  rsi
call	__ord__
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov           qword[r12],                  rsi
     add                  r10,                    1
@main.22.@computeSHA1.6.ForCon:
     mov                  rdi,                  rbx
    push                  r10
    push                  rsi
call	__length__
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     cmp                  r10,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.23.@computeSHA1.5.ForBody
     mov                  rdi,                  rbx
    push                  rsi
     sub                  rsp,                    8
call	__length__
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,  qword[@inputBuffer]
     mov                   r9,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                   64
     sub                  rsi,                   56
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     add                  rsi,                    1
     mov        qword[rbp-24],                  rsi
     mov                  rcx,        qword[rbp-24]
     cmp                  rcx,     qword[@MAXCHUNK]
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.74.@sha1.4.IfTrue
	jmp	@main.75.@sha1.3.IfFalse
@main.74.@sha1.4.IfTrue:
     mov                  rdi,         __const_str1
call	println
	jmp	@main.72.@sha1.2.exit
	jmp	@main.76.@sha1.5.IfExit
@main.75.@sha1.3.IfFalse:
@main.76.@sha1.5.IfExit:
     mov        qword[rbp-40],                    0
	jmp	@main.77.@sha1.9.ForCon
@main.78.@sha1.8.ForBody:
     mov        qword[rbp-48],                    0
	jmp	@main.79.@sha1.14.ForCon
@main.80.@sha1.13.ForBody:
     mov                  rdi,       qword[@chunks]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,        qword[rbp-48]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov           qword[rdi],                    0
     add        qword[rbp-48],                    1
@main.79.@sha1.14.ForCon:
     cmp        qword[rbp-48],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.80.@sha1.13.ForBody
     add        qword[rbp-40],                    1
@main.77.@sha1.9.ForCon:
     mov                  rcx,        qword[rbp-40]
     cmp                  rcx,        qword[rbp-24]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.78.@sha1.8.ForBody
     mov        qword[rbp-40],                    0
	jmp	@main.81.@sha1.19.ForCon
@main.82.@sha1.18.ForBody:
     mov                  rsi,        qword[rbp-40]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,       qword[@chunks]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,        qword[rbp-40]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  r13,           qword[rdi]
     shl                  rsi,                    3
     add                  r13,                  rsi
     mov                  rsi,        qword[rbp-40]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,       qword[@chunks]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,        qword[rbp-40]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                   r8,           qword[rdi]
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  r12,                  rbx
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rdi,        qword[rbp-40]
     mov                  rax,                  rdi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                    3
     sub                  rsi,                  rdi
    imul                  rsi,                    8
     mov                  rdi,           qword[r12]
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rsi,            qword[r8]
      or                  rsi,                  rdi
     mov           qword[r13],                  rsi
     add        qword[rbp-40],                    1
@main.81.@sha1.19.ForCon:
     cmp        qword[rbp-40],                   r9
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.82.@sha1.18.ForBody
     mov                  rsi,        qword[rbp-40]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-40]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  r12,           qword[rbx]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rsi,        qword[rbp-40]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-40]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,           qword[rbx]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[rbp-40]
     mov                  rax,                  rbx
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                    3
     sub                  rsi,                  rbx
    imul                  rsi,                    8
     mov                  rbx,                  128
     mov                  rcx,                  rsi
     shl                  rbx,                   cl
     mov                  rsi,           qword[rdi]
      or                  rsi,                  rbx
     mov           qword[r12],                  rsi
     mov                  rsi,        qword[rbp-24]
     sub                  rsi,                    1
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     mov       qword[rbx+120],                  rsi
     mov                  rsi,        qword[rbp-24]
     sub                  rsi,                    1
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shr                  rsi,                   29
     and                  rsi,                    7
     mov       qword[rbx+112],                  rsi
     mov        qword[rbp-64],           1732584193
     mov                  rsi,                43913
     mov                  rbx,                61389
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov        qword[rbp-72],                  rsi
     mov                  rsi,                56574
     mov                  rbx,                39098
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov        qword[rbp-80],                  rsi
     mov                  r11,            271733878
     mov                  rsi,                57840
     mov                  rbx,                50130
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  r15,                  rsi
     mov        qword[rbp-40],                    0
	jmp	@main.83.@sha1.24.ForCon
@main.84.@sha1.23.ForBody:
     mov        qword[rbp-48],                   16
	jmp	@main.85.@sha1.29.ForCon
@main.86.@sha1.28.ForBody:
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
     mov                  rsi,        qword[rbp-48]
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-48]
     sub                  rsi,                    3
     mov                  r12,           qword[rbx]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-48]
     sub                  rsi,                    8
     mov                  rdi,           qword[rbx]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,           qword[r12]
     xor                  rbx,           qword[rdi]
     mov                  rdi,       qword[@chunks]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,        qword[rbp-48]
     sub                  rsi,                   14
     mov                  rdi,           qword[rdi]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     xor                  rbx,           qword[rdi]
     mov                  rdi,       qword[@chunks]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,        qword[rbp-48]
     sub                  rsi,                   16
     mov                  rdi,           qword[rdi]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,           qword[rdi]
     mov                   r9,                  rsi
     mov                  r13,                    1
     cmp                  r13,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.87.@sha1.54.@rotate_left.4.IfTrue
	jmp	@main.88.@sha1.55.@rotate_left.3.IfFalse
@main.87.@sha1.54.@rotate_left.4.IfTrue:
     mov                  rsi,                   r9
     and                  rsi,           2147483647
     mov                  rdi,                  rsi
     shl                  rdi,                    1
     mov                  rsi,                   r9
     shr                  rsi,                   31
     mov                  rbx,                  rsi
     and                  rbx,                    1
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@main.89.@sha1.52.@rotate_left.2.exit
	jmp	@main.90.@sha1.56.@rotate_left.5.IfExit
@main.88.@sha1.55.@rotate_left.3.IfFalse:
@main.90.@sha1.56.@rotate_left.5.IfExit:
     cmp                  r13,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.91.@sha1.57.@rotate_left.7.IfTrue
	jmp	@main.92.@sha1.58.@rotate_left.6.IfFalse
@main.91.@sha1.57.@rotate_left.7.IfTrue:
     mov                  rsi,                   r9
     and                  rsi,                    1
     mov                  rdi,                  rsi
     shl                  rdi,                   31
     mov                  rsi,                   r9
     shr                  rsi,                    1
     mov                  rbx,                  rsi
     and                  rbx,           2147483647
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@main.89.@sha1.52.@rotate_left.2.exit
	jmp	@main.93.@sha1.59.@rotate_left.8.IfExit
@main.92.@sha1.58.@rotate_left.6.IfFalse:
@main.93.@sha1.59.@rotate_left.8.IfExit:
     mov                  r12,                   32
     sub                  r12,                  r13
     mov                  rsi,                    1
     mov                  rcx,                  r12
     shl                  rsi,                   cl
     mov                  rbx,                  rsi
     sub                  rbx,                    1
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rcx,                  r13
     shl                  rdi,                   cl
     mov                  rbx,                   r9
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                    1
     mov                  rcx,                  r13
     shl                  rsi,                   cl
     sub                  rsi,                    1
     and                  rbx,                  rsi
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
@main.89.@sha1.52.@rotate_left.2.exit:
     mov            qword[r8],                  rsi
     add        qword[rbp-48],                    1
@main.85.@sha1.29.ForCon:
     cmp        qword[rbp-48],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.86.@sha1.28.ForBody
     mov                  r10,        qword[rbp-64]
     mov                  rcx,        qword[rbp-72]
     mov        qword[rbp-88],                  rcx
     mov                  rcx,        qword[rbp-80]
     mov        qword[rbp-96],                  rcx
     mov       qword[rbp-104],                  r11
     mov                  r13,                  r15
     mov        qword[rbp-48],                    0
	jmp	@main.94.@sha1.34.ForCon
@main.95.@sha1.33.ForBody:
     cmp        qword[rbp-48],                   20
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.96.@sha1.37.IfTrue
	jmp	@main.97.@sha1.36.IfFalse
@main.96.@sha1.37.IfTrue:
     mov                  rdi,        qword[rbp-88]
     and                  rdi,        qword[rbp-96]
     mov                  rsi,        qword[rbp-88]
     not                  rsi
     mov                  rbx,                  rsi
     and                  rbx,       qword[rbp-104]
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                   r9,           1518500249
	jmp	@main.98.@sha1.38.IfExit
@main.97.@sha1.36.IfFalse:
     cmp        qword[rbp-48],                   40
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.99.@sha1.40.IfTrue
	jmp	@main.100.@sha1.39.IfFalse
@main.99.@sha1.40.IfTrue:
     mov                  rsi,        qword[rbp-88]
     xor                  rsi,        qword[rbp-96]
     xor                  rsi,       qword[rbp-104]
     mov                  r14,                  rsi
     mov                   r9,           1859775393
	jmp	@main.101.@sha1.41.IfExit
@main.100.@sha1.39.IfFalse:
     cmp        qword[rbp-48],                   60
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.102.@sha1.43.IfTrue
	jmp	@main.103.@sha1.42.IfFalse
@main.102.@sha1.43.IfTrue:
     mov                  rsi,        qword[rbp-88]
     and                  rsi,        qword[rbp-96]
     mov                  rbx,        qword[rbp-88]
     and                  rbx,       qword[rbp-104]
      or                  rsi,                  rbx
     mov                  rbx,        qword[rbp-96]
     and                  rbx,       qword[rbp-104]
      or                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rsi,                48348
     mov                  rbx,                36635
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                   r9,                  rsi
	jmp	@main.104.@sha1.44.IfExit
@main.103.@sha1.42.IfFalse:
     mov                  rsi,        qword[rbp-88]
     xor                  rsi,        qword[rbp-96]
     xor                  rsi,       qword[rbp-104]
     mov                  r14,                  rsi
     mov                  rsi,                49622
     mov                  rbx,                51810
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                   r9,                  rsi
@main.104.@sha1.44.IfExit:
@main.101.@sha1.41.IfExit:
@main.98.@sha1.38.IfExit:
     mov       qword[rbp-112],                  r10
     mov                   r8,                    5
     cmp                   r8,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.105.@sha1.66.@rotate_left.4.IfTrue
	jmp	@main.106.@sha1.67.@rotate_left.3.IfFalse
@main.105.@sha1.66.@rotate_left.4.IfTrue:
     mov                  rsi,       qword[rbp-112]
     and                  rsi,           2147483647
     mov                  rdi,                  rsi
     shl                  rdi,                    1
     mov                  rsi,       qword[rbp-112]
     shr                  rsi,                   31
     mov                  rbx,                  rsi
     and                  rbx,                    1
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@main.107.@sha1.64.@rotate_left.2.exit
	jmp	@main.108.@sha1.68.@rotate_left.5.IfExit
@main.106.@sha1.67.@rotate_left.3.IfFalse:
@main.108.@sha1.68.@rotate_left.5.IfExit:
     cmp                   r8,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.109.@sha1.69.@rotate_left.7.IfTrue
	jmp	@main.110.@sha1.70.@rotate_left.6.IfFalse
@main.109.@sha1.69.@rotate_left.7.IfTrue:
     mov                  rsi,       qword[rbp-112]
     and                  rsi,                    1
     mov                  rdi,                  rsi
     shl                  rdi,                   31
     mov                  rsi,       qword[rbp-112]
     shr                  rsi,                    1
     mov                  rbx,                  rsi
     and                  rbx,           2147483647
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@main.107.@sha1.64.@rotate_left.2.exit
	jmp	@main.111.@sha1.71.@rotate_left.8.IfExit
@main.110.@sha1.70.@rotate_left.6.IfFalse:
@main.111.@sha1.71.@rotate_left.8.IfExit:
     mov                  r12,                   32
     sub                  r12,                   r8
     mov                  rsi,                    1
     mov                  rcx,                  r12
     shl                  rsi,                   cl
     mov                  rbx,                  rsi
     sub                  rbx,                    1
     mov                  rsi,       qword[rbp-112]
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rcx,                   r8
     shl                  rdi,                   cl
     mov                  rbx,       qword[rbp-112]
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                    1
     mov                  rcx,                   r8
     shl                  rsi,                   cl
     sub                  rsi,                    1
     and                  rbx,                  rsi
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
@main.107.@sha1.64.@rotate_left.2.exit:
     mov                  rdi,                  rsi
     mov                   r8,                  r13
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  r13,                  rsi
     mov                  rdi,                  r14
     mov                   r8,                   r9
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  rdi,                  r13
     mov                   r8,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,       qword[@chunks]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  r12,           qword[rdi]
     mov                  rsi,        qword[rbp-48]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rdi,                  rbx
     mov                   r8,           qword[r12]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-104]
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-104],                  rcx
     mov                  r14,        qword[rbp-88]
     mov                   r9,                   30
     cmp                   r9,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.112.@sha1.82.@rotate_left.4.IfTrue
	jmp	@main.113.@sha1.83.@rotate_left.3.IfFalse
@main.112.@sha1.82.@rotate_left.4.IfTrue:
     mov                  rsi,                  r14
     and                  rsi,           2147483647
     mov                  r12,                  rsi
     shl                  r12,                    1
     mov                  rsi,                  r14
     shr                  rsi,                   31
     mov                  rdi,                  rsi
     and                  rdi,                    1
     mov                  rsi,                  r12
      or                  rsi,                  rdi
	jmp	@main.114.@sha1.80.@rotate_left.2.exit
	jmp	@main.115.@sha1.84.@rotate_left.5.IfExit
@main.113.@sha1.83.@rotate_left.3.IfFalse:
@main.115.@sha1.84.@rotate_left.5.IfExit:
     cmp                   r9,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.116.@sha1.85.@rotate_left.7.IfTrue
	jmp	@main.117.@sha1.86.@rotate_left.6.IfFalse
@main.116.@sha1.85.@rotate_left.7.IfTrue:
     mov                  rsi,                  r14
     and                  rsi,                    1
     mov                  r12,                  rsi
     shl                  r12,                   31
     mov                  rsi,                  r14
     shr                  rsi,                    1
     mov                  rdi,                  rsi
     and                  rdi,           2147483647
     mov                  rsi,                  r12
      or                  rsi,                  rdi
	jmp	@main.114.@sha1.80.@rotate_left.2.exit
	jmp	@main.118.@sha1.87.@rotate_left.8.IfExit
@main.117.@sha1.86.@rotate_left.6.IfFalse:
@main.118.@sha1.87.@rotate_left.8.IfExit:
     mov                   r8,                   32
     sub                   r8,                   r9
     mov                  rsi,                    1
     mov                  rcx,                   r8
     shl                  rsi,                   cl
     mov                  rdi,                  rsi
     sub                  rdi,                    1
     mov                  rsi,                  r14
     and                  rsi,                  rdi
     mov                  r12,                  rsi
     mov                  rcx,                   r9
     shl                  r12,                   cl
     mov                  rdi,                  r14
     mov                  rcx,                   r8
     shr                  rdi,                   cl
     mov                  rsi,                    1
     mov                  rcx,                   r9
     shl                  rsi,                   cl
     sub                  rsi,                    1
     and                  rdi,                  rsi
     mov                  rsi,                  r12
      or                  rsi,                  rdi
@main.114.@sha1.80.@rotate_left.2.exit:
     mov        qword[rbp-96],                  rsi
     mov        qword[rbp-88],                  r10
     mov                  r10,                  rbx
     add        qword[rbp-48],                    1
@main.94.@sha1.34.ForCon:
     cmp        qword[rbp-48],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.95.@sha1.33.ForBody
     mov                  rdi,        qword[rbp-64]
     mov                   r8,                  r10
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov        qword[rbp-64],                  rsi
     mov                  rdi,        qword[rbp-72]
     mov                   r8,        qword[rbp-88]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov        qword[rbp-72],                  rsi
     mov                  rdi,        qword[rbp-80]
     mov                   r8,        qword[rbp-96]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov        qword[rbp-80],                  rsi
     mov                  rdi,                  r11
     mov                   r8,       qword[rbp-104]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  r11,                  rsi
     mov                  rdi,                  r15
     mov                   r8,                  r13
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  r15,                  rsi
     add        qword[rbp-40],                    1
@main.83.@sha1.24.ForCon:
     mov                  rcx,        qword[rbp-40]
     cmp                  rcx,        qword[rbp-24]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.84.@sha1.23.ForBody
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,        qword[rbp-64]
     mov           qword[rsi],                  rcx
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,        qword[rbp-72]
     mov         qword[rsi+8],                  rcx
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,        qword[rbp-80]
     mov        qword[rsi+16],                  rcx
     mov                  rsi, qword[@outputBuffer]
     mov        qword[rsi+24],                  r11
     mov                  rsi, qword[@outputBuffer]
     mov        qword[rsi+32],                  r15
     mov                  rcx, qword[@outputBuffer]
     mov       qword[rbp-128],                  rcx
@main.72.@sha1.2.exit:
     mov                  r14,       qword[rbp-128]
     mov                  r10,                    0
	jmp	@main.27.@computeSHA1.11.ForCon
@main.28.@computeSHA1.10.ForBody:
     mov                  rbx,                  r14
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                   r9,         __const_str0
     mov                  r13,                   28
	jmp	@main.121.@toStringHex.6.ForCon
@main.122.@toStringHex.5.ForBody:
     mov                  rsi,                  rbx
     mov                  rcx,                  r13
     shr                  rsi,                   cl
     and                  rsi,                   15
     mov                   r8,                  rsi
     cmp                   r8,                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.123.@toStringHex.9.IfTrue
	jmp	@main.124.@toStringHex.8.IfFalse
@main.123.@toStringHex.9.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                   r8
     mov                  rdi,                  rsi
     cmp                  rdi,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.125.@toStringHex.14.@int2chr.6.cmp_and
     cmp                  rdi,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.125.@toStringHex.14.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.126.@toStringHex.15.@int2chr.4.IfTrue
	jmp	@main.127.@toStringHex.16.@int2chr.3.IfFalse
@main.126.@toStringHex.15.@int2chr.4.IfTrue:
     mov                  r12,                  rdi
     sub                  r12,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  r12
     mov                  rdx,                  r12
    push                  r10
    push                   r9
    push                   r8
    push                  rsi
call	__substring__
     pop                  rsi
     pop                   r8
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
	jmp	@main.128.@toStringHex.12.@int2chr.2.exit
	jmp	@main.129.@toStringHex.17.@int2chr.5.IfExit
@main.127.@toStringHex.16.@int2chr.3.IfFalse:
@main.129.@toStringHex.17.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@main.128.@toStringHex.12.@int2chr.2.exit:
     mov                  rdi,                   r9
    push                  r10
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                   r9,                  rsi
	jmp	@main.130.@toStringHex.10.IfExit
@main.124.@toStringHex.8.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                   r8
     sub                  rsi,                   10
     mov                  rdi,                  rsi
     cmp                  rdi,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.131.@toStringHex.20.@int2chr.6.cmp_and
     cmp                  rdi,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.131.@toStringHex.20.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.132.@toStringHex.21.@int2chr.4.IfTrue
	jmp	@main.133.@toStringHex.22.@int2chr.3.IfFalse
@main.132.@toStringHex.21.@int2chr.4.IfTrue:
     mov                  r12,                  rdi
     sub                  r12,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  r12
     mov                  rdx,                  r12
    push                  r10
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  r10
     mov                  rsi,                  rax
	jmp	@main.134.@toStringHex.18.@int2chr.2.exit
	jmp	@main.135.@toStringHex.23.@int2chr.5.IfExit
@main.133.@toStringHex.22.@int2chr.3.IfFalse:
@main.135.@toStringHex.23.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@main.134.@toStringHex.18.@int2chr.2.exit:
     mov                  rdi,                   r9
    push                  r10
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     mov                   r9,                  rsi
@main.130.@toStringHex.10.IfExit:
     mov                  rsi,                  r13
     sub                  rsi,                    4
     mov                  r13,                  rsi
@main.121.@toStringHex.6.ForCon:
     cmp                  r13,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
	je	@main.122.@toStringHex.5.ForBody
     mov                  rsi,                   r9
     mov                  rdi,                  rsi
    push                  r10
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                  r10
     add                  r10,                    1
@main.27.@computeSHA1.11.ForCon:
     mov                  rdi,                  r14
    push                  r10
    push                  rsi
call	__size__
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     cmp                  r10,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.28.@computeSHA1.10.ForBody
     mov                  rdi,         __const_str0
call	println
	jmp	@main.13.IfExit
@main.11.IfFalse:
     cmp         qword[rbp-8],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.15.IfTrue
	jmp	@main.14.IfFalse
@main.15.IfTrue:
    push                  rsi
     sub                  rsp,                    8
call	getString
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r13,                  rsi
     mov                  rbx,                    5
     mov                  rsi,                    5
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
     mov       qword[rbp-144],                  rbx
     mov                  rdi,                  r13
    push                  rsi
     sub                  rsp,                    8
call	__length__
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  rsi,                   40
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.33.@crackSHA1.4.IfTrue
	jmp	@main.34.@crackSHA1.3.IfFalse
@main.33.@crackSHA1.4.IfTrue:
     mov                  rdi,         __const_str2
call	println
	jmp	@main.31.@crackSHA1.2.exit
	jmp	@main.35.@crackSHA1.5.IfExit
@main.34.@crackSHA1.3.IfFalse:
@main.35.@crackSHA1.5.IfExit:
     mov                  r10,                    0
	jmp	@main.37.@crackSHA1.9.ForCon
@main.38.@crackSHA1.8.ForBody:
     mov                  rbx,       qword[rbp-144]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     add                  r10,                    1
@main.37.@crackSHA1.9.ForCon:
     cmp                  r10,                    5
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.38.@crackSHA1.8.ForBody
     mov                  r10,                    0
	jmp	@main.42.@crackSHA1.14.ForCon
@main.43.@crackSHA1.13.ForBody:
     mov                  rsi,                  r10
     mov                  rax,                  rsi
     mov                  rcx,                    8
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  r14,       qword[rbp-144]
     shl                  rsi,                    3
     add                  r14,                  rsi
     mov                  rsi,                  r10
     mov                  rax,                  rsi
     mov                  rcx,                    8
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                   r9,       qword[rbp-144]
     shl                  rsi,                    3
     add                   r9,                  rsi
     mov                  rbx,                  r10
     add                  rbx,                    3
     mov                  rdi,                  r13
     mov                  rsi,                  r10
     mov                  rdx,                  rbx
    push                  rsi
    push                   r9
    push                  r10
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                  r10
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                   r8,                    0
     mov                  rbx,                    0
	jmp	@main.138.@hex2int.6.ForCon
@main.139.@hex2int.5.ForBody:
     mov                  rdi,                  r12
     mov                  rsi,                  rbx
    push                   r8
    push                  rsi
    push                   r9
    push                  r10
call	__ord__
     pop                  r10
     pop                   r9
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     cmp                  rdi,                   48
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.140.@hex2int.11.cmp_and
     cmp                  rdi,                   57
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.140.@hex2int.11.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.141.@hex2int.9.IfTrue
	jmp	@main.142.@hex2int.8.IfFalse
@main.141.@hex2int.9.IfTrue:
     mov                  rsi,                   r8
    imul                  rsi,                   16
     add                  rsi,                  rdi
     sub                  rsi,                   48
     mov                   r8,                  rsi
	jmp	@main.143.@hex2int.10.IfExit
@main.142.@hex2int.8.IfFalse:
     cmp                  rdi,                   65
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.144.@hex2int.15.cmp_and
     cmp                  rdi,                   70
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.144.@hex2int.15.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.145.@hex2int.13.IfTrue
	jmp	@main.146.@hex2int.12.IfFalse
@main.145.@hex2int.13.IfTrue:
     mov                  rsi,                   r8
    imul                  rsi,                   16
     add                  rsi,                  rdi
     sub                  rsi,                   65
     add                  rsi,                   10
     mov                   r8,                  rsi
	jmp	@main.147.@hex2int.14.IfExit
@main.146.@hex2int.12.IfFalse:
     cmp                  rdi,                   97
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.148.@hex2int.19.cmp_and
     cmp                  rdi,                  102
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.148.@hex2int.19.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.149.@hex2int.17.IfTrue
	jmp	@main.150.@hex2int.16.IfFalse
@main.149.@hex2int.17.IfTrue:
     mov                  rsi,                   r8
    imul                  rsi,                   16
     add                  rsi,                  rdi
     sub                  rsi,                   97
     add                  rsi,                   10
     mov                   r8,                  rsi
	jmp	@main.151.@hex2int.18.IfExit
@main.150.@hex2int.16.IfFalse:
     mov                  rsi,                    0
	jmp	@main.136.@hex2int.2.exit
@main.151.@hex2int.18.IfExit:
@main.147.@hex2int.14.IfExit:
@main.143.@hex2int.10.IfExit:
     add                  rbx,                    1
@main.138.@hex2int.6.ForCon:
     mov                  rdi,                  r12
    push                   r8
    push                   r9
    push                  r10
    push                  rsi
call	__length__
     pop                  rsi
     pop                  r10
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.139.@hex2int.5.ForBody
     mov                  rsi,                   r8
@main.136.@hex2int.2.exit:
     mov                  rbx,                  r10
     mov                  rax,                  rbx
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rbx,                    1
     sub                  rbx,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                   16
     mov                  rbx,                  rsi
     mov                  rcx,                  rdi
     shl                  rbx,                   cl
     mov                  rsi,            qword[r9]
      or                  rsi,                  rbx
     mov           qword[r14],                  rsi
     mov                  rsi,                  r10
     add                  rsi,                    4
     mov                  r10,                  rsi
@main.42.@crackSHA1.14.ForCon:
     cmp                  r10,                   40
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.43.@crackSHA1.13.ForBody
     mov       qword[rbp-152],                    4
     mov       qword[rbp-160],                    1
	jmp	@main.47.@crackSHA1.19.ForCon
@main.48.@crackSHA1.18.ForBody:
     mov                  r10,                    0
	jmp	@main.50.@crackSHA1.24.ForCon
@main.51.@crackSHA1.23.ForBody:
     mov                  rbx,  qword[@inputBuffer]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                   48
     add                  r10,                    1
@main.50.@crackSHA1.24.ForCon:
     cmp                  r10,       qword[rbp-160]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.51.@crackSHA1.23.ForBody
	jmp	@main.55.@crackSHA1.29.ForCon
@main.56.@crackSHA1.28.ForBody:
     mov                  rbx,  qword[@inputBuffer]
     mov                   r9,       qword[rbp-160]
     mov                  rsi,                   r9
     add                  rsi,                   64
     sub                  rsi,                   56
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     add                  rsi,                    1
     mov       qword[rbp-168],                  rsi
     mov                  rcx,       qword[rbp-168]
     cmp                  rcx,     qword[@MAXCHUNK]
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.154.@sha1.4.IfTrue
	jmp	@main.155.@sha1.3.IfFalse
@main.154.@sha1.4.IfTrue:
     mov                  rdi,         __const_str1
call	println
	jmp	@main.152.@sha1.2.exit
	jmp	@main.156.@sha1.5.IfExit
@main.155.@sha1.3.IfFalse:
@main.156.@sha1.5.IfExit:
     mov       qword[rbp-176],                    0
	jmp	@main.157.@sha1.9.ForCon
@main.158.@sha1.8.ForBody:
     mov       qword[rbp-184],                    0
	jmp	@main.159.@sha1.14.ForCon
@main.160.@sha1.13.ForBody:
     mov                  rdi,       qword[@chunks]
     mov                  rsi,       qword[rbp-176]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,       qword[rbp-184]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov           qword[rdi],                    0
     add       qword[rbp-184],                    1
@main.159.@sha1.14.ForCon:
     cmp       qword[rbp-184],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.160.@sha1.13.ForBody
     add       qword[rbp-176],                    1
@main.157.@sha1.9.ForCon:
     mov                  rcx,       qword[rbp-176]
     cmp                  rcx,       qword[rbp-168]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.158.@sha1.8.ForBody
     mov       qword[rbp-176],                    0
	jmp	@main.161.@sha1.19.ForCon
@main.162.@sha1.18.ForBody:
     mov                  rsi,       qword[rbp-176]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,       qword[@chunks]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,       qword[rbp-176]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  r13,           qword[rdi]
     shl                  rsi,                    3
     add                  r13,                  rsi
     mov                  rsi,       qword[rbp-176]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,       qword[@chunks]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,       qword[rbp-176]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                   r8,           qword[rdi]
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  r12,                  rbx
     mov                  rsi,       qword[rbp-176]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rdi,       qword[rbp-176]
     mov                  rax,                  rdi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                    3
     sub                  rsi,                  rdi
    imul                  rsi,                    8
     mov                  rdi,           qword[r12]
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rsi,            qword[r8]
      or                  rsi,                  rdi
     mov           qword[r13],                  rsi
     add       qword[rbp-176],                    1
@main.161.@sha1.19.ForCon:
     cmp       qword[rbp-176],                   r9
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.162.@sha1.18.ForBody
     mov                  rsi,       qword[rbp-176]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,       qword[rbp-176]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  r12,           qword[rbx]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rsi,       qword[rbp-176]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,       qword[rbp-176]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,           qword[rbx]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,       qword[rbp-176]
     mov                  rax,                  rbx
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                    3
     sub                  rsi,                  rbx
    imul                  rsi,                    8
     mov                  rbx,                  128
     mov                  rcx,                  rsi
     shl                  rbx,                   cl
     mov                  rsi,           qword[rdi]
      or                  rsi,                  rbx
     mov           qword[r12],                  rsi
     mov                  rsi,       qword[rbp-168]
     sub                  rsi,                    1
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     mov       qword[rbx+120],                  rsi
     mov                  rsi,       qword[rbp-168]
     sub                  rsi,                    1
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shr                  rsi,                   29
     and                  rsi,                    7
     mov       qword[rbx+112],                  rsi
     mov       qword[rbp-192],           1732584193
     mov                  rsi,                43913
     mov                  rbx,                61389
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov       qword[rbp-200],                  rsi
     mov                  rsi,                56574
     mov                  rbx,                39098
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov       qword[rbp-208],                  rsi
     mov                  r11,            271733878
     mov                  rsi,                57840
     mov                  rbx,                50130
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  r15,                  rsi
     mov       qword[rbp-176],                    0
	jmp	@main.163.@sha1.24.ForCon
@main.164.@sha1.23.ForBody:
     mov       qword[rbp-184],                   16
	jmp	@main.165.@sha1.29.ForCon
@main.166.@sha1.28.ForBody:
     mov                  rbx,       qword[@chunks]
     mov                  rsi,       qword[rbp-176]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
     mov                  rsi,       qword[rbp-184]
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rbx,       qword[@chunks]
     mov                  rsi,       qword[rbp-176]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,       qword[rbp-184]
     sub                  rsi,                    3
     mov                  r12,           qword[rbx]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,       qword[@chunks]
     mov                  rsi,       qword[rbp-176]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,       qword[rbp-184]
     sub                  rsi,                    8
     mov                  rdi,           qword[rbx]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,           qword[r12]
     xor                  rbx,           qword[rdi]
     mov                  rdi,       qword[@chunks]
     mov                  rsi,       qword[rbp-176]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,       qword[rbp-184]
     sub                  rsi,                   14
     mov                  rdi,           qword[rdi]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     xor                  rbx,           qword[rdi]
     mov                  rdi,       qword[@chunks]
     mov                  rsi,       qword[rbp-176]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,       qword[rbp-184]
     sub                  rsi,                   16
     mov                  rdi,           qword[rdi]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,           qword[rdi]
     mov                   r9,                  rsi
     mov                  r13,                    1
     cmp                  r13,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.167.@sha1.54.@rotate_left.4.IfTrue
	jmp	@main.168.@sha1.55.@rotate_left.3.IfFalse
@main.167.@sha1.54.@rotate_left.4.IfTrue:
     mov                  rsi,                   r9
     and                  rsi,           2147483647
     mov                  rdi,                  rsi
     shl                  rdi,                    1
     mov                  rsi,                   r9
     shr                  rsi,                   31
     mov                  rbx,                  rsi
     and                  rbx,                    1
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@main.169.@sha1.52.@rotate_left.2.exit
	jmp	@main.170.@sha1.56.@rotate_left.5.IfExit
@main.168.@sha1.55.@rotate_left.3.IfFalse:
@main.170.@sha1.56.@rotate_left.5.IfExit:
     cmp                  r13,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.171.@sha1.57.@rotate_left.7.IfTrue
	jmp	@main.172.@sha1.58.@rotate_left.6.IfFalse
@main.171.@sha1.57.@rotate_left.7.IfTrue:
     mov                  rsi,                   r9
     and                  rsi,                    1
     mov                  rdi,                  rsi
     shl                  rdi,                   31
     mov                  rsi,                   r9
     shr                  rsi,                    1
     mov                  rbx,                  rsi
     and                  rbx,           2147483647
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@main.169.@sha1.52.@rotate_left.2.exit
	jmp	@main.173.@sha1.59.@rotate_left.8.IfExit
@main.172.@sha1.58.@rotate_left.6.IfFalse:
@main.173.@sha1.59.@rotate_left.8.IfExit:
     mov                  r12,                   32
     sub                  r12,                  r13
     mov                  rsi,                    1
     mov                  rcx,                  r12
     shl                  rsi,                   cl
     mov                  rbx,                  rsi
     sub                  rbx,                    1
     mov                  rsi,                   r9
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rcx,                  r13
     shl                  rdi,                   cl
     mov                  rbx,                   r9
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                    1
     mov                  rcx,                  r13
     shl                  rsi,                   cl
     sub                  rsi,                    1
     and                  rbx,                  rsi
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
@main.169.@sha1.52.@rotate_left.2.exit:
     mov            qword[r8],                  rsi
     add       qword[rbp-184],                    1
@main.165.@sha1.29.ForCon:
     cmp       qword[rbp-184],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.166.@sha1.28.ForBody
     mov                  r10,       qword[rbp-192]
     mov                  rcx,       qword[rbp-200]
     mov       qword[rbp-216],                  rcx
     mov                  rcx,       qword[rbp-208]
     mov       qword[rbp-224],                  rcx
     mov       qword[rbp-232],                  r11
     mov                  r13,                  r15
     mov       qword[rbp-184],                    0
	jmp	@main.174.@sha1.34.ForCon
@main.175.@sha1.33.ForBody:
     cmp       qword[rbp-184],                   20
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.176.@sha1.37.IfTrue
	jmp	@main.177.@sha1.36.IfFalse
@main.176.@sha1.37.IfTrue:
     mov                  rdi,       qword[rbp-216]
     and                  rdi,       qword[rbp-224]
     mov                  rsi,       qword[rbp-216]
     not                  rsi
     mov                  rbx,                  rsi
     and                  rbx,       qword[rbp-232]
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                   r9,           1518500249
	jmp	@main.178.@sha1.38.IfExit
@main.177.@sha1.36.IfFalse:
     cmp       qword[rbp-184],                   40
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.179.@sha1.40.IfTrue
	jmp	@main.180.@sha1.39.IfFalse
@main.179.@sha1.40.IfTrue:
     mov                  rsi,       qword[rbp-216]
     xor                  rsi,       qword[rbp-224]
     xor                  rsi,       qword[rbp-232]
     mov                  r14,                  rsi
     mov                   r9,           1859775393
	jmp	@main.181.@sha1.41.IfExit
@main.180.@sha1.39.IfFalse:
     cmp       qword[rbp-184],                   60
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.182.@sha1.43.IfTrue
	jmp	@main.183.@sha1.42.IfFalse
@main.182.@sha1.43.IfTrue:
     mov                  rsi,       qword[rbp-216]
     and                  rsi,       qword[rbp-224]
     mov                  rbx,       qword[rbp-216]
     and                  rbx,       qword[rbp-232]
      or                  rsi,                  rbx
     mov                  rbx,       qword[rbp-224]
     and                  rbx,       qword[rbp-232]
      or                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rsi,                48348
     mov                  rbx,                36635
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                   r9,                  rsi
	jmp	@main.184.@sha1.44.IfExit
@main.183.@sha1.42.IfFalse:
     mov                  rsi,       qword[rbp-216]
     xor                  rsi,       qword[rbp-224]
     xor                  rsi,       qword[rbp-232]
     mov                  r14,                  rsi
     mov                  rsi,                49622
     mov                  rbx,                51810
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                   r9,                  rsi
@main.184.@sha1.44.IfExit:
@main.181.@sha1.41.IfExit:
@main.178.@sha1.38.IfExit:
     mov       qword[rbp-240],                  r10
     mov                   r8,                    5
     cmp                   r8,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.185.@sha1.66.@rotate_left.4.IfTrue
	jmp	@main.186.@sha1.67.@rotate_left.3.IfFalse
@main.185.@sha1.66.@rotate_left.4.IfTrue:
     mov                  rsi,       qword[rbp-240]
     and                  rsi,           2147483647
     mov                  rdi,                  rsi
     shl                  rdi,                    1
     mov                  rsi,       qword[rbp-240]
     shr                  rsi,                   31
     mov                  rbx,                  rsi
     and                  rbx,                    1
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@main.187.@sha1.64.@rotate_left.2.exit
	jmp	@main.188.@sha1.68.@rotate_left.5.IfExit
@main.186.@sha1.67.@rotate_left.3.IfFalse:
@main.188.@sha1.68.@rotate_left.5.IfExit:
     cmp                   r8,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.189.@sha1.69.@rotate_left.7.IfTrue
	jmp	@main.190.@sha1.70.@rotate_left.6.IfFalse
@main.189.@sha1.69.@rotate_left.7.IfTrue:
     mov                  rsi,       qword[rbp-240]
     and                  rsi,                    1
     mov                  rdi,                  rsi
     shl                  rdi,                   31
     mov                  rsi,       qword[rbp-240]
     shr                  rsi,                    1
     mov                  rbx,                  rsi
     and                  rbx,           2147483647
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@main.187.@sha1.64.@rotate_left.2.exit
	jmp	@main.191.@sha1.71.@rotate_left.8.IfExit
@main.190.@sha1.70.@rotate_left.6.IfFalse:
@main.191.@sha1.71.@rotate_left.8.IfExit:
     mov                  r12,                   32
     sub                  r12,                   r8
     mov                  rsi,                    1
     mov                  rcx,                  r12
     shl                  rsi,                   cl
     mov                  rbx,                  rsi
     sub                  rbx,                    1
     mov                  rsi,       qword[rbp-240]
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rcx,                   r8
     shl                  rdi,                   cl
     mov                  rbx,       qword[rbp-240]
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                    1
     mov                  rcx,                   r8
     shl                  rsi,                   cl
     sub                  rsi,                    1
     and                  rbx,                  rsi
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
@main.187.@sha1.64.@rotate_left.2.exit:
     mov                  rdi,                  rsi
     mov                   r8,                  r13
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  r13,                  rsi
     mov                  rdi,                  r14
     mov                   r8,                   r9
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  rdi,                  r13
     mov                   r8,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,       qword[@chunks]
     mov                  rsi,       qword[rbp-176]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  r12,           qword[rdi]
     mov                  rsi,       qword[rbp-184]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rdi,                  rbx
     mov                   r8,           qword[r12]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  r13,       qword[rbp-232]
     mov                  rcx,       qword[rbp-224]
     mov       qword[rbp-232],                  rcx
     mov                  r14,       qword[rbp-216]
     mov                   r9,                   30
     cmp                   r9,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.192.@sha1.82.@rotate_left.4.IfTrue
	jmp	@main.193.@sha1.83.@rotate_left.3.IfFalse
@main.192.@sha1.82.@rotate_left.4.IfTrue:
     mov                  rsi,                  r14
     and                  rsi,           2147483647
     mov                  r12,                  rsi
     shl                  r12,                    1
     mov                  rsi,                  r14
     shr                  rsi,                   31
     mov                  rdi,                  rsi
     and                  rdi,                    1
     mov                  rsi,                  r12
      or                  rsi,                  rdi
	jmp	@main.194.@sha1.80.@rotate_left.2.exit
	jmp	@main.195.@sha1.84.@rotate_left.5.IfExit
@main.193.@sha1.83.@rotate_left.3.IfFalse:
@main.195.@sha1.84.@rotate_left.5.IfExit:
     cmp                   r9,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.196.@sha1.85.@rotate_left.7.IfTrue
	jmp	@main.197.@sha1.86.@rotate_left.6.IfFalse
@main.196.@sha1.85.@rotate_left.7.IfTrue:
     mov                  rsi,                  r14
     and                  rsi,                    1
     mov                  r12,                  rsi
     shl                  r12,                   31
     mov                  rsi,                  r14
     shr                  rsi,                    1
     mov                  rdi,                  rsi
     and                  rdi,           2147483647
     mov                  rsi,                  r12
      or                  rsi,                  rdi
	jmp	@main.194.@sha1.80.@rotate_left.2.exit
	jmp	@main.198.@sha1.87.@rotate_left.8.IfExit
@main.197.@sha1.86.@rotate_left.6.IfFalse:
@main.198.@sha1.87.@rotate_left.8.IfExit:
     mov                   r8,                   32
     sub                   r8,                   r9
     mov                  rsi,                    1
     mov                  rcx,                   r8
     shl                  rsi,                   cl
     mov                  rdi,                  rsi
     sub                  rdi,                    1
     mov                  rsi,                  r14
     and                  rsi,                  rdi
     mov                  r12,                  rsi
     mov                  rcx,                   r9
     shl                  r12,                   cl
     mov                  rdi,                  r14
     mov                  rcx,                   r8
     shr                  rdi,                   cl
     mov                  rsi,                    1
     mov                  rcx,                   r9
     shl                  rsi,                   cl
     sub                  rsi,                    1
     and                  rdi,                  rsi
     mov                  rsi,                  r12
      or                  rsi,                  rdi
@main.194.@sha1.80.@rotate_left.2.exit:
     mov       qword[rbp-224],                  rsi
     mov       qword[rbp-216],                  r10
     mov                  r10,                  rbx
     add       qword[rbp-184],                    1
@main.174.@sha1.34.ForCon:
     cmp       qword[rbp-184],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.175.@sha1.33.ForBody
     mov                  rdi,       qword[rbp-192]
     mov                   r8,                  r10
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov       qword[rbp-192],                  rsi
     mov                  rdi,       qword[rbp-200]
     mov                   r8,       qword[rbp-216]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov       qword[rbp-200],                  rsi
     mov                  rdi,       qword[rbp-208]
     mov                   r8,       qword[rbp-224]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov       qword[rbp-208],                  rsi
     mov                  rdi,                  r11
     mov                   r8,       qword[rbp-232]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  r11,                  rsi
     mov                  rdi,                  r15
     mov                   r8,                  r13
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  r15,                  rsi
     add       qword[rbp-176],                    1
@main.163.@sha1.24.ForCon:
     mov                  rcx,       qword[rbp-176]
     cmp                  rcx,       qword[rbp-168]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.164.@sha1.23.ForBody
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,       qword[rbp-192]
     mov           qword[rsi],                  rcx
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,       qword[rbp-200]
     mov         qword[rsi+8],                  rcx
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,       qword[rbp-208]
     mov        qword[rsi+16],                  rcx
     mov                  rsi, qword[@outputBuffer]
     mov        qword[rsi+24],                  r11
     mov                  rsi, qword[@outputBuffer]
     mov        qword[rsi+32],                  r15
     mov                  rcx, qword[@outputBuffer]
     mov       qword[rbp-248],                  rcx
@main.152.@sha1.2.exit:
     mov                  rsi,       qword[rbp-248]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbp-144]
    push                  rsi
     sub                  rsp,                    8
call	array_equal
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  rsi,                    1
	je	@main.57.@crackSHA1.32.IfTrue
	jmp	@main.58.@crackSHA1.31.IfFalse
@main.57.@crackSHA1.32.IfTrue:
     mov                  r10,                    0
	jmp	@main.60.@crackSHA1.37.ForCon
@main.61.@crackSHA1.36.ForBody:
     mov                  rbx,  qword[@inputBuffer]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
    push                  rsi
    push                  r10
call	int2chr
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                  r10
     add                  r10,                    1
@main.60.@crackSHA1.37.ForCon:
     cmp                  r10,       qword[rbp-160]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.61.@crackSHA1.36.ForBody
     mov                  rdi,         __const_str0
call	println
	jmp	@main.31.@crackSHA1.2.exit
	jmp	@main.64.@crackSHA1.33.IfExit
@main.58.@crackSHA1.31.IfFalse:
@main.64.@crackSHA1.33.IfExit:
     mov                  rdi,  qword[@inputBuffer]
     mov                  rsi,       qword[rbp-160]
    push                  rsi
     sub                  rsp,                    8
call	nextText
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     xor                  rsi,                    1
     cmp                  rsi,                    1
	je	@main.65.@crackSHA1.40.IfTrue
	jmp	@main.66.@crackSHA1.39.IfFalse
@main.65.@crackSHA1.40.IfTrue:
	jmp	@main.67.@crackSHA1.30.ForExit
	jmp	@main.68.@crackSHA1.41.IfExit
@main.66.@crackSHA1.39.IfFalse:
@main.68.@crackSHA1.41.IfExit:
@main.55.@crackSHA1.29.ForCon:
     mov                  rsi,                    1
     cmp                  rsi,                    1
	je	@main.56.@crackSHA1.28.ForBody
@main.67.@crackSHA1.30.ForExit:
     add       qword[rbp-160],                    1
@main.47.@crackSHA1.19.ForCon:
     mov                  rcx,       qword[rbp-160]
     cmp                  rcx,       qword[rbp-152]
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.48.@crackSHA1.18.ForBody
     mov                  rdi,         __const_str3
call	println
@main.31.@crackSHA1.2.exit:
	jmp	@main.16.IfExit
@main.14.IfFalse:
@main.16.IfExit:
@main.13.IfExit:
@main.6.ForCon:
     mov                  rsi,                    1
     cmp                  rsi,                    1
	je	@main.5.ForBody
@main.7.ForExit:
     mov                  rax,                    0
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     pop                  rbx
     add                  rsp,                  248
     pop                  rbp
     ret
hex2int:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  rbx
@hex2int.1.enter:
     mov                  rbx,                  rdi
     mov                   r8,                    0
     mov                  r12,                    0
	jmp	@hex2int.6.ForCon
@hex2int.5.ForBody:
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
    push                   r8
    push                  rsi
call	__ord__
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     cmp                  rdi,                   48
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@hex2int.11.cmp_and
     cmp                  rdi,                   57
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@hex2int.11.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@hex2int.9.IfTrue
	jmp	@hex2int.8.IfFalse
@hex2int.9.IfTrue:
     mov                  rsi,                   r8
    imul                  rsi,                   16
     add                  rsi,                  rdi
     sub                  rsi,                   48
     mov                   r8,                  rsi
	jmp	@hex2int.10.IfExit
@hex2int.8.IfFalse:
     cmp                  rdi,                   65
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@hex2int.15.cmp_and
     cmp                  rdi,                   70
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@hex2int.15.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@hex2int.13.IfTrue
	jmp	@hex2int.12.IfFalse
@hex2int.13.IfTrue:
     mov                  rsi,                   r8
    imul                  rsi,                   16
     add                  rsi,                  rdi
     sub                  rsi,                   65
     add                  rsi,                   10
     mov                   r8,                  rsi
	jmp	@hex2int.14.IfExit
@hex2int.12.IfFalse:
     cmp                  rdi,                   97
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@hex2int.19.cmp_and
     cmp                  rdi,                  102
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@hex2int.19.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@hex2int.17.IfTrue
	jmp	@hex2int.16.IfFalse
@hex2int.17.IfTrue:
     mov                  rsi,                   r8
    imul                  rsi,                   16
     add                  rsi,                  rdi
     sub                  rsi,                   97
     add                  rsi,                   10
     mov                   r8,                  rsi
	jmp	@hex2int.18.IfExit
@hex2int.16.IfFalse:
     mov                  rax,                    0
	jmp	@hex2int.2.exit
@hex2int.18.IfExit:
@hex2int.14.IfExit:
@hex2int.10.IfExit:
     add                  r12,                    1
@hex2int.6.ForCon:
     mov                  rdi,                  rbx
    push                   r8
    push                  rsi
call	__length__
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@hex2int.5.ForBody
     mov                  rax,                   r8
@hex2int.2.exit:
     pop                  rbx
     pop                  r12
     pop                  rbp
     ret
crackSHA1:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  144
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
@crackSHA1.1.enter:
     mov                  r13,                  rdi
     mov                  rbx,                    5
     mov                  rsi,                    5
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
     mov         qword[rbp-8],                  rbx
     mov                  rdi,                  r13
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	__length__
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  rsi,                   40
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.4.IfTrue
	jmp	@crackSHA1.3.IfFalse
@crackSHA1.4.IfTrue:
     mov                  rdi,         __const_str2
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
	jmp	@crackSHA1.2.exit
	jmp	@crackSHA1.5.IfExit
@crackSHA1.3.IfFalse:
@crackSHA1.5.IfExit:
     mov                  r15,                    0
	jmp	@crackSHA1.9.ForCon
@crackSHA1.8.ForBody:
     mov                  rbx,         qword[rbp-8]
     mov                  rsi,                  r15
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     add                  r15,                    1
@crackSHA1.9.ForCon:
     cmp                  r15,                    5
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.8.ForBody
     mov                  r15,                    0
	jmp	@crackSHA1.14.ForCon
@crackSHA1.13.ForBody:
     mov                  rsi,                  r15
     mov                  rax,                  rsi
     mov                  rcx,                    8
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  r14,         qword[rbp-8]
     shl                  rsi,                    3
     add                  r14,                  rsi
     mov                  rsi,                  r15
     mov                  rax,                  rsi
     mov                  rcx,                    8
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                   r9,         qword[rbp-8]
     shl                  rsi,                    3
     add                   r9,                  rsi
     mov                  rbx,                  r15
     add                  rbx,                    3
     mov                  rdi,                  r13
     mov                  rsi,                  r15
     mov                  rdx,                  rbx
    push                  rsi
    push                   r9
    push                  r10
call	__substring__
     pop                  r10
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  r12,                    0
     mov                  rbx,                    0
	jmp	@crackSHA1.45.@hex2int.6.ForCon
@crackSHA1.46.@hex2int.5.ForBody:
     mov                  rdi,                   r8
     mov                  rsi,                  rbx
    push                   r9
    push                  rsi
    push                  r10
    push                   r8
     sub                  rsp,                    8
call	__ord__
     add                  rsp,                    8
     pop                   r8
     pop                  r10
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     cmp                  rdi,                   48
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@crackSHA1.47.@hex2int.11.cmp_and
     cmp                  rdi,                   57
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@crackSHA1.47.@hex2int.11.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.48.@hex2int.9.IfTrue
	jmp	@crackSHA1.49.@hex2int.8.IfFalse
@crackSHA1.48.@hex2int.9.IfTrue:
     mov                  rsi,                  r12
    imul                  rsi,                   16
     add                  rsi,                  rdi
     sub                  rsi,                   48
     mov                  r12,                  rsi
	jmp	@crackSHA1.50.@hex2int.10.IfExit
@crackSHA1.49.@hex2int.8.IfFalse:
     cmp                  rdi,                   65
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@crackSHA1.51.@hex2int.15.cmp_and
     cmp                  rdi,                   70
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@crackSHA1.51.@hex2int.15.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.52.@hex2int.13.IfTrue
	jmp	@crackSHA1.53.@hex2int.12.IfFalse
@crackSHA1.52.@hex2int.13.IfTrue:
     mov                  rsi,                  r12
    imul                  rsi,                   16
     add                  rsi,                  rdi
     sub                  rsi,                   65
     add                  rsi,                   10
     mov                  r12,                  rsi
	jmp	@crackSHA1.54.@hex2int.14.IfExit
@crackSHA1.53.@hex2int.12.IfFalse:
     cmp                  rdi,                   97
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@crackSHA1.55.@hex2int.19.cmp_and
     cmp                  rdi,                  102
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@crackSHA1.55.@hex2int.19.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.56.@hex2int.17.IfTrue
	jmp	@crackSHA1.57.@hex2int.16.IfFalse
@crackSHA1.56.@hex2int.17.IfTrue:
     mov                  rsi,                  r12
    imul                  rsi,                   16
     add                  rsi,                  rdi
     sub                  rsi,                   97
     add                  rsi,                   10
     mov                  r12,                  rsi
	jmp	@crackSHA1.58.@hex2int.18.IfExit
@crackSHA1.57.@hex2int.16.IfFalse:
     mov                  rsi,                    0
	jmp	@crackSHA1.43.@hex2int.2.exit
@crackSHA1.58.@hex2int.18.IfExit:
@crackSHA1.54.@hex2int.14.IfExit:
@crackSHA1.50.@hex2int.10.IfExit:
     add                  rbx,                    1
@crackSHA1.45.@hex2int.6.ForCon:
     mov                  rdi,                   r8
    push                  rsi
    push                   r9
    push                  r10
    push                   r8
     sub                  rsp,                    8
call	__length__
     add                  rsp,                    8
     pop                   r8
     pop                  r10
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.46.@hex2int.5.ForBody
     mov                  rsi,                  r12
@crackSHA1.43.@hex2int.2.exit:
     mov                  rbx,                  r15
     mov                  rax,                  rbx
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
     mov                  rax,                  rdi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rbx,                    1
     sub                  rbx,                  rdi
     mov                  rdi,                  rbx
    imul                  rdi,                   16
     mov                  rbx,                  rsi
     mov                  rcx,                  rdi
     shl                  rbx,                   cl
     mov                  rsi,            qword[r9]
      or                  rsi,                  rbx
     mov           qword[r14],                  rsi
     mov                  rsi,                  r15
     add                  rsi,                    4
     mov                  r15,                  rsi
@crackSHA1.14.ForCon:
     cmp                  r15,                   40
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.13.ForBody
     mov        qword[rbp-16],                    4
     mov        qword[rbp-24],                    1
	jmp	@crackSHA1.19.ForCon
@crackSHA1.18.ForBody:
     mov                  r15,                    0
	jmp	@crackSHA1.24.ForCon
@crackSHA1.23.ForBody:
     mov                  rbx,  qword[@inputBuffer]
     mov                  rsi,                  r15
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                   48
     add                  r15,                    1
@crackSHA1.24.ForCon:
     cmp                  r15,        qword[rbp-24]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.23.ForBody
	jmp	@crackSHA1.29.ForCon
@crackSHA1.28.ForBody:
     mov                  rbx,  qword[@inputBuffer]
     mov                   r9,        qword[rbp-24]
     mov                  rsi,                   r9
     add                  rsi,                   64
     sub                  rsi,                   56
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     add                  rsi,                    1
     mov        qword[rbp-40],                  rsi
     mov                  rcx,        qword[rbp-40]
     cmp                  rcx,     qword[@MAXCHUNK]
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.61.@sha1.4.IfTrue
	jmp	@crackSHA1.62.@sha1.3.IfFalse
@crackSHA1.61.@sha1.4.IfTrue:
     mov                  rdi,         __const_str1
    push                  r10
call	println
     pop                  r10
	jmp	@crackSHA1.59.@sha1.2.exit
	jmp	@crackSHA1.63.@sha1.5.IfExit
@crackSHA1.62.@sha1.3.IfFalse:
@crackSHA1.63.@sha1.5.IfExit:
     mov        qword[rbp-56],                    0
	jmp	@crackSHA1.65.@sha1.9.ForCon
@crackSHA1.66.@sha1.8.ForBody:
     mov        qword[rbp-64],                    0
	jmp	@crackSHA1.68.@sha1.14.ForCon
@crackSHA1.69.@sha1.13.ForBody:
     mov                  rdi,       qword[@chunks]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov           qword[rdi],                    0
     add        qword[rbp-64],                    1
@crackSHA1.68.@sha1.14.ForCon:
     cmp        qword[rbp-64],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.69.@sha1.13.ForBody
     add        qword[rbp-56],                    1
@crackSHA1.65.@sha1.9.ForCon:
     mov                  rcx,        qword[rbp-56]
     cmp                  rcx,        qword[rbp-40]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.66.@sha1.8.ForBody
     mov        qword[rbp-56],                    0
	jmp	@crackSHA1.75.@sha1.19.ForCon
@crackSHA1.76.@sha1.18.ForBody:
     mov                  rsi,        qword[rbp-56]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,       qword[@chunks]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,        qword[rbp-56]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  r13,           qword[rdi]
     shl                  rsi,                    3
     add                  r13,                  rsi
     mov                  rsi,        qword[rbp-56]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,       qword[@chunks]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,        qword[rbp-56]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                   r8,           qword[rdi]
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  r12,                  rbx
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rdi,        qword[rbp-56]
     mov                  rax,                  rdi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                    3
     sub                  rsi,                  rdi
    imul                  rsi,                    8
     mov                  rdi,           qword[r12]
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rsi,            qword[r8]
      or                  rsi,                  rdi
     mov           qword[r13],                  rsi
     add        qword[rbp-56],                    1
@crackSHA1.75.@sha1.19.ForCon:
     cmp        qword[rbp-56],                   r9
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.76.@sha1.18.ForBody
     mov                  rsi,        qword[rbp-56]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-56]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  r12,           qword[rbx]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rsi,        qword[rbp-56]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-56]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,           qword[rbx]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[rbp-56]
     mov                  rax,                  rbx
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                    3
     sub                  rsi,                  rbx
    imul                  rsi,                    8
     mov                  rbx,                  128
     mov                  rcx,                  rsi
     shl                  rbx,                   cl
     mov                  rsi,           qword[rdi]
      or                  rsi,                  rbx
     mov           qword[r12],                  rsi
     mov                  rsi,        qword[rbp-40]
     sub                  rsi,                    1
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     mov       qword[rbx+120],                  rsi
     mov                  rsi,        qword[rbp-40]
     sub                  rsi,                    1
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shr                  rsi,                   29
     and                  rsi,                    7
     mov       qword[rbx+112],                  rsi
     mov        qword[rbp-80],           1732584193
     mov                  rsi,                43913
     mov                  rbx,                61389
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov        qword[rbp-88],                  rsi
     mov                  rsi,                56574
     mov                  rbx,                39098
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov        qword[rbp-96],                  rsi
     mov                  r11,            271733878
     mov                  rsi,                57840
     mov                  rbx,                50130
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  r15,                  rsi
     mov        qword[rbp-56],                    0
	jmp	@crackSHA1.80.@sha1.24.ForCon
@crackSHA1.81.@sha1.23.ForBody:
     mov        qword[rbp-64],                   16
	jmp	@crackSHA1.83.@sha1.29.ForCon
@crackSHA1.84.@sha1.28.ForBody:
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r9,           qword[rbx]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                   r9,                  rsi
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-64]
     sub                  rsi,                    3
     mov                  r12,           qword[rbx]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-64]
     sub                  rsi,                    8
     mov                  rdi,           qword[rbx]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,           qword[r12]
     xor                  rbx,           qword[rdi]
     mov                  rdi,       qword[@chunks]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,        qword[rbp-64]
     sub                  rsi,                   14
     mov                  rdi,           qword[rdi]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     xor                  rbx,           qword[rdi]
     mov                  rdi,       qword[@chunks]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,        qword[rbp-64]
     sub                  rsi,                   16
     mov                  rdi,           qword[rdi]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,           qword[rdi]
     mov                  r13,                  rsi
     mov                   r8,                    1
     cmp                   r8,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.147.@rotate_left.4.IfTrue
	jmp	@crackSHA1.148.@rotate_left.3.IfFalse
@crackSHA1.147.@rotate_left.4.IfTrue:
     mov                  rsi,                  r13
     and                  rsi,           2147483647
     mov                  rdi,                  rsi
     shl                  rdi,                    1
     mov                  rsi,                  r13
     shr                  rsi,                   31
     mov                  rbx,                  rsi
     and                  rbx,                    1
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@crackSHA1.145.@rotate_left.2.exit
	jmp	@crackSHA1.149.@rotate_left.5.IfExit
@crackSHA1.148.@rotate_left.3.IfFalse:
@crackSHA1.149.@rotate_left.5.IfExit:
     cmp                   r8,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.150.@rotate_left.7.IfTrue
	jmp	@crackSHA1.151.@rotate_left.6.IfFalse
@crackSHA1.150.@rotate_left.7.IfTrue:
     mov                  rsi,                  r13
     and                  rsi,                    1
     mov                  rdi,                  rsi
     shl                  rdi,                   31
     mov                  rsi,                  r13
     shr                  rsi,                    1
     mov                  rbx,                  rsi
     and                  rbx,           2147483647
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@crackSHA1.145.@rotate_left.2.exit
	jmp	@crackSHA1.152.@rotate_left.8.IfExit
@crackSHA1.151.@rotate_left.6.IfFalse:
@crackSHA1.152.@rotate_left.8.IfExit:
     mov                  r12,                   32
     sub                  r12,                   r8
     mov                  rsi,                    1
     mov                  rcx,                  r12
     shl                  rsi,                   cl
     mov                  rbx,                  rsi
     sub                  rbx,                    1
     mov                  rsi,                  r13
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rcx,                   r8
     shl                  rdi,                   cl
     mov                  rbx,                  r13
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                    1
     mov                  rcx,                   r8
     shl                  rsi,                   cl
     sub                  rsi,                    1
     and                  rbx,                  rsi
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
@crackSHA1.145.@rotate_left.2.exit:
     mov            qword[r9],                  rsi
     add        qword[rbp-64],                    1
@crackSHA1.83.@sha1.29.ForCon:
     cmp        qword[rbp-64],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.84.@sha1.28.ForBody
     mov                  rcx,        qword[rbp-80]
     mov       qword[rbp-104],                  rcx
     mov                  rcx,        qword[rbp-88]
     mov       qword[rbp-112],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-120],                  rcx
     mov       qword[rbp-128],                  r11
     mov                  r10,                  r15
     mov        qword[rbp-64],                    0
	jmp	@crackSHA1.88.@sha1.34.ForCon
@crackSHA1.89.@sha1.33.ForBody:
     cmp        qword[rbp-64],                   20
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.90.@sha1.37.IfTrue
	jmp	@crackSHA1.91.@sha1.36.IfFalse
@crackSHA1.90.@sha1.37.IfTrue:
     mov                  rdi,       qword[rbp-112]
     and                  rdi,       qword[rbp-120]
     mov                  rsi,       qword[rbp-112]
     not                  rsi
     mov                  rbx,                  rsi
     and                  rbx,       qword[rbp-128]
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                   r9,           1518500249
	jmp	@crackSHA1.92.@sha1.38.IfExit
@crackSHA1.91.@sha1.36.IfFalse:
     cmp        qword[rbp-64],                   40
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.93.@sha1.40.IfTrue
	jmp	@crackSHA1.94.@sha1.39.IfFalse
@crackSHA1.93.@sha1.40.IfTrue:
     mov                  rsi,       qword[rbp-112]
     xor                  rsi,       qword[rbp-120]
     xor                  rsi,       qword[rbp-128]
     mov                  r14,                  rsi
     mov                   r9,           1859775393
	jmp	@crackSHA1.95.@sha1.41.IfExit
@crackSHA1.94.@sha1.39.IfFalse:
     cmp        qword[rbp-64],                   60
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.96.@sha1.43.IfTrue
	jmp	@crackSHA1.97.@sha1.42.IfFalse
@crackSHA1.96.@sha1.43.IfTrue:
     mov                  rsi,       qword[rbp-112]
     and                  rsi,       qword[rbp-120]
     mov                  rbx,       qword[rbp-112]
     and                  rbx,       qword[rbp-128]
      or                  rsi,                  rbx
     mov                  rbx,       qword[rbp-120]
     and                  rbx,       qword[rbp-128]
      or                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rsi,                48348
     mov                  rbx,                36635
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                   r9,                  rsi
	jmp	@crackSHA1.98.@sha1.44.IfExit
@crackSHA1.97.@sha1.42.IfFalse:
     mov                  rsi,       qword[rbp-112]
     xor                  rsi,       qword[rbp-120]
     xor                  rsi,       qword[rbp-128]
     mov                  r14,                  rsi
     mov                  rsi,                49622
     mov                  rbx,                51810
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                   r9,                  rsi
@crackSHA1.98.@sha1.44.IfExit:
@crackSHA1.95.@sha1.41.IfExit:
@crackSHA1.92.@sha1.38.IfExit:
     mov                  r13,       qword[rbp-104]
     mov                   r8,                    5
     cmp                   r8,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.159.@rotate_left.4.IfTrue
	jmp	@crackSHA1.160.@rotate_left.3.IfFalse
@crackSHA1.159.@rotate_left.4.IfTrue:
     mov                  rsi,                  r13
     and                  rsi,           2147483647
     mov                  rdi,                  rsi
     shl                  rdi,                    1
     mov                  rsi,                  r13
     shr                  rsi,                   31
     mov                  rbx,                  rsi
     and                  rbx,                    1
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@crackSHA1.157.@rotate_left.2.exit
	jmp	@crackSHA1.161.@rotate_left.5.IfExit
@crackSHA1.160.@rotate_left.3.IfFalse:
@crackSHA1.161.@rotate_left.5.IfExit:
     cmp                   r8,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.162.@rotate_left.7.IfTrue
	jmp	@crackSHA1.163.@rotate_left.6.IfFalse
@crackSHA1.162.@rotate_left.7.IfTrue:
     mov                  rsi,                  r13
     and                  rsi,                    1
     mov                  rdi,                  rsi
     shl                  rdi,                   31
     mov                  rsi,                  r13
     shr                  rsi,                    1
     mov                  rbx,                  rsi
     and                  rbx,           2147483647
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@crackSHA1.157.@rotate_left.2.exit
	jmp	@crackSHA1.164.@rotate_left.8.IfExit
@crackSHA1.163.@rotate_left.6.IfFalse:
@crackSHA1.164.@rotate_left.8.IfExit:
     mov                  r12,                   32
     sub                  r12,                   r8
     mov                  rsi,                    1
     mov                  rcx,                  r12
     shl                  rsi,                   cl
     mov                  rbx,                  rsi
     sub                  rbx,                    1
     mov                  rsi,                  r13
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rcx,                   r8
     shl                  rdi,                   cl
     mov                  rbx,                  r13
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                    1
     mov                  rcx,                   r8
     shl                  rsi,                   cl
     sub                  rsi,                    1
     and                  rbx,                  rsi
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
@crackSHA1.157.@rotate_left.2.exit:
     mov                  rdi,                  rsi
     mov                   r8,                  r10
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  r13,                  rsi
     mov                  rdi,                  r14
     mov                   r8,                   r9
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  rdi,                  r13
     mov                   r8,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,       qword[@chunks]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  r12,           qword[rdi]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rdi,                  rbx
     mov                   r8,           qword[r12]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                   r9,                  rsi
     mov                  r10,       qword[rbp-128]
     mov                  rcx,       qword[rbp-120]
     mov       qword[rbp-128],                  rcx
     mov                  r13,       qword[rbp-112]
     mov                   r8,                   30
     cmp                   r8,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.175.@rotate_left.4.IfTrue
	jmp	@crackSHA1.176.@rotate_left.3.IfFalse
@crackSHA1.175.@rotate_left.4.IfTrue:
     mov                  rsi,                  r13
     and                  rsi,           2147483647
     mov                  rdi,                  rsi
     shl                  rdi,                    1
     mov                  rsi,                  r13
     shr                  rsi,                   31
     mov                  rbx,                  rsi
     and                  rbx,                    1
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@crackSHA1.173.@rotate_left.2.exit
	jmp	@crackSHA1.177.@rotate_left.5.IfExit
@crackSHA1.176.@rotate_left.3.IfFalse:
@crackSHA1.177.@rotate_left.5.IfExit:
     cmp                   r8,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.178.@rotate_left.7.IfTrue
	jmp	@crackSHA1.179.@rotate_left.6.IfFalse
@crackSHA1.178.@rotate_left.7.IfTrue:
     mov                  rsi,                  r13
     and                  rsi,                    1
     mov                  rdi,                  rsi
     shl                  rdi,                   31
     mov                  rsi,                  r13
     shr                  rsi,                    1
     mov                  rbx,                  rsi
     and                  rbx,           2147483647
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@crackSHA1.173.@rotate_left.2.exit
	jmp	@crackSHA1.180.@rotate_left.8.IfExit
@crackSHA1.179.@rotate_left.6.IfFalse:
@crackSHA1.180.@rotate_left.8.IfExit:
     mov                  r12,                   32
     sub                  r12,                   r8
     mov                  rsi,                    1
     mov                  rcx,                  r12
     shl                  rsi,                   cl
     mov                  rbx,                  rsi
     sub                  rbx,                    1
     mov                  rsi,                  r13
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rcx,                   r8
     shl                  rdi,                   cl
     mov                  rbx,                  r13
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                    1
     mov                  rcx,                   r8
     shl                  rsi,                   cl
     sub                  rsi,                    1
     and                  rbx,                  rsi
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
@crackSHA1.173.@rotate_left.2.exit:
     mov       qword[rbp-120],                  rsi
     mov                  rcx,       qword[rbp-104]
     mov       qword[rbp-112],                  rcx
     mov       qword[rbp-104],                   r9
     add        qword[rbp-64],                    1
@crackSHA1.88.@sha1.34.ForCon:
     cmp        qword[rbp-64],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.89.@sha1.33.ForBody
     mov                  rdi,        qword[rbp-80]
     mov                   r8,       qword[rbp-104]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov        qword[rbp-80],                  rsi
     mov                  rdi,        qword[rbp-88]
     mov                   r8,       qword[rbp-112]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov        qword[rbp-88],                  rsi
     mov                  rdi,        qword[rbp-96]
     mov                   r8,       qword[rbp-120]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov        qword[rbp-96],                  rsi
     mov                  rdi,                  r11
     mov                   r8,       qword[rbp-128]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  r11,                  rsi
     mov                  rdi,                  r15
     mov                   r8,                  r10
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  r15,                  rsi
     add        qword[rbp-56],                    1
@crackSHA1.80.@sha1.24.ForCon:
     mov                  rcx,        qword[rbp-56]
     cmp                  rcx,        qword[rbp-40]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.81.@sha1.23.ForBody
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,        qword[rbp-80]
     mov           qword[rsi],                  rcx
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,        qword[rbp-88]
     mov         qword[rsi+8],                  rcx
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,        qword[rbp-96]
     mov        qword[rsi+16],                  rcx
     mov                  rsi, qword[@outputBuffer]
     mov        qword[rsi+24],                  r11
     mov                  rsi, qword[@outputBuffer]
     mov        qword[rsi+32],                  r15
     mov                  r10, qword[@outputBuffer]
@crackSHA1.59.@sha1.2.exit:
     mov                  rsi,                  r10
     mov                   r8,                  rsi
     mov                  r12,         qword[rbp-8]
     mov                  rdi,                   r8
    push                  rsi
    push                  r10
    push                   r8
call	__size__
     pop                   r8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                  r12
    push                  rsi
    push                  r10
    push                   r8
call	__size__
     pop                   r8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.105.@array_equal.4.IfTrue
	jmp	@crackSHA1.106.@array_equal.3.IfFalse
@crackSHA1.105.@array_equal.4.IfTrue:
     mov                  rsi,                    0
	jmp	@crackSHA1.103.@array_equal.2.exit
	jmp	@crackSHA1.107.@array_equal.5.IfExit
@crackSHA1.106.@array_equal.3.IfFalse:
@crackSHA1.107.@array_equal.5.IfExit:
     mov                  r13,                    0
	jmp	@crackSHA1.109.@array_equal.9.ForCon
@crackSHA1.110.@array_equal.8.ForBody:
     mov                  rdi,                   r8
     mov                  rsi,                  r13
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,                  r12
     mov                  rsi,                  r13
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rdi]
     cmp                  rsi,           qword[rbx]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.111.@array_equal.12.IfTrue
	jmp	@crackSHA1.112.@array_equal.11.IfFalse
@crackSHA1.111.@array_equal.12.IfTrue:
     mov                  rsi,                    0
	jmp	@crackSHA1.103.@array_equal.2.exit
	jmp	@crackSHA1.113.@array_equal.13.IfExit
@crackSHA1.112.@array_equal.11.IfFalse:
@crackSHA1.113.@array_equal.13.IfExit:
     add                  r13,                    1
@crackSHA1.109.@array_equal.9.ForCon:
     mov                  rdi,                   r8
    push                  r10
    push                   r8
    push                  rsi
call	__size__
     pop                  rsi
     pop                   r8
     pop                  r10
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.110.@array_equal.8.ForBody
     mov                  rsi,                    1
@crackSHA1.103.@array_equal.2.exit:
     cmp                  rsi,                    1
	je	@crackSHA1.32.IfTrue
	jmp	@crackSHA1.31.IfFalse
@crackSHA1.32.IfTrue:
     mov                  r15,                    0
	jmp	@crackSHA1.37.ForCon
@crackSHA1.36.ForBody:
     mov                  rbx,  qword[@inputBuffer]
     mov                  rsi,                  r15
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@crackSHA1.118.@int2chr.6.cmp_and
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@crackSHA1.118.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.119.@int2chr.4.IfTrue
	jmp	@crackSHA1.120.@int2chr.3.IfFalse
@crackSHA1.119.@int2chr.4.IfTrue:
     sub                  rbx,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  rbx
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
	jmp	@crackSHA1.116.@int2chr.2.exit
	jmp	@crackSHA1.121.@int2chr.5.IfExit
@crackSHA1.120.@int2chr.3.IfFalse:
@crackSHA1.121.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@crackSHA1.116.@int2chr.2.exit:
     mov                  rdi,                  rsi
    push                  r10
call	print
     pop                  r10
     add                  r15,                    1
@crackSHA1.37.ForCon:
     cmp                  r15,        qword[rbp-24]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.36.ForBody
     mov                  rdi,         __const_str0
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
	jmp	@crackSHA1.2.exit
	jmp	@crackSHA1.33.IfExit
@crackSHA1.31.IfFalse:
@crackSHA1.33.IfExit:
     mov                  r12,  qword[@inputBuffer]
     mov                  rsi,        qword[rbp-24]
     sub                  rsi,                    1
     mov                   r8,                  rsi
	jmp	@crackSHA1.124.@nextText.6.ForCon
@crackSHA1.125.@nextText.5.ForBody:
     mov                  rdi,                  r12
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,                  r12
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     cmp                  rbx,                  122
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.126.@nextText.14.@nextLetter.4.IfTrue
	jmp	@crackSHA1.127.@nextText.15.@nextLetter.3.IfFalse
@crackSHA1.126.@nextText.14.@nextLetter.4.IfTrue:
     mov                  rsi,                   -1
	jmp	@crackSHA1.128.@nextText.12.@nextLetter.2.exit
	jmp	@crackSHA1.129.@nextText.16.@nextLetter.5.IfExit
@crackSHA1.127.@nextText.15.@nextLetter.3.IfFalse:
@crackSHA1.129.@nextText.16.@nextLetter.5.IfExit:
     cmp                  rbx,                   90
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.130.@nextText.17.@nextLetter.7.IfTrue
	jmp	@crackSHA1.131.@nextText.18.@nextLetter.6.IfFalse
@crackSHA1.130.@nextText.17.@nextLetter.7.IfTrue:
     mov                  rsi,                   97
	jmp	@crackSHA1.128.@nextText.12.@nextLetter.2.exit
	jmp	@crackSHA1.132.@nextText.19.@nextLetter.8.IfExit
@crackSHA1.131.@nextText.18.@nextLetter.6.IfFalse:
@crackSHA1.132.@nextText.19.@nextLetter.8.IfExit:
     cmp                  rbx,                   57
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.133.@nextText.20.@nextLetter.10.IfTrue
	jmp	@crackSHA1.134.@nextText.21.@nextLetter.9.IfFalse
@crackSHA1.133.@nextText.20.@nextLetter.10.IfTrue:
     mov                  rsi,                   65
	jmp	@crackSHA1.128.@nextText.12.@nextLetter.2.exit
	jmp	@crackSHA1.135.@nextText.22.@nextLetter.11.IfExit
@crackSHA1.134.@nextText.21.@nextLetter.9.IfFalse:
@crackSHA1.135.@nextText.22.@nextLetter.11.IfExit:
     mov                  rsi,                  rbx
     add                  rsi,                    1
@crackSHA1.128.@nextText.12.@nextLetter.2.exit:
     mov           qword[rdi],                  rsi
     mov                  rbx,                  r12
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                   -1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.136.@nextText.9.IfTrue
	jmp	@crackSHA1.137.@nextText.8.IfFalse
@crackSHA1.136.@nextText.9.IfTrue:
     mov                  rbx,                  r12
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                   48
	jmp	@crackSHA1.138.@nextText.10.IfExit
@crackSHA1.137.@nextText.8.IfFalse:
     mov                  rsi,                    1
	jmp	@crackSHA1.122.@nextText.2.exit
@crackSHA1.138.@nextText.10.IfExit:
     sub                   r8,                    1
@crackSHA1.124.@nextText.6.ForCon:
     cmp                   r8,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.125.@nextText.5.ForBody
     mov                  rsi,                    0
@crackSHA1.122.@nextText.2.exit:
     xor                  rsi,                    1
     cmp                  rsi,                    1
	je	@crackSHA1.40.IfTrue
	jmp	@crackSHA1.39.IfFalse
@crackSHA1.40.IfTrue:
	jmp	@crackSHA1.30.ForExit
	jmp	@crackSHA1.41.IfExit
@crackSHA1.39.IfFalse:
@crackSHA1.41.IfExit:
@crackSHA1.29.ForCon:
     mov                  rsi,                    1
     cmp                  rsi,                    1
	je	@crackSHA1.28.ForBody
@crackSHA1.30.ForExit:
     add        qword[rbp-24],                    1
@crackSHA1.19.ForCon:
     mov                  rcx,        qword[rbp-24]
     cmp                  rcx,        qword[rbp-16]
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.18.ForBody
     mov                  rdi,         __const_str3
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
@crackSHA1.2.exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                  144
     pop                  rbp
     ret
toStringHex:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
    push                  r12
    push                  r13
    push                  rbx
@toStringHex.1.enter:
     mov                  r12,                  rdi
     mov                   r9,         __const_str0
     mov                  r13,                   28
	jmp	@toStringHex.6.ForCon
@toStringHex.5.ForBody:
     mov                  rsi,                  r12
     mov                  rcx,                  r13
     shr                  rsi,                   cl
     and                  rsi,                   15
     mov                   r8,                  rsi
     cmp                   r8,                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@toStringHex.9.IfTrue
	jmp	@toStringHex.8.IfFalse
@toStringHex.9.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                   r8
     mov                  rbx,                  rsi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@toStringHex.14.@int2chr.6.cmp_and
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@toStringHex.14.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@toStringHex.15.@int2chr.4.IfTrue
	jmp	@toStringHex.16.@int2chr.3.IfFalse
@toStringHex.15.@int2chr.4.IfTrue:
     sub                  rbx,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  rbx
    push                   r9
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
	jmp	@toStringHex.12.@int2chr.2.exit
	jmp	@toStringHex.17.@int2chr.5.IfExit
@toStringHex.16.@int2chr.3.IfFalse:
@toStringHex.17.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@toStringHex.12.@int2chr.2.exit:
     mov                  rdi,                   r9
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     mov                   r9,                  rsi
	jmp	@toStringHex.10.IfExit
@toStringHex.8.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                   r8
     sub                  rsi,                   10
     mov                  rbx,                  rsi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@toStringHex.20.@int2chr.6.cmp_and
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@toStringHex.20.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@toStringHex.21.@int2chr.4.IfTrue
	jmp	@toStringHex.22.@int2chr.3.IfFalse
@toStringHex.21.@int2chr.4.IfTrue:
     sub                  rbx,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  rbx
    push                   r9
    push                  rsi
call	__substring__
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
	jmp	@toStringHex.18.@int2chr.2.exit
	jmp	@toStringHex.23.@int2chr.5.IfExit
@toStringHex.22.@int2chr.3.IfFalse:
@toStringHex.23.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@toStringHex.18.@int2chr.2.exit:
     mov                  rdi,                   r9
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r9,                  rsi
@toStringHex.10.IfExit:
     mov                  rsi,                  r13
     sub                  rsi,                    4
     mov                  r13,                  rsi
@toStringHex.6.ForCon:
     cmp                  r13,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
	je	@toStringHex.5.ForBody
     mov                  rax,                   r9
     pop                  rbx
     pop                  r13
     pop                  r12
     add                  rsp,                    8
     pop                  rbp
     ret
computeSHA1:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  120
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
@computeSHA1.1.enter:
     mov                  rbx,                  rdi
     mov                  r10,                    0
	jmp	@computeSHA1.6.ForCon
@computeSHA1.5.ForBody:
     mov                   r8,  qword[@inputBuffer]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                  r10
    push                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
call	__ord__
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov            qword[r8],                  rsi
     add                  r10,                    1
@computeSHA1.6.ForCon:
     mov                  rdi,                  rbx
    push                  rsi
    push                  r10
call	__length__
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  r10,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.5.ForBody
     mov                  rdi,                  rbx
    push                  rsi
     sub                  rsp,                    8
call	__length__
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,  qword[@inputBuffer]
     mov                   r9,                  rsi
     mov                  rsi,                   r9
     add                  rsi,                   64
     sub                  rsi,                   56
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     add                  rsi,                    1
     mov        qword[rbp-16],                  rsi
     mov                  rcx,        qword[rbp-16]
     cmp                  rcx,     qword[@MAXCHUNK]
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.16.@sha1.4.IfTrue
	jmp	@computeSHA1.17.@sha1.3.IfFalse
@computeSHA1.16.@sha1.4.IfTrue:
     mov                  rdi,         __const_str1
call	println
	jmp	@computeSHA1.14.@sha1.2.exit
	jmp	@computeSHA1.18.@sha1.5.IfExit
@computeSHA1.17.@sha1.3.IfFalse:
@computeSHA1.18.@sha1.5.IfExit:
     mov        qword[rbp-32],                    0
	jmp	@computeSHA1.20.@sha1.9.ForCon
@computeSHA1.21.@sha1.8.ForBody:
     mov        qword[rbp-40],                    0
	jmp	@computeSHA1.23.@sha1.14.ForCon
@computeSHA1.24.@sha1.13.ForBody:
     mov                  rdi,       qword[@chunks]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov           qword[rdi],                    0
     add        qword[rbp-40],                    1
@computeSHA1.23.@sha1.14.ForCon:
     cmp        qword[rbp-40],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.24.@sha1.13.ForBody
     add        qword[rbp-32],                    1
@computeSHA1.20.@sha1.9.ForCon:
     mov                  rcx,        qword[rbp-32]
     cmp                  rcx,        qword[rbp-16]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.21.@sha1.8.ForBody
     mov        qword[rbp-32],                    0
	jmp	@computeSHA1.30.@sha1.19.ForCon
@computeSHA1.31.@sha1.18.ForBody:
     mov                  rsi,        qword[rbp-32]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,       qword[@chunks]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,        qword[rbp-32]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  r13,           qword[rdi]
     shl                  rsi,                    3
     add                  r13,                  rsi
     mov                  rsi,        qword[rbp-32]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,       qword[@chunks]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,        qword[rbp-32]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                   r8,           qword[rdi]
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  r12,                  rbx
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rdi,        qword[rbp-32]
     mov                  rax,                  rdi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                    3
     sub                  rsi,                  rdi
    imul                  rsi,                    8
     mov                  rdi,           qword[r12]
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rsi,            qword[r8]
      or                  rsi,                  rdi
     mov           qword[r13],                  rsi
     add        qword[rbp-32],                    1
@computeSHA1.30.@sha1.19.ForCon:
     cmp        qword[rbp-32],                   r9
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.31.@sha1.18.ForBody
     mov                  rsi,        qword[rbp-32]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-32]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  r12,           qword[rbx]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rsi,        qword[rbp-32]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-32]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,           qword[rbx]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[rbp-32]
     mov                  rax,                  rbx
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                    3
     sub                  rsi,                  rbx
    imul                  rsi,                    8
     mov                  rbx,                  128
     mov                  rcx,                  rsi
     shl                  rbx,                   cl
     mov                  rsi,           qword[rdi]
      or                  rsi,                  rbx
     mov           qword[r12],                  rsi
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                    1
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     mov       qword[rbx+120],                  rsi
     mov                  rsi,        qword[rbp-16]
     sub                  rsi,                    1
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shr                  rsi,                   29
     and                  rsi,                    7
     mov       qword[rbx+112],                  rsi
     mov        qword[rbp-56],           1732584193
     mov                  rsi,                43913
     mov                  rbx,                61389
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov        qword[rbp-64],                  rsi
     mov                  rsi,                56574
     mov                  rbx,                39098
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov        qword[rbp-72],                  rsi
     mov                  r11,            271733878
     mov                  rsi,                57840
     mov                  rbx,                50130
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  r15,                  rsi
     mov        qword[rbp-32],                    0
	jmp	@computeSHA1.35.@sha1.24.ForCon
@computeSHA1.36.@sha1.23.ForBody:
     mov        qword[rbp-40],                   16
	jmp	@computeSHA1.38.@sha1.29.ForCon
@computeSHA1.39.@sha1.28.ForBody:
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r9,           qword[rbx]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                   r9,                  rsi
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-40]
     sub                  rsi,                    3
     mov                  r12,           qword[rbx]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-40]
     sub                  rsi,                    8
     mov                  rdi,           qword[rbx]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,           qword[r12]
     xor                  rbx,           qword[rdi]
     mov                  rdi,       qword[@chunks]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,        qword[rbp-40]
     sub                  rsi,                   14
     mov                  rdi,           qword[rdi]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     xor                  rbx,           qword[rdi]
     mov                  rdi,       qword[@chunks]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,        qword[rbp-40]
     sub                  rsi,                   16
     mov                  rdi,           qword[rdi]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,           qword[rdi]
     mov                  r13,                  rsi
     mov                   r8,                    1
     cmp                   r8,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.83.@rotate_left.4.IfTrue
	jmp	@computeSHA1.84.@rotate_left.3.IfFalse
@computeSHA1.83.@rotate_left.4.IfTrue:
     mov                  rsi,                  r13
     and                  rsi,           2147483647
     mov                  rdi,                  rsi
     shl                  rdi,                    1
     mov                  rsi,                  r13
     shr                  rsi,                   31
     mov                  rbx,                  rsi
     and                  rbx,                    1
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@computeSHA1.81.@rotate_left.2.exit
	jmp	@computeSHA1.85.@rotate_left.5.IfExit
@computeSHA1.84.@rotate_left.3.IfFalse:
@computeSHA1.85.@rotate_left.5.IfExit:
     cmp                   r8,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.86.@rotate_left.7.IfTrue
	jmp	@computeSHA1.87.@rotate_left.6.IfFalse
@computeSHA1.86.@rotate_left.7.IfTrue:
     mov                  rsi,                  r13
     and                  rsi,                    1
     mov                  rdi,                  rsi
     shl                  rdi,                   31
     mov                  rsi,                  r13
     shr                  rsi,                    1
     mov                  rbx,                  rsi
     and                  rbx,           2147483647
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@computeSHA1.81.@rotate_left.2.exit
	jmp	@computeSHA1.88.@rotate_left.8.IfExit
@computeSHA1.87.@rotate_left.6.IfFalse:
@computeSHA1.88.@rotate_left.8.IfExit:
     mov                  r12,                   32
     sub                  r12,                   r8
     mov                  rsi,                    1
     mov                  rcx,                  r12
     shl                  rsi,                   cl
     mov                  rbx,                  rsi
     sub                  rbx,                    1
     mov                  rsi,                  r13
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rcx,                   r8
     shl                  rdi,                   cl
     mov                  rbx,                  r13
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                    1
     mov                  rcx,                   r8
     shl                  rsi,                   cl
     sub                  rsi,                    1
     and                  rbx,                  rsi
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
@computeSHA1.81.@rotate_left.2.exit:
     mov            qword[r9],                  rsi
     add        qword[rbp-40],                    1
@computeSHA1.38.@sha1.29.ForCon:
     cmp        qword[rbp-40],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.39.@sha1.28.ForBody
     mov                  rcx,        qword[rbp-56]
     mov        qword[rbp-80],                  rcx
     mov                  rcx,        qword[rbp-64]
     mov        qword[rbp-88],                  rcx
     mov                  rcx,        qword[rbp-72]
     mov        qword[rbp-96],                  rcx
     mov       qword[rbp-104],                  r11
     mov                  r10,                  r15
     mov        qword[rbp-40],                    0
	jmp	@computeSHA1.43.@sha1.34.ForCon
@computeSHA1.44.@sha1.33.ForBody:
     cmp        qword[rbp-40],                   20
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.45.@sha1.37.IfTrue
	jmp	@computeSHA1.46.@sha1.36.IfFalse
@computeSHA1.45.@sha1.37.IfTrue:
     mov                  rdi,        qword[rbp-88]
     and                  rdi,        qword[rbp-96]
     mov                  rsi,        qword[rbp-88]
     not                  rsi
     mov                  rbx,                  rsi
     and                  rbx,       qword[rbp-104]
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                   r9,           1518500249
	jmp	@computeSHA1.47.@sha1.38.IfExit
@computeSHA1.46.@sha1.36.IfFalse:
     cmp        qword[rbp-40],                   40
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.48.@sha1.40.IfTrue
	jmp	@computeSHA1.49.@sha1.39.IfFalse
@computeSHA1.48.@sha1.40.IfTrue:
     mov                  rsi,        qword[rbp-88]
     xor                  rsi,        qword[rbp-96]
     xor                  rsi,       qword[rbp-104]
     mov                  r14,                  rsi
     mov                   r9,           1859775393
	jmp	@computeSHA1.50.@sha1.41.IfExit
@computeSHA1.49.@sha1.39.IfFalse:
     cmp        qword[rbp-40],                   60
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.51.@sha1.43.IfTrue
	jmp	@computeSHA1.52.@sha1.42.IfFalse
@computeSHA1.51.@sha1.43.IfTrue:
     mov                  rsi,        qword[rbp-88]
     and                  rsi,        qword[rbp-96]
     mov                  rbx,        qword[rbp-88]
     and                  rbx,       qword[rbp-104]
      or                  rsi,                  rbx
     mov                  rbx,        qword[rbp-96]
     and                  rbx,       qword[rbp-104]
      or                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rsi,                48348
     mov                  rbx,                36635
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                   r9,                  rsi
	jmp	@computeSHA1.53.@sha1.44.IfExit
@computeSHA1.52.@sha1.42.IfFalse:
     mov                  rsi,        qword[rbp-88]
     xor                  rsi,        qword[rbp-96]
     xor                  rsi,       qword[rbp-104]
     mov                  r14,                  rsi
     mov                  rsi,                49622
     mov                  rbx,                51810
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                   r9,                  rsi
@computeSHA1.53.@sha1.44.IfExit:
@computeSHA1.50.@sha1.41.IfExit:
@computeSHA1.47.@sha1.38.IfExit:
     mov                  r13,        qword[rbp-80]
     mov                   r8,                    5
     cmp                   r8,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.95.@rotate_left.4.IfTrue
	jmp	@computeSHA1.96.@rotate_left.3.IfFalse
@computeSHA1.95.@rotate_left.4.IfTrue:
     mov                  rsi,                  r13
     and                  rsi,           2147483647
     mov                  rdi,                  rsi
     shl                  rdi,                    1
     mov                  rsi,                  r13
     shr                  rsi,                   31
     mov                  rbx,                  rsi
     and                  rbx,                    1
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@computeSHA1.93.@rotate_left.2.exit
	jmp	@computeSHA1.97.@rotate_left.5.IfExit
@computeSHA1.96.@rotate_left.3.IfFalse:
@computeSHA1.97.@rotate_left.5.IfExit:
     cmp                   r8,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.98.@rotate_left.7.IfTrue
	jmp	@computeSHA1.99.@rotate_left.6.IfFalse
@computeSHA1.98.@rotate_left.7.IfTrue:
     mov                  rsi,                  r13
     and                  rsi,                    1
     mov                  rdi,                  rsi
     shl                  rdi,                   31
     mov                  rsi,                  r13
     shr                  rsi,                    1
     mov                  rbx,                  rsi
     and                  rbx,           2147483647
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@computeSHA1.93.@rotate_left.2.exit
	jmp	@computeSHA1.100.@rotate_left.8.IfExit
@computeSHA1.99.@rotate_left.6.IfFalse:
@computeSHA1.100.@rotate_left.8.IfExit:
     mov                  r12,                   32
     sub                  r12,                   r8
     mov                  rsi,                    1
     mov                  rcx,                  r12
     shl                  rsi,                   cl
     mov                  rbx,                  rsi
     sub                  rbx,                    1
     mov                  rsi,                  r13
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rcx,                   r8
     shl                  rdi,                   cl
     mov                  rbx,                  r13
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                    1
     mov                  rcx,                   r8
     shl                  rsi,                   cl
     sub                  rsi,                    1
     and                  rbx,                  rsi
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
@computeSHA1.93.@rotate_left.2.exit:
     mov                  rdi,                  rsi
     mov                   r8,                  r10
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  r13,                  rsi
     mov                  rdi,                  r14
     mov                   r8,                   r9
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  rdi,                  r13
     mov                   r8,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  rbx,                  rsi
     mov                  rdi,       qword[@chunks]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  r12,           qword[rdi]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rdi,                  rbx
     mov                   r8,           qword[r12]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                   r9,                  rsi
     mov                  r10,       qword[rbp-104]
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-104],                  rcx
     mov                  r13,        qword[rbp-88]
     mov                   r8,                   30
     cmp                   r8,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.111.@rotate_left.4.IfTrue
	jmp	@computeSHA1.112.@rotate_left.3.IfFalse
@computeSHA1.111.@rotate_left.4.IfTrue:
     mov                  rsi,                  r13
     and                  rsi,           2147483647
     mov                  rdi,                  rsi
     shl                  rdi,                    1
     mov                  rsi,                  r13
     shr                  rsi,                   31
     mov                  rbx,                  rsi
     and                  rbx,                    1
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@computeSHA1.109.@rotate_left.2.exit
	jmp	@computeSHA1.113.@rotate_left.5.IfExit
@computeSHA1.112.@rotate_left.3.IfFalse:
@computeSHA1.113.@rotate_left.5.IfExit:
     cmp                   r8,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.114.@rotate_left.7.IfTrue
	jmp	@computeSHA1.115.@rotate_left.6.IfFalse
@computeSHA1.114.@rotate_left.7.IfTrue:
     mov                  rsi,                  r13
     and                  rsi,                    1
     mov                  rdi,                  rsi
     shl                  rdi,                   31
     mov                  rsi,                  r13
     shr                  rsi,                    1
     mov                  rbx,                  rsi
     and                  rbx,           2147483647
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@computeSHA1.109.@rotate_left.2.exit
	jmp	@computeSHA1.116.@rotate_left.8.IfExit
@computeSHA1.115.@rotate_left.6.IfFalse:
@computeSHA1.116.@rotate_left.8.IfExit:
     mov                  r12,                   32
     sub                  r12,                   r8
     mov                  rsi,                    1
     mov                  rcx,                  r12
     shl                  rsi,                   cl
     mov                  rbx,                  rsi
     sub                  rbx,                    1
     mov                  rsi,                  r13
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rcx,                   r8
     shl                  rdi,                   cl
     mov                  rbx,                  r13
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                    1
     mov                  rcx,                   r8
     shl                  rsi,                   cl
     sub                  rsi,                    1
     and                  rbx,                  rsi
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
@computeSHA1.109.@rotate_left.2.exit:
     mov        qword[rbp-96],                  rsi
     mov                  rcx,        qword[rbp-80]
     mov        qword[rbp-88],                  rcx
     mov        qword[rbp-80],                   r9
     add        qword[rbp-40],                    1
@computeSHA1.43.@sha1.34.ForCon:
     cmp        qword[rbp-40],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.44.@sha1.33.ForBody
     mov                  rdi,        qword[rbp-56]
     mov                   r8,        qword[rbp-80]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov        qword[rbp-56],                  rsi
     mov                  rdi,        qword[rbp-64]
     mov                   r8,        qword[rbp-88]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov        qword[rbp-64],                  rsi
     mov                  rdi,        qword[rbp-72]
     mov                   r8,        qword[rbp-96]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov        qword[rbp-72],                  rsi
     mov                  rdi,                  r11
     mov                   r8,       qword[rbp-104]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  r11,                  rsi
     mov                  rdi,                  r15
     mov                   r8,                  r10
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  r15,                  rsi
     add        qword[rbp-32],                    1
@computeSHA1.35.@sha1.24.ForCon:
     mov                  rcx,        qword[rbp-32]
     cmp                  rcx,        qword[rbp-16]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.36.@sha1.23.ForBody
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,        qword[rbp-56]
     mov           qword[rsi],                  rcx
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,        qword[rbp-64]
     mov         qword[rsi+8],                  rcx
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,        qword[rbp-72]
     mov        qword[rsi+16],                  rcx
     mov                  rsi, qword[@outputBuffer]
     mov        qword[rsi+24],                  r11
     mov                  rsi, qword[@outputBuffer]
     mov        qword[rsi+32],                  r15
     mov                  r12, qword[@outputBuffer]
@computeSHA1.14.@sha1.2.exit:
     mov                  r14,                  r12
     mov                  r10,                    0
	jmp	@computeSHA1.11.ForCon
@computeSHA1.10.ForBody:
     mov                  rbx,                  r14
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                   r9,         __const_str0
     mov                  r13,                   28
	jmp	@computeSHA1.60.@toStringHex.6.ForCon
@computeSHA1.61.@toStringHex.5.ForBody:
     mov                  rsi,                  rbx
     mov                  rcx,                  r13
     shr                  rsi,                   cl
     and                  rsi,                   15
     mov                   r8,                  rsi
     cmp                   r8,                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.62.@toStringHex.9.IfTrue
	jmp	@computeSHA1.63.@toStringHex.8.IfFalse
@computeSHA1.62.@toStringHex.9.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                   r8
     mov                  rdi,                  rsi
     cmp                  rdi,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@computeSHA1.64.@toStringHex.14.@int2chr.6.cmp_and
     cmp                  rdi,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@computeSHA1.64.@toStringHex.14.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.65.@toStringHex.15.@int2chr.4.IfTrue
	jmp	@computeSHA1.66.@toStringHex.16.@int2chr.3.IfFalse
@computeSHA1.65.@toStringHex.15.@int2chr.4.IfTrue:
     mov                  r12,                  rdi
     sub                  r12,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  r12
     mov                  rdx,                  r12
    push                  rsi
    push                   r9
    push                   r8
    push                  r10
call	__substring__
     pop                  r10
     pop                   r8
     pop                   r9
     pop                  rsi
     mov                  rsi,                  rax
	jmp	@computeSHA1.67.@toStringHex.12.@int2chr.2.exit
	jmp	@computeSHA1.68.@toStringHex.17.@int2chr.5.IfExit
@computeSHA1.66.@toStringHex.16.@int2chr.3.IfFalse:
@computeSHA1.68.@toStringHex.17.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@computeSHA1.67.@toStringHex.12.@int2chr.2.exit:
     mov                  rdi,                   r9
    push                  rsi
    push                   r8
    push                  r10
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  r10
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r9,                  rsi
	jmp	@computeSHA1.69.@toStringHex.10.IfExit
@computeSHA1.63.@toStringHex.8.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                   r8
     sub                  rsi,                   10
     mov                  rdi,                  rsi
     cmp                  rdi,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@computeSHA1.70.@toStringHex.20.@int2chr.6.cmp_and
     cmp                  rdi,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@computeSHA1.70.@toStringHex.20.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.71.@toStringHex.21.@int2chr.4.IfTrue
	jmp	@computeSHA1.72.@toStringHex.22.@int2chr.3.IfFalse
@computeSHA1.71.@toStringHex.21.@int2chr.4.IfTrue:
     mov                  r12,                  rdi
     sub                  r12,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  r12
     mov                  rdx,                  r12
    push                   r9
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
	jmp	@computeSHA1.73.@toStringHex.18.@int2chr.2.exit
	jmp	@computeSHA1.74.@toStringHex.23.@int2chr.5.IfExit
@computeSHA1.72.@toStringHex.22.@int2chr.3.IfFalse:
@computeSHA1.74.@toStringHex.23.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@computeSHA1.73.@toStringHex.18.@int2chr.2.exit:
     mov                  rdi,                   r9
    push                  rsi
    push                  r10
call	__string_connect__
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r9,                  rsi
@computeSHA1.69.@toStringHex.10.IfExit:
     mov                  rsi,                  r13
     sub                  rsi,                    4
     mov                  r13,                  rsi
@computeSHA1.60.@toStringHex.6.ForCon:
     cmp                  r13,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.61.@toStringHex.5.ForBody
     mov                  rsi,                   r9
     mov                  rdi,                  rsi
    push                  r10
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                  r10
     add                  r10,                    1
@computeSHA1.11.ForCon:
     mov                  rdi,                  r14
    push                  rsi
    push                  r10
call	__size__
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  r10,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.10.ForBody
     mov                  rdi,         __const_str0
call	println
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                  120
     pop                  rbp
     ret
sha1:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  120
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
@sha1.1.enter:
     mov                  rbx,                  rdi
     mov                   r8,                  rsi
     mov                  rsi,                   r8
     add                  rsi,                   64
     sub                  rsi,                   56
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     add                  rsi,                    1
     mov                   r9,                  rsi
     cmp                   r9,     qword[@MAXCHUNK]
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@sha1.4.IfTrue
	jmp	@sha1.3.IfFalse
@sha1.4.IfTrue:
     mov                  rdi,         __const_str1
call	println
	jmp	@sha1.2.exit
	jmp	@sha1.5.IfExit
@sha1.3.IfFalse:
@sha1.5.IfExit:
     mov        qword[rbp-16],                    0
	jmp	@sha1.9.ForCon
@sha1.8.ForBody:
     mov        qword[rbp-24],                    0
	jmp	@sha1.14.ForCon
@sha1.13.ForBody:
     mov                  rdi,       qword[@chunks]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     mov                  rsi,        qword[rbp-24]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov           qword[rdi],                    0
     add        qword[rbp-24],                    1
@sha1.14.ForCon:
     cmp        qword[rbp-24],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@sha1.13.ForBody
     add        qword[rbp-16],                    1
@sha1.9.ForCon:
     cmp        qword[rbp-16],                   r9
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@sha1.8.ForBody
     mov        qword[rbp-16],                    0
	jmp	@sha1.19.ForCon
@sha1.18.ForBody:
     mov                  rsi,        qword[rbp-16]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,       qword[@chunks]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,        qword[rbp-16]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  r14,           qword[rdi]
     shl                  rsi,                    3
     add                  r14,                  rsi
     mov                  rsi,        qword[rbp-16]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,       qword[@chunks]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,        qword[rbp-16]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  r13,           qword[rdi]
     shl                  rsi,                    3
     add                  r13,                  rsi
     mov                  r12,                  rbx
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rdi,        qword[rbp-16]
     mov                  rax,                  rdi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rsi,                    3
     sub                  rsi,                  rdi
    imul                  rsi,                    8
     mov                  rdi,           qword[r12]
     mov                  rcx,                  rsi
     shl                  rdi,                   cl
     mov                  rsi,           qword[r13]
      or                  rsi,                  rdi
     mov           qword[r14],                  rsi
     add        qword[rbp-16],                    1
@sha1.19.ForCon:
     cmp        qword[rbp-16],                   r8
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@sha1.18.ForBody
     mov                  rsi,        qword[rbp-16]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-16]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  r12,           qword[rbx]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rsi,        qword[rbp-16]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-16]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rdx
     mov                  rax,                  rsi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,           qword[rbx]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[rbp-16]
     mov                  rax,                  rbx
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                    3
     sub                  rsi,                  rbx
    imul                  rsi,                    8
     mov                  rbx,                  128
     mov                  rcx,                  rsi
     shl                  rbx,                   cl
     mov                  rsi,           qword[rdi]
      or                  rsi,                  rbx
     mov           qword[r12],                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r8
     shl                  rsi,                    3
     mov       qword[rbx+120],                  rsi
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r8
     shr                  rsi,                   29
     and                  rsi,                    7
     mov       qword[rbx+112],                  rsi
     mov        qword[rbp-40],           1732584193
     mov                  rsi,                43913
     mov                  rbx,                61389
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  r11,                  rsi
     mov                  rsi,                56574
     mov                  rbx,                39098
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  r15,                  rsi
     mov                  r10,            271733878
     mov                  rsi,                57840
     mov                  rbx,                50130
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                  r14,                  rsi
     mov        qword[rbp-16],                    0
	jmp	@sha1.24.ForCon
@sha1.23.ForBody:
     mov        qword[rbp-24],                   16
	jmp	@sha1.29.ForCon
@sha1.28.ForBody:
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rcx,           qword[rbx]
     mov        qword[rbp-48],                  rcx
     mov                  rsi,        qword[rbp-24]
     shl                  rsi,                    3
     mov                  rax,        qword[rbp-48]
     add                  rax,                  rsi
     mov        qword[rbp-48],                  rax
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-24]
     sub                  rsi,                    3
     mov                  r12,           qword[rbx]
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-24]
     sub                  rsi,                    8
     mov                  rdi,           qword[rbx]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,           qword[r12]
     xor                  rbx,           qword[rdi]
     mov                  rdi,       qword[@chunks]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,        qword[rbp-24]
     sub                  rsi,                   14
     mov                  rdi,           qword[rdi]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     xor                  rbx,           qword[rdi]
     mov                  rdi,       qword[@chunks]
     mov                  rsi,        qword[rbp-16]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,        qword[rbp-24]
     sub                  rsi,                   16
     mov                  rdi,           qword[rdi]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rsi,                  rbx
     xor                  rsi,           qword[rdi]
     mov                  r13,                  rsi
     mov                   r8,                    1
     cmp                   r8,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@sha1.54.@rotate_left.4.IfTrue
	jmp	@sha1.55.@rotate_left.3.IfFalse
@sha1.54.@rotate_left.4.IfTrue:
     mov                  rsi,                  r13
     and                  rsi,           2147483647
     mov                  rdi,                  rsi
     shl                  rdi,                    1
     mov                  rsi,                  r13
     shr                  rsi,                   31
     mov                  rbx,                  rsi
     and                  rbx,                    1
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@sha1.52.@rotate_left.2.exit
	jmp	@sha1.56.@rotate_left.5.IfExit
@sha1.55.@rotate_left.3.IfFalse:
@sha1.56.@rotate_left.5.IfExit:
     cmp                   r8,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@sha1.57.@rotate_left.7.IfTrue
	jmp	@sha1.58.@rotate_left.6.IfFalse
@sha1.57.@rotate_left.7.IfTrue:
     mov                  rsi,                  r13
     and                  rsi,                    1
     mov                  rdi,                  rsi
     shl                  rdi,                   31
     mov                  rsi,                  r13
     shr                  rsi,                    1
     mov                  rbx,                  rsi
     and                  rbx,           2147483647
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@sha1.52.@rotate_left.2.exit
	jmp	@sha1.59.@rotate_left.8.IfExit
@sha1.58.@rotate_left.6.IfFalse:
@sha1.59.@rotate_left.8.IfExit:
     mov                  r12,                   32
     sub                  r12,                   r8
     mov                  rsi,                    1
     mov                  rcx,                  r12
     shl                  rsi,                   cl
     mov                  rbx,                  rsi
     sub                  rbx,                    1
     mov                  rsi,                  r13
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rcx,                   r8
     shl                  rdi,                   cl
     mov                  rbx,                  r13
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                    1
     mov                  rcx,                   r8
     shl                  rsi,                   cl
     sub                  rsi,                    1
     and                  rbx,                  rsi
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
@sha1.52.@rotate_left.2.exit:
     mov                  rdx,        qword[rbp-48]
     mov           qword[rdx],                  rsi
     add        qword[rbp-24],                    1
@sha1.29.ForCon:
     cmp        qword[rbp-24],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@sha1.28.ForBody
     mov                  rcx,        qword[rbp-40]
     mov        qword[rbp-56],                  rcx
     mov        qword[rbp-64],                  r11
     mov        qword[rbp-72],                  r15
     mov        qword[rbp-80],                  r10
     mov        qword[rbp-88],                  r14
     mov        qword[rbp-24],                    0
	jmp	@sha1.34.ForCon
@sha1.33.ForBody:
     cmp        qword[rbp-24],                   20
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@sha1.37.IfTrue
	jmp	@sha1.36.IfFalse
@sha1.37.IfTrue:
     mov                  rdi,        qword[rbp-64]
     and                  rdi,        qword[rbp-72]
     mov                  rsi,        qword[rbp-64]
     not                  rsi
     mov                  rbx,                  rsi
     and                  rbx,        qword[rbp-80]
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
     mov        qword[rbp-96],                  rsi
     mov       qword[rbp-104],           1518500249
	jmp	@sha1.38.IfExit
@sha1.36.IfFalse:
     cmp        qword[rbp-24],                   40
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@sha1.40.IfTrue
	jmp	@sha1.39.IfFalse
@sha1.40.IfTrue:
     mov                  rsi,        qword[rbp-64]
     xor                  rsi,        qword[rbp-72]
     xor                  rsi,        qword[rbp-80]
     mov        qword[rbp-96],                  rsi
     mov       qword[rbp-104],           1859775393
	jmp	@sha1.41.IfExit
@sha1.39.IfFalse:
     cmp        qword[rbp-24],                   60
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@sha1.43.IfTrue
	jmp	@sha1.42.IfFalse
@sha1.43.IfTrue:
     mov                  rsi,        qword[rbp-64]
     and                  rsi,        qword[rbp-72]
     mov                  rbx,        qword[rbp-64]
     and                  rbx,        qword[rbp-80]
      or                  rsi,                  rbx
     mov                  rbx,        qword[rbp-72]
     and                  rbx,        qword[rbp-80]
      or                  rsi,                  rbx
     mov        qword[rbp-96],                  rsi
     mov                  rsi,                48348
     mov                  rbx,                36635
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov       qword[rbp-104],                  rsi
	jmp	@sha1.44.IfExit
@sha1.42.IfFalse:
     mov                  rsi,        qword[rbp-64]
     xor                  rsi,        qword[rbp-72]
     xor                  rsi,        qword[rbp-80]
     mov        qword[rbp-96],                  rsi
     mov                  rsi,                49622
     mov                  rbx,                51810
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov       qword[rbp-104],                  rsi
@sha1.44.IfExit:
@sha1.41.IfExit:
@sha1.38.IfExit:
     mov                  r13,        qword[rbp-56]
     mov                   r8,                    5
     cmp                   r8,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@sha1.66.@rotate_left.4.IfTrue
	jmp	@sha1.67.@rotate_left.3.IfFalse
@sha1.66.@rotate_left.4.IfTrue:
     mov                  rsi,                  r13
     and                  rsi,           2147483647
     mov                  rdi,                  rsi
     shl                  rdi,                    1
     mov                  rsi,                  r13
     shr                  rsi,                   31
     mov                  rbx,                  rsi
     and                  rbx,                    1
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@sha1.64.@rotate_left.2.exit
	jmp	@sha1.68.@rotate_left.5.IfExit
@sha1.67.@rotate_left.3.IfFalse:
@sha1.68.@rotate_left.5.IfExit:
     cmp                   r8,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@sha1.69.@rotate_left.7.IfTrue
	jmp	@sha1.70.@rotate_left.6.IfFalse
@sha1.69.@rotate_left.7.IfTrue:
     mov                  rsi,                  r13
     and                  rsi,                    1
     mov                  rdi,                  rsi
     shl                  rdi,                   31
     mov                  rsi,                  r13
     shr                  rsi,                    1
     mov                  rbx,                  rsi
     and                  rbx,           2147483647
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@sha1.64.@rotate_left.2.exit
	jmp	@sha1.71.@rotate_left.8.IfExit
@sha1.70.@rotate_left.6.IfFalse:
@sha1.71.@rotate_left.8.IfExit:
     mov                  r12,                   32
     sub                  r12,                   r8
     mov                  rsi,                    1
     mov                  rcx,                  r12
     shl                  rsi,                   cl
     mov                  rbx,                  rsi
     sub                  rbx,                    1
     mov                  rsi,                  r13
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rcx,                   r8
     shl                  rdi,                   cl
     mov                  rbx,                  r13
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                    1
     mov                  rcx,                   r8
     shl                  rsi,                   cl
     sub                  rsi,                    1
     and                  rbx,                  rsi
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
@sha1.64.@rotate_left.2.exit:
     mov                  rdi,                  rsi
     mov                   r8,        qword[rbp-88]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  r13,                  rsi
     mov                  rdi,        qword[rbp-96]
     mov                   r8,       qword[rbp-104]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  rdi,                  r13
     mov                   r8,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  rdi,       qword[@chunks]
     mov                  rbx,        qword[rbp-16]
     shl                  rbx,                    3
     add                  rdi,                  rbx
     mov                  r12,           qword[rdi]
     mov                  rbx,        qword[rbp-24]
     shl                  rbx,                    3
     add                  r12,                  rbx
     mov                  rdi,                  rsi
     mov                   r8,           qword[r12]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov       qword[rbp-112],                  rsi
     mov                  rcx,        qword[rbp-80]
     mov        qword[rbp-88],                  rcx
     mov                  rcx,        qword[rbp-72]
     mov        qword[rbp-80],                  rcx
     mov                  r13,        qword[rbp-64]
     mov                   r8,                   30
     cmp                   r8,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@sha1.82.@rotate_left.4.IfTrue
	jmp	@sha1.83.@rotate_left.3.IfFalse
@sha1.82.@rotate_left.4.IfTrue:
     mov                  rsi,                  r13
     and                  rsi,           2147483647
     mov                  rdi,                  rsi
     shl                  rdi,                    1
     mov                  rsi,                  r13
     shr                  rsi,                   31
     mov                  rbx,                  rsi
     and                  rbx,                    1
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@sha1.80.@rotate_left.2.exit
	jmp	@sha1.84.@rotate_left.5.IfExit
@sha1.83.@rotate_left.3.IfFalse:
@sha1.84.@rotate_left.5.IfExit:
     cmp                   r8,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@sha1.85.@rotate_left.7.IfTrue
	jmp	@sha1.86.@rotate_left.6.IfFalse
@sha1.85.@rotate_left.7.IfTrue:
     mov                  rsi,                  r13
     and                  rsi,                    1
     mov                  rdi,                  rsi
     shl                  rdi,                   31
     mov                  rsi,                  r13
     shr                  rsi,                    1
     mov                  rbx,                  rsi
     and                  rbx,           2147483647
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@sha1.80.@rotate_left.2.exit
	jmp	@sha1.87.@rotate_left.8.IfExit
@sha1.86.@rotate_left.6.IfFalse:
@sha1.87.@rotate_left.8.IfExit:
     mov                  r12,                   32
     sub                  r12,                   r8
     mov                  rsi,                    1
     mov                  rcx,                  r12
     shl                  rsi,                   cl
     mov                  rbx,                  rsi
     sub                  rbx,                    1
     mov                  rsi,                  r13
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rcx,                   r8
     shl                  rdi,                   cl
     mov                  rbx,                  r13
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                    1
     mov                  rcx,                   r8
     shl                  rsi,                   cl
     sub                  rsi,                    1
     and                  rbx,                  rsi
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
@sha1.80.@rotate_left.2.exit:
     mov        qword[rbp-72],                  rsi
     mov                  rcx,        qword[rbp-56]
     mov        qword[rbp-64],                  rcx
     mov                  rcx,       qword[rbp-112]
     mov        qword[rbp-56],                  rcx
     add        qword[rbp-24],                    1
@sha1.34.ForCon:
     cmp        qword[rbp-24],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@sha1.33.ForBody
     mov                  rdi,        qword[rbp-40]
     mov                   r8,        qword[rbp-56]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov        qword[rbp-40],                  rsi
     mov                  rdi,                  r11
     mov                   r8,        qword[rbp-64]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  r11,                  rsi
     mov                  rdi,                  r15
     mov                   r8,        qword[rbp-72]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  r15,                  rsi
     mov                  rdi,                  r10
     mov                   r8,        qword[rbp-80]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  r10,                  rsi
     mov                  rdi,                  r14
     mov                   r8,        qword[rbp-88]
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rbx,                   r8
     and                  rbx,                65535
     add                  rsi,                  rbx
     mov                  r12,                  rsi
     mov                  rsi,                  rdi
     shr                  rsi,                   16
     mov                  rdi,                  rsi
     and                  rdi,                65535
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rbx,                  rsi
     and                  rbx,                65535
     mov                  rsi,                  rdi
     add                  rsi,                  rbx
     mov                  rbx,                  r12
     shr                  rbx,                   16
     add                  rsi,                  rbx
     and                  rsi,                65535
     shl                  rsi,                   16
     mov                  rbx,                  r12
     and                  rbx,                65535
      or                  rsi,                  rbx
     mov                  r14,                  rsi
     add        qword[rbp-16],                    1
@sha1.24.ForCon:
     cmp        qword[rbp-16],                   r9
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@sha1.23.ForBody
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,        qword[rbp-40]
     mov           qword[rsi],                  rcx
     mov                  rsi, qword[@outputBuffer]
     mov         qword[rsi+8],                  r11
     mov                  rsi, qword[@outputBuffer]
     mov        qword[rsi+16],                  r15
     mov                  rsi, qword[@outputBuffer]
     mov        qword[rsi+24],                  r10
     mov                  rsi, qword[@outputBuffer]
     mov        qword[rsi+32],                  r14
     mov                  rax, qword[@outputBuffer]
@sha1.2.exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                  120
     pop                  rbp
     ret
int2chr:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
    push                  rbx
@int2chr.1.enter:
     mov                  rbx,                  rdi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@int2chr.6.cmp_and
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@int2chr.4.IfTrue
	jmp	@int2chr.3.IfFalse
@int2chr.4.IfTrue:
     sub                  rbx,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  rbx
    push                  rsi
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rax,                  rsi
	jmp	@int2chr.2.exit
	jmp	@int2chr.5.IfExit
@int2chr.3.IfFalse:
@int2chr.5.IfExit:
     mov                  rax,         __const_str0
@int2chr.2.exit:
     pop                  rbx
     add                  rsp,                    8
     pop                  rbp
     ret
array_equal:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  r13
    push                  rbx
@array_equal.1.enter:
     mov                   r8,                  rdi
     mov                  r12,                  rsi
     mov                  rdi,                   r8
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                  r12
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@array_equal.4.IfTrue
	jmp	@array_equal.3.IfFalse
@array_equal.4.IfTrue:
     mov                  rax,                    0
	jmp	@array_equal.2.exit
	jmp	@array_equal.5.IfExit
@array_equal.3.IfFalse:
@array_equal.5.IfExit:
     mov                  r13,                    0
	jmp	@array_equal.9.ForCon
@array_equal.8.ForBody:
     mov                  rdi,                   r8
     mov                  rsi,                  r13
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,                  r12
     mov                  rsi,                  r13
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rdi]
     cmp                  rsi,           qword[rbx]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@array_equal.12.IfTrue
	jmp	@array_equal.11.IfFalse
@array_equal.12.IfTrue:
     mov                  rax,                    0
	jmp	@array_equal.2.exit
	jmp	@array_equal.13.IfExit
@array_equal.11.IfFalse:
@array_equal.13.IfExit:
     add                  r13,                    1
@array_equal.9.ForCon:
     mov                  rdi,                   r8
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r13,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@array_equal.8.ForBody
     mov                  rax,                    1
@array_equal.2.exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     pop                  rbp
     ret
rotate_left:
    push                  rbp
     mov                  rbp,                  rsp
@rotate_left.1.enter:
     mov                  r11,                  rdi
     mov                  r10,                  rsi
     cmp                  r10,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@rotate_left.4.IfTrue
	jmp	@rotate_left.3.IfFalse
@rotate_left.4.IfTrue:
     mov                  rsi,                  r11
     and                  rsi,           2147483647
     mov                   r8,                  rsi
     shl                   r8,                    1
     mov                  rsi,                  r11
     shr                  rsi,                   31
     mov                  rdi,                  rsi
     and                  rdi,                    1
     mov                  rsi,                   r8
      or                  rsi,                  rdi
     mov                  rax,                  rsi
	jmp	@rotate_left.2.exit
	jmp	@rotate_left.5.IfExit
@rotate_left.3.IfFalse:
@rotate_left.5.IfExit:
     cmp                  r10,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@rotate_left.7.IfTrue
	jmp	@rotate_left.6.IfFalse
@rotate_left.7.IfTrue:
     mov                  rsi,                  r11
     and                  rsi,                    1
     mov                   r8,                  rsi
     shl                   r8,                   31
     mov                  rsi,                  r11
     shr                  rsi,                    1
     mov                  rdi,                  rsi
     and                  rdi,           2147483647
     mov                  rsi,                   r8
      or                  rsi,                  rdi
     mov                  rax,                  rsi
	jmp	@rotate_left.2.exit
	jmp	@rotate_left.8.IfExit
@rotate_left.6.IfFalse:
@rotate_left.8.IfExit:
     mov                   r9,                   32
     sub                   r9,                  r10
     mov                  rsi,                    1
     mov                  rcx,                   r9
     shl                  rsi,                   cl
     mov                  rdi,                  rsi
     sub                  rdi,                    1
     mov                  rsi,                  r11
     and                  rsi,                  rdi
     mov                   r8,                  rsi
     mov                  rcx,                  r10
     shl                   r8,                   cl
     mov                  rdi,                  r11
     mov                  rcx,                   r9
     shr                  rdi,                   cl
     mov                  rsi,                    1
     mov                  rcx,                  r10
     shl                  rsi,                   cl
     sub                  rsi,                    1
     and                  rdi,                  rsi
     mov                  rsi,                   r8
      or                  rsi,                  rdi
     mov                  rax,                  rsi
@rotate_left.2.exit:
     pop                  rbp
     ret
lohi:
    push                  rbp
     mov                  rbp,                  rsp
@lohi.1.enter:
     mov                   r8,                  rsi
     shl                   r8,                   16
     mov                  rsi,                  rdi
      or                  rsi,                   r8
     mov                  rax,                  rsi
     pop                  rbp
     ret
nextLetter:
    push                  rbp
     mov                  rbp,                  rsp
     mov        qword[rbp-16],                  rdi
     cmp                  rdi,                    0
      jl @nextLetter_purity_checkin_out
     cmp                  rdi,                  150
     jnl @nextLetter_purity_checkin_out
     mov                  rdx,         @@nextLetter
     mov                  rcx,        qword[rbp-16]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov                  rdx,           qword[rdx]
     cmp                  rdx,          -1887415157
      je @nextLetter_purity_checkin_out
     mov                  rax,                  rdx
     pop                  rbp
     ret
@nextLetter_purity_checkin_out:
     sub                  rsp,                   16
@nextLetter.1.enter:
     cmp                  rdi,                  122
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@nextLetter.4.IfTrue
	jmp	@nextLetter.3.IfFalse
@nextLetter.4.IfTrue:
     mov                  rax,                   -1
	jmp	@nextLetter.2.exit
	jmp	@nextLetter.5.IfExit
@nextLetter.3.IfFalse:
@nextLetter.5.IfExit:
     cmp                  rdi,                   90
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@nextLetter.7.IfTrue
	jmp	@nextLetter.6.IfFalse
@nextLetter.7.IfTrue:
     mov                  rax,                   97
	jmp	@nextLetter.2.exit
	jmp	@nextLetter.8.IfExit
@nextLetter.6.IfFalse:
@nextLetter.8.IfExit:
     cmp                  rdi,                   57
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@nextLetter.10.IfTrue
	jmp	@nextLetter.9.IfFalse
@nextLetter.10.IfTrue:
     mov                  rax,                   65
	jmp	@nextLetter.2.exit
	jmp	@nextLetter.11.IfExit
@nextLetter.9.IfFalse:
@nextLetter.11.IfExit:
     mov                  rsi,                  rdi
     add                  rsi,                    1
     mov                  rax,                  rsi
@nextLetter.2.exit:
     add                  rsp,                   16
     mov                  rdi,                  rax
     cmp        qword[rbp-16],                    0
      jl @nextLetter_purity_addition_out
     cmp        qword[rbp-16],                  150
     jnl @nextLetter_purity_addition_out
     mov                  rdx,         @@nextLetter
     mov                  rcx,        qword[rbp-16]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov           qword[rdx],                  rax
     mov                  rax,                  rdi
     pop                  rbp
     ret
@nextLetter_purity_addition_out:
     pop                  rbp
     ret


 section                 .bss
@asciiTable:
  	resq 		1
@MAXCHUNK:
  	resq 		1
@MAXLENGTH:
  	resq 		1
@chunks:
  	resq 		1
@inputBuffer:
  	resq 		1
@outputBuffer:
  	resq 		1
@@nextLetter:
  	resq 		1


 section                .data
      dq                    0
__const_str0:
      db "",0
      dq                   95
__const_str4:
      db " !",34,"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[",92,"]^_`abcdefghijklmnopqrstuvwxyz{|}~",0
      dq                   18
__const_str1:
      db "nChunk > MAXCHUNK!",0
      dq                   13
__const_str2:
      db "Invalid input",0
      dq                   10
__const_str3:
      db "Not Found!",0






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



