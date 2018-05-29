  global                 main
  extern	malloc


 section                .text
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  128
     mov         qword[rbp-8],                12000
     mov        qword[rbp-16],                12000
     mov                  rax,         qword[rbp-8]
     add                  rax,                    1
     mov         qword[rbp-8],                  rax
     shl         qword[rbp-8],                    3
     mov                  rdi,         qword[rbp-8]
    call               malloc
     mov        qword[rbp-24],                  rax
     mov                  rdx,        qword[rbp-24]
     mov                  rcx,        qword[rbp-16]
     mov           qword[rdx],                  rcx
     mov                  rax,        qword[rbp-24]
     add                  rax,                    8
     mov        qword[rbp-24],                  rax
     mov                  rax,         qword[rbp-8]
     sub                  rax,                    8
     mov         qword[rbp-8],                  rax
     mov                  rcx,        qword[rbp-24]
     mov        qword[@ylist],                  rcx
     mov        qword[rbp-40],                    8
     mov        qword[rbp-48],                    8
     mov                  rax,        qword[rbp-40]
     add                  rax,                    1
     mov        qword[rbp-40],                  rax
     shl        qword[rbp-40],                    3
     sub                  rsp,                    8
     mov                  rdi,        qword[rbp-40]
    call               malloc
     mov        qword[rbp-56],                  rax
     add                  rsp,                    8
     mov                  rdx,        qword[rbp-56]
     mov                  rcx,        qword[rbp-48]
     mov           qword[rdx],                  rcx
     mov                  rax,        qword[rbp-56]
     add                  rax,                    8
     mov        qword[rbp-56],                  rax
     mov                  rax,        qword[rbp-40]
     sub                  rax,                    8
     mov        qword[rbp-40],                  rax
     mov                  rcx,        qword[rbp-56]
     mov           qword[@dx],                  rcx
     mov        qword[rbp-72],                    9
     mov        qword[rbp-80],                    9
     mov                  rax,        qword[rbp-72]
     add                  rax,                    1
     mov        qword[rbp-72],                  rax
     shl        qword[rbp-72],                    3
     mov                  rdi,        qword[rbp-72]
    call               malloc
     mov        qword[rbp-88],                  rax
     mov                  rdx,        qword[rbp-88]
     mov                  rcx,        qword[rbp-80]
     mov           qword[rdx],                  rcx
     mov                  rax,        qword[rbp-88]
     add                  rax,                    8
     mov        qword[rbp-88],                  rax
     mov                  rax,        qword[rbp-72]
     sub                  rax,                    8
     mov        qword[rbp-72],                  rax
     mov                  rcx,        qword[rbp-88]
     mov           qword[@dy],                  rcx
     mov       qword[rbp-104],                12000
     mov       qword[rbp-112],                12000
     mov                  rax,       qword[rbp-104]
     add                  rax,                    1
     mov       qword[rbp-104],                  rax
     shl       qword[rbp-104],                    3
     sub                  rsp,                    8
     mov                  rdi,       qword[rbp-104]
    call               malloc
     mov       qword[rbp-120],                  rax
     add                  rsp,                    8
     mov                  rdx,       qword[rbp-120]
     mov                  rcx,       qword[rbp-112]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-120]
     add                  rax,                    8
     mov       qword[rbp-120],                  rax
     mov                  rax,       qword[rbp-104]
     sub                  rax,                    8
     mov       qword[rbp-104],                  rax
     mov                  rcx,       qword[rbp-120]
     mov        qword[@xlist],                  rcx
     add                  rsp,                  128
     pop                  rbp
     ret
addList:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  304
@addList.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                  rsi
     mov                  rdi,         qword[rbp-8]
    push                  rdi
    push                  rsi
call	check
     pop                  rsi
     pop                  rdi
     mov        qword[rbp-40],                  rax
     cmp        qword[rbp-40],                    0
	je	@addList.7.cmp_and
     mov                  rdi,        qword[rbp-16]
    push                  rdi
    push                  rsi
call	check
     pop                  rsi
     pop                  rdi
     mov        qword[rbp-64],                  rax
     cmp        qword[rbp-64],                    0
