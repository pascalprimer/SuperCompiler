  global                 main
  extern	malloc


 section                .text
add:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  152
@add.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                  rsi
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-24],                  rcx
     mov                  rax,        qword[rbp-24]
     and                  rax,                65535
     mov        qword[rbp-24],                  rax
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-32],                  rcx
     mov                  rax,        qword[rbp-32]
     and                  rax,                65535
     mov        qword[rbp-32],                  rax
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-40],                  rcx
     mov                  rax,        qword[rbp-40]
     add                  rax,        qword[rbp-32]
     mov        qword[rbp-40],                  rax
     mov                  rcx,        qword[rbp-40]
     mov        qword[rbp-48],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-56],                  rcx
     shr        qword[rbp-56],                   16
     mov                  rcx,        qword[rbp-56]
     mov        qword[rbp-64],                  rcx
     mov                  rax,        qword[rbp-64]
     and                  rax,                65535
     mov        qword[rbp-64],                  rax
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-72],                  rcx
     shr        qword[rbp-72],                   16
     mov                  rcx,        qword[rbp-72]
     mov        qword[rbp-80],                  rcx
     mov                  rax,        qword[rbp-80]
     and                  rax,                65535
     mov        qword[rbp-80],                  rax
     mov                  rcx,        qword[rbp-64]
     mov        qword[rbp-88],                  rcx
     mov                  rax,        qword[rbp-88]
     add                  rax,        qword[rbp-80]
     mov        qword[rbp-88],                  rax
     mov                  rcx,        qword[rbp-48]
     mov        qword[rbp-96],                  rcx
     shr        qword[rbp-96],                   16
     mov                  rcx,        qword[rbp-88]
     mov       qword[rbp-104],                  rcx
     mov                  rax,       qword[rbp-104]
     add                  rax,        qword[rbp-96]
     mov       qword[rbp-104],                  rax
     mov                  rcx,       qword[rbp-104]
     mov       qword[rbp-112],                  rcx
     mov                  rax,       qword[rbp-112]
     and                  rax,                65535
     mov       qword[rbp-112],                  rax
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-120],                  rcx
     mov                  rcx,       qword[rbp-120]
     mov       qword[rbp-128],                  rcx
     shl       qword[rbp-128],                   16
     mov                  rcx,        qword[rbp-48]
     mov       qword[rbp-136],                  rcx
     mov                  rax,       qword[rbp-136]
     and                  rax,                65535
     mov       qword[rbp-136],                  rax
     mov                  rcx,       qword[rbp-128]
     mov       qword[rbp-144],                  rcx
     mov                  rax,       qword[rbp-144]
      or                  rax,       qword[rbp-136]
     mov       qword[rbp-144],                  rax
     mov                  rax,       qword[rbp-144]
	jmp	@add.2.exit
@add.2.exit:
     add                  rsp,                  152
     pop                  rbp
     ret
nextText:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  176
@nextText.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                  rsi
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-24],                  rcx
     mov                  rax,        qword[rbp-24]
     sub                  rax,                    1
     mov        qword[rbp-24],                  rax
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-32],                  rcx
	jmp	@nextText.6.ForCon
@nextText.5.ForBody:
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-40],                  rcx
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-48],                  rcx
     shl        qword[rbp-48],                    3
     mov                  rax,        qword[rbp-40]
     add                  rax,        qword[rbp-48]
     mov        qword[rbp-40],                  rax
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-56],                  rcx
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-64],                  rcx
     shl        qword[rbp-64],                    3
     mov                  rax,        qword[rbp-56]
     add                  rax,        qword[rbp-64]
     mov        qword[rbp-56],                  rax
     mov                  rdx,        qword[rbp-56]
     mov                  rdi,           qword[rdx]
    push                  rdi
    push                  rsi
call	nextLetter
     pop                  rsi
     pop                  rdi
     mov        qword[rbp-88],                  rax
     mov                  rdx,        qword[rbp-40]
     mov                  rcx,        qword[rbp-88]
     mov           qword[rdx],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-96],                  rcx
     mov                  rcx,        qword[rbp-32]
     mov       qword[rbp-104],                  rcx
     shl       qword[rbp-104],                    3
     mov                  rax,        qword[rbp-96]
     add                  rax,       qword[rbp-104]
     mov        qword[rbp-96],                  rax
     mov                  rdx,        qword[rbp-96]
     cmp           qword[rdx],                   -1
     mov                  rax,                    0
    sete                   al
     mov       qword[rbp-112],                  rax
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-120],                  rcx
     cmp       qword[rbp-120],                    1
	je	@nextText.9.IfTrue
	jmp	@nextText.8.IfFalse
@nextText.9.IfTrue:
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-128],                  rcx
     mov                  rcx,        qword[rbp-32]
     mov       qword[rbp-136],                  rcx
     shl       qword[rbp-136],                    3
     mov                  rax,       qword[rbp-128]
     add                  rax,       qword[rbp-136]
     mov       qword[rbp-128],                  rax
     mov                  rdx,       qword[rbp-128]
     mov           qword[rdx],                   48
	jmp	@nextText.10.IfExit
@nextText.8.IfFalse:
     mov                  rax,                    1
	jmp	@nextText.2.exit
	jmp	@nextText.10.IfExit
@nextText.10.IfExit:
	jmp	@nextText.4.ForIter
@nextText.4.ForIter:
     mov                  rcx,        qword[rbp-32]
     mov       qword[rbp-152],                  rcx
     sub        qword[rbp-32],                    1
	jmp	@nextText.6.ForCon
@nextText.6.ForCon:
     cmp        qword[rbp-32],                    0
     mov                  rax,                    0
   setge                   al
     mov       qword[rbp-160],                  rax
     mov                  rcx,       qword[rbp-160]
     mov       qword[rbp-168],                  rcx
     cmp       qword[rbp-168],                    1
	je	@nextText.5.ForBody
	jmp	@nextText.7.ForExit
@nextText.7.ForExit:
     mov                  rax,                    0
	jmp	@nextText.2.exit
@nextText.2.exit:
     add                  rsp,                  176
     pop                  rbp
     ret
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  184
     mov   qword[@asciiTable],         __const_str4
     mov     qword[@MAXCHUNK],                  100
     mov                  rcx,     qword[@MAXCHUNK]
     mov        qword[rbp-24],                  rcx
     mov                  rax,        qword[rbp-24]
     sub                  rax,                    1
     mov        qword[rbp-24],                  rax
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-32],                  rcx
     mov                  rax,        qword[rbp-32]
    imul                  rax,                   64
     mov        qword[rbp-32],                  rax
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-40],                  rcx
     mov                  rax,        qword[rbp-40]
     sub                  rax,                   16
     mov        qword[rbp-40],                  rax
     mov                  rcx,        qword[rbp-40]
     mov    qword[@MAXLENGTH],                  rcx
     mov                  rcx,     qword[@MAXCHUNK]
     mov        qword[rbp-56],                  rcx
     mov                  rcx,     qword[@MAXCHUNK]
     mov        qword[rbp-64],                  rcx
     mov                  rax,        qword[rbp-56]
     add                  rax,                    1
     mov        qword[rbp-56],                  rax
     shl        qword[rbp-56],                    3
     sub                  rsp,                    8
     mov                  rdi,        qword[rbp-56]
    call               malloc
     mov        qword[rbp-72],                  rax
     add                  rsp,                    8
     mov                  rdx,        qword[rbp-72]
     mov                  rcx,        qword[rbp-64]
     mov           qword[rdx],                  rcx
     mov                  rax,        qword[rbp-72]
     add                  rax,                    8
     mov        qword[rbp-72],                  rax
     mov                  rax,        qword[rbp-56]
     sub                  rax,                    8
     mov        qword[rbp-56],                  rax
     mov                  rcx,        qword[rbp-72]
     mov        qword[rbp-80],                  rcx
     mov                  rcx,        qword[rbp-72]
     mov        qword[rbp-88],                  rcx
     mov                  rax,        qword[rbp-88]
     add                  rax,        qword[rbp-56]
     mov        qword[rbp-88],                  rax
@main.17.Allocate2:
     mov        qword[rbp-96],                   80
     mov       qword[rbp-104],                   80
     mov                  rax,        qword[rbp-96]
     add                  rax,                    1
     mov        qword[rbp-96],                  rax
     shl        qword[rbp-96],                    3
     mov                  rdi,        qword[rbp-96]
    call               malloc
     mov       qword[rbp-112],                  rax
     mov                  rdx,       qword[rbp-112]
     mov                  rcx,       qword[rbp-104]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-112]
     add                  rax,                    8
     mov       qword[rbp-112],                  rax
     mov                  rax,        qword[rbp-96]
     sub                  rax,                    8
     mov        qword[rbp-96],                  rax
     mov                  rdx,        qword[rbp-80]
     mov                  rcx,       qword[rbp-112]
     mov           qword[rdx],                  rcx
     mov                  rax,        qword[rbp-80]
     add                  rax,                    8
     mov        qword[rbp-80],                  rax
     mov                  rcx,        qword[rbp-80]
     cmp                  rcx,        qword[rbp-88]
	jl	@main.17.Allocate2
     mov                  rcx,        qword[rbp-72]
     mov       qword[@chunks],                  rcx
     mov                  rcx,    qword[@MAXLENGTH]
     mov       qword[rbp-128],                  rcx
     mov                  rcx,    qword[@MAXLENGTH]
     mov       qword[rbp-136],                  rcx
     mov                  rax,       qword[rbp-128]
     add                  rax,                    1
     mov       qword[rbp-128],                  rax
     shl       qword[rbp-128],                    3
     sub                  rsp,                    8
     mov                  rdi,       qword[rbp-128]
    call               malloc
     mov       qword[rbp-144],                  rax
     add                  rsp,                    8
     mov                  rdx,       qword[rbp-144]
     mov                  rcx,       qword[rbp-136]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-144]
     add                  rax,                    8
     mov       qword[rbp-144],                  rax
     mov                  rax,       qword[rbp-128]
     sub                  rax,                    8
     mov       qword[rbp-128],                  rax
     mov                  rcx,       qword[rbp-144]
     mov  qword[@inputBuffer],                  rcx
     mov       qword[rbp-160],                    5
     mov       qword[rbp-168],                    5
     mov                  rax,       qword[rbp-160]
     add                  rax,                    1
     mov       qword[rbp-160],                  rax
     shl       qword[rbp-160],                    3
     mov                  rdi,       qword[rbp-160]
    call               malloc
     mov       qword[rbp-176],                  rax
     mov                  rdx,       qword[rbp-176]
     mov                  rcx,       qword[rbp-168]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-176]
     add                  rax,                    8
     mov       qword[rbp-176],                  rax
     mov                  rax,       qword[rbp-160]
     sub                  rax,                    8
     mov       qword[rbp-160],                  rax
     mov                  rcx,       qword[rbp-176]
     mov qword[@outputBuffer],                  rcx
     add                  rsp,                  184
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                  144
@main.1.enter:
	jmp	@main.6.ForCon
