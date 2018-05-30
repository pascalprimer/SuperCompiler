  global                 main
  extern	malloc


 section                .text
restore:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   96
@restore.1.enter:
     mov         qword[rbp-8],                    1
	jmp	@restore.6.ForCon
@restore.5.ForBody:
     mov                  rcx,            qword[@a]
     mov        qword[rbp-16],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-32],                  rcx
     shl        qword[rbp-32],                    3
     mov                  rax,        qword[rbp-16]
     add                  rax,        qword[rbp-32]
     mov        qword[rbp-16],                  rax
     mov                  rcx,          qword[@bak]
     mov        qword[rbp-40],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-56],                  rcx
     shl        qword[rbp-56],                    3
     mov                  rax,        qword[rbp-40]
     add                  rax,        qword[rbp-56]
     mov        qword[rbp-40],                  rax
     mov                  rdx,        qword[rbp-40]
     mov                  rcx,           qword[rdx]
     mov        qword[rbp-64],                  rcx
     mov                  rdx,        qword[rbp-16]
     mov                  rcx,        qword[rbp-64]
     mov           qword[rdx],                  rcx
	jmp	@restore.4.ForIter
@restore.4.ForIter:
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-72],                  rcx
     add         qword[rbp-8],                    1
	jmp	@restore.6.ForCon
@restore.6.ForCon:
     mov                  rcx,         qword[rbp-8]
     cmp                  rcx,            qword[@n]
     mov                  rax,                    0
   setle                   al
     mov        qword[rbp-88],                  rax
     mov                  rcx,        qword[rbp-88]
     mov        qword[rbp-96],                  rcx
     cmp        qword[rbp-96],                    1
	je	@restore.5.ForBody
	jne	@restore.7.ForExit
@restore.7.ForExit:
@restore.2.exit:
     add                  rsp,                   96
     pop                  rbp
     ret
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  168
     mov            qword[@N],               100000
     mov                  rcx,            qword[@N]
     mov        qword[rbp-16],                  rcx
     mov                  rcx,            qword[@N]
     mov        qword[rbp-24],                  rcx
     mov                  rax,        qword[rbp-16]
     add                  rax,                    1
     mov        qword[rbp-16],                  rax
     shl        qword[rbp-16],                    3
     sub                  rsp,                    8
     mov                  rdi,        qword[rbp-16]
    call               malloc
     mov        qword[rbp-32],                  rax
     add                  rsp,                    8
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
     mov            qword[@a],                  rcx
     mov                  rcx,            qword[@N]
     mov        qword[rbp-48],                  rcx
     mov                  rcx,            qword[@N]
     mov        qword[rbp-56],                  rcx
     mov                  rax,        qword[rbp-48]
     add                  rax,                    1
     mov        qword[rbp-48],                  rax
     shl        qword[rbp-48],                    3
     mov                  rdi,        qword[rbp-48]
    call               malloc
     mov        qword[rbp-64],                  rax
     mov                  rdx,        qword[rbp-64]
     mov                  rcx,        qword[rbp-56]
     mov           qword[rdx],                  rcx
     mov                  rax,        qword[rbp-64]
     add                  rax,                    8
     mov        qword[rbp-64],                  rax
     mov                  rax,        qword[rbp-48]
     sub                  rax,                    8
     mov        qword[rbp-48],                  rax
     mov                  rcx,        qword[rbp-64]
     mov          qword[@bak],                  rcx
     mov                  rcx,            qword[@N]
     mov        qword[rbp-80],                  rcx
     mov                  rcx,            qword[@N]
     mov        qword[rbp-88],                  rcx
     mov                  rax,        qword[rbp-80]
     add                  rax,                    1
     mov        qword[rbp-80],                  rax
     shl        qword[rbp-80],                    3
     sub                  rsp,                    8
     mov                  rdi,        qword[rbp-80]
    call               malloc
     mov        qword[rbp-96],                  rax
     add                  rsp,                    8
     mov                  rdx,        qword[rbp-96]
     mov                  rcx,        qword[rbp-88]
     mov           qword[rdx],                  rcx
     mov                  rax,        qword[rbp-96]
     add                  rax,                    8
     mov        qword[rbp-96],                  rax
     mov                  rax,        qword[rbp-80]
     sub                  rax,                    8
     mov        qword[rbp-80],                  rax
     mov                  rcx,        qword[rbp-96]
     mov       qword[@a_left],                  rcx
     mov                  rcx,            qword[@N]
     mov       qword[rbp-112],                  rcx
     mov                  rcx,            qword[@N]
     mov       qword[rbp-120],                  rcx
     mov                  rax,       qword[rbp-112]
     add                  rax,                    1
     mov       qword[rbp-112],                  rax
     shl       qword[rbp-112],                    3
     mov                  rdi,       qword[rbp-112]
    call               malloc
     mov       qword[rbp-128],                  rax
     mov                  rdx,       qword[rbp-128]
     mov                  rcx,       qword[rbp-120]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-128]
     add                  rax,                    8
     mov       qword[rbp-128],                  rax
     mov                  rax,       qword[rbp-112]
     sub                  rax,                    8
     mov       qword[rbp-112],                  rax
     mov                  rcx,       qword[rbp-128]
     mov      qword[@a_right],                  rcx
     mov                  rcx,            qword[@N]
     mov       qword[rbp-144],                  rcx
     mov                  rcx,            qword[@N]
     mov       qword[rbp-152],                  rcx
     mov                  rax,       qword[rbp-144]
     add                  rax,                    1
     mov       qword[rbp-144],                  rax
     shl       qword[rbp-144],                    3
     sub                  rsp,                    8
     mov                  rdi,       qword[rbp-144]
    call               malloc
     mov       qword[rbp-160],                  rax
     add                  rsp,                    8
     mov                  rdx,       qword[rbp-160]
     mov                  rcx,       qword[rbp-152]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-160]
     add                  rax,                    8
     mov       qword[rbp-160],                  rax
     mov                  rax,       qword[rbp-144]
     sub                  rax,                    8
     mov       qword[rbp-144],                  rax
     mov                  rcx,       qword[rbp-160]
     mov         qword[@heap],                  rcx
     add                  rsp,                  168
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                  480
@main.1.enter:
     mov            qword[@n],                10000
     mov        qword[rbp-16],                 1000
     mov        qword[rbp-24],                    1
	jmp	@main.6.ForCon
@main.5.ForBody:
     mov                  rcx,            qword[@a]
     mov        qword[rbp-32],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-48],                  rcx
     shl        qword[rbp-48],                    3
     mov                  rax,        qword[rbp-32]
     add                  rax,        qword[rbp-48]
     mov        qword[rbp-32],                  rax
     mov                  rdx,        qword[rbp-32]
     mov                  rcx,        qword[rbp-24]
     mov           qword[rdx],                  rcx
     mov                  rcx,        qword[rbp-24]
     cmp                  rcx,        qword[rbp-16]
     mov                  rax,                    0
   setle                   al
     mov        qword[rbp-56],                  rax
     mov                  rcx,        qword[rbp-56]
     mov        qword[rbp-64],                  rcx
     cmp        qword[rbp-64],                    1
	je	@main.9.IfTrue
	jne	@main.8.IfFalse
@main.9.IfTrue:
     mov                  rcx,            qword[@a]
     mov        qword[rbp-72],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-80],                  rcx
     shl        qword[rbp-80],                    3
     mov                  rax,        qword[rbp-72]
     add                  rax,        qword[rbp-80]
     mov        qword[rbp-72],                  rax
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-88],                  rcx
     mov                  rax,        qword[rbp-88]
     add                  rax,                    1
     mov        qword[rbp-88],                  rax
     mov                  rcx,        qword[rbp-88]
     mov        qword[rbp-96],                  rcx
     mov                  rax,        qword[rbp-96]
     sub                  rax,        qword[rbp-24]
     mov        qword[rbp-96],                  rax
     mov                  rdx,        qword[rbp-72]
     mov                  rcx,        qword[rbp-96]
     mov           qword[rdx],                  rcx
	jmp	@main.10.IfExit
@main.8.IfFalse:
@main.10.IfExit:
     mov                  rcx,          qword[@bak]
     mov       qword[rbp-104],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-120],                  rcx
     shl       qword[rbp-120],                    3
     mov                  rax,       qword[rbp-104]
     add                  rax,       qword[rbp-120]
     mov       qword[rbp-104],                  rax
     mov                  rcx,            qword[@a]
     mov       qword[rbp-128],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-136],                  rcx
     shl       qword[rbp-136],                    3
     mov                  rax,       qword[rbp-128]
     add                  rax,       qword[rbp-136]
     mov       qword[rbp-128],                  rax
     mov                  rdx,       qword[rbp-128]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-144],                  rcx
     mov                  rdx,       qword[rbp-104]
     mov                  rcx,       qword[rbp-144]
     mov           qword[rdx],                  rcx
	jmp	@main.4.ForIter
@main.4.ForIter:
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-152],                  rcx
     add        qword[rbp-24],                    1
	jmp	@main.6.ForCon
@main.6.ForCon:
     mov                  rcx,        qword[rbp-24]
     cmp                  rcx,            qword[@n]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-160],                  rax
     mov                  rcx,       qword[rbp-160]
     mov       qword[rbp-168],                  rcx
     cmp       qword[rbp-168],                    1
	je	@main.5.ForBody
	jne	@main.7.ForExit
@main.7.ForExit:
     mov                  rcx,            qword[@n]
     mov       qword[rbp-176],                  rcx
     mov                  rax,       qword[rbp-176]
     add                  rax,                    1
     mov       qword[rbp-176],                  rax
     mov                  rdi,                    1
     mov                  rsi,       qword[rbp-176]
     sub                  rsp,                    8
call	quicksort
     add                  rsp,                    8
     mov       qword[rbp-208],                  rax
     mov                  rcx,       qword[rbp-208]
     mov       qword[rbp-216],                  rcx
     sub                  rsp,                    8
call	restore
     add                  rsp,                    8
     sub                  rsp,                    8
call	calc
     add                  rsp,                    8
     mov       qword[rbp-232],                  rax
     mov                  rcx,       qword[rbp-232]
     mov       qword[rbp-240],                  rcx
     sub                  rsp,                    8
call	restore
     add                  rsp,                    8
     mov                  rcx,            qword[@n]
     mov       qword[rbp-248],                  rcx
     mov                  rax,       qword[rbp-248]
     add                  rax,                    1
     mov       qword[rbp-248],                  rax
     mov                  rdi,                    1
     mov                  rsi,       qword[rbp-248]
     sub                  rsp,                    8
call	mergesort
     add                  rsp,                    8
     mov       qword[rbp-280],                  rax
     mov                  rcx,       qword[rbp-280]
     mov       qword[rbp-288],                  rcx
     sub                  rsp,                    8
call	restore
     add                  rsp,                    8
     sub                  rsp,                    8
call	heapsort
     add                  rsp,                    8
     mov       qword[rbp-304],                  rax
     mov                  rcx,       qword[rbp-304]
     mov       qword[rbp-312],                  rcx
     mov                  rdi,       qword[rbp-216]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov       qword[rbp-336],                  rax
     mov                  rdi,       qword[rbp-336]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rdi,       qword[rbp-240]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov       qword[rbp-368],                  rax
     mov                  rdi,       qword[rbp-368]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rdi,       qword[rbp-288]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov       qword[rbp-400],                  rax
     mov                  rdi,       qword[rbp-400]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rdi,       qword[rbp-312]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov       qword[rbp-432],                  rax
     mov                  rdi,       qword[rbp-432]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     sub                  rsp,                    8
     mov                  rdi,                    8
    call               malloc
     mov       qword[rbp-448],                  rax
     add                  rsp,                    8
     mov                  rdi,       qword[rbp-448]
 call	A.
     mov                  rcx,       qword[rbp-448]
     mov       qword[rbp-464],                  rcx
     mov                  rdi,       qword[rbp-464]