@addList.7.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov        qword[rbp-72],                  rax
     cmp        qword[rbp-72],                    0
	je	@addList.8.cmp_and
     mov                  rcx,         qword[@step]
     mov        qword[rbp-80],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-96],                  rcx
     shl        qword[rbp-96],                    3
     mov                  rax,        qword[rbp-80]
     add                  rax,        qword[rbp-96]
     mov        qword[rbp-80],                  rax
     mov                  rdx,        qword[rbp-80]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-104],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-112],                  rcx
     shl       qword[rbp-112],                    3
     mov                  rax,       qword[rbp-104]
     add                  rax,       qword[rbp-112]
     mov       qword[rbp-104],                  rax
     mov                  rdx,       qword[rbp-104]
     cmp           qword[rdx],                   -1
     mov                  rax,                    0
    sete                   al
     mov       qword[rbp-120],                  rax
     cmp       qword[rbp-120],                    0
@addList.8.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-128],                  rax
     mov                  rcx,       qword[rbp-128]
     mov       qword[rbp-136],                  rcx
     cmp       qword[rbp-136],                    1
	je	@addList.5.IfTrue
	jne	@addList.4.IfFalse
@addList.5.IfTrue:
     mov                  rcx,         qword[@tail]
     mov       qword[rbp-144],                  rcx
     add         qword[@tail],                    1
     mov                  rcx,        qword[@xlist]
     mov       qword[rbp-160],                  rcx
     mov                  rcx,         qword[@tail]
     mov       qword[rbp-176],                  rcx
     shl       qword[rbp-176],                    3
     mov                  rax,       qword[rbp-160]
     add                  rax,       qword[rbp-176]
     mov       qword[rbp-160],                  rax
     mov                  rdx,       qword[rbp-160]
     mov                  rcx,         qword[rbp-8]
     mov           qword[rdx],                  rcx
     mov                  rcx,        qword[@ylist]
     mov       qword[rbp-184],                  rcx
     mov                  rcx,         qword[@tail]
     mov       qword[rbp-200],                  rcx
     shl       qword[rbp-200],                    3
     mov                  rax,       qword[rbp-184]
     add                  rax,       qword[rbp-200]
     mov       qword[rbp-184],                  rax
     mov                  rdx,       qword[rbp-184]
     mov                  rcx,        qword[rbp-16]
     mov           qword[rdx],                  rcx
     mov                  rcx,         qword[@step]
     mov       qword[rbp-208],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-216],                  rcx
     shl       qword[rbp-216],                    3
     mov                  rax,       qword[rbp-208]
     add                  rax,       qword[rbp-216]
     mov       qword[rbp-208],                  rax
     mov                  rdx,       qword[rbp-208]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-224],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-232],                  rcx
     shl       qword[rbp-232],                    3
     mov                  rax,       qword[rbp-224]
     add                  rax,       qword[rbp-232]
     mov       qword[rbp-224],                  rax
     mov                  rcx,          qword[@now]
     mov       qword[rbp-240],                  rcx
     mov                  rax,       qword[rbp-240]
     add                  rax,                    1
     mov       qword[rbp-240],                  rax
     mov                  rdx,       qword[rbp-224]
     mov                  rcx,       qword[rbp-240]
     mov           qword[rdx],                  rcx
     mov                  rcx,         qword[rbp-8]
     cmp                  rcx,      qword[@targetx]
     mov                  rax,                    0
    sete                   al
     mov       qword[rbp-264],                  rax
     cmp       qword[rbp-264],                    0
	je	@addList.12.cmp_and
     mov                  rcx,        qword[rbp-16]
     cmp                  rcx,      qword[@targety]
     mov                  rax,                    0
    sete                   al
     mov       qword[rbp-280],                  rax
     cmp       qword[rbp-280],                    0
@addList.12.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-288],                  rax
     mov                  rcx,       qword[rbp-288]
     mov       qword[rbp-296],                  rcx
     cmp       qword[rbp-296],                    1
	je	@addList.10.IfTrue
	jne	@addList.9.IfFalse
@addList.10.IfTrue:
     mov           qword[@ok],                  233
	jmp	@addList.11.IfExit
@addList.9.IfFalse:
@addList.11.IfExit:
	jmp	@addList.6.IfExit
