  global                 main
  extern	malloc


 section                .text
point.printPoint:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  280
@point.printPoint.1.enter:
     mov         qword[rbp-8],                  rdi
     mov                  rdx,         qword[rbp-8]
     mov                  rdi,           qword[rdx]
    push                  rdi
call	toString
     pop                  rdi
     mov        qword[rbp-24],                  rax
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-32],                  rcx
     mov                  rdi,         __const_str0
     mov                  rsi,        qword[rbp-32]
    push                  rdi
call	__string_connect__
     pop                  rdi
     mov        qword[rbp-56],                  rax
     mov                  rcx,        qword[rbp-56]
     mov        qword[rbp-64],                  rcx
     mov                  rdi,        qword[rbp-64]
     mov                  rsi,         __const_str1
    push                  rdi
call	__string_connect__
     pop                  rdi
     mov        qword[rbp-88],                  rax
     mov                  rcx,        qword[rbp-88]
     mov        qword[rbp-96],                  rcx
     mov                  rdx,         qword[rbp-8]
     mov                  rdi,         qword[rdx+8]
    push                  rdi
call	toString
     pop                  rdi
     mov       qword[rbp-112],                  rax
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-120],                  rcx
     mov                  rdi,        qword[rbp-96]
     mov                  rsi,       qword[rbp-120]
    push                  rdi
call	__string_connect__
     pop                  rdi
     mov       qword[rbp-144],                  rax
     mov                  rcx,       qword[rbp-144]
     mov       qword[rbp-152],                  rcx
     mov                  rdi,       qword[rbp-152]
     mov                  rsi,         __const_str1
    push                  rdi
call	__string_connect__
     pop                  rdi
     mov       qword[rbp-176],                  rax
     mov                  rcx,       qword[rbp-176]
     mov       qword[rbp-184],                  rcx
     mov                  rdx,         qword[rbp-8]
     mov                  rdi,        qword[rdx+16]
    push                  rdi
call	toString
     pop                  rdi
     mov       qword[rbp-200],                  rax
     mov                  rcx,       qword[rbp-200]
     mov       qword[rbp-208],                  rcx
     mov                  rdi,       qword[rbp-184]
     mov                  rsi,       qword[rbp-208]
    push                  rdi
call	__string_connect__
     pop                  rdi
     mov       qword[rbp-232],                  rax
     mov                  rcx,       qword[rbp-232]
     mov       qword[rbp-240],                  rcx
     mov                  rdi,       qword[rbp-240]
     mov                  rsi,         __const_str2
    push                  rdi
call	__string_connect__
     pop                  rdi
     mov       qword[rbp-264],                  rax
     mov                  rcx,       qword[rbp-264]
     mov       qword[rbp-272],                  rcx
     mov                  rdi,       qword[rbp-272]
    push                  rdi
call	println
     pop                  rdi
@point.printPoint.2.exit:
     add                  rsp,                  280
     pop                  rbp
     ret
point.cross:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  152
@point.cross.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                  rsi
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                   24
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov        qword[rbp-24],                  rax
     mov                  rdi,        qword[rbp-24]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	point.
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-40],                  rcx
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,         qword[rdx+8]
     mov        qword[rbp-48],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rax,        qword[rbp-48]
    imul                  rax,        qword[rdx+16]
     mov        qword[rbp-48],                  rax
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,        qword[rdx+16]
     mov        qword[rbp-56],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rax,        qword[rbp-56]
    imul                  rax,         qword[rdx+8]
     mov        qword[rbp-56],                  rax
     mov                  rcx,        qword[rbp-48]
     mov        qword[rbp-64],                  rcx
     mov                  rax,        qword[rbp-64]
     sub                  rax,        qword[rbp-56]
     mov        qword[rbp-64],                  rax
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,        qword[rdx+16]
     mov        qword[rbp-72],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rax,        qword[rbp-72]
    imul                  rax,           qword[rdx]
     mov        qword[rbp-72],                  rax
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,           qword[rdx]
     mov        qword[rbp-80],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rax,        qword[rbp-80]
    imul                  rax,        qword[rdx+16]
     mov        qword[rbp-80],                  rax
     mov                  rcx,        qword[rbp-72]
     mov        qword[rbp-88],                  rcx
     mov                  rax,        qword[rbp-88]
     sub                  rax,        qword[rbp-80]
     mov        qword[rbp-88],                  rax
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,           qword[rdx]
     mov        qword[rbp-96],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rax,        qword[rbp-96]
    imul                  rax,         qword[rdx+8]
     mov        qword[rbp-96],                  rax
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-104],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rax,       qword[rbp-104]
    imul                  rax,           qword[rdx]
     mov       qword[rbp-104],                  rax
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-112],                  rcx
     mov                  rax,       qword[rbp-112]
     sub                  rax,       qword[rbp-104]
     mov       qword[rbp-112],                  rax
     mov                  rdi,        qword[rbp-40]
     mov                  rsi,        qword[rbp-64]
     mov                  rdx,        qword[rbp-88]
     mov                  rcx,       qword[rbp-112]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	point.set
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov                  rax,        qword[rbp-40]
	jmp	@point.cross.2.exit
@point.cross.2.exit:
     add                  rsp,                  152
     pop                  rbp
     ret
point.sqrDis:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  112
@point.sqrDis.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                  rsi
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,           qword[rdx]
     mov        qword[rbp-24],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rax,        qword[rbp-24]
     sub                  rax,           qword[rdx]
     mov        qword[rbp-24],                  rax
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,           qword[rdx]
     mov        qword[rbp-32],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rax,        qword[rbp-32]
     sub                  rax,           qword[rdx]
     mov        qword[rbp-32],                  rax
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-40],                  rcx
     mov                  rax,        qword[rbp-40]
    imul                  rax,        qword[rbp-32]
     mov        qword[rbp-40],                  rax
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,         qword[rdx+8]
     mov        qword[rbp-48],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rax,        qword[rbp-48]
     sub                  rax,         qword[rdx+8]
     mov        qword[rbp-48],                  rax
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,         qword[rdx+8]
     mov        qword[rbp-56],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rax,        qword[rbp-56]
     sub                  rax,         qword[rdx+8]
     mov        qword[rbp-56],                  rax
     mov                  rcx,        qword[rbp-48]
     mov        qword[rbp-64],                  rcx
     mov                  rax,        qword[rbp-64]
    imul                  rax,        qword[rbp-56]
     mov        qword[rbp-64],                  rax
     mov                  rcx,        qword[rbp-40]
     mov        qword[rbp-72],                  rcx
     mov                  rax,        qword[rbp-72]
     add                  rax,        qword[rbp-64]
     mov        qword[rbp-72],                  rax
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,        qword[rdx+16]
     mov        qword[rbp-80],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rax,        qword[rbp-80]
     sub                  rax,        qword[rdx+16]
     mov        qword[rbp-80],                  rax
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,        qword[rdx+16]
     mov        qword[rbp-88],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rax,        qword[rbp-88]
     sub                  rax,        qword[rdx+16]
     mov        qword[rbp-88],                  rax
     mov                  rcx,        qword[rbp-80]
     mov        qword[rbp-96],                  rcx
     mov                  rax,        qword[rbp-96]
    imul                  rax,        qword[rbp-88]
     mov        qword[rbp-96],                  rax
     mov                  rcx,        qword[rbp-72]
     mov       qword[rbp-104],                  rcx
     mov                  rax,       qword[rbp-104]
     add                  rax,        qword[rbp-96]
     mov       qword[rbp-104],                  rax
     mov                  rax,       qword[rbp-104]
	jmp	@point.sqrDis.2.exit
@point.sqrDis.2.exit:
     add                  rsp,                  112
     pop                  rbp
     ret
point.:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                    8
@point..1.enter:
     mov         qword[rbp-8],                  rdi
     mov                  rdx,         qword[rbp-8]
     mov           qword[rdx],                    0
     mov                  rdx,         qword[rbp-8]
     mov         qword[rdx+8],                    0
     mov                  rdx,         qword[rbp-8]
     mov        qword[rdx+16],                    0
@point..2.exit:
     add                  rsp,                    8
     pop                  rbp
     ret
point.dot:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   64
@point.dot.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                  rsi
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,           qword[rdx]
     mov        qword[rbp-24],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rax,        qword[rbp-24]
    imul                  rax,           qword[rdx]
     mov        qword[rbp-24],                  rax
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,         qword[rdx+8]
     mov        qword[rbp-32],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rax,        qword[rbp-32]
    imul                  rax,         qword[rdx+8]
     mov        qword[rbp-32],                  rax
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-40],                  rcx
     mov                  rax,        qword[rbp-40]
     add                  rax,        qword[rbp-32]
     mov        qword[rbp-40],                  rax
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,        qword[rdx+16]
     mov        qword[rbp-48],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rax,        qword[rbp-48]
    imul                  rax,        qword[rdx+16]
     mov        qword[rbp-48],                  rax
     mov                  rcx,        qword[rbp-40]
     mov        qword[rbp-56],                  rcx
     mov                  rax,        qword[rbp-56]
     add                  rax,        qword[rbp-48]
     mov        qword[rbp-56],                  rax
     mov                  rax,        qword[rbp-56]
	jmp	@point.dot.2.exit
@point.dot.2.exit:
     add                  rsp,                   64
     pop                  rbp
     ret