call	A.Optimizer
     mov                  rax,                    0
	jmp	@main.2.exit
@main.2.exit:
     add                  rsp,                  480
     pop                  rbp
     ret
calc:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  288
@calc.1.enter:
     mov         qword[rbp-8],                    1
	jmp	@calc.6.ForCon
@calc.5.ForBody:
     mov                  rcx,       qword[@a_left]
     mov        qword[rbp-16],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-32],                  rcx
     shl        qword[rbp-32],                    3
     mov                  rax,        qword[rbp-16]
     add                  rax,        qword[rbp-32]
     mov        qword[rbp-16],                  rax
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-40],                  rcx
     mov                  rax,        qword[rbp-40]
     sub                  rax,                    1
     mov        qword[rbp-40],                  rax
     mov                  rdx,        qword[rbp-16]
     mov                  rcx,        qword[rbp-40]
     mov           qword[rdx],                  rcx
     mov                  rcx,      qword[@a_right]
     mov        qword[rbp-48],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-64],                  rcx
     shl        qword[rbp-64],                    3
     mov                  rax,        qword[rbp-48]
     add                  rax,        qword[rbp-64]
     mov        qword[rbp-48],                  rax
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-72],                  rcx
     mov                  rax,        qword[rbp-72]
     add                  rax,                    1
     mov        qword[rbp-72],                  rax
     mov                  rdx,        qword[rbp-48]
     mov                  rcx,        qword[rbp-72]
     mov           qword[rdx],                  rcx
	jmp	@calc.4.ForIter
@calc.4.ForIter:
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-80],                  rcx
     add         qword[rbp-8],                    1
	jmp	@calc.6.ForCon
@calc.6.ForCon:
     mov                  rcx,         qword[rbp-8]
     cmp                  rcx,            qword[@n]
     mov                  rax,                    0
   setle                   al
     mov        qword[rbp-96],                  rax
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-104],                  rcx
     cmp       qword[rbp-104],                    1
	je	@calc.5.ForBody
	jne	@calc.7.ForExit
@calc.7.ForExit:
     mov       qword[rbp-112],                    0
     mov                  rcx,            qword[@n]
     mov         qword[rbp-8],                  rcx
	jmp	@calc.10.ForCon
@calc.9.ForBody:
     mov                  rcx,            qword[@a]
     mov       qword[rbp-120],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-136],                  rcx
     shl       qword[rbp-136],                    3
     mov                  rax,       qword[rbp-120]
     add                  rax,       qword[rbp-136]
     mov       qword[rbp-120],                  rax
     mov                  rcx,       qword[@a_left]
     mov       qword[rbp-144],                  rcx
     mov                  rdx,       qword[rbp-120]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-152],                  rcx
     shl       qword[rbp-152],                    3
     mov                  rax,       qword[rbp-144]
     add                  rax,       qword[rbp-152]
     mov       qword[rbp-144],                  rax
     mov                  rdx,       qword[rbp-144]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-160],                  rcx
     mov                  rcx,            qword[@a]
     mov       qword[rbp-168],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-176],                  rcx
     shl       qword[rbp-176],                    3
     mov                  rax,       qword[rbp-168]
     add                  rax,       qword[rbp-176]
     mov       qword[rbp-168],                  rax
     mov                  rcx,      qword[@a_right]
     mov       qword[rbp-184],                  rcx
     mov                  rdx,       qword[rbp-168]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-192],                  rcx
     shl       qword[rbp-192],                    3
     mov                  rax,       qword[rbp-184]
     add                  rax,       qword[rbp-192]
     mov       qword[rbp-184],                  rax
     mov                  rdx,       qword[rbp-184]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-200],                  rcx
     mov                  rcx,      qword[@a_right]
     mov       qword[rbp-208],                  rcx
     mov                  rcx,       qword[rbp-160]
     mov       qword[rbp-216],                  rcx
     shl       qword[rbp-216],                    3
     mov                  rax,       qword[rbp-208]
     add                  rax,       qword[rbp-216]
     mov       qword[rbp-208],                  rax
     mov                  rdx,       qword[rbp-208]
     mov                  rcx,       qword[rbp-200]
     mov           qword[rdx],                  rcx
     mov                  rcx,       qword[@a_left]
     mov       qword[rbp-224],                  rcx
     mov                  rcx,       qword[rbp-200]
     mov       qword[rbp-232],                  rcx
     shl       qword[rbp-232],                    3
     mov                  rax,       qword[rbp-224]
     add                  rax,       qword[rbp-232]
     mov       qword[rbp-224],                  rax
     mov                  rdx,       qword[rbp-224]
     mov                  rcx,       qword[rbp-160]
     mov           qword[rdx],                  rcx
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-240],                  rcx
     mov                  rax,       qword[rbp-240]
     add                  rax,       qword[rbp-200]
     mov       qword[rbp-240],                  rax
     mov                  rcx,       qword[rbp-240]
     mov       qword[rbp-248],                  rcx
     mov                  rax,       qword[rbp-248]
     sub                  rax,       qword[rbp-160]
     mov       qword[rbp-248],                  rax
     mov                  rcx,       qword[rbp-248]
     mov       qword[rbp-256],                  rcx
     mov                  rax,       qword[rbp-256]
     sub                  rax,                    2
     mov       qword[rbp-256],                  rax
     mov                  rcx,       qword[rbp-256]
     mov       qword[rbp-112],                  rcx
	jmp	@calc.8.ForIter
@calc.8.ForIter:
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-264],                  rcx
     sub         qword[rbp-8],                    1
	jmp	@calc.10.ForCon
@calc.10.ForCon:
     cmp         qword[rbp-8],                    1
     mov                  rax,                    0
   setge                   al
     mov       qword[rbp-272],                  rax
     mov                  rcx,       qword[rbp-272]
     mov       qword[rbp-280],                  rcx
     cmp       qword[rbp-280],                    1
	je	@calc.9.ForBody
	jne	@calc.11.ForExit
@calc.11.ForExit:
     mov                  rax,       qword[rbp-112]
	jmp	@calc.2.exit
@calc.2.exit:
     add                  rsp,                  288
     pop                  rbp
     ret
quicksort:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  576
@quicksort.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                  rsi
     mov        qword[rbp-24],                    0
     mov                  rcx,            qword[@a]
     mov        qword[rbp-32],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-48],                  rcx
     shl        qword[rbp-48],                    3
     mov                  rax,        qword[rbp-32]
     add                  rax,        qword[rbp-48]
     mov        qword[rbp-32],                  rax
     mov                  rdx,        qword[rbp-32]
     mov                  rcx,           qword[rdx]
     mov        qword[rbp-56],                  rcx
     mov        qword[rbp-64],                    0
     mov        qword[rbp-72],                    0
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-80],                  rcx
     mov                  rax,        qword[rbp-80]
     add                  rax,                    1
     mov        qword[rbp-80],                  rax
     mov                  rcx,        qword[rbp-80]
     mov        qword[rbp-88],                  rcx
	jmp	@quicksort.6.ForCon
@quicksort.5.ForBody:
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-96],                  rcx
     add        qword[rbp-24],                    1
     mov                  rcx,            qword[@a]
     mov       qword[rbp-104],                  rcx
     mov                  rcx,        qword[rbp-88]
     mov       qword[rbp-112],                  rcx
     shl       qword[rbp-112],                    3
     mov                  rax,       qword[rbp-104]
     add                  rax,       qword[rbp-112]
     mov       qword[rbp-104],                  rax
     mov                  rdx,       qword[rbp-104]
     mov                  rcx,           qword[rdx]
     cmp                  rcx,        qword[rbp-56]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-120],                  rax
     mov                  rcx,       qword[rbp-120]
     mov       qword[rbp-128],                  rcx
     cmp       qword[rbp-128],                    1
	je	@quicksort.9.IfTrue
	jne	@quicksort.8.IfFalse
@quicksort.9.IfTrue:
     mov                  rcx,        qword[rbp-64]
     mov       qword[rbp-136],                  rcx
     add        qword[rbp-64],                    1
     mov                  rcx,       qword[@a_left]
     mov       qword[rbp-144],                  rcx
     mov                  rcx,       qword[rbp-136]
     mov       qword[rbp-160],                  rcx
     shl       qword[rbp-160],                    3
     mov                  rax,       qword[rbp-144]
     add                  rax,       qword[rbp-160]
     mov       qword[rbp-144],                  rax
     mov                  rcx,            qword[@a]
     mov       qword[rbp-168],                  rcx
     mov                  rcx,        qword[rbp-88]
     mov       qword[rbp-176],                  rcx
     shl       qword[rbp-176],                    3
     mov                  rax,       qword[rbp-168]
     add                  rax,       qword[rbp-176]
     mov       qword[rbp-168],                  rax
     mov                  rdx,       qword[rbp-168]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-184],                  rcx
     mov                  rdx,       qword[rbp-144]
     mov                  rcx,       qword[rbp-184]
     mov           qword[rdx],                  rcx
	jmp	@quicksort.10.IfExit
@quicksort.8.IfFalse:
     mov                  rcx,        qword[rbp-72]
     mov       qword[rbp-192],                  rcx
     add        qword[rbp-72],                    1
     mov                  rcx,      qword[@a_right]
     mov       qword[rbp-200],                  rcx
     mov                  rcx,       qword[rbp-192]
     mov       qword[rbp-216],                  rcx
     shl       qword[rbp-216],                    3
     mov                  rax,       qword[rbp-200]
     add                  rax,       qword[rbp-216]
     mov       qword[rbp-200],                  rax
     mov                  rcx,            qword[@a]
     mov       qword[rbp-224],                  rcx
     mov                  rcx,        qword[rbp-88]
     mov       qword[rbp-232],                  rcx
     shl       qword[rbp-232],                    3
     mov                  rax,       qword[rbp-224]
     add                  rax,       qword[rbp-232]
     mov       qword[rbp-224],                  rax
     mov                  rdx,       qword[rbp-224]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-240],                  rcx
     mov                  rdx,       qword[rbp-200]
     mov                  rcx,       qword[rbp-240]
     mov           qword[rdx],                  rcx
	jmp	@quicksort.10.IfExit
@quicksort.10.IfExit:
	jmp	@quicksort.4.ForIter
@quicksort.4.ForIter:
     mov                  rcx,        qword[rbp-88]
     mov       qword[rbp-248],                  rcx
     add        qword[rbp-88],                    1
	jmp	@quicksort.6.ForCon
@quicksort.6.ForCon:
     mov                  rcx,        qword[rbp-88]
     cmp                  rcx,        qword[rbp-16]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-256],                  rax
     mov                  rcx,       qword[rbp-256]
     mov       qword[rbp-264],                  rcx
     cmp       qword[rbp-264],                    1
	je	@quicksort.5.ForBody
	jne	@quicksort.7.ForExit
