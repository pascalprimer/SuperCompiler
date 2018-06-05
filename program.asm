  global                 main
  extern	malloc


 section                .text
getPrime:
    push                  rbp
     mov                  rbp,                  rsp
     mov       qword[rbp-264],                  rdi
     cmp                  rdi,                    0
      jl @getPrime_purity_checkin_out
     cmp                  rdi,                  150
     jnl @getPrime_purity_checkin_out
     mov                  rdx,           @@getPrime
     mov                  rcx,       qword[rbp-264]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov                  rdx,           qword[rdx]
     cmp                  rdx,          -1887415157
      je @getPrime_purity_checkin_out
     mov                  rax,                  rdx
     pop                  rbp
     ret
@getPrime_purity_checkin_out:
     sub                  rsp,                  264
@getPrime.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                    2
     mov        qword[rbp-24],                    2
	jmp	@getPrime.5.ForCon
@getPrime.4.ForBody:
     mov                  rcx,            qword[@b]
     mov        qword[rbp-32],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-48],                  rcx
     shl        qword[rbp-48],                    3
     mov                  rax,        qword[rbp-32]
     add                  rax,        qword[rbp-48]
     mov        qword[rbp-32],                  rax
     mov                  rdx,        qword[rbp-32]
     cmp           qword[rdx],                    1
     mov                  rax,                    0
    sete                   al
     mov        qword[rbp-56],                  rax
     mov                  rcx,        qword[rbp-56]
     mov        qword[rbp-64],                  rcx
     cmp        qword[rbp-64],                    1
	je	@getPrime.8.IfTrue
	jmp	@getPrime.7.IfFalse
@getPrime.8.IfTrue:
     mov                  rcx,          qword[@tmp]
     mov        qword[rbp-72],                  rcx
     mov                  rcx,          qword[@tmp]
     mov        qword[rbp-88],                  rcx
     mov                  rdx,        qword[rbp-88]
     mov                  rcx,           qword[rdx]
     mov        qword[rbp-96],                  rcx
     mov                  rax,        qword[rbp-96]
     add                  rax,                    1
     mov        qword[rbp-96],                  rax
     mov                  rdx,        qword[rbp-72]
     mov                  rcx,        qword[rbp-96]
     mov           qword[rdx],                  rcx
     mov                  rcx,          qword[@tmp]
     mov       qword[rbp-104],                  rcx
     mov                  rcx,        qword[@prime]
     mov       qword[rbp-112],                  rcx
     mov                  rdx,       qword[rbp-104]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-128],                  rcx
     shl       qword[rbp-128],                    3
     mov                  rax,       qword[rbp-112]
     add                  rax,       qword[rbp-128]
     mov       qword[rbp-112],                  rax
     mov                  rdx,       qword[rbp-112]
     mov                  rcx,        qword[rbp-24]
     mov           qword[rdx],                  rcx
     mov                  rcx,          qword[@gps]
     mov       qword[rbp-136],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-152],                  rcx
     shl       qword[rbp-152],                    3
     mov                  rax,       qword[rbp-136]
     add                  rax,       qword[rbp-152]
     mov       qword[rbp-136],                  rax
     mov                  rcx,          qword[@tmp]
     mov       qword[rbp-160],                  rcx
     mov                  rdx,       qword[rbp-160]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-168],                  rcx
     mov                  rdx,       qword[rbp-136]
     mov                  rcx,       qword[rbp-168]
     mov           qword[rdx],                  rcx
	jmp	@getPrime.9.IfExit
@getPrime.7.IfFalse:
@getPrime.9.IfExit:
	jmp	@getPrime.12.ForCon
@getPrime.11.ForBody:
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-176],                  rcx
     mov                  rax,       qword[rbp-176]
    imul                  rax,        qword[rbp-16]
     mov       qword[rbp-176],                  rax
     mov                  rcx,            qword[@b]
     mov       qword[rbp-184],                  rcx
     mov                  rcx,       qword[rbp-176]
     mov       qword[rbp-192],                  rcx
     shl       qword[rbp-192],                    3
     mov                  rax,       qword[rbp-184]
     add                  rax,       qword[rbp-192]
     mov       qword[rbp-184],                  rax
     mov                  rdx,       qword[rbp-184]
     mov           qword[rdx],                    0
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-200],                  rcx
     mov                  rax,       qword[rbp-200]
     add                  rax,                    1
     mov       qword[rbp-200],                  rax
     mov                  rcx,       qword[rbp-200]
     mov        qword[rbp-16],                  rcx
@getPrime.12.ForCon:
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-208],                  rcx
     mov                  rax,       qword[rbp-208]
    imul                  rax,        qword[rbp-16]
     mov       qword[rbp-208],                  rax
     mov                  rcx,       qword[rbp-208]
     cmp                  rcx,         qword[rbp-8]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-216],                  rax
     mov                  rcx,       qword[rbp-216]
     mov       qword[rbp-224],                  rcx
     cmp       qword[rbp-224],                    1
	je	@getPrime.11.ForBody
     mov        qword[rbp-16],                    2
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-232],                  rcx
     mov                  rax,       qword[rbp-232]
     add                  rax,                    1
     mov       qword[rbp-232],                  rax
     mov                  rcx,       qword[rbp-232]
     mov        qword[rbp-24],                  rcx
@getPrime.5.ForCon:
     mov                  rcx,        qword[rbp-24]
     cmp                  rcx,         qword[rbp-8]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-240],                  rax
     mov                  rcx,       qword[rbp-240]
     mov       qword[rbp-248],                  rcx
     cmp       qword[rbp-248],                    1
	je	@getPrime.4.ForBody
     add                  rsp,                  264
     mov                  rdi,                  rax
     cmp       qword[rbp-264],                    0
      jl @getPrime_purity_addition_out
     cmp       qword[rbp-264],                  150
     jnl @getPrime_purity_addition_out
     mov                  rdx,           @@getPrime
     mov                  rcx,       qword[rbp-264]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov           qword[rdx],                  rax
     mov                  rax,                  rdi
     pop                  rbp
     ret