@main.5.ForBody:
     sub                  rsp,                    8
call	getInt
     add                  rsp,                    8
     mov        qword[rbp-16],                  rax
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-24],                  rcx
     cmp        qword[rbp-24],                    0
     mov                  rax,                    0
    sete                   al
     mov        qword[rbp-32],                  rax
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-40],                  rcx
     cmp        qword[rbp-40],                    1
	je	@main.9.IfTrue
	jmp	@main.8.IfFalse
@main.9.IfTrue:
	jmp	@main.7.ForExit
	jmp	@main.10.IfExit
@main.8.IfFalse:
@main.10.IfExit:
     cmp        qword[rbp-24],                    1
     mov                  rax,                    0
    sete                   al
     mov        qword[rbp-48],                  rax
     mov                  rcx,        qword[rbp-48]
     mov        qword[rbp-56],                  rcx
     cmp        qword[rbp-56],                    1
	je	@main.12.IfTrue
	jmp	@main.11.IfFalse
@main.12.IfTrue:
     sub                  rsp,                    8
call	getString
     add                  rsp,                    8
     mov        qword[rbp-72],                  rax
     mov                  rcx,        qword[rbp-72]
     mov        qword[rbp-80],                  rcx
     mov                  rdi,        qword[rbp-80]
     sub                  rsp,                    8
call	computeSHA1
     add                  rsp,                    8
	jmp	@main.13.IfExit
@main.11.IfFalse:
     cmp        qword[rbp-24],                    2
     mov                  rax,                    0
    sete                   al
     mov        qword[rbp-96],                  rax
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-104],                  rcx
     cmp       qword[rbp-104],                    1
	je	@main.15.IfTrue
	jmp	@main.14.IfFalse
@main.15.IfTrue:
call	getString
     mov       qword[rbp-120],                  rax
     mov                  rcx,       qword[rbp-120]
     mov        qword[rbp-80],                  rcx
     mov                  rdi,        qword[rbp-80]
call	crackSHA1
	jmp	@main.16.IfExit
@main.14.IfFalse:
@main.16.IfExit:
	jmp	@main.13.IfExit
@main.13.IfExit:
	jmp	@main.4.ForIter
@main.4.ForIter:
	jmp	@main.6.ForCon
@main.6.ForCon:
     mov       qword[rbp-136],                    1
     cmp       qword[rbp-136],                    1
	je	@main.5.ForBody
	jmp	@main.7.ForExit
@main.7.ForExit:
     mov                  rax,                    0
	jmp	@main.2.exit
@main.2.exit:
     add                  rsp,                  144
     pop                  rbp
     ret
hex2int:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  312
@hex2int.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                    0
     mov        qword[rbp-24],                    0
	jmp	@hex2int.6.ForCon
@hex2int.5.ForBody:
     mov                  rdi,         qword[rbp-8]
     mov                  rsi,        qword[rbp-24]
    push                  rdi
     sub                  rsp,                    8
call	__ord__
     add                  rsp,                    8
     pop                  rdi
     mov        qword[rbp-56],                  rax
     mov                  rcx,        qword[rbp-56]
     mov        qword[rbp-64],                  rcx
     cmp        qword[rbp-64],                   48
     mov                  rax,                    0
   setge                   al
     mov        qword[rbp-72],                  rax
     cmp        qword[rbp-72],                    0
	je	@hex2int.11.cmp_and
     cmp        qword[rbp-64],                   57
     mov                  rax,                    0
   setle                   al
     mov        qword[rbp-80],                  rax
     cmp        qword[rbp-80],                    0
@hex2int.11.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov        qword[rbp-88],                  rax
     mov                  rcx,        qword[rbp-88]
     mov        qword[rbp-96],                  rcx
     cmp        qword[rbp-96],                    1
	je	@hex2int.9.IfTrue
	jmp	@hex2int.8.IfFalse
@hex2int.9.IfTrue:
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-104],                  rcx
     mov                  rax,       qword[rbp-104]
    imul                  rax,                   16
     mov       qword[rbp-104],                  rax
     mov                  rcx,       qword[rbp-104]
     mov       qword[rbp-112],                  rcx
     mov                  rax,       qword[rbp-112]
     add                  rax,        qword[rbp-64]
     mov       qword[rbp-112],                  rax
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-120],                  rcx
     mov                  rax,       qword[rbp-120]
     sub                  rax,                   48
     mov       qword[rbp-120],                  rax
     mov                  rcx,       qword[rbp-120]
     mov        qword[rbp-16],                  rcx
	jmp	@hex2int.10.IfExit
@hex2int.8.IfFalse:
     cmp        qword[rbp-64],                   65
     mov                  rax,                    0
   setge                   al
     mov       qword[rbp-128],                  rax
     cmp       qword[rbp-128],                    0
	je	@hex2int.15.cmp_and
     cmp        qword[rbp-64],                   70
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-136],                  rax
     cmp       qword[rbp-136],                    0
@hex2int.15.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-144],                  rax
     mov                  rcx,       qword[rbp-144]
     mov       qword[rbp-152],                  rcx
     cmp       qword[rbp-152],                    1
	je	@hex2int.13.IfTrue
	jmp	@hex2int.12.IfFalse
@hex2int.13.IfTrue:
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-160],                  rcx
     mov                  rax,       qword[rbp-160]
    imul                  rax,                   16
     mov       qword[rbp-160],                  rax
     mov                  rcx,       qword[rbp-160]
     mov       qword[rbp-168],                  rcx
     mov                  rax,       qword[rbp-168]
     add                  rax,        qword[rbp-64]
     mov       qword[rbp-168],                  rax
     mov                  rcx,       qword[rbp-168]
     mov       qword[rbp-176],                  rcx
     mov                  rax,       qword[rbp-176]
     sub                  rax,                   65
     mov       qword[rbp-176],                  rax
     mov                  rcx,       qword[rbp-176]
     mov       qword[rbp-184],                  rcx
     mov                  rax,       qword[rbp-184]
     add                  rax,                   10
     mov       qword[rbp-184],                  rax
     mov                  rcx,       qword[rbp-184]
     mov        qword[rbp-16],                  rcx
	jmp	@hex2int.14.IfExit
@hex2int.12.IfFalse:
     cmp        qword[rbp-64],                   97
     mov                  rax,                    0
   setge                   al
     mov       qword[rbp-192],                  rax
     cmp       qword[rbp-192],                    0
	je	@hex2int.19.cmp_and
     cmp        qword[rbp-64],                  102
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-200],                  rax
     cmp       qword[rbp-200],                    0
@hex2int.19.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-208],                  rax
     mov                  rcx,       qword[rbp-208]
     mov       qword[rbp-216],                  rcx
     cmp       qword[rbp-216],                    1
	je	@hex2int.17.IfTrue
	jmp	@hex2int.16.IfFalse
@hex2int.17.IfTrue:
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-224],                  rcx
     mov                  rax,       qword[rbp-224]
    imul                  rax,                   16
     mov       qword[rbp-224],                  rax
     mov                  rcx,       qword[rbp-224]
     mov       qword[rbp-232],                  rcx
     mov                  rax,       qword[rbp-232]
     add                  rax,        qword[rbp-64]
     mov       qword[rbp-232],                  rax
     mov                  rcx,       qword[rbp-232]
     mov       qword[rbp-240],                  rcx
     mov                  rax,       qword[rbp-240]
     sub                  rax,                   97
     mov       qword[rbp-240],                  rax
     mov                  rcx,       qword[rbp-240]
     mov       qword[rbp-248],                  rcx
     mov                  rax,       qword[rbp-248]
     add                  rax,                   10
     mov       qword[rbp-248],                  rax
     mov                  rcx,       qword[rbp-248]
     mov        qword[rbp-16],                  rcx
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
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-264],                  rcx
     add        qword[rbp-24],                    1
	jmp	@hex2int.6.ForCon
@hex2int.6.ForCon:
     mov                  rdi,         qword[rbp-8]
    push                  rdi
call	__length__
     pop                  rdi
     mov       qword[rbp-288],                  rax
     mov                  rcx,        qword[rbp-24]
     cmp                  rcx,       qword[rbp-288]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-296],                  rax
     mov                  rcx,       qword[rbp-296]
     mov       qword[rbp-304],                  rcx
     cmp       qword[rbp-304],                    1
	je	@hex2int.5.ForBody
	jmp	@hex2int.7.ForExit
@hex2int.7.ForExit:
     mov                  rax,        qword[rbp-16]
	jmp	@hex2int.2.exit
@hex2int.2.exit:
     add                  rsp,                  312
     pop                  rbp
     ret
crackSHA1:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  640
@crackSHA1.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                    5
     mov        qword[rbp-24],                    5
     mov                  rax,        qword[rbp-16]
     add                  rax,                    1
     mov        qword[rbp-16],                  rax
     shl        qword[rbp-16],                    3
    push                  rdi
     mov                  rdi,        qword[rbp-16]
    call               malloc
     mov        qword[rbp-32],                  rax
     pop                  rdi
     mov                  rdx,        qword[rbp-32]
     mov                  rcx,        qword[rbp-24]
     mov           qword[rdx],                  rcx
     mov                  rax,        qword[rbp-32]
     add                  rax,                    8
     mov        qword[rbp-32],                  rax
     mov                  rax,        qword[rbp-16]
     sub                  rax,                    8
     mov        qword[rbp-16],                  rax
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-40],                  rcx
     mov                  rdi,         qword[rbp-8]
    push                  rdi
     sub                  rsp,                    8
call	__length__
     add                  rsp,                    8
     pop                  rdi
     mov        qword[rbp-64],                  rax
     cmp        qword[rbp-64],                   40
     mov                  rax,                    0
   setne                   al
     mov        qword[rbp-72],                  rax
     mov                  rcx,        qword[rbp-72]
     mov        qword[rbp-80],                  rcx
     cmp        qword[rbp-80],                    1
	je	@crackSHA1.5.IfTrue
	jmp	@crackSHA1.4.IfFalse
@crackSHA1.5.IfTrue:
     mov                  rdi,         __const_str2
    push                  rdi
