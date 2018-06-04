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
     mov                  r10,                  rdi
     sub                  rsi,                    1
     mov                   r9,                  rsi
	jmp	@nextText.5.ForCon
@nextText.4.ForBody:
     mov                   r8,                  r10
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rdi,                  r10
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rdi,           qword[rdi]
     cmp                  rdi,                  122
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@nextText.13.@nextLetter.4.IfTrue
	jmp	@nextText.14.@nextLetter.3.IfFalse
@nextText.13.@nextLetter.4.IfTrue:
     mov                  rsi,                   -1
	jmp	@nextText.11.@nextLetter.2.exit
	jmp	@nextText.15.@nextLetter.5.IfExit
@nextText.14.@nextLetter.3.IfFalse:
@nextText.15.@nextLetter.5.IfExit:
     cmp                  rdi,                   90
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@nextText.16.@nextLetter.7.IfTrue
	jmp	@nextText.17.@nextLetter.6.IfFalse
@nextText.16.@nextLetter.7.IfTrue:
     mov                  rsi,                   97
	jmp	@nextText.11.@nextLetter.2.exit
	jmp	@nextText.18.@nextLetter.8.IfExit
@nextText.17.@nextLetter.6.IfFalse:
@nextText.18.@nextLetter.8.IfExit:
     cmp                  rdi,                   57
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@nextText.19.@nextLetter.10.IfTrue
	jmp	@nextText.20.@nextLetter.9.IfFalse
@nextText.19.@nextLetter.10.IfTrue:
     mov                  rsi,                   65
	jmp	@nextText.11.@nextLetter.2.exit
	jmp	@nextText.21.@nextLetter.11.IfExit
@nextText.20.@nextLetter.9.IfFalse:
@nextText.21.@nextLetter.11.IfExit:
     mov                  rsi,                  rdi
     add                  rsi,                    1
@nextText.11.@nextLetter.2.exit:
     mov            qword[r8],                  rsi
     mov                  rdi,                  r10
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rdi,                  rsi
     cmp           qword[rdi],                   -1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@nextText.8.IfTrue
	jmp	@nextText.7.IfFalse
@nextText.8.IfTrue:
     mov                  rdi,                  r10
     mov                  rsi,                   r9
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov           qword[rdi],                   48
	jmp	@nextText.9.IfExit
@nextText.7.IfFalse:
     mov                  rax,                    1
	jmp	@nextText.2.exit
@nextText.9.IfExit:
     mov                  rsi,                   r9
     sub                   r9,                    1
@nextText.5.ForCon:
     cmp                   r9,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
	je	@nextText.4.ForBody
     mov                  rax,                    0
@nextText.2.exit:
     pop                  rbp
     ret
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   48
    push                  r12
    push                  rbx
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     mov                  rdi,                  150
    call               malloc
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
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
     mov                  rdi,     qword[@MAXCHUNK]
     mov                  rsi,     qword[@MAXCHUNK]
     add                  rdi,                    1
     shl                  rdi,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
    call               malloc
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  r12,                  rax
     mov           qword[r12],                  rsi
     add                  r12,                    8
     sub                  rdi,                    8
     mov                  rbx,                  r12
     mov                  r11,                  r12
     add                  r11,                  rdi
@main.17.Allocate2:
     mov                  rdi,                   80
     mov                  rsi,                   80
     add                  rdi,                    1
     shl                  rdi,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
    call               malloc
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  r10,                  rax
     mov           qword[r10],                  rsi
     add                  r10,                    8
     sub                  rdi,                    8
     mov           qword[rbx],                  r10
     add                  rbx,                    8
     cmp                  rbx,                  r11
	jl	@main.17.Allocate2
     mov       qword[@chunks],                  r12
     mov                  rdi,    qword[@MAXLENGTH]
     mov                  rsi,    qword[@MAXLENGTH]
     add                  rdi,                    1
     shl                  rdi,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
    call               malloc
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                   r9,                  rax
     mov            qword[r9],                  rsi
     add                   r9,                    8
     sub                  rdi,                    8
     mov  qword[@inputBuffer],                   r9
     mov                  rdi,                    5
     mov                  rsi,                    5
     add                  rdi,                    1
     shl                  rdi,                    3
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
    call               malloc
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                   r8,                  rax
     mov            qword[r8],                  rsi
     add                   r8,                    8
     sub                  rdi,                    8
     mov qword[@outputBuffer],                   r8
     pop                  rbx
     pop                  r12
     add                  rsp,                   48
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                  256
    push                  rbx
    push                  r12
    push                  r14
    push                  r13
    push                  r15
@main.1.enter:
	jmp	@main.5.ForCon
@main.4.ForBody:
    push                  rsi
call	getInt
     pop                  rsi
     mov                  rsi,                  rax
     mov         qword[rbp-8],                  rsi
     cmp         qword[rbp-8],                    0
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.8.IfTrue
	jmp	@main.7.IfFalse
@main.8.IfTrue:
	jmp	@main.6.ForExit
	jmp	@main.9.IfExit
@main.7.IfFalse:
@main.9.IfExit:
     cmp         qword[rbp-8],                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.11.IfTrue
	jmp	@main.10.IfFalse
@main.11.IfTrue:
    push                  rsi
call	getString
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                  r10,                    0
	jmp	@main.20.@computeSHA1.5.ForCon
@main.21.@computeSHA1.4.ForBody:
     mov                  rbx,  qword[@inputBuffer]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,                  r12
     mov                  rsi,                  r10
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	__ord__
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov           qword[rbx],                  rsi
     mov                  rsi,                  r10
     add                  r10,                    1
@main.20.@computeSHA1.5.ForCon:
     mov                  rdi,                  r12
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	__length__
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     cmp                  r10,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.21.@computeSHA1.4.ForBody
     mov                  rdi,                  r12
    push                  rsi
call	__length__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r13,  qword[@inputBuffer]
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
	je	@main.50.@sha1.4.IfTrue
	jmp	@main.51.@sha1.3.IfFalse
@main.50.@sha1.4.IfTrue:
     mov                  rdi,         __const_str1
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
	jmp	@main.48.@sha1.2.exit
	jmp	@main.52.@sha1.5.IfExit
@main.51.@sha1.3.IfFalse:
@main.52.@sha1.5.IfExit:
     mov        qword[rbp-40],                    0
	jmp	@main.53.@sha1.8.ForCon
@main.54.@sha1.7.ForBody:
     mov        qword[rbp-48],                    0
	jmp	@main.55.@sha1.12.ForCon
@main.56.@sha1.11.ForBody:
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-48]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     mov                  rsi,        qword[rbp-48]
     add        qword[rbp-48],                    1
@main.55.@sha1.12.ForCon:
     cmp        qword[rbp-48],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.56.@sha1.11.ForBody
     mov                  rsi,        qword[rbp-40]
     add        qword[rbp-40],                    1
@main.53.@sha1.8.ForCon:
     mov                  rcx,        qword[rbp-40]
     cmp                  rcx,        qword[rbp-24]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.54.@sha1.7.ForBody
     mov        qword[rbp-40],                    0
	jmp	@main.57.@sha1.16.ForCon
@main.58.@sha1.15.ForBody:
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
     mov                   r8,           qword[rbx]
     shl                  rsi,                    3
     add                   r8,                  rsi
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
     mov                  rdi,                  r13
     mov                  rsi,        qword[rbp-40]
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
     mov                  rbx,           qword[rdi]
     mov                  rcx,                  rsi
     shl                  rbx,                   cl
     mov                  rsi,           qword[r12]
      or                  rsi,                  rbx
     mov            qword[r8],                  rsi
     mov                  rsi,        qword[rbp-40]
     add        qword[rbp-40],                    1
@main.57.@sha1.16.ForCon:
     cmp        qword[rbp-40],                   r9
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.58.@sha1.15.ForBody
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
     mov                  rsi,           qword[rbx]
     mov                  rbx,                   r9
     shl                  rbx,                    3
     mov       qword[rsi+120],                  rbx
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
     mov        qword[rbp-88],            271733878
     mov                  rsi,                57840
     mov                  rbx,                50130
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov        qword[rbp-96],                  rsi
     mov        qword[rbp-40],                    0
	jmp	@main.59.@sha1.20.ForCon
@main.60.@sha1.19.ForBody:
     mov        qword[rbp-48],                   16
	jmp	@main.61.@sha1.24.ForCon
@main.62.@sha1.23.ForBody:
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r9,           qword[rbx]
     mov                  rsi,        qword[rbp-48]
     shl                  rsi,                    3
     add                   r9,                  rsi
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-48]
     sub                  rsi,                    3
     mov                  rdi,           qword[rbx]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-48]
     sub                  rsi,                    8
     mov                  rbx,           qword[rbx]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rdi]
     xor                  rdi,           qword[rbx]
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-48]
     sub                  rsi,                   14
     mov                  rbx,           qword[rbx]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     xor                  rdi,           qword[rbx]
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-48]
     sub                  rsi,                   16
     mov                  rbx,           qword[rbx]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,                  rdi
     xor                  rsi,           qword[rbx]
     mov                  r13,                  rsi
     mov                   r8,                    1
     cmp                   r8,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.63.@sha1.48.@rotate_left.4.IfTrue
	jmp	@main.64.@sha1.49.@rotate_left.3.IfFalse
@main.63.@sha1.48.@rotate_left.4.IfTrue:
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
	jmp	@main.65.@sha1.46.@rotate_left.2.exit
	jmp	@main.66.@sha1.50.@rotate_left.5.IfExit
@main.64.@sha1.49.@rotate_left.3.IfFalse:
@main.66.@sha1.50.@rotate_left.5.IfExit:
     cmp                   r8,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.67.@sha1.51.@rotate_left.7.IfTrue
	jmp	@main.68.@sha1.52.@rotate_left.6.IfFalse
@main.67.@sha1.51.@rotate_left.7.IfTrue:
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
	jmp	@main.65.@sha1.46.@rotate_left.2.exit
	jmp	@main.69.@sha1.53.@rotate_left.8.IfExit
@main.68.@sha1.52.@rotate_left.6.IfFalse:
@main.69.@sha1.53.@rotate_left.8.IfExit:
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
@main.65.@sha1.46.@rotate_left.2.exit:
     mov            qword[r9],                  rsi
     mov                  rsi,        qword[rbp-48]
     add        qword[rbp-48],                    1
@main.61.@sha1.24.ForCon:
     cmp        qword[rbp-48],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.62.@sha1.23.ForBody
     mov                  r15,        qword[rbp-64]
     mov                  rcx,        qword[rbp-72]
     mov       qword[rbp-104],                  rcx
     mov                  rcx,        qword[rbp-80]
     mov       qword[rbp-112],                  rcx
     mov                  r11,        qword[rbp-88]
     mov                  r10,        qword[rbp-96]
     mov        qword[rbp-48],                    0
	jmp	@main.70.@sha1.28.ForCon
@main.71.@sha1.27.ForBody:
     cmp        qword[rbp-48],                   20
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.72.@sha1.31.IfTrue
	jmp	@main.73.@sha1.30.IfFalse
@main.72.@sha1.31.IfTrue:
     mov                  rdi,       qword[rbp-104]
     and                  rdi,       qword[rbp-112]
     mov                  rsi,       qword[rbp-104]
     not                  rsi
     mov                  rbx,                  rsi
     and                  rbx,                  r11
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                   r9,           1518500249
	jmp	@main.74.@sha1.32.IfExit
@main.73.@sha1.30.IfFalse:
     cmp        qword[rbp-48],                   40
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.75.@sha1.34.IfTrue
	jmp	@main.76.@sha1.33.IfFalse
@main.75.@sha1.34.IfTrue:
     mov                  rsi,       qword[rbp-104]
     xor                  rsi,       qword[rbp-112]
     xor                  rsi,                  r11
     mov                  r14,                  rsi
     mov                   r9,           1859775393
	jmp	@main.77.@sha1.35.IfExit
@main.76.@sha1.33.IfFalse:
     cmp        qword[rbp-48],                   60
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.78.@sha1.37.IfTrue
	jmp	@main.79.@sha1.36.IfFalse
@main.78.@sha1.37.IfTrue:
     mov                  rsi,       qword[rbp-104]
     and                  rsi,       qword[rbp-112]
     mov                  rbx,       qword[rbp-104]
     and                  rbx,                  r11
      or                  rsi,                  rbx
     mov                  rbx,       qword[rbp-112]
     and                  rbx,                  r11
      or                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rsi,                48348
     mov                  rbx,                36635
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                   r9,                  rsi
	jmp	@main.80.@sha1.38.IfExit
@main.79.@sha1.36.IfFalse:
     mov                  rsi,       qword[rbp-104]
     xor                  rsi,       qword[rbp-112]
     xor                  rsi,                  r11
     mov                  r14,                  rsi
     mov                  rsi,                49622
     mov                  rbx,                51810
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                   r9,                  rsi
@main.80.@sha1.38.IfExit:
@main.77.@sha1.35.IfExit:
@main.74.@sha1.32.IfExit:
     mov                  r13,                  r15
     mov                   r8,                    5
     cmp                   r8,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.81.@sha1.60.@rotate_left.4.IfTrue
	jmp	@main.82.@sha1.61.@rotate_left.3.IfFalse