@quicksort.7.ForExit:
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-272],                  rcx
     mov        qword[rbp-88],                    0
	jmp	@quicksort.13.ForCon
@quicksort.12.ForBody:
     mov                  rcx,       qword[rbp-272]
     mov       qword[rbp-280],                  rcx
     add       qword[rbp-272],                    1
     mov                  rcx,            qword[@a]
     mov       qword[rbp-288],                  rcx
     mov                  rcx,       qword[rbp-280]
     mov       qword[rbp-296],                  rcx
     shl       qword[rbp-296],                    3
     mov                  rax,       qword[rbp-288]
     add                  rax,       qword[rbp-296]
     mov       qword[rbp-288],                  rax
     mov                  rcx,       qword[@a_left]
     mov       qword[rbp-304],                  rcx
     mov                  rcx,        qword[rbp-88]
     mov       qword[rbp-312],                  rcx
     shl       qword[rbp-312],                    3
     mov                  rax,       qword[rbp-304]
     add                  rax,       qword[rbp-312]
     mov       qword[rbp-304],                  rax
     mov                  rdx,       qword[rbp-304]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-320],                  rcx
     mov                  rdx,       qword[rbp-288]
     mov                  rcx,       qword[rbp-320]
     mov           qword[rdx],                  rcx
	jmp	@quicksort.11.ForIter
@quicksort.11.ForIter:
     mov                  rcx,        qword[rbp-88]
     mov       qword[rbp-328],                  rcx
     add        qword[rbp-88],                    1
	jmp	@quicksort.13.ForCon
@quicksort.13.ForCon:
     mov                  rcx,        qword[rbp-88]
     cmp                  rcx,        qword[rbp-64]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-336],                  rax
     mov                  rcx,       qword[rbp-336]
     mov       qword[rbp-344],                  rcx
     cmp       qword[rbp-344],                    1
	je	@quicksort.12.ForBody
	jne	@quicksort.14.ForExit
@quicksort.14.ForExit:
     mov                  rcx,       qword[rbp-272]
     mov       qword[rbp-352],                  rcx
     add       qword[rbp-272],                    1
     mov                  rcx,            qword[@a]
     mov       qword[rbp-360],                  rcx
     mov                  rcx,       qword[rbp-352]
     mov       qword[rbp-368],                  rcx
     shl       qword[rbp-368],                    3
     mov                  rax,       qword[rbp-360]
     add                  rax,       qword[rbp-368]
     mov       qword[rbp-360],                  rax
     mov                  rdx,       qword[rbp-360]
     mov                  rcx,        qword[rbp-56]
     mov           qword[rdx],                  rcx
     mov        qword[rbp-88],                    0
	jmp	@quicksort.17.ForCon
@quicksort.16.ForBody:
     mov                  rcx,       qword[rbp-272]
     mov       qword[rbp-376],                  rcx
     add       qword[rbp-272],                    1
     mov                  rcx,            qword[@a]
     mov       qword[rbp-384],                  rcx
     mov                  rcx,       qword[rbp-376]
     mov       qword[rbp-392],                  rcx
     shl       qword[rbp-392],                    3
     mov                  rax,       qword[rbp-384]
     add                  rax,       qword[rbp-392]
     mov       qword[rbp-384],                  rax
     mov                  rcx,      qword[@a_right]
     mov       qword[rbp-400],                  rcx
     mov                  rcx,        qword[rbp-88]
     mov       qword[rbp-408],                  rcx
     shl       qword[rbp-408],                    3
     mov                  rax,       qword[rbp-400]
     add                  rax,       qword[rbp-408]
     mov       qword[rbp-400],                  rax
     mov                  rdx,       qword[rbp-400]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-416],                  rcx
     mov                  rdx,       qword[rbp-384]
     mov                  rcx,       qword[rbp-416]
     mov           qword[rdx],                  rcx
	jmp	@quicksort.15.ForIter
@quicksort.15.ForIter:
     mov                  rcx,        qword[rbp-88]
     mov       qword[rbp-424],                  rcx
     add        qword[rbp-88],                    1
	jmp	@quicksort.17.ForCon
@quicksort.17.ForCon:
     mov                  rcx,        qword[rbp-88]
     cmp                  rcx,        qword[rbp-72]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-432],                  rax
     mov                  rcx,       qword[rbp-432]
     mov       qword[rbp-440],                  rcx
     cmp       qword[rbp-440],                    1
	je	@quicksort.16.ForBody
	jne	@quicksort.18.ForExit
@quicksort.18.ForExit:
     cmp        qword[rbp-64],                    1
     mov                  rax,                    0
    setg                   al
     mov       qword[rbp-448],                  rax
     mov                  rcx,       qword[rbp-448]
     mov       qword[rbp-456],                  rcx
     cmp       qword[rbp-456],                    1
	je	@quicksort.20.IfTrue
	jne	@quicksort.19.IfFalse
@quicksort.20.IfTrue:
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-464],                  rcx
     mov                  rax,       qword[rbp-464]
     add                  rax,        qword[rbp-64]
     mov       qword[rbp-464],                  rax
     mov                  rdi,         qword[rbp-8]
     mov                  rsi,       qword[rbp-464]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	quicksort
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov       qword[rbp-496],                  rax
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-504],                  rcx
     mov                  rax,       qword[rbp-504]
     add                  rax,       qword[rbp-496]
     mov       qword[rbp-504],                  rax
     mov                  rcx,       qword[rbp-504]
     mov        qword[rbp-24],                  rcx
	jmp	@quicksort.21.IfExit
@quicksort.19.IfFalse:
@quicksort.21.IfExit:
     cmp        qword[rbp-72],                    1
     mov                  rax,                    0
    setg                   al
     mov       qword[rbp-512],                  rax
     mov                  rcx,       qword[rbp-512]
     mov       qword[rbp-520],                  rcx
     cmp       qword[rbp-520],                    1
	je	@quicksort.23.IfTrue
	jne	@quicksort.22.IfFalse
@quicksort.23.IfTrue:
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-528],                  rcx
     mov                  rax,       qword[rbp-528]
     sub                  rax,        qword[rbp-72]
     mov       qword[rbp-528],                  rax
     mov                  rdi,       qword[rbp-528]
     mov                  rsi,        qword[rbp-16]
    push                  rdi
    push                  rsi
call	quicksort
     pop                  rsi
     pop                  rdi
     mov       qword[rbp-560],                  rax
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-568],                  rcx
     mov                  rax,       qword[rbp-568]
     add                  rax,       qword[rbp-560]
     mov       qword[rbp-568],                  rax
     mov                  rcx,       qword[rbp-568]
     mov        qword[rbp-24],                  rcx
	jmp	@quicksort.24.IfExit
@quicksort.22.IfFalse:
@quicksort.24.IfExit:
     mov                  rax,        qword[rbp-24]
	jmp	@quicksort.2.exit
@quicksort.2.exit:
     add                  rsp,                  576
     pop                  rbp
     ret
A.:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  392
@A..1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                    2
     mov        qword[rbp-24],                    2
     mov                  rax,        qword[rbp-16]
     add                  rax,                    1
     mov        qword[rbp-16],                  rax
     shl        qword[rbp-16],                    3
    push                  rdi
     sub                  rsp,                    8
     mov                  rdi,        qword[rbp-16]
    call               malloc
     mov        qword[rbp-32],                  rax
     add                  rsp,                    8
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
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-48],                  rcx
     mov                  rax,        qword[rbp-48]
     add                  rax,        qword[rbp-16]
     mov        qword[rbp-48],                  rax
@A..4.Allocate10:
     mov        qword[rbp-56],                    2
     mov        qword[rbp-64],                    2
     mov                  rax,        qword[rbp-56]
     add                  rax,                    1
     mov        qword[rbp-56],                  rax
     shl        qword[rbp-56],                    3
    push                  rdi
     mov                  rdi,        qword[rbp-56]
    call               malloc
     mov        qword[rbp-72],                  rax
     pop                  rdi
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
@A..5.Allocate9:
     mov        qword[rbp-96],                    3
     mov       qword[rbp-104],                    3
     mov                  rax,        qword[rbp-96]
     add                  rax,                    1
     mov        qword[rbp-96],                  rax
     shl        qword[rbp-96],                    3
    push                  rdi
     sub                  rsp,                    8
     mov                  rdi,        qword[rbp-96]
    call               malloc
     mov       qword[rbp-112],                  rax
     add                  rsp,                    8
     pop                  rdi
     mov                  rdx,       qword[rbp-112]
     mov                  rcx,       qword[rbp-104]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-112]
     add                  rax,                    8
     mov       qword[rbp-112],                  rax
     mov                  rax,        qword[rbp-96]
     sub                  rax,                    8
     mov        qword[rbp-96],                  rax
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-120],                  rcx
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-128],                  rcx
     mov                  rax,       qword[rbp-128]
     add                  rax,        qword[rbp-96]
     mov       qword[rbp-128],                  rax
@A..6.Allocate8:
     mov       qword[rbp-136],                    2
     mov       qword[rbp-144],                    2
     mov                  rax,       qword[rbp-136]
     add                  rax,                    1
     mov       qword[rbp-136],                  rax
     shl       qword[rbp-136],                    3
    push                  rdi
     mov                  rdi,       qword[rbp-136]
    call               malloc
     mov       qword[rbp-152],                  rax
     pop                  rdi
     mov                  rdx,       qword[rbp-152]
     mov                  rcx,       qword[rbp-144]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-152]
     add                  rax,                    8
     mov       qword[rbp-152],                  rax
     mov                  rax,       qword[rbp-136]
     sub                  rax,                    8
     mov       qword[rbp-136],                  rax
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-160],                  rcx
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-168],                  rcx
     mov                  rax,       qword[rbp-168]
     add                  rax,       qword[rbp-136]
     mov       qword[rbp-168],                  rax
@A..7.Allocate7:
     mov       qword[rbp-176],                    3
     mov       qword[rbp-184],                    3
     mov                  rax,       qword[rbp-176]
     add                  rax,                    1
     mov       qword[rbp-176],                  rax
     shl       qword[rbp-176],                    3
    push                  rdi
     sub                  rsp,                    8
     mov                  rdi,       qword[rbp-176]
    call               malloc
     mov       qword[rbp-192],                  rax
     add                  rsp,                    8
     pop                  rdi
     mov                  rdx,       qword[rbp-192]
     mov                  rcx,       qword[rbp-184]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-192]
     add                  rax,                    8
     mov       qword[rbp-192],                  rax
     mov                  rax,       qword[rbp-176]
     sub                  rax,                    8
     mov       qword[rbp-176],                  rax
     mov                  rcx,       qword[rbp-192]
     mov       qword[rbp-200],                  rcx
     mov                  rcx,       qword[rbp-192]
     mov       qword[rbp-208],                  rcx
     mov                  rax,       qword[rbp-208]
     add                  rax,       qword[rbp-176]
     mov       qword[rbp-208],                  rax
@A..8.Allocate6:
     mov       qword[rbp-216],                    2
     mov       qword[rbp-224],                    2
     mov                  rax,       qword[rbp-216]
     add                  rax,                    1
     mov       qword[rbp-216],                  rax
     shl       qword[rbp-216],                    3
    push                  rdi
     mov                  rdi,       qword[rbp-216]
    call               malloc
     mov       qword[rbp-232],                  rax
     pop                  rdi
     mov                  rdx,       qword[rbp-232]
     mov                  rcx,       qword[rbp-224]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-232]
     add                  rax,                    8
     mov       qword[rbp-232],                  rax
     mov                  rax,       qword[rbp-216]
     sub                  rax,                    8
     mov       qword[rbp-216],                  rax
     mov                  rcx,       qword[rbp-232]
     mov       qword[rbp-240],                  rcx
     mov                  rcx,       qword[rbp-232]
     mov       qword[rbp-248],                  rcx
     mov                  rax,       qword[rbp-248]
     add                  rax,       qword[rbp-216]
     mov       qword[rbp-248],                  rax