@getPrime_purity_addition_out:
     pop                  rbp
     ret
origin:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  176
@origin.1.enter:
     mov         qword[rbp-8],                  rdi
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-16],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-24],                  rcx
     mov                  rax,        qword[rbp-16]
     add                  rax,                    1
     mov        qword[rbp-16],                  rax
     shl        qword[rbp-16],                    3
    push                  rdi
     sub                  rsp,                    8
     mov                  rdi,        qword[rbp-16]
    call               malloc
     add                  rsp,                    8
     pop                  rdi
     mov        qword[rbp-32],                  rax
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
     mov       qword[@result],                  rcx
     mov            qword[@i],                    0
	jmp	@origin.5.ForCon
@origin.4.ForBody:
     mov                  rcx,       qword[@result]
     mov        qword[rbp-56],                  rcx
     mov                  rcx,            qword[@i]
     mov        qword[rbp-64],                  rcx
     shl        qword[rbp-64],                    3
     mov                  rax,        qword[rbp-56]
     add                  rax,        qword[rbp-64]
     mov        qword[rbp-56],                  rax
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-72],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov        qword[rbp-80],                  rcx
     mov                  rax,        qword[rbp-72]
     add                  rax,                    1
     mov        qword[rbp-72],                  rax
     shl        qword[rbp-72],                    3
    push                  rdi
     sub                  rsp,                    8
     mov                  rdi,        qword[rbp-72]
    call               malloc
     add                  rsp,                    8
     pop                  rdi
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
     mov                  rdx,        qword[rbp-56]
     mov                  rcx,        qword[rbp-88]
     mov           qword[rdx],                  rcx
     mov            qword[@j],                    0
	jmp	@origin.9.ForCon
@origin.8.ForBody:
     mov                  rcx,       qword[@result]
     mov       qword[rbp-104],                  rcx
     mov                  rcx,            qword[@i]
     mov       qword[rbp-112],                  rcx
     shl       qword[rbp-112],                    3
     mov                  rax,       qword[rbp-104]
     add                  rax,       qword[rbp-112]
     mov       qword[rbp-104],                  rax
     mov                  rdx,       qword[rbp-104]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-120],                  rcx
     mov                  rcx,            qword[@j]
     mov       qword[rbp-128],                  rcx
     shl       qword[rbp-128],                    3
     mov                  rax,       qword[rbp-120]
     add                  rax,       qword[rbp-128]
     mov       qword[rbp-120],                  rax
     mov                  rdx,       qword[rbp-120]
     mov           qword[rdx],                    0
     mov                  rcx,            qword[@j]
     mov       qword[rbp-136],                  rcx
     add            qword[@j],                    1
@origin.9.ForCon:
     mov                  rcx,            qword[@j]
     cmp                  rcx,         qword[rbp-8]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-144],                  rax
     mov                  rcx,       qword[rbp-144]
     mov       qword[rbp-152],                  rcx
     cmp       qword[rbp-152],                    1
	je	@origin.8.ForBody
     mov                  rcx,            qword[@i]
     mov       qword[rbp-160],                  rcx
     add            qword[@i],                    1
@origin.5.ForCon:
     mov                  rcx,            qword[@i]
     cmp                  rcx,         qword[rbp-8]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-168],                  rax
     mov                  rcx,       qword[rbp-168]
     mov       qword[rbp-176],                  rcx
     cmp       qword[rbp-176],                    1
	je	@origin.4.ForBody
     add                  rsp,                  176
     pop                  rbp
     ret
getResult:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  512
@getResult.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                  rsi
     mov        qword[rbp-24],                  rdx
     mov                  rcx,       qword[@result]
     mov        qword[rbp-32],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov        qword[rbp-48],                  rcx
     shl        qword[rbp-48],                    3
     mov                  rax,        qword[rbp-32]
     add                  rax,        qword[rbp-48]
     mov        qword[rbp-32],                  rax
     mov                  rdx,        qword[rbp-32]
     mov                  rcx,           qword[rdx]
     mov        qword[rbp-56],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-64],                  rcx
     shl        qword[rbp-64],                    3
     mov                  rax,        qword[rbp-56]
     add                  rax,        qword[rbp-64]
     mov        qword[rbp-56],                  rax
     mov                  rdx,        qword[rbp-56]
     cmp           qword[rdx],                   -1
     mov                  rax,                    0
    sete                   al
     mov        qword[rbp-72],                  rax
     mov                  rcx,        qword[rbp-72]
     mov        qword[rbp-80],                  rcx
     cmp        qword[rbp-80],                    1
	je	@getResult.4.IfTrue
	jmp	@getResult.3.IfFalse
@getResult.4.IfTrue:
     mov                  rcx,        qword[@prime]
     mov        qword[rbp-88],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-104],                  rcx
     shl       qword[rbp-104],                    3
     mov                  rax,        qword[rbp-88]
     add                  rax,       qword[rbp-104]
     mov        qword[rbp-88],                  rax
     mov                  rdx,        qword[rbp-88]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-112],                  rcx
     mov                  rax,       qword[rbp-112]
    imul                  rax,                    2
     mov       qword[rbp-112],                  rax
     mov                  rcx,        qword[@prime]
     mov       qword[rbp-120],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-128],                  rcx
     shl       qword[rbp-128],                    3
     mov                  rax,       qword[rbp-120]
     add                  rax,       qword[rbp-128]
     mov       qword[rbp-120],                  rax
     mov                  rcx,       qword[rbp-112]
     mov       qword[rbp-136],                  rcx
     mov                  rdx,       qword[rbp-120]
     mov                  rax,       qword[rbp-136]
     sub                  rax,           qword[rdx]
     mov       qword[rbp-136],                  rax
     mov                  rcx,       qword[rbp-136]
     cmp                  rcx,         qword[rbp-8]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-144],                  rax
     mov                  rcx,       qword[rbp-144]
     mov       qword[rbp-152],                  rcx
     cmp       qword[rbp-152],                    1
	je	@getResult.7.IfTrue
	jmp	@getResult.6.IfFalse