@main.81.@sha1.60.@rotate_left.4.IfTrue:
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
	jmp	@main.83.@sha1.58.@rotate_left.2.exit
	jmp	@main.84.@sha1.62.@rotate_left.5.IfExit
@main.82.@sha1.61.@rotate_left.3.IfFalse:
@main.84.@sha1.62.@rotate_left.5.IfExit:
     cmp                   r8,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.85.@sha1.63.@rotate_left.7.IfTrue
	jmp	@main.86.@sha1.64.@rotate_left.6.IfFalse
@main.85.@sha1.63.@rotate_left.7.IfTrue:
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
	jmp	@main.83.@sha1.58.@rotate_left.2.exit
	jmp	@main.87.@sha1.65.@rotate_left.8.IfExit
@main.86.@sha1.64.@rotate_left.6.IfFalse:
@main.87.@sha1.65.@rotate_left.8.IfExit:
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
@main.83.@sha1.58.@rotate_left.2.exit:
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
     mov                  rdi,                  rsi
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-48]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
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
     mov                   r8,                  rsi
     mov                  r10,                  r11
     mov                  r11,       qword[rbp-112]
     mov                   r9,       qword[rbp-104]
     mov                  r13,                   30
     cmp                  r13,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.88.@sha1.76.@rotate_left.4.IfTrue
	jmp	@main.89.@sha1.77.@rotate_left.3.IfFalse
@main.88.@sha1.76.@rotate_left.4.IfTrue:
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
	jmp	@main.90.@sha1.74.@rotate_left.2.exit
	jmp	@main.91.@sha1.78.@rotate_left.5.IfExit
@main.89.@sha1.77.@rotate_left.3.IfFalse:
@main.91.@sha1.78.@rotate_left.5.IfExit:
     cmp                  r13,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.92.@sha1.79.@rotate_left.7.IfTrue
	jmp	@main.93.@sha1.80.@rotate_left.6.IfFalse
@main.92.@sha1.79.@rotate_left.7.IfTrue:
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
	jmp	@main.90.@sha1.74.@rotate_left.2.exit
	jmp	@main.94.@sha1.81.@rotate_left.8.IfExit
@main.93.@sha1.80.@rotate_left.6.IfFalse:
@main.94.@sha1.81.@rotate_left.8.IfExit:
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
@main.90.@sha1.74.@rotate_left.2.exit:
     mov       qword[rbp-112],                  rsi
     mov       qword[rbp-104],                  r15
     mov                  r15,                   r8
     mov                  rsi,        qword[rbp-48]
     add        qword[rbp-48],                    1
@main.70.@sha1.28.ForCon:
     cmp        qword[rbp-48],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.71.@sha1.27.ForBody
     mov                  rdi,        qword[rbp-64]
     mov                   r8,                  r15
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
     mov        qword[rbp-72],                  rsi
     mov                  rdi,        qword[rbp-80]
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
     mov        qword[rbp-80],                  rsi
     mov                  rdi,        qword[rbp-88]
     mov                   r8,                  r11
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
     mov        qword[rbp-96],                  rsi
     mov                  rsi,        qword[rbp-40]
     add        qword[rbp-40],                    1
@main.59.@sha1.20.ForCon:
     mov                  rcx,        qword[rbp-40]
     cmp                  rcx,        qword[rbp-24]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.60.@sha1.19.ForBody
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
     mov                  rcx,        qword[rbp-88]
     mov        qword[rsi+24],                  rcx
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,        qword[rbp-96]
     mov        qword[rsi+32],                  rcx
     mov                  rcx, qword[@outputBuffer]
     mov       qword[rbp-128],                  rcx
@main.48.@sha1.2.exit:
     mov                  r14,       qword[rbp-128]
     mov                  r10,                    0
	jmp	@main.22.@computeSHA1.9.ForCon
@main.23.@computeSHA1.8.ForBody:
     mov                  rbx,                  r14
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
     mov                   r9,         __const_str0
     mov                  r13,                   28
	jmp	@main.97.@toStringHex.5.ForCon
@main.98.@toStringHex.4.ForBody:
     mov                  rsi,                   r8
     mov                  rcx,                  r13
     shr                  rsi,                   cl
     and                  rsi,                   15
     mov                  r12,                  rsi
     cmp                  r12,                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.99.@toStringHex.8.IfTrue
	jmp	@main.100.@toStringHex.7.IfFalse
@main.99.@toStringHex.8.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                  r12
     mov                  rbx,                  rsi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.101.@toStringHex.13.@int2chr.6.cmp_and
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.101.@toStringHex.13.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.102.@toStringHex.14.@int2chr.4.IfTrue
	jmp	@main.103.@toStringHex.15.@int2chr.3.IfFalse
@main.102.@toStringHex.14.@int2chr.4.IfTrue:
     sub                  rbx,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  rbx
    push                   r9
    push                  rsi
    push                  r10
    push                   r8
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                   r8
     pop                  r10
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
	jmp	@main.104.@toStringHex.11.@int2chr.2.exit
	jmp	@main.105.@toStringHex.16.@int2chr.5.IfExit
@main.103.@toStringHex.15.@int2chr.3.IfFalse:
@main.105.@toStringHex.16.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@main.104.@toStringHex.11.@int2chr.2.exit:
     mov                  rdi,                   r9
    push                  rsi
    push                  r10
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r9,                  rsi
	jmp	@main.106.@toStringHex.9.IfExit
@main.100.@toStringHex.7.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                  r12
     sub                  rsi,                   10
     mov                  rbx,                  rsi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.107.@toStringHex.19.@int2chr.6.cmp_and
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.107.@toStringHex.19.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.108.@toStringHex.20.@int2chr.4.IfTrue
	jmp	@main.109.@toStringHex.21.@int2chr.3.IfFalse
@main.108.@toStringHex.20.@int2chr.4.IfTrue:
     sub                  rbx,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  rbx
    push                   r9
    push                  rsi
    push                  r10
    push                   r8
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                   r8
     pop                  r10
     pop                  rsi
     pop                   r9
     mov                  rsi,                  rax
	jmp	@main.110.@toStringHex.17.@int2chr.2.exit
	jmp	@main.111.@toStringHex.22.@int2chr.5.IfExit
@main.109.@toStringHex.21.@int2chr.3.IfFalse:
@main.111.@toStringHex.22.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@main.110.@toStringHex.17.@int2chr.2.exit:
     mov                  rdi,                   r9
    push                  rsi
    push                  r10
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r9,                  rsi
@main.106.@toStringHex.9.IfExit:
     mov                  rsi,                  r13
     sub                  rsi,                    4
     mov                  r13,                  rsi
@main.97.@toStringHex.5.ForCon:
     cmp                  r13,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
	je	@main.98.@toStringHex.4.ForBody
     mov                  rsi,                   r9
     mov                  rdi,                  rsi
    push                  r10
call	print
     pop                  r10
     mov                  rsi,                  r10
     add                  r10,                    1
@main.22.@computeSHA1.9.ForCon:
     mov                  rdi,                  r14
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     cmp                  r10,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.23.@computeSHA1.8.ForBody
     mov                  rdi,         __const_str0
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
	jmp	@main.12.IfExit
@main.10.IfFalse:
     cmp         qword[rbp-8],                    2
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.14.IfTrue
	jmp	@main.13.IfFalse
@main.14.IfTrue:
    push                  rsi
call	getString
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r14,                  rsi
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
     mov       qword[rbp-144],                  rax
     mov                  rdx,       qword[rbp-144]
     mov           qword[rdx],                  rsi
     mov                  rax,       qword[rbp-144]
     add                  rax,                    8
     mov       qword[rbp-144],                  rax
     sub                  rbx,                    8
     mov                  rcx,       qword[rbp-144]
     mov       qword[rbp-152],                  rcx
     mov                  rdi,                  r14
    push                  rsi
call	__length__
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  rsi,                   40
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.26.@crackSHA1.4.IfTrue
	jmp	@main.27.@crackSHA1.3.IfFalse
@main.26.@crackSHA1.4.IfTrue:
     mov                  rdi,         __const_str2
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
	jmp	@main.24.@crackSHA1.2.exit
	jmp	@main.28.@crackSHA1.5.IfExit
@main.27.@crackSHA1.3.IfFalse:
@main.28.@crackSHA1.5.IfExit:
     mov                  r10,                    0
	jmp	@main.29.@crackSHA1.8.ForCon
@main.30.@crackSHA1.7.ForBody:
     mov                  rbx,       qword[rbp-152]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     mov                  rsi,                  r10
     add                  r10,                    1
@main.29.@crackSHA1.8.ForCon:
     cmp                  r10,                    5
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.30.@crackSHA1.7.ForBody
     mov                  r10,                    0
	jmp	@main.31.@crackSHA1.12.ForCon
@main.32.@crackSHA1.11.ForBody:
     mov                  rsi,                  r10
     mov                  rax,                  rsi
     mov                  rcx,                    8
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                   r9,       qword[rbp-152]
     shl                  rsi,                    3
     add                   r9,                  rsi
     mov                  rsi,                  r10
     mov                  rax,                  rsi
     mov                  rcx,                    8
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  r13,       qword[rbp-152]
     shl                  rsi,                    3
     add                  r13,                  rsi
     mov                  rbx,                  r10
     add                  rbx,                    3
     mov                  rdi,                  r14
     mov                  rsi,                  r10
     mov                  rdx,                  rbx
    push                   r9
    push                  r10
    push                  rsi
call	__substring__
     pop                  rsi
     pop                  r10
     pop                   r9
     mov                  rsi,                  rax
     mov                  r12,                  rsi
     mov                   r8,                    0
     mov                  rbx,                    0
	jmp	@main.114.@hex2int.5.ForCon
@main.115.@hex2int.4.ForBody:
     mov                  rdi,                  r12
     mov                  rsi,                  rbx
    push                   r9
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	__ord__
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     cmp                  rdi,                   48
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.116.@hex2int.10.cmp_and
     cmp                  rdi,                   57
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.116.@hex2int.10.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.117.@hex2int.8.IfTrue
	jmp	@main.118.@hex2int.7.IfFalse
@main.117.@hex2int.8.IfTrue:
     mov                  rsi,                   r8
    imul                  rsi,                   16
     add                  rsi,                  rdi
     sub                  rsi,                   48
     mov                   r8,                  rsi
	jmp	@main.119.@hex2int.9.IfExit
@main.118.@hex2int.7.IfFalse:
     cmp                  rdi,                   65
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.120.@hex2int.14.cmp_and
     cmp                  rdi,                   70
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.120.@hex2int.14.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.121.@hex2int.12.IfTrue
	jmp	@main.122.@hex2int.11.IfFalse
@main.121.@hex2int.12.IfTrue:
     mov                  rsi,                   r8
    imul                  rsi,                   16
     add                  rsi,                  rdi
     sub                  rsi,                   65
     add                  rsi,                   10
     mov                   r8,                  rsi
	jmp	@main.123.@hex2int.13.IfExit
@main.122.@hex2int.11.IfFalse:
     cmp                  rdi,                   97
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@main.124.@hex2int.18.cmp_and
     cmp                  rdi,                  102
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@main.124.@hex2int.18.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@main.125.@hex2int.16.IfTrue
	jmp	@main.126.@hex2int.15.IfFalse
@main.125.@hex2int.16.IfTrue:
     mov                  rsi,                   r8
    imul                  rsi,                   16
     add                  rsi,                  rdi
     sub                  rsi,                   97
     add                  rsi,                   10
     mov                   r8,                  rsi
	jmp	@main.127.@hex2int.17.IfExit
@main.126.@hex2int.15.IfFalse:
     mov                  rsi,                    0
	jmp	@main.112.@hex2int.2.exit
@main.127.@hex2int.17.IfExit:
@main.123.@hex2int.13.IfExit:
@main.119.@hex2int.9.IfExit:
     mov                  rsi,                  rbx
     add                  rbx,                    1
@main.114.@hex2int.5.ForCon:
     mov                  rdi,                  r12
    push                   r9
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	__length__
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     pop                   r9
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.115.@hex2int.4.ForBody
     mov                  rsi,                   r8
@main.112.@hex2int.2.exit:
     mov                  rdi,                  rsi
     mov                  rsi,                  r10
     mov                  rax,                  rsi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rax,                  rbx
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                    1
     sub                  rsi,                  rbx
    imul                  rsi,                   16
     mov                  rbx,                  rdi
     mov                  rcx,                  rsi
     shl                  rbx,                   cl
     mov                  rsi,           qword[r13]
      or                  rsi,                  rbx
     mov            qword[r9],                  rsi
     mov                  rsi,                  r10
     add                  rsi,                    4
     mov                  r10,                  rsi