@A..9.Allocate5:
     mov       qword[rbp-256],                    2
     mov       qword[rbp-264],                    2
     mov                  rax,       qword[rbp-256]
     add                  rax,                    1
     mov       qword[rbp-256],                  rax
     shl       qword[rbp-256],                    3
    push                  rdi
     sub                  rsp,                    8
     mov                  rdi,       qword[rbp-256]
    call               malloc
     mov       qword[rbp-272],                  rax
     add                  rsp,                    8
     pop                  rdi
     mov                  rdx,       qword[rbp-272]
     mov                  rcx,       qword[rbp-264]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-272]
     add                  rax,                    8
     mov       qword[rbp-272],                  rax
     mov                  rax,       qword[rbp-256]
     sub                  rax,                    8
     mov       qword[rbp-256],                  rax
     mov                  rcx,       qword[rbp-272]
     mov       qword[rbp-280],                  rcx
     mov                  rcx,       qword[rbp-272]
     mov       qword[rbp-288],                  rcx
     mov                  rax,       qword[rbp-288]
     add                  rax,       qword[rbp-256]
     mov       qword[rbp-288],                  rax
@A..10.Allocate4:
     mov       qword[rbp-296],                    3
     mov       qword[rbp-304],                    3
     mov                  rax,       qword[rbp-296]
     add                  rax,                    1
     mov       qword[rbp-296],                  rax
     shl       qword[rbp-296],                    3
    push                  rdi
     mov                  rdi,       qword[rbp-296]
    call               malloc
     mov       qword[rbp-312],                  rax
     pop                  rdi
     mov                  rdx,       qword[rbp-312]
     mov                  rcx,       qword[rbp-304]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-312]
     add                  rax,                    8
     mov       qword[rbp-312],                  rax
     mov                  rax,       qword[rbp-296]
     sub                  rax,                    8
     mov       qword[rbp-296],                  rax
     mov                  rcx,       qword[rbp-312]
     mov       qword[rbp-320],                  rcx
     mov                  rcx,       qword[rbp-312]
     mov       qword[rbp-328],                  rcx
     mov                  rax,       qword[rbp-328]
     add                  rax,       qword[rbp-296]
     mov       qword[rbp-328],                  rax
@A..11.Allocate3:
     mov       qword[rbp-336],                    2
     mov       qword[rbp-344],                    2
     mov                  rax,       qword[rbp-336]
     add                  rax,                    1
     mov       qword[rbp-336],                  rax
     shl       qword[rbp-336],                    3
    push                  rdi
     sub                  rsp,                    8
     mov                  rdi,       qword[rbp-336]
    call               malloc
     mov       qword[rbp-352],                  rax
     add                  rsp,                    8
     pop                  rdi
     mov                  rdx,       qword[rbp-352]
     mov                  rcx,       qword[rbp-344]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-352]
     add                  rax,                    8
     mov       qword[rbp-352],                  rax
     mov                  rax,       qword[rbp-336]
     sub                  rax,                    8
     mov       qword[rbp-336],                  rax
     mov                  rcx,       qword[rbp-352]
     mov       qword[rbp-360],                  rcx
     mov                  rcx,       qword[rbp-352]
     mov       qword[rbp-368],                  rcx
     mov                  rax,       qword[rbp-368]
     add                  rax,       qword[rbp-336]
     mov       qword[rbp-368],                  rax
@A..12.Allocate2:
     mov       qword[rbp-376],                    2
     mov       qword[rbp-384],                    2
     mov                  rax,       qword[rbp-376]
     add                  rax,                    1
     mov       qword[rbp-376],                  rax
     shl       qword[rbp-376],                    3
    push                  rdi
     mov                  rdi,       qword[rbp-376]
    call               malloc
     mov       qword[rbp-392],                  rax
     pop                  rdi
     mov                  rdx,       qword[rbp-392]
     mov                  rcx,       qword[rbp-384]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-392]
     add                  rax,                    8
     mov       qword[rbp-392],                  rax
     mov                  rax,       qword[rbp-376]
     sub                  rax,                    8
     mov       qword[rbp-376],                  rax
     mov                  rdx,       qword[rbp-360]
     mov                  rcx,       qword[rbp-392]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-360]
     add                  rax,                    8
     mov       qword[rbp-360],                  rax
     mov                  rcx,       qword[rbp-360]
     cmp                  rcx,       qword[rbp-368]
	jl	@A..12.Allocate2
     mov                  rdx,       qword[rbp-320]
     mov                  rcx,       qword[rbp-352]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-320]
     add                  rax,                    8
     mov       qword[rbp-320],                  rax
     mov                  rcx,       qword[rbp-320]
     cmp                  rcx,       qword[rbp-328]
	jl	@A..11.Allocate3
     mov                  rdx,       qword[rbp-280]
     mov                  rcx,       qword[rbp-312]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-280]
     add                  rax,                    8
     mov       qword[rbp-280],                  rax
     mov                  rcx,       qword[rbp-280]
     cmp                  rcx,       qword[rbp-288]
	jl	@A..10.Allocate4
     mov                  rdx,       qword[rbp-240]
     mov                  rcx,       qword[rbp-272]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-240]
     add                  rax,                    8
     mov       qword[rbp-240],                  rax
     mov                  rcx,       qword[rbp-240]
     cmp                  rcx,       qword[rbp-248]
	jl	@A..9.Allocate5
     mov                  rdx,       qword[rbp-200]
     mov                  rcx,       qword[rbp-232]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-200]
     add                  rax,                    8
     mov       qword[rbp-200],                  rax
     mov                  rcx,       qword[rbp-200]
     cmp                  rcx,       qword[rbp-208]
	jl	@A..8.Allocate6
     mov                  rdx,       qword[rbp-160]
     mov                  rcx,       qword[rbp-192]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-160]
     add                  rax,                    8
     mov       qword[rbp-160],                  rax
     mov                  rcx,       qword[rbp-160]
     cmp                  rcx,       qword[rbp-168]
	jl	@A..7.Allocate7
     mov                  rdx,       qword[rbp-120]
     mov                  rcx,       qword[rbp-152]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-120]
     add                  rax,                    8
     mov       qword[rbp-120],                  rax
     mov                  rcx,       qword[rbp-120]
     cmp                  rcx,       qword[rbp-128]
	jl	@A..6.Allocate8
     mov                  rdx,        qword[rbp-80]
     mov                  rcx,       qword[rbp-112]
     mov           qword[rdx],                  rcx
     mov                  rax,        qword[rbp-80]
     add                  rax,                    8
     mov        qword[rbp-80],                  rax
     mov                  rcx,        qword[rbp-80]
     cmp                  rcx,        qword[rbp-88]
	jl	@A..5.Allocate9
     mov                  rdx,        qword[rbp-40]
     mov                  rcx,        qword[rbp-72]
     mov           qword[rdx],                  rcx
     mov                  rax,        qword[rbp-40]
     add                  rax,                    8
     mov        qword[rbp-40],                  rax
     mov                  rcx,        qword[rbp-40]
     cmp                  rcx,        qword[rbp-48]
	jl	@A..4.Allocate10
     mov                  rdx,         qword[rbp-8]
     mov                  rcx,        qword[rbp-32]
     mov           qword[rdx],                  rcx
@A..2.exit:
     add                  rsp,                  392
     pop                  rbp
     ret
mergesort:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  736
@mergesort.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                  rsi
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-24],                  rcx
     mov                  rax,        qword[rbp-24]
     add                  rax,                    1
     mov        qword[rbp-24],                  rax
     mov                  rcx,        qword[rbp-24]
     cmp                  rcx,        qword[rbp-16]
     mov                  rax,                    0
    sete                   al
     mov        qword[rbp-32],                  rax
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-40],                  rcx
     cmp        qword[rbp-40],                    1
	je	@mergesort.5.IfTrue
	jne	@mergesort.4.IfFalse
@mergesort.5.IfTrue:
     mov                  rax,                    0
	jmp	@mergesort.2.exit
	jmp	@mergesort.6.IfExit
@mergesort.4.IfFalse:
@mergesort.6.IfExit:
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-56],                  rcx
     mov                  rax,        qword[rbp-56]
     add                  rax,        qword[rbp-16]
     mov        qword[rbp-56],                  rax
     mov                  rcx,        qword[rbp-56]
     mov        qword[rbp-64],                  rcx
     shr        qword[rbp-64],                    1
     mov                  rcx,        qword[rbp-64]
     mov        qword[rbp-72],                  rcx
     mov        qword[rbp-80],                    0
     mov                  rdi,         qword[rbp-8]
     mov                  rsi,        qword[rbp-72]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	mergesort
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov       qword[rbp-112],                  rax
     mov                  rcx,        qword[rbp-80]
     mov       qword[rbp-120],                  rcx
     mov                  rax,       qword[rbp-120]
     add                  rax,       qword[rbp-112]
     mov       qword[rbp-120],                  rax
     mov                  rcx,       qword[rbp-120]
     mov        qword[rbp-80],                  rcx
     mov                  rdi,        qword[rbp-72]
     mov                  rsi,        qword[rbp-16]
    push                  rdi
    push                  rsi
     sub                  rsp,                    8
call	mergesort
     add                  rsp,                    8
     pop                  rsi
     pop                  rdi
     mov       qword[rbp-152],                  rax
     mov                  rcx,        qword[rbp-80]
     mov       qword[rbp-160],                  rcx
     mov                  rax,       qword[rbp-160]
     add                  rax,       qword[rbp-152]
     mov       qword[rbp-160],                  rax
     mov                  rcx,       qword[rbp-160]
     mov        qword[rbp-80],                  rcx
     mov       qword[rbp-168],                    0
     mov       qword[rbp-176],                    0
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-184],                  rcx
	jmp	@mergesort.9.ForCon
@mergesort.8.ForBody:
     mov                  rcx,       qword[rbp-168]
     mov       qword[rbp-192],                  rcx
     add       qword[rbp-168],                    1
     mov                  rcx,       qword[@a_left]
     mov       qword[rbp-200],                  rcx
     mov                  rcx,       qword[rbp-192]
     mov       qword[rbp-216],                  rcx
     shl       qword[rbp-216],                    3
     mov                  rax,       qword[rbp-200]
     add                  rax,       qword[rbp-216]
     mov       qword[rbp-200],                  rax
     mov                  rcx,            qword[@a]
     mov       qword[rbp-224],                  rcx
     mov                  rcx,       qword[rbp-184]
     mov       qword[rbp-240],                  rcx
     shl       qword[rbp-240],                    3
     mov                  rax,       qword[rbp-224]
     add                  rax,       qword[rbp-240]
     mov       qword[rbp-224],                  rax
     mov                  rdx,       qword[rbp-224]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-248],                  rcx
     mov                  rdx,       qword[rbp-200]
     mov                  rcx,       qword[rbp-248]
     mov           qword[rdx],                  rcx
	jmp	@mergesort.7.ForIter