point.sqrLen:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   56
@point.sqrLen.1.enter:
     mov         qword[rbp-8],                  rdi
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,           qword[rdx]
     mov        qword[rbp-16],                  rcx
     mov                  rdx,         qword[rbp-8]
     mov                  rax,        qword[rbp-16]
    imul                  rax,           qword[rdx]
     mov        qword[rbp-16],                  rax
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,         qword[rdx+8]
     mov        qword[rbp-24],                  rcx
     mov                  rdx,         qword[rbp-8]
     mov                  rax,        qword[rbp-24]
    imul                  rax,         qword[rdx+8]
     mov        qword[rbp-24],                  rax
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-32],                  rcx
     mov                  rax,        qword[rbp-32]
     add                  rax,        qword[rbp-24]
     mov        qword[rbp-32],                  rax
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,        qword[rdx+16]
     mov        qword[rbp-40],                  rcx
     mov                  rdx,         qword[rbp-8]
     mov                  rax,        qword[rbp-40]
    imul                  rax,        qword[rdx+16]
     mov        qword[rbp-40],                  rax
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-48],                  rcx
     mov                  rax,        qword[rbp-48]
     add                  rax,        qword[rbp-40]
     mov        qword[rbp-48],                  rax
     mov                  rax,        qword[rbp-48]
	jmp	@point.sqrLen.2.exit
@point.sqrLen.2.exit:
     add                  rsp,                   56
     pop                  rbp
     ret
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                 3400
@main.1.enter:
     sub                  rsp,                    8
     mov                  rdi,                   24
    call               malloc
     add                  rsp,                    8
     mov         qword[rbp-8],                  rax
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-16],                  rcx
@main.5.@point..1.enter:
     mov                  rdx,        qword[rbp-16]
     mov           qword[rdx],                    0
     mov                  rdx,        qword[rbp-16]
     mov         qword[rdx+8],                    0
     mov                  rdx,        qword[rbp-16]
     mov        qword[rdx+16],                    0
@main.4.@point..2.exit:
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-24],                  rcx
     sub                  rsp,                    8
     mov                  rdi,                   24
    call               malloc
     add                  rsp,                    8
     mov        qword[rbp-32],                  rax
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-40],                  rcx
@main.7.@point..1.enter:
     mov                  rdx,        qword[rbp-40]
     mov           qword[rdx],                    0
     mov                  rdx,        qword[rbp-40]
     mov         qword[rdx+8],                    0
     mov                  rdx,        qword[rbp-40]
     mov        qword[rdx+16],                    0
@main.6.@point..2.exit:
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-48],                  rcx
     sub                  rsp,                    8
     mov                  rdi,                   24
    call               malloc
     add                  rsp,                    8
     mov        qword[rbp-56],                  rax
     mov                  rcx,        qword[rbp-56]
     mov        qword[rbp-64],                  rcx
@main.9.@point..1.enter:
     mov                  rdx,        qword[rbp-64]
     mov           qword[rdx],                    0
     mov                  rdx,        qword[rbp-64]
     mov         qword[rdx+8],                    0
     mov                  rdx,        qword[rbp-64]
     mov        qword[rdx+16],                    0
@main.8.@point..2.exit:
     mov                  rcx,        qword[rbp-56]
     mov        qword[rbp-72],                  rcx
     sub                  rsp,                    8
     mov                  rdi,                   24
    call               malloc
     add                  rsp,                    8
     mov        qword[rbp-80],                  rax
     mov                  rcx,        qword[rbp-80]
     mov        qword[rbp-88],                  rcx
@main.11.@point..1.enter:
     mov                  rdx,        qword[rbp-88]
     mov           qword[rdx],                    0
     mov                  rdx,        qword[rbp-88]
     mov         qword[rdx+8],                    0
     mov                  rdx,        qword[rbp-88]
     mov        qword[rdx+16],                    0
@main.10.@point..2.exit:
     mov                  rcx,        qword[rbp-80]
     mov        qword[rbp-96],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-104],                  rcx
@main.13.@point.printPoint.1.enter:
     mov                  rdx,       qword[rbp-104]
     mov                  rdi,           qword[rdx]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov       qword[rbp-120],                  rax
     mov                  rcx,       qword[rbp-120]
     mov       qword[rbp-128],                  rcx
     mov                  rdi,         __const_str0
     mov                  rsi,       qword[rbp-128]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov       qword[rbp-152],                  rax
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-160],                  rcx
     mov                  rdi,       qword[rbp-160]
     mov                  rsi,         __const_str1
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov       qword[rbp-184],                  rax
     mov                  rcx,       qword[rbp-184]
     mov       qword[rbp-192],                  rcx
     mov                  rdx,       qword[rbp-104]
     mov                  rdi,         qword[rdx+8]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov       qword[rbp-208],                  rax
     mov                  rcx,       qword[rbp-208]
     mov       qword[rbp-216],                  rcx
     mov                  rdi,       qword[rbp-192]
     mov                  rsi,       qword[rbp-216]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov       qword[rbp-240],                  rax
     mov                  rcx,       qword[rbp-240]
     mov       qword[rbp-248],                  rcx
     mov                  rdi,       qword[rbp-248]
     mov                  rsi,         __const_str1
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov       qword[rbp-272],                  rax
     mov                  rcx,       qword[rbp-272]
     mov       qword[rbp-280],                  rcx
     mov                  rdx,       qword[rbp-104]
     mov                  rdi,        qword[rdx+16]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov       qword[rbp-296],                  rax
     mov                  rcx,       qword[rbp-296]
     mov       qword[rbp-304],                  rcx
     mov                  rdi,       qword[rbp-280]
     mov                  rsi,       qword[rbp-304]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov       qword[rbp-328],                  rax
     mov                  rcx,       qword[rbp-328]
     mov       qword[rbp-336],                  rcx
     mov                  rdi,       qword[rbp-336]
     mov                  rsi,         __const_str2
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov       qword[rbp-360],                  rax
     mov                  rcx,       qword[rbp-360]
     mov       qword[rbp-368],                  rcx
     mov                  rdi,       qword[rbp-368]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
@main.12.@point.printPoint.2.exit:
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-384],                  rcx
     mov       qword[rbp-392],                  849
     mov       qword[rbp-400],                 -463
     mov       qword[rbp-408],                  480
@main.15.@point.set.1.enter:
     mov                  rdx,       qword[rbp-384]
     mov                  rcx,       qword[rbp-392]
     mov           qword[rdx],                  rcx
     mov                  rdx,       qword[rbp-384]
     mov                  rcx,       qword[rbp-400]
     mov         qword[rdx+8],                  rcx
     mov                  rdx,       qword[rbp-384]
     mov                  rcx,       qword[rbp-408]
     mov        qword[rdx+16],                  rcx
@main.14.@point.set.2.exit:
     mov                  rcx,        qword[rbp-48]
     mov       qword[rbp-416],                  rcx
     mov       qword[rbp-424],                 -208
     mov       qword[rbp-432],                  585
     mov       qword[rbp-440],                 -150
@main.17.@point.set.1.enter:
     mov                  rdx,       qword[rbp-416]
     mov                  rcx,       qword[rbp-424]
     mov           qword[rdx],                  rcx
     mov                  rdx,       qword[rbp-416]
     mov                  rcx,       qword[rbp-432]
     mov         qword[rdx+8],                  rcx
     mov                  rdx,       qword[rbp-416]
     mov                  rcx,       qword[rbp-440]
     mov        qword[rdx+16],                  rcx
@main.16.@point.set.2.exit:
     mov                  rcx,        qword[rbp-72]
     mov       qword[rbp-448],                  rcx
     mov       qword[rbp-456],                  360
     mov       qword[rbp-464],                 -670
     mov       qword[rbp-472],                 -742
@main.19.@point.set.1.enter:
     mov                  rdx,       qword[rbp-448]
     mov                  rcx,       qword[rbp-456]
     mov           qword[rdx],                  rcx
     mov                  rdx,       qword[rbp-448]
     mov                  rcx,       qword[rbp-464]
     mov         qword[rdx+8],                  rcx
     mov                  rdx,       qword[rbp-448]
     mov                  rcx,       qword[rbp-472]
     mov        qword[rdx+16],                  rcx
@main.18.@point.set.2.exit:
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-480],                  rcx
     mov       qword[rbp-488],                  -29
     mov       qword[rbp-496],                 -591
     mov       qword[rbp-504],                 -960
@main.21.@point.set.1.enter:
     mov                  rdx,       qword[rbp-480]
     mov                  rcx,       qword[rbp-488]
     mov           qword[rdx],                  rcx
     mov                  rdx,       qword[rbp-480]
     mov                  rcx,       qword[rbp-496]
     mov         qword[rdx+8],                  rcx
     mov                  rdx,       qword[rbp-480]
     mov                  rcx,       qword[rbp-504]
     mov        qword[rdx+16],                  rcx
@main.20.@point.set.2.exit:
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-512],                  rcx
     mov                  rcx,        qword[rbp-48]
     mov       qword[rbp-520],                  rcx
