  global                 main
  extern	malloc


 section                .text
add:
    push                  rbp
     mov                  rbp,                  rsp
@add.1.enter:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     mov                   r8,                  rdi
     and                   r8,                65535
     mov                   r9,                  rsi
     and                   r9,                65535
     mov                   r8,                   r8
     add                   r8,                   r9
     mov                   r8,                   r8
     mov                  rdi,                  rdi
     shr                  rdi,                   16
     mov                  rdi,                  rdi
     and                  rdi,                65535
     mov                  rsi,                  rsi
     shr                  rsi,                   16
     mov                  rsi,                  rsi
     and                  rsi,                65535
     mov                  rdi,                  rdi
     add                  rdi,                  rsi
     mov                  rsi,                   r8
     shr                  rsi,                   16
     mov                  rdi,                  rdi
     add                  rdi,                  rsi
     mov                  rsi,                  rdi
     and                  rsi,                65535
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
     shl                  rsi,                   16
     mov                  rdi,                   r8
     and                  rdi,                65535
     mov                  rsi,                  rsi
      or                  rsi,                  rdi
     mov                  rax,                  rsi
	jmp	@add.2.exit
@add.2.exit:
     pop                  rbp
     ret
nextText:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  rbx
@nextText.1.enter:
     mov                  rbx,                  rdi
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
     sub                  rsi,                    1
     mov                  rsi,                  rsi
	jmp	@nextText.6.ForCon
@nextText.5.ForBody:
     mov                  r12,                  rbx
     mov                  rdi,                  rsi
     shl                  rdi,                    3
     add                  r12,                  rdi
     mov                  rdi,                  rbx
     mov                   r8,                  rsi
     shl                   r8,                    3
     add                  rdi,                   r8
     mov                  rdi,           qword[rdi]
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	nextLetter
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rdi,                  rax
     mov           qword[r12],                  rdi
     mov                  rdi,                  rbx
     mov                  r12,                  rsi
     shl                  r12,                    3
     add                  rdi,                  r12
     cmp           qword[rdi],                   -1
     mov                  rax,                    0
    sete                   al
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@nextText.9.IfTrue
	jmp	@nextText.8.IfFalse
@nextText.9.IfTrue:
     mov                  rdi,                  rbx
     mov                  r12,                  rsi
     shl                  r12,                    3
     add                  rdi,                  r12
     mov           qword[rdi],                   48
	jmp	@nextText.10.IfExit
@nextText.8.IfFalse:
     mov                  rax,                    1
	jmp	@nextText.2.exit
	jmp	@nextText.10.IfExit
@nextText.10.IfExit:
	jmp	@nextText.4.ForIter
@nextText.4.ForIter:
     mov                  rdi,                  rsi
     sub                  rsi,                    1
	jmp	@nextText.6.ForCon
@nextText.6.ForCon:
     cmp                  rsi,                    0
     mov                  rax,                    0
   setge                   al
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@nextText.5.ForBody
	jmp	@nextText.7.ForExit
@nextText.7.ForExit:
     mov                  rax,                    0
	jmp	@nextText.2.exit
@nextText.2.exit:
     pop                  rbx
     pop                  r12
     pop                  rbp
     ret
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   48
    push                  r12
    push                  rbx
     mov   qword[@asciiTable],         __const_str4
     mov     qword[@MAXCHUNK],                  100
     mov                  rsi,     qword[@MAXCHUNK]
     sub                  rsi,                    1
     mov                  rsi,                  rsi
    imul                  rsi,                   64
     mov                  rsi,                  rsi
     sub                  rsi,                   16
     mov    qword[@MAXLENGTH],                  rsi
     mov                   r8,     qword[@MAXCHUNK]
     mov                  rsi,     qword[@MAXCHUNK]
     add                   r8,                    1
     shl                   r8,                    3
    push                  r10
    push                  r11
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
     pop                  r11
     pop                  r10
     mov                  rdi,                  rax
     mov           qword[rdi],                  rsi
     add                  rdi,                    8
     sub                   r8,                    8
     mov                   r9,                  rdi
     mov                  rsi,                  rdi
     add                  rsi,                   r8
@main.17.Allocate2:
     mov                  r11,                   80
     mov                   r8,                   80
     add                  r11,                    1
     shl                  r11,                    3
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     mov                  rdi,                  r11
    call               malloc
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     pop                  r11
     pop                  r10
     mov                  r10,                  rax
     mov           qword[r10],                   r8
     add                  r10,                    8
     sub                  r11,                    8
     mov            qword[r9],                  r10
     add                   r9,                    8
     cmp                   r9,                  rsi
	jl	@main.17.Allocate2
     mov       qword[@chunks],                  rdi
     mov                  rdi,    qword[@MAXLENGTH]
     mov                  rsi,    qword[@MAXLENGTH]
     add                  rdi,                    1
     shl                  rdi,                    3
    push                  r10
    push                  r11
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
     pop                  r11
     pop                  r10
     mov                  rbx,                  rax
     mov           qword[rbx],                  rsi
     add                  rbx,                    8
     sub                  rdi,                    8
     mov  qword[@inputBuffer],                  rbx
     mov                  rdi,                    5
     mov                  rsi,                    5
     add                  rdi,                    1
     shl                  rdi,                    3
    push                  r10
    push                  r11
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
     pop                  r11
     pop                  r10
     mov                  r12,                  rax
     mov           qword[r12],                  rsi
     add                  r12,                    8
     sub                  rdi,                    8
     mov qword[@outputBuffer],                  r12
    push                  r10
    push                  r11
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     mov                  rdi,                  100
    call               malloc
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
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
     pop                  rbx
     pop                  r12
     add                  rsp,                   48
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
    push                  rbx
@main.1.enter:
	jmp	@main.6.ForCon
@main.5.ForBody:
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	getInt
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    0
     mov                  rax,                    0
    sete                   al
     mov                  rbx,                  rax
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@main.9.IfTrue
	jmp	@main.8.IfFalse