@mergesort.7.ForIter:
     mov                  rcx,       qword[rbp-184]
     mov       qword[rbp-256],                  rcx
     add       qword[rbp-184],                    1
	jmp	@mergesort.9.ForCon
@mergesort.9.ForCon:
     mov                  rcx,       qword[rbp-184]
     cmp                  rcx,        qword[rbp-72]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-264],                  rax
     mov                  rcx,       qword[rbp-264]
     mov       qword[rbp-272],                  rcx
     cmp       qword[rbp-272],                    1
	je	@mergesort.8.ForBody
	jne	@mergesort.10.ForExit
@mergesort.10.ForExit:
     mov                  rcx,        qword[rbp-72]
     mov       qword[rbp-184],                  rcx
	jmp	@mergesort.13.ForCon
@mergesort.12.ForBody:
     mov                  rcx,       qword[rbp-176]
     mov       qword[rbp-280],                  rcx
     add       qword[rbp-176],                    1
     mov                  rcx,      qword[@a_right]
     mov       qword[rbp-288],                  rcx
     mov                  rcx,       qword[rbp-280]
     mov       qword[rbp-304],                  rcx
     shl       qword[rbp-304],                    3
     mov                  rax,       qword[rbp-288]
     add                  rax,       qword[rbp-304]
     mov       qword[rbp-288],                  rax
     mov                  rcx,            qword[@a]
     mov       qword[rbp-312],                  rcx
     mov                  rcx,       qword[rbp-184]
     mov       qword[rbp-320],                  rcx
     shl       qword[rbp-320],                    3
     mov                  rax,       qword[rbp-312]
     add                  rax,       qword[rbp-320]
     mov       qword[rbp-312],                  rax
     mov                  rdx,       qword[rbp-312]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-328],                  rcx
     mov                  rdx,       qword[rbp-288]
     mov                  rcx,       qword[rbp-328]
     mov           qword[rdx],                  rcx
	jmp	@mergesort.11.ForIter
@mergesort.11.ForIter:
     mov                  rcx,       qword[rbp-184]
     mov       qword[rbp-336],                  rcx
     add       qword[rbp-184],                    1
	jmp	@mergesort.13.ForCon
@mergesort.13.ForCon:
     mov                  rcx,       qword[rbp-184]
     cmp                  rcx,        qword[rbp-16]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-344],                  rax
     mov                  rcx,       qword[rbp-344]
     mov       qword[rbp-352],                  rcx
     cmp       qword[rbp-352],                    1
	je	@mergesort.12.ForBody
	jne	@mergesort.14.ForExit
@mergesort.14.ForExit:
     mov       qword[rbp-360],                    0
     mov       qword[rbp-368],                    0
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-376],                  rcx
	jmp	@mergesort.17.ForCon
@mergesort.16.ForBody:
     mov                  rcx,        qword[rbp-80]
     mov       qword[rbp-384],                  rcx
     add        qword[rbp-80],                    1
     mov                  rcx,       qword[@a_left]
     mov       qword[rbp-392],                  rcx
     mov                  rcx,       qword[rbp-360]
     mov       qword[rbp-400],                  rcx
     shl       qword[rbp-400],                    3
     mov                  rax,       qword[rbp-392]
     add                  rax,       qword[rbp-400]
     mov       qword[rbp-392],                  rax
     mov                  rcx,      qword[@a_right]
     mov       qword[rbp-408],                  rcx
     mov                  rcx,       qword[rbp-368]
     mov       qword[rbp-416],                  rcx
     shl       qword[rbp-416],                    3
     mov                  rax,       qword[rbp-408]
     add                  rax,       qword[rbp-416]
     mov       qword[rbp-408],                  rax
     mov                  rdx,       qword[rbp-392]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-424],                  rcx
     mov                  rdx,       qword[rbp-408]
     mov                  rcx,       qword[rbp-424]
     cmp                  rcx,           qword[rdx]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-432],                  rax
     mov                  rcx,       qword[rbp-432]
     mov       qword[rbp-440],                  rcx
     cmp       qword[rbp-440],                    1
	je	@mergesort.20.IfTrue
	jne	@mergesort.19.IfFalse
@mergesort.20.IfTrue:
     mov                  rcx,       qword[rbp-376]
     mov       qword[rbp-448],                  rcx
     add       qword[rbp-376],                    1
     mov                  rcx,            qword[@a]
     mov       qword[rbp-456],                  rcx
     mov                  rcx,       qword[rbp-448]
     mov       qword[rbp-464],                  rcx
     shl       qword[rbp-464],                    3
     mov                  rax,       qword[rbp-456]
     add                  rax,       qword[rbp-464]
     mov       qword[rbp-456],                  rax
     mov                  rcx,       qword[rbp-360]
     mov       qword[rbp-472],                  rcx
     add       qword[rbp-360],                    1
     mov                  rcx,       qword[@a_left]
     mov       qword[rbp-480],                  rcx
     mov                  rcx,       qword[rbp-472]
     mov       qword[rbp-488],                  rcx
     shl       qword[rbp-488],                    3
     mov                  rax,       qword[rbp-480]
     add                  rax,       qword[rbp-488]
     mov       qword[rbp-480],                  rax
     mov                  rdx,       qword[rbp-480]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-496],                  rcx
     mov                  rdx,       qword[rbp-456]
     mov                  rcx,       qword[rbp-496]
     mov           qword[rdx],                  rcx
	jmp	@mergesort.21.IfExit
@mergesort.19.IfFalse:
     mov                  rcx,       qword[rbp-376]
     mov       qword[rbp-504],                  rcx
     add       qword[rbp-376],                    1
     mov                  rcx,            qword[@a]
     mov       qword[rbp-512],                  rcx
     mov                  rcx,       qword[rbp-504]
     mov       qword[rbp-520],                  rcx
     shl       qword[rbp-520],                    3
     mov                  rax,       qword[rbp-512]
     add                  rax,       qword[rbp-520]
     mov       qword[rbp-512],                  rax
     mov                  rcx,       qword[rbp-368]
     mov       qword[rbp-528],                  rcx
     add       qword[rbp-368],                    1
     mov                  rcx,      qword[@a_right]
     mov       qword[rbp-536],                  rcx
     mov                  rcx,       qword[rbp-528]
     mov       qword[rbp-544],                  rcx
     shl       qword[rbp-544],                    3
     mov                  rax,       qword[rbp-536]
     add                  rax,       qword[rbp-544]
     mov       qword[rbp-536],                  rax
     mov                  rdx,       qword[rbp-536]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-552],                  rcx
     mov                  rdx,       qword[rbp-512]
     mov                  rcx,       qword[rbp-552]
     mov           qword[rdx],                  rcx
	jmp	@mergesort.21.IfExit
@mergesort.21.IfExit:
	jmp	@mergesort.15.ForIter
@mergesort.15.ForIter:
	jmp	@mergesort.17.ForCon
@mergesort.17.ForCon:
     mov                  rcx,       qword[rbp-360]
     cmp                  rcx,       qword[rbp-168]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-560],                  rax
     cmp       qword[rbp-560],                    0
	je	@mergesort.22.cmp_and
     mov                  rcx,       qword[rbp-368]
     cmp                  rcx,       qword[rbp-176]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-568],                  rax
     cmp       qword[rbp-568],                    0
@mergesort.22.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-576],                  rax
     mov                  rcx,       qword[rbp-576]
     mov       qword[rbp-584],                  rcx
     cmp       qword[rbp-584],                    1
	je	@mergesort.16.ForBody
	jne	@mergesort.18.ForExit
@mergesort.18.ForExit:
	jmp	@mergesort.25.ForCon
@mergesort.24.ForBody:
     mov                  rcx,       qword[rbp-376]
     mov       qword[rbp-592],                  rcx
     add       qword[rbp-376],                    1
     mov                  rcx,            qword[@a]
     mov       qword[rbp-600],                  rcx
     mov                  rcx,       qword[rbp-592]
     mov       qword[rbp-608],                  rcx
     shl       qword[rbp-608],                    3
     mov                  rax,       qword[rbp-600]
     add                  rax,       qword[rbp-608]
     mov       qword[rbp-600],                  rax
     mov                  rcx,       qword[rbp-360]
     mov       qword[rbp-616],                  rcx
     add       qword[rbp-360],                    1
     mov                  rcx,       qword[@a_left]
     mov       qword[rbp-624],                  rcx
     mov                  rcx,       qword[rbp-616]
     mov       qword[rbp-632],                  rcx
     shl       qword[rbp-632],                    3
     mov                  rax,       qword[rbp-624]
     add                  rax,       qword[rbp-632]
     mov       qword[rbp-624],                  rax
     mov                  rdx,       qword[rbp-624]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-640],                  rcx
     mov                  rdx,       qword[rbp-600]
     mov                  rcx,       qword[rbp-640]
     mov           qword[rdx],                  rcx
	jmp	@mergesort.23.ForIter
@mergesort.23.ForIter:
	jmp	@mergesort.25.ForCon
@mergesort.25.ForCon:
     mov                  rcx,       qword[rbp-360]
     cmp                  rcx,       qword[rbp-168]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-648],                  rax
     mov                  rcx,       qword[rbp-648]
     mov       qword[rbp-656],                  rcx
     cmp       qword[rbp-656],                    1
	je	@mergesort.24.ForBody
	jne	@mergesort.26.ForExit
@mergesort.26.ForExit:
	jmp	@mergesort.29.ForCon
@mergesort.28.ForBody:
     mov                  rcx,       qword[rbp-376]
     mov       qword[rbp-664],                  rcx
     add       qword[rbp-376],                    1
     mov                  rcx,            qword[@a]
     mov       qword[rbp-672],                  rcx
     mov                  rcx,       qword[rbp-664]
     mov       qword[rbp-680],                  rcx
     shl       qword[rbp-680],                    3
     mov                  rax,       qword[rbp-672]
     add                  rax,       qword[rbp-680]
     mov       qword[rbp-672],                  rax
     mov                  rcx,       qword[rbp-368]
     mov       qword[rbp-688],                  rcx
     add       qword[rbp-368],                    1
     mov                  rcx,      qword[@a_right]
     mov       qword[rbp-696],                  rcx
     mov                  rcx,       qword[rbp-688]
     mov       qword[rbp-704],                  rcx
     shl       qword[rbp-704],                    3
     mov                  rax,       qword[rbp-696]
     add                  rax,       qword[rbp-704]
     mov       qword[rbp-696],                  rax
     mov                  rdx,       qword[rbp-696]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-712],                  rcx
     mov                  rdx,       qword[rbp-672]
     mov                  rcx,       qword[rbp-712]
     mov           qword[rdx],                  rcx
	jmp	@mergesort.27.ForIter
@mergesort.27.ForIter:
	jmp	@mergesort.29.ForCon
@mergesort.29.ForCon:
     mov                  rcx,       qword[rbp-368]
     cmp                  rcx,       qword[rbp-176]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-720],                  rax
     mov                  rcx,       qword[rbp-720]
     mov       qword[rbp-728],                  rcx
     cmp       qword[rbp-728],                    1
	je	@mergesort.28.ForBody
	jne	@mergesort.30.ForExit
@mergesort.30.ForExit:
     mov                  rax,        qword[rbp-80]
	jmp	@mergesort.2.exit
@mergesort.2.exit:
     add                  rsp,                  736
     pop                  rbp
     ret