@main.31.@crackSHA1.12.ForCon:
     cmp                  r10,                   40
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.32.@crackSHA1.11.ForBody
     mov       qword[rbp-160],                    4
     mov       qword[rbp-168],                    1
	jmp	@main.33.@crackSHA1.16.ForCon
@main.34.@crackSHA1.15.ForBody:
     mov                  r10,                    0
	jmp	@main.35.@crackSHA1.20.ForCon
@main.36.@crackSHA1.19.ForBody:
     mov                  rbx,  qword[@inputBuffer]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                   48
     mov                  rsi,                  r10
     add                  r10,                    1
@main.35.@crackSHA1.20.ForCon:
     cmp                  r10,       qword[rbp-168]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.36.@crackSHA1.19.ForBody
	jmp	@main.37.@crackSHA1.24.ForCon
@main.38.@crackSHA1.23.ForBody:
     mov                  r13,  qword[@inputBuffer]
     mov                   r9,       qword[rbp-168]
     mov                  rsi,                   r9
     add                  rsi,                   64
     sub                  rsi,                   56
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     add                  rsi,                    1
     mov       qword[rbp-176],                  rsi
     mov                  rcx,       qword[rbp-176]
     cmp                  rcx,     qword[@MAXCHUNK]
     mov                  rsi,                    0
    setg                  sil
     cmp                  rsi,                    1
	je	@main.130.@sha1.4.IfTrue
	jmp	@main.131.@sha1.3.IfFalse
@main.130.@sha1.4.IfTrue:
     mov                  rdi,         __const_str1
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
	jmp	@main.128.@sha1.2.exit
	jmp	@main.132.@sha1.5.IfExit
@main.131.@sha1.3.IfFalse:
@main.132.@sha1.5.IfExit:
     mov       qword[rbp-184],                    0
	jmp	@main.133.@sha1.8.ForCon
@main.134.@sha1.7.ForBody:
     mov       qword[rbp-192],                    0
	jmp	@main.135.@sha1.12.ForCon
@main.136.@sha1.11.ForBody:
     mov                  rbx,       qword[@chunks]
     mov                  rsi,       qword[rbp-184]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,       qword[rbp-192]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     mov                  rsi,       qword[rbp-192]
     add       qword[rbp-192],                    1
@main.135.@sha1.12.ForCon:
     cmp       qword[rbp-192],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.136.@sha1.11.ForBody
     mov                  rsi,       qword[rbp-184]
     add       qword[rbp-184],                    1
@main.133.@sha1.8.ForCon:
     mov                  rcx,       qword[rbp-184]
     cmp                  rcx,       qword[rbp-176]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.134.@sha1.7.ForBody
     mov       qword[rbp-184],                    0
	jmp	@main.137.@sha1.16.ForCon
@main.138.@sha1.15.ForBody:
     mov                  rsi,       qword[rbp-184]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,       qword[rbp-184]
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
     mov                   r8,           qword[rbx]
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rsi,       qword[rbp-184]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,       qword[rbp-184]
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
     mov                  rdi,                  r13
     mov                  rsi,       qword[rbp-184]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,       qword[rbp-184]
     mov                  rax,                  rbx
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                    3
     sub                  rsi,                  rbx
    imul                  rsi,                    8
     mov                  rbx,           qword[rdi]
     mov                  rcx,                  rsi
     shl                  rbx,                   cl
     mov                  rsi,           qword[r12]
      or                  rsi,                  rbx
     mov            qword[r8],                  rsi
     mov                  rsi,       qword[rbp-184]
     add       qword[rbp-184],                    1
@main.137.@sha1.16.ForCon:
     cmp       qword[rbp-184],                   r9
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.138.@sha1.15.ForBody
     mov                  rsi,       qword[rbp-184]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,       qword[rbp-184]
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
     mov                  rsi,       qword[rbp-184]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,       qword[rbp-184]
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
     mov                  rbx,       qword[rbp-184]
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
     mov                  rsi,       qword[rbp-176]
     sub                  rsi,                    1
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rbx]
     mov                  rbx,                   r9
     shl                  rbx,                    3
     mov       qword[rsi+120],                  rbx
     mov                  rsi,       qword[rbp-176]
     sub                  rsi,                    1
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shr                  rsi,                   29
     and                  rsi,                    7
     mov       qword[rbx+112],                  rsi
     mov       qword[rbp-200],           1732584193
     mov                  rsi,                43913
     mov                  rbx,                61389
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov       qword[rbp-208],                  rsi
     mov                  rsi,                56574
     mov                  rbx,                39098
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov       qword[rbp-216],                  rsi
     mov       qword[rbp-224],            271733878
     mov                  rsi,                57840
     mov                  rbx,                50130
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov       qword[rbp-232],                  rsi
     mov       qword[rbp-184],                    0
	jmp	@main.139.@sha1.20.ForCon
@main.140.@sha1.19.ForBody:
     mov       qword[rbp-192],                   16
	jmp	@main.141.@sha1.24.ForCon
@main.142.@sha1.23.ForBody:
     mov                  rbx,       qword[@chunks]
     mov                  rsi,       qword[rbp-184]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r9,           qword[rbx]
     mov                  rsi,       qword[rbp-192]
     shl                  rsi,                    3
     add                   r9,                  rsi
     mov                  rbx,       qword[@chunks]
     mov                  rsi,       qword[rbp-184]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,       qword[rbp-192]
     sub                  rsi,                    3
     mov                  rdi,           qword[rbx]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,       qword[@chunks]
     mov                  rsi,       qword[rbp-184]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,       qword[rbp-192]
     sub                  rsi,                    8
     mov                  rbx,           qword[rbx]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rdi]
     xor                  rdi,           qword[rbx]
     mov                  rbx,       qword[@chunks]
     mov                  rsi,       qword[rbp-184]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,       qword[rbp-192]
     sub                  rsi,                   14
     mov                  rbx,           qword[rbx]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     xor                  rdi,           qword[rbx]
     mov                  rbx,       qword[@chunks]
     mov                  rsi,       qword[rbp-184]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,       qword[rbp-192]
     sub                  rsi,                   16
     mov                  rbx,           qword[rbx]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,                  rdi
     xor                  rsi,           qword[rbx]
     mov                  r13,                  rsi
     mov                   r8,                    1
     cmp                   r8,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.143.@sha1.48.@rotate_left.4.IfTrue
	jmp	@main.144.@sha1.49.@rotate_left.3.IfFalse
@main.143.@sha1.48.@rotate_left.4.IfTrue:
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
	jmp	@main.145.@sha1.46.@rotate_left.2.exit
	jmp	@main.146.@sha1.50.@rotate_left.5.IfExit
@main.144.@sha1.49.@rotate_left.3.IfFalse:
@main.146.@sha1.50.@rotate_left.5.IfExit:
     cmp                   r8,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.147.@sha1.51.@rotate_left.7.IfTrue
	jmp	@main.148.@sha1.52.@rotate_left.6.IfFalse
@main.147.@sha1.51.@rotate_left.7.IfTrue:
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
	jmp	@main.145.@sha1.46.@rotate_left.2.exit
	jmp	@main.149.@sha1.53.@rotate_left.8.IfExit
@main.148.@sha1.52.@rotate_left.6.IfFalse:
@main.149.@sha1.53.@rotate_left.8.IfExit:
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
@main.145.@sha1.46.@rotate_left.2.exit:
     mov            qword[r9],                  rsi
     mov                  rsi,       qword[rbp-192]
     add       qword[rbp-192],                    1
@main.141.@sha1.24.ForCon:
     cmp       qword[rbp-192],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.142.@sha1.23.ForBody
     mov                  r15,       qword[rbp-200]
     mov                  rcx,       qword[rbp-208]
     mov       qword[rbp-240],                  rcx
     mov                  rcx,       qword[rbp-216]
     mov       qword[rbp-248],                  rcx
     mov                  r11,       qword[rbp-224]
     mov                  r10,       qword[rbp-232]
     mov       qword[rbp-192],                    0
	jmp	@main.150.@sha1.28.ForCon
@main.151.@sha1.27.ForBody:
     cmp       qword[rbp-192],                   20
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.152.@sha1.31.IfTrue
	jmp	@main.153.@sha1.30.IfFalse
@main.152.@sha1.31.IfTrue:
     mov                  rdi,       qword[rbp-240]
     and                  rdi,       qword[rbp-248]
     mov                  rsi,       qword[rbp-240]
     not                  rsi
     mov                  rbx,                  rsi
     and                  rbx,                  r11
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                   r9,           1518500249
	jmp	@main.154.@sha1.32.IfExit
@main.153.@sha1.30.IfFalse:
     cmp       qword[rbp-192],                   40
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.155.@sha1.34.IfTrue
	jmp	@main.156.@sha1.33.IfFalse
@main.155.@sha1.34.IfTrue:
     mov                  rsi,       qword[rbp-240]
     xor                  rsi,       qword[rbp-248]
     xor                  rsi,                  r11
     mov                  r14,                  rsi
     mov                   r9,           1859775393
	jmp	@main.157.@sha1.35.IfExit
@main.156.@sha1.33.IfFalse:
     cmp       qword[rbp-192],                   60
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.158.@sha1.37.IfTrue
	jmp	@main.159.@sha1.36.IfFalse
@main.158.@sha1.37.IfTrue:
     mov                  rsi,       qword[rbp-240]
     and                  rsi,       qword[rbp-248]
     mov                  rbx,       qword[rbp-240]
     and                  rbx,                  r11
      or                  rsi,                  rbx
     mov                  rbx,       qword[rbp-248]
     and                  rbx,                  r11
      or                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rsi,                48348
     mov                  rbx,                36635
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                   r9,                  rsi
	jmp	@main.160.@sha1.38.IfExit
@main.159.@sha1.36.IfFalse:
     mov                  rsi,       qword[rbp-240]
     xor                  rsi,       qword[rbp-248]
     xor                  rsi,                  r11
     mov                  r14,                  rsi
     mov                  rsi,                49622
     mov                  rbx,                51810
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                   r9,                  rsi
@main.160.@sha1.38.IfExit:
@main.157.@sha1.35.IfExit:
@main.154.@sha1.32.IfExit:
     mov                  r13,                  r15
     mov                   r8,                    5
     cmp                   r8,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.161.@sha1.60.@rotate_left.4.IfTrue
	jmp	@main.162.@sha1.61.@rotate_left.3.IfFalse
@main.161.@sha1.60.@rotate_left.4.IfTrue:
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
	jmp	@main.163.@sha1.58.@rotate_left.2.exit
	jmp	@main.164.@sha1.62.@rotate_left.5.IfExit
@main.162.@sha1.61.@rotate_left.3.IfFalse:
@main.164.@sha1.62.@rotate_left.5.IfExit:
     cmp                   r8,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.165.@sha1.63.@rotate_left.7.IfTrue
	jmp	@main.166.@sha1.64.@rotate_left.6.IfFalse
@main.165.@sha1.63.@rotate_left.7.IfTrue:
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
	jmp	@main.163.@sha1.58.@rotate_left.2.exit
	jmp	@main.167.@sha1.65.@rotate_left.8.IfExit
@main.166.@sha1.64.@rotate_left.6.IfFalse:
@main.167.@sha1.65.@rotate_left.8.IfExit:
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
@main.163.@sha1.58.@rotate_left.2.exit:
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
     mov                  rdi,                  rsi
     mov                  rbx,       qword[@chunks]
     mov                  rsi,       qword[rbp-184]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,       qword[rbp-192]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
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
     mov                   r8,                  rsi
     mov                  r10,                  r11
     mov                  r11,       qword[rbp-248]
     mov                   r9,       qword[rbp-240]
     mov                  r13,                   30
     cmp                  r13,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.168.@sha1.76.@rotate_left.4.IfTrue
	jmp	@main.169.@sha1.77.@rotate_left.3.IfFalse
@main.168.@sha1.76.@rotate_left.4.IfTrue:
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
	jmp	@main.170.@sha1.74.@rotate_left.2.exit
	jmp	@main.171.@sha1.78.@rotate_left.5.IfExit
@main.169.@sha1.77.@rotate_left.3.IfFalse:
@main.171.@sha1.78.@rotate_left.5.IfExit:
     cmp                  r13,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@main.172.@sha1.79.@rotate_left.7.IfTrue
	jmp	@main.173.@sha1.80.@rotate_left.6.IfFalse
@main.172.@sha1.79.@rotate_left.7.IfTrue:
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
	jmp	@main.170.@sha1.74.@rotate_left.2.exit
	jmp	@main.174.@sha1.81.@rotate_left.8.IfExit
@main.173.@sha1.80.@rotate_left.6.IfFalse:
@main.174.@sha1.81.@rotate_left.8.IfExit:
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
@main.170.@sha1.74.@rotate_left.2.exit:
     mov       qword[rbp-248],                  rsi
     mov       qword[rbp-240],                  r15
     mov                  r15,                   r8
     mov                  rsi,       qword[rbp-192]
     add       qword[rbp-192],                    1