@main.9.IfTrue:
	jmp	@main.7.ForExit
	jmp	@main.10.IfExit
@main.8.IfFalse:
@main.10.IfExit:
     cmp                  rsi,                    1
     mov                  rax,                    0
    sete                   al
     mov                  rbx,                  rax
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@main.12.IfTrue
	jmp	@main.11.IfFalse
@main.12.IfTrue:
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	getString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rbx,                  rbx
     mov                  rdi,                  rbx
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	computeSHA1
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
	jmp	@main.13.IfExit
@main.11.IfFalse:
     cmp                  rsi,                    2
     mov                  rax,                    0
    sete                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.15.IfTrue
	jmp	@main.14.IfFalse
@main.15.IfTrue:
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	getString
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                  rbx
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	crackSHA1
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
	jmp	@main.16.IfExit
@main.14.IfFalse:
@main.16.IfExit:
	jmp	@main.13.IfExit
@main.13.IfExit:
	jmp	@main.4.ForIter
@main.4.ForIter:
	jmp	@main.6.ForCon
@main.6.ForCon:
     mov                  rsi,                    1
     cmp                  rsi,                    1
	je	@main.5.ForBody
	jmp	@main.7.ForExit
@main.7.ForExit:
     mov                  rax,                    0
	jmp	@main.2.exit
@main.2.exit:
     pop                  rbx
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
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__ord__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                   48
     mov                  rax,                    0
   setge                   al
     mov                  rdi,                  rax
     cmp                  rdi,                    0
	je	@hex2int.11.cmp_and
     cmp                  rsi,                   57
     mov                  rax,                    0
   setle                   al
     mov                  rdi,                  rax
     cmp                  rdi,                    0
@hex2int.11.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@hex2int.9.IfTrue
	jmp	@hex2int.8.IfFalse
@hex2int.9.IfTrue:
     mov                  rdi,                   r8
    imul                  rdi,                   16
     mov                  rdi,                  rdi
     add                  rdi,                  rsi
     mov                  rdi,                  rdi
     sub                  rdi,                   48
     mov                   r8,                  rdi
	jmp	@hex2int.10.IfExit
@hex2int.8.IfFalse:
     cmp                  rsi,                   65
     mov                  rax,                    0
   setge                   al
     mov                  rdi,                  rax
     cmp                  rdi,                    0
	je	@hex2int.15.cmp_and
     cmp                  rsi,                   70
     mov                  rax,                    0
   setle                   al
     mov                  rdi,                  rax
     cmp                  rdi,                    0
@hex2int.15.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@hex2int.13.IfTrue
	jmp	@hex2int.12.IfFalse
@hex2int.13.IfTrue:
     mov                  rdi,                   r8
    imul                  rdi,                   16
     mov                  rdi,                  rdi
     add                  rdi,                  rsi
     mov                  rdi,                  rdi
     sub                  rdi,                   65
     mov                  rdi,                  rdi
     add                  rdi,                   10
     mov                   r8,                  rdi
	jmp	@hex2int.14.IfExit
@hex2int.12.IfFalse:
     cmp                  rsi,                   97
     mov                  rax,                    0
   setge                   al
     mov                  rdi,                  rax
     cmp                  rdi,                    0
	je	@hex2int.19.cmp_and
     cmp                  rsi,                  102
     mov                  rax,                    0
   setle                   al
     mov                  rdi,                  rax
     cmp                  rdi,                    0
@hex2int.19.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@hex2int.17.IfTrue
	jmp	@hex2int.16.IfFalse
@hex2int.17.IfTrue:
     mov                  rdi,                   r8
    imul                  rdi,                   16
     mov                  rdi,                  rdi
     add                  rdi,                  rsi
     mov                  rsi,                  rdi
     sub                  rsi,                   97
     mov                  rsi,                  rsi
     add                  rsi,                   10
     mov                   r8,                  rsi
	jmp	@hex2int.18.IfExit
@hex2int.16.IfFalse:
     mov                  rax,                    0
	jmp	@hex2int.2.exit
	jmp	@hex2int.18.IfExit
@hex2int.18.IfExit:
	jmp	@hex2int.14.IfExit
@hex2int.14.IfExit:
	jmp	@hex2int.10.IfExit
@hex2int.10.IfExit:
	jmp	@hex2int.4.ForIter
@hex2int.4.ForIter:
     mov                  rsi,                  r12
     add                  r12,                    1
	jmp	@hex2int.6.ForCon
@hex2int.6.ForCon:
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rsi
     sub                  rsp,                    8
call	__length__
     add                  rsp,                    8
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@hex2int.5.ForBody
	jmp	@hex2int.7.ForExit
@hex2int.7.ForExit:
     mov                  rax,                   r8
	jmp	@hex2int.2.exit
@hex2int.2.exit:
     pop                  rbx
     pop                  r12
     pop                  rbp
     ret
crackSHA1:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
    push                  r12
    push                  r14
    push                  r13
    push                  rbx
@crackSHA1.1.enter:
     mov                  rbx,                  rdi
     mov                  r12,                    5
     mov                  rdi,                    5
     add                  r12,                    1
     shl                  r12,                    3
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  r12
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov           qword[rsi],                  rdi
     add                  rsi,                    8
     sub                  r12,                    8
     mov                  r12,                  rsi
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	__length__
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     cmp                  rsi,                   40
     mov                  rax,                    0
   setne                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@crackSHA1.5.IfTrue
	jmp	@crackSHA1.4.IfFalse
@crackSHA1.5.IfTrue:
     mov                  rdi,         __const_str2
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
	jmp	@crackSHA1.2.exit
	jmp	@crackSHA1.6.IfExit
@crackSHA1.4.IfFalse:
@crackSHA1.6.IfExit:
     mov                  r14,                    0
	jmp	@crackSHA1.9.ForCon