call	println
     pop                  rdi
	jmp	@crackSHA1.2.exit
	jmp	@crackSHA1.6.IfExit
@crackSHA1.4.IfFalse:
@crackSHA1.6.IfExit:
     mov        qword[rbp-96],                    0
	jmp	@crackSHA1.9.ForCon
@crackSHA1.8.ForBody:
     mov                  rcx,        qword[rbp-40]
     mov       qword[rbp-104],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-112],                  rcx
     shl       qword[rbp-112],                    3
     mov                  rax,       qword[rbp-104]
     add                  rax,       qword[rbp-112]
     mov       qword[rbp-104],                  rax
     mov                  rdx,       qword[rbp-104]
     mov           qword[rdx],                    0
	jmp	@crackSHA1.7.ForIter
@crackSHA1.7.ForIter:
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-120],                  rcx
     add        qword[rbp-96],                    1
	jmp	@crackSHA1.9.ForCon
@crackSHA1.9.ForCon:
     cmp        qword[rbp-96],                    5
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-128],                  rax
     mov                  rcx,       qword[rbp-128]
     mov       qword[rbp-136],                  rcx
     cmp       qword[rbp-136],                    1
	je	@crackSHA1.8.ForBody
	jmp	@crackSHA1.10.ForExit
@crackSHA1.10.ForExit:
     mov        qword[rbp-96],                    0
	jmp	@crackSHA1.13.ForCon
@crackSHA1.12.ForBody:
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-144],                  rcx
     mov                  rax,       qword[rbp-144]
     mov                  rcx,                    8
     cdq
    idiv                  ecx
     mov       qword[rbp-144],                  rax
     mov                  rcx,        qword[rbp-40]
     mov       qword[rbp-152],                  rcx
     mov                  rcx,       qword[rbp-144]
     mov       qword[rbp-160],                  rcx
     shl       qword[rbp-160],                    3
     mov                  rax,       qword[rbp-152]
     add                  rax,       qword[rbp-160]
     mov       qword[rbp-152],                  rax
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-168],                  rcx
     mov                  rax,       qword[rbp-168]
     mov                  rcx,                    8
     cdq
    idiv                  ecx
     mov       qword[rbp-168],                  rax
     mov                  rcx,        qword[rbp-40]
     mov       qword[rbp-176],                  rcx
     mov                  rcx,       qword[rbp-168]
     mov       qword[rbp-184],                  rcx
     shl       qword[rbp-184],                    3
     mov                  rax,       qword[rbp-176]
     add                  rax,       qword[rbp-184]
     mov       qword[rbp-176],                  rax
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-192],                  rcx
     mov                  rax,       qword[rbp-192]
     add                  rax,                    3
     mov       qword[rbp-192],                  rax
     mov                  rdi,         qword[rbp-8]
     mov                  rsi,        qword[rbp-96]
     mov                  rdx,       qword[rbp-192]
    push                  rdi
     sub                  rsp,                    8
call	__substring__
     add                  rsp,                    8
     pop                  rdi
     mov       qword[rbp-232],                  rax
     mov                  rdi,       qword[rbp-232]
    push                  rdi
     sub                  rsp,                    8
call	hex2int
     add                  rsp,                    8
     pop                  rdi
     mov       qword[rbp-256],                  rax
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-264],                  rcx
     mov                  rax,       qword[rbp-264]
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov       qword[rbp-264],                  rax
     mov                  rcx,       qword[rbp-264]
     mov       qword[rbp-272],                  rcx
     mov                  rax,       qword[rbp-272]
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov       qword[rbp-272],                  rdx
     mov       qword[rbp-280],                    1
     mov                  rax,       qword[rbp-280]
     sub                  rax,       qword[rbp-272]
     mov       qword[rbp-280],                  rax
     mov                  rcx,       qword[rbp-280]
     mov       qword[rbp-288],                  rcx
     mov                  rax,       qword[rbp-288]
    imul                  rax,                   16
     mov       qword[rbp-288],                  rax
     mov                  rcx,       qword[rbp-256]
     mov       qword[rbp-296],                  rcx
     mov                  rcx,       qword[rbp-288]
     shl       qword[rbp-296],                   cl
     mov                  rdx,       qword[rbp-176]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-304],                  rcx
     mov                  rax,       qword[rbp-304]
      or                  rax,       qword[rbp-296]
     mov       qword[rbp-304],                  rax
     mov                  rdx,       qword[rbp-152]
     mov                  rcx,       qword[rbp-304]
     mov           qword[rdx],                  rcx
	jmp	@crackSHA1.11.ForIter
@crackSHA1.11.ForIter:
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-312],                  rcx
     mov                  rax,       qword[rbp-312]
     add                  rax,                    4
     mov       qword[rbp-312],                  rax
     mov                  rcx,       qword[rbp-312]
     mov        qword[rbp-96],                  rcx
	jmp	@crackSHA1.13.ForCon
@crackSHA1.13.ForCon:
     cmp        qword[rbp-96],                   40
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-320],                  rax
     mov                  rcx,       qword[rbp-320]
     mov       qword[rbp-328],                  rcx
     cmp       qword[rbp-328],                    1
	je	@crackSHA1.12.ForBody
	jmp	@crackSHA1.14.ForExit
@crackSHA1.14.ForExit:
     mov       qword[rbp-336],                    4
     mov       qword[rbp-344],                    1
	jmp	@crackSHA1.17.ForCon
@crackSHA1.16.ForBody:
     mov        qword[rbp-96],                    0
	jmp	@crackSHA1.21.ForCon
@crackSHA1.20.ForBody:
     mov                  rcx,  qword[@inputBuffer]
     mov       qword[rbp-352],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-368],                  rcx
     shl       qword[rbp-368],                    3
     mov                  rax,       qword[rbp-352]
     add                  rax,       qword[rbp-368]
     mov       qword[rbp-352],                  rax
     mov                  rdx,       qword[rbp-352]
     mov           qword[rdx],                   48
	jmp	@crackSHA1.19.ForIter
@crackSHA1.19.ForIter:
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-376],                  rcx
     add        qword[rbp-96],                    1
	jmp	@crackSHA1.21.ForCon
@crackSHA1.21.ForCon:
     mov                  rcx,        qword[rbp-96]
     cmp                  rcx,       qword[rbp-344]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-384],                  rax
     mov                  rcx,       qword[rbp-384]
     mov       qword[rbp-392],                  rcx
     cmp       qword[rbp-392],                    1
	je	@crackSHA1.20.ForBody
	jmp	@crackSHA1.22.ForExit
@crackSHA1.22.ForExit:
	jmp	@crackSHA1.25.ForCon
@crackSHA1.24.ForBody:
     mov                  rdi,  qword[@inputBuffer]
     mov                  rsi,       qword[rbp-344]
    push                  rdi
     sub                  rsp,                    8
call	sha1
     add                  rsp,                    8
     pop                  rdi
     mov       qword[rbp-424],                  rax
     mov                  rcx,       qword[rbp-424]
     mov       qword[rbp-432],                  rcx
     mov                  rdi,       qword[rbp-432]
     mov                  rsi,        qword[rbp-40]
    push                  rdi
     sub                  rsp,                    8
call	array_equal
     add                  rsp,                    8
     pop                  rdi
     mov       qword[rbp-464],                  rax
     mov                  rcx,       qword[rbp-464]
     mov       qword[rbp-472],                  rcx
     cmp       qword[rbp-472],                    1
	je	@crackSHA1.28.IfTrue
	jmp	@crackSHA1.27.IfFalse
@crackSHA1.28.IfTrue:
     mov        qword[rbp-96],                    0
	jmp	@crackSHA1.32.ForCon
@crackSHA1.31.ForBody:
     mov                  rcx,  qword[@inputBuffer]
     mov       qword[rbp-480],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-488],                  rcx
     shl       qword[rbp-488],                    3
     mov                  rax,       qword[rbp-480]
     add                  rax,       qword[rbp-488]
     mov       qword[rbp-480],                  rax
     mov                  rdx,       qword[rbp-480]
     mov                  rdi,           qword[rdx]
    push                  rdi
     sub                  rsp,                    8
call	int2chr
     add                  rsp,                    8
     pop                  rdi
     mov       qword[rbp-512],                  rax
     mov                  rdi,       qword[rbp-512]
    push                  rdi
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                  rdi
	jmp	@crackSHA1.30.ForIter
@crackSHA1.30.ForIter:
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-528],                  rcx
     add        qword[rbp-96],                    1
	jmp	@crackSHA1.32.ForCon
@crackSHA1.32.ForCon:
     mov                  rcx,        qword[rbp-96]
     cmp                  rcx,       qword[rbp-344]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-536],                  rax
     mov                  rcx,       qword[rbp-536]
     mov       qword[rbp-544],                  rcx
     cmp       qword[rbp-544],                    1
	je	@crackSHA1.31.ForBody
	jmp	@crackSHA1.33.ForExit
@crackSHA1.33.ForExit:
     mov                  rdi,         __const_str0
    push                  rdi
call	println
     pop                  rdi
	jmp	@crackSHA1.2.exit
	jmp	@crackSHA1.29.IfExit
@crackSHA1.27.IfFalse:
@crackSHA1.29.IfExit:
     mov                  rdi,  qword[@inputBuffer]
     mov                  rsi,       qword[rbp-344]
    push                  rdi
call	nextText
     pop                  rdi
     mov       qword[rbp-584],                  rax
     mov                  rcx,       qword[rbp-584]
     mov       qword[rbp-592],                  rcx
     xor       qword[rbp-592],                    1
     mov                  rcx,       qword[rbp-592]
     mov       qword[rbp-600],                  rcx
     cmp       qword[rbp-600],                    1
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
     mov       qword[rbp-608],                    1
     cmp       qword[rbp-608],                    1
	je	@crackSHA1.24.ForBody
	jmp	@crackSHA1.26.ForExit
@crackSHA1.26.ForExit:
	jmp	@crackSHA1.15.ForIter
@crackSHA1.15.ForIter:
     mov                  rcx,       qword[rbp-344]
     mov       qword[rbp-616],                  rcx
     add       qword[rbp-344],                    1
	jmp	@crackSHA1.17.ForCon
@crackSHA1.17.ForCon:
     mov                  rcx,       qword[rbp-344]
     cmp                  rcx,       qword[rbp-336]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-624],                  rax
     mov                  rcx,       qword[rbp-624]
     mov       qword[rbp-632],                  rcx
     cmp       qword[rbp-632],                    1
	je	@crackSHA1.16.ForBody
	jmp	@crackSHA1.18.ForExit