A.Optimizer:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  736
@A.Optimizer.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                    2
     mov        qword[rbp-24],                    2
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
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-48],                  rcx
     mov                  rax,        qword[rbp-48]
     add                  rax,        qword[rbp-16]
     mov        qword[rbp-48],                  rax
@A.Optimizer.4.Allocate10:
     mov        qword[rbp-56],                    2
     mov        qword[rbp-64],                    2
     mov                  rax,        qword[rbp-56]
     add                  rax,                    1
     mov        qword[rbp-56],                  rax
     shl        qword[rbp-56],                    3
    push                  rdi
     sub                  rsp,                    8
     mov                  rdi,        qword[rbp-56]
    call               malloc
     mov        qword[rbp-72],                  rax
     add                  rsp,                    8
     pop                  rdi
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
@A.Optimizer.5.Allocate9:
     mov        qword[rbp-96],                    2
     mov       qword[rbp-104],                    2
     mov                  rax,        qword[rbp-96]
     add                  rax,                    1
     mov        qword[rbp-96],                  rax
     shl        qword[rbp-96],                    3
    push                  rdi
     mov                  rdi,        qword[rbp-96]
    call               malloc
     mov       qword[rbp-112],                  rax
     pop                  rdi
     mov                  rdx,       qword[rbp-112]
     mov                  rcx,       qword[rbp-104]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-112]
     add                  rax,                    8
     mov       qword[rbp-112],                  rax
     mov                  rax,        qword[rbp-96]
     sub                  rax,                    8
     mov        qword[rbp-96],                  rax
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-120],                  rcx
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-128],                  rcx
     mov                  rax,       qword[rbp-128]
     add                  rax,        qword[rbp-96]
     mov       qword[rbp-128],                  rax
@A.Optimizer.6.Allocate8:
     mov       qword[rbp-136],                    2
     mov       qword[rbp-144],                    2
     mov                  rax,       qword[rbp-136]
     add                  rax,                    1
     mov       qword[rbp-136],                  rax
     shl       qword[rbp-136],                    3
    push                  rdi
     sub                  rsp,                    8
     mov                  rdi,       qword[rbp-136]
    call               malloc
     mov       qword[rbp-152],                  rax
     add                  rsp,                    8
     pop                  rdi
     mov                  rdx,       qword[rbp-152]
     mov                  rcx,       qword[rbp-144]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-152]
     add                  rax,                    8
     mov       qword[rbp-152],                  rax
     mov                  rax,       qword[rbp-136]
     sub                  rax,                    8
     mov       qword[rbp-136],                  rax
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-160],                  rcx
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-168],                  rcx
     mov                  rax,       qword[rbp-168]
     add                  rax,       qword[rbp-136]
     mov       qword[rbp-168],                  rax
@A.Optimizer.7.Allocate7:
     mov       qword[rbp-176],                    2
     mov       qword[rbp-184],                    2
     mov                  rax,       qword[rbp-176]
     add                  rax,                    1
     mov       qword[rbp-176],                  rax
     shl       qword[rbp-176],                    3
    push                  rdi
     mov                  rdi,       qword[rbp-176]
    call               malloc
     mov       qword[rbp-192],                  rax
     pop                  rdi
     mov                  rdx,       qword[rbp-192]
     mov                  rcx,       qword[rbp-184]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-192]
     add                  rax,                    8
     mov       qword[rbp-192],                  rax
     mov                  rax,       qword[rbp-176]
     sub                  rax,                    8
     mov       qword[rbp-176],                  rax
     mov                  rcx,       qword[rbp-192]
     mov       qword[rbp-200],                  rcx
     mov                  rcx,       qword[rbp-192]
     mov       qword[rbp-208],                  rcx
     mov                  rax,       qword[rbp-208]
     add                  rax,       qword[rbp-176]
     mov       qword[rbp-208],                  rax
@A.Optimizer.8.Allocate6:
     mov       qword[rbp-216],                    2
     mov       qword[rbp-224],                    2
     mov                  rax,       qword[rbp-216]
     add                  rax,                    1
     mov       qword[rbp-216],                  rax
     shl       qword[rbp-216],                    3
    push                  rdi
     sub                  rsp,                    8
     mov                  rdi,       qword[rbp-216]
    call               malloc
     mov       qword[rbp-232],                  rax
     add                  rsp,                    8
     pop                  rdi
     mov                  rdx,       qword[rbp-232]
     mov                  rcx,       qword[rbp-224]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-232]
     add                  rax,                    8
     mov       qword[rbp-232],                  rax
     mov                  rax,       qword[rbp-216]
     sub                  rax,                    8
     mov       qword[rbp-216],                  rax
     mov                  rcx,       qword[rbp-232]
     mov       qword[rbp-240],                  rcx
     mov                  rcx,       qword[rbp-232]
     mov       qword[rbp-248],                  rcx
     mov                  rax,       qword[rbp-248]
     add                  rax,       qword[rbp-216]
     mov       qword[rbp-248],                  rax
@A.Optimizer.9.Allocate5:
     mov       qword[rbp-256],                    2
     mov       qword[rbp-264],                    2
     mov                  rax,       qword[rbp-256]
     add                  rax,                    1
     mov       qword[rbp-256],                  rax
     shl       qword[rbp-256],                    3
    push                  rdi
     mov                  rdi,       qword[rbp-256]
    call               malloc
     mov       qword[rbp-272],                  rax
     pop                  rdi
     mov                  rdx,       qword[rbp-272]
     mov                  rcx,       qword[rbp-264]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-272]
     add                  rax,                    8
     mov       qword[rbp-272],                  rax
     mov                  rax,       qword[rbp-256]
     sub                  rax,                    8
     mov       qword[rbp-256],                  rax
     mov                  rcx,       qword[rbp-272]
     mov       qword[rbp-280],                  rcx
     mov                  rcx,       qword[rbp-272]
     mov       qword[rbp-288],                  rcx
     mov                  rax,       qword[rbp-288]
     add                  rax,       qword[rbp-256]
     mov       qword[rbp-288],                  rax
@A.Optimizer.10.Allocate4:
     mov       qword[rbp-296],                    2
     mov       qword[rbp-304],                    2
     mov                  rax,       qword[rbp-296]
     add                  rax,                    1
     mov       qword[rbp-296],                  rax
     shl       qword[rbp-296],                    3
    push                  rdi
     sub                  rsp,                    8
     mov                  rdi,       qword[rbp-296]
    call               malloc
     mov       qword[rbp-312],                  rax
     add                  rsp,                    8
     pop                  rdi
     mov                  rdx,       qword[rbp-312]
     mov                  rcx,       qword[rbp-304]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-312]
     add                  rax,                    8
     mov       qword[rbp-312],                  rax
     mov                  rax,       qword[rbp-296]
     sub                  rax,                    8
     mov       qword[rbp-296],                  rax
     mov                  rcx,       qword[rbp-312]
     mov       qword[rbp-320],                  rcx
     mov                  rcx,       qword[rbp-312]
     mov       qword[rbp-328],                  rcx
     mov                  rax,       qword[rbp-328]
     add                  rax,       qword[rbp-296]
     mov       qword[rbp-328],                  rax
@A.Optimizer.11.Allocate3:
     mov       qword[rbp-336],                    2
     mov       qword[rbp-344],                    2
     mov                  rax,       qword[rbp-336]
     add                  rax,                    1
     mov       qword[rbp-336],                  rax
     shl       qword[rbp-336],                    3
    push                  rdi
     mov                  rdi,       qword[rbp-336]
    call               malloc
     mov       qword[rbp-352],                  rax
     pop                  rdi
     mov                  rdx,       qword[rbp-352]
     mov                  rcx,       qword[rbp-344]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-352]
     add                  rax,                    8
     mov       qword[rbp-352],                  rax
     mov                  rax,       qword[rbp-336]
     sub                  rax,                    8
     mov       qword[rbp-336],                  rax
     mov                  rcx,       qword[rbp-352]
     mov       qword[rbp-360],                  rcx
     mov                  rcx,       qword[rbp-352]
     mov       qword[rbp-368],                  rcx
     mov                  rax,       qword[rbp-368]
     add                  rax,       qword[rbp-336]
     mov       qword[rbp-368],                  rax
@A.Optimizer.12.Allocate2:
     mov       qword[rbp-376],                    2
     mov       qword[rbp-384],                    2
     mov                  rax,       qword[rbp-376]
     add                  rax,                    1
     mov       qword[rbp-376],                  rax
     shl       qword[rbp-376],                    3
    push                  rdi
     sub                  rsp,                    8
     mov                  rdi,       qword[rbp-376]
    call               malloc
     mov       qword[rbp-392],                  rax
     add                  rsp,                    8
     pop                  rdi
     mov                  rdx,       qword[rbp-392]
     mov                  rcx,       qword[rbp-384]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-392]
     add                  rax,                    8
     mov       qword[rbp-392],                  rax
     mov                  rax,       qword[rbp-376]
     sub                  rax,                    8
     mov       qword[rbp-376],                  rax
     mov                  rdx,       qword[rbp-360]
     mov                  rcx,       qword[rbp-392]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-360]
     add                  rax,                    8
     mov       qword[rbp-360],                  rax
     mov                  rcx,       qword[rbp-360]
     cmp                  rcx,       qword[rbp-368]
	jl	@A.Optimizer.12.Allocate2
     mov                  rdx,       qword[rbp-320]
     mov                  rcx,       qword[rbp-352]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-320]
     add                  rax,                    8
     mov       qword[rbp-320],                  rax
     mov                  rcx,       qword[rbp-320]
     cmp                  rcx,       qword[rbp-328]
	jl	@A.Optimizer.11.Allocate3
     mov                  rdx,       qword[rbp-280]
     mov                  rcx,       qword[rbp-312]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-280]
     add                  rax,                    8
     mov       qword[rbp-280],                  rax
     mov                  rcx,       qword[rbp-280]
     cmp                  rcx,       qword[rbp-288]
	jl	@A.Optimizer.10.Allocate4
     mov                  rdx,       qword[rbp-240]
     mov                  rcx,       qword[rbp-272]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-240]
     add                  rax,                    8
     mov       qword[rbp-240],                  rax
     mov                  rcx,       qword[rbp-240]
     cmp                  rcx,       qword[rbp-248]
	jl	@A.Optimizer.9.Allocate5
     mov                  rdx,       qword[rbp-200]
     mov                  rcx,       qword[rbp-232]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-200]
     add                  rax,                    8
     mov       qword[rbp-200],                  rax
     mov                  rcx,       qword[rbp-200]
     cmp                  rcx,       qword[rbp-208]
	jl	@A.Optimizer.8.Allocate6
     mov                  rdx,       qword[rbp-160]
     mov                  rcx,       qword[rbp-192]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-160]
     add                  rax,                    8
     mov       qword[rbp-160],                  rax
     mov                  rcx,       qword[rbp-160]
     cmp                  rcx,       qword[rbp-168]
	jl	@A.Optimizer.7.Allocate7
     mov                  rdx,       qword[rbp-120]
     mov                  rcx,       qword[rbp-152]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-120]
     add                  rax,                    8
     mov       qword[rbp-120],                  rax
     mov                  rcx,       qword[rbp-120]
     cmp                  rcx,       qword[rbp-128]
	jl	@A.Optimizer.6.Allocate8
     mov                  rdx,        qword[rbp-80]
     mov                  rcx,       qword[rbp-112]
     mov           qword[rdx],                  rcx
     mov                  rax,        qword[rbp-80]
     add                  rax,                    8
     mov        qword[rbp-80],                  rax
     mov                  rcx,        qword[rbp-80]
     cmp                  rcx,        qword[rbp-88]
	jl	@A.Optimizer.5.Allocate9
     mov                  rdx,        qword[rbp-40]
     mov                  rcx,        qword[rbp-72]
     mov           qword[rdx],                  rcx
     mov                  rax,        qword[rbp-40]
     add                  rax,                    8
     mov        qword[rbp-40],                  rax
     mov                  rcx,        qword[rbp-40]
     cmp                  rcx,        qword[rbp-48]
	jl	@A.Optimizer.4.Allocate10
     mov                  rcx,        qword[rbp-32]
     mov       qword[rbp-400],                  rcx
     mov       qword[rbp-408],                    0
     mov       qword[rbp-416],                    1
	jmp	@A.Optimizer.15.ForCon