@getResult.7.IfTrue:
     mov                  rcx,        qword[@prime]
     mov       qword[rbp-160],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-168],                  rcx
     shl       qword[rbp-168],                    3
     mov                  rax,       qword[rbp-160]
     add                  rax,       qword[rbp-168]
     mov       qword[rbp-160],                  rax
     mov                  rdx,       qword[rbp-160]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-176],                  rcx
     mov                  rax,       qword[rbp-176]
    imul                  rax,                    2
     mov       qword[rbp-176],                  rax
     mov                  rcx,        qword[@prime]
     mov       qword[rbp-184],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-192],                  rcx
     shl       qword[rbp-192],                    3
     mov                  rax,       qword[rbp-184]
     add                  rax,       qword[rbp-192]
     mov       qword[rbp-184],                  rax
     mov                  rcx,       qword[rbp-176]
     mov       qword[rbp-200],                  rcx
     mov                  rdx,       qword[rbp-184]
     mov                  rax,       qword[rbp-200]
     sub                  rax,           qword[rdx]
     mov       qword[rbp-200],                  rax
     mov                  rcx,            qword[@b]
     mov       qword[rbp-208],                  rcx
     mov                  rcx,       qword[rbp-200]
     mov       qword[rbp-224],                  rcx
     shl       qword[rbp-224],                    3
     mov                  rax,       qword[rbp-208]
     add                  rax,       qword[rbp-224]
     mov       qword[rbp-208],                  rax
     mov                  rdx,       qword[rbp-208]
     cmp           qword[rdx],                    0
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-232],                  rax
     mov                  rcx,       qword[rbp-232]
     mov       qword[rbp-240],                  rcx
     cmp       qword[rbp-240],                    1
	je	@getResult.10.IfTrue
	jmp	@getResult.9.IfFalse
@getResult.10.IfTrue:
     mov                  rcx,       qword[@result]
     mov       qword[rbp-248],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-256],                  rcx
     shl       qword[rbp-256],                    3
     mov                  rax,       qword[rbp-248]
     add                  rax,       qword[rbp-256]
     mov       qword[rbp-248],                  rax
     mov                  rdx,       qword[rbp-248]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-264],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-272],                  rcx
     shl       qword[rbp-272],                    3
     mov                  rax,       qword[rbp-264]
     add                  rax,       qword[rbp-272]
     mov       qword[rbp-264],                  rax
     mov                  rcx,        qword[@prime]
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
     mov                  rax,       qword[rbp-296]
    imul                  rax,                    2
     mov       qword[rbp-296],                  rax
     mov                  rcx,        qword[@prime]
     mov       qword[rbp-304],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-312],                  rcx
     shl       qword[rbp-312],                    3
     mov                  rax,       qword[rbp-304]
     add                  rax,       qword[rbp-312]
     mov       qword[rbp-304],                  rax
     mov                  rcx,       qword[rbp-296]
     mov       qword[rbp-320],                  rcx
     mov                  rdx,       qword[rbp-304]
     mov                  rax,       qword[rbp-320]
     sub                  rax,           qword[rdx]
     mov       qword[rbp-320],                  rax
     mov                  rcx,          qword[@gps]
     mov       qword[rbp-328],                  rcx
     mov                  rcx,       qword[rbp-320]
     mov       qword[rbp-344],                  rcx
     shl       qword[rbp-344],                    3
     mov                  rax,       qword[rbp-328]
     add                  rax,       qword[rbp-344]
     mov       qword[rbp-328],                  rax
     mov                  rdi,         qword[rbp-8]
     mov                  rsi,        qword[rbp-24]
     mov                  rdx,       qword[rbp-328]
     mov                  rdx,           qword[rdx]
call	getResult
     mov       qword[rbp-376],                  rax
     mov                  rcx,       qword[rbp-376]
     mov       qword[rbp-384],                  rcx
     mov                  rcx,       qword[rbp-384]
     mov       qword[rbp-392],                  rcx
     mov                  rax,       qword[rbp-392]
     add                  rax,                    1
     mov       qword[rbp-392],                  rax
     mov                  rdx,       qword[rbp-264]
     mov                  rcx,       qword[rbp-392]
     mov           qword[rdx],                  rcx
	jmp	@getResult.11.IfExit
@getResult.9.IfFalse:
@getResult.11.IfExit:
	jmp	@getResult.8.IfExit
@getResult.6.IfFalse:
@getResult.8.IfExit:
	jmp	@getResult.5.IfExit
@getResult.3.IfFalse:
@getResult.5.IfExit:
     mov                  rcx,       qword[@result]
     mov       qword[rbp-400],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-408],                  rcx
     shl       qword[rbp-408],                    3
     mov                  rax,       qword[rbp-400]
     add                  rax,       qword[rbp-408]
     mov       qword[rbp-400],                  rax
     mov                  rdx,       qword[rbp-400]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-416],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-424],                  rcx
     shl       qword[rbp-424],                    3
     mov                  rax,       qword[rbp-416]
     add                  rax,       qword[rbp-424]
     mov       qword[rbp-416],                  rax
     mov                  rdx,       qword[rbp-416]
     cmp           qword[rdx],                   -1
     mov                  rax,                    0
    sete                   al
     mov       qword[rbp-432],                  rax
     mov                  rcx,       qword[rbp-432]
     mov       qword[rbp-440],                  rcx
     cmp       qword[rbp-440],                    1
	je	@getResult.13.IfTrue
	jmp	@getResult.12.IfFalse
@getResult.13.IfTrue:
     mov                  rcx,       qword[@result]
     mov       qword[rbp-448],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-456],                  rcx
     shl       qword[rbp-456],                    3
     mov                  rax,       qword[rbp-448]
     add                  rax,       qword[rbp-456]
     mov       qword[rbp-448],                  rax
     mov                  rdx,       qword[rbp-448]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-464],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-472],                  rcx
     shl       qword[rbp-472],                    3
     mov                  rax,       qword[rbp-464]
     add                  rax,       qword[rbp-472]
     mov       qword[rbp-464],                  rax
     mov                  rdx,       qword[rbp-464]
     mov           qword[rdx],                    1
	jmp	@getResult.14.IfExit
