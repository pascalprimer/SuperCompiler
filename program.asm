  global                 main
  extern	malloc


 section                .text
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                  288
@main.1.enter:
     mov            qword[@n],                 9987
     mov                  rcx,            qword[@n]
     mov        qword[rbp-16],                  rcx
     mov                  rcx,            qword[@n]
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
     mov        qword[rbp-48],                    0
	jmp	@main.6.ForCon
@main.5.ForBody:
     mov                  rcx,            qword[@a]
     mov        qword[rbp-56],                  rcx
     mov                  rcx,        qword[rbp-48]
     mov        qword[rbp-64],                  rcx
     shl        qword[rbp-64],                    3
     mov                  rax,        qword[rbp-56]
     add                  rax,        qword[rbp-64]
     mov        qword[rbp-56],                  rax
     mov                  rdx,        qword[rbp-56]
     mov                  rcx,        qword[rbp-48]
     mov           qword[rdx],                  rcx
	jmp	@main.4.ForIter
@main.4.ForIter:
     mov                  rcx,        qword[rbp-48]
     mov        qword[rbp-72],                  rcx
     mov                  rax,        qword[rbp-72]
     add                  rax,                    1
     mov        qword[rbp-72],                  rax
     mov                  rcx,        qword[rbp-72]
     mov        qword[rbp-48],                  rcx
	jmp	@main.6.ForCon
@main.6.ForCon:
     mov                  rdi,            qword[@a]
call	__size__
     mov        qword[rbp-96],                  rax
     mov                  rcx,        qword[rbp-48]
     cmp                  rcx,        qword[rbp-96]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-104],                  rax
     mov                  rcx,       qword[rbp-104]
     mov       qword[rbp-112],                  rcx
     cmp       qword[rbp-112],                    1
	je	@main.5.ForBody
	jne	@main.7.ForExit
@main.7.ForExit:
     sub                  rsp,                    8
call	makeHeap
     add                  rsp,                    8
     mov       qword[rbp-128],                  rax
     sub                  rsp,                    8
call	heapSort
     add                  rsp,                    8
     mov       qword[rbp-144],                  rax
     mov        qword[rbp-48],                    0
	jmp	@main.10.ForCon
@main.9.ForBody:
     mov                  rcx,            qword[@a]
     mov       qword[rbp-152],                  rcx
     mov                  rcx,        qword[rbp-48]
     mov       qword[rbp-160],                  rcx
     shl       qword[rbp-160],                    3
     mov                  rax,       qword[rbp-152]
     add                  rax,       qword[rbp-160]
     mov       qword[rbp-152],                  rax
     mov                  rdx,       qword[rbp-152]
     mov                  rdi,           qword[rdx]
     sub                  rsp,                    8
call	toString
     add                  rsp,                    8
     mov       qword[rbp-184],                  rax
     mov                  rdi,       qword[rbp-184]
     mov                  rsi,         __const_str0
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     mov       qword[rbp-216],                  rax
     mov                  rdi,       qword[rbp-216]
     sub                  rsp,                    8
call	print
     add                  rsp,                    8
	jmp	@main.8.ForIter
@main.8.ForIter:
     mov                  rcx,        qword[rbp-48]
     mov       qword[rbp-232],                  rcx
     mov                  rax,       qword[rbp-232]
     add                  rax,                    1
     mov       qword[rbp-232],                  rax
     mov                  rcx,       qword[rbp-232]
     mov        qword[rbp-48],                  rcx
	jmp	@main.10.ForCon
@main.10.ForCon:
     mov                  rdi,            qword[@a]
     sub                  rsp,                    8
call	__size__
     add                  rsp,                    8
     mov       qword[rbp-256],                  rax
     mov                  rcx,        qword[rbp-48]
     cmp                  rcx,       qword[rbp-256]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-264],                  rax
     mov                  rcx,       qword[rbp-264]
     mov       qword[rbp-272],                  rcx
     cmp       qword[rbp-272],                    1
	je	@main.9.ForBody
	jne	@main.11.ForExit
@main.11.ForExit:
     mov                  rdi,         __const_str1