@main.23.@point.add.1.enter:
     mov                  rdx,       qword[rbp-512]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-528],                  rcx
     mov                  rdx,       qword[rbp-520]
     mov                  rax,       qword[rbp-528]
     add                  rax,           qword[rdx]
     mov       qword[rbp-528],                  rax
     mov                  rdx,       qword[rbp-512]
     mov                  rcx,       qword[rbp-528]
     mov           qword[rdx],                  rcx
     mov                  rdx,       qword[rbp-512]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-536],                  rcx
     mov                  rdx,       qword[rbp-520]
     mov                  rax,       qword[rbp-536]
     add                  rax,         qword[rdx+8]
     mov       qword[rbp-536],                  rax
     mov                  rdx,       qword[rbp-512]
     mov                  rcx,       qword[rbp-536]
     mov         qword[rdx+8],                  rcx
     mov                  rdx,       qword[rbp-512]
     mov                  rcx,        qword[rdx+16]
     mov       qword[rbp-544],                  rcx
     mov                  rdx,       qword[rbp-520]
     mov                  rax,       qword[rbp-544]
     add                  rax,        qword[rdx+16]
     mov       qword[rbp-544],                  rax
     mov                  rdx,       qword[rbp-512]
     mov                  rcx,       qword[rbp-544]
     mov        qword[rdx+16],                  rcx
     mov                  rcx,       qword[rbp-512]
     mov       qword[rbp-552],                  rcx
	jmp	@main.22.@point.add.2.exit
@main.22.@point.add.2.exit:
     mov                  rcx,       qword[rbp-552]
     mov       qword[rbp-560],                  rcx
     mov                  rcx,        qword[rbp-48]
     mov       qword[rbp-568],                  rcx
     mov                  rcx,        qword[rbp-72]
     mov       qword[rbp-576],                  rcx
@main.25.@point.add.1.enter:
     mov                  rdx,       qword[rbp-568]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-584],                  rcx
     mov                  rdx,       qword[rbp-576]
     mov                  rax,       qword[rbp-584]
     add                  rax,           qword[rdx]
     mov       qword[rbp-584],                  rax
     mov                  rdx,       qword[rbp-568]
     mov                  rcx,       qword[rbp-584]
     mov           qword[rdx],                  rcx
     mov                  rdx,       qword[rbp-568]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-592],                  rcx
     mov                  rdx,       qword[rbp-576]
     mov                  rax,       qword[rbp-592]
     add                  rax,         qword[rdx+8]
     mov       qword[rbp-592],                  rax
     mov                  rdx,       qword[rbp-568]
     mov                  rcx,       qword[rbp-592]
     mov         qword[rdx+8],                  rcx
     mov                  rdx,       qword[rbp-568]
     mov                  rcx,        qword[rdx+16]
     mov       qword[rbp-600],                  rcx
     mov                  rdx,       qword[rbp-576]
     mov                  rax,       qword[rbp-600]
     add                  rax,        qword[rdx+16]
     mov       qword[rbp-600],                  rax
     mov                  rdx,       qword[rbp-568]
     mov                  rcx,       qword[rbp-600]
     mov        qword[rdx+16],                  rcx
     mov                  rcx,       qword[rbp-568]
     mov       qword[rbp-608],                  rcx
	jmp	@main.24.@point.add.2.exit
@main.24.@point.add.2.exit:
     mov                  rcx,       qword[rbp-608]
     mov       qword[rbp-616],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-624],                  rcx
     mov                  rcx,        qword[rbp-72]
     mov       qword[rbp-632],                  rcx
@main.27.@point.add.1.enter:
     mov                  rdx,       qword[rbp-624]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-640],                  rcx
     mov                  rdx,       qword[rbp-632]
     mov                  rax,       qword[rbp-640]
     add                  rax,           qword[rdx]
     mov       qword[rbp-640],                  rax
     mov                  rdx,       qword[rbp-624]
     mov                  rcx,       qword[rbp-640]
     mov           qword[rdx],                  rcx
     mov                  rdx,       qword[rbp-624]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-648],                  rcx
     mov                  rdx,       qword[rbp-632]
     mov                  rax,       qword[rbp-648]
     add                  rax,         qword[rdx+8]
     mov       qword[rbp-648],                  rax
     mov                  rdx,       qword[rbp-624]
     mov                  rcx,       qword[rbp-648]
     mov         qword[rdx+8],                  rcx
     mov                  rdx,       qword[rbp-624]
     mov                  rcx,        qword[rdx+16]
     mov       qword[rbp-656],                  rcx
     mov                  rdx,       qword[rbp-632]
     mov                  rax,       qword[rbp-656]
     add                  rax,        qword[rdx+16]
     mov       qword[rbp-656],                  rax
     mov                  rdx,       qword[rbp-624]
     mov                  rcx,       qword[rbp-656]
     mov        qword[rdx+16],                  rcx
     mov                  rcx,       qword[rbp-624]
     mov       qword[rbp-664],                  rcx
	jmp	@main.26.@point.add.2.exit
@main.26.@point.add.2.exit:
     mov                  rcx,       qword[rbp-664]
     mov       qword[rbp-672],                  rcx
     mov                  rcx,        qword[rbp-72]
     mov       qword[rbp-680],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-688],                  rcx
@main.29.@point.sub.1.enter:
     mov                  rdx,       qword[rbp-680]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-696],                  rcx
     mov                  rdx,       qword[rbp-688]
     mov                  rax,       qword[rbp-696]
     sub                  rax,           qword[rdx]
     mov       qword[rbp-696],                  rax
     mov                  rdx,       qword[rbp-680]
     mov                  rcx,       qword[rbp-696]
     mov           qword[rdx],                  rcx
     mov                  rdx,       qword[rbp-680]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-704],                  rcx
     mov                  rdx,       qword[rbp-688]
     mov                  rax,       qword[rbp-704]
     sub                  rax,         qword[rdx+8]
     mov       qword[rbp-704],                  rax
     mov                  rdx,       qword[rbp-680]
     mov                  rcx,       qword[rbp-704]
     mov         qword[rdx+8],                  rcx
     mov                  rdx,       qword[rbp-680]
     mov                  rcx,        qword[rdx+16]
     mov       qword[rbp-712],                  rcx
     mov                  rdx,       qword[rbp-688]
     mov                  rax,       qword[rbp-712]
     sub                  rax,        qword[rdx+16]
     mov       qword[rbp-712],                  rax
     mov                  rdx,       qword[rbp-680]
     mov                  rcx,       qword[rbp-712]
     mov        qword[rdx+16],                  rcx
     mov                  rcx,       qword[rbp-680]
     mov       qword[rbp-720],                  rcx
	jmp	@main.28.@point.sub.2.exit
@main.28.@point.sub.2.exit:
     mov                  rcx,       qword[rbp-720]
     mov       qword[rbp-728],                  rcx
     mov                  rcx,        qword[rbp-48]
     mov       qword[rbp-736],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-744],                  rcx
@main.31.@point.sub.1.enter:
     mov                  rdx,       qword[rbp-736]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-752],                  rcx
     mov                  rdx,       qword[rbp-744]
     mov                  rax,       qword[rbp-752]
     sub                  rax,           qword[rdx]
     mov       qword[rbp-752],                  rax
     mov                  rdx,       qword[rbp-736]
     mov                  rcx,       qword[rbp-752]
     mov           qword[rdx],                  rcx
     mov                  rdx,       qword[rbp-736]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-760],                  rcx
     mov                  rdx,       qword[rbp-744]
     mov                  rax,       qword[rbp-760]
     sub                  rax,         qword[rdx+8]
     mov       qword[rbp-760],                  rax
     mov                  rdx,       qword[rbp-736]
     mov                  rcx,       qword[rbp-760]
     mov         qword[rdx+8],                  rcx
     mov                  rdx,       qword[rbp-736]
     mov                  rcx,        qword[rdx+16]
     mov       qword[rbp-768],                  rcx
     mov                  rdx,       qword[rbp-744]
     mov                  rax,       qword[rbp-768]
     sub                  rax,        qword[rdx+16]
     mov       qword[rbp-768],                  rax
     mov                  rdx,       qword[rbp-736]
     mov                  rcx,       qword[rbp-768]
     mov        qword[rdx+16],                  rcx
     mov                  rcx,       qword[rbp-736]
     mov       qword[rbp-776],                  rcx
	jmp	@main.30.@point.sub.2.exit
@main.30.@point.sub.2.exit:
     mov                  rcx,       qword[rbp-776]
     mov       qword[rbp-784],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-792],                  rcx
     mov                  rcx,        qword[rbp-72]
     mov       qword[rbp-800],                  rcx
@main.33.@point.sub.1.enter:
     mov                  rdx,       qword[rbp-792]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-808],                  rcx
     mov                  rdx,       qword[rbp-800]
     mov                  rax,       qword[rbp-808]
     sub                  rax,           qword[rdx]
     mov       qword[rbp-808],                  rax
     mov                  rdx,       qword[rbp-792]
     mov                  rcx,       qword[rbp-808]
     mov           qword[rdx],                  rcx
     mov                  rdx,       qword[rbp-792]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-816],                  rcx
     mov                  rdx,       qword[rbp-800]
     mov                  rax,       qword[rbp-816]
     sub                  rax,         qword[rdx+8]
     mov       qword[rbp-816],                  rax
     mov                  rdx,       qword[rbp-792]
     mov                  rcx,       qword[rbp-816]
     mov         qword[rdx+8],                  rcx
     mov                  rdx,       qword[rbp-792]
     mov                  rcx,        qword[rdx+16]
     mov       qword[rbp-824],                  rcx
     mov                  rdx,       qword[rbp-800]
     mov                  rax,       qword[rbp-824]
     sub                  rax,        qword[rdx+16]
     mov       qword[rbp-824],                  rax
     mov                  rdx,       qword[rbp-792]
     mov                  rcx,       qword[rbp-824]
     mov        qword[rdx+16],                  rcx
     mov                  rcx,       qword[rbp-792]
     mov       qword[rbp-832],                  rcx
	jmp	@main.32.@point.sub.2.exit