@getResult.12.IfFalse:
@getResult.14.IfExit:
     mov                  rcx,       qword[@result]
     mov       qword[rbp-480],                  rcx
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-488],                  rcx
     shl       qword[rbp-488],                    3
     mov                  rax,       qword[rbp-480]
     add                  rax,       qword[rbp-488]
     mov       qword[rbp-480],                  rax
     mov                  rdx,       qword[rbp-480]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-496],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-504],                  rcx
     shl       qword[rbp-504],                    3
     mov                  rax,       qword[rbp-496]
     add                  rax,       qword[rbp-504]
     mov       qword[rbp-496],                  rax
     mov                  rdx,       qword[rbp-496]
     mov                  rax,           qword[rdx]
     add                  rsp,                  512
     pop                  rbp
     ret
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  144
     mov                  rdi,                  150
    call               malloc
     mov         qword[rbp-8],                  rax
     mov                  rcx,         qword[rbp-8]
     mov    qword[@@getPrime],                  rcx
     mov    qword[@@getPrime],          -1887415157
     mov  qword[@@getPrime+8],          -1887415157
     mov qword[@@getPrime+16],          -1887415157
     mov qword[@@getPrime+24],          -1887415157
     mov qword[@@getPrime+32],          -1887415157
     mov qword[@@getPrime+40],          -1887415157
     mov qword[@@getPrime+48],          -1887415157
     mov qword[@@getPrime+56],          -1887415157
     mov qword[@@getPrime+64],          -1887415157
     mov qword[@@getPrime+72],          -1887415157
     mov qword[@@getPrime+80],          -1887415157
     mov qword[@@getPrime+88],          -1887415157
     mov qword[@@getPrime+96],          -1887415157
     mov qword[@@getPrime+104],          -1887415157
     mov qword[@@getPrime+112],          -1887415157
     mov qword[@@getPrime+120],          -1887415157
     mov qword[@@getPrime+128],          -1887415157
     mov qword[@@getPrime+136],          -1887415157
     mov qword[@@getPrime+144],          -1887415157
     mov qword[@@getPrime+152],          -1887415157
     mov qword[@@getPrime+160],          -1887415157
     mov qword[@@getPrime+168],          -1887415157
     mov qword[@@getPrime+176],          -1887415157
     mov qword[@@getPrime+184],          -1887415157
     mov qword[@@getPrime+192],          -1887415157
     mov qword[@@getPrime+200],          -1887415157
     mov qword[@@getPrime+208],          -1887415157
     mov qword[@@getPrime+216],          -1887415157
     mov qword[@@getPrime+224],          -1887415157
     mov qword[@@getPrime+232],          -1887415157
     mov qword[@@getPrime+240],          -1887415157
     mov qword[@@getPrime+248],          -1887415157
     mov qword[@@getPrime+256],          -1887415157
     mov qword[@@getPrime+264],          -1887415157
     mov qword[@@getPrime+272],          -1887415157
     mov qword[@@getPrime+280],          -1887415157
     mov qword[@@getPrime+288],          -1887415157
     mov qword[@@getPrime+296],          -1887415157
     mov qword[@@getPrime+304],          -1887415157
     mov qword[@@getPrime+312],          -1887415157
     mov qword[@@getPrime+320],          -1887415157
     mov qword[@@getPrime+328],          -1887415157
     mov qword[@@getPrime+336],          -1887415157
     mov qword[@@getPrime+344],          -1887415157
     mov qword[@@getPrime+352],          -1887415157
     mov qword[@@getPrime+360],          -1887415157
     mov qword[@@getPrime+368],          -1887415157
     mov qword[@@getPrime+376],          -1887415157
     mov qword[@@getPrime+384],          -1887415157
     mov qword[@@getPrime+392],          -1887415157
     mov qword[@@getPrime+400],          -1887415157
     mov qword[@@getPrime+408],          -1887415157
     mov qword[@@getPrime+416],          -1887415157
     mov qword[@@getPrime+424],          -1887415157
     mov qword[@@getPrime+432],          -1887415157
     mov qword[@@getPrime+440],          -1887415157
     mov qword[@@getPrime+448],          -1887415157
     mov qword[@@getPrime+456],          -1887415157
     mov qword[@@getPrime+464],          -1887415157
     mov qword[@@getPrime+472],          -1887415157
     mov qword[@@getPrime+480],          -1887415157
     mov qword[@@getPrime+488],          -1887415157
     mov qword[@@getPrime+496],          -1887415157
     mov qword[@@getPrime+504],          -1887415157
     mov qword[@@getPrime+512],          -1887415157
     mov qword[@@getPrime+520],          -1887415157
     mov qword[@@getPrime+528],          -1887415157
     mov qword[@@getPrime+536],          -1887415157
     mov qword[@@getPrime+544],          -1887415157
     mov qword[@@getPrime+552],          -1887415157
     mov qword[@@getPrime+560],          -1887415157
     mov qword[@@getPrime+568],          -1887415157
     mov qword[@@getPrime+576],          -1887415157
     mov qword[@@getPrime+584],          -1887415157
     mov qword[@@getPrime+592],          -1887415157
     mov qword[@@getPrime+600],          -1887415157
     mov qword[@@getPrime+608],          -1887415157
     mov qword[@@getPrime+616],          -1887415157
     mov qword[@@getPrime+624],          -1887415157
     mov qword[@@getPrime+632],          -1887415157
     mov qword[@@getPrime+640],          -1887415157
     mov qword[@@getPrime+648],          -1887415157
     mov qword[@@getPrime+656],          -1887415157
     mov qword[@@getPrime+664],          -1887415157
     mov qword[@@getPrime+672],          -1887415157
     mov qword[@@getPrime+680],          -1887415157
     mov qword[@@getPrime+688],          -1887415157
     mov qword[@@getPrime+696],          -1887415157
     mov qword[@@getPrime+704],          -1887415157
     mov qword[@@getPrime+712],          -1887415157
     mov qword[@@getPrime+720],          -1887415157
     mov qword[@@getPrime+728],          -1887415157
     mov qword[@@getPrime+736],          -1887415157
     mov qword[@@getPrime+744],          -1887415157
     mov qword[@@getPrime+752],          -1887415157
     mov qword[@@getPrime+760],          -1887415157
     mov qword[@@getPrime+768],          -1887415157
     mov qword[@@getPrime+776],          -1887415157
     mov qword[@@getPrime+784],          -1887415157
     mov qword[@@getPrime+792],          -1887415157
     mov qword[@@getPrime+800],          -1887415157
     mov qword[@@getPrime+808],          -1887415157
     mov qword[@@getPrime+816],          -1887415157
     mov qword[@@getPrime+824],          -1887415157
     mov qword[@@getPrime+832],          -1887415157
     mov qword[@@getPrime+840],          -1887415157
     mov qword[@@getPrime+848],          -1887415157
     mov qword[@@getPrime+856],          -1887415157
     mov qword[@@getPrime+864],          -1887415157
     mov qword[@@getPrime+872],          -1887415157
     mov qword[@@getPrime+880],          -1887415157
     mov qword[@@getPrime+888],          -1887415157
     mov qword[@@getPrime+896],          -1887415157
     mov qword[@@getPrime+904],          -1887415157
     mov qword[@@getPrime+912],          -1887415157
     mov qword[@@getPrime+920],          -1887415157
     mov qword[@@getPrime+928],          -1887415157
     mov qword[@@getPrime+936],          -1887415157
     mov qword[@@getPrime+944],          -1887415157
     mov qword[@@getPrime+952],          -1887415157
     mov qword[@@getPrime+960],          -1887415157
     mov qword[@@getPrime+968],          -1887415157
     mov qword[@@getPrime+976],          -1887415157
     mov qword[@@getPrime+984],          -1887415157
     mov qword[@@getPrime+992],          -1887415157
     mov qword[@@getPrime+1000],          -1887415157
     mov qword[@@getPrime+1008],          -1887415157
     mov qword[@@getPrime+1016],          -1887415157
     mov qword[@@getPrime+1024],          -1887415157
     mov qword[@@getPrime+1032],          -1887415157
     mov qword[@@getPrime+1040],          -1887415157
     mov qword[@@getPrime+1048],          -1887415157
     mov qword[@@getPrime+1056],          -1887415157
     mov qword[@@getPrime+1064],          -1887415157
     mov qword[@@getPrime+1072],          -1887415157
     mov qword[@@getPrime+1080],          -1887415157
     mov qword[@@getPrime+1088],          -1887415157
     mov qword[@@getPrime+1096],          -1887415157
     mov qword[@@getPrime+1104],          -1887415157
     mov qword[@@getPrime+1112],          -1887415157
     mov qword[@@getPrime+1120],          -1887415157
     mov qword[@@getPrime+1128],          -1887415157
     mov qword[@@getPrime+1136],          -1887415157
     mov qword[@@getPrime+1144],          -1887415157
     mov qword[@@getPrime+1152],          -1887415157
     mov qword[@@getPrime+1160],          -1887415157
     mov qword[@@getPrime+1168],          -1887415157
     mov qword[@@getPrime+1176],          -1887415157
     mov qword[@@getPrime+1184],          -1887415157
     mov qword[@@getPrime+1192],          -1887415157
     mov        qword[rbp-24],                 1001
     mov        qword[rbp-32],                 1001
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
     mov            qword[@b],                  rcx
     mov        qword[rbp-56],                  170
     mov        qword[rbp-64],                  170
     mov                  rax,        qword[rbp-56]
     add                  rax,                    1
     mov        qword[rbp-56],                  rax
     shl        qword[rbp-56],                    3
     mov                  rdi,        qword[rbp-56]
    call               malloc
     mov        qword[rbp-72],                  rax
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
     mov        qword[@prime],                  rcx
     mov        qword[rbp-88],                 1001
     mov        qword[rbp-96],                 1001
     mov                  rax,        qword[rbp-88]
     add                  rax,                    1
     mov        qword[rbp-88],                  rax
     shl        qword[rbp-88],                    3
     mov                  rdi,        qword[rbp-88]
    call               malloc
     mov       qword[rbp-104],                  rax
     mov                  rdx,       qword[rbp-104]
     mov                  rcx,        qword[rbp-96]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-104]
     add                  rax,                    8
     mov       qword[rbp-104],                  rax
     mov                  rax,        qword[rbp-88]
     sub                  rax,                    8
     mov        qword[rbp-88],                  rax
     mov                  rcx,       qword[rbp-104]
     mov          qword[@gps],                  rcx
     mov       qword[rbp-120],                    1
     mov       qword[rbp-128],                    1
     mov                  rax,       qword[rbp-120]
     add                  rax,                    1
     mov       qword[rbp-120],                  rax
     shl       qword[rbp-120],                    3
     mov                  rdi,       qword[rbp-120]
    call               malloc
     mov       qword[rbp-136],                  rax
     mov                  rdx,       qword[rbp-136]
     mov                  rcx,       qword[rbp-128]
     mov           qword[rdx],                  rcx
     mov                  rax,       qword[rbp-136]
     add                  rax,                    8
     mov       qword[rbp-136],                  rax
     mov                  rax,       qword[rbp-120]
     sub                  rax,                    8
     mov       qword[rbp-120],                  rax
     mov                  rcx,       qword[rbp-136]
     mov          qword[@tmp],                  rcx
     add                  rsp,                  144
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                  768
@main.1.enter:
     mov                  rdi,                  170