@addList.4.IfFalse:
@addList.6.IfExit:
@addList.2.exit:
     add                  rsp,                  304
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                 1112
@main.1.enter:
     mov         qword[@head],                    0
     mov         qword[@tail],                    0
     mov        qword[rbp-24],                    3
     mov        qword[rbp-32],                    3
     mov                  rax,        qword[rbp-24]
     add                  rax,                    1
     mov        qword[rbp-24],                  rax
     shl        qword[rbp-24],                    3
     mov                  rdi,        qword[rbp-24]
    call               malloc
     mov        qword[rbp-40],                  rax
     mov                  rdx,        qword[rbp-40]
     mov                  rcx,        qword[rbp-32]
     mov           qword[rdx],                  rcx
     mov                  rax,        qword[rbp-40]
     add                  rax,                    8
     mov        qword[rbp-40],                  rax
     mov                  rax,        qword[rbp-24]
     sub                  rax,                    8
     mov        qword[rbp-24],                  rax
     mov                  rcx,        qword[rbp-40]
     mov         qword[@step],                  rcx
     mov                  rcx,         qword[@step]
     mov        qword[rbp-56],                  rcx
     mov        qword[rbp-64],                    3
     mov        qword[rbp-72],                    3
     mov                  rax,        qword[rbp-64]
     add                  rax,                    1
     mov        qword[rbp-64],                  rax
     shl        qword[rbp-64],                    3
     sub                  rsp,                    8
     mov                  rdi,        qword[rbp-64]
    call               malloc
     mov        qword[rbp-80],                  rax
     add                  rsp,                    8
     mov                  rdx,        qword[rbp-80]
     mov                  rcx,        qword[rbp-72]
     mov           qword[rdx],                  rcx
     mov                  rax,        qword[rbp-80]
     add                  rax,                    8
     mov        qword[rbp-80],                  rax
     mov                  rax,        qword[rbp-64]
     sub                  rax,                    8
     mov        qword[rbp-64],                  rax
     mov                  rdx,        qword[rbp-56]
     mov                  rcx,        qword[rbp-80]
     mov           qword[rdx],                  rcx
     mov                  rcx,         qword[@step]
     mov        qword[rbp-88],                  rcx
     mov        qword[rbp-96],                    3
     mov       qword[rbp-104],                    3
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
     mov                  rdx,        qword[rbp-88]
     mov                  rcx,       qword[rbp-112]
     mov         qword[rdx+8],                  rcx
     mov                  rcx,         qword[@step]
     mov       qword[rbp-120],                  rcx
     mov       qword[rbp-128],                    3
     mov       qword[rbp-136],                    3
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
     mov                  rdx,       qword[rbp-120]
     mov                  rcx,       qword[rbp-144]
     mov        qword[rdx+16],                  rcx
     mov            qword[@N],                    3
     mov                  rcx,            qword[@N]
     mov       qword[rbp-160],                  rcx
     mov                  rax,       qword[rbp-160]
     sub                  rax,                    1
     mov       qword[rbp-160],                  rax
     mov                  rcx,       qword[rbp-160]
     mov      qword[@targety],                  rcx
     mov                  rcx,      qword[@targety]
     mov       qword[rbp-176],                  rcx
     mov                  rcx,       qword[rbp-176]
     mov      qword[@targetx],                  rcx
     mov                  rcx,         qword[@step]
     mov       qword[rbp-192],                  rcx
     mov                  rdx,       qword[rbp-192]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-200],                  rcx
     mov                  rcx,         qword[@step]
     mov       qword[rbp-208],                  rcx
     mov                  rdx,       qword[rbp-208]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-216],                  rcx
     mov                  rcx,         qword[@step]
     mov       qword[rbp-224],                  rcx
     mov                  rdx,       qword[rbp-224]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-232],                  rcx
     mov                  rdx,       qword[rbp-232]
     mov        qword[rdx+16],                   -1
     mov                  rdx,       qword[rbp-216]
     mov         qword[rdx+8],                   -1
     mov                  rdx,       qword[rbp-200]
     mov           qword[rdx],                   -1
     mov                  rcx,         qword[@step]
     mov       qword[rbp-240],                  rcx
     mov                  rdx,       qword[rbp-240]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-248],                  rcx
     mov                  rcx,         qword[@step]
     mov       qword[rbp-256],                  rcx
     mov                  rdx,       qword[rbp-256]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-264],                  rcx
     mov                  rcx,         qword[@step]
     mov       qword[rbp-272],                  rcx
     mov                  rdx,       qword[rbp-272]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-280],                  rcx
     mov                  rdx,       qword[rbp-280]
     mov        qword[rdx+16],                   -1
     mov                  rdx,       qword[rbp-264]
     mov         qword[rdx+8],                   -1
     mov                  rdx,       qword[rbp-248]
     mov           qword[rdx],                   -1
     mov                  rcx,         qword[@step]
     mov       qword[rbp-288],                  rcx
     mov                  rdx,       qword[rbp-288]
     mov                  rcx,        qword[rdx+16]
     mov       qword[rbp-296],                  rcx
     mov                  rcx,         qword[@step]
     mov       qword[rbp-304],                  rcx
     mov                  rdx,       qword[rbp-304]
     mov                  rcx,        qword[rdx+16]
     mov       qword[rbp-312],                  rcx
     mov                  rcx,         qword[@step]
     mov       qword[rbp-320],                  rcx
     mov                  rdx,       qword[rbp-320]
     mov                  rcx,        qword[rdx+16]
     mov       qword[rbp-328],                  rcx
     mov                  rdx,       qword[rbp-328]
     mov        qword[rdx+16],                   -1
     mov                  rdx,       qword[rbp-312]
     mov         qword[rdx+8],                   -1
     mov                  rdx,       qword[rbp-296]
     mov           qword[rdx],                   -1
     mov                  rcx,           qword[@dx]
     mov       qword[rbp-336],                  rcx
     mov                  rdx,       qword[rbp-336]
     mov           qword[rdx],                   -2
     mov                  rcx,           qword[@dy]
     mov       qword[rbp-352],                  rcx
     mov                  rdx,       qword[rbp-352]
     mov           qword[rdx],                   -1
     mov                  rcx,           qword[@dx]
     mov       qword[rbp-368],                  rcx
     mov                  rdx,       qword[rbp-368]
     mov         qword[rdx+8],                   -2
     mov                  rcx,           qword[@dy]
     mov       qword[rbp-376],                  rcx
     mov                  rdx,       qword[rbp-376]
     mov         qword[rdx+8],                    1
     mov                  rcx,           qword[@dx]
     mov       qword[rbp-384],                  rcx
     mov                  rdx,       qword[rbp-384]
     mov        qword[rdx+16],                    2
     mov                  rcx,           qword[@dy]
     mov       qword[rbp-392],                  rcx
     mov                  rdx,       qword[rbp-392]
     mov        qword[rdx+16],                   -1
     mov                  rcx,           qword[@dx]
     mov       qword[rbp-400],                  rcx
     mov                  rdx,       qword[rbp-400]
     mov        qword[rdx+24],                    2
     mov                  rcx,           qword[@dy]
     mov       qword[rbp-408],                  rcx
     mov                  rdx,       qword[rbp-408]
     mov        qword[rdx+24],                    1
     mov                  rcx,           qword[@dx]
     mov       qword[rbp-416],                  rcx
     mov                  rdx,       qword[rbp-416]
     mov        qword[rdx+32],                   -1
     mov                  rcx,           qword[@dy]
     mov       qword[rbp-424],                  rcx
     mov                  rdx,       qword[rbp-424]
     mov        qword[rdx+32],                   -2
     mov                  rcx,           qword[@dx]
     mov       qword[rbp-432],                  rcx
     mov                  rdx,       qword[rbp-432]
     mov        qword[rdx+40],                   -1
     mov                  rcx,           qword[@dy]
     mov       qword[rbp-440],                  rcx
     mov                  rdx,       qword[rbp-440]
     mov        qword[rdx+40],                    2
     mov                  rcx,           qword[@dx]
     mov       qword[rbp-448],                  rcx
     mov                  rdx,       qword[rbp-448]
     mov        qword[rdx+48],                    1
     mov                  rcx,           qword[@dy]
     mov       qword[rbp-456],                  rcx
     mov                  rdx,       qword[rbp-456]
     mov        qword[rdx+48],                   -2
     mov                  rcx,           qword[@dx]
     mov       qword[rbp-464],                  rcx
     mov                  rdx,       qword[rbp-464]
     mov        qword[rdx+56],                    1
     mov                  rcx,           qword[@dy]
     mov       qword[rbp-472],                  rcx
     mov                  rdx,       qword[rbp-472]
     mov        qword[rdx+56],                    2
	jmp	@main.6.ForCon