@crackSHA1.8.ForBody:
     mov                  rsi,                  r12
     mov                  rdi,                  r14
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov           qword[rsi],                    0
	jmp	@crackSHA1.7.ForIter
@crackSHA1.7.ForIter:
     mov                  rsi,                  r14
     add                  r14,                    1
	jmp	@crackSHA1.9.ForCon
@crackSHA1.9.ForCon:
     cmp                  r14,                    5
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@crackSHA1.8.ForBody
	jmp	@crackSHA1.10.ForExit
@crackSHA1.10.ForExit:
     mov                  r14,                    0
	jmp	@crackSHA1.13.ForCon
@crackSHA1.12.ForBody:
     mov                  rsi,                  r14
     mov                  rax,                  rsi
     mov                  rcx,                    8
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                   r8,                  r12
     mov                  rsi,                  rsi
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rsi,                  r14
     mov                  rax,                  rsi
     mov                  rcx,                    8
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  r13,                  r12
     mov                  rsi,                  rsi
     shl                  rsi,                    3
     add                  r13,                  rsi
     mov                   r9,                  r14
     add                   r9,                    3
     mov                  rdi,                  rbx
     mov                  rsi,                  r14
     mov                  rdx,                   r9
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	hex2int
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  r14
     mov                  rax,                  rdi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     mov                  rax,                  rdi
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                   r9,                    1
     sub                   r9,                  rdi
     mov                  rdi,                   r9
    imul                  rdi,                   16
     mov                  rsi,                  rsi
     mov                  rcx,                  rdi
     shl                  rsi,                   cl
     mov                  rdi,           qword[r13]
      or                  rdi,                  rsi
     mov            qword[r8],                  rdi
	jmp	@crackSHA1.11.ForIter
@crackSHA1.11.ForIter:
     mov                  rsi,                  r14
     add                  rsi,                    4
     mov                  r14,                  rsi
	jmp	@crackSHA1.13.ForCon
@crackSHA1.13.ForCon:
     cmp                  r14,                   40
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@crackSHA1.12.ForBody
	jmp	@crackSHA1.14.ForExit
@crackSHA1.14.ForExit:
     mov                  rbx,                    4
     mov                   r8,                    1
	jmp	@crackSHA1.17.ForCon
@crackSHA1.16.ForBody:
     mov                  r14,                    0
	jmp	@crackSHA1.21.ForCon
@crackSHA1.20.ForBody:
     mov                  rsi,  qword[@inputBuffer]
     mov                  rdi,                  r14
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov           qword[rsi],                   48
	jmp	@crackSHA1.19.ForIter
@crackSHA1.19.ForIter:
     mov                  rsi,                  r14
     add                  r14,                    1
	jmp	@crackSHA1.21.ForCon
@crackSHA1.21.ForCon:
     cmp                  r14,                   r8
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@crackSHA1.20.ForBody
	jmp	@crackSHA1.22.ForExit
@crackSHA1.22.ForExit:
	jmp	@crackSHA1.25.ForCon
@crackSHA1.24.ForBody:
     mov                  rdi,  qword[@inputBuffer]
     mov                  rsi,                   r8
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	sha1
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,                  r12
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	array_equal
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@crackSHA1.28.IfTrue
	jmp	@crackSHA1.27.IfFalse
@crackSHA1.28.IfTrue:
     mov                  r14,                    0
	jmp	@crackSHA1.32.ForCon
@crackSHA1.31.ForBody:
     mov                  rsi,  qword[@inputBuffer]
     mov                  rdi,                  r14
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rdi,           qword[rsi]
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	int2chr
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
	jmp	@crackSHA1.30.ForIter
@crackSHA1.30.ForIter:
     mov                  rsi,                  r14
     add                  r14,                    1
	jmp	@crackSHA1.32.ForCon
@crackSHA1.32.ForCon:
     cmp                  r14,                   r8
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@crackSHA1.31.ForBody
	jmp	@crackSHA1.33.ForExit
@crackSHA1.33.ForExit:
     mov                  rdi,         __const_str0
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
	jmp	@crackSHA1.2.exit
	jmp	@crackSHA1.29.IfExit
@crackSHA1.27.IfFalse:
@crackSHA1.29.IfExit:
     mov                  rdi,  qword[@inputBuffer]
     mov                  rsi,                   r8
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	nextText
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     xor                  rsi,                    1
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@crackSHA1.35.IfTrue
	jmp	@crackSHA1.34.IfFalse
@crackSHA1.35.IfTrue:
	jmp	@crackSHA1.26.ForExit
	jmp	@crackSHA1.36.IfExit
@crackSHA1.34.IfFalse:
@crackSHA1.36.IfExit:
	jmp	@crackSHA1.23.ForIter
@crackSHA1.23.ForIter:
	jmp	@crackSHA1.25.ForCon
@crackSHA1.25.ForCon:
     mov                  rsi,                    1
     cmp                  rsi,                    1
	je	@crackSHA1.24.ForBody
	jmp	@crackSHA1.26.ForExit
@crackSHA1.26.ForExit:
	jmp	@crackSHA1.15.ForIter
@crackSHA1.15.ForIter:
     mov                  rsi,                   r8
     add                   r8,                    1
	jmp	@crackSHA1.17.ForCon
@crackSHA1.17.ForCon:
     cmp                   r8,                  rbx
     mov                  rax,                    0
   setle                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@crackSHA1.16.ForBody
	jmp	@crackSHA1.18.ForExit
@crackSHA1.18.ForExit:
     mov                  rdi,         __const_str3
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
@crackSHA1.2.exit:
     pop                  rbx
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                    8
     pop                  rbp
     ret
toStringHex:
    push                  rbp
     mov                  rbp,                  rsp
    push                  r12
    push                  r13
    push                  rbx