@main.150.@sha1.28.ForCon:
     cmp       qword[rbp-192],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.151.@sha1.27.ForBody
     mov                  rdi,       qword[rbp-200]
     mov                   r8,                  r15
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
     mov                   r8,       qword[rbp-240]
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
     mov                  rdi,       qword[rbp-216]
     mov                   r8,       qword[rbp-248]
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
     mov       qword[rbp-216],                  rsi
     mov                  rdi,       qword[rbp-224]
     mov                   r8,                  r11
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
     mov       qword[rbp-224],                  rsi
     mov                  rdi,       qword[rbp-232]
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
     mov       qword[rbp-232],                  rsi
     mov                  rsi,       qword[rbp-184]
     add       qword[rbp-184],                    1
@main.139.@sha1.20.ForCon:
     mov                  rcx,       qword[rbp-184]
     cmp                  rcx,       qword[rbp-176]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.140.@sha1.19.ForBody
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,       qword[rbp-200]
     mov           qword[rsi],                  rcx
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,       qword[rbp-208]
     mov         qword[rsi+8],                  rcx
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,       qword[rbp-216]
     mov        qword[rsi+16],                  rcx
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,       qword[rbp-224]
     mov        qword[rsi+24],                  rcx
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,       qword[rbp-232]
     mov        qword[rsi+32],                  rcx
     mov                  rcx, qword[@outputBuffer]
     mov       qword[rbp-256],                  rcx
@main.128.@sha1.2.exit:
     mov                  rsi,       qword[rbp-256]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbp-152]
    push                  rsi
call	array_equal
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  rsi,                    1
	je	@main.39.@crackSHA1.27.IfTrue
	jmp	@main.40.@crackSHA1.26.IfFalse
@main.39.@crackSHA1.27.IfTrue:
     mov                  r10,                    0
	jmp	@main.41.@crackSHA1.31.ForCon
@main.42.@crackSHA1.30.ForBody:
     mov                  rbx,  qword[@inputBuffer]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rbx]
    push                  rsi
    push                  r10
     sub                  rsp,                    8
call	int2chr
     add                  rsp,                    8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  r10
call	print
     pop                  r10
     mov                  rsi,                  r10
     add                  r10,                    1
@main.41.@crackSHA1.31.ForCon:
     cmp                  r10,       qword[rbp-168]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@main.42.@crackSHA1.30.ForBody
     mov                  rdi,         __const_str0
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
	jmp	@main.24.@crackSHA1.2.exit
	jmp	@main.43.@crackSHA1.28.IfExit
@main.40.@crackSHA1.26.IfFalse:
@main.43.@crackSHA1.28.IfExit:
     mov                  rdi,  qword[@inputBuffer]
     mov                  rsi,       qword[rbp-168]
    push                  rsi
call	nextText
     pop                  rsi
     mov                  rsi,                  rax
     xor                  rsi,                    1
     cmp                  rsi,                    1
	je	@main.44.@crackSHA1.34.IfTrue
	jmp	@main.45.@crackSHA1.33.IfFalse
@main.44.@crackSHA1.34.IfTrue:
	jmp	@main.46.@crackSHA1.25.ForExit
	jmp	@main.47.@crackSHA1.35.IfExit
@main.45.@crackSHA1.33.IfFalse:
@main.47.@crackSHA1.35.IfExit:
@main.37.@crackSHA1.24.ForCon:
     mov                  rsi,                    1
     cmp                  rsi,                    1
	je	@main.38.@crackSHA1.23.ForBody
@main.46.@crackSHA1.25.ForExit:
     mov                  rsi,       qword[rbp-168]
     add       qword[rbp-168],                    1
@main.33.@crackSHA1.16.ForCon:
     mov                  rcx,       qword[rbp-168]
     cmp                  rcx,       qword[rbp-160]
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@main.34.@crackSHA1.15.ForBody
     mov                  rdi,         __const_str3
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
@main.24.@crackSHA1.2.exit:
	jmp	@main.15.IfExit
@main.13.IfFalse:
@main.15.IfExit:
@main.12.IfExit:
@main.5.ForCon:
     mov                  rsi,                    1
     cmp                  rsi,                    1
	je	@main.4.ForBody
@main.6.ForExit:
     mov                  rax,                    0
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     pop                  rbx
     add                  rsp,                  256
     pop                  rbp
     ret
hex2int:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  rbx
@hex2int.1.enter:
     mov                   r8,                  rdi
     mov                  r12,                    0
     mov                  rbx,                    0
	jmp	@hex2int.5.ForCon
@hex2int.4.ForBody:
     mov                  rdi,                   r8
     mov                  rsi,                  rbx
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
	je	@hex2int.10.cmp_and
     cmp                  rdi,                   57
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@hex2int.10.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@hex2int.8.IfTrue
	jmp	@hex2int.7.IfFalse
@hex2int.8.IfTrue:
     mov                  rsi,                  r12
    imul                  rsi,                   16
     add                  rsi,                  rdi
     sub                  rsi,                   48
     mov                  r12,                  rsi
	jmp	@hex2int.9.IfExit
@hex2int.7.IfFalse:
     cmp                  rdi,                   65
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@hex2int.14.cmp_and
     cmp                  rdi,                   70
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@hex2int.14.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@hex2int.12.IfTrue
	jmp	@hex2int.11.IfFalse
@hex2int.12.IfTrue:
     mov                  rsi,                  r12
    imul                  rsi,                   16
     add                  rsi,                  rdi
     sub                  rsi,                   65
     add                  rsi,                   10
     mov                  r12,                  rsi
	jmp	@hex2int.13.IfExit
@hex2int.11.IfFalse:
     cmp                  rdi,                   97
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@hex2int.18.cmp_and
     cmp                  rdi,                  102
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@hex2int.18.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@hex2int.16.IfTrue
	jmp	@hex2int.15.IfFalse
@hex2int.16.IfTrue:
     mov                  rsi,                  r12
    imul                  rsi,                   16
     add                  rsi,                  rdi
     sub                  rsi,                   97
     add                  rsi,                   10
     mov                  r12,                  rsi
	jmp	@hex2int.17.IfExit
@hex2int.15.IfFalse:
     mov                  rax,                    0
	jmp	@hex2int.2.exit
@hex2int.17.IfExit:
@hex2int.13.IfExit:
@hex2int.9.IfExit:
     mov                  rsi,                  rbx
     add                  rbx,                    1
@hex2int.5.ForCon:
     mov                  rdi,                   r8
    push                   r8
    push                  rsi
call	__length__
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@hex2int.4.ForBody
     mov                  rax,                  r12
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
     mov                  r10,                  rdi
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
     mov                  rdi,                  rax
     mov           qword[rdi],                  rsi
     add                  rdi,                    8
     sub                  rbx,                    8
     mov         qword[rbp-8],                  rdi
     mov                  rdi,                  r10
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	__length__
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
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
	jmp	@crackSHA1.8.ForCon
@crackSHA1.7.ForBody:
     mov                  rbx,         qword[rbp-8]
     mov                  rsi,                  r15
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     mov                  rsi,                  r15
     add                  r15,                    1
@crackSHA1.8.ForCon:
     cmp                  r15,                    5
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.7.ForBody
     mov                  r15,                    0
	jmp	@crackSHA1.12.ForCon
@crackSHA1.11.ForBody:
     mov                  rsi,                  r15
     mov                  rax,                  rsi
     mov                  rcx,                    8
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                   r9,         qword[rbp-8]
     shl                  rsi,                    3
     add                   r9,                  rsi
     mov                  rsi,                  r15
     mov                  rax,                  rsi
     mov                  rcx,                    8
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  r13,         qword[rbp-8]
     shl                  rsi,                    3
     add                  r13,                  rsi
     mov                  rbx,                  r15
     add                  rbx,                    3
     mov                  rdi,                  r10
     mov                  rsi,                  r15
     mov                  rdx,                  rbx
    push                  rsi
    push                  r10
    push                   r9
call	__substring__
     pop                   r9
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  r12,                    0
     mov                  rbx,                    0
	jmp	@crackSHA1.39.@hex2int.5.ForCon
@crackSHA1.40.@hex2int.4.ForBody:
     mov                  rdi,                   r8
     mov                  rsi,                  rbx
    push                  rsi
    push                  r10
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	__ord__
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  r10
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     cmp                  rdi,                   48
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@crackSHA1.41.@hex2int.10.cmp_and
     cmp                  rdi,                   57
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@crackSHA1.41.@hex2int.10.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.42.@hex2int.8.IfTrue
	jmp	@crackSHA1.43.@hex2int.7.IfFalse
@crackSHA1.42.@hex2int.8.IfTrue:
     mov                  rsi,                  r12
    imul                  rsi,                   16
     add                  rsi,                  rdi
     sub                  rsi,                   48
     mov                  r12,                  rsi
	jmp	@crackSHA1.44.@hex2int.9.IfExit
@crackSHA1.43.@hex2int.7.IfFalse:
     cmp                  rdi,                   65
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@crackSHA1.45.@hex2int.14.cmp_and
     cmp                  rdi,                   70
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@crackSHA1.45.@hex2int.14.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.46.@hex2int.12.IfTrue
	jmp	@crackSHA1.47.@hex2int.11.IfFalse
@crackSHA1.46.@hex2int.12.IfTrue:
     mov                  rsi,                  r12
    imul                  rsi,                   16
     add                  rsi,                  rdi
     sub                  rsi,                   65
     add                  rsi,                   10
     mov                  r12,                  rsi
	jmp	@crackSHA1.48.@hex2int.13.IfExit
@crackSHA1.47.@hex2int.11.IfFalse:
     cmp                  rdi,                   97
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@crackSHA1.49.@hex2int.18.cmp_and
     cmp                  rdi,                  102
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@crackSHA1.49.@hex2int.18.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.50.@hex2int.16.IfTrue
	jmp	@crackSHA1.51.@hex2int.15.IfFalse
@crackSHA1.50.@hex2int.16.IfTrue:
     mov                  rsi,                  r12
    imul                  rsi,                   16
     add                  rsi,                  rdi
     sub                  rsi,                   97
     add                  rsi,                   10
     mov                  r12,                  rsi
	jmp	@crackSHA1.52.@hex2int.17.IfExit
@crackSHA1.51.@hex2int.15.IfFalse:
     mov                  rsi,                    0
	jmp	@crackSHA1.37.@hex2int.2.exit
@crackSHA1.52.@hex2int.17.IfExit:
@crackSHA1.48.@hex2int.13.IfExit:
@crackSHA1.44.@hex2int.9.IfExit:
     mov                  rsi,                  rbx
     add                  rbx,                    1
@crackSHA1.39.@hex2int.5.ForCon:
     mov                  rdi,                   r8
    push                  r10
    push                  rsi
    push                   r8
    push                   r9
     sub                  rsp,                    8
call	__length__
     add                  rsp,                    8
     pop                   r9
     pop                   r8
     pop                  rsi
     pop                  r10
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.40.@hex2int.4.ForBody
     mov                  rsi,                  r12
@crackSHA1.37.@hex2int.2.exit:
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
     mov                  rsi,           qword[r13]
      or                  rsi,                  rbx
     mov            qword[r9],                  rsi
     mov                  rsi,                  r15
     add                  rsi,                    4
     mov                  r15,                  rsi
@crackSHA1.12.ForCon:
     cmp                  r15,                   40
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.11.ForBody
     mov        qword[rbp-16],                    4
     mov        qword[rbp-24],                    1
	jmp	@crackSHA1.16.ForCon
@crackSHA1.15.ForBody:
     mov                  r15,                    0
	jmp	@crackSHA1.20.ForCon
@crackSHA1.19.ForBody:
     mov                  rbx,  qword[@inputBuffer]
     mov                  rsi,                  r15
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                   48
     mov                  rsi,                  r15
     add                  r15,                    1
@crackSHA1.20.ForCon:
     cmp                  r15,        qword[rbp-24]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.19.ForBody
	jmp	@crackSHA1.24.ForCon
@crackSHA1.23.ForBody:
     mov                  r13,  qword[@inputBuffer]
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
	je	@crackSHA1.55.@sha1.4.IfTrue
	jmp	@crackSHA1.56.@sha1.3.IfFalse
@crackSHA1.55.@sha1.4.IfTrue:
     mov                  rdi,         __const_str1
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
	jmp	@crackSHA1.53.@sha1.2.exit
	jmp	@crackSHA1.57.@sha1.5.IfExit
@crackSHA1.56.@sha1.3.IfFalse:
@crackSHA1.57.@sha1.5.IfExit:
     mov        qword[rbp-56],                    0
	jmp	@crackSHA1.58.@sha1.8.ForCon
@crackSHA1.59.@sha1.7.ForBody:
     mov        qword[rbp-64],                    0
	jmp	@crackSHA1.60.@sha1.12.ForCon
@crackSHA1.61.@sha1.11.ForBody:
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     mov                  rsi,        qword[rbp-64]
     add        qword[rbp-64],                    1
@crackSHA1.60.@sha1.12.ForCon:
     cmp        qword[rbp-64],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.61.@sha1.11.ForBody
     mov                  rsi,        qword[rbp-56]
     add        qword[rbp-56],                    1