@main.5.ForBody:
     mov                  rcx,        qword[@xlist]
     mov       qword[rbp-480],                  rcx
     mov                  rcx,         qword[@head]
     mov       qword[rbp-496],                  rcx
     shl       qword[rbp-496],                    3
     mov                  rax,       qword[rbp-480]
     add                  rax,       qword[rbp-496]
     mov       qword[rbp-480],                  rax
     mov                  rdx,       qword[rbp-480]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-504],                  rcx
     mov                  rcx,       qword[rbp-504]
     mov            qword[@x],                  rcx
     mov                  rcx,        qword[@ylist]
     mov       qword[rbp-520],                  rcx
     mov                  rcx,         qword[@head]
     mov       qword[rbp-536],                  rcx
     shl       qword[rbp-536],                    3
     mov                  rax,       qword[rbp-520]
     add                  rax,       qword[rbp-536]
     mov       qword[rbp-520],                  rax
     mov                  rdx,       qword[rbp-520]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-544],                  rcx
     mov                  rcx,       qword[rbp-544]
     mov            qword[@y],                  rcx
     mov                  rdi,            qword[@x]
call	toString
     mov       qword[rbp-576],                  rax
     mov                  rdi,       qword[rbp-576]
     mov                  rsi,         __const_str0
call	__string_connect__
     mov       qword[rbp-608],                  rax
     mov                  rdi,            qword[@y]