call	origin
     mov            qword[@N],                 1000
call	getInt
     mov        qword[rbp-24],                  rax
     mov                  rcx,        qword[rbp-24]
     mov        qword[rbp-32],                  rcx
     mov                  rcx,        qword[rbp-32]
     mov            qword[@M],                  rcx
     mov   qword[@primeCount],                    0
     mov  qword[@resultCount],                    0
     mov                  rcx,          qword[@tmp]
     mov        qword[rbp-64],                  rcx
     mov                  rdx,        qword[rbp-64]
     mov           qword[rdx],                    0
     mov            qword[@i],                    0
	jmp	@main.5.ForCon
@main.4.ForBody:
     mov                  rcx,            qword[@b]
     mov        qword[rbp-88],                  rcx
     mov                  rcx,            qword[@i]
     mov       qword[rbp-104],                  rcx
     shl       qword[rbp-104],                    3
     mov                  rax,        qword[rbp-88]
     add                  rax,       qword[rbp-104]
     mov        qword[rbp-88],                  rax
     mov                  rdx,        qword[rbp-88]
     mov           qword[rdx],                    1
     mov                  rcx,          qword[@gps]
     mov       qword[rbp-112],                  rcx
     mov                  rcx,            qword[@i]
     mov       qword[rbp-128],                  rcx
     shl       qword[rbp-128],                    3
     mov                  rax,       qword[rbp-112]
     add                  rax,       qword[rbp-128]
     mov       qword[rbp-112],                  rax
     mov                  rdx,       qword[rbp-112]
     mov           qword[rdx],                    0
     mov                  rcx,            qword[@i]
     mov       qword[rbp-136],                  rcx
     mov                  rax,       qword[rbp-136]
     add                  rax,                    1
     mov       qword[rbp-136],                  rax
     mov                  rcx,       qword[rbp-136]
     mov            qword[@i],                  rcx