call	print
     mov                  rax,                    0
	jmp	@main.2.exit
@main.2.exit:
     add                  rsp,                  288
     pop                  rbp
     ret
exchange:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  104
@exchange.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                  rsi
     mov                  rcx,            qword[@a]
     mov        qword[rbp-24],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-40],                  rcx
     shl        qword[rbp-40],                    3
     mov                  rax,        qword[rbp-24]
     add                  rax,        qword[rbp-40]
     mov        qword[rbp-24],                  rax
     mov                  rdx,        qword[rbp-24]
     mov                  rcx,           qword[rdx]
     mov        qword[rbp-48],                  rcx
     mov                  rcx,            qword[@a]
     mov        qword[rbp-56],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-64],                  rcx
     shl        qword[rbp-64],                    3
     mov                  rax,        qword[rbp-56]
     add                  rax,        qword[rbp-64]
     mov        qword[rbp-56],                  rax
     mov                  rcx,            qword[@a]
     mov        qword[rbp-72],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-80],                  rcx
     shl        qword[rbp-80],                    3
     mov                  rax,        qword[rbp-72]
     add                  rax,        qword[rbp-80]
     mov        qword[rbp-72],                  rax
     mov                  rdx,        qword[rbp-72]
     mov                  rcx,           qword[rdx]
     mov        qword[rbp-88],                  rcx
     mov                  rdx,        qword[rbp-56]
     mov                  rcx,        qword[rbp-88]
     mov           qword[rdx],                  rcx
     mov                  rcx,            qword[@a]
     mov        qword[rbp-96],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-104],                  rcx
     shl       qword[rbp-104],                    3
     mov                  rax,        qword[rbp-96]
     add                  rax,       qword[rbp-104]
     mov        qword[rbp-96],                  rax
     mov                  rdx,        qword[rbp-96]
     mov                  rcx,        qword[rbp-48]
     mov           qword[rdx],                  rcx
@exchange.2.exit:
     add                  rsp,                  104
     pop                  rbp
     ret
adjustHeap:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  344
@adjustHeap.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                    0
     mov        qword[rbp-24],                    0
     mov        qword[rbp-32],                    0
	jmp	@adjustHeap.6.ForCon
@adjustHeap.5.ForBody:
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-40],                  rcx
     mov                  rax,        qword[rbp-40]
    imul                  rax,                    2
     mov        qword[rbp-40],                  rax
     mov                  rcx,        qword[rbp-40]
     mov        qword[rbp-24],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-48],                  rcx
     mov                  rax,        qword[rbp-48]
    imul                  rax,                    2
     mov        qword[rbp-48],                  rax
     mov                  rcx,        qword[rbp-48]
     mov        qword[rbp-56],                  rcx
     mov                  rax,        qword[rbp-56]
     add                  rax,                    1
     mov        qword[rbp-56],                  rax
     mov                  rcx,        qword[rbp-56]
     cmp                  rcx,         qword[rbp-8]
     mov                  rax,                    0
    setl                   al
     mov        qword[rbp-64],                  rax
     cmp        qword[rbp-64],                    0
	je	@adjustHeap.11.cmp_and
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-72],                  rcx
     mov                  rax,        qword[rbp-72]
    imul                  rax,                    2
     mov        qword[rbp-72],                  rax
     mov                  rcx,        qword[rbp-72]
     mov        qword[rbp-80],                  rcx
     mov                  rax,        qword[rbp-80]
     add                  rax,                    1
     mov        qword[rbp-80],                  rax
     mov                  rcx,            qword[@a]
     mov        qword[rbp-88],                  rcx
     mov                  rcx,        qword[rbp-80]
     mov       qword[rbp-104],                  rcx
     shl       qword[rbp-104],                    3
     mov                  rax,        qword[rbp-88]
     add                  rax,       qword[rbp-104]
     mov        qword[rbp-88],                  rax
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-112],                  rcx
     mov                  rax,       qword[rbp-112]
    imul                  rax,                    2
     mov       qword[rbp-112],                  rax
     mov                  rcx,            qword[@a]
     mov       qword[rbp-120],                  rcx
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-128],                  rcx
     shl       qword[rbp-128],                    3
     mov                  rax,       qword[rbp-120]
     add                  rax,       qword[rbp-128]
     mov       qword[rbp-120],                  rax
     mov                  rdx,        qword[rbp-88]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-136],                  rcx
     mov                  rdx,       qword[rbp-120]
     mov                  rcx,       qword[rbp-136]
     cmp                  rcx,           qword[rdx]
     mov                  rax,                    0
    sete                   al
     mov       qword[rbp-144],                  rax
     cmp       qword[rbp-144],                    0