@crackSHA1.58.@sha1.8.ForCon:
     mov                  rcx,        qword[rbp-56]
     cmp                  rcx,        qword[rbp-40]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.59.@sha1.7.ForBody
     mov        qword[rbp-56],                    0
	jmp	@crackSHA1.62.@sha1.16.ForCon
@crackSHA1.63.@sha1.15.ForBody:
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
     mov                   r8,           qword[rbx]
     shl                  rsi,                    3
     add                   r8,                  rsi
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
     mov                  rdi,                  r13
     mov                  rsi,        qword[rbp-56]
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
     mov                  rbx,           qword[rdi]
     mov                  rcx,                  rsi
     shl                  rbx,                   cl
     mov                  rsi,           qword[r12]
      or                  rsi,                  rbx
     mov            qword[r8],                  rsi
     mov                  rsi,        qword[rbp-56]
     add        qword[rbp-56],                    1
@crackSHA1.62.@sha1.16.ForCon:
     cmp        qword[rbp-56],                   r9
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.63.@sha1.15.ForBody
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
     mov       qword[rbp-104],            271733878
     mov                  rsi,                57840
     mov                  rbx,                50130
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov       qword[rbp-112],                  rsi
     mov        qword[rbp-56],                    0
	jmp	@crackSHA1.64.@sha1.20.ForCon
@crackSHA1.65.@sha1.19.ForBody:
     mov        qword[rbp-64],                   16
	jmp	@crackSHA1.66.@sha1.24.ForCon
@crackSHA1.67.@sha1.23.ForBody:
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
     mov                  rdi,           qword[rbx]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-64]
     sub                  rsi,                    8
     mov                  rbx,           qword[rbx]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rdi]
     xor                  rdi,           qword[rbx]
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-64]
     sub                  rsi,                   14
     mov                  rbx,           qword[rbx]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     xor                  rdi,           qword[rbx]
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-64]
     sub                  rsi,                   16
     mov                  rbx,           qword[rbx]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,                  rdi
     xor                  rsi,           qword[rbx]
     mov                   r8,                  rsi
     mov                  r13,                    1
     cmp                  r13,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.120.@rotate_left.4.IfTrue
	jmp	@crackSHA1.121.@rotate_left.3.IfFalse
@crackSHA1.120.@rotate_left.4.IfTrue:
     mov                  rsi,                   r8
     and                  rsi,           2147483647
     mov                  rdi,                  rsi
     shl                  rdi,                    1
     mov                  rsi,                   r8
     shr                  rsi,                   31
     mov                  rbx,                  rsi
     and                  rbx,                    1
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@crackSHA1.118.@rotate_left.2.exit
	jmp	@crackSHA1.122.@rotate_left.5.IfExit
@crackSHA1.121.@rotate_left.3.IfFalse:
@crackSHA1.122.@rotate_left.5.IfExit:
     cmp                  r13,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.123.@rotate_left.7.IfTrue
	jmp	@crackSHA1.124.@rotate_left.6.IfFalse
@crackSHA1.123.@rotate_left.7.IfTrue:
     mov                  rsi,                   r8
     and                  rsi,                    1
     mov                  rdi,                  rsi
     shl                  rdi,                   31
     mov                  rsi,                   r8
     shr                  rsi,                    1
     mov                  rbx,                  rsi
     and                  rbx,           2147483647
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@crackSHA1.118.@rotate_left.2.exit
	jmp	@crackSHA1.125.@rotate_left.8.IfExit
@crackSHA1.124.@rotate_left.6.IfFalse:
@crackSHA1.125.@rotate_left.8.IfExit:
     mov                  r12,                   32
     sub                  r12,                  r13
     mov                  rsi,                    1
     mov                  rcx,                  r12
     shl                  rsi,                   cl
     mov                  rbx,                  rsi
     sub                  rbx,                    1
     mov                  rsi,                   r8
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rcx,                  r13
     shl                  rdi,                   cl
     mov                  rbx,                   r8
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                    1
     mov                  rcx,                  r13
     shl                  rsi,                   cl
     sub                  rsi,                    1
     and                  rbx,                  rsi
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
@crackSHA1.118.@rotate_left.2.exit:
     mov            qword[r9],                  rsi
     mov                  rsi,        qword[rbp-64]
     add        qword[rbp-64],                    1
@crackSHA1.66.@sha1.24.ForCon:
     cmp        qword[rbp-64],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.67.@sha1.23.ForBody
     mov                  r11,        qword[rbp-80]
     mov                  rcx,        qword[rbp-88]
     mov       qword[rbp-120],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-128],                  rcx
     mov                  r15,       qword[rbp-104]
     mov                  r10,       qword[rbp-112]
     mov        qword[rbp-64],                    0
	jmp	@crackSHA1.68.@sha1.28.ForCon
@crackSHA1.69.@sha1.27.ForBody:
     cmp        qword[rbp-64],                   20
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.70.@sha1.31.IfTrue
	jmp	@crackSHA1.71.@sha1.30.IfFalse
@crackSHA1.70.@sha1.31.IfTrue:
     mov                  rdi,       qword[rbp-120]
     and                  rdi,       qword[rbp-128]
     mov                  rsi,       qword[rbp-120]
     not                  rsi
     mov                  rbx,                  rsi
     and                  rbx,                  r15
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                   r9,           1518500249
	jmp	@crackSHA1.72.@sha1.32.IfExit
@crackSHA1.71.@sha1.30.IfFalse:
     cmp        qword[rbp-64],                   40
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.73.@sha1.34.IfTrue
	jmp	@crackSHA1.74.@sha1.33.IfFalse
@crackSHA1.73.@sha1.34.IfTrue:
     mov                  rsi,       qword[rbp-120]
     xor                  rsi,       qword[rbp-128]
     xor                  rsi,                  r15
     mov                  r14,                  rsi
     mov                   r9,           1859775393
	jmp	@crackSHA1.75.@sha1.35.IfExit
@crackSHA1.74.@sha1.33.IfFalse:
     cmp        qword[rbp-64],                   60
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.76.@sha1.37.IfTrue
	jmp	@crackSHA1.77.@sha1.36.IfFalse
@crackSHA1.76.@sha1.37.IfTrue:
     mov                  rsi,       qword[rbp-120]
     and                  rsi,       qword[rbp-128]
     mov                  rbx,       qword[rbp-120]
     and                  rbx,                  r15
      or                  rsi,                  rbx
     mov                  rbx,       qword[rbp-128]
     and                  rbx,                  r15
      or                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rsi,                48348
     mov                  rbx,                36635
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                   r9,                  rsi
	jmp	@crackSHA1.78.@sha1.38.IfExit
@crackSHA1.77.@sha1.36.IfFalse:
     mov                  rsi,       qword[rbp-120]
     xor                  rsi,       qword[rbp-128]
     xor                  rsi,                  r15
     mov                  r14,                  rsi
     mov                  rsi,                49622
     mov                  rbx,                51810
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                   r9,                  rsi
@crackSHA1.78.@sha1.38.IfExit:
@crackSHA1.75.@sha1.35.IfExit:
@crackSHA1.72.@sha1.32.IfExit:
     mov                  r13,                  r11
     mov                   r8,                    5
     cmp                   r8,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.132.@rotate_left.4.IfTrue
	jmp	@crackSHA1.133.@rotate_left.3.IfFalse
@crackSHA1.132.@rotate_left.4.IfTrue:
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
	jmp	@crackSHA1.130.@rotate_left.2.exit
	jmp	@crackSHA1.134.@rotate_left.5.IfExit
@crackSHA1.133.@rotate_left.3.IfFalse:
@crackSHA1.134.@rotate_left.5.IfExit:
     cmp                   r8,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.135.@rotate_left.7.IfTrue
	jmp	@crackSHA1.136.@rotate_left.6.IfFalse
@crackSHA1.135.@rotate_left.7.IfTrue:
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
	jmp	@crackSHA1.130.@rotate_left.2.exit
	jmp	@crackSHA1.137.@rotate_left.8.IfExit
@crackSHA1.136.@rotate_left.6.IfFalse:
@crackSHA1.137.@rotate_left.8.IfExit:
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
@crackSHA1.130.@rotate_left.2.exit:
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
     mov                  rdi,                  rsi
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-56]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-64]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
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
     mov                  r10,                  r15
     mov                  r15,       qword[rbp-128]
     mov                  r13,       qword[rbp-120]
     mov                   r8,                   30
     cmp                   r8,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.148.@rotate_left.4.IfTrue
	jmp	@crackSHA1.149.@rotate_left.3.IfFalse
@crackSHA1.148.@rotate_left.4.IfTrue:
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
	jmp	@crackSHA1.146.@rotate_left.2.exit
	jmp	@crackSHA1.150.@rotate_left.5.IfExit
@crackSHA1.149.@rotate_left.3.IfFalse:
@crackSHA1.150.@rotate_left.5.IfExit:
     cmp                   r8,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.151.@rotate_left.7.IfTrue
	jmp	@crackSHA1.152.@rotate_left.6.IfFalse
@crackSHA1.151.@rotate_left.7.IfTrue:
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
	jmp	@crackSHA1.146.@rotate_left.2.exit
	jmp	@crackSHA1.153.@rotate_left.8.IfExit
@crackSHA1.152.@rotate_left.6.IfFalse:
@crackSHA1.153.@rotate_left.8.IfExit:
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
@crackSHA1.146.@rotate_left.2.exit:
     mov       qword[rbp-128],                  rsi
     mov       qword[rbp-120],                  r11
     mov                  r11,                   r9
     mov                  rsi,        qword[rbp-64]
     add        qword[rbp-64],                    1
@crackSHA1.68.@sha1.28.ForCon:
     cmp        qword[rbp-64],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.69.@sha1.27.ForBody
     mov                  rdi,        qword[rbp-80]
     mov                   r8,                  r11
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
     mov        qword[rbp-88],                  rsi
     mov                  rdi,        qword[rbp-96]
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
     mov        qword[rbp-96],                  rsi
     mov                  rdi,       qword[rbp-104]
     mov                   r8,                  r15
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
     mov       qword[rbp-104],                  rsi
     mov                  rdi,       qword[rbp-112]
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
     mov       qword[rbp-112],                  rsi
     mov                  rsi,        qword[rbp-56]
     add        qword[rbp-56],                    1
@crackSHA1.64.@sha1.20.ForCon:
     mov                  rcx,        qword[rbp-56]
     cmp                  rcx,        qword[rbp-40]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.65.@sha1.19.ForBody
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
     mov                  rcx,       qword[rbp-104]
     mov        qword[rsi+24],                  rcx
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,       qword[rbp-112]
     mov        qword[rsi+32],                  rcx
     mov                  r14, qword[@outputBuffer]
@crackSHA1.53.@sha1.2.exit:
     mov                  rsi,                  r14
     mov                   r8,                  rsi
     mov                  r13,         qword[rbp-8]
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
     mov                  rdi,                  r13
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     cmp                  rbx,                  rsi
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.81.@array_equal.4.IfTrue
	jmp	@crackSHA1.82.@array_equal.3.IfFalse
@crackSHA1.81.@array_equal.4.IfTrue:
     mov                  rsi,                    0
	jmp	@crackSHA1.79.@array_equal.2.exit
	jmp	@crackSHA1.83.@array_equal.5.IfExit
@crackSHA1.82.@array_equal.3.IfFalse:
@crackSHA1.83.@array_equal.5.IfExit:
     mov                  r12,                    0
	jmp	@crackSHA1.84.@array_equal.8.ForCon
@crackSHA1.85.@array_equal.7.ForBody:
     mov                  rdi,                   r8
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,                  r13
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rdi]
     cmp                  rsi,           qword[rbx]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.86.@array_equal.11.IfTrue
	jmp	@crackSHA1.87.@array_equal.10.IfFalse
@crackSHA1.86.@array_equal.11.IfTrue:
     mov                  rsi,                    0
	jmp	@crackSHA1.79.@array_equal.2.exit
	jmp	@crackSHA1.88.@array_equal.12.IfExit
@crackSHA1.87.@array_equal.10.IfFalse:
@crackSHA1.88.@array_equal.12.IfExit:
     mov                  rsi,                  r12
     add                  r12,                    1
@crackSHA1.84.@array_equal.8.ForCon:
     mov                  rdi,                   r8
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.85.@array_equal.7.ForBody
     mov                  rsi,                    1
@crackSHA1.79.@array_equal.2.exit:
     cmp                  rsi,                    1
	je	@crackSHA1.27.IfTrue
	jmp	@crackSHA1.26.IfFalse
@crackSHA1.27.IfTrue:
     mov                  r15,                    0
	jmp	@crackSHA1.31.ForCon
@crackSHA1.30.ForBody:
     mov                  rbx,  qword[@inputBuffer]
     mov                  rsi,                  r15
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@crackSHA1.91.@int2chr.6.cmp_and
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@crackSHA1.91.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.92.@int2chr.4.IfTrue
	jmp	@crackSHA1.93.@int2chr.3.IfFalse