@toStringHex.1.enter:
     mov                  rbx,                  rdi
     mov                  rsi,         __const_str0
     mov                   r8,                   28
	jmp	@toStringHex.6.ForCon
@toStringHex.5.ForBody:
     mov                  rdi,                  rbx
     mov                  rcx,                   r8
     shr                  rdi,                   cl
     mov                  rdi,                  rdi
     and                  rdi,                   15
     mov                  r12,                  rdi
     cmp                  r12,                   10
     mov                  rax,                    0
    setl                   al
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@toStringHex.9.IfTrue
	jmp	@toStringHex.8.IfFalse
@toStringHex.9.IfTrue:
     mov                  rdi,                   48
     add                  rdi,                  r12
     mov                  rdi,                  rdi
    push                  rdi
    push                   r8
    push                  rsi
call	int2chr
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  r13,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r13
    push                  rdi
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
	jmp	@toStringHex.10.IfExit
@toStringHex.8.IfFalse:
     mov                  rdi,                   65
     add                  rdi,                  r12
     mov                  rdi,                  rdi
     sub                  rdi,                   10
     mov                  rdi,                  rdi
    push                  rdi
    push                   r8
    push                  rsi
call	int2chr
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  r12,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r12
    push                  rdi
    push                   r8
    push                  rsi
call	__string_connect__
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
	jmp	@toStringHex.10.IfExit
@toStringHex.10.IfExit:
	jmp	@toStringHex.4.ForIter
@toStringHex.4.ForIter:
     mov                  rdi,                   r8
     sub                  rdi,                    4
     mov                   r8,                  rdi
	jmp	@toStringHex.6.ForCon
@toStringHex.6.ForCon:
     cmp                   r8,                    0
     mov                  rax,                    0
   setge                   al
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@toStringHex.5.ForBody
	jmp	@toStringHex.7.ForExit
@toStringHex.7.ForExit:
     mov                  rax,                  rsi
	jmp	@toStringHex.2.exit
@toStringHex.2.exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     pop                  rbp
     ret
computeSHA1:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
    push                  r12
    push                  rbx
@computeSHA1.1.enter:
     mov                  rbx,                  rdi
     mov                  r12,                    0
	jmp	@computeSHA1.6.ForCon
@computeSHA1.5.ForBody:
     mov                   r8,  qword[@inputBuffer]
     mov                  rsi,                  r12
     shl                  rsi,                    3
     add                   r8,                  rsi
     mov                  rdi,                  rbx
     mov                  rsi,                  r12
    push                  rdi
    push                   r8
    push                  rsi
call	__ord__
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov            qword[r8],                  rsi
	jmp	@computeSHA1.4.ForIter
@computeSHA1.4.ForIter:
     mov                  rsi,                  r12
     add                  r12,                    1
	jmp	@computeSHA1.6.ForCon
@computeSHA1.6.ForCon:
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rsi
call	__length__
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     cmp                  r12,                  rsi
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@computeSHA1.5.ForBody
	jmp	@computeSHA1.7.ForExit
@computeSHA1.7.ForExit:
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rsi
call	__length__
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rdi,  qword[@inputBuffer]
     mov                  rsi,                  rsi
    push                  rdi
    push                   r8
    push                  rsi
call	sha1
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  r12,                    0
	jmp	@computeSHA1.10.ForCon
@computeSHA1.9.ForBody:
     mov                  rbx,                  rsi
     mov                  rdi,                  r12
     shl                  rdi,                    3
     add                  rbx,                  rdi
     mov                  rdi,           qword[rbx]
    push                  rdi
    push                   r8
    push                  rsi
call	toStringHex
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rsi
call	print
     pop                  rsi
     pop                   r8
     pop                  rdi
	jmp	@computeSHA1.8.ForIter
@computeSHA1.8.ForIter:
     mov                  rbx,                  r12
     add                  r12,                    1
	jmp	@computeSHA1.10.ForCon
@computeSHA1.10.ForCon:
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                  rsi
call	__size__
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rbx,                  rax
     cmp                  r12,                  rbx
     mov                  rax,                    0
    setl                   al
     mov                  rbx,                  rax
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@computeSHA1.9.ForBody
	jmp	@computeSHA1.11.ForExit
@computeSHA1.11.ForExit:
     mov                  rdi,         __const_str0
    push                  rdi
    push                   r8
    push                  rsi
call	println
     pop                  rsi
     pop                   r8
     pop                  rdi
@computeSHA1.2.exit:
     pop                  rbx
     pop                  r12
     add                  rsp,                    8
     pop                  rbp
     ret
sha1:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   72
    push                  r12
    push                  r14
    push                  r13
    push                  r15
    push                  rbx
@sha1.1.enter:
     mov                  rbx,                  rdi
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     add                  rdi,                   64
     mov                  rdi,                  rdi
     sub                  rdi,                   56
     mov                  rdi,                  rdi
     mov                  rax,                  rdi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     add                  rdi,                    1
     mov                  r12,                  rdi
     cmp                  r12,     qword[@MAXCHUNK]
     mov                  rax,                    0
    setg                   al
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@sha1.5.IfTrue
	jmp	@sha1.4.IfFalse
@sha1.5.IfTrue:
     mov                  rdi,         __const_str1
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	println
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
	jmp	@sha1.2.exit
	jmp	@sha1.6.IfExit
@sha1.4.IfFalse:
@sha1.6.IfExit:
     mov        qword[rbp-16],                    0
	jmp	@sha1.9.ForCon
@sha1.8.ForBody:
     mov        qword[rbp-24],                    0
	jmp	@sha1.13.ForCon
@sha1.12.ForBody:
     mov                  rdi,       qword[@chunks]
     mov                   r8,        qword[rbp-16]
     shl                   r8,                    3
     add                  rdi,                   r8
     mov                  rdi,           qword[rdi]
     mov                   r8,        qword[rbp-24]
     shl                   r8,                    3
     add                  rdi,                   r8
     mov           qword[rdi],                    0
	jmp	@sha1.11.ForIter