call	toString
     mov       qword[rbp-632],                  rax
     mov                  rdi,       qword[rbp-608]
     mov                  rsi,       qword[rbp-632]
call	__string_connect__
     mov       qword[rbp-664],                  rax
     mov                  rdi,       qword[rbp-664]
     mov                  rsi,         __const_str0
call	__string_connect__
     mov       qword[rbp-696],                  rax
     mov                  rcx,         qword[@step]
     mov       qword[rbp-704],                  rcx
     mov                  rcx,            qword[@x]
     mov       qword[rbp-712],                  rcx
     shl       qword[rbp-712],                    3
     mov                  rax,       qword[rbp-704]
     add                  rax,       qword[rbp-712]
     mov       qword[rbp-704],                  rax
     mov                  rdx,       qword[rbp-704]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-720],                  rcx
     mov                  rcx,            qword[@y]
     mov       qword[rbp-728],                  rcx
     shl       qword[rbp-728],                    3
     mov                  rax,       qword[rbp-720]
     add                  rax,       qword[rbp-728]
     mov       qword[rbp-720],                  rax
     mov                  rdx,       qword[rbp-720]
     mov                  rdi,           qword[rdx]
call	toString
     mov       qword[rbp-752],                  rax
     mov                  rdi,       qword[rbp-696]
     mov                  rsi,       qword[rbp-752]
call	__string_connect__
     mov       qword[rbp-784],                  rax
     mov                  rdi,       qword[rbp-784]
call	println
     mov                  rcx,         qword[@step]
     mov       qword[rbp-800],                  rcx
     mov                  rcx,            qword[@x]
     mov       qword[rbp-808],                  rcx
     shl       qword[rbp-808],                    3
     mov                  rax,       qword[rbp-800]
     add                  rax,       qword[rbp-808]
     mov       qword[rbp-800],                  rax
     mov                  rdx,       qword[rbp-800]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-816],                  rcx
     mov                  rcx,            qword[@y]
     mov       qword[rbp-824],                  rcx
     shl       qword[rbp-824],                    3
     mov                  rax,       qword[rbp-816]
     add                  rax,       qword[rbp-824]
     mov       qword[rbp-816],                  rax
     mov                  rdx,       qword[rbp-816]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-832],                  rcx
     mov                  rcx,       qword[rbp-832]
     mov          qword[@now],                  rcx
     mov            qword[@j],                    0
	jmp	@main.10.ForCon