@main.32.@point.sub.2.exit:
     mov                  rcx,       qword[rbp-832]
     mov       qword[rbp-840],                  rcx
     mov                  rcx,        qword[rbp-72]
     mov       qword[rbp-848],                  rcx
     mov                  rcx,        qword[rbp-48]
     mov       qword[rbp-856],                  rcx
@main.35.@point.add.1.enter:
     mov                  rdx,       qword[rbp-848]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-864],                  rcx
     mov                  rdx,       qword[rbp-856]
     mov                  rax,       qword[rbp-864]
     add                  rax,           qword[rdx]
     mov       qword[rbp-864],                  rax
     mov                  rdx,       qword[rbp-848]
     mov                  rcx,       qword[rbp-864]
     mov           qword[rdx],                  rcx
     mov                  rdx,       qword[rbp-848]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-872],                  rcx
     mov                  rdx,       qword[rbp-856]
     mov                  rax,       qword[rbp-872]
     add                  rax,         qword[rdx+8]
     mov       qword[rbp-872],                  rax
     mov                  rdx,       qword[rbp-848]
     mov                  rcx,       qword[rbp-872]
     mov         qword[rdx+8],                  rcx
     mov                  rdx,       qword[rbp-848]
     mov                  rcx,        qword[rdx+16]
     mov       qword[rbp-880],                  rcx
     mov                  rdx,       qword[rbp-856]
     mov                  rax,       qword[rbp-880]
     add                  rax,        qword[rdx+16]
     mov       qword[rbp-880],                  rax
     mov                  rdx,       qword[rbp-848]
     mov                  rcx,       qword[rbp-880]
     mov        qword[rdx+16],                  rcx
     mov                  rcx,       qword[rbp-848]
     mov       qword[rbp-888],                  rcx
	jmp	@main.34.@point.add.2.exit
@main.34.@point.add.2.exit:
     mov                  rcx,       qword[rbp-888]
     mov       qword[rbp-896],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-904],                  rcx
     mov                  rcx,        qword[rbp-48]
     mov       qword[rbp-912],                  rcx
@main.37.@point.add.1.enter:
     mov                  rdx,       qword[rbp-904]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-920],                  rcx
     mov                  rdx,       qword[rbp-912]
     mov                  rax,       qword[rbp-920]
     add                  rax,           qword[rdx]
     mov       qword[rbp-920],                  rax
     mov                  rdx,       qword[rbp-904]
     mov                  rcx,       qword[rbp-920]
     mov           qword[rdx],                  rcx
     mov                  rdx,       qword[rbp-904]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-928],                  rcx
     mov                  rdx,       qword[rbp-912]
     mov                  rax,       qword[rbp-928]
     add                  rax,         qword[rdx+8]
     mov       qword[rbp-928],                  rax
     mov                  rdx,       qword[rbp-904]
     mov                  rcx,       qword[rbp-928]
     mov         qword[rdx+8],                  rcx
     mov                  rdx,       qword[rbp-904]
     mov                  rcx,        qword[rdx+16]
     mov       qword[rbp-936],                  rcx
     mov                  rdx,       qword[rbp-912]
     mov                  rax,       qword[rbp-936]
     add                  rax,        qword[rdx+16]
     mov       qword[rbp-936],                  rax
     mov                  rdx,       qword[rbp-904]
     mov                  rcx,       qword[rbp-936]
     mov        qword[rdx+16],                  rcx
     mov                  rcx,       qword[rbp-904]
     mov       qword[rbp-944],                  rcx
	jmp	@main.36.@point.add.2.exit
@main.36.@point.add.2.exit:
     mov                  rcx,       qword[rbp-944]
     mov       qword[rbp-952],                  rcx
     mov                  rcx,        qword[rbp-48]
     mov       qword[rbp-960],                  rcx
     mov                  rcx,        qword[rbp-48]
     mov       qword[rbp-968],                  rcx
@main.39.@point.add.1.enter:
     mov                  rdx,       qword[rbp-960]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-976],                  rcx
     mov                  rdx,       qword[rbp-968]
     mov                  rax,       qword[rbp-976]
     add                  rax,           qword[rdx]
     mov       qword[rbp-976],                  rax
     mov                  rdx,       qword[rbp-960]
     mov                  rcx,       qword[rbp-976]
     mov           qword[rdx],                  rcx
     mov                  rdx,       qword[rbp-960]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-984],                  rcx
     mov                  rdx,       qword[rbp-968]
     mov                  rax,       qword[rbp-984]
     add                  rax,         qword[rdx+8]
     mov       qword[rbp-984],                  rax
     mov                  rdx,       qword[rbp-960]
     mov                  rcx,       qword[rbp-984]
     mov         qword[rdx+8],                  rcx
     mov                  rdx,       qword[rbp-960]
     mov                  rcx,        qword[rdx+16]
     mov       qword[rbp-992],                  rcx
     mov                  rdx,       qword[rbp-968]
     mov                  rax,       qword[rbp-992]
     add                  rax,        qword[rdx+16]
     mov       qword[rbp-992],                  rax
     mov                  rdx,       qword[rbp-960]
     mov                  rcx,       qword[rbp-992]
     mov        qword[rdx+16],                  rcx
     mov                  rcx,       qword[rbp-960]
     mov      qword[rbp-1000],                  rcx
	jmp	@main.38.@point.add.2.exit
@main.38.@point.add.2.exit:
     mov                  rcx,      qword[rbp-1000]
     mov      qword[rbp-1008],                  rcx
     mov                  rcx,        qword[rbp-72]
     mov      qword[rbp-1016],                  rcx
     mov                  rcx,        qword[rbp-72]
     mov      qword[rbp-1024],                  rcx
@main.41.@point.add.1.enter:
     mov                  rdx,      qword[rbp-1016]
     mov                  rcx,           qword[rdx]
     mov      qword[rbp-1032],                  rcx
     mov                  rdx,      qword[rbp-1024]
     mov                  rax,      qword[rbp-1032]
     add                  rax,           qword[rdx]
     mov      qword[rbp-1032],                  rax
     mov                  rdx,      qword[rbp-1016]
     mov                  rcx,      qword[rbp-1032]
     mov           qword[rdx],                  rcx
     mov                  rdx,      qword[rbp-1016]
     mov                  rcx,         qword[rdx+8]
     mov      qword[rbp-1040],                  rcx
     mov                  rdx,      qword[rbp-1024]
     mov                  rax,      qword[rbp-1040]
     add                  rax,         qword[rdx+8]
     mov      qword[rbp-1040],                  rax
     mov                  rdx,      qword[rbp-1016]
     mov                  rcx,      qword[rbp-1040]
     mov         qword[rdx+8],                  rcx
     mov                  rdx,      qword[rbp-1016]
     mov                  rcx,        qword[rdx+16]
     mov      qword[rbp-1048],                  rcx
     mov                  rdx,      qword[rbp-1024]
     mov                  rax,      qword[rbp-1048]
     add                  rax,        qword[rdx+16]
     mov      qword[rbp-1048],                  rax
     mov                  rdx,      qword[rbp-1016]
     mov                  rcx,      qword[rbp-1048]
     mov        qword[rdx+16],                  rcx
     mov                  rcx,      qword[rbp-1016]
     mov      qword[rbp-1056],                  rcx
	jmp	@main.40.@point.add.2.exit
@main.40.@point.add.2.exit:
     mov                  rcx,      qword[rbp-1056]
     mov      qword[rbp-1064],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov      qword[rbp-1072],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov      qword[rbp-1080],                  rcx
@main.43.@point.sub.1.enter:
     mov                  rdx,      qword[rbp-1072]
     mov                  rcx,           qword[rdx]
     mov      qword[rbp-1088],                  rcx
     mov                  rdx,      qword[rbp-1080]
     mov                  rax,      qword[rbp-1088]
     sub                  rax,           qword[rdx]
     mov      qword[rbp-1088],                  rax
     mov                  rdx,      qword[rbp-1072]
     mov                  rcx,      qword[rbp-1088]
     mov           qword[rdx],                  rcx
     mov                  rdx,      qword[rbp-1072]
     mov                  rcx,         qword[rdx+8]
     mov      qword[rbp-1096],                  rcx
     mov                  rdx,      qword[rbp-1080]
     mov                  rax,      qword[rbp-1096]
     sub                  rax,         qword[rdx+8]
     mov      qword[rbp-1096],                  rax
     mov                  rdx,      qword[rbp-1072]
     mov                  rcx,      qword[rbp-1096]
     mov         qword[rdx+8],                  rcx
     mov                  rdx,      qword[rbp-1072]
     mov                  rcx,        qword[rdx+16]
     mov      qword[rbp-1104],                  rcx
     mov                  rdx,      qword[rbp-1080]
     mov                  rax,      qword[rbp-1104]
     sub                  rax,        qword[rdx+16]
     mov      qword[rbp-1104],                  rax
     mov                  rdx,      qword[rbp-1072]
     mov                  rcx,      qword[rbp-1104]
     mov        qword[rdx+16],                  rcx
     mov                  rcx,      qword[rbp-1072]
     mov      qword[rbp-1112],                  rcx
	jmp	@main.42.@point.sub.2.exit