@sha1.11.ForIter:
     mov                  rdi,        qword[rbp-24]
     add        qword[rbp-24],                    1
	jmp	@sha1.13.ForCon
@sha1.13.ForCon:
     cmp        qword[rbp-24],                   80
     mov                  rax,                    0
    setl                   al
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@sha1.12.ForBody
	jmp	@sha1.14.ForExit
@sha1.14.ForExit:
	jmp	@sha1.7.ForIter
@sha1.7.ForIter:
     mov                  rdi,        qword[rbp-16]
     add        qword[rbp-16],                    1
	jmp	@sha1.9.ForCon
@sha1.9.ForCon:
     cmp        qword[rbp-16],                  r12
     mov                  rax,                    0
    setl                   al
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@sha1.8.ForBody
	jmp	@sha1.10.ForExit
@sha1.10.ForExit:
     mov        qword[rbp-16],                    0
	jmp	@sha1.17.ForCon
@sha1.16.ForBody:
     mov                  rdi,        qword[rbp-16]
     mov                  rax,                  rdi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                   r8,       qword[@chunks]
     mov                  rdi,                  rdi
     shl                  rdi,                    3
     add                   r8,                  rdi
     mov                  rdi,        qword[rbp-16]
     mov                  rax,                  rdi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rdi,                  rdi
     mov                  rax,                  rdi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                   r8,            qword[r8]
     mov                  rdi,                  rdi
     shl                  rdi,                    3
     add                   r8,                  rdi
     mov                  rdi,        qword[rbp-16]
     mov                  rax,                  rdi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  r13,       qword[@chunks]
     mov                  rdi,                  rdi
     shl                  rdi,                    3
     add                  r13,                  rdi
     mov                  rdi,        qword[rbp-16]
     mov                  rax,                  rdi
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rdi,                  rdx
     mov                  rdi,                  rdi
     mov                  rax,                  rdi
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rdi,                  rax
     mov                  r13,           qword[r13]
     mov                  rdi,                  rdi
     shl                  rdi,                    3
     add                  r13,                  rdi
     mov                  rdi,                  rbx
     mov                   r9,        qword[rbp-16]
     shl                   r9,                    3
     add                  rdi,                   r9
     mov                   r9,        qword[rbp-16]
     mov                  rax,                   r9
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                   r9,                  rdx
     mov                  r14,                    3
     sub                  r14,                   r9
     mov                   r9,                  r14
    imul                   r9,                    8
     mov                  rdi,           qword[rdi]
     mov                  rcx,                   r9
     shl                  rdi,                   cl
     mov                  r13,           qword[r13]
      or                  r13,                  rdi
     mov            qword[r8],                  r13
	jmp	@sha1.15.ForIter
@sha1.15.ForIter:
     mov                  rdi,        qword[rbp-16]
     add        qword[rbp-16],                    1
	jmp	@sha1.17.ForCon
@sha1.17.ForCon:
     cmp        qword[rbp-16],                  rsi
     mov                  rax,                    0
    setl                   al
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@sha1.16.ForBody
	jmp	@sha1.18.ForExit
@sha1.18.ForExit:
     mov                  rbx,        qword[rbp-16]
     mov                  rax,                  rbx
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rbx,                  rax
     mov                  rdi,       qword[@chunks]
     mov                  rbx,                  rbx
     shl                  rbx,                    3
     add                  rdi,                  rbx
     mov                  rbx,        qword[rbp-16]
     mov                  rax,                  rbx
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rbx,                  rbx
     mov                  rax,                  rbx
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rbx,                  rax
     mov                  rdi,           qword[rdi]
     mov                  rbx,                  rbx
     shl                  rbx,                    3
     add                  rdi,                  rbx
     mov                  rbx,        qword[rbp-16]
     mov                  rax,                  rbx
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rbx,                  rax
     mov                   r8,       qword[@chunks]
     mov                  rbx,                  rbx
     shl                  rbx,                    3
     add                   r8,                  rbx
     mov                  rbx,        qword[rbp-16]
     mov                  rax,                  rbx
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rbx,                  rbx
     mov                  rax,                  rbx
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rbx,                  rax
     mov                   r8,            qword[r8]
     mov                  rbx,                  rbx
     shl                  rbx,                    3
     add                   r8,                  rbx
     mov                  rbx,        qword[rbp-16]
     mov                  rax,                  rbx
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  r13,                    3
     sub                  r13,                  rbx
     mov                  rbx,                  r13
    imul                  rbx,                    8
     mov                  r13,                  128
     mov                  rcx,                  rbx
     shl                  r13,                   cl
     mov                  rbx,            qword[r8]
      or                  rbx,                  r13
     mov           qword[rdi],                  rbx
     mov                  rbx,                  r12
     sub                  rbx,                    1
     mov                  rdi,       qword[@chunks]
     mov                  rbx,                  rbx
     shl                  rbx,                    3
     add                  rdi,                  rbx
     mov                  rbx,           qword[rdi]
     mov                  rdi,                  rsi
     shl                  rdi,                    3
     mov       qword[rbx+120],                  rdi
     mov                  rbx,                  r12
     sub                  rbx,                    1
     mov                  rdi,       qword[@chunks]
     mov                  rbx,                  rbx
     shl                  rbx,                    3
     add                  rdi,                  rbx
     mov                  rbx,           qword[rdi]
     mov                  rsi,                  rsi
     shr                  rsi,                   29
     mov                  rsi,                  rsi
     and                  rsi,                    7
     mov       qword[rbx+112],                  rsi
     mov                  rbx,           1732584193
     mov                  rdi,                43913
     mov                  rsi,                61389
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	lohi
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rdi,                56574
     mov                  rsi,                39098
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	lohi
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  r13,                  rsi
     mov                   r9,            271733878
     mov                  rdi,                57840
     mov                  rsi,                50130
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	lohi
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  r14,                  rsi
     mov        qword[rbp-16],                    0
	jmp	@sha1.21.ForCon