@main.9.ForBody:
     mov                  rcx,           qword[@dx]
     mov       qword[rbp-856],                  rcx
     mov                  rcx,            qword[@j]
     mov       qword[rbp-864],                  rcx
     shl       qword[rbp-864],                    3
     mov                  rax,       qword[rbp-856]
     add                  rax,       qword[rbp-864]
     mov       qword[rbp-856],                  rax
     mov                  rcx,            qword[@x]
     mov       qword[rbp-872],                  rcx
     mov                  rdx,       qword[rbp-856]
     mov                  rax,       qword[rbp-872]
     add                  rax,           qword[rdx]
     mov       qword[rbp-872],                  rax
     mov                  rcx,           qword[@dy]
     mov       qword[rbp-880],                  rcx
     mov                  rcx,            qword[@j]
     mov       qword[rbp-888],                  rcx
     shl       qword[rbp-888],                    3
     mov                  rax,       qword[rbp-880]
     add                  rax,       qword[rbp-888]
     mov       qword[rbp-880],                  rax
     mov                  rcx,            qword[@y]
     mov       qword[rbp-896],                  rcx
     mov                  rdx,       qword[rbp-880]
     mov                  rax,       qword[rbp-896]
     add                  rax,           qword[rdx]
     mov       qword[rbp-896],                  rax
     mov                  rdi,       qword[rbp-872]
     mov                  rsi,       qword[rbp-896]
call	addList
	jmp	@main.8.ForIter
@main.8.ForIter:
     mov                  rcx,            qword[@j]
     mov       qword[rbp-920],                  rcx
     mov                  rax,       qword[rbp-920]
     add                  rax,                    1
     mov       qword[rbp-920],                  rax
     mov                  rcx,       qword[rbp-920]
     mov            qword[@j],                  rcx
	jmp	@main.10.ForCon
@main.10.ForCon:
     cmp            qword[@j],                    8
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-928],                  rax
     mov                  rcx,       qword[rbp-928]
     mov       qword[rbp-936],                  rcx
     cmp       qword[rbp-936],                    1
	je	@main.9.ForBody
	jne	@main.11.ForExit
@main.11.ForExit:
     mov                  rdi,         __const_str1
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     cmp           qword[@ok],                  233
     mov                  rax,                    0
    sete                   al
     mov       qword[rbp-960],                  rax
     mov                  rcx,       qword[rbp-960]
     mov       qword[rbp-968],                  rcx
     cmp       qword[rbp-968],                    1
	je	@main.13.IfTrue
	jne	@main.12.IfFalse
@main.13.IfTrue:
     mov                  rdi,         __const_str2
call	println
	jmp	@main.7.ForExit
	jmp	@main.14.IfExit
@main.12.IfFalse:
@main.14.IfExit:
     mov                  rdi,         __const_str3
call	println
     mov                  rcx,         qword[@head]
     mov       qword[rbp-992],                  rcx
     add         qword[@head],                    1
	jmp	@main.4.ForIter
@main.4.ForIter:
	jmp	@main.6.ForCon
@main.6.ForCon:
     mov                  rcx,         qword[@head]
     mov      qword[rbp-1000],                  rcx
     mov                  rcx,      qword[rbp-1000]
     cmp                  rcx,         qword[@tail]
     mov                  rax,                    0
   setle                   al
     mov      qword[rbp-1008],                  rax
     mov                  rcx,      qword[rbp-1008]
     mov      qword[rbp-1016],                  rcx
     cmp      qword[rbp-1016],                    1
	je	@main.5.ForBody
	jne	@main.7.ForExit
@main.7.ForExit:
     cmp           qword[@ok],                    1
     mov                  rax,                    0
    sete                   al
     mov      qword[rbp-1024],                  rax
     mov                  rcx,      qword[rbp-1024]
     mov      qword[rbp-1032],                  rcx
     cmp      qword[rbp-1032],                    1
	je	@main.16.IfTrue
	jne	@main.15.IfFalse
@main.16.IfTrue:
     mov                  rcx,         qword[@step]
     mov      qword[rbp-1040],                  rcx
     mov                  rcx,      qword[@targetx]
     mov      qword[rbp-1048],                  rcx
     shl      qword[rbp-1048],                    3
     mov                  rax,      qword[rbp-1040]
     add                  rax,      qword[rbp-1048]
     mov      qword[rbp-1040],                  rax
     mov                  rdx,      qword[rbp-1040]
     mov                  rcx,           qword[rdx]
     mov      qword[rbp-1056],                  rcx
     mov                  rcx,      qword[@targety]
     mov      qword[rbp-1064],                  rcx
     shl      qword[rbp-1064],                    3
     mov                  rax,      qword[rbp-1056]
     add                  rax,      qword[rbp-1064]
     mov      qword[rbp-1056],                  rax
     mov                  rdx,      qword[rbp-1056]
     mov                  rdi,           qword[rdx]