@adjustHeap.11.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-152],                  rax
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-160],                  rcx
     cmp       qword[rbp-160],                    1
	je	@adjustHeap.9.IfTrue
	jne	@adjustHeap.8.IfFalse
@adjustHeap.9.IfTrue:
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-168],                  rcx
     mov                  rax,       qword[rbp-168]
    imul                  rax,                    2
     mov       qword[rbp-168],                  rax
     mov                  rcx,       qword[rbp-168]
     mov       qword[rbp-176],                  rcx
     mov                  rax,       qword[rbp-176]
     add                  rax,                    1
     mov       qword[rbp-176],                  rax
     mov                  rcx,       qword[rbp-176]
     mov        qword[rbp-24],                  rcx
	jmp	@adjustHeap.10.IfExit
@adjustHeap.8.IfFalse:
@adjustHeap.10.IfExit:
     mov                  rcx,            qword[@a]
     mov       qword[rbp-184],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-192],                  rcx
     shl       qword[rbp-192],                    3
     mov                  rax,       qword[rbp-184]
     add                  rax,       qword[rbp-192]
     mov       qword[rbp-184],                  rax
     mov                  rcx,            qword[@a]
     mov       qword[rbp-200],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-208],                  rcx
     shl       qword[rbp-208],                    3
     mov                  rax,       qword[rbp-200]
     add                  rax,       qword[rbp-208]
     mov       qword[rbp-200],                  rax
     mov                  rdx,       qword[rbp-184]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-216],                  rcx
     mov                  rdx,       qword[rbp-200]
     mov                  rcx,       qword[rbp-216]
     cmp                  rcx,           qword[rdx]
     mov                  rax,                    0
    setg                   al
     mov       qword[rbp-224],                  rax
     mov                  rcx,       qword[rbp-224]
     mov       qword[rbp-232],                  rcx
     cmp       qword[rbp-232],                    1
	je	@adjustHeap.13.IfTrue
	jne	@adjustHeap.12.IfFalse
@adjustHeap.13.IfTrue:
     mov                  rcx,            qword[@a]
     mov       qword[rbp-240],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-248],                  rcx
     shl       qword[rbp-248],                    3
     mov                  rax,       qword[rbp-240]
     add                  rax,       qword[rbp-248]
     mov       qword[rbp-240],                  rax
     mov                  rdx,       qword[rbp-240]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-256],                  rcx
     mov                  rcx,            qword[@a]
     mov       qword[rbp-264],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-272],                  rcx
     shl       qword[rbp-272],                    3
     mov                  rax,       qword[rbp-264]
     add                  rax,       qword[rbp-272]
     mov       qword[rbp-264],                  rax
     mov                  rcx,            qword[@a]
     mov       qword[rbp-280],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-288],                  rcx
     shl       qword[rbp-288],                    3
     mov                  rax,       qword[rbp-280]
     add                  rax,       qword[rbp-288]
     mov       qword[rbp-280],                  rax
     mov                  rdx,       qword[rbp-280]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-296],                  rcx
     mov                  rdx,       qword[rbp-264]
     mov                  rcx,       qword[rbp-296]
     mov           qword[rdx],                  rcx
     mov                  rcx,            qword[@a]
     mov       qword[rbp-304],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-312],                  rcx
     shl       qword[rbp-312],                    3
     mov                  rax,       qword[rbp-304]
     add                  rax,       qword[rbp-312]
     mov       qword[rbp-304],                  rax
     mov                  rdx,       qword[rbp-304]
     mov                  rcx,       qword[rbp-256]
     mov           qword[rdx],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-16],                  rcx
	jmp	@adjustHeap.14.IfExit