@sha1.20.ForBody:
     mov        qword[rbp-24],                   16
	jmp	@sha1.25.ForCon
@sha1.24.ForBody:
     mov                  rsi,       qword[@chunks]
     mov                  rdi,        qword[rbp-16]
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  r10,           qword[rsi]
     mov                  rsi,        qword[rbp-24]
     shl                  rsi,                    3
     add                  r10,                  rsi
     mov                  rsi,       qword[@chunks]
     mov                  rdi,        qword[rbp-16]
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rdi,        qword[rbp-24]
     sub                  rdi,                    3
     mov                  rsi,           qword[rsi]
     mov                  rdi,                  rdi
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rdi,       qword[@chunks]
     mov                  r15,        qword[rbp-16]
     shl                  r15,                    3
     add                  rdi,                  r15
     mov                  r15,        qword[rbp-24]
     sub                  r15,                    8
     mov                  rdi,           qword[rdi]
     mov                  r15,                  r15
     shl                  r15,                    3
     add                  rdi,                  r15
     mov                  rsi,           qword[rsi]
     xor                  rsi,           qword[rdi]
     mov                  rdi,       qword[@chunks]
     mov                  r15,        qword[rbp-16]
     shl                  r15,                    3
     add                  rdi,                  r15
     mov                  r15,        qword[rbp-24]
     sub                  r15,                   14
     mov                  rdi,           qword[rdi]
     mov                  r15,                  r15
     shl                  r15,                    3
     add                  rdi,                  r15
     mov                  rsi,                  rsi
     xor                  rsi,           qword[rdi]
     mov                  rdi,       qword[@chunks]
     mov                  r15,        qword[rbp-16]
     shl                  r15,                    3
     add                  rdi,                  r15
     mov                  r15,        qword[rbp-24]
     sub                  r15,                   16
     mov                  rdi,           qword[rdi]
     mov                  r15,                  r15
     shl                  r15,                    3
     add                  rdi,                  r15
     mov                  rsi,                  rsi
     xor                  rsi,           qword[rdi]
     mov                  rdi,                  rsi
     mov                  rsi,                    1
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	rotate_left
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov           qword[r10],                  rsi
	jmp	@sha1.23.ForIter
@sha1.23.ForIter:
     mov                  rsi,        qword[rbp-24]
     add        qword[rbp-24],                    1
	jmp	@sha1.25.ForCon
@sha1.25.ForCon:
     cmp        qword[rbp-24],                   80
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@sha1.24.ForBody
	jmp	@sha1.26.ForExit
@sha1.26.ForExit:
     mov                  r11,                  rbx
     mov        qword[rbp-40],                   r8
     mov        qword[rbp-48],                  r13
     mov        qword[rbp-56],                   r9
     mov                  r15,                  r14
     mov        qword[rbp-24],                    0
	jmp	@sha1.29.ForCon
@sha1.28.ForBody:
     cmp        qword[rbp-24],                   20
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@sha1.32.IfTrue
	jmp	@sha1.31.IfFalse
@sha1.32.IfTrue:
     mov                  rsi,        qword[rbp-40]
     and                  rsi,        qword[rbp-48]
     mov                  rdi,        qword[rbp-40]
     not                  rdi
     mov                  rdi,                  rdi
     and                  rdi,        qword[rbp-56]
     mov                  rsi,                  rsi
      or                  rsi,                  rdi
     mov                  r10,                  rsi
     mov        qword[rbp-64],           1518500249
	jmp	@sha1.33.IfExit
@sha1.31.IfFalse:
     cmp        qword[rbp-24],                   40
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@sha1.35.IfTrue
	jmp	@sha1.34.IfFalse
@sha1.35.IfTrue:
     mov                  rsi,        qword[rbp-40]
     xor                  rsi,        qword[rbp-48]
     mov                  rsi,                  rsi
     xor                  rsi,        qword[rbp-56]
     mov                  r10,                  rsi
     mov        qword[rbp-64],           1859775393
	jmp	@sha1.36.IfExit
@sha1.34.IfFalse:
     cmp        qword[rbp-24],                   60
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@sha1.38.IfTrue
	jmp	@sha1.37.IfFalse
@sha1.38.IfTrue:
     mov                  rsi,        qword[rbp-40]
     and                  rsi,        qword[rbp-48]
     mov                  rdi,        qword[rbp-40]
     and                  rdi,        qword[rbp-56]
     mov                  rsi,                  rsi
      or                  rsi,                  rdi
     mov                  rdi,        qword[rbp-48]
     and                  rdi,        qword[rbp-56]
     mov                  rsi,                  rsi
      or                  rsi,                  rdi
     mov                  r10,                  rsi
     mov                  rdi,                48348
     mov                  rsi,                36635
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	lohi
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov        qword[rbp-64],                  rsi
	jmp	@sha1.39.IfExit
@sha1.37.IfFalse:
     mov                  rsi,        qword[rbp-40]
     xor                  rsi,        qword[rbp-48]
     mov                  rsi,                  rsi
     xor                  rsi,        qword[rbp-56]
     mov                  r10,                  rsi
     mov                  rdi,                49622
     mov                  rsi,                51810
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	lohi
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov        qword[rbp-64],                  rsi
	jmp	@sha1.39.IfExit
@sha1.39.IfExit:
	jmp	@sha1.36.IfExit
@sha1.36.IfExit:
	jmp	@sha1.33.IfExit