@crackSHA1.92.@int2chr.4.IfTrue:
     sub                  rbx,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  rbx
    push                  rsi
call	__substring__
     pop                  rsi
     mov                  rsi,                  rax
	jmp	@crackSHA1.89.@int2chr.2.exit
	jmp	@crackSHA1.94.@int2chr.5.IfExit
@crackSHA1.93.@int2chr.3.IfFalse:
@crackSHA1.94.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@crackSHA1.89.@int2chr.2.exit:
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     mov                  rsi,                  r15
     add                  r15,                    1
@crackSHA1.31.ForCon:
     cmp                  r15,        qword[rbp-24]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.30.ForBody
     mov                  rdi,         __const_str0
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
	jmp	@crackSHA1.2.exit
	jmp	@crackSHA1.28.IfExit
@crackSHA1.26.IfFalse:
@crackSHA1.28.IfExit:
     mov                  r12,  qword[@inputBuffer]
     mov                  rsi,        qword[rbp-24]
     sub                  rsi,                    1
     mov                   r8,                  rsi
	jmp	@crackSHA1.97.@nextText.5.ForCon
@crackSHA1.98.@nextText.4.ForBody:
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
	je	@crackSHA1.99.@nextText.13.@nextLetter.4.IfTrue
	jmp	@crackSHA1.100.@nextText.14.@nextLetter.3.IfFalse
@crackSHA1.99.@nextText.13.@nextLetter.4.IfTrue:
     mov                  rsi,                   -1
	jmp	@crackSHA1.101.@nextText.11.@nextLetter.2.exit
	jmp	@crackSHA1.102.@nextText.15.@nextLetter.5.IfExit
@crackSHA1.100.@nextText.14.@nextLetter.3.IfFalse:
@crackSHA1.102.@nextText.15.@nextLetter.5.IfExit:
     cmp                  rbx,                   90
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.103.@nextText.16.@nextLetter.7.IfTrue
	jmp	@crackSHA1.104.@nextText.17.@nextLetter.6.IfFalse
@crackSHA1.103.@nextText.16.@nextLetter.7.IfTrue:
     mov                  rsi,                   97
	jmp	@crackSHA1.101.@nextText.11.@nextLetter.2.exit
	jmp	@crackSHA1.105.@nextText.18.@nextLetter.8.IfExit
@crackSHA1.104.@nextText.17.@nextLetter.6.IfFalse:
@crackSHA1.105.@nextText.18.@nextLetter.8.IfExit:
     cmp                  rbx,                   57
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.106.@nextText.19.@nextLetter.10.IfTrue
	jmp	@crackSHA1.107.@nextText.20.@nextLetter.9.IfFalse
@crackSHA1.106.@nextText.19.@nextLetter.10.IfTrue:
     mov                  rsi,                   65
	jmp	@crackSHA1.101.@nextText.11.@nextLetter.2.exit
	jmp	@crackSHA1.108.@nextText.21.@nextLetter.11.IfExit
@crackSHA1.107.@nextText.20.@nextLetter.9.IfFalse:
@crackSHA1.108.@nextText.21.@nextLetter.11.IfExit:
     mov                  rsi,                  rbx
     add                  rsi,                    1
@crackSHA1.101.@nextText.11.@nextLetter.2.exit:
     mov           qword[rdi],                  rsi
     mov                  rbx,                  r12
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     cmp           qword[rbx],                   -1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.109.@nextText.8.IfTrue
	jmp	@crackSHA1.110.@nextText.7.IfFalse
@crackSHA1.109.@nextText.8.IfTrue:
     mov                  rbx,                  r12
     mov                  rsi,                   r8
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                   48
	jmp	@crackSHA1.111.@nextText.9.IfExit
@crackSHA1.110.@nextText.7.IfFalse:
     mov                  rsi,                    1
	jmp	@crackSHA1.95.@nextText.2.exit
@crackSHA1.111.@nextText.9.IfExit:
     mov                  rsi,                   r8
     sub                   r8,                    1
@crackSHA1.97.@nextText.5.ForCon:
     cmp                   r8,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.98.@nextText.4.ForBody
     mov                  rsi,                    0
@crackSHA1.95.@nextText.2.exit:
     xor                  rsi,                    1
     cmp                  rsi,                    1
	je	@crackSHA1.34.IfTrue
	jmp	@crackSHA1.33.IfFalse
@crackSHA1.34.IfTrue:
	jmp	@crackSHA1.25.ForExit
	jmp	@crackSHA1.35.IfExit
@crackSHA1.33.IfFalse:
@crackSHA1.35.IfExit:
@crackSHA1.24.ForCon:
     mov                  rsi,                    1
     cmp                  rsi,                    1
	je	@crackSHA1.23.ForBody
@crackSHA1.25.ForExit:
     mov                  rsi,        qword[rbp-24]
     add        qword[rbp-24],                    1
@crackSHA1.16.ForCon:
     mov                  rcx,        qword[rbp-24]
     cmp                  rcx,        qword[rbp-16]
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    1
	je	@crackSHA1.15.ForBody
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
     mov                   r9,                  rdi
     mov                  r13,         __const_str0
     mov                   r8,                   28
	jmp	@toStringHex.5.ForCon
@toStringHex.4.ForBody:
     mov                  rsi,                   r9
     mov                  rcx,                   r8
     shr                  rsi,                   cl
     and                  rsi,                   15
     mov                  r12,                  rsi
     cmp                  r12,                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@toStringHex.8.IfTrue
	jmp	@toStringHex.7.IfFalse
@toStringHex.8.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                  r12
     mov                  rbx,                  rsi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@toStringHex.13.@int2chr.6.cmp_and
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@toStringHex.13.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@toStringHex.14.@int2chr.4.IfTrue
	jmp	@toStringHex.15.@int2chr.3.IfFalse
@toStringHex.14.@int2chr.4.IfTrue:
     sub                  rbx,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  rbx
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
	jmp	@toStringHex.11.@int2chr.2.exit
	jmp	@toStringHex.16.@int2chr.5.IfExit
@toStringHex.15.@int2chr.3.IfFalse:
@toStringHex.16.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@toStringHex.11.@int2chr.2.exit:
     mov                  rdi,                  r13
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  r13,                  rsi
	jmp	@toStringHex.9.IfExit
@toStringHex.7.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                  r12
     sub                  rsi,                   10
     mov                  rbx,                  rsi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@toStringHex.19.@int2chr.6.cmp_and
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@toStringHex.19.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@toStringHex.20.@int2chr.4.IfTrue
	jmp	@toStringHex.21.@int2chr.3.IfFalse
@toStringHex.20.@int2chr.4.IfTrue:
     sub                  rbx,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  rbx
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
	jmp	@toStringHex.17.@int2chr.2.exit
	jmp	@toStringHex.22.@int2chr.5.IfExit
@toStringHex.21.@int2chr.3.IfFalse:
@toStringHex.22.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@toStringHex.17.@int2chr.2.exit:
     mov                  rdi,                  r13
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     mov                  rsi,                  rax
     mov                  r13,                  rsi
@toStringHex.9.IfExit:
     mov                  rsi,                   r8
     sub                  rsi,                    4
     mov                   r8,                  rsi
@toStringHex.5.ForCon:
     cmp                   r8,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
	je	@toStringHex.4.ForBody
     mov                  rax,                  r13
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
     mov                   r8,                  rdi
     mov                  r10,                    0
	jmp	@computeSHA1.5.ForCon
@computeSHA1.4.ForBody:
     mov                  r12,  qword[@inputBuffer]
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  r12,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,                  r10
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	__ord__
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov           qword[r12],                  rsi
     mov                  rsi,                  r10
     add                  r10,                    1
@computeSHA1.5.ForCon:
     mov                  rdi,                   r8
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	__length__
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     cmp                  r10,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.4.ForBody
     mov                  rdi,                   r8
    push                  rsi
     sub                  rsp,                    8
call	__length__
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  r13,  qword[@inputBuffer]
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
	je	@computeSHA1.14.@sha1.4.IfTrue
	jmp	@computeSHA1.15.@sha1.3.IfFalse
@computeSHA1.14.@sha1.4.IfTrue:
     mov                  rdi,         __const_str1
call	println
	jmp	@computeSHA1.12.@sha1.2.exit
	jmp	@computeSHA1.16.@sha1.5.IfExit
@computeSHA1.15.@sha1.3.IfFalse:
@computeSHA1.16.@sha1.5.IfExit:
     mov        qword[rbp-32],                    0
	jmp	@computeSHA1.17.@sha1.8.ForCon
@computeSHA1.18.@sha1.7.ForBody:
     mov        qword[rbp-40],                    0
	jmp	@computeSHA1.19.@sha1.12.ForCon
@computeSHA1.20.@sha1.11.ForBody:
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     mov                  rsi,        qword[rbp-40]
     add        qword[rbp-40],                    1
@computeSHA1.19.@sha1.12.ForCon:
     cmp        qword[rbp-40],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.20.@sha1.11.ForBody
     mov                  rsi,        qword[rbp-32]
     add        qword[rbp-32],                    1
@computeSHA1.17.@sha1.8.ForCon:
     mov                  rcx,        qword[rbp-32]
     cmp                  rcx,        qword[rbp-16]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.18.@sha1.7.ForBody
     mov        qword[rbp-32],                    0
	jmp	@computeSHA1.21.@sha1.16.ForCon
@computeSHA1.22.@sha1.15.ForBody:
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
     mov                   r8,           qword[rbx]
     shl                  rsi,                    3
     add                   r8,                  rsi
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
     mov                  rdi,                  r13
     mov                  rsi,        qword[rbp-32]
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
     mov                  rbx,           qword[rdi]
     mov                  rcx,                  rsi
     shl                  rbx,                   cl
     mov                  rsi,           qword[r12]
      or                  rsi,                  rbx
     mov            qword[r8],                  rsi
     mov                  rsi,        qword[rbp-32]
     add        qword[rbp-32],                    1
@computeSHA1.21.@sha1.16.ForCon:
     cmp        qword[rbp-32],                   r9
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.22.@sha1.15.ForBody
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
     mov        qword[rbp-80],            271733878
     mov                  rsi,                57840
     mov                  rbx,                50130
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov        qword[rbp-88],                  rsi
     mov        qword[rbp-32],                    0
	jmp	@computeSHA1.23.@sha1.20.ForCon
@computeSHA1.24.@sha1.19.ForBody:
     mov        qword[rbp-40],                   16
	jmp	@computeSHA1.25.@sha1.24.ForCon
@computeSHA1.26.@sha1.23.ForBody:
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
     mov                  rdi,           qword[rbx]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-40]
     sub                  rsi,                    8
     mov                  rbx,           qword[rbx]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rdi]
     xor                  rdi,           qword[rbx]
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-40]
     sub                  rsi,                   14
     mov                  rbx,           qword[rbx]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     xor                  rdi,           qword[rbx]
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-40]
     sub                  rsi,                   16
     mov                  rbx,           qword[rbx]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,                  rdi
     xor                  rsi,           qword[rbx]
     mov                   r8,                  rsi
     mov                  r13,                    1
     cmp                  r13,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.63.@rotate_left.4.IfTrue
	jmp	@computeSHA1.64.@rotate_left.3.IfFalse
@computeSHA1.63.@rotate_left.4.IfTrue:
     mov                  rsi,                   r8
     and                  rsi,           2147483647
     mov                  rdi,                  rsi
     shl                  rdi,                    1
     mov                  rsi,                   r8
     shr                  rsi,                   31
     mov                  rbx,                  rsi
     and                  rbx,                    1
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@computeSHA1.61.@rotate_left.2.exit
	jmp	@computeSHA1.65.@rotate_left.5.IfExit
@computeSHA1.64.@rotate_left.3.IfFalse:
@computeSHA1.65.@rotate_left.5.IfExit:
     cmp                  r13,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.66.@rotate_left.7.IfTrue
	jmp	@computeSHA1.67.@rotate_left.6.IfFalse
@computeSHA1.66.@rotate_left.7.IfTrue:
     mov                  rsi,                   r8
     and                  rsi,                    1
     mov                  rdi,                  rsi
     shl                  rdi,                   31
     mov                  rsi,                   r8
     shr                  rsi,                    1
     mov                  rbx,                  rsi
     and                  rbx,           2147483647
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@computeSHA1.61.@rotate_left.2.exit
	jmp	@computeSHA1.68.@rotate_left.8.IfExit
@computeSHA1.67.@rotate_left.6.IfFalse:
@computeSHA1.68.@rotate_left.8.IfExit:
     mov                  r12,                   32
     sub                  r12,                  r13
     mov                  rsi,                    1
     mov                  rcx,                  r12
     shl                  rsi,                   cl
     mov                  rbx,                  rsi
     sub                  rbx,                    1
     mov                  rsi,                   r8
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rcx,                  r13
     shl                  rdi,                   cl
     mov                  rbx,                   r8
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                    1
     mov                  rcx,                  r13
     shl                  rsi,                   cl
     sub                  rsi,                    1
     and                  rbx,                  rsi
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
@computeSHA1.61.@rotate_left.2.exit:
     mov            qword[r9],                  rsi
     mov                  rsi,        qword[rbp-40]
     add        qword[rbp-40],                    1