@main.42.@point.sub.2.exit:
     mov                  rcx,      qword[rbp-1112]
     mov      qword[rbp-1120],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov      qword[rbp-1128],                  rcx
     mov                  rcx,        qword[rbp-48]
     mov      qword[rbp-1136],                  rcx
@main.45.@point.add.1.enter:
     mov                  rdx,      qword[rbp-1128]
     mov                  rcx,           qword[rdx]
     mov      qword[rbp-1144],                  rcx
     mov                  rdx,      qword[rbp-1136]
     mov                  rax,      qword[rbp-1144]
     add                  rax,           qword[rdx]
     mov      qword[rbp-1144],                  rax
     mov                  rdx,      qword[rbp-1128]
     mov                  rcx,      qword[rbp-1144]
     mov           qword[rdx],                  rcx
     mov                  rdx,      qword[rbp-1128]
     mov                  rcx,         qword[rdx+8]
     mov      qword[rbp-1152],                  rcx
     mov                  rdx,      qword[rbp-1136]
     mov                  rax,      qword[rbp-1152]
     add                  rax,         qword[rdx+8]
     mov      qword[rbp-1152],                  rax
     mov                  rdx,      qword[rbp-1128]
     mov                  rcx,      qword[rbp-1152]
     mov         qword[rdx+8],                  rcx
     mov                  rdx,      qword[rbp-1128]
     mov                  rcx,        qword[rdx+16]
     mov      qword[rbp-1160],                  rcx
     mov                  rdx,      qword[rbp-1136]
     mov                  rax,      qword[rbp-1160]
     add                  rax,        qword[rdx+16]
     mov      qword[rbp-1160],                  rax
     mov                  rdx,      qword[rbp-1128]
     mov                  rcx,      qword[rbp-1160]
     mov        qword[rdx+16],                  rcx
     mov                  rcx,      qword[rbp-1128]
     mov      qword[rbp-1168],                  rcx
	jmp	@main.44.@point.add.2.exit
@main.44.@point.add.2.exit:
     mov                  rcx,      qword[rbp-1168]
     mov      qword[rbp-1176],                  rcx
     mov                  rcx,        qword[rbp-48]
     mov      qword[rbp-1184],                  rcx
     mov                  rcx,        qword[rbp-72]
     mov      qword[rbp-1192],                  rcx
@main.47.@point.sub.1.enter:
     mov                  rdx,      qword[rbp-1184]
     mov                  rcx,           qword[rdx]
     mov      qword[rbp-1200],                  rcx
     mov                  rdx,      qword[rbp-1192]
     mov                  rax,      qword[rbp-1200]
     sub                  rax,           qword[rdx]
     mov      qword[rbp-1200],                  rax
     mov                  rdx,      qword[rbp-1184]
     mov                  rcx,      qword[rbp-1200]
     mov           qword[rdx],                  rcx
     mov                  rdx,      qword[rbp-1184]
     mov                  rcx,         qword[rdx+8]
     mov      qword[rbp-1208],                  rcx
     mov                  rdx,      qword[rbp-1192]
     mov                  rax,      qword[rbp-1208]
     sub                  rax,         qword[rdx+8]
     mov      qword[rbp-1208],                  rax
     mov                  rdx,      qword[rbp-1184]
     mov                  rcx,      qword[rbp-1208]
     mov         qword[rdx+8],                  rcx
     mov                  rdx,      qword[rbp-1184]
     mov                  rcx,        qword[rdx+16]
     mov      qword[rbp-1216],                  rcx
     mov                  rdx,      qword[rbp-1192]
     mov                  rax,      qword[rbp-1216]
     sub                  rax,        qword[rdx+16]
     mov      qword[rbp-1216],                  rax
     mov                  rdx,      qword[rbp-1184]
     mov                  rcx,      qword[rbp-1216]
     mov        qword[rdx+16],                  rcx
     mov                  rcx,      qword[rbp-1184]
     mov      qword[rbp-1224],                  rcx
	jmp	@main.46.@point.sub.2.exit
@main.46.@point.sub.2.exit:
     mov                  rcx,      qword[rbp-1224]
     mov      qword[rbp-1232],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov      qword[rbp-1240],                  rcx
@main.49.@point.sqrLen.1.enter:
     mov                  rdx,      qword[rbp-1240]
     mov                  rcx,           qword[rdx]
     mov      qword[rbp-1248],                  rcx
     mov                  rdx,      qword[rbp-1240]
     mov                  rax,      qword[rbp-1248]
    imul                  rax,           qword[rdx]
     mov      qword[rbp-1248],                  rax
     mov                  rdx,      qword[rbp-1240]
     mov                  rcx,         qword[rdx+8]
     mov      qword[rbp-1256],                  rcx
     mov                  rdx,      qword[rbp-1240]
     mov                  rax,      qword[rbp-1256]
    imul                  rax,         qword[rdx+8]
     mov      qword[rbp-1256],                  rax
     mov                  rcx,      qword[rbp-1248]
     mov      qword[rbp-1264],                  rcx
     mov                  rax,      qword[rbp-1264]
     add                  rax,      qword[rbp-1256]
     mov      qword[rbp-1264],                  rax
     mov                  rdx,      qword[rbp-1240]
     mov                  rcx,        qword[rdx+16]
     mov      qword[rbp-1272],                  rcx
     mov                  rdx,      qword[rbp-1240]
     mov                  rax,      qword[rbp-1272]
    imul                  rax,        qword[rdx+16]
     mov      qword[rbp-1272],                  rax
     mov                  rcx,      qword[rbp-1264]
     mov      qword[rbp-1280],                  rcx
     mov                  rax,      qword[rbp-1280]
     add                  rax,      qword[rbp-1272]
     mov      qword[rbp-1280],                  rax
     mov                  rcx,      qword[rbp-1280]
     mov      qword[rbp-1288],                  rcx
	jmp	@main.48.@point.sqrLen.2.exit
@main.48.@point.sqrLen.2.exit:
     mov                  rcx,      qword[rbp-1288]
     mov      qword[rbp-1296],                  rcx
     mov                  rdi,      qword[rbp-1296]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov      qword[rbp-1312],                  rax
     mov                  rcx,      qword[rbp-1312]
     mov      qword[rbp-1320],                  rcx
     mov                  rdi,      qword[rbp-1320]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rcx,        qword[rbp-48]
     mov      qword[rbp-1336],                  rcx
@main.51.@point.sqrLen.1.enter:
     mov                  rdx,      qword[rbp-1336]
     mov                  rcx,           qword[rdx]
     mov      qword[rbp-1344],                  rcx
     mov                  rdx,      qword[rbp-1336]
     mov                  rax,      qword[rbp-1344]
    imul                  rax,           qword[rdx]
     mov      qword[rbp-1344],                  rax
     mov                  rdx,      qword[rbp-1336]
     mov                  rcx,         qword[rdx+8]
     mov      qword[rbp-1352],                  rcx
     mov                  rdx,      qword[rbp-1336]
     mov                  rax,      qword[rbp-1352]
    imul                  rax,         qword[rdx+8]
     mov      qword[rbp-1352],                  rax
     mov                  rcx,      qword[rbp-1344]
     mov      qword[rbp-1360],                  rcx
     mov                  rax,      qword[rbp-1360]
     add                  rax,      qword[rbp-1352]
     mov      qword[rbp-1360],                  rax
     mov                  rdx,      qword[rbp-1336]
     mov                  rcx,        qword[rdx+16]
     mov      qword[rbp-1368],                  rcx
     mov                  rdx,      qword[rbp-1336]
     mov                  rax,      qword[rbp-1368]
    imul                  rax,        qword[rdx+16]
     mov      qword[rbp-1368],                  rax
     mov                  rcx,      qword[rbp-1360]
     mov      qword[rbp-1376],                  rcx
     mov                  rax,      qword[rbp-1376]
     add                  rax,      qword[rbp-1368]
     mov      qword[rbp-1376],                  rax
     mov                  rcx,      qword[rbp-1376]
     mov      qword[rbp-1384],                  rcx
	jmp	@main.50.@point.sqrLen.2.exit
@main.50.@point.sqrLen.2.exit:
     mov                  rcx,      qword[rbp-1384]
     mov      qword[rbp-1392],                  rcx
     mov                  rdi,      qword[rbp-1392]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov      qword[rbp-1408],                  rax
     mov                  rcx,      qword[rbp-1408]
     mov      qword[rbp-1416],                  rcx
     mov                  rdi,      qword[rbp-1416]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rcx,        qword[rbp-48]
     mov      qword[rbp-1432],                  rcx
     mov                  rcx,        qword[rbp-72]
     mov      qword[rbp-1440],                  rcx