@sha1.33.IfExit:
     mov                  rdi,                  r11
     mov                  rsi,                    5
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	rotate_left
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
     mov                  rsi,                  r15
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	add
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  r15,                  rax
     mov                  rdi,                  r10
     mov                  rsi,        qword[rbp-64]
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	add
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,                  r15
     mov                  rsi,                  rsi
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	add
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rdi,       qword[@chunks]
     mov                  r10,        qword[rbp-16]
     shl                  r10,                    3
     add                  rdi,                  r10
     mov                  r10,           qword[rdi]
     mov                  rdi,        qword[rbp-24]
     shl                  rdi,                    3
     add                  r10,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,           qword[r10]
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	add
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  r10,                  rsi
     mov                  r15,        qword[rbp-56]
     mov                  rcx,        qword[rbp-48]
     mov        qword[rbp-56],                  rcx
     mov                  rdi,        qword[rbp-40]
     mov                  rsi,                   30
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	rotate_left
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov        qword[rbp-48],                  rsi
     mov        qword[rbp-40],                  r11
     mov                  r11,                  r10
	jmp	@sha1.27.ForIter
@sha1.27.ForIter:
     mov                  rsi,        qword[rbp-24]
     add        qword[rbp-24],                    1
	jmp	@sha1.29.ForCon
@sha1.29.ForCon:
     cmp        qword[rbp-24],                   80
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@sha1.28.ForBody
	jmp	@sha1.30.ForExit
@sha1.30.ForExit:
     mov                  rdi,                  rbx
     mov                  rsi,                  r11
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	add
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  rbx,                  rsi
     mov                  rdi,                   r8
     mov                  rsi,        qword[rbp-40]
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	add
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                   r8,                  rsi
     mov                  rdi,                  r13
     mov                  rsi,        qword[rbp-48]
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	add
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  r13,                  rsi
     mov                  rdi,                   r9
     mov                  rsi,        qword[rbp-56]
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	add
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                   r9,                  rsi
     mov                  rdi,                  r14
     mov                  rsi,                  r15
    push                  r10
    push                  r11
    push                  rdi
    push                   r8
    push                   r9
    push                  rsi
call	add
     pop                  rsi
     pop                   r9
     pop                   r8
     pop                  rdi
     pop                  r11
     pop                  r10
     mov                  rsi,                  rax
     mov                  r14,                  rsi
	jmp	@sha1.19.ForIter
@sha1.19.ForIter:
     mov                  rsi,        qword[rbp-16]
     add        qword[rbp-16],                    1
	jmp	@sha1.21.ForCon
@sha1.21.ForCon:
     cmp        qword[rbp-16],                  r12
     mov                  rax,                    0
    setl                   al
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@sha1.20.ForBody
	jmp	@sha1.22.ForExit
@sha1.22.ForExit:
     mov                  rsi, qword[@outputBuffer]
     mov           qword[rsi],                  rbx
     mov                  rsi, qword[@outputBuffer]
     mov         qword[rsi+8],                   r8
     mov                  rsi, qword[@outputBuffer]
     mov        qword[rsi+16],                  r13
     mov                  rsi, qword[@outputBuffer]
     mov        qword[rsi+24],                   r9
     mov                  rsi, qword[@outputBuffer]
     mov        qword[rsi+32],                  r14
     mov                  rax, qword[@outputBuffer]
	jmp	@sha1.2.exit
@sha1.2.exit:
     pop                  rbx
     pop                  r15
     pop                  r13
     pop                  r14
     pop                  r12
     add                  rsp,                   72
     pop                  rbp
     ret
int2chr:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
    push                  r12
    push                  rbx
@int2chr.1.enter:
     mov                  rsi,                  rdi
     cmp                  rsi,                   32
     mov                  rax,                    0
   setge                   al
     mov                  rbx,                  rax
     cmp                  rbx,                    0
	je	@int2chr.7.cmp_and
     cmp                  rsi,                  126
     mov                  rax,                    0
   setle                   al
     mov                  rbx,                  rax
     cmp                  rbx,                    0
@int2chr.7.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov                  rbx,                  rax
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@int2chr.5.IfTrue
	jmp	@int2chr.4.IfFalse
@int2chr.5.IfTrue:
     mov                  rbx,                  rsi
     sub                  rbx,                   32
     mov                  r12,                  rsi
     sub                  r12,                   32
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,                  rbx
     mov                  rdx,                  r12
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rsi,                  rax
     mov                  rax,                  rsi
	jmp	@int2chr.2.exit
	jmp	@int2chr.6.IfExit
@int2chr.4.IfFalse:
@int2chr.6.IfExit:
     mov                  rax,         __const_str0
	jmp	@int2chr.2.exit
@int2chr.2.exit:
     pop                  rbx
     pop                  r12
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
     mov                  rbx,                  rdi
     mov                  rsi,                  rsi
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rsi
call	__size__
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  r12,                  rax
     mov                  rdi,                  rsi
    push                  rdi
    push                   r8
    push                  rsi
call	__size__
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rdi,                  rax
     cmp                  r12,                  rdi
     mov                  rax,                    0
   setne                   al
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@array_equal.5.IfTrue
	jmp	@array_equal.4.IfFalse
@array_equal.5.IfTrue:
     mov                  rax,                    0
	jmp	@array_equal.2.exit
	jmp	@array_equal.6.IfExit
@array_equal.4.IfFalse:
@array_equal.6.IfExit:
     mov                  r12,                    0
	jmp	@array_equal.9.ForCon
@array_equal.8.ForBody:
     mov                  rdi,                  rbx
     mov                   r8,                  r12
     shl                   r8,                    3
     add                  rdi,                   r8
     mov                   r8,                  rsi
     mov                  r13,                  r12
     shl                  r13,                    3
     add                   r8,                  r13
     mov                  rdi,           qword[rdi]
     cmp                  rdi,            qword[r8]
     mov                  rax,                    0
   setne                   al
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@array_equal.12.IfTrue
	jmp	@array_equal.11.IfFalse
@array_equal.12.IfTrue:
     mov                  rax,                    0
	jmp	@array_equal.2.exit
	jmp	@array_equal.13.IfExit