@main.5.ForCon:
     mov                  rcx,            qword[@N]
     mov       qword[rbp-144],                  rcx
     mov                  rax,       qword[rbp-144]
     add                  rax,                    1
     mov       qword[rbp-144],                  rax
     mov                  rcx,            qword[@i]
     cmp                  rcx,       qword[rbp-144]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-152],                  rax
     mov                  rcx,       qword[rbp-152]
     mov       qword[rbp-160],                  rcx
     cmp       qword[rbp-160],                    1
	je	@main.4.ForBody
     mov            qword[@i],                    0
	jmp	@main.9.ForCon
@main.8.ForBody:
     mov                  rcx,        qword[@prime]
     mov       qword[rbp-168],                  rcx
     mov                  rcx,            qword[@i]
     mov       qword[rbp-184],                  rcx
     shl       qword[rbp-184],                    3
     mov                  rax,       qword[rbp-168]
     add                  rax,       qword[rbp-184]
     mov       qword[rbp-168],                  rax
     mov                  rdx,       qword[rbp-168]
     mov           qword[rdx],                    0
     mov                  rcx,            qword[@i]
     mov       qword[rbp-192],                  rcx
     mov                  rax,       qword[rbp-192]
     add                  rax,                    1
     mov       qword[rbp-192],                  rax
     mov                  rcx,       qword[rbp-192]
     mov            qword[@i],                  rcx
@main.9.ForCon:
     mov                  rcx,            qword[@M]
     mov       qword[rbp-200],                  rcx
     mov                  rax,       qword[rbp-200]
     add                  rax,                    1
     mov       qword[rbp-200],                  rax
     mov                  rcx,            qword[@i]
     cmp                  rcx,       qword[rbp-200]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-208],                  rax
     mov                  rcx,       qword[rbp-208]
     mov       qword[rbp-216],                  rcx
     cmp       qword[rbp-216],                    1
	je	@main.8.ForBody
     mov            qword[@i],                    0
	jmp	@main.13.ForCon
@main.12.ForBody:
     mov            qword[@j],                    0
	jmp	@main.17.ForCon
@main.16.ForBody:
     mov                  rcx,       qword[@result]
     mov       qword[rbp-232],                  rcx
     mov                  rcx,            qword[@i]
     mov       qword[rbp-248],                  rcx
     shl       qword[rbp-248],                    3
     mov                  rax,       qword[rbp-232]
     add                  rax,       qword[rbp-248]
     mov       qword[rbp-232],                  rax
     mov                  rdx,       qword[rbp-232]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-256],                  rcx
     mov                  rcx,            qword[@j]
     mov       qword[rbp-264],                  rcx
     shl       qword[rbp-264],                    3
     mov                  rax,       qword[rbp-256]
     add                  rax,       qword[rbp-264]
     mov       qword[rbp-256],                  rax
     mov                  rdx,       qword[rbp-256]
     mov           qword[rdx],                   -1
     mov                  rcx,            qword[@j]
     mov       qword[rbp-272],                  rcx
     mov                  rax,       qword[rbp-272]
     add                  rax,                    1
     mov       qword[rbp-272],                  rax
     mov                  rcx,       qword[rbp-272]
     mov            qword[@j],                  rcx
@main.17.ForCon:
     mov                  rcx,            qword[@j]
     mov       qword[rbp-280],                  rcx
     mov                  rcx,       qword[rbp-280]
     cmp                  rcx,            qword[@M]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-288],                  rax
     mov                  rcx,       qword[rbp-288]
     mov       qword[rbp-296],                  rcx
     cmp       qword[rbp-296],                    1
	je	@main.16.ForBody
     mov                  rcx,            qword[@i]
     mov       qword[rbp-304],                  rcx
     mov                  rax,       qword[rbp-304]
     add                  rax,                    1
     mov       qword[rbp-304],                  rax
     mov                  rcx,       qword[rbp-304]
     mov            qword[@i],                  rcx
@main.13.ForCon:
     mov                  rcx,            qword[@i]
     mov       qword[rbp-312],                  rcx
     mov                  rcx,       qword[rbp-312]
     cmp                  rcx,            qword[@M]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-320],                  rax
     mov                  rcx,       qword[rbp-320]
     mov       qword[rbp-328],                  rcx
     cmp       qword[rbp-328],                    1
	je	@main.12.ForBody
     mov                  rdi,            qword[@N]