@crackSHA1.18.ForExit:
     mov                  rdi,         __const_str3
    push                  rdi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  rdi
@crackSHA1.2.exit:
     add                  rsp,                  640
     pop                  rbp
     ret
toStringHex:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  232
@toStringHex.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],         __const_str0
     mov        qword[rbp-24],                   28
	jmp	@toStringHex.6.ForCon
@toStringHex.5.ForBody:
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-32],                  rcx
     mov                  rcx,        qword[rbp-24]
     shr        qword[rbp-32],                   cl
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-40],                  rcx
     mov                  rax,        qword[rbp-40]
     and                  rax,                   15
     mov        qword[rbp-40],                  rax
     mov                  rcx,        qword[rbp-40]
     mov        qword[rbp-48],                  rcx
     cmp        qword[rbp-48],                   10
     mov                  rax,                    0
    setl                   al
     mov        qword[rbp-56],                  rax
     mov                  rcx,        qword[rbp-56]
     mov        qword[rbp-64],                  rcx
     cmp        qword[rbp-64],                    1
	je	@toStringHex.9.IfTrue
	jmp	@toStringHex.8.IfFalse
@toStringHex.9.IfTrue:
     mov        qword[rbp-72],                   48
     mov                  rax,        qword[rbp-72]
     add                  rax,        qword[rbp-48]
     mov        qword[rbp-72],                  rax
     mov                  rdi,        qword[rbp-72]
    push                  rdi
call	int2chr
     pop                  rdi
     mov        qword[rbp-96],                  rax
     mov                  rdi,        qword[rbp-16]
     mov                  rsi,        qword[rbp-96]
    push                  rdi
call	__string_connect__
     pop                  rdi
     mov       qword[rbp-128],                  rax
     mov                  rcx,       qword[rbp-128]
     mov        qword[rbp-16],                  rcx
	jmp	@toStringHex.10.IfExit
@toStringHex.8.IfFalse:
     mov       qword[rbp-136],                   65
     mov                  rax,       qword[rbp-136]
     add                  rax,        qword[rbp-48]
     mov       qword[rbp-136],                  rax
     mov                  rcx,       qword[rbp-136]
     mov       qword[rbp-144],                  rcx
     mov                  rax,       qword[rbp-144]
     sub                  rax,                   10
     mov       qword[rbp-144],                  rax
     mov                  rdi,       qword[rbp-144]
    push                  rdi
call	int2chr
     pop                  rdi
     mov       qword[rbp-168],                  rax
     mov                  rdi,        qword[rbp-16]
     mov                  rsi,       qword[rbp-168]
    push                  rdi
call	__string_connect__
     pop                  rdi
     mov       qword[rbp-200],                  rax
     mov                  rcx,       qword[rbp-200]
     mov        qword[rbp-16],                  rcx
	jmp	@toStringHex.10.IfExit
@toStringHex.10.IfExit:
	jmp	@toStringHex.4.ForIter
@toStringHex.4.ForIter:
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-208],                  rcx
     mov                  rax,       qword[rbp-208]
     sub                  rax,                    4
     mov       qword[rbp-208],                  rax
     mov                  rcx,       qword[rbp-208]
     mov        qword[rbp-24],                  rcx
	jmp	@toStringHex.6.ForCon
@toStringHex.6.ForCon:
     cmp        qword[rbp-24],                    0
     mov                  rax,                    0
   setge                   al
     mov       qword[rbp-216],                  rax
     mov                  rcx,       qword[rbp-216]
     mov       qword[rbp-224],                  rcx
     cmp       qword[rbp-224],                    1
	je	@toStringHex.5.ForBody
	jmp	@toStringHex.7.ForExit
@toStringHex.7.ForExit:
     mov                  rax,        qword[rbp-16]
	jmp	@toStringHex.2.exit
@toStringHex.2.exit:
     add                  rsp,                  232
     pop                  rbp
     ret
computeSHA1:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  288
@computeSHA1.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                    0
	jmp	@computeSHA1.6.ForCon
@computeSHA1.5.ForBody:
     mov                  rcx,  qword[@inputBuffer]
     mov        qword[rbp-24],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-40],                  rcx
     shl        qword[rbp-40],                    3
     mov                  rax,        qword[rbp-24]
     add                  rax,        qword[rbp-40]
     mov        qword[rbp-24],                  rax
     mov                  rdi,         qword[rbp-8]
     mov                  rsi,        qword[rbp-16]
    push                  rdi
call	__ord__
     pop                  rdi
     mov        qword[rbp-72],                  rax
     mov                  rdx,        qword[rbp-24]
     mov                  rcx,        qword[rbp-72]
     mov           qword[rdx],                  rcx
	jmp	@computeSHA1.4.ForIter
@computeSHA1.4.ForIter:
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-80],                  rcx
     add        qword[rbp-16],                    1
	jmp	@computeSHA1.6.ForCon
@computeSHA1.6.ForCon:
     mov                  rdi,         qword[rbp-8]
    push                  rdi
call	__length__
     pop                  rdi
     mov       qword[rbp-104],                  rax
     mov                  rcx,        qword[rbp-16]
     cmp                  rcx,       qword[rbp-104]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-112],                  rax
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-120],                  rcx
     cmp       qword[rbp-120],                    1
	je	@computeSHA1.5.ForBody
	jmp	@computeSHA1.7.ForExit
@computeSHA1.7.ForExit:
     mov                  rdi,         qword[rbp-8]
    push                  rdi
     sub                  rsp,                    8
call	__length__
     add                  rsp,                    8
     pop                  rdi
     mov       qword[rbp-144],                  rax
     mov                  rdi,  qword[@inputBuffer]
     mov                  rsi,       qword[rbp-144]
    push                  rdi
     sub                  rsp,                    8
call	sha1
     add                  rsp,                    8
     pop                  rdi
     mov       qword[rbp-176],                  rax
     mov                  rcx,       qword[rbp-176]
     mov       qword[rbp-184],                  rcx
     mov        qword[rbp-16],                    0
	jmp	@computeSHA1.10.ForCon
@computeSHA1.9.ForBody:
     mov                  rcx,       qword[rbp-184]
     mov       qword[rbp-192],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-200],                  rcx
     shl       qword[rbp-200],                    3
     mov                  rax,       qword[rbp-192]
     add                  rax,       qword[rbp-200]
     mov       qword[rbp-192],                  rax
     mov                  rdx,       qword[rbp-192]
     mov                  rdi,           qword[rdx]
    push                  rdi
     sub                  rsp,                    8
call	toStringHex
     add                  rsp,                    8
     pop                  rdi
     mov       qword[rbp-224],                  rax
     mov                  rdi,       qword[rbp-224]
    push                  rdi
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
     pop                  rdi
	jmp	@computeSHA1.8.ForIter
@computeSHA1.8.ForIter:
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-240],                  rcx
     add        qword[rbp-16],                    1
	jmp	@computeSHA1.10.ForCon
@computeSHA1.10.ForCon:
     mov                  rdi,       qword[rbp-184]
    push                  rdi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rdi
     mov       qword[rbp-264],                  rax
     mov                  rcx,        qword[rbp-16]
     cmp                  rcx,       qword[rbp-264]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-272],                  rax
     mov                  rcx,       qword[rbp-272]
     mov       qword[rbp-280],                  rcx
     cmp       qword[rbp-280],                    1
	je	@computeSHA1.9.ForBody
	jmp	@computeSHA1.11.ForExit
@computeSHA1.11.ForExit:
     mov                  rdi,         __const_str0
    push                  rdi
call	println
     pop                  rdi
@computeSHA1.2.exit:
     add                  rsp,                  288
     pop                  rbp
     ret
sha1:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                 1800
@sha1.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                  rsi
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-24],                  rcx
     mov                  rax,        qword[rbp-24]
     add                  rax,                   64
     mov        qword[rbp-24],                  rax
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-32],                  rcx
     mov                  rax,        qword[rbp-32]
     sub                  rax,                   56
     mov        qword[rbp-32],                  rax
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-40],                  rcx
     mov                  rax,        qword[rbp-40]
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov        qword[rbp-40],                  rax
     mov                  rcx,        qword[rbp-40]
     mov        qword[rbp-48],                  rcx
     mov                  rax,        qword[rbp-48]
     add                  rax,                    1
     mov        qword[rbp-48],                  rax
     mov                  rcx,        qword[rbp-48]
     mov        qword[rbp-56],                  rcx
     mov                  rcx,        qword[rbp-56]
     cmp                  rcx,     qword[@MAXCHUNK]
     mov                  rax,                    0
    setg                   al
     mov        qword[rbp-72],                  rax
     mov                  rcx,        qword[rbp-72]
     mov        qword[rbp-80],                  rcx
     cmp        qword[rbp-80],                    1
	je	@sha1.5.IfTrue
	jmp	@sha1.4.IfFalse
@sha1.5.IfTrue:
     mov                  rdi,         __const_str1
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
	jmp	@sha1.2.exit
	jmp	@sha1.6.IfExit
@sha1.4.IfFalse:
@sha1.6.IfExit:
     mov        qword[rbp-96],                    0
	jmp	@sha1.9.ForCon
@sha1.8.ForBody:
     mov       qword[rbp-104],                    0
	jmp	@sha1.13.ForCon
@sha1.12.ForBody:
     mov                  rcx,       qword[@chunks]
     mov       qword[rbp-112],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-128],                  rcx
     shl       qword[rbp-128],                    3
     mov                  rax,       qword[rbp-112]
     add                  rax,       qword[rbp-128]
     mov       qword[rbp-112],                  rax
     mov                  rdx,       qword[rbp-112]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-136],                  rcx
     mov                  rcx,       qword[rbp-104]
     mov       qword[rbp-144],                  rcx
     shl       qword[rbp-144],                    3
     mov                  rax,       qword[rbp-136]
     add                  rax,       qword[rbp-144]
     mov       qword[rbp-136],                  rax
     mov                  rdx,       qword[rbp-136]
     mov           qword[rdx],                    0
	jmp	@sha1.11.ForIter
@sha1.11.ForIter:
     mov                  rcx,       qword[rbp-104]
     mov       qword[rbp-152],                  rcx
     add       qword[rbp-104],                    1
	jmp	@sha1.13.ForCon
@sha1.13.ForCon:
     cmp       qword[rbp-104],                   80
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-160],                  rax
     mov                  rcx,       qword[rbp-160]
     mov       qword[rbp-168],                  rcx
     cmp       qword[rbp-168],                    1
	je	@sha1.12.ForBody
	jmp	@sha1.14.ForExit
@sha1.14.ForExit:
	jmp	@sha1.7.ForIter