@computeSHA1.25.@sha1.24.ForCon:
     cmp        qword[rbp-40],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.26.@sha1.23.ForBody
     mov                  r11,        qword[rbp-56]
     mov                  rcx,        qword[rbp-64]
     mov        qword[rbp-96],                  rcx
     mov                  rcx,        qword[rbp-72]
     mov       qword[rbp-104],                  rcx
     mov                  r15,        qword[rbp-80]
     mov                  r10,        qword[rbp-88]
     mov        qword[rbp-40],                    0
	jmp	@computeSHA1.27.@sha1.28.ForCon
@computeSHA1.28.@sha1.27.ForBody:
     cmp        qword[rbp-40],                   20
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.29.@sha1.31.IfTrue
	jmp	@computeSHA1.30.@sha1.30.IfFalse
@computeSHA1.29.@sha1.31.IfTrue:
     mov                  rdi,        qword[rbp-96]
     and                  rdi,       qword[rbp-104]
     mov                  rsi,        qword[rbp-96]
     not                  rsi
     mov                  rbx,                  rsi
     and                  rbx,                  r15
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                   r9,           1518500249
	jmp	@computeSHA1.31.@sha1.32.IfExit
@computeSHA1.30.@sha1.30.IfFalse:
     cmp        qword[rbp-40],                   40
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.32.@sha1.34.IfTrue
	jmp	@computeSHA1.33.@sha1.33.IfFalse
@computeSHA1.32.@sha1.34.IfTrue:
     mov                  rsi,        qword[rbp-96]
     xor                  rsi,       qword[rbp-104]
     xor                  rsi,                  r15
     mov                  r14,                  rsi
     mov                   r9,           1859775393
	jmp	@computeSHA1.34.@sha1.35.IfExit
@computeSHA1.33.@sha1.33.IfFalse:
     cmp        qword[rbp-40],                   60
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.35.@sha1.37.IfTrue
	jmp	@computeSHA1.36.@sha1.36.IfFalse
@computeSHA1.35.@sha1.37.IfTrue:
     mov                  rsi,        qword[rbp-96]
     and                  rsi,       qword[rbp-104]
     mov                  rbx,        qword[rbp-96]
     and                  rbx,                  r15
      or                  rsi,                  rbx
     mov                  rbx,       qword[rbp-104]
     and                  rbx,                  r15
      or                  rsi,                  rbx
     mov                  r14,                  rsi
     mov                  rsi,                48348
     mov                  rbx,                36635
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                   r9,                  rsi
	jmp	@computeSHA1.37.@sha1.38.IfExit
@computeSHA1.36.@sha1.36.IfFalse:
     mov                  rsi,        qword[rbp-96]
     xor                  rsi,       qword[rbp-104]
     xor                  rsi,                  r15
     mov                  r14,                  rsi
     mov                  rsi,                49622
     mov                  rbx,                51810
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                   r9,                  rsi
@computeSHA1.37.@sha1.38.IfExit:
@computeSHA1.34.@sha1.35.IfExit:
@computeSHA1.31.@sha1.32.IfExit:
     mov                   r8,                  r11
     mov                  r13,                    5
     cmp                  r13,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.75.@rotate_left.4.IfTrue
	jmp	@computeSHA1.76.@rotate_left.3.IfFalse
@computeSHA1.75.@rotate_left.4.IfTrue:
     mov                  rsi,                   r8
     and                  rsi,           2147483647
     mov                  rdi,                  rsi
     shl                  rdi,                    1
     mov                  rsi,                   r8
     shr                  rsi,                   31
     mov                  rbx,                  rsi
     and                  rbx,                    1
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@computeSHA1.73.@rotate_left.2.exit
	jmp	@computeSHA1.77.@rotate_left.5.IfExit
@computeSHA1.76.@rotate_left.3.IfFalse:
@computeSHA1.77.@rotate_left.5.IfExit:
     cmp                  r13,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.78.@rotate_left.7.IfTrue
	jmp	@computeSHA1.79.@rotate_left.6.IfFalse
@computeSHA1.78.@rotate_left.7.IfTrue:
     mov                  rsi,                   r8
     and                  rsi,                    1
     mov                  rdi,                  rsi
     shl                  rdi,                   31
     mov                  rsi,                   r8
     shr                  rsi,                    1
     mov                  rbx,                  rsi
     and                  rbx,           2147483647
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@computeSHA1.73.@rotate_left.2.exit
	jmp	@computeSHA1.80.@rotate_left.8.IfExit
@computeSHA1.79.@rotate_left.6.IfFalse:
@computeSHA1.80.@rotate_left.8.IfExit:
     mov                  r12,                   32
     sub                  r12,                  r13
     mov                  rsi,                    1
     mov                  rcx,                  r12
     shl                  rsi,                   cl
     mov                  rbx,                  rsi
     sub                  rbx,                    1
     mov                  rsi,                   r8
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rcx,                  r13
     shl                  rdi,                   cl
     mov                  rbx,                   r8
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                    1
     mov                  rcx,                  r13
     shl                  rsi,                   cl
     sub                  rsi,                    1
     and                  rbx,                  rsi
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
@computeSHA1.73.@rotate_left.2.exit:
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
     mov                  rdi,                  rsi
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-40]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
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
     mov                  r10,                  r15
     mov                  r15,       qword[rbp-104]
     mov                   r8,        qword[rbp-96]
     mov                  r13,                   30
     cmp                  r13,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.91.@rotate_left.4.IfTrue
	jmp	@computeSHA1.92.@rotate_left.3.IfFalse
@computeSHA1.91.@rotate_left.4.IfTrue:
     mov                  rsi,                   r8
     and                  rsi,           2147483647
     mov                  rdi,                  rsi
     shl                  rdi,                    1
     mov                  rsi,                   r8
     shr                  rsi,                   31
     mov                  rbx,                  rsi
     and                  rbx,                    1
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@computeSHA1.89.@rotate_left.2.exit
	jmp	@computeSHA1.93.@rotate_left.5.IfExit
@computeSHA1.92.@rotate_left.3.IfFalse:
@computeSHA1.93.@rotate_left.5.IfExit:
     cmp                  r13,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.94.@rotate_left.7.IfTrue
	jmp	@computeSHA1.95.@rotate_left.6.IfFalse
@computeSHA1.94.@rotate_left.7.IfTrue:
     mov                  rsi,                   r8
     and                  rsi,                    1
     mov                  rdi,                  rsi
     shl                  rdi,                   31
     mov                  rsi,                   r8
     shr                  rsi,                    1
     mov                  rbx,                  rsi
     and                  rbx,           2147483647
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@computeSHA1.89.@rotate_left.2.exit
	jmp	@computeSHA1.96.@rotate_left.8.IfExit
@computeSHA1.95.@rotate_left.6.IfFalse:
@computeSHA1.96.@rotate_left.8.IfExit:
     mov                  r12,                   32
     sub                  r12,                  r13
     mov                  rsi,                    1
     mov                  rcx,                  r12
     shl                  rsi,                   cl
     mov                  rbx,                  rsi
     sub                  rbx,                    1
     mov                  rsi,                   r8
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rcx,                  r13
     shl                  rdi,                   cl
     mov                  rbx,                   r8
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                    1
     mov                  rcx,                  r13
     shl                  rsi,                   cl
     sub                  rsi,                    1
     and                  rbx,                  rsi
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
@computeSHA1.89.@rotate_left.2.exit:
     mov       qword[rbp-104],                  rsi
     mov        qword[rbp-96],                  r11
     mov                  r11,                   r9
     mov                  rsi,        qword[rbp-40]
     add        qword[rbp-40],                    1
@computeSHA1.27.@sha1.28.ForCon:
     cmp        qword[rbp-40],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.28.@sha1.27.ForBody
     mov                  rdi,        qword[rbp-56]
     mov                   r8,                  r11
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
     mov        qword[rbp-64],                  rsi
     mov                  rdi,        qword[rbp-72]
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
     mov        qword[rbp-72],                  rsi
     mov                  rdi,        qword[rbp-80]
     mov                   r8,                  r15
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
     mov        qword[rbp-88],                  rsi
     mov                  rsi,        qword[rbp-32]
     add        qword[rbp-32],                    1
@computeSHA1.23.@sha1.20.ForCon:
     mov                  rcx,        qword[rbp-32]
     cmp                  rcx,        qword[rbp-16]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.24.@sha1.19.ForBody
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
     mov                  rcx,        qword[rbp-80]
     mov        qword[rsi+24],                  rcx
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,        qword[rbp-88]
     mov        qword[rsi+32],                  rcx
     mov                  rbx, qword[@outputBuffer]
@computeSHA1.12.@sha1.2.exit:
     mov                  r14,                  rbx
     mov                  r10,                    0
	jmp	@computeSHA1.9.ForCon
@computeSHA1.8.ForBody:
     mov                  rbx,                  r14
     mov                  rsi,                  r10
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r8,           qword[rbx]
     mov                   r9,         __const_str0
     mov                  r13,                   28
	jmp	@computeSHA1.40.@toStringHex.5.ForCon
@computeSHA1.41.@toStringHex.4.ForBody:
     mov                  rsi,                   r8
     mov                  rcx,                  r13
     shr                  rsi,                   cl
     and                  rsi,                   15
     mov                  r12,                  rsi
     cmp                  r12,                   10
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.42.@toStringHex.8.IfTrue
	jmp	@computeSHA1.43.@toStringHex.7.IfFalse
@computeSHA1.42.@toStringHex.8.IfTrue:
     mov                  rsi,                   48
     add                  rsi,                  r12
     mov                  rbx,                  rsi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@computeSHA1.44.@toStringHex.13.@int2chr.6.cmp_and
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@computeSHA1.44.@toStringHex.13.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.45.@toStringHex.14.@int2chr.4.IfTrue
	jmp	@computeSHA1.46.@toStringHex.15.@int2chr.3.IfFalse
@computeSHA1.45.@toStringHex.14.@int2chr.4.IfTrue:
     sub                  rbx,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  rbx
    push                   r8
    push                  r10
    push                   r9
    push                  rsi
call	__substring__
     pop                  rsi
     pop                   r9
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
	jmp	@computeSHA1.47.@toStringHex.11.@int2chr.2.exit
	jmp	@computeSHA1.48.@toStringHex.16.@int2chr.5.IfExit
@computeSHA1.46.@toStringHex.15.@int2chr.3.IfFalse:
@computeSHA1.48.@toStringHex.16.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@computeSHA1.47.@toStringHex.11.@int2chr.2.exit:
     mov                  rdi,                   r9
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                   r9,                  rsi
	jmp	@computeSHA1.49.@toStringHex.9.IfExit
@computeSHA1.43.@toStringHex.7.IfFalse:
     mov                  rsi,                   65
     add                  rsi,                  r12
     sub                  rsi,                   10
     mov                  rbx,                  rsi
     cmp                  rbx,                   32
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    0
	je	@computeSHA1.50.@toStringHex.19.@int2chr.6.cmp_and
     cmp                  rbx,                  126
     mov                  rsi,                    0
   setle                  sil
     cmp                  rsi,                    0
@computeSHA1.50.@toStringHex.19.@int2chr.6.cmp_and:
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.51.@toStringHex.20.@int2chr.4.IfTrue
	jmp	@computeSHA1.52.@toStringHex.21.@int2chr.3.IfFalse
@computeSHA1.51.@toStringHex.20.@int2chr.4.IfTrue:
     sub                  rbx,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  rbx
    push                   r8
    push                  r10
    push                   r9
    push                  rsi
call	__substring__
     pop                  rsi
     pop                   r9
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
	jmp	@computeSHA1.53.@toStringHex.17.@int2chr.2.exit
	jmp	@computeSHA1.54.@toStringHex.22.@int2chr.5.IfExit
@computeSHA1.52.@toStringHex.21.@int2chr.3.IfFalse:
@computeSHA1.54.@toStringHex.22.@int2chr.5.IfExit:
     mov                  rsi,         __const_str0
@computeSHA1.53.@toStringHex.17.@int2chr.2.exit:
     mov                  rdi,                   r9
    push                   r8
    push                  r10
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     pop                  r10
     pop                   r8
     mov                  rsi,                  rax
     mov                   r9,                  rsi
@computeSHA1.49.@toStringHex.9.IfExit:
     mov                  rsi,                  r13
     sub                  rsi,                    4
     mov                  r13,                  rsi
@computeSHA1.40.@toStringHex.5.ForCon:
     cmp                  r13,                    0
     mov                  rsi,                    0
   setge                  sil
     cmp                  rsi,                    1
	je	@computeSHA1.41.@toStringHex.4.ForBody
     mov                  rsi,                   r9
     mov                  rdi,                  rsi
    push                  r10
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                  r10
     mov                  rsi,                  r10
     add                  r10,                    1