@array_equal.11.IfFalse:
@array_equal.13.IfExit:
	jmp	@array_equal.7.ForIter
@array_equal.7.ForIter:
     mov                  rdi,                  r12
     add                  r12,                    1
	jmp	@array_equal.9.ForCon
@array_equal.9.ForCon:
     mov                  rdi,                  rbx
    push                  rdi
    push                   r8
    push                  rsi
call	__size__
     pop                  rsi
     pop                   r8
     pop                  rdi
     mov                  rdi,                  rax
     cmp                  r12,                  rdi
     mov                  rax,                    0
    setl                   al
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@array_equal.8.ForBody
	jmp	@array_equal.10.ForExit
@array_equal.10.ForExit:
     mov                  rax,                    1
	jmp	@array_equal.2.exit
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
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
     mov                  rax,                    0
    sete                   al
     mov                   r8,                  rax
     mov                   r8,                   r8
     cmp                   r8,                    1
	je	@rotate_left.5.IfTrue
	jmp	@rotate_left.4.IfFalse
@rotate_left.5.IfTrue:
     mov                  rsi,                  rdi
     and                  rsi,           2147483647
     mov                  rsi,                  rsi
     shl                  rsi,                    1
     mov                  rdi,                  rdi
     shr                  rdi,                   31
     mov                  rdi,                  rdi
     and                  rdi,                    1
     mov                  rsi,                  rsi
      or                  rsi,                  rdi
     mov                  rax,                  rsi
	jmp	@rotate_left.2.exit
	jmp	@rotate_left.6.IfExit
@rotate_left.4.IfFalse:
@rotate_left.6.IfExit:
     cmp                  rsi,                   31
     mov                  rax,                    0
    sete                   al
     mov                   r8,                  rax
     mov                   r8,                   r8
     cmp                   r8,                    1
	je	@rotate_left.8.IfTrue
	jmp	@rotate_left.7.IfFalse
@rotate_left.8.IfTrue:
     mov                  rsi,                  rdi
     and                  rsi,                    1
     mov                  rsi,                  rsi
     shl                  rsi,                   31
     mov                  rdi,                  rdi
     shr                  rdi,                    1
     mov                  rdi,                  rdi
     and                  rdi,           2147483647
     mov                  rsi,                  rsi
      or                  rsi,                  rdi
     mov                  rax,                  rsi
	jmp	@rotate_left.2.exit
	jmp	@rotate_left.9.IfExit
@rotate_left.7.IfFalse:
@rotate_left.9.IfExit:
     mov                   r8,                   32
     sub                   r8,                  rsi
     mov                   r9,                    1
     mov                  rcx,                   r8
     shl                   r9,                   cl
     mov                   r8,                   r9
     sub                   r8,                    1
     mov                   r9,                  rdi
     and                   r9,                   r8
     mov                   r8,                   r9
     mov                  rcx,                  rsi
     shl                   r8,                   cl
     mov                   r9,                   32
     sub                   r9,                  rsi
     mov                  rdi,                  rdi
     mov                  rcx,                   r9
     shr                  rdi,                   cl
     mov                   r9,                    1
     mov                  rcx,                  rsi
     shl                   r9,                   cl
     mov                  rsi,                   r9
     sub                  rsi,                    1
     mov                  rdi,                  rdi
     and                  rdi,                  rsi
     mov                  rsi,                   r8
      or                  rsi,                  rdi
     mov                  rax,                  rsi
	jmp	@rotate_left.2.exit
@rotate_left.2.exit:
     pop                  rbp
     ret
lohi:
    push                  rbp
     mov                  rbp,                  rsp
@lohi.1.enter:
     mov                  rdi,                  rdi
     mov                  rsi,                  rsi
     mov                  rsi,                  rsi
     shl                  rsi,                   16
     mov                  rdi,                  rdi
      or                  rdi,                  rsi
     mov                  rax,                  rdi
	jmp	@lohi.2.exit
@lohi.2.exit:
     pop                  rbp
     ret
nextLetter:
    push                  rbp
     mov                  rbp,                  rsp
     mov        qword[rbp-16],                  rdi
     cmp                  rdi,                    0
      jl @nextLetter_purity_checkin_out
     cmp                  rdi,                  100
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
     mov                  rsi,                  rdi
     cmp                  rsi,                  122
     mov                  rax,                    0
    sete                   al
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@nextLetter.5.IfTrue
	jmp	@nextLetter.4.IfFalse
@nextLetter.5.IfTrue:
     mov                  rax,                   -1
	jmp	@nextLetter.2.exit
	jmp	@nextLetter.6.IfExit
@nextLetter.4.IfFalse:
@nextLetter.6.IfExit:
     cmp                  rsi,                   90
     mov                  rax,                    0
    sete                   al
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@nextLetter.8.IfTrue
	jmp	@nextLetter.7.IfFalse
@nextLetter.8.IfTrue:
     mov                  rax,                   97
	jmp	@nextLetter.2.exit
	jmp	@nextLetter.9.IfExit
@nextLetter.7.IfFalse:
@nextLetter.9.IfExit:
     cmp                  rsi,                   57
     mov                  rax,                    0
    sete                   al
     mov                  rdi,                  rax
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@nextLetter.11.IfTrue
	jmp	@nextLetter.10.IfFalse
@nextLetter.11.IfTrue:
     mov                  rax,                   65
	jmp	@nextLetter.2.exit
	jmp	@nextLetter.12.IfExit
@nextLetter.10.IfFalse:
@nextLetter.12.IfExit:
     mov                  rsi,                  rsi
     add                  rsi,                    1
     mov                  rax,                  rsi
	jmp	@nextLetter.2.exit
@nextLetter.2.exit:
     add                  rsp,                   16
     mov                  rdi,                  rax
     cmp        qword[rbp-16],                    0
      jl @nextLetter_purity_addition_out
     cmp        qword[rbp-16],                  100
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