@A.Optimizer.14.ForBody:
     mov                  rcx,       qword[rbp-400]
     mov       qword[rbp-424],                  rcx
     mov                  rdx,       qword[rbp-424]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-432],                  rcx
     mov                  rdx,       qword[rbp-432]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-440],                  rcx
     mov                  rdx,       qword[rbp-440]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-448],                  rcx
     mov                  rdx,       qword[rbp-448]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-456],                  rcx
     mov                  rdx,       qword[rbp-456]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-464],                  rcx
     mov                  rdx,       qword[rbp-464]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-472],                  rcx
     mov                  rdx,       qword[rbp-472]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-480],                  rcx
     mov                  rdx,       qword[rbp-480]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-488],                  rcx
     mov                  rdx,       qword[rbp-488]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-496],                  rcx
     mov       qword[rbp-504],                  123
     mov                  rax,       qword[rbp-504]
     add                  rax,       qword[rbp-416]
     mov       qword[rbp-504],                  rax
     mov                  rdx,       qword[rbp-496]
     mov                  rcx,       qword[rbp-504]
     mov         qword[rdx+8],                  rcx
     mov                  rcx,       qword[rbp-400]
     mov       qword[rbp-512],                  rcx
     mov                  rdx,       qword[rbp-512]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-520],                  rcx
     mov                  rdx,       qword[rbp-520]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-528],                  rcx
     mov                  rdx,       qword[rbp-528]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-536],                  rcx
     mov                  rdx,       qword[rbp-536]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-544],                  rcx
     mov                  rdx,       qword[rbp-544]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-552],                  rcx
     mov                  rdx,       qword[rbp-552]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-560],                  rcx
     mov                  rdx,       qword[rbp-560]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-568],                  rcx
     mov                  rdx,       qword[rbp-568]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-576],                  rcx
     mov                  rdx,       qword[rbp-576]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-584],                  rcx
     mov                  rcx,       qword[rbp-408]
     mov       qword[rbp-592],                  rcx
     mov                  rdx,       qword[rbp-584]
     mov                  rax,       qword[rbp-592]
     add                  rax,         qword[rdx+8]
     mov       qword[rbp-592],                  rax
     mov                  rcx,       qword[rbp-592]
     mov       qword[rbp-408],                  rcx
	jmp	@A.Optimizer.13.ForIter
@A.Optimizer.13.ForIter:
     mov                  rcx,       qword[rbp-416]
     mov       qword[rbp-600],                  rcx
     add       qword[rbp-416],                    1
	jmp	@A.Optimizer.15.ForCon
@A.Optimizer.15.ForCon:
     cmp       qword[rbp-416],                 1000
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-608],                  rax
     mov                  rcx,       qword[rbp-608]
     mov       qword[rbp-616],                  rcx
     cmp       qword[rbp-616],                    1
	je	@A.Optimizer.14.ForBody
	jne	@A.Optimizer.16.ForExit
@A.Optimizer.16.ForExit:
     mov                  rdi,       qword[rbp-408]
    push                  rdi
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     pop                  rdi
     mov       qword[rbp-640],                  rax
     mov                  rdi,       qword[rbp-640]
    push                  rdi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     pop                  rdi
     mov       qword[rbp-416],                    1
	jmp	@A.Optimizer.19.ForCon
@A.Optimizer.18.ForBody:
     mov                  rcx,       qword[rbp-408]
     mov       qword[rbp-656],                  rcx
     mov                  rax,       qword[rbp-656]
     add                  rax,                    8
     mov       qword[rbp-656],                  rax
     mov                  rcx,       qword[rbp-656]
     mov       qword[rbp-408],                  rcx
	jmp	@A.Optimizer.17.ForIter
@A.Optimizer.17.ForIter:
     mov                  rcx,       qword[rbp-416]
     mov       qword[rbp-664],                  rcx
     add       qword[rbp-416],                    1
	jmp	@A.Optimizer.19.ForCon
@A.Optimizer.19.ForCon:
     cmp       qword[rbp-416],              1000000
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-672],                  rax
     mov                  rcx,       qword[rbp-672]
     mov       qword[rbp-680],                  rcx
     cmp       qword[rbp-680],                    1
	je	@A.Optimizer.18.ForBody
	jne	@A.Optimizer.20.ForExit
@A.Optimizer.20.ForExit:
     mov                  rdi,       qword[rbp-408]
    push                  rdi
call	toString
     pop                  rdi
     mov       qword[rbp-704],                  rax
     mov                  rdi,       qword[rbp-704]
    push                  rdi
call	println
     pop                  rdi
     mov       qword[rbp-416],                    1
	jmp	@A.Optimizer.23.ForCon
@A.Optimizer.22.ForBody:
	jmp	@A.Optimizer.21.ForIter
@A.Optimizer.21.ForIter:
     mov                  rcx,       qword[rbp-416]
     mov       qword[rbp-720],                  rcx
     add       qword[rbp-416],                    1
	jmp	@A.Optimizer.23.ForCon
@A.Optimizer.23.ForCon:
     cmp       qword[rbp-416],            200000000
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-728],                  rax
     mov                  rcx,       qword[rbp-728]
     mov       qword[rbp-736],                  rcx
     cmp       qword[rbp-736],                    1
	je	@A.Optimizer.22.ForBody
	jne	@A.Optimizer.24.ForExit
@A.Optimizer.24.ForExit:
@A.Optimizer.2.exit:
     add                  rsp,                  736
     pop                  rbp
     ret
heapsort:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  704
@heapsort.1.enter:
     mov         qword[rbp-8],                    0
     mov        qword[rbp-16],                    1
	jmp	@heapsort.6.ForCon
@heapsort.5.ForBody:
     mov                  rcx,         qword[@heap]
     mov        qword[rbp-24],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-40],                  rcx
     shl        qword[rbp-40],                    3
     mov                  rax,        qword[rbp-24]
     add                  rax,        qword[rbp-40]
     mov        qword[rbp-24],                  rax
     mov                  rcx,            qword[@a]
     mov        qword[rbp-48],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-64],                  rcx
     shl        qword[rbp-64],                    3
     mov                  rax,        qword[rbp-48]
     add                  rax,        qword[rbp-64]
     mov        qword[rbp-48],                  rax
     mov                  rdx,        qword[rbp-48]
     mov                  rcx,           qword[rdx]
     mov        qword[rbp-72],                  rcx
     mov                  rdx,        qword[rbp-24]
     mov                  rcx,        qword[rbp-72]
     mov           qword[rdx],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-80],                  rcx
	jmp	@heapsort.10.ForCon
@heapsort.9.ForBody:
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-88],                  rcx
     add         qword[rbp-8],                    1
     mov                  rcx,         qword[@heap]
     mov        qword[rbp-96],                  rcx
     mov                  rcx,        qword[rbp-80]
     mov       qword[rbp-104],                  rcx
     shl       qword[rbp-104],                    3
     mov                  rax,        qword[rbp-96]
     add                  rax,       qword[rbp-104]
     mov        qword[rbp-96],                  rax
     mov                  rcx,        qword[rbp-80]
     mov       qword[rbp-112],                  rcx
     shr       qword[rbp-112],                    1
     mov                  rcx,         qword[@heap]
     mov       qword[rbp-120],                  rcx
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-128],                  rcx
     shl       qword[rbp-128],                    3
     mov                  rax,       qword[rbp-120]
     add                  rax,       qword[rbp-128]
     mov       qword[rbp-120],                  rax
     mov                  rdx,        qword[rbp-96]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-136],                  rcx
     mov                  rdx,       qword[rbp-120]
     mov                  rcx,       qword[rbp-136]
     cmp                  rcx,           qword[rdx]
     mov                  rax,                    0
    setg                   al
     mov       qword[rbp-144],                  rax
     mov                  rcx,       qword[rbp-144]
     mov       qword[rbp-152],                  rcx
     cmp       qword[rbp-152],                    1
	je	@heapsort.13.IfTrue
	jne	@heapsort.12.IfFalse
@heapsort.13.IfTrue:
	jmp	@heapsort.11.ForExit
	jmp	@heapsort.14.IfExit
@heapsort.12.IfFalse:
@heapsort.14.IfExit:
     mov                  rcx,         qword[@heap]
     mov       qword[rbp-160],                  rcx
     mov                  rcx,        qword[rbp-80]
     mov       qword[rbp-168],                  rcx
     shl       qword[rbp-168],                    3
     mov                  rax,       qword[rbp-160]
     add                  rax,       qword[rbp-168]
     mov       qword[rbp-160],                  rax
     mov                  rdx,       qword[rbp-160]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-176],                  rcx
     mov                  rcx,         qword[@heap]
     mov       qword[rbp-184],                  rcx
     mov                  rcx,        qword[rbp-80]
     mov       qword[rbp-192],                  rcx
     shl       qword[rbp-192],                    3
     mov                  rax,       qword[rbp-184]
     add                  rax,       qword[rbp-192]
     mov       qword[rbp-184],                  rax
     mov                  rcx,        qword[rbp-80]
     mov       qword[rbp-200],                  rcx
     shr       qword[rbp-200],                    1
     mov                  rcx,         qword[@heap]
     mov       qword[rbp-208],                  rcx
     mov                  rcx,       qword[rbp-200]
     mov       qword[rbp-216],                  rcx
     shl       qword[rbp-216],                    3
     mov                  rax,       qword[rbp-208]
     add                  rax,       qword[rbp-216]
     mov       qword[rbp-208],                  rax
     mov                  rdx,       qword[rbp-208]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-224],                  rcx
     mov                  rdx,       qword[rbp-184]
     mov                  rcx,       qword[rbp-224]
     mov           qword[rdx],                  rcx
     mov                  rcx,        qword[rbp-80]
     mov       qword[rbp-232],                  rcx
     shr       qword[rbp-232],                    1
     mov                  rcx,         qword[@heap]
     mov       qword[rbp-240],                  rcx
     mov                  rcx,       qword[rbp-232]
     mov       qword[rbp-248],                  rcx
     shl       qword[rbp-248],                    3
     mov                  rax,       qword[rbp-240]
     add                  rax,       qword[rbp-248]
     mov       qword[rbp-240],                  rax
     mov                  rdx,       qword[rbp-240]
     mov                  rcx,       qword[rbp-176]
     mov           qword[rdx],                  rcx
     mov                  rcx,        qword[rbp-80]
     mov       qword[rbp-256],                  rcx
     shr       qword[rbp-256],                    1
     mov                  rcx,       qword[rbp-256]
     mov        qword[rbp-80],                  rcx
	jmp	@heapsort.8.ForIter