@sha1.7.ForIter:
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-176],                  rcx
     add        qword[rbp-96],                    1
	jmp	@sha1.9.ForCon
@sha1.9.ForCon:
     mov                  rcx,        qword[rbp-96]
     cmp                  rcx,        qword[rbp-56]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-184],                  rax
     mov                  rcx,       qword[rbp-184]
     mov       qword[rbp-192],                  rcx
     cmp       qword[rbp-192],                    1
	je	@sha1.8.ForBody
	jmp	@sha1.10.ForExit
@sha1.10.ForExit:
     mov        qword[rbp-96],                    0
	jmp	@sha1.17.ForCon
@sha1.16.ForBody:
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-200],                  rcx
     mov                  rax,       qword[rbp-200]
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov       qword[rbp-200],                  rax
     mov                  rcx,       qword[@chunks]
     mov       qword[rbp-208],                  rcx
     mov                  rcx,       qword[rbp-200]
     mov       qword[rbp-216],                  rcx
     shl       qword[rbp-216],                    3
     mov                  rax,       qword[rbp-208]
     add                  rax,       qword[rbp-216]
     mov       qword[rbp-208],                  rax
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-224],                  rcx
     mov                  rax,       qword[rbp-224]
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov       qword[rbp-224],                  rdx
     mov                  rcx,       qword[rbp-224]
     mov       qword[rbp-232],                  rcx
     mov                  rax,       qword[rbp-232]
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov       qword[rbp-232],                  rax
     mov                  rdx,       qword[rbp-208]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-240],                  rcx
     mov                  rcx,       qword[rbp-232]
     mov       qword[rbp-248],                  rcx
     shl       qword[rbp-248],                    3
     mov                  rax,       qword[rbp-240]
     add                  rax,       qword[rbp-248]
     mov       qword[rbp-240],                  rax
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-256],                  rcx
     mov                  rax,       qword[rbp-256]
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov       qword[rbp-256],                  rax
     mov                  rcx,       qword[@chunks]
     mov       qword[rbp-264],                  rcx
     mov                  rcx,       qword[rbp-256]
     mov       qword[rbp-272],                  rcx
     shl       qword[rbp-272],                    3
     mov                  rax,       qword[rbp-264]
     add                  rax,       qword[rbp-272]
     mov       qword[rbp-264],                  rax
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-280],                  rcx
     mov                  rax,       qword[rbp-280]
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov       qword[rbp-280],                  rdx
     mov                  rcx,       qword[rbp-280]
     mov       qword[rbp-288],                  rcx
     mov                  rax,       qword[rbp-288]
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov       qword[rbp-288],                  rax
     mov                  rdx,       qword[rbp-264]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-296],                  rcx
     mov                  rcx,       qword[rbp-288]
     mov       qword[rbp-304],                  rcx
     shl       qword[rbp-304],                    3
     mov                  rax,       qword[rbp-296]
     add                  rax,       qword[rbp-304]
     mov       qword[rbp-296],                  rax
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-312],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-320],                  rcx
     shl       qword[rbp-320],                    3
     mov                  rax,       qword[rbp-312]
     add                  rax,       qword[rbp-320]
     mov       qword[rbp-312],                  rax
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-328],                  rcx
     mov                  rax,       qword[rbp-328]
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov       qword[rbp-328],                  rdx
     mov       qword[rbp-336],                    3
     mov                  rax,       qword[rbp-336]
     sub                  rax,       qword[rbp-328]
     mov       qword[rbp-336],                  rax
     mov                  rcx,       qword[rbp-336]
     mov       qword[rbp-344],                  rcx
     mov                  rax,       qword[rbp-344]
    imul                  rax,                    8
     mov       qword[rbp-344],                  rax
     mov                  rdx,       qword[rbp-312]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-352],                  rcx
     mov                  rcx,       qword[rbp-344]
     shl       qword[rbp-352],                   cl
     mov                  rdx,       qword[rbp-296]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-360],                  rcx
     mov                  rax,       qword[rbp-360]
      or                  rax,       qword[rbp-352]
     mov       qword[rbp-360],                  rax
     mov                  rdx,       qword[rbp-240]
     mov                  rcx,       qword[rbp-360]
     mov           qword[rdx],                  rcx
	jmp	@sha1.15.ForIter
@sha1.15.ForIter:
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-368],                  rcx
     add        qword[rbp-96],                    1
	jmp	@sha1.17.ForCon
@sha1.17.ForCon:
     mov                  rcx,        qword[rbp-96]
     cmp                  rcx,        qword[rbp-16]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-376],                  rax
     mov                  rcx,       qword[rbp-376]
     mov       qword[rbp-384],                  rcx
     cmp       qword[rbp-384],                    1
	je	@sha1.16.ForBody
	jmp	@sha1.18.ForExit
@sha1.18.ForExit:
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-392],                  rcx
     mov                  rax,       qword[rbp-392]
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov       qword[rbp-392],                  rax
     mov                  rcx,       qword[@chunks]
     mov       qword[rbp-400],                  rcx
     mov                  rcx,       qword[rbp-392]
     mov       qword[rbp-408],                  rcx
     shl       qword[rbp-408],                    3
     mov                  rax,       qword[rbp-400]
     add                  rax,       qword[rbp-408]
     mov       qword[rbp-400],                  rax
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-416],                  rcx
     mov                  rax,       qword[rbp-416]
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov       qword[rbp-416],                  rdx
     mov                  rcx,       qword[rbp-416]
     mov       qword[rbp-424],                  rcx
     mov                  rax,       qword[rbp-424]
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov       qword[rbp-424],                  rax
     mov                  rdx,       qword[rbp-400]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-432],                  rcx
     mov                  rcx,       qword[rbp-424]
     mov       qword[rbp-440],                  rcx
     shl       qword[rbp-440],                    3
     mov                  rax,       qword[rbp-432]
     add                  rax,       qword[rbp-440]
     mov       qword[rbp-432],                  rax
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-448],                  rcx
     mov                  rax,       qword[rbp-448]
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov       qword[rbp-448],                  rax
     mov                  rcx,       qword[@chunks]
     mov       qword[rbp-456],                  rcx
     mov                  rcx,       qword[rbp-448]
     mov       qword[rbp-464],                  rcx
     shl       qword[rbp-464],                    3
     mov                  rax,       qword[rbp-456]
     add                  rax,       qword[rbp-464]
     mov       qword[rbp-456],                  rax
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-472],                  rcx
     mov                  rax,       qword[rbp-472]
     mov                  rcx,                   64
     cdq
    idiv                  ecx
     mov       qword[rbp-472],                  rdx
     mov                  rcx,       qword[rbp-472]
     mov       qword[rbp-480],                  rcx
     mov                  rax,       qword[rbp-480]
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov       qword[rbp-480],                  rax
     mov                  rdx,       qword[rbp-456]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-488],                  rcx
     mov                  rcx,       qword[rbp-480]
     mov       qword[rbp-496],                  rcx
     shl       qword[rbp-496],                    3
     mov                  rax,       qword[rbp-488]
     add                  rax,       qword[rbp-496]
     mov       qword[rbp-488],                  rax
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-504],                  rcx
     mov                  rax,       qword[rbp-504]
     mov                  rcx,                    4
     cdq
    idiv                  ecx
     mov       qword[rbp-504],                  rdx
     mov       qword[rbp-512],                    3
     mov                  rax,       qword[rbp-512]
     sub                  rax,       qword[rbp-504]
     mov       qword[rbp-512],                  rax
     mov                  rcx,       qword[rbp-512]
     mov       qword[rbp-520],                  rcx
     mov                  rax,       qword[rbp-520]
    imul                  rax,                    8
     mov       qword[rbp-520],                  rax
     mov       qword[rbp-528],                  128
     mov                  rcx,       qword[rbp-520]
     shl       qword[rbp-528],                   cl
     mov                  rdx,       qword[rbp-488]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-536],                  rcx
     mov                  rax,       qword[rbp-536]
      or                  rax,       qword[rbp-528]
     mov       qword[rbp-536],                  rax
     mov                  rdx,       qword[rbp-432]
     mov                  rcx,       qword[rbp-536]
     mov           qword[rdx],                  rcx
     mov                  rcx,        qword[rbp-56]
     mov       qword[rbp-544],                  rcx
     mov                  rax,       qword[rbp-544]
     sub                  rax,                    1
     mov       qword[rbp-544],                  rax
     mov                  rcx,       qword[@chunks]
     mov       qword[rbp-552],                  rcx
     mov                  rcx,       qword[rbp-544]
     mov       qword[rbp-560],                  rcx
     shl       qword[rbp-560],                    3
     mov                  rax,       qword[rbp-552]
     add                  rax,       qword[rbp-560]
     mov       qword[rbp-552],                  rax
     mov                  rdx,       qword[rbp-552]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-568],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-576],                  rcx
     shl       qword[rbp-576],                    3
     mov                  rdx,       qword[rbp-568]
     mov                  rcx,       qword[rbp-576]
     mov       qword[rdx+120],                  rcx
     mov                  rcx,        qword[rbp-56]
     mov       qword[rbp-584],                  rcx
     mov                  rax,       qword[rbp-584]
     sub                  rax,                    1
     mov       qword[rbp-584],                  rax
     mov                  rcx,       qword[@chunks]
     mov       qword[rbp-592],                  rcx
     mov                  rcx,       qword[rbp-584]
     mov       qword[rbp-600],                  rcx
     shl       qword[rbp-600],                    3
     mov                  rax,       qword[rbp-592]
     add                  rax,       qword[rbp-600]
     mov       qword[rbp-592],                  rax
     mov                  rdx,       qword[rbp-592]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-608],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-616],                  rcx
     shr       qword[rbp-616],                   29
     mov                  rcx,       qword[rbp-616]
     mov       qword[rbp-624],                  rcx
     mov                  rax,       qword[rbp-624]
     and                  rax,                    7
     mov       qword[rbp-624],                  rax
     mov                  rdx,       qword[rbp-608]
     mov                  rcx,       qword[rbp-624]
     mov       qword[rdx+112],                  rcx
     mov       qword[rbp-632],           1732584193
     mov                  rdi,                43913
     mov                  rsi,                61389
    push                  rdi
    push                  rsi
call	lohi
     pop                  rsi
     pop                  rdi
     mov       qword[rbp-664],                  rax
     mov                  rcx,       qword[rbp-664]
     mov       qword[rbp-672],                  rcx
     mov                  rdi,                56574
     mov                  rsi,                39098
    push                  rdi
    push                  rsi