call	toString
     mov      qword[rbp-1088],                  rax
     mov                  rdi,      qword[rbp-1088]
call	println
	jmp	@main.17.IfExit
@main.15.IfFalse:
     mov                  rdi,         __const_str4
call	print
	jmp	@main.17.IfExit
@main.17.IfExit:
     mov                  rax,                    0
	jmp	@main.2.exit
@main.2.exit:
     add                  rsp,                 1112
     pop                  rbp
     ret
check:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   48
@check.1.enter:
     mov         qword[rbp-8],                  rdi
     mov                  rcx,         qword[rbp-8]
     cmp                  rcx,            qword[@N]
     mov                  rax,                    0
    setl                   al
     mov        qword[rbp-24],                  rax
     cmp        qword[rbp-24],                    0
	je	@check.4.cmp_and
     cmp         qword[rbp-8],                    0
     mov                  rax,                    0
   setge                   al
     mov        qword[rbp-32],                  rax
     cmp        qword[rbp-32],                    0
@check.4.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov        qword[rbp-40],                  rax
     mov                  rax,        qword[rbp-40]
	jmp	@check.2.exit
@check.2.exit:
     add                  rsp,                   48
     pop                  rbp
     ret


 section                 .bss
@tail:
  	resq 		1
@targety:
  	resq 		1
@targetx:
  	resq 		1
@i:
  	resq 		1
@j:
  	resq 		1
@ylist:
  	resq 		1
@N:
  	resq 		1
@head:
  	resq 		1
@dx:
  	resq 		1
@dy:
  	resq 		1
@now:
  	resq 		1
@x:
  	resq 		1
@y:
  	resq 		1
@starty:
  	resq 		1
@step:
  	resq 		1
@startx:
  	resq 		1
@xlist:
  	resq 		1
@ok:
  	resq 		1


 section                .data
      dq                    1
__const_str0:
      db " ",0
      dq                    9
__const_str1:
      db "---------",0
      dq                   11
__const_str3:
      db "aaaaaaaaaaa",0
      dq                   13
__const_str4:
      db "no solution!",10,"",0
      dq                    9
__const_str2:
      db "okokok!!!",0






default rel

extern strcpy
extern memcpy
extern __sprintf_chk
extern __stack_chk_fail
extern __isoc99_scanf
extern puts
extern __printf_chk


SECTION .text   6

print:
        mov     rdx, rdi
        mov     esi, L_035
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
        mov     edi, L_035
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
        mov     edi, L_036


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
        mov     edi, 28
        call    malloc
        lea     rbx, [rax+8H]
        mov     edx, 20
        mov     rbp, rax
        mov     r8, r12
        mov     ecx, L_036
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


__size__:
		mov     rax, qword[rdi - 8H]
		ret


ALIGN   16

__substring__:
        push    r13
        add     rdx, 1
        sub     rdx, rsi
        push    r12
        push    rbp
        push    rbx
        mov     r13, rdi
        lea     rdi, [rdx+9H]
        mov     rbx, rdx
        mov     rbp, rsi
        sub     rsp, 8
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
        lea     eax, [rdx-30H]
        cmp     al, 9
        mov     eax, 0
        ja      L_005
        nop
L_004:  sub     edx, 48
        lea     rax, [rax+rax*4]
        add     rdi, 1
        movsxd  rdx, edx
        lea     rax, [rdx+rax*2]
        movsx   edx, byte [rdi]
        lea     ecx, [rdx-30H]
        cmp     cl, 9
        jbe     L_004

        ret

L_005:

        ret







ALIGN   16

__ord__:
        movsx   rax, byte [rdi+rsi]
        ret







ALIGN   16

__string_equal__:
        xor     eax, eax
        mov     rcx, qword [rsi-8H]
        cmp     qword [rdi-8H], rcx
        jz      L_006

        ret





ALIGN   8
L_006:  movzx   edx, byte [rdi]
        test    dl, dl
        jz      L_009
        movzx   ecx, byte [rsi]
        test    cl, cl
        jz      L_009
        cmp     dl, cl
        jz      L_008
        jmp     L_011





ALIGN   8
L_007:  movzx   edx, byte [rsi]
        test    dl, dl
        jz      L_009
        cmp     al, dl
        jnz     L_010
L_008:  add     rdi, 1
        movzx   eax, byte [rdi]
        add     rsi, 1
        test    al, al
        jnz     L_007