@computeSHA1.9.ForCon:
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
	je	@computeSHA1.8.ForBody
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
     sub                  rsp,                  104
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
@sha1.1.enter:
     mov                  r13,                  rdi
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
     mov         qword[rbp-8],                  rsi
     mov                  rcx,         qword[rbp-8]
     cmp                  rcx,     qword[@MAXCHUNK]
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
     mov        qword[rbp-24],                    0
	jmp	@sha1.8.ForCon
@sha1.7.ForBody:
     mov        qword[rbp-32],                    0
	jmp	@sha1.12.ForCon
@sha1.11.ForBody:
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-24]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov           qword[rbx],                    0
     mov                  rsi,        qword[rbp-32]
     add        qword[rbp-32],                    1
@sha1.12.ForCon:
     cmp        qword[rbp-32],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@sha1.11.ForBody
     mov                  rsi,        qword[rbp-24]
     add        qword[rbp-24],                    1
@sha1.8.ForCon:
     mov                  rcx,        qword[rbp-24]
     cmp                  rcx,         qword[rbp-8]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@sha1.7.ForBody
     mov        qword[rbp-24],                    0
	jmp	@sha1.16.ForCon
@sha1.15.ForBody:
     mov                  rsi,        qword[rbp-24]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-24]
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
     mov                   r8,           qword[rbx]
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rsi,        qword[rbp-24]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-24]
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
     mov                  rdi,                  r13
     mov                  rsi,        qword[rbp-24]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,        qword[rbp-24]
     mov                  rax,                  rbx
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rsi,                    3
     sub                  rsi,                  rbx
    imul                  rsi,                    8
     mov                  rbx,           qword[rdi]
     mov                  rcx,                  rsi
     shl                  rbx,                   cl
     mov                  rsi,           qword[r12]
      or                  rsi,                  rbx
     mov            qword[r8],                  rsi
     mov                  rsi,        qword[rbp-24]
     add        qword[rbp-24],                    1
@sha1.16.ForCon:
     cmp        qword[rbp-24],                   r9
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@sha1.15.ForBody
     mov                  rsi,        qword[rbp-24]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-24]
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
     mov                  rsi,        qword[rbp-24]
     mov                  rax,                  rsi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-24]
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
     mov                  rbx,        qword[rbp-24]
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
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                    1
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shl                  rsi,                    3
     mov       qword[rbx+120],                  rsi
     mov                  rsi,         qword[rbp-8]
     sub                  rsi,                    1
     mov                  rbx,       qword[@chunks]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rbx,           qword[rbx]
     mov                  rsi,                   r9
     shr                  rsi,                   29
     and                  rsi,                    7
     mov       qword[rbx+112],                  rsi
     mov        qword[rbp-48],           1732584193
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
     mov        qword[rbp-24],                    0
	jmp	@sha1.20.ForCon
@sha1.19.ForBody:
     mov        qword[rbp-32],                   16
	jmp	@sha1.24.ForCon
@sha1.23.ForBody:
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-24]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                   r9,           qword[rbx]
     mov                  rsi,        qword[rbp-32]
     shl                  rsi,                    3
     add                   r9,                  rsi
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-24]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-32]
     sub                  rsi,                    3
     mov                  rdi,           qword[rbx]
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-24]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-32]
     sub                  rsi,                    8
     mov                  rbx,           qword[rbx]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rdi,           qword[rdi]
     xor                  rdi,           qword[rbx]
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-24]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-32]
     sub                  rsi,                   14
     mov                  rbx,           qword[rbx]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     xor                  rdi,           qword[rbx]
     mov                  rbx,       qword[@chunks]
     mov                  rsi,        qword[rbp-24]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,        qword[rbp-32]
     sub                  rsi,                   16
     mov                  rbx,           qword[rbx]
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,                  rdi
     xor                  rsi,           qword[rbx]
     mov                   r8,                  rsi
     mov                  r13,                    1
     cmp                  r13,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@sha1.48.@rotate_left.4.IfTrue
	jmp	@sha1.49.@rotate_left.3.IfFalse
@sha1.48.@rotate_left.4.IfTrue:
     mov                  rsi,                   r8
     and                  rsi,           2147483647
     mov                  rdi,                  rsi
     shl                  rdi,                    1
     mov                  rsi,                   r8
     shr                  rsi,                   31
     mov                  rbx,                  rsi
     and                  rbx,                    1
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@sha1.46.@rotate_left.2.exit
	jmp	@sha1.50.@rotate_left.5.IfExit
@sha1.49.@rotate_left.3.IfFalse:
@sha1.50.@rotate_left.5.IfExit:
     cmp                  r13,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@sha1.51.@rotate_left.7.IfTrue
	jmp	@sha1.52.@rotate_left.6.IfFalse
@sha1.51.@rotate_left.7.IfTrue:
     mov                  rsi,                   r8
     and                  rsi,                    1
     mov                  rdi,                  rsi
     shl                  rdi,                   31
     mov                  rsi,                   r8
     shr                  rsi,                    1
     mov                  rbx,                  rsi
     and                  rbx,           2147483647
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
	jmp	@sha1.46.@rotate_left.2.exit
	jmp	@sha1.53.@rotate_left.8.IfExit
@sha1.52.@rotate_left.6.IfFalse:
@sha1.53.@rotate_left.8.IfExit:
     mov                  r12,                   32
     sub                  r12,                  r13
     mov                  rsi,                    1
     mov                  rcx,                  r12
     shl                  rsi,                   cl
     mov                  rbx,                  rsi
     sub                  rbx,                    1
     mov                  rsi,                   r8
     and                  rsi,                  rbx
     mov                  rdi,                  rsi
     mov                  rcx,                  r13
     shl                  rdi,                   cl
     mov                  rbx,                   r8
     mov                  rcx,                  r12
     shr                  rbx,                   cl
     mov                  rsi,                    1
     mov                  rcx,                  r13
     shl                  rsi,                   cl
     sub                  rsi,                    1
     and                  rbx,                  rsi
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
@sha1.46.@rotate_left.2.exit:
     mov            qword[r9],                  rsi
     mov                  rsi,        qword[rbp-32]
     add        qword[rbp-32],                    1
@sha1.24.ForCon:
     cmp        qword[rbp-32],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@sha1.23.ForBody
     mov                  rcx,        qword[rbp-48]
     mov        qword[rbp-56],                  rcx
     mov        qword[rbp-64],                  r11
     mov        qword[rbp-72],                  r15
     mov        qword[rbp-80],                  r10
     mov        qword[rbp-88],                  r14
     mov        qword[rbp-32],                    0
	jmp	@sha1.28.ForCon
@sha1.27.ForBody:
     cmp        qword[rbp-32],                   20
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@sha1.31.IfTrue
	jmp	@sha1.30.IfFalse
@sha1.31.IfTrue:
     mov                  rdi,        qword[rbp-64]
     and                  rdi,        qword[rbp-72]
     mov                  rsi,        qword[rbp-64]
     not                  rsi
     mov                  rbx,                  rsi
     and                  rbx,        qword[rbp-80]
     mov                  rsi,                  rdi
      or                  rsi,                  rbx
     mov        qword[rbp-96],                  rsi
     mov                   r9,           1518500249
	jmp	@sha1.32.IfExit
@sha1.30.IfFalse:
     cmp        qword[rbp-32],                   40
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@sha1.34.IfTrue
	jmp	@sha1.33.IfFalse
@sha1.34.IfTrue:
     mov                  rsi,        qword[rbp-64]
     xor                  rsi,        qword[rbp-72]
     xor                  rsi,        qword[rbp-80]
     mov        qword[rbp-96],                  rsi
     mov                   r9,           1859775393
	jmp	@sha1.35.IfExit
@sha1.33.IfFalse:
     cmp        qword[rbp-32],                   60
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@sha1.37.IfTrue
	jmp	@sha1.36.IfFalse
@sha1.37.IfTrue:
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
     mov                   r9,                  rsi
	jmp	@sha1.38.IfExit
@sha1.36.IfFalse:
     mov                  rsi,        qword[rbp-64]
     xor                  rsi,        qword[rbp-72]
     xor                  rsi,        qword[rbp-80]
     mov        qword[rbp-96],                  rsi
     mov                  rsi,                49622
     mov                  rbx,                51810
     shl                  rbx,                   16
      or                  rsi,                  rbx
     mov                   r9,                  rsi
@sha1.38.IfExit:
@sha1.35.IfExit:
@sha1.32.IfExit:
     mov                  r13,        qword[rbp-56]
     mov                   r8,                    5
     cmp                   r8,                    1
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@sha1.60.@rotate_left.4.IfTrue
	jmp	@sha1.61.@rotate_left.3.IfFalse
@sha1.60.@rotate_left.4.IfTrue:
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
	jmp	@sha1.58.@rotate_left.2.exit
	jmp	@sha1.62.@rotate_left.5.IfExit
@sha1.61.@rotate_left.3.IfFalse:
@sha1.62.@rotate_left.5.IfExit:
     cmp                   r8,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@sha1.63.@rotate_left.7.IfTrue
	jmp	@sha1.64.@rotate_left.6.IfFalse
@sha1.63.@rotate_left.7.IfTrue:
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
	jmp	@sha1.58.@rotate_left.2.exit
	jmp	@sha1.65.@rotate_left.8.IfExit
@sha1.64.@rotate_left.6.IfFalse:
@sha1.65.@rotate_left.8.IfExit:
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
@sha1.58.@rotate_left.2.exit:
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
     mov                  rdi,       qword[@chunks]
     mov                  rbx,        qword[rbp-24]
     shl                  rbx,                    3
     add                  rdi,                  rbx
     mov                  r12,           qword[rdi]
     mov                  rbx,        qword[rbp-32]
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
     mov                   r9,                  rsi
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
	je	@sha1.76.@rotate_left.4.IfTrue
	jmp	@sha1.77.@rotate_left.3.IfFalse
@sha1.76.@rotate_left.4.IfTrue:
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
	jmp	@sha1.74.@rotate_left.2.exit
	jmp	@sha1.78.@rotate_left.5.IfExit
@sha1.77.@rotate_left.3.IfFalse:
@sha1.78.@rotate_left.5.IfExit:
     cmp                   r8,                   31
     mov                  rsi,                    0
    sete                  sil
     cmp                  rsi,                    1
	je	@sha1.79.@rotate_left.7.IfTrue
	jmp	@sha1.80.@rotate_left.6.IfFalse
@sha1.79.@rotate_left.7.IfTrue:
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
	jmp	@sha1.74.@rotate_left.2.exit
	jmp	@sha1.81.@rotate_left.8.IfExit
@sha1.80.@rotate_left.6.IfFalse:
@sha1.81.@rotate_left.8.IfExit:
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
@sha1.74.@rotate_left.2.exit:
     mov        qword[rbp-72],                  rsi
     mov                  rcx,        qword[rbp-56]
     mov        qword[rbp-64],                  rcx
     mov        qword[rbp-56],                   r9
     mov                  rsi,        qword[rbp-32]
     add        qword[rbp-32],                    1
@sha1.28.ForCon:
     cmp        qword[rbp-32],                   80
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@sha1.27.ForBody
     mov                  rdi,        qword[rbp-48]
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
     mov        qword[rbp-48],                  rsi
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
     mov                  rsi,        qword[rbp-24]
     add        qword[rbp-24],                    1
@sha1.20.ForCon:
     mov                  rcx,        qword[rbp-24]
     cmp                  rcx,         qword[rbp-8]
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@sha1.19.ForBody
     mov                  rsi, qword[@outputBuffer]
     mov                  rcx,        qword[rbp-48]
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
     add                  rsp,                  104
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
     mov                  r13,                  rdi
     mov                   r8,                  rsi
     mov                  rdi,                  r13
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
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
     mov                  r12,                    0
	jmp	@array_equal.8.ForCon
@array_equal.7.ForBody:
     mov                  rdi,                  r13
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rdi,                  rsi
     mov                  rbx,                   r8
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                  rbx,                  rsi
     mov                  rsi,           qword[rdi]
     cmp                  rsi,           qword[rbx]
     mov                  rsi,                    0
   setne                  sil
     cmp                  rsi,                    1
	je	@array_equal.11.IfTrue
	jmp	@array_equal.10.IfFalse
@array_equal.11.IfTrue:
     mov                  rax,                    0
	jmp	@array_equal.2.exit
	jmp	@array_equal.12.IfExit
@array_equal.10.IfFalse:
@array_equal.12.IfExit:
     mov                  rsi,                  r12
     add                  r12,                    1
@array_equal.8.ForCon:
     mov                  rdi,                  r13
    push                  rsi
    push                   r8
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rsi,                    0
    setl                  sil
     cmp                  rsi,                    1
	je	@array_equal.7.ForBody
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
     mov                   r8,                  rdi
     mov                  rdi,                  rsi
     shl                  rdi,                   16
     mov                  rsi,                   r8
      or                  rsi,                  rdi
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