call	lohi
     pop                  rsi
     pop                  rdi
     mov       qword[rbp-704],                  rax
     mov                  rcx,       qword[rbp-704]
     mov       qword[rbp-712],                  rcx
     mov       qword[rbp-720],            271733878
     mov                  rdi,                57840
     mov                  rsi,                50130
    push                  rdi
    push                  rsi
call	lohi
     pop                  rsi
     pop                  rdi
     mov       qword[rbp-752],                  rax
     mov                  rcx,       qword[rbp-752]
     mov       qword[rbp-760],                  rcx
     mov        qword[rbp-96],                    0
	jmp	@sha1.21.ForCon
@sha1.20.ForBody:
     mov       qword[rbp-104],                   16
	jmp	@sha1.25.ForCon
@sha1.24.ForBody:
     mov                  rcx,       qword[@chunks]
     mov       qword[rbp-768],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-776],                  rcx
     shl       qword[rbp-776],                    3
     mov                  rax,       qword[rbp-768]
     add                  rax,       qword[rbp-776]
     mov       qword[rbp-768],                  rax
     mov                  rdx,       qword[rbp-768]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-784],                  rcx
     mov                  rcx,       qword[rbp-104]
     mov       qword[rbp-792],                  rcx
     shl       qword[rbp-792],                    3
     mov                  rax,       qword[rbp-784]
     add                  rax,       qword[rbp-792]
     mov       qword[rbp-784],                  rax
     mov                  rcx,       qword[@chunks]
     mov       qword[rbp-800],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-808],                  rcx
     shl       qword[rbp-808],                    3
     mov                  rax,       qword[rbp-800]
     add                  rax,       qword[rbp-808]
     mov       qword[rbp-800],                  rax
     mov                  rcx,       qword[rbp-104]
     mov       qword[rbp-816],                  rcx
     mov                  rax,       qword[rbp-816]
     sub                  rax,                    3
     mov       qword[rbp-816],                  rax
     mov                  rdx,       qword[rbp-800]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-824],                  rcx
     mov                  rcx,       qword[rbp-816]
     mov       qword[rbp-832],                  rcx
     shl       qword[rbp-832],                    3
     mov                  rax,       qword[rbp-824]
     add                  rax,       qword[rbp-832]
     mov       qword[rbp-824],                  rax
     mov                  rcx,       qword[@chunks]
     mov       qword[rbp-840],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-848],                  rcx
     shl       qword[rbp-848],                    3
     mov                  rax,       qword[rbp-840]
     add                  rax,       qword[rbp-848]
     mov       qword[rbp-840],                  rax
     mov                  rcx,       qword[rbp-104]
     mov       qword[rbp-856],                  rcx
     mov                  rax,       qword[rbp-856]
     sub                  rax,                    8
     mov       qword[rbp-856],                  rax
     mov                  rdx,       qword[rbp-840]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-864],                  rcx
     mov                  rcx,       qword[rbp-856]
     mov       qword[rbp-872],                  rcx
     shl       qword[rbp-872],                    3
     mov                  rax,       qword[rbp-864]
     add                  rax,       qword[rbp-872]
     mov       qword[rbp-864],                  rax
     mov                  rdx,       qword[rbp-824]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-880],                  rcx
     mov                  rdx,       qword[rbp-864]
     mov                  rax,       qword[rbp-880]
     xor                  rax,           qword[rdx]
     mov       qword[rbp-880],                  rax
     mov                  rcx,       qword[@chunks]
     mov       qword[rbp-888],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-896],                  rcx
     shl       qword[rbp-896],                    3
     mov                  rax,       qword[rbp-888]
     add                  rax,       qword[rbp-896]
     mov       qword[rbp-888],                  rax
     mov                  rcx,       qword[rbp-104]
     mov       qword[rbp-904],                  rcx
     mov                  rax,       qword[rbp-904]
     sub                  rax,                   14
     mov       qword[rbp-904],                  rax
     mov                  rdx,       qword[rbp-888]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-912],                  rcx
     mov                  rcx,       qword[rbp-904]
     mov       qword[rbp-920],                  rcx
     shl       qword[rbp-920],                    3
     mov                  rax,       qword[rbp-912]
     add                  rax,       qword[rbp-920]
     mov       qword[rbp-912],                  rax
     mov                  rcx,       qword[rbp-880]
     mov       qword[rbp-928],                  rcx
     mov                  rdx,       qword[rbp-912]
     mov                  rax,       qword[rbp-928]
     xor                  rax,           qword[rdx]
     mov       qword[rbp-928],                  rax
     mov                  rcx,       qword[@chunks]
     mov       qword[rbp-936],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-944],                  rcx
     shl       qword[rbp-944],                    3
     mov                  rax,       qword[rbp-936]
     add                  rax,       qword[rbp-944]
     mov       qword[rbp-936],                  rax
     mov                  rcx,       qword[rbp-104]
     mov       qword[rbp-952],                  rcx
     mov                  rax,       qword[rbp-952]
     sub                  rax,                   16
     mov       qword[rbp-952],                  rax
     mov                  rdx,       qword[rbp-936]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-960],                  rcx
     mov                  rcx,       qword[rbp-952]
     mov       qword[rbp-968],                  rcx
     shl       qword[rbp-968],                    3
     mov                  rax,       qword[rbp-960]
     add                  rax,       qword[rbp-968]
     mov       qword[rbp-960],                  rax
     mov                  rcx,       qword[rbp-928]
     mov       qword[rbp-976],                  rcx
     mov                  rdx,       qword[rbp-960]
     mov                  rax,       qword[rbp-976]
     xor                  rax,           qword[rdx]
     mov       qword[rbp-976],                  rax
     mov                  rdi,       qword[rbp-976]
     mov                  rsi,                    1
    push                  rdi
    push                  rsi
call	rotate_left
     pop                  rsi
     pop                  rdi
     mov      qword[rbp-1008],                  rax
     mov                  rdx,       qword[rbp-784]
     mov                  rcx,      qword[rbp-1008]
     mov           qword[rdx],                  rcx
	jmp	@sha1.23.ForIter
@sha1.23.ForIter:
     mov                  rcx,       qword[rbp-104]
     mov      qword[rbp-1016],                  rcx
     add       qword[rbp-104],                    1
	jmp	@sha1.25.ForCon
@sha1.25.ForCon:
     cmp       qword[rbp-104],                   80
     mov                  rax,                    0
    setl                   al
     mov      qword[rbp-1024],                  rax
     mov                  rcx,      qword[rbp-1024]
     mov      qword[rbp-1032],                  rcx
     cmp      qword[rbp-1032],                    1
	je	@sha1.24.ForBody
	jmp	@sha1.26.ForExit
@sha1.26.ForExit:
     mov                  rcx,       qword[rbp-632]
     mov      qword[rbp-1040],                  rcx
     mov                  rcx,       qword[rbp-672]
     mov      qword[rbp-1048],                  rcx
     mov                  rcx,       qword[rbp-712]
     mov      qword[rbp-1056],                  rcx
     mov                  rcx,       qword[rbp-720]
     mov      qword[rbp-1064],                  rcx
     mov                  rcx,       qword[rbp-760]
     mov      qword[rbp-1072],                  rcx
     mov       qword[rbp-104],                    0
	jmp	@sha1.29.ForCon
@sha1.28.ForBody:
     cmp       qword[rbp-104],                   20
     mov                  rax,                    0
    setl                   al
     mov      qword[rbp-1080],                  rax
     mov                  rcx,      qword[rbp-1080]
     mov      qword[rbp-1088],                  rcx
     cmp      qword[rbp-1088],                    1
	je	@sha1.32.IfTrue
	jmp	@sha1.31.IfFalse
@sha1.32.IfTrue:
     mov                  rcx,      qword[rbp-1048]
     mov      qword[rbp-1096],                  rcx
     mov                  rax,      qword[rbp-1096]
     and                  rax,      qword[rbp-1056]
     mov      qword[rbp-1096],                  rax
     mov                  rcx,      qword[rbp-1048]
     mov      qword[rbp-1104],                  rcx
     not      qword[rbp-1104]
     mov                  rcx,      qword[rbp-1104]
     mov      qword[rbp-1112],                  rcx
     mov                  rax,      qword[rbp-1112]
     and                  rax,      qword[rbp-1064]
     mov      qword[rbp-1112],                  rax
     mov                  rcx,      qword[rbp-1096]
     mov      qword[rbp-1120],                  rcx
     mov                  rax,      qword[rbp-1120]
      or                  rax,      qword[rbp-1112]
     mov      qword[rbp-1120],                  rax
     mov                  rcx,      qword[rbp-1120]
     mov      qword[rbp-1128],                  rcx
     mov      qword[rbp-1136],           1518500249
	jmp	@sha1.33.IfExit
@sha1.31.IfFalse:
     cmp       qword[rbp-104],                   40
     mov                  rax,                    0
    setl                   al
     mov      qword[rbp-1144],                  rax
     mov                  rcx,      qword[rbp-1144]
     mov      qword[rbp-1152],                  rcx
     cmp      qword[rbp-1152],                    1
	je	@sha1.35.IfTrue
	jmp	@sha1.34.IfFalse
@sha1.35.IfTrue:
     mov                  rcx,      qword[rbp-1048]
     mov      qword[rbp-1160],                  rcx
     mov                  rax,      qword[rbp-1160]
     xor                  rax,      qword[rbp-1056]
     mov      qword[rbp-1160],                  rax
     mov                  rcx,      qword[rbp-1160]
     mov      qword[rbp-1168],                  rcx
     mov                  rax,      qword[rbp-1168]
     xor                  rax,      qword[rbp-1064]
     mov      qword[rbp-1168],                  rax
     mov                  rcx,      qword[rbp-1168]
     mov      qword[rbp-1128],                  rcx
     mov      qword[rbp-1136],           1859775393
	jmp	@sha1.36.IfExit
@sha1.34.IfFalse:
     cmp       qword[rbp-104],                   60
     mov                  rax,                    0
    setl                   al
     mov      qword[rbp-1176],                  rax
     mov                  rcx,      qword[rbp-1176]
     mov      qword[rbp-1184],                  rcx
     cmp      qword[rbp-1184],                    1
	je	@sha1.38.IfTrue
	jmp	@sha1.37.IfFalse