@main.53.@point.sqrDis.1.enter:
     mov                  rdx,      qword[rbp-1432]
     mov                  rcx,           qword[rdx]
     mov      qword[rbp-1448],                  rcx
     mov                  rdx,      qword[rbp-1440]
     mov                  rax,      qword[rbp-1448]
     sub                  rax,           qword[rdx]
     mov      qword[rbp-1448],                  rax
     mov                  rdx,      qword[rbp-1432]
     mov                  rcx,           qword[rdx]
     mov      qword[rbp-1456],                  rcx
     mov                  rdx,      qword[rbp-1440]
     mov                  rax,      qword[rbp-1456]
     sub                  rax,           qword[rdx]
     mov      qword[rbp-1456],                  rax
     mov                  rcx,      qword[rbp-1448]
     mov      qword[rbp-1464],                  rcx
     mov                  rax,      qword[rbp-1464]
    imul                  rax,      qword[rbp-1456]
     mov      qword[rbp-1464],                  rax
     mov                  rdx,      qword[rbp-1432]
     mov                  rcx,         qword[rdx+8]
     mov      qword[rbp-1472],                  rcx
     mov                  rdx,      qword[rbp-1440]
     mov                  rax,      qword[rbp-1472]
     sub                  rax,         qword[rdx+8]
     mov      qword[rbp-1472],                  rax
     mov                  rdx,      qword[rbp-1432]
     mov                  rcx,         qword[rdx+8]
     mov      qword[rbp-1480],                  rcx
     mov                  rdx,      qword[rbp-1440]
     mov                  rax,      qword[rbp-1480]
     sub                  rax,         qword[rdx+8]
     mov      qword[rbp-1480],                  rax
     mov                  rcx,      qword[rbp-1472]
     mov      qword[rbp-1488],                  rcx
     mov                  rax,      qword[rbp-1488]
    imul                  rax,      qword[rbp-1480]
     mov      qword[rbp-1488],                  rax
     mov                  rcx,      qword[rbp-1464]
     mov      qword[rbp-1496],                  rcx
     mov                  rax,      qword[rbp-1496]
     add                  rax,      qword[rbp-1488]
     mov      qword[rbp-1496],                  rax
     mov                  rdx,      qword[rbp-1432]
     mov                  rcx,        qword[rdx+16]
     mov      qword[rbp-1504],                  rcx
     mov                  rdx,      qword[rbp-1440]
     mov                  rax,      qword[rbp-1504]
     sub                  rax,        qword[rdx+16]
     mov      qword[rbp-1504],                  rax
     mov                  rdx,      qword[rbp-1432]
     mov                  rcx,        qword[rdx+16]
     mov      qword[rbp-1512],                  rcx
     mov                  rdx,      qword[rbp-1440]
     mov                  rax,      qword[rbp-1512]
     sub                  rax,        qword[rdx+16]
     mov      qword[rbp-1512],                  rax
     mov                  rcx,      qword[rbp-1504]
     mov      qword[rbp-1520],                  rcx
     mov                  rax,      qword[rbp-1520]
    imul                  rax,      qword[rbp-1512]
     mov      qword[rbp-1520],                  rax
     mov                  rcx,      qword[rbp-1496]
     mov      qword[rbp-1528],                  rcx
     mov                  rax,      qword[rbp-1528]
     add                  rax,      qword[rbp-1520]
     mov      qword[rbp-1528],                  rax
     mov                  rcx,      qword[rbp-1528]
     mov      qword[rbp-1536],                  rcx
	jmp	@main.52.@point.sqrDis.2.exit
@main.52.@point.sqrDis.2.exit:
     mov                  rcx,      qword[rbp-1536]
     mov      qword[rbp-1544],                  rcx
     mov                  rdi,      qword[rbp-1544]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov      qword[rbp-1560],                  rax
     mov                  rcx,      qword[rbp-1560]
     mov      qword[rbp-1568],                  rcx
     mov                  rdi,      qword[rbp-1568]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rcx,        qword[rbp-96]
     mov      qword[rbp-1584],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov      qword[rbp-1592],                  rcx
@main.55.@point.sqrDis.1.enter:
     mov                  rdx,      qword[rbp-1584]
     mov                  rcx,           qword[rdx]
     mov      qword[rbp-1600],                  rcx
     mov                  rdx,      qword[rbp-1592]
     mov                  rax,      qword[rbp-1600]
     sub                  rax,           qword[rdx]
     mov      qword[rbp-1600],                  rax
     mov                  rdx,      qword[rbp-1584]
     mov                  rcx,           qword[rdx]
     mov      qword[rbp-1608],                  rcx
     mov                  rdx,      qword[rbp-1592]
     mov                  rax,      qword[rbp-1608]
     sub                  rax,           qword[rdx]
     mov      qword[rbp-1608],                  rax
     mov                  rcx,      qword[rbp-1600]
     mov      qword[rbp-1616],                  rcx
     mov                  rax,      qword[rbp-1616]
    imul                  rax,      qword[rbp-1608]
     mov      qword[rbp-1616],                  rax
     mov                  rdx,      qword[rbp-1584]
     mov                  rcx,         qword[rdx+8]
     mov      qword[rbp-1624],                  rcx
     mov                  rdx,      qword[rbp-1592]
     mov                  rax,      qword[rbp-1624]
     sub                  rax,         qword[rdx+8]
     mov      qword[rbp-1624],                  rax
     mov                  rdx,      qword[rbp-1584]
     mov                  rcx,         qword[rdx+8]
     mov      qword[rbp-1632],                  rcx
     mov                  rdx,      qword[rbp-1592]
     mov                  rax,      qword[rbp-1632]
     sub                  rax,         qword[rdx+8]
     mov      qword[rbp-1632],                  rax
     mov                  rcx,      qword[rbp-1624]
     mov      qword[rbp-1640],                  rcx
     mov                  rax,      qword[rbp-1640]
    imul                  rax,      qword[rbp-1632]
     mov      qword[rbp-1640],                  rax
     mov                  rcx,      qword[rbp-1616]
     mov      qword[rbp-1648],                  rcx
     mov                  rax,      qword[rbp-1648]
     add                  rax,      qword[rbp-1640]
     mov      qword[rbp-1648],                  rax
     mov                  rdx,      qword[rbp-1584]
     mov                  rcx,        qword[rdx+16]
     mov      qword[rbp-1656],                  rcx
     mov                  rdx,      qword[rbp-1592]
     mov                  rax,      qword[rbp-1656]
     sub                  rax,        qword[rdx+16]
     mov      qword[rbp-1656],                  rax
     mov                  rdx,      qword[rbp-1584]
     mov                  rcx,        qword[rdx+16]
     mov      qword[rbp-1664],                  rcx
     mov                  rdx,      qword[rbp-1592]
     mov                  rax,      qword[rbp-1664]
     sub                  rax,        qword[rdx+16]
     mov      qword[rbp-1664],                  rax
     mov                  rcx,      qword[rbp-1656]
     mov      qword[rbp-1672],                  rcx
     mov                  rax,      qword[rbp-1672]
    imul                  rax,      qword[rbp-1664]
     mov      qword[rbp-1672],                  rax
     mov                  rcx,      qword[rbp-1648]
     mov      qword[rbp-1680],                  rcx
     mov                  rax,      qword[rbp-1680]
     add                  rax,      qword[rbp-1672]
     mov      qword[rbp-1680],                  rax
     mov                  rcx,      qword[rbp-1680]
     mov      qword[rbp-1688],                  rcx
	jmp	@main.54.@point.sqrDis.2.exit
@main.54.@point.sqrDis.2.exit:
     mov                  rcx,      qword[rbp-1688]
     mov      qword[rbp-1696],                  rcx
     mov                  rdi,      qword[rbp-1696]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov      qword[rbp-1712],                  rax
     mov                  rcx,      qword[rbp-1712]
     mov      qword[rbp-1720],                  rcx
     mov                  rdi,      qword[rbp-1720]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rcx,        qword[rbp-72]
     mov      qword[rbp-1736],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov      qword[rbp-1744],                  rcx
@main.57.@point.dot.1.enter:
     mov                  rdx,      qword[rbp-1736]
     mov                  rcx,           qword[rdx]
     mov      qword[rbp-1752],                  rcx
     mov                  rdx,      qword[rbp-1744]
     mov                  rax,      qword[rbp-1752]
    imul                  rax,           qword[rdx]
     mov      qword[rbp-1752],                  rax
     mov                  rdx,      qword[rbp-1736]
     mov                  rcx,         qword[rdx+8]
     mov      qword[rbp-1760],                  rcx
     mov                  rdx,      qword[rbp-1744]
     mov                  rax,      qword[rbp-1760]
    imul                  rax,         qword[rdx+8]
     mov      qword[rbp-1760],                  rax
     mov                  rcx,      qword[rbp-1752]
     mov      qword[rbp-1768],                  rcx
     mov                  rax,      qword[rbp-1768]
     add                  rax,      qword[rbp-1760]
     mov      qword[rbp-1768],                  rax
     mov                  rdx,      qword[rbp-1736]
     mov                  rcx,        qword[rdx+16]
     mov      qword[rbp-1776],                  rcx
     mov                  rdx,      qword[rbp-1744]
     mov                  rax,      qword[rbp-1776]
    imul                  rax,        qword[rdx+16]
     mov      qword[rbp-1776],                  rax
     mov                  rcx,      qword[rbp-1768]
     mov      qword[rbp-1784],                  rcx
     mov                  rax,      qword[rbp-1784]
     add                  rax,      qword[rbp-1776]
     mov      qword[rbp-1784],                  rax
     mov                  rcx,      qword[rbp-1784]
     mov      qword[rbp-1792],                  rcx
	jmp	@main.56.@point.dot.2.exit