@adjustHeap.12.IfFalse:
	jmp	@adjustHeap.7.ForExit
	jmp	@adjustHeap.14.IfExit
@adjustHeap.14.IfExit:
	jmp	@adjustHeap.4.ForIter
@adjustHeap.4.ForIter:
	jmp	@adjustHeap.6.ForCon
@adjustHeap.6.ForCon:
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-320],                  rcx
     mov                  rax,       qword[rbp-320]
    imul                  rax,                    2
     mov       qword[rbp-320],                  rax
     mov                  rcx,       qword[rbp-320]
     cmp                  rcx,         qword[rbp-8]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-328],                  rax
     mov                  rcx,       qword[rbp-328]
     mov       qword[rbp-336],                  rcx
     cmp       qword[rbp-336],                    1
	je	@adjustHeap.5.ForBody
	jne	@adjustHeap.7.ForExit
@adjustHeap.7.ForExit:
     mov                  rax,                    0
	jmp	@adjustHeap.2.exit
@adjustHeap.2.exit:
     add                  rsp,                  344
     pop                  rbp
     ret
heapSort:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  192
@heapSort.1.enter:
     mov         qword[rbp-8],                    0
     mov        qword[rbp-16],                    0
	jmp	@heapSort.6.ForCon
@heapSort.5.ForBody:
     mov                  rcx,            qword[@a]
     mov        qword[rbp-24],                  rcx
     mov                  rdx,        qword[rbp-24]
     mov                  rcx,           qword[rdx]
     mov         qword[rbp-8],                  rcx
     mov                  rcx,            qword[@a]
     mov        qword[rbp-40],                  rcx
     mov                  rcx,            qword[@n]
     mov        qword[rbp-48],                  rcx
     mov                  rax,        qword[rbp-48]
     sub                  rax,        qword[rbp-16]
     mov        qword[rbp-48],                  rax
     mov                  rcx,        qword[rbp-48]
     mov        qword[rbp-64],                  rcx
     mov                  rax,        qword[rbp-64]
     sub                  rax,                    1
     mov        qword[rbp-64],                  rax
     mov                  rcx,            qword[@a]
     mov        qword[rbp-72],                  rcx
     mov                  rcx,        qword[rbp-64]
     mov        qword[rbp-80],                  rcx
     shl        qword[rbp-80],                    3
     mov                  rax,        qword[rbp-72]
     add                  rax,        qword[rbp-80]
     mov        qword[rbp-72],                  rax
     mov                  rdx,        qword[rbp-72]
     mov                  rcx,           qword[rdx]
     mov        qword[rbp-88],                  rcx
     mov                  rdx,        qword[rbp-40]
     mov                  rcx,        qword[rbp-88]
     mov           qword[rdx],                  rcx
     mov                  rcx,            qword[@n]
     mov        qword[rbp-96],                  rcx
     mov                  rax,        qword[rbp-96]
     sub                  rax,        qword[rbp-16]
     mov        qword[rbp-96],                  rax
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-104],                  rcx
     mov                  rax,       qword[rbp-104]
     sub                  rax,                    1
     mov       qword[rbp-104],                  rax
     mov                  rcx,            qword[@a]
     mov       qword[rbp-112],                  rcx
     mov                  rcx,       qword[rbp-104]
     mov       qword[rbp-120],                  rcx
     shl       qword[rbp-120],                    3
     mov                  rax,       qword[rbp-112]
     add                  rax,       qword[rbp-120]
     mov       qword[rbp-112],                  rax
     mov                  rdx,       qword[rbp-112]
     mov                  rcx,         qword[rbp-8]
     mov           qword[rdx],                  rcx
     mov                  rcx,            qword[@n]
     mov       qword[rbp-128],                  rcx
     mov                  rax,       qword[rbp-128]
     sub                  rax,        qword[rbp-16]
     mov       qword[rbp-128],                  rax
     mov                  rcx,       qword[rbp-128]
     mov       qword[rbp-136],                  rcx
     mov                  rax,       qword[rbp-136]
     sub                  rax,                    1
     mov       qword[rbp-136],                  rax
     mov                  rdi,       qword[rbp-136]