L_009:  mov     eax, 1
        ret





ALIGN   16
L_010:  xor     eax, eax
        ret

L_011:

        ret


        nop





ALIGN   16

__string_not_equal__:
        mov     rcx, qword [rsi-8H]
        cmp     qword [rdi-8H], rcx
        mov     eax, 1
        jz      L_012

        ret





ALIGN   8
L_012:  movzx   edx, byte [rdi]
        test    dl, dl
        jz      L_015
        movzx   ecx, byte [rsi]
        test    cl, cl
        jz      L_015
        cmp     dl, cl
        jz      L_014
        jmp     L_017





ALIGN   8
L_013:  movzx   edx, byte [rsi]
        test    dl, dl
        jz      L_015
        cmp     al, dl
        jnz     L_016
L_014:  add     rdi, 1
        movzx   eax, byte [rdi]
        add     rsi, 1
        test    al, al
        jnz     L_013
L_015:  xor     eax, eax
        ret





ALIGN   8
L_016:  mov     eax, 1
        ret

L_017:

        ret






ALIGN   16

__string_less__:
        movzx   edx, byte [rdi]
        movzx   eax, byte [rsi]
        test    dl, dl
        jz      L_020
        test    al, al
        jz      L_020
        cmp     al, dl
        jg      L_021
        jge     L_019
        jmp     L_022






ALIGN   16
L_018:  test    al, al
        jz      L_020
        cmp     dl, al
        jl      L_021
        mov     rsi, rcx
        jg      L_022
L_019:  add     rdi, 1
        movzx   edx, byte [rdi]
        lea     rcx, [rsi+1H]
        movzx   eax, byte [rsi+1H]
        test    dl, dl
        jnz     L_018
L_020:  test    al, al
        setne   al
        movzx   eax, al
        ret





ALIGN   8
L_021:  mov     eax, 1
        ret






ALIGN   16
L_022:  xor     eax, eax
        ret







ALIGN   16

__string_less_equal__:
        movzx   eax, byte [rdi]
        test    al, al
        jz      L_025
        movzx   edx, byte [rsi]
        test    dl, dl
        jz      L_026
        cmp     dl, al
        jg      L_025
        jge     L_024
        jmp     L_026






ALIGN   16
L_023:  movzx   edx, byte [rsi]
        test    dl, dl
        jz      L_026
        cmp     al, dl
        jl      L_025
        jg      L_026
L_024:  add     rdi, 1
        movzx   eax, byte [rdi]
        add     rsi, 1
        test    al, al
        jnz     L_023
L_025:  mov     eax, 1
        ret





ALIGN   8
L_026:  xor     eax, eax
        ret






ALIGN   8

__string_greater__:
        movzx   eax, byte [rdi]
        test    al, al
        jnz     L_028
        jmp     L_030





ALIGN   8
L_027:  cmp     al, dl
        jl      L_030
        jg      L_029
        add     rdi, 1
        movzx   eax, byte [rdi]
        add     rsi, 1
        test    al, al
        jz      L_030
L_028:  movzx   edx, byte [rsi]
        test    dl, dl
        jnz     L_027
L_029:  mov     eax, 1
        ret





ALIGN   8
L_030:  xor     eax, eax
        ret






ALIGN   8

__string_greater_equal__:
        movzx   eax, byte [rdi]
        test    al, al
        jz      L_033
        movzx   edx, byte [rsi]
        cmp     al, dl
        jg      L_034
        test    dl, dl
        jnz     L_032
        jmp     L_034





ALIGN   8
L_031:  add     rdi, 1
        movzx   eax, byte [rdi]
        add     rsi, 1
        test    al, al
        jz      L_033
        movzx   edx, byte [rsi]
        test    dl, dl
        jz      L_034
        cmp     al, dl
        jg      L_034
L_032:  cmp     al, dl
        jge     L_031
        xor     eax, eax
        ret





ALIGN   8
L_033:  xor     eax, eax
        cmp     byte [rsi], 0
        sete    al
        ret





ALIGN   8
L_034:  mov     eax, 1
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



SECTION .data   


SECTION .bss    


SECTION .rodata.str1.1 

L_035:
        db 25H, 73H, 00H

L_036:
        db 25H, 6CH, 64H, 00H


SECTION .text.unlikely 


SECTION .text.startup 6