@main.56.@point.dot.2.exit:
     mov                  rcx,      qword[rbp-1792]
     mov      qword[rbp-1800],                  rcx
     mov                  rdi,      qword[rbp-1800]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov      qword[rbp-1816],                  rax
     mov                  rcx,      qword[rbp-1816]
     mov      qword[rbp-1824],                  rcx
     mov                  rdi,      qword[rbp-1824]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rcx,        qword[rbp-48]
     mov      qword[rbp-1840],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov      qword[rbp-1848],                  rcx
@main.59.@point.cross.1.enter:
     sub                  rsp,                    8
     mov                  rdi,                   24
    call               malloc
     add                  rsp,                    8
     mov      qword[rbp-1856],                  rax
     mov                  rdi,      qword[rbp-1856]
     sub                  rsp,                    8
call	point.
     add                  rsp,                    8
     mov                  rcx,      qword[rbp-1856]
     mov      qword[rbp-1872],                  rcx
     mov                  rdx,      qword[rbp-1840]
     mov                  rcx,         qword[rdx+8]
     mov      qword[rbp-1880],                  rcx
     mov                  rdx,      qword[rbp-1848]
     mov                  rax,      qword[rbp-1880]
    imul                  rax,        qword[rdx+16]
     mov      qword[rbp-1880],                  rax
     mov                  rdx,      qword[rbp-1840]
     mov                  rcx,        qword[rdx+16]
     mov      qword[rbp-1888],                  rcx
     mov                  rdx,      qword[rbp-1848]
     mov                  rax,      qword[rbp-1888]
    imul                  rax,         qword[rdx+8]
     mov      qword[rbp-1888],                  rax
     mov                  rcx,      qword[rbp-1880]
     mov      qword[rbp-1896],                  rcx
     mov                  rax,      qword[rbp-1896]
     sub                  rax,      qword[rbp-1888]
     mov      qword[rbp-1896],                  rax
     mov                  rdx,      qword[rbp-1840]
     mov                  rcx,        qword[rdx+16]
     mov      qword[rbp-1904],                  rcx
     mov                  rdx,      qword[rbp-1848]
     mov                  rax,      qword[rbp-1904]
    imul                  rax,           qword[rdx]
     mov      qword[rbp-1904],                  rax
     mov                  rdx,      qword[rbp-1840]
     mov                  rcx,           qword[rdx]
     mov      qword[rbp-1912],                  rcx
     mov                  rdx,      qword[rbp-1848]
     mov                  rax,      qword[rbp-1912]
    imul                  rax,        qword[rdx+16]
     mov      qword[rbp-1912],                  rax
     mov                  rcx,      qword[rbp-1904]
     mov      qword[rbp-1920],                  rcx
     mov                  rax,      qword[rbp-1920]
     sub                  rax,      qword[rbp-1912]
     mov      qword[rbp-1920],                  rax
     mov                  rdx,      qword[rbp-1840]
     mov                  rcx,           qword[rdx]
     mov      qword[rbp-1928],                  rcx
     mov                  rdx,      qword[rbp-1848]
     mov                  rax,      qword[rbp-1928]
    imul                  rax,         qword[rdx+8]
     mov      qword[rbp-1928],                  rax
     mov                  rdx,      qword[rbp-1840]
     mov                  rcx,         qword[rdx+8]
     mov      qword[rbp-1936],                  rcx
     mov                  rdx,      qword[rbp-1848]
     mov                  rax,      qword[rbp-1936]
    imul                  rax,           qword[rdx]
     mov      qword[rbp-1936],                  rax
     mov                  rcx,      qword[rbp-1928]
     mov      qword[rbp-1944],                  rcx
     mov                  rax,      qword[rbp-1944]
     sub                  rax,      qword[rbp-1936]
     mov      qword[rbp-1944],                  rax
     mov                  rdi,      qword[rbp-1872]
     mov                  rsi,      qword[rbp-1896]
     mov                  rdx,      qword[rbp-1920]
     mov                  rcx,      qword[rbp-1944]
     sub                  rsp,                    8
call	point.set
     add                  rsp,                    8
     mov                  rcx,      qword[rbp-1872]
     mov      qword[rbp-1984],                  rcx
	jmp	@main.58.@point.cross.2.exit
@main.58.@point.cross.2.exit:
     mov                  rcx,      qword[rbp-1984]
     mov      qword[rbp-1992],                  rcx
     mov                  rcx,      qword[rbp-1992]
     mov      qword[rbp-2000],                  rcx
@main.61.@point.printPoint.1.enter:
     mov                  rdx,      qword[rbp-2000]
     mov                  rdi,           qword[rdx]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov      qword[rbp-2016],                  rax
     mov                  rcx,      qword[rbp-2016]
     mov      qword[rbp-2024],                  rcx
     mov                  rdi,         __const_str0
     mov                  rsi,      qword[rbp-2024]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-2048],                  rax
     mov                  rcx,      qword[rbp-2048]
     mov      qword[rbp-2056],                  rcx
     mov                  rdi,      qword[rbp-2056]
     mov                  rsi,         __const_str1
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-2080],                  rax
     mov                  rcx,      qword[rbp-2080]
     mov      qword[rbp-2088],                  rcx
     mov                  rdx,      qword[rbp-2000]
     mov                  rdi,         qword[rdx+8]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov      qword[rbp-2104],                  rax
     mov                  rcx,      qword[rbp-2104]
     mov      qword[rbp-2112],                  rcx
     mov                  rdi,      qword[rbp-2088]
     mov                  rsi,      qword[rbp-2112]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-2136],                  rax
     mov                  rcx,      qword[rbp-2136]
     mov      qword[rbp-2144],                  rcx
     mov                  rdi,      qword[rbp-2144]
     mov                  rsi,         __const_str1
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-2168],                  rax
     mov                  rcx,      qword[rbp-2168]
     mov      qword[rbp-2176],                  rcx
     mov                  rdx,      qword[rbp-2000]
     mov                  rdi,        qword[rdx+16]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov      qword[rbp-2192],                  rax
     mov                  rcx,      qword[rbp-2192]
     mov      qword[rbp-2200],                  rcx
     mov                  rdi,      qword[rbp-2176]
     mov                  rsi,      qword[rbp-2200]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-2224],                  rax
     mov                  rcx,      qword[rbp-2224]
     mov      qword[rbp-2232],                  rcx
     mov                  rdi,      qword[rbp-2232]
     mov                  rsi,         __const_str2
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-2256],                  rax
     mov                  rcx,      qword[rbp-2256]
     mov      qword[rbp-2264],                  rcx
     mov                  rdi,      qword[rbp-2264]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
@main.60.@point.printPoint.2.exit:
     mov                  rcx,        qword[rbp-24]
     mov      qword[rbp-2280],                  rcx
@main.63.@point.printPoint.1.enter:
     mov                  rdx,      qword[rbp-2280]
     mov                  rdi,           qword[rdx]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov      qword[rbp-2296],                  rax
     mov                  rcx,      qword[rbp-2296]
     mov      qword[rbp-2304],                  rcx
     mov                  rdi,         __const_str0
     mov                  rsi,      qword[rbp-2304]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-2328],                  rax
     mov                  rcx,      qword[rbp-2328]
     mov      qword[rbp-2336],                  rcx
     mov                  rdi,      qword[rbp-2336]
     mov                  rsi,         __const_str1
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-2360],                  rax
     mov                  rcx,      qword[rbp-2360]
     mov      qword[rbp-2368],                  rcx
     mov                  rdx,      qword[rbp-2280]
     mov                  rdi,         qword[rdx+8]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov      qword[rbp-2384],                  rax
     mov                  rcx,      qword[rbp-2384]
     mov      qword[rbp-2392],                  rcx
     mov                  rdi,      qword[rbp-2368]
     mov                  rsi,      qword[rbp-2392]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-2416],                  rax
     mov                  rcx,      qword[rbp-2416]
     mov      qword[rbp-2424],                  rcx
     mov                  rdi,      qword[rbp-2424]
     mov                  rsi,         __const_str1
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-2448],                  rax
     mov                  rcx,      qword[rbp-2448]
     mov      qword[rbp-2456],                  rcx
     mov                  rdx,      qword[rbp-2280]
     mov                  rdi,        qword[rdx+16]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov      qword[rbp-2472],                  rax
     mov                  rcx,      qword[rbp-2472]
     mov      qword[rbp-2480],                  rcx
     mov                  rdi,      qword[rbp-2456]
     mov                  rsi,      qword[rbp-2480]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-2504],                  rax
     mov                  rcx,      qword[rbp-2504]
     mov      qword[rbp-2512],                  rcx
     mov                  rdi,      qword[rbp-2512]
     mov                  rsi,         __const_str2
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-2536],                  rax
     mov                  rcx,      qword[rbp-2536]
     mov      qword[rbp-2544],                  rcx
     mov                  rdi,      qword[rbp-2544]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
@main.62.@point.printPoint.2.exit:
     mov                  rcx,        qword[rbp-48]
     mov      qword[rbp-2560],                  rcx