call	adjustHeap
     mov       qword[rbp-160],                  rax
	jmp	@heapSort.4.ForIter
@heapSort.4.ForIter:
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-168],                  rcx
     mov                  rax,       qword[rbp-168]
     add                  rax,                    1
     mov       qword[rbp-168],                  rax
     mov                  rcx,       qword[rbp-168]
     mov        qword[rbp-16],                  rcx
	jmp	@heapSort.6.ForCon
@heapSort.6.ForCon:
     mov                  rcx,        qword[rbp-16]
     cmp                  rcx,            qword[@n]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-176],                  rax
     mov                  rcx,       qword[rbp-176]
     mov       qword[rbp-184],                  rcx
     cmp       qword[rbp-184],                    1
	je	@heapSort.5.ForBody
	jne	@heapSort.7.ForExit
@heapSort.7.ForExit:
     mov                  rax,                    0
	jmp	@heapSort.2.exit
@heapSort.2.exit:
     add                  rsp,                  192
     pop                  rbp
     ret
makeHeap:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  296
@makeHeap.1.enter:
     mov                  rcx,            qword[@n]
     mov         qword[rbp-8],                  rcx
     mov                  rax,         qword[rbp-8]
     sub                  rax,                    1
     mov         qword[rbp-8],                  rax
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-24],                  rcx
     mov                  rax,        qword[rbp-24]
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov        qword[rbp-24],                  rax
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-32],                  rcx
     mov        qword[rbp-40],                    0
     mov        qword[rbp-48],                    0
	jmp	@makeHeap.6.ForCon
@makeHeap.5.ForBody:
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-56],                  rcx
     mov                  rax,        qword[rbp-56]
    imul                  rax,                    2
     mov        qword[rbp-56],                  rax
     mov                  rcx,        qword[rbp-56]
     mov        qword[rbp-48],                  rcx
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-64],                  rcx
     mov                  rax,        qword[rbp-64]
    imul                  rax,                    2
     mov        qword[rbp-64],                  rax
     mov                  rcx,        qword[rbp-64]
     mov        qword[rbp-72],                  rcx
     mov                  rax,        qword[rbp-72]
     add                  rax,                    1
     mov        qword[rbp-72],                  rax
     mov                  rcx,        qword[rbp-72]
     cmp                  rcx,            qword[@n]
     mov                  rax,                    0
    setl                   al
     mov        qword[rbp-80],                  rax
     cmp        qword[rbp-80],                    0
	je	@makeHeap.11.cmp_and
     mov                  rcx,        qword[rbp-32]
     mov        qword[rbp-88],                  rcx
     mov                  rax,        qword[rbp-88]
    imul                  rax,                    2
     mov        qword[rbp-88],                  rax
     mov                  rcx,        qword[rbp-88]
     mov        qword[rbp-96],                  rcx
     mov                  rax,        qword[rbp-96]
     add                  rax,                    1
     mov        qword[rbp-96],                  rax
     mov                  rcx,            qword[@a]
     mov       qword[rbp-104],                  rcx
     mov                  rcx,        qword[rbp-96]
     mov       qword[rbp-120],                  rcx
     shl       qword[rbp-120],                    3
     mov                  rax,       qword[rbp-104]
     add                  rax,       qword[rbp-120]
     mov       qword[rbp-104],                  rax
     mov                  rcx,        qword[rbp-32]
     mov       qword[rbp-128],                  rcx
     mov                  rax,       qword[rbp-128]
    imul                  rax,                    2
     mov       qword[rbp-128],                  rax
     mov                  rcx,            qword[@a]
     mov       qword[rbp-136],                  rcx
     mov                  rcx,       qword[rbp-128]
     mov       qword[rbp-144],                  rcx
     shl       qword[rbp-144],                    3
     mov                  rax,       qword[rbp-136]
     add                  rax,       qword[rbp-144]
     mov       qword[rbp-136],                  rax
     mov                  rdx,       qword[rbp-104]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-152],                  rcx
     mov                  rdx,       qword[rbp-136]
     mov                  rcx,       qword[rbp-152]
     cmp                  rcx,           qword[rdx]
     mov                  rax,                    0
    sete                   al
     mov       qword[rbp-160],                  rax
     cmp       qword[rbp-160],                    0