call	getPrime
     mov       qword[rbp-344],                  rax
     mov                  rcx,       qword[rbp-344]
     mov       qword[rbp-352],                  rcx
     mov                  rcx,          qword[@tmp]
     mov       qword[rbp-360],                  rcx
     mov                  rdx,       qword[rbp-360]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-368],                  rcx
     mov                  rcx,       qword[rbp-368]
     mov   qword[@primeCount],                  rcx
     mov            qword[@i],                    1
	jmp	@main.21.ForCon
@main.20.ForBody:
     mov                  rcx,            qword[@i]
     mov       qword[rbp-376],                  rcx
     mov                  rax,       qword[rbp-376]
     add                  rax,                    1
     mov       qword[rbp-376],                  rax
     mov                  rcx,       qword[rbp-376]
     mov            qword[@j],                  rcx
	jmp	@main.25.ForCon
@main.24.ForBody:
     mov                  rcx,       qword[@result]
     mov       qword[rbp-384],                  rcx
     mov                  rcx,            qword[@i]
     mov       qword[rbp-392],                  rcx
     shl       qword[rbp-392],                    3
     mov                  rax,       qword[rbp-384]
     add                  rax,       qword[rbp-392]
     mov       qword[rbp-384],                  rax
     mov                  rdx,       qword[rbp-384]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-400],                  rcx
     mov                  rcx,            qword[@j]
     mov       qword[rbp-408],                  rcx
     shl       qword[rbp-408],                    3
     mov                  rax,       qword[rbp-400]
     add                  rax,       qword[rbp-408]
     mov       qword[rbp-400],                  rax
     mov                  rdx,       qword[rbp-400]
     cmp           qword[rdx],                   -1
     mov                  rax,                    0
    sete                   al
     mov       qword[rbp-416],                  rax
     mov                  rcx,       qword[rbp-416]
     mov       qword[rbp-424],                  rcx
     cmp       qword[rbp-424],                    1
	je	@main.28.IfTrue
	jmp	@main.27.IfFalse
@main.28.IfTrue:
     mov                  rcx,       qword[@result]
     mov       qword[rbp-432],                  rcx
     mov                  rcx,            qword[@i]
     mov       qword[rbp-440],                  rcx
     shl       qword[rbp-440],                    3
     mov                  rax,       qword[rbp-432]
     add                  rax,       qword[rbp-440]
     mov       qword[rbp-432],                  rax
     mov                  rdx,       qword[rbp-432]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-448],                  rcx
     mov                  rcx,            qword[@j]
     mov       qword[rbp-456],                  rcx
     shl       qword[rbp-456],                    3
     mov                  rax,       qword[rbp-448]
     add                  rax,       qword[rbp-456]
     mov       qword[rbp-448],                  rax
     mov                  rdi,            qword[@N]
     mov                  rsi,            qword[@i]
     mov                  rdx,            qword[@j]
call	getResult
     mov       qword[rbp-488],                  rax
     mov                  rcx,       qword[rbp-488]
     mov       qword[rbp-496],                  rcx
     mov                  rdx,       qword[rbp-448]
     mov                  rcx,       qword[rbp-496]
     mov           qword[rdx],                  rcx
     mov                  rcx,       qword[@result]
     mov       qword[rbp-504],                  rcx
     mov                  rcx,            qword[@i]
     mov       qword[rbp-512],                  rcx
     shl       qword[rbp-512],                    3
     mov                  rax,       qword[rbp-504]
     add                  rax,       qword[rbp-512]
     mov       qword[rbp-504],                  rax
     mov                  rdx,       qword[rbp-504]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-520],                  rcx
     mov                  rcx,            qword[@j]
     mov       qword[rbp-528],                  rcx
     shl       qword[rbp-528],                    3
     mov                  rax,       qword[rbp-520]
     add                  rax,       qword[rbp-528]
     mov       qword[rbp-520],                  rax
     mov                  rdx,       qword[rbp-520]
     cmp           qword[rdx],                    1
     mov                  rax,                    0
    setg                   al
     mov       qword[rbp-536],                  rax
     mov                  rcx,       qword[rbp-536]
     mov       qword[rbp-544],                  rcx
     cmp       qword[rbp-544],                    1
	je	@main.31.IfTrue
	jmp	@main.30.IfFalse
@main.31.IfTrue:
     mov                  rcx,        qword[@prime]
     mov       qword[rbp-552],                  rcx
     mov                  rcx,            qword[@i]
     mov       qword[rbp-560],                  rcx
     shl       qword[rbp-560],                    3
     mov                  rax,       qword[rbp-552]
     add                  rax,       qword[rbp-560]
     mov       qword[rbp-552],                  rax
     mov                  rcx,        qword[@prime]
     mov       qword[rbp-568],                  rcx
     mov                  rcx,            qword[@j]
     mov       qword[rbp-576],                  rcx
     shl       qword[rbp-576],                    3
     mov                  rax,       qword[rbp-568]
     add                  rax,       qword[rbp-576]
     mov       qword[rbp-568],                  rax
     mov                  rcx,       qword[@result]
     mov       qword[rbp-584],                  rcx
     mov                  rcx,            qword[@i]
     mov       qword[rbp-592],                  rcx
     shl       qword[rbp-592],                    3
     mov                  rax,       qword[rbp-584]
     add                  rax,       qword[rbp-592]
     mov       qword[rbp-584],                  rax
     mov                  rdx,       qword[rbp-584]
     mov                  rcx,           qword[rdx]
     mov       qword[rbp-600],                  rcx
     mov                  rcx,            qword[@j]
     mov       qword[rbp-608],                  rcx
     shl       qword[rbp-608],                    3
     mov                  rax,       qword[rbp-600]
     add                  rax,       qword[rbp-608]
     mov       qword[rbp-600],                  rax
     mov                  rdx,       qword[rbp-552]
     mov                  rdi,           qword[rdx]
     mov                  rdx,       qword[rbp-568]
     mov                  rsi,           qword[rdx]
     mov                  rdx,       qword[rbp-600]
     mov                  rdx,           qword[rdx]