@main.65.@point.printPoint.1.enter:
     mov                  rdx,      qword[rbp-2560]
     mov                  rdi,           qword[rdx]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov      qword[rbp-2576],                  rax
     mov                  rcx,      qword[rbp-2576]
     mov      qword[rbp-2584],                  rcx
     mov                  rdi,         __const_str0
     mov                  rsi,      qword[rbp-2584]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-2608],                  rax
     mov                  rcx,      qword[rbp-2608]
     mov      qword[rbp-2616],                  rcx
     mov                  rdi,      qword[rbp-2616]
     mov                  rsi,         __const_str1
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-2640],                  rax
     mov                  rcx,      qword[rbp-2640]
     mov      qword[rbp-2648],                  rcx
     mov                  rdx,      qword[rbp-2560]
     mov                  rdi,         qword[rdx+8]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov      qword[rbp-2664],                  rax
     mov                  rcx,      qword[rbp-2664]
     mov      qword[rbp-2672],                  rcx
     mov                  rdi,      qword[rbp-2648]
     mov                  rsi,      qword[rbp-2672]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-2696],                  rax
     mov                  rcx,      qword[rbp-2696]
     mov      qword[rbp-2704],                  rcx
     mov                  rdi,      qword[rbp-2704]
     mov                  rsi,         __const_str1
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-2728],                  rax
     mov                  rcx,      qword[rbp-2728]
     mov      qword[rbp-2736],                  rcx
     mov                  rdx,      qword[rbp-2560]
     mov                  rdi,        qword[rdx+16]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov      qword[rbp-2752],                  rax
     mov                  rcx,      qword[rbp-2752]
     mov      qword[rbp-2760],                  rcx
     mov                  rdi,      qword[rbp-2736]
     mov                  rsi,      qword[rbp-2760]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-2784],                  rax
     mov                  rcx,      qword[rbp-2784]
     mov      qword[rbp-2792],                  rcx
     mov                  rdi,      qword[rbp-2792]
     mov                  rsi,         __const_str2
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-2816],                  rax
     mov                  rcx,      qword[rbp-2816]
     mov      qword[rbp-2824],                  rcx
     mov                  rdi,      qword[rbp-2824]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
@main.64.@point.printPoint.2.exit:
     mov                  rcx,        qword[rbp-72]
     mov      qword[rbp-2840],                  rcx
@main.67.@point.printPoint.1.enter:
     mov                  rdx,      qword[rbp-2840]
     mov                  rdi,           qword[rdx]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov      qword[rbp-2856],                  rax
     mov                  rcx,      qword[rbp-2856]
     mov      qword[rbp-2864],                  rcx
     mov                  rdi,         __const_str0
     mov                  rsi,      qword[rbp-2864]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-2888],                  rax
     mov                  rcx,      qword[rbp-2888]
     mov      qword[rbp-2896],                  rcx
     mov                  rdi,      qword[rbp-2896]
     mov                  rsi,         __const_str1
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-2920],                  rax
     mov                  rcx,      qword[rbp-2920]
     mov      qword[rbp-2928],                  rcx
     mov                  rdx,      qword[rbp-2840]
     mov                  rdi,         qword[rdx+8]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov      qword[rbp-2944],                  rax
     mov                  rcx,      qword[rbp-2944]
     mov      qword[rbp-2952],                  rcx
     mov                  rdi,      qword[rbp-2928]
     mov                  rsi,      qword[rbp-2952]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-2976],                  rax
     mov                  rcx,      qword[rbp-2976]
     mov      qword[rbp-2984],                  rcx
     mov                  rdi,      qword[rbp-2984]
     mov                  rsi,         __const_str1
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-3008],                  rax
     mov                  rcx,      qword[rbp-3008]
     mov      qword[rbp-3016],                  rcx
     mov                  rdx,      qword[rbp-2840]
     mov                  rdi,        qword[rdx+16]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov      qword[rbp-3032],                  rax
     mov                  rcx,      qword[rbp-3032]
     mov      qword[rbp-3040],                  rcx
     mov                  rdi,      qword[rbp-3016]
     mov                  rsi,      qword[rbp-3040]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-3064],                  rax
     mov                  rcx,      qword[rbp-3064]
     mov      qword[rbp-3072],                  rcx
     mov                  rdi,      qword[rbp-3072]
     mov                  rsi,         __const_str2
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-3096],                  rax
     mov                  rcx,      qword[rbp-3096]
     mov      qword[rbp-3104],                  rcx
     mov                  rdi,      qword[rbp-3104]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
@main.66.@point.printPoint.2.exit:
     mov                  rcx,        qword[rbp-96]
     mov      qword[rbp-3120],                  rcx
@main.69.@point.printPoint.1.enter:
     mov                  rdx,      qword[rbp-3120]
     mov                  rdi,           qword[rdx]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov      qword[rbp-3136],                  rax
     mov                  rcx,      qword[rbp-3136]
     mov      qword[rbp-3144],                  rcx
     mov                  rdi,         __const_str0
     mov                  rsi,      qword[rbp-3144]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-3168],                  rax
     mov                  rcx,      qword[rbp-3168]
     mov      qword[rbp-3176],                  rcx
     mov                  rdi,      qword[rbp-3176]
     mov                  rsi,         __const_str1
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-3200],                  rax
     mov                  rcx,      qword[rbp-3200]
     mov      qword[rbp-3208],                  rcx
     mov                  rdx,      qword[rbp-3120]
     mov                  rdi,         qword[rdx+8]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov      qword[rbp-3224],                  rax
     mov                  rcx,      qword[rbp-3224]
     mov      qword[rbp-3232],                  rcx
     mov                  rdi,      qword[rbp-3208]
     mov                  rsi,      qword[rbp-3232]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-3256],                  rax
     mov                  rcx,      qword[rbp-3256]
     mov      qword[rbp-3264],                  rcx
     mov                  rdi,      qword[rbp-3264]
     mov                  rsi,         __const_str1
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-3288],                  rax
     mov                  rcx,      qword[rbp-3288]
     mov      qword[rbp-3296],                  rcx
     mov                  rdx,      qword[rbp-3120]
     mov                  rdi,        qword[rdx+16]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov      qword[rbp-3312],                  rax
     mov                  rcx,      qword[rbp-3312]
     mov      qword[rbp-3320],                  rcx
     mov                  rdi,      qword[rbp-3296]
     mov                  rsi,      qword[rbp-3320]
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-3344],                  rax
     mov                  rcx,      qword[rbp-3344]
     mov      qword[rbp-3352],                  rcx
     mov                  rdi,      qword[rbp-3352]
     mov                  rsi,         __const_str2
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov      qword[rbp-3376],                  rax
     mov                  rcx,      qword[rbp-3376]
     mov      qword[rbp-3384],                  rcx
     mov                  rdi,      qword[rbp-3384]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
@main.68.@point.printPoint.2.exit:
     mov                  rax,                    0
	jmp	@main.2.exit
@main.2.exit:
     add                  rsp,                 3400
     pop                  rbp
     ret
point.set:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   32
@point.set.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                  rsi
     mov        qword[rbp-24],                  rdx
     mov        qword[rbp-32],                  rcx
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,        qword[rbp-16]
     mov           qword[rdx],                  rcx
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,        qword[rbp-24]
     mov         qword[rdx+8],                  rcx
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,        qword[rbp-32]
     mov        qword[rdx+16],                  rcx
@point.set.2.exit:
     add                  rsp,                   32
     pop                  rbp
     ret
point.add:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   48
@point.add.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                  rsi
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,           qword[rdx]
     mov        qword[rbp-24],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rax,        qword[rbp-24]
     add                  rax,           qword[rdx]
     mov        qword[rbp-24],                  rax
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,        qword[rbp-24]
     mov           qword[rdx],                  rcx
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,         qword[rdx+8]
     mov        qword[rbp-32],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rax,        qword[rbp-32]
     add                  rax,         qword[rdx+8]
     mov        qword[rbp-32],                  rax
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,        qword[rbp-32]
     mov         qword[rdx+8],                  rcx
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,        qword[rdx+16]
     mov        qword[rbp-40],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rax,        qword[rbp-40]
     add                  rax,        qword[rdx+16]
     mov        qword[rbp-40],                  rax
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,        qword[rbp-40]
     mov        qword[rdx+16],                  rcx
     mov                  rax,         qword[rbp-8]
	jmp	@point.add.2.exit
@point.add.2.exit:
     add                  rsp,                   48
     pop                  rbp
     ret
point.sub:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   48
@point.sub.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                  rsi
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,           qword[rdx]
     mov        qword[rbp-24],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rax,        qword[rbp-24]
     sub                  rax,           qword[rdx]
     mov        qword[rbp-24],                  rax
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,        qword[rbp-24]
     mov           qword[rdx],                  rcx
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,         qword[rdx+8]
     mov        qword[rbp-32],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rax,        qword[rbp-32]
     sub                  rax,         qword[rdx+8]
     mov        qword[rbp-32],                  rax
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,        qword[rbp-32]
     mov         qword[rdx+8],                  rcx
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,        qword[rdx+16]
     mov        qword[rbp-40],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rax,        qword[rbp-40]
     sub                  rax,        qword[rdx+16]
     mov        qword[rbp-40],                  rax
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,        qword[rbp-40]
     mov        qword[rdx+16],                  rcx
     mov                  rax,         qword[rbp-8]
	jmp	@point.sub.2.exit
@point.sub.2.exit:
     add                  rsp,                   48
     pop                  rbp
     ret


 section                 .bss


 section                .data
      dq                    2
__const_str1:
      db ", ",0
      dq                    1
__const_str0:
      db "(",0
      dq                    1
__const_str2:
      db ")",0






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