@sha1.38.IfTrue:
     mov                  rcx,      qword[rbp-1048]
     mov      qword[rbp-1192],                  rcx
     mov                  rax,      qword[rbp-1192]
     and                  rax,      qword[rbp-1056]
     mov      qword[rbp-1192],                  rax
     mov                  rcx,      qword[rbp-1048]
     mov      qword[rbp-1200],                  rcx
     mov                  rax,      qword[rbp-1200]
     and                  rax,      qword[rbp-1064]
     mov      qword[rbp-1200],                  rax
     mov                  rcx,      qword[rbp-1192]
     mov      qword[rbp-1208],                  rcx
     mov                  rax,      qword[rbp-1208]
      or                  rax,      qword[rbp-1200]
     mov      qword[rbp-1208],                  rax
     mov                  rcx,      qword[rbp-1056]
     mov      qword[rbp-1216],                  rcx
     mov                  rax,      qword[rbp-1216]
     and                  rax,      qword[rbp-1064]
     mov      qword[rbp-1216],                  rax
     mov                  rcx,      qword[rbp-1208]
     mov      qword[rbp-1224],                  rcx
     mov                  rax,      qword[rbp-1224]
      or                  rax,      qword[rbp-1216]
     mov      qword[rbp-1224],                  rax
     mov                  rcx,      qword[rbp-1224]
     mov      qword[rbp-1128],                  rcx
     mov                  rdi,                48348
     mov                  rsi,                36635
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	lohi
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov      qword[rbp-1256],                  rax
     mov                  rcx,      qword[rbp-1256]
     mov      qword[rbp-1136],                  rcx
	jmp	@sha1.39.IfExit
@sha1.37.IfFalse:
     mov                  rcx,      qword[rbp-1048]
     mov      qword[rbp-1264],                  rcx
     mov                  rax,      qword[rbp-1264]
     xor                  rax,      qword[rbp-1056]
     mov      qword[rbp-1264],                  rax
     mov                  rcx,      qword[rbp-1264]
     mov      qword[rbp-1272],                  rcx
     mov                  rax,      qword[rbp-1272]
     xor                  rax,      qword[rbp-1064]
     mov      qword[rbp-1272],                  rax
     mov                  rcx,      qword[rbp-1272]
     mov      qword[rbp-1128],                  rcx
     mov                  rdi,                49622
     mov                  rsi,                51810
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	lohi
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov      qword[rbp-1304],                  rax
     mov                  rcx,      qword[rbp-1304]
     mov      qword[rbp-1136],                  rcx
	jmp	@sha1.39.IfExit
@sha1.39.IfExit:
	jmp	@sha1.36.IfExit
@sha1.36.IfExit:
	jmp	@sha1.33.IfExit
@sha1.33.IfExit:
     mov                  rdi,      qword[rbp-1040]
     mov                  rsi,                    5
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	rotate_left
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov      qword[rbp-1336],                  rax
     mov                  rdi,      qword[rbp-1336]
     mov                  rsi,      qword[rbp-1072]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	add
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov      qword[rbp-1368],                  rax
     mov                  rdi,      qword[rbp-1128]
     mov                  rsi,      qword[rbp-1136]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	add
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov      qword[rbp-1400],                  rax
     mov                  rdi,      qword[rbp-1368]
     mov                  rsi,      qword[rbp-1400]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	add
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov      qword[rbp-1432],                  rax
     mov                  rcx,       qword[@chunks]
     mov      qword[rbp-1440],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov      qword[rbp-1448],                  rcx
     shl      qword[rbp-1448],                    3
     mov                  rax,      qword[rbp-1440]
     add                  rax,      qword[rbp-1448]
     mov      qword[rbp-1440],                  rax
     mov                  rdx,      qword[rbp-1440]
     mov                  rcx,           qword[rdx]
     mov      qword[rbp-1456],                  rcx
     mov                  rcx,       qword[rbp-104]
     mov      qword[rbp-1464],                  rcx
     shl      qword[rbp-1464],                    3
     mov                  rax,      qword[rbp-1456]
     add                  rax,      qword[rbp-1464]
     mov      qword[rbp-1456],                  rax
     mov                  rdi,      qword[rbp-1432]
     mov                  rdx,      qword[rbp-1456]
     mov                  rsi,           qword[rdx]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	add
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov      qword[rbp-1496],                  rax
     mov                  rcx,      qword[rbp-1496]
     mov      qword[rbp-1504],                  rcx
     mov                  rcx,      qword[rbp-1064]
     mov      qword[rbp-1072],                  rcx
     mov                  rcx,      qword[rbp-1056]
     mov      qword[rbp-1064],                  rcx
     mov                  rdi,      qword[rbp-1048]
     mov                  rsi,                   30
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	rotate_left
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov      qword[rbp-1536],                  rax
     mov                  rcx,      qword[rbp-1536]
     mov      qword[rbp-1056],                  rcx
     mov                  rcx,      qword[rbp-1040]
     mov      qword[rbp-1048],                  rcx
     mov                  rcx,      qword[rbp-1504]
     mov      qword[rbp-1040],                  rcx
	jmp	@sha1.27.ForIter
@sha1.27.ForIter:
     mov                  rcx,       qword[rbp-104]
     mov      qword[rbp-1544],                  rcx
     add       qword[rbp-104],                    1
	jmp	@sha1.29.ForCon
@sha1.29.ForCon:
     cmp       qword[rbp-104],                   80
     mov                  rax,                    0
    setl                   al
     mov      qword[rbp-1552],                  rax
     mov                  rcx,      qword[rbp-1552]
     mov      qword[rbp-1560],                  rcx
     cmp      qword[rbp-1560],                    1
	je	@sha1.28.ForBody
	jmp	@sha1.30.ForExit
@sha1.30.ForExit:
     mov                  rdi,       qword[rbp-632]
     mov                  rsi,      qword[rbp-1040]
    push                  rdi
    push                  rsi
call	add
     pop                  rsi
     pop                  rdi
     mov      qword[rbp-1592],                  rax
     mov                  rcx,      qword[rbp-1592]
     mov       qword[rbp-632],                  rcx
     mov                  rdi,       qword[rbp-672]
     mov                  rsi,      qword[rbp-1048]
    push                  rdi
    push                  rsi
call	add
     pop                  rsi
     pop                  rdi
     mov      qword[rbp-1624],                  rax
     mov                  rcx,      qword[rbp-1624]
     mov       qword[rbp-672],                  rcx
     mov                  rdi,       qword[rbp-712]
     mov                  rsi,      qword[rbp-1056]
    push                  rdi
    push                  rsi
call	add
     pop                  rsi
     pop                  rdi
     mov      qword[rbp-1656],                  rax
     mov                  rcx,      qword[rbp-1656]
     mov       qword[rbp-712],                  rcx
     mov                  rdi,       qword[rbp-720]
     mov                  rsi,      qword[rbp-1064]
    push                  rdi
    push                  rsi
call	add
     pop                  rsi
     pop                  rdi
     mov      qword[rbp-1688],                  rax
     mov                  rcx,      qword[rbp-1688]
     mov       qword[rbp-720],                  rcx
     mov                  rdi,       qword[rbp-760]
     mov                  rsi,      qword[rbp-1072]
    push                  rdi
    push                  rsi
call	add
     pop                  rsi
     pop                  rdi
     mov      qword[rbp-1720],                  rax
     mov                  rcx,      qword[rbp-1720]
     mov       qword[rbp-760],                  rcx
	jmp	@sha1.19.ForIter
@sha1.19.ForIter:
     mov                  rcx,        qword[rbp-96]
     mov      qword[rbp-1728],                  rcx
     add        qword[rbp-96],                    1
	jmp	@sha1.21.ForCon
@sha1.21.ForCon:
     mov                  rcx,        qword[rbp-96]
     cmp                  rcx,        qword[rbp-56]
     mov                  rax,                    0
    setl                   al
     mov      qword[rbp-1736],                  rax
     mov                  rcx,      qword[rbp-1736]
     mov      qword[rbp-1744],                  rcx
     cmp      qword[rbp-1744],                    1
	je	@sha1.20.ForBody
	jmp	@sha1.22.ForExit
@sha1.22.ForExit:
     mov                  rcx, qword[@outputBuffer]
     mov      qword[rbp-1752],                  rcx
     mov                  rdx,      qword[rbp-1752]
     mov                  rcx,       qword[rbp-632]
     mov           qword[rdx],                  rcx
     mov                  rcx, qword[@outputBuffer]
     mov      qword[rbp-1768],                  rcx
     mov                  rdx,      qword[rbp-1768]
     mov                  rcx,       qword[rbp-672]
     mov         qword[rdx+8],                  rcx
     mov                  rcx, qword[@outputBuffer]
     mov      qword[rbp-1776],                  rcx
     mov                  rdx,      qword[rbp-1776]
     mov                  rcx,       qword[rbp-712]
     mov        qword[rdx+16],                  rcx
     mov                  rcx, qword[@outputBuffer]
     mov      qword[rbp-1784],                  rcx
     mov                  rdx,      qword[rbp-1784]
     mov                  rcx,       qword[rbp-720]
     mov        qword[rdx+24],                  rcx
     mov                  rcx, qword[@outputBuffer]
     mov      qword[rbp-1792],                  rcx
     mov                  rdx,      qword[rbp-1792]
     mov                  rcx,       qword[rbp-760]
     mov        qword[rdx+32],                  rcx
     mov                  rax, qword[@outputBuffer]
	jmp	@sha1.2.exit
@sha1.2.exit:
     add                  rsp,                 1800
     pop                  rbp
     ret
int2chr:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  120
@int2chr.1.enter:
     mov         qword[rbp-8],                  rdi
     cmp         qword[rbp-8],                   32
     mov                  rax,                    0
   setge                   al
     mov        qword[rbp-16],                  rax
     cmp        qword[rbp-16],                    0
	je	@int2chr.7.cmp_and
     cmp         qword[rbp-8],                  126
     mov                  rax,                    0
   setle                   al
     mov        qword[rbp-24],                  rax
     cmp        qword[rbp-24],                    0
@int2chr.7.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov        qword[rbp-32],                  rax
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-40],                  rcx
     cmp        qword[rbp-40],                    1
	je	@int2chr.5.IfTrue
	jmp	@int2chr.4.IfFalse
@int2chr.5.IfTrue:
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-48],                  rcx
     mov                  rax,        qword[rbp-48]
     sub                  rax,                   32
     mov        qword[rbp-48],                  rax
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-56],                  rcx
     mov                  rax,        qword[rbp-56]
     sub                  rax,                   32
     mov        qword[rbp-56],                  rax
     mov                  rdi,   qword[@asciiTable]
     mov                  rsi,        qword[rbp-48]
     mov                  rdx,        qword[rbp-56]
    push                  rdi