@heapsort.8.ForIter:
	jmp	@heapsort.10.ForCon
@heapsort.10.ForCon:
     cmp        qword[rbp-80],                    1
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-264],                  rax
     mov                  rcx,       qword[rbp-264]
     mov       qword[rbp-272],                  rcx
     cmp       qword[rbp-272],                    1
	je	@heapsort.9.ForBody
	jne	@heapsort.11.ForExit
@heapsort.11.ForExit:
	jmp	@heapsort.4.ForIter
@heapsort.4.ForIter:
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-280],                  rcx
     add        qword[rbp-16],                    1
	jmp	@heapsort.6.ForCon
@heapsort.6.ForCon:
     mov                  rcx,        qword[rbp-16]
     cmp                  rcx,            qword[@n]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-296],                  rax
     mov                  rcx,       qword[rbp-296]
     mov       qword[rbp-304],                  rcx
     cmp       qword[rbp-304],                    1
	je	@heapsort.5.ForBody
	jne	@heapsort.7.ForExit
@heapsort.7.ForExit:
     mov                  rcx,            qword[@n]
     mov       qword[rbp-312],                  rcx
     mov        qword[rbp-16],                    1
	jmp	@heapsort.17.ForCon
@heapsort.16.ForBody:
     mov                  rcx,            qword[@a]
     mov       qword[rbp-320],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-328],                  rcx
     shl       qword[rbp-328],                    3
     mov                  rax,       qword[rbp-320]
     add                  rax,       qword[rbp-328]
     mov       qword[rbp-320],                  rax
     mov                  rcx,         qword[@heap]
     mov       qword[rbp-336],                  rcx
     mov                  rdx,       qword[rbp-336]
     mov                  rcx,         qword[rdx+8]
     mov       qword[rbp-344],                  rcx
     mov                  rdx,       qword[rbp-320]
     mov                  rcx,       qword[rbp-344]
     mov           qword[rdx],                  rcx
     mov                  rcx,         qword[@heap]
     mov       qword[rbp-352],                  rcx
     mov                  rcx,       qword[rbp-312]
     mov       qword[rbp-360],                  rcx
     sub       qword[rbp-312],                    1
     mov                  rcx,         qword[@heap]
     mov       qword[rbp-368],                  rcx
     mov                  rcx,       qword[rbp-360]
     mov       qword[rbp-376],                  rcx
     shl       qword[rbp-376],                    3
     mov                  rax,       qword[rbp-368]
     add                  rax,       qword[rbp-376]
     mov       qword[rbp-368],                  rax
     mov                  rdx,       qword[rbp-368]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-384],                  rcx
     mov                  rdx,       qword[rbp-352]
     mov                  rcx,       qword[rbp-384]
     mov         qword[rdx+8],                  rcx
     mov       qword[rbp-392],                    1
	jmp	@heapsort.21.ForCon
@heapsort.20.ForBody:
     mov                  rcx,       qword[rbp-392]
     mov       qword[rbp-400],                  rcx
     shl       qword[rbp-400],                    1
     mov                  rcx,       qword[rbp-400]
     mov       qword[rbp-408],                  rcx
     mov                  rcx,       qword[rbp-408]
     mov       qword[rbp-416],                  rcx
     mov                  rax,       qword[rbp-416]
     add                  rax,                    1
     mov       qword[rbp-416],                  rax
     mov                  rcx,       qword[rbp-416]
     mov       qword[rbp-424],                  rcx
     mov                  rcx,       qword[rbp-408]
     mov       qword[rbp-432],                  rcx
     mov                  rcx,       qword[rbp-424]
     cmp                  rcx,       qword[rbp-312]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-440],                  rax
     mov                  rcx,       qword[rbp-440]
     mov       qword[rbp-448],                  rcx
     cmp       qword[rbp-448],                    1
	je	@heapsort.24.IfTrue
	jne	@heapsort.23.IfFalse
@heapsort.24.IfTrue:
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-456],                  rcx
     add         qword[rbp-8],                    1
     mov                  rcx,         qword[@heap]
     mov       qword[rbp-464],                  rcx
     mov                  rcx,       qword[rbp-424]
     mov       qword[rbp-472],                  rcx
     shl       qword[rbp-472],                    3
     mov                  rax,       qword[rbp-464]
     add                  rax,       qword[rbp-472]
     mov       qword[rbp-464],                  rax
     mov                  rcx,         qword[@heap]
     mov       qword[rbp-480],                  rcx
     mov                  rcx,       qword[rbp-408]
     mov       qword[rbp-488],                  rcx
     shl       qword[rbp-488],                    3
     mov                  rax,       qword[rbp-480]
     add                  rax,       qword[rbp-488]
     mov       qword[rbp-480],                  rax
     mov                  rdx,       qword[rbp-464]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-496],                  rcx
     mov                  rdx,       qword[rbp-480]
     mov                  rcx,       qword[rbp-496]
     cmp                  rcx,           qword[rdx]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-504],                  rax
     mov                  rcx,       qword[rbp-504]
     mov       qword[rbp-512],                  rcx
     cmp       qword[rbp-512],                    1
	je	@heapsort.27.IfTrue
	jne	@heapsort.26.IfFalse
@heapsort.27.IfTrue:
     mov                  rcx,       qword[rbp-424]
     mov       qword[rbp-432],                  rcx
	jmp	@heapsort.28.IfExit
@heapsort.26.IfFalse:
@heapsort.28.IfExit:
	jmp	@heapsort.25.IfExit
@heapsort.23.IfFalse:
@heapsort.25.IfExit:
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-520],                  rcx
     add         qword[rbp-8],                    1
     mov                  rcx,         qword[@heap]
     mov       qword[rbp-528],                  rcx
     mov                  rcx,       qword[rbp-392]
     mov       qword[rbp-536],                  rcx
     shl       qword[rbp-536],                    3
     mov                  rax,       qword[rbp-528]
     add                  rax,       qword[rbp-536]
     mov       qword[rbp-528],                  rax
     mov                  rcx,         qword[@heap]
     mov       qword[rbp-544],                  rcx
     mov                  rcx,       qword[rbp-432]
     mov       qword[rbp-552],                  rcx
     shl       qword[rbp-552],                    3
     mov                  rax,       qword[rbp-544]
     add                  rax,       qword[rbp-552]
     mov       qword[rbp-544],                  rax
     mov                  rdx,       qword[rbp-528]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-560],                  rcx
     mov                  rdx,       qword[rbp-544]
     mov                  rcx,       qword[rbp-560]
     cmp                  rcx,           qword[rdx]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-568],                  rax
     mov                  rcx,       qword[rbp-568]
     mov       qword[rbp-576],                  rcx
     cmp       qword[rbp-576],                    1
	je	@heapsort.30.IfTrue
	jne	@heapsort.29.IfFalse
@heapsort.30.IfTrue:
	jmp	@heapsort.22.ForExit
	jmp	@heapsort.31.IfExit
@heapsort.29.IfFalse:
@heapsort.31.IfExit:
     mov                  rcx,         qword[@heap]
     mov       qword[rbp-584],                  rcx
     mov                  rcx,       qword[rbp-392]
     mov       qword[rbp-592],                  rcx
     shl       qword[rbp-592],                    3
     mov                  rax,       qword[rbp-584]
     add                  rax,       qword[rbp-592]
     mov       qword[rbp-584],                  rax
     mov                  rdx,       qword[rbp-584]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-176],                  rcx
     mov                  rcx,         qword[@heap]
     mov       qword[rbp-600],                  rcx
     mov                  rcx,       qword[rbp-392]
     mov       qword[rbp-608],                  rcx
     shl       qword[rbp-608],                    3
     mov                  rax,       qword[rbp-600]
     add                  rax,       qword[rbp-608]
     mov       qword[rbp-600],                  rax
     mov                  rcx,         qword[@heap]
     mov       qword[rbp-616],                  rcx
     mov                  rcx,       qword[rbp-432]
     mov       qword[rbp-624],                  rcx
     shl       qword[rbp-624],                    3
     mov                  rax,       qword[rbp-616]
     add                  rax,       qword[rbp-624]
     mov       qword[rbp-616],                  rax
     mov                  rdx,       qword[rbp-616]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-632],                  rcx
     mov                  rdx,       qword[rbp-600]
     mov                  rcx,       qword[rbp-632]
     mov           qword[rdx],                  rcx
     mov                  rcx,         qword[@heap]
     mov       qword[rbp-640],                  rcx
     mov                  rcx,       qword[rbp-432]
     mov       qword[rbp-648],                  rcx
     shl       qword[rbp-648],                    3
     mov                  rax,       qword[rbp-640]
     add                  rax,       qword[rbp-648]
     mov       qword[rbp-640],                  rax
     mov                  rdx,       qword[rbp-640]
     mov                  rcx,       qword[rbp-176]
     mov           qword[rdx],                  rcx
     mov                  rcx,       qword[rbp-392]
     mov       qword[rbp-176],                  rcx
     mov                  rcx,       qword[rbp-432]
     mov       qword[rbp-392],                  rcx
     mov                  rcx,       qword[rbp-176]
     mov       qword[rbp-432],                  rcx
	jmp	@heapsort.19.ForIter
@heapsort.19.ForIter:
	jmp	@heapsort.21.ForCon
@heapsort.21.ForCon:
     mov                  rcx,       qword[rbp-392]
     mov       qword[rbp-656],                  rcx
     shl       qword[rbp-656],                    1
     mov                  rcx,       qword[rbp-656]
     cmp                  rcx,       qword[rbp-312]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-664],                  rax
     mov                  rcx,       qword[rbp-664]
     mov       qword[rbp-672],                  rcx
     cmp       qword[rbp-672],                    1
	je	@heapsort.20.ForBody
	jne	@heapsort.22.ForExit
@heapsort.22.ForExit:
	jmp	@heapsort.15.ForIter
@heapsort.15.ForIter:
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-680],                  rcx
     add        qword[rbp-16],                    1
	jmp	@heapsort.17.ForCon
@heapsort.17.ForCon:
     mov                  rcx,        qword[rbp-16]
     cmp                  rcx,            qword[@n]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-688],                  rax
     mov                  rcx,       qword[rbp-688]
     mov       qword[rbp-696],                  rcx
     cmp       qword[rbp-696],                    1
	je	@heapsort.16.ForBody
	jne	@heapsort.18.ForExit
@heapsort.18.ForExit:
     mov                  rax,         qword[rbp-8]
	jmp	@heapsort.2.exit
@heapsort.2.exit:
     add                  rsp,                  704
     pop                  rbp
     ret


 section                 .bss
@N:
  	resq 		1
@n:
  	resq 		1
@a:
  	resq 		1
@bak:
  	resq 		1
@a_left:
  	resq 		1
@a_right:
  	resq 		1
@heap:
  	resq 		1
@i1:
  	resq 		1
@i2:
  	resq 		1
@i3:
  	resq 		1
@i4:
  	resq 		1
@i5:
  	resq 		1
@i6:
  	resq 		1
@i7:
  	resq 		1
@i8:
  	resq 		1
@i9:
  	resq 		1
@i10:
  	resq 		1
@i11:
  	resq 		1
@i12:
  	resq 		1
@i13:
  	resq 		1
@i14:
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
global parseInt
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

parseInt:
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