@makeHeap.11.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-168],                  rax
     mov                  rcx,       qword[rbp-168]
     mov       qword[rbp-176],                  rcx
     cmp       qword[rbp-176],                    1
	je	@makeHeap.9.IfTrue
	jne	@makeHeap.8.IfFalse
@makeHeap.9.IfTrue:
     mov                  rcx,        qword[rbp-32]
     mov       qword[rbp-184],                  rcx
     mov                  rax,       qword[rbp-184]
    imul                  rax,                    2
     mov       qword[rbp-184],                  rax
     mov                  rcx,       qword[rbp-184]
     mov       qword[rbp-192],                  rcx
     mov                  rax,       qword[rbp-192]
     add                  rax,                    1
     mov       qword[rbp-192],                  rax
     mov                  rcx,       qword[rbp-192]
     mov        qword[rbp-48],                  rcx
	jmp	@makeHeap.10.IfExit
@makeHeap.8.IfFalse:
@makeHeap.10.IfExit:
     mov                  rcx,            qword[@a]
     mov       qword[rbp-200],                  rcx
     mov                  rcx,        qword[rbp-32]
     mov       qword[rbp-208],                  rcx
     shl       qword[rbp-208],                    3
     mov                  rax,       qword[rbp-200]
     add                  rax,       qword[rbp-208]
     mov       qword[rbp-200],                  rax
     mov                  rcx,            qword[@a]
     mov       qword[rbp-216],                  rcx
     mov                  rcx,        qword[rbp-48]
     mov       qword[rbp-224],                  rcx
     shl       qword[rbp-224],                    3
     mov                  rax,       qword[rbp-216]
     add                  rax,       qword[rbp-224]
     mov       qword[rbp-216],                  rax
     mov                  rdx,       qword[rbp-200]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-232],                  rcx
     mov                  rdx,       qword[rbp-216]
     mov                  rcx,       qword[rbp-232]
     cmp                  rcx,           qword[rdx]
     mov                  rax,                    0
    setg                   al
     mov       qword[rbp-240],                  rax
     mov                  rcx,       qword[rbp-240]
     mov       qword[rbp-248],                  rcx
     cmp       qword[rbp-248],                    1
	je	@makeHeap.13.IfTrue
	jne	@makeHeap.12.IfFalse
@makeHeap.13.IfTrue:
     mov                  rdi,        qword[rbp-32]
     mov                  rsi,        qword[rbp-48]
call	exchange
	jmp	@makeHeap.14.IfExit
@makeHeap.12.IfFalse:
@makeHeap.14.IfExit:
     mov                  rcx,        qword[rbp-32]
     mov       qword[rbp-272],                  rcx
     mov                  rax,       qword[rbp-272]
     sub                  rax,                    1
     mov       qword[rbp-272],                  rax
     mov                  rcx,       qword[rbp-272]
     mov        qword[rbp-32],                  rcx
	jmp	@makeHeap.4.ForIter
@makeHeap.4.ForIter:
	jmp	@makeHeap.6.ForCon
@makeHeap.6.ForCon:
     cmp        qword[rbp-32],                    0
     mov                  rax,                    0
   setge                   al
     mov       qword[rbp-280],                  rax
     mov                  rcx,       qword[rbp-280]
     mov       qword[rbp-288],                  rcx
     cmp       qword[rbp-288],                    1
	je	@makeHeap.5.ForBody
	jne	@makeHeap.7.ForExit
@makeHeap.7.ForExit:
     mov                  rax,                    0
	jmp	@makeHeap.2.exit
@makeHeap.2.exit:
     add                  rsp,                  296
     pop                  rbp
     ret


 section                 .bss
@a:
  	resq 		1
@n:
  	resq 		1


 section                .data
      dq                    1
__const_str0:
      db " ",0
      dq                    1
__const_str1:
      db "",10,"",0






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