call	__substring__
     pop                  rdi
     mov       qword[rbp-104],                  rax
     mov                  rax,       qword[rbp-104]
	jmp	@int2chr.2.exit
	jmp	@int2chr.6.IfExit
@int2chr.4.IfFalse:
@int2chr.6.IfExit:
     mov                  rax,         __const_str0
	jmp	@int2chr.2.exit
@int2chr.2.exit:
     add                  rsp,                  120
     pop                  rbp
     ret
array_equal:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  216
@array_equal.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                  rsi
     mov                  rdi,         qword[rbp-8]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov        qword[rbp-40],                  rax
     mov                  rdi,        qword[rbp-16]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov        qword[rbp-64],                  rax
     mov                  rcx,        qword[rbp-40]
     cmp                  rcx,        qword[rbp-64]
     mov                  rax,                    0
   setne                   al
     mov        qword[rbp-72],                  rax
     mov                  rcx,        qword[rbp-72]
     mov        qword[rbp-80],                  rcx
     cmp        qword[rbp-80],                    1
	je	@array_equal.5.IfTrue
	jmp	@array_equal.4.IfFalse
@array_equal.5.IfTrue:
     mov                  rax,                    0
	jmp	@array_equal.2.exit
	jmp	@array_equal.6.IfExit
@array_equal.4.IfFalse:
@array_equal.6.IfExit:
     mov        qword[rbp-96],                    0
	jmp	@array_equal.9.ForCon
@array_equal.8.ForBody:
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-104],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-112],                  rcx
     shl       qword[rbp-112],                    3
     mov                  rax,       qword[rbp-104]
     add                  rax,       qword[rbp-112]
     mov       qword[rbp-104],                  rax
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-120],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-128],                  rcx
     shl       qword[rbp-128],                    3
     mov                  rax,       qword[rbp-120]
     add                  rax,       qword[rbp-128]
     mov       qword[rbp-120],                  rax
     mov                  rdx,       qword[rbp-104]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-136],                  rcx
     mov                  rdx,       qword[rbp-120]
     mov                  rcx,       qword[rbp-136]
     cmp                  rcx,           qword[rdx]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-144],                  rax
     mov                  rcx,       qword[rbp-144]
     mov       qword[rbp-152],                  rcx
     cmp       qword[rbp-152],                    1
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
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-168],                  rcx
     add        qword[rbp-96],                    1
	jmp	@array_equal.9.ForCon
@array_equal.9.ForCon:
     mov                  rdi,         qword[rbp-8]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov       qword[rbp-192],                  rax
     mov                  rcx,        qword[rbp-96]
     cmp                  rcx,       qword[rbp-192]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-200],                  rax
     mov                  rcx,       qword[rbp-200]
     mov       qword[rbp-208],                  rcx
     cmp       qword[rbp-208],                    1
	je	@array_equal.8.ForBody
	jmp	@array_equal.10.ForExit
@array_equal.10.ForExit:
     mov                  rax,                    1
	jmp	@array_equal.2.exit
@array_equal.2.exit:
     add                  rsp,                  216
     pop                  rbp
     ret
rotate_left:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  240
@rotate_left.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                  rsi
     cmp        qword[rbp-16],                    1
     mov                  rax,                    0
    sete                   al
     mov        qword[rbp-24],                  rax
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-32],                  rcx
     cmp        qword[rbp-32],                    1
	je	@rotate_left.5.IfTrue
	jmp	@rotate_left.4.IfFalse
@rotate_left.5.IfTrue:
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-40],                  rcx
     mov                  rax,        qword[rbp-40]
     and                  rax,           2147483647
     mov        qword[rbp-40],                  rax
     mov                  rcx,        qword[rbp-40]
     mov        qword[rbp-48],                  rcx
     shl        qword[rbp-48],                    1
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-56],                  rcx
     shr        qword[rbp-56],                   31
     mov                  rcx,        qword[rbp-56]
     mov        qword[rbp-64],                  rcx
     mov                  rax,        qword[rbp-64]
     and                  rax,                    1
     mov        qword[rbp-64],                  rax
     mov                  rcx,        qword[rbp-48]
     mov        qword[rbp-72],                  rcx
     mov                  rax,        qword[rbp-72]
      or                  rax,        qword[rbp-64]
     mov        qword[rbp-72],                  rax
     mov                  rax,        qword[rbp-72]
	jmp	@rotate_left.2.exit
	jmp	@rotate_left.6.IfExit
@rotate_left.4.IfFalse:
@rotate_left.6.IfExit:
     cmp        qword[rbp-16],                   31
     mov                  rax,                    0
    sete                   al
     mov        qword[rbp-88],                  rax
     mov                  rcx,        qword[rbp-88]
     mov        qword[rbp-96],                  rcx
     cmp        qword[rbp-96],                    1
	je	@rotate_left.8.IfTrue
	jmp	@rotate_left.7.IfFalse
@rotate_left.8.IfTrue:
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-104],                  rcx
     mov                  rax,       qword[rbp-104]
     and                  rax,                    1
     mov       qword[rbp-104],                  rax
     mov                  rcx,       qword[rbp-104]
     mov       qword[rbp-112],                  rcx
     shl       qword[rbp-112],                   31
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-120],                  rcx
     shr       qword[rbp-120],                    1
     mov                  rcx,       qword[rbp-120]
     mov       qword[rbp-128],                  rcx
     mov                  rax,       qword[rbp-128]
     and                  rax,           2147483647
     mov       qword[rbp-128],                  rax
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-136],                  rcx
     mov                  rax,       qword[rbp-136]
      or                  rax,       qword[rbp-128]
     mov       qword[rbp-136],                  rax
     mov                  rax,       qword[rbp-136]
	jmp	@rotate_left.2.exit
	jmp	@rotate_left.9.IfExit
@rotate_left.7.IfFalse:
@rotate_left.9.IfExit:
     mov       qword[rbp-152],                   32
     mov                  rax,       qword[rbp-152]
     sub                  rax,        qword[rbp-16]
     mov       qword[rbp-152],                  rax
     mov       qword[rbp-160],                    1
     mov                  rcx,       qword[rbp-152]
     shl       qword[rbp-160],                   cl
     mov                  rcx,       qword[rbp-160]
     mov       qword[rbp-168],                  rcx
     mov                  rax,       qword[rbp-168]
     sub                  rax,                    1
     mov       qword[rbp-168],                  rax
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-176],                  rcx
     mov                  rax,       qword[rbp-176]
     and                  rax,       qword[rbp-168]
     mov       qword[rbp-176],                  rax
     mov                  rcx,       qword[rbp-176]
     mov       qword[rbp-184],                  rcx
     mov                  rcx,        qword[rbp-16]
     shl       qword[rbp-184],                   cl
     mov       qword[rbp-192],                   32
     mov                  rax,       qword[rbp-192]
     sub                  rax,        qword[rbp-16]
     mov       qword[rbp-192],                  rax
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-200],                  rcx
     mov                  rcx,       qword[rbp-192]
     shr       qword[rbp-200],                   cl
     mov       qword[rbp-208],                    1
     mov                  rcx,        qword[rbp-16]
     shl       qword[rbp-208],                   cl
     mov                  rcx,       qword[rbp-208]
     mov       qword[rbp-216],                  rcx
     mov                  rax,       qword[rbp-216]
     sub                  rax,                    1
     mov       qword[rbp-216],                  rax
     mov                  rcx,       qword[rbp-200]
     mov       qword[rbp-224],                  rcx
     mov                  rax,       qword[rbp-224]
     and                  rax,       qword[rbp-216]
     mov       qword[rbp-224],                  rax
     mov                  rcx,       qword[rbp-184]
     mov       qword[rbp-232],                  rcx
     mov                  rax,       qword[rbp-232]
      or                  rax,       qword[rbp-224]
     mov       qword[rbp-232],                  rax
     mov                  rax,       qword[rbp-232]
	jmp	@rotate_left.2.exit
@rotate_left.2.exit:
     add                  rsp,                  240
     pop                  rbp
     ret
lohi:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   40
@lohi.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                  rsi
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-24],                  rcx
     shl        qword[rbp-24],                   16
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-32],                  rcx
     mov                  rax,        qword[rbp-32]
      or                  rax,        qword[rbp-24]
     mov        qword[rbp-32],                  rax
     mov                  rax,        qword[rbp-32]
	jmp	@lohi.2.exit
@lohi.2.exit:
     add                  rsp,                   40
     pop                  rbp
     ret
nextLetter:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   96
@nextLetter.1.enter:
     mov         qword[rbp-8],                  rdi
     cmp         qword[rbp-8],                  122
     mov                  rax,                    0
    sete                   al
     mov        qword[rbp-16],                  rax
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-24],                  rcx
     cmp        qword[rbp-24],                    1
	je	@nextLetter.5.IfTrue
	jmp	@nextLetter.4.IfFalse
@nextLetter.5.IfTrue:
     mov                  rax,                   -1
	jmp	@nextLetter.2.exit
	jmp	@nextLetter.6.IfExit
@nextLetter.4.IfFalse:
@nextLetter.6.IfExit:
     cmp         qword[rbp-8],                   90
     mov                  rax,                    0
    sete                   al
     mov        qword[rbp-40],                  rax
     mov                  rcx,        qword[rbp-40]
     mov        qword[rbp-48],                  rcx
     cmp        qword[rbp-48],                    1
	je	@nextLetter.8.IfTrue
	jmp	@nextLetter.7.IfFalse
@nextLetter.8.IfTrue:
     mov                  rax,                   97
	jmp	@nextLetter.2.exit
	jmp	@nextLetter.9.IfExit
@nextLetter.7.IfFalse:
@nextLetter.9.IfExit:
     cmp         qword[rbp-8],                   57
     mov                  rax,                    0
    sete                   al
     mov        qword[rbp-64],                  rax
     mov                  rcx,        qword[rbp-64]
     mov        qword[rbp-72],                  rcx
     cmp        qword[rbp-72],                    1
	je	@nextLetter.11.IfTrue
	jmp	@nextLetter.10.IfFalse
@nextLetter.11.IfTrue:
     mov                  rax,                   65
	jmp	@nextLetter.2.exit
	jmp	@nextLetter.12.IfExit
@nextLetter.10.IfFalse:
@nextLetter.12.IfExit:
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-88],                  rcx
     mov                  rax,        qword[rbp-88]
     add                  rax,                    1
     mov        qword[rbp-88],                  rax
     mov                  rax,        qword[rbp-88]
	jmp	@nextLetter.2.exit
@nextLetter.2.exit:
     add                  rsp,                   96
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