call	printF
     mov       qword[rbp-640],                  rax
     mov                  rcx,       qword[rbp-640]
     mov       qword[rbp-648],                  rcx
     mov                  rcx,  qword[@resultCount]
     mov       qword[rbp-656],                  rcx
     mov                  rax,       qword[rbp-656]
     add                  rax,                    1
     mov       qword[rbp-656],                  rax
     mov                  rcx,       qword[rbp-656]
     mov  qword[@resultCount],                  rcx
	jmp	@main.32.IfExit
@main.30.IfFalse:
@main.32.IfExit:
	jmp	@main.29.IfExit
@main.27.IfFalse:
@main.29.IfExit:
     mov                  rcx,            qword[@j]
     mov       qword[rbp-664],                  rcx
     mov                  rax,       qword[rbp-664]
     add                  rax,                    1
     mov       qword[rbp-664],                  rax
     mov                  rcx,       qword[rbp-664]
     mov            qword[@j],                  rcx
@main.25.ForCon:
     mov                  rcx,            qword[@j]
     mov       qword[rbp-672],                  rcx
     mov                  rcx,       qword[rbp-672]
     cmp                  rcx,   qword[@primeCount]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-680],                  rax
     mov                  rcx,       qword[rbp-680]
     mov       qword[rbp-688],                  rcx
     cmp       qword[rbp-688],                    1
	je	@main.24.ForBody
     mov                  rcx,            qword[@i]
     mov       qword[rbp-696],                  rcx
     mov                  rax,       qword[rbp-696]
     add                  rax,                    1
     mov       qword[rbp-696],                  rax
     mov                  rcx,       qword[rbp-696]
     mov            qword[@i],                  rcx
@main.21.ForCon:
     mov                  rcx,            qword[@i]
     mov       qword[rbp-704],                  rcx
     mov                  rcx,       qword[rbp-704]
     cmp                  rcx,   qword[@primeCount]
     mov                  rax,                    0
    setl                   al
     mov       qword[rbp-712],                  rax
     mov                  rcx,       qword[rbp-712]
     mov       qword[rbp-720],                  rcx
     cmp       qword[rbp-720],                    1
	je	@main.20.ForBody
     mov                  rdi,         __const_str2
call	print
     mov                  rdi,  qword[@resultCount]
call	toString
     mov       qword[rbp-744],                  rax
     mov                  rcx,       qword[rbp-744]
     mov       qword[rbp-752],                  rcx
     mov                  rdi,       qword[rbp-752]
call	println
     mov                  rax,                    0
     add                  rsp,                  768
     pop                  rbp
     ret
printF:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                  160
@printF.1.enter:
     mov         qword[rbp-8],                  rdi
     mov        qword[rbp-16],                  rsi
     mov        qword[rbp-24],                  rdx
     mov                  rdi,         qword[rbp-8]
call	toString
     mov        qword[rbp-40],                  rax
     mov                  rcx,        qword[rbp-40]
     mov        qword[rbp-48],                  rcx
     mov                  rdi,        qword[rbp-48]
call	print
	jmp	@printF.5.ForCon
@printF.4.ForBody:
     mov                  rdi,         __const_str0
call	print
     mov                  rdi,        qword[rbp-16]
call	toString
     mov        qword[rbp-80],                  rax
     mov                  rcx,        qword[rbp-80]
     mov        qword[rbp-88],                  rcx
     mov                  rdi,        qword[rbp-88]
call	print
     mov                  rcx,        qword[rbp-16]
     mov       qword[rbp-104],                  rcx
     mov                  rax,       qword[rbp-104]
    imul                  rax,                    2
     mov       qword[rbp-104],                  rax
     mov                  rcx,       qword[rbp-104]
     mov       qword[rbp-112],                  rcx
     mov                  rax,       qword[rbp-112]
     sub                  rax,         qword[rbp-8]
     mov       qword[rbp-112],                  rax
     mov                  rcx,       qword[rbp-112]
     mov        qword[rbp-16],                  rcx
     mov                  rcx,         qword[rbp-8]
     mov       qword[rbp-120],                  rcx
     mov                  rax,       qword[rbp-120]
     add                  rax,        qword[rbp-16]
     mov       qword[rbp-120],                  rax
     mov                  rcx,       qword[rbp-120]
     mov       qword[rbp-128],                  rcx
     mov                  rax,       qword[rbp-128]
     mov                  rcx,                    2
     cdq
    idiv                  ecx
     mov       qword[rbp-128],                  rax
     mov                  rcx,       qword[rbp-128]
     mov         qword[rbp-8],                  rcx
     mov                  rcx,        qword[rbp-24]
     mov       qword[rbp-136],                  rcx
     mov                  rax,       qword[rbp-136]
     sub                  rax,                    1
     mov       qword[rbp-136],                  rax
     mov                  rcx,       qword[rbp-136]
     mov        qword[rbp-24],                  rcx
@printF.5.ForCon:
     cmp        qword[rbp-24],                    0
     mov                  rax,                    0
    setg                   al
     mov       qword[rbp-144],                  rax
     mov                  rcx,       qword[rbp-144]
     mov       qword[rbp-152],                  rcx
     cmp       qword[rbp-152],                    1
	je	@printF.4.ForBody
     mov                  rdi,         __const_str1
call	print
     add                  rsp,                  160
     pop                  rbp
     ret


 section                 .bss
@N:
  	resq 		1
@M:
  	resq 		1
@i:
  	resq 		1
@j:
  	resq 		1
@primeCount:
  	resq 		1
@resultCount:
  	resq 		1
@b:
  	resq 		1
@prime:
  	resq 		1
@gps:
  	resq 		1
@tmp:
  	resq 		1
@result:
  	resq 		1
@@getPrime:
  	resq 		1


 section                .data
      dq                    1
__const_str0:
      db " ",0
      dq                    1
__const_str1:
      db "",10,"",0
      dq                    7
__const_str2:
      db "Total: ",0






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



