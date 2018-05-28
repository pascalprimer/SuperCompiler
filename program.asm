  global                 main
  extern	malloc


 section                .text
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   40
     mov        qword[@total],                    0
     mov            qword[@h],                   99
     mov            qword[@i],                  100
     mov            qword[@j],                  101
     mov            qword[@k],                  102
     add                  rsp,                   40
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                  976
@main.1.enter:
     sub                  rsp,                    8
call	getInt
     add                  rsp,                    8
     mov        qword[rbp-16],                  rax
     mov                  rcx,        qword[rbp-16]
     mov            qword[@N],                  rcx
     mov        qword[rbp-32],                    1
jmp	@main.6.ForCon
@main.5.ForBody:
     mov        qword[rbp-40],                    1
jmp	@main.10.ForCon
@main.9.ForBody:
     mov        qword[rbp-48],                    1
jmp	@main.14.ForCon
@main.13.ForBody:
     mov        qword[rbp-56],                    1
jmp	@main.18.ForCon
@main.17.ForBody:
     mov        qword[rbp-64],                    1
jmp	@main.22.ForCon
@main.21.ForBody:
     mov        qword[rbp-72],                    1
jmp	@main.26.ForCon
@main.25.ForBody:
     mov                  rcx,        qword[rbp-32]
     cmp                  rcx,        qword[rbp-40]
     mov                  rax,                    0
   setne                   al
     mov        qword[rbp-80],                  rax
     cmp        qword[rbp-80],                    0
je	@main.31.cmp_and
     mov                  rcx,        qword[rbp-32]
     cmp                  rcx,        qword[rbp-48]
     mov                  rax,                    0
   setne                   al
     mov        qword[rbp-88],                  rax
     cmp        qword[rbp-88],                    0
@main.31.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov        qword[rbp-96],                  rax
     cmp        qword[rbp-96],                    0
je	@main.32.cmp_and
     mov                  rcx,        qword[rbp-32]
     cmp                  rcx,        qword[rbp-56]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-104],                  rax
     cmp       qword[rbp-104],                    0
@main.32.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-112],                  rax
     cmp       qword[rbp-112],                    0
je	@main.33.cmp_and
     mov                  rcx,        qword[rbp-32]
     cmp                  rcx,        qword[rbp-64]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-120],                  rax
     cmp       qword[rbp-120],                    0
@main.33.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-128],                  rax
     cmp       qword[rbp-128],                    0
je	@main.34.cmp_and
     mov                  rcx,        qword[rbp-32]
     cmp                  rcx,        qword[rbp-72]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-136],                  rax
     cmp       qword[rbp-136],                    0
@main.34.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-144],                  rax
     cmp       qword[rbp-144],                    0
je	@main.35.cmp_and
     mov                  rcx,        qword[rbp-32]
     cmp                  rcx,            qword[@h]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-160],                  rax
     cmp       qword[rbp-160],                    0
@main.35.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-168],                  rax
     cmp       qword[rbp-168],                    0
je	@main.36.cmp_and
     mov                  rcx,        qword[rbp-32]
     cmp                  rcx,            qword[@i]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-184],                  rax
     cmp       qword[rbp-184],                    0
@main.36.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-192],                  rax
     cmp       qword[rbp-192],                    0
je	@main.37.cmp_and
     mov                  rcx,        qword[rbp-32]
     cmp                  rcx,            qword[@j]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-208],                  rax
     cmp       qword[rbp-208],                    0
@main.37.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-216],                  rax
     cmp       qword[rbp-216],                    0
je	@main.38.cmp_and
     mov                  rcx,        qword[rbp-32]
     cmp                  rcx,            qword[@k]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-232],                  rax
     cmp       qword[rbp-232],                    0
@main.38.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-240],                  rax
     cmp       qword[rbp-240],                    0
je	@main.39.cmp_and
     mov                  rcx,        qword[rbp-40]
     cmp                  rcx,        qword[rbp-48]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-248],                  rax
     cmp       qword[rbp-248],                    0
@main.39.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-256],                  rax
     cmp       qword[rbp-256],                    0
je	@main.40.cmp_and
     mov                  rcx,        qword[rbp-40]
     cmp                  rcx,        qword[rbp-56]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-264],                  rax
     cmp       qword[rbp-264],                    0
@main.40.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-272],                  rax
     cmp       qword[rbp-272],                    0
je	@main.41.cmp_and
     mov                  rcx,        qword[rbp-40]
     cmp                  rcx,        qword[rbp-64]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-280],                  rax
     cmp       qword[rbp-280],                    0
@main.41.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-288],                  rax
     cmp       qword[rbp-288],                    0
je	@main.42.cmp_and
     mov                  rcx,        qword[rbp-40]
     cmp                  rcx,        qword[rbp-72]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-296],                  rax
     cmp       qword[rbp-296],                    0
@main.42.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-304],                  rax
     cmp       qword[rbp-304],                    0
je	@main.43.cmp_and
     mov                  rcx,        qword[rbp-40]
     cmp                  rcx,            qword[@h]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-312],                  rax
     cmp       qword[rbp-312],                    0
@main.43.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-320],                  rax
     cmp       qword[rbp-320],                    0
je	@main.44.cmp_and
     mov                  rcx,        qword[rbp-40]
     cmp                  rcx,            qword[@i]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-328],                  rax
     cmp       qword[rbp-328],                    0
@main.44.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-336],                  rax
     cmp       qword[rbp-336],                    0
je	@main.45.cmp_and
     mov                  rcx,        qword[rbp-40]
     cmp                  rcx,            qword[@j]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-344],                  rax
     cmp       qword[rbp-344],                    0
@main.45.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-352],                  rax
     cmp       qword[rbp-352],                    0
je	@main.46.cmp_and
     mov                  rcx,        qword[rbp-40]
     cmp                  rcx,            qword[@k]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-360],                  rax
     cmp       qword[rbp-360],                    0
@main.46.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-368],                  rax
     cmp       qword[rbp-368],                    0
je	@main.47.cmp_and
     mov                  rcx,        qword[rbp-48]
     cmp                  rcx,        qword[rbp-56]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-376],                  rax
     cmp       qword[rbp-376],                    0
@main.47.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-384],                  rax
     cmp       qword[rbp-384],                    0
je	@main.48.cmp_and
     mov                  rcx,        qword[rbp-48]
     cmp                  rcx,        qword[rbp-64]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-392],                  rax
     cmp       qword[rbp-392],                    0
@main.48.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-400],                  rax
     cmp       qword[rbp-400],                    0
je	@main.49.cmp_and
     mov                  rcx,        qword[rbp-48]
     cmp                  rcx,        qword[rbp-72]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-408],                  rax
     cmp       qword[rbp-408],                    0
@main.49.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-416],                  rax
     cmp       qword[rbp-416],                    0
je	@main.50.cmp_and
     mov                  rcx,        qword[rbp-48]
     cmp                  rcx,            qword[@h]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-424],                  rax
     cmp       qword[rbp-424],                    0
@main.50.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-432],                  rax
     cmp       qword[rbp-432],                    0
je	@main.51.cmp_and
     mov                  rcx,        qword[rbp-48]
     cmp                  rcx,            qword[@i]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-440],                  rax
     cmp       qword[rbp-440],                    0
@main.51.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-448],                  rax
     cmp       qword[rbp-448],                    0
je	@main.52.cmp_and
     mov                  rcx,        qword[rbp-48]
     cmp                  rcx,            qword[@j]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-456],                  rax
     cmp       qword[rbp-456],                    0
@main.52.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-464],                  rax
     cmp       qword[rbp-464],                    0
je	@main.53.cmp_and
     mov                  rcx,        qword[rbp-48]
     cmp                  rcx,            qword[@k]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-472],                  rax
     cmp       qword[rbp-472],                    0
@main.53.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-480],                  rax
     cmp       qword[rbp-480],                    0
je	@main.54.cmp_and
     mov                  rcx,        qword[rbp-56]
     cmp                  rcx,        qword[rbp-64]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-488],                  rax
     cmp       qword[rbp-488],                    0
@main.54.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-496],                  rax
     cmp       qword[rbp-496],                    0
je	@main.55.cmp_and
     mov                  rcx,        qword[rbp-56]
     cmp                  rcx,        qword[rbp-72]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-504],                  rax
     cmp       qword[rbp-504],                    0
@main.55.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-512],                  rax
     cmp       qword[rbp-512],                    0
je	@main.56.cmp_and
     mov                  rcx,        qword[rbp-56]
     cmp                  rcx,            qword[@h]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-520],                  rax
     cmp       qword[rbp-520],                    0
@main.56.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-528],                  rax
     cmp       qword[rbp-528],                    0
je	@main.57.cmp_and
     mov                  rcx,        qword[rbp-56]
     cmp                  rcx,            qword[@i]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-536],                  rax
     cmp       qword[rbp-536],                    0
@main.57.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-544],                  rax
     cmp       qword[rbp-544],                    0
je	@main.58.cmp_and
     mov                  rcx,        qword[rbp-56]
     cmp                  rcx,            qword[@j]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-552],                  rax
     cmp       qword[rbp-552],                    0
@main.58.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-560],                  rax
     cmp       qword[rbp-560],                    0
je	@main.59.cmp_and
     mov                  rcx,        qword[rbp-56]
     cmp                  rcx,            qword[@k]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-568],                  rax
     cmp       qword[rbp-568],                    0
@main.59.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-576],                  rax
     cmp       qword[rbp-576],                    0
je	@main.60.cmp_and
     mov                  rcx,        qword[rbp-64]
     cmp                  rcx,        qword[rbp-72]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-584],                  rax
     cmp       qword[rbp-584],                    0
@main.60.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-592],                  rax
     cmp       qword[rbp-592],                    0
je	@main.61.cmp_and
     mov                  rcx,        qword[rbp-64]
     cmp                  rcx,            qword[@h]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-600],                  rax
     cmp       qword[rbp-600],                    0
@main.61.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-608],                  rax
     cmp       qword[rbp-608],                    0
je	@main.62.cmp_and
     mov                  rcx,        qword[rbp-64]
     cmp                  rcx,            qword[@i]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-616],                  rax
     cmp       qword[rbp-616],                    0
@main.62.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-624],                  rax
     cmp       qword[rbp-624],                    0
je	@main.63.cmp_and
     mov                  rcx,        qword[rbp-64]
     cmp                  rcx,            qword[@j]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-632],                  rax
     cmp       qword[rbp-632],                    0
@main.63.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-640],                  rax
     cmp       qword[rbp-640],                    0
je	@main.64.cmp_and
     mov                  rcx,        qword[rbp-64]
     cmp                  rcx,            qword[@k]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-648],                  rax
     cmp       qword[rbp-648],                    0
@main.64.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-656],                  rax
     cmp       qword[rbp-656],                    0
je	@main.65.cmp_and
     mov                  rcx,        qword[rbp-72]
     cmp                  rcx,            qword[@h]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-664],                  rax
     cmp       qword[rbp-664],                    0
@main.65.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-672],                  rax
     cmp       qword[rbp-672],                    0
je	@main.66.cmp_and
     mov                  rcx,        qword[rbp-72]
     cmp                  rcx,            qword[@i]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-680],                  rax
     cmp       qword[rbp-680],                    0
@main.66.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-688],                  rax
     cmp       qword[rbp-688],                    0
je	@main.67.cmp_and
     mov                  rcx,        qword[rbp-72]
     cmp                  rcx,            qword[@j]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-696],                  rax
     cmp       qword[rbp-696],                    0
@main.67.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-704],                  rax
     cmp       qword[rbp-704],                    0
je	@main.68.cmp_and
     mov                  rcx,        qword[rbp-72]
     cmp                  rcx,            qword[@k]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-712],                  rax
     cmp       qword[rbp-712],                    0
@main.68.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-720],                  rax
     cmp       qword[rbp-720],                    0
je	@main.69.cmp_and
     mov                  rcx,            qword[@i]
     mov       qword[rbp-728],                  rcx
     mov                  rcx,       qword[rbp-728]
     cmp                  rcx,            qword[@j]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-736],                  rax
     cmp       qword[rbp-736],                    0
@main.69.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-744],                  rax
     cmp       qword[rbp-744],                    0
je	@main.70.cmp_and
     mov                  rcx,            qword[@h]
     mov       qword[rbp-752],                  rcx
     mov                  rcx,       qword[rbp-752]
     cmp                  rcx,            qword[@k]
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-760],                  rax
     cmp       qword[rbp-760],                    0
@main.70.cmp_and:
     mov                  rax,                    0
   setne                   al
     mov       qword[rbp-768],                  rax
     mov                  rcx,       qword[rbp-768]
     mov       qword[rbp-776],                  rcx
     cmp       qword[rbp-776],                    1
je	@main.29.IfTrue
jne	@main.28.IfFalse
@main.29.IfTrue:
     mov                  rcx,        qword[@total]
     mov       qword[rbp-784],                  rcx
     add        qword[@total],                    1
jmp	@main.30.IfExit
@main.28.IfFalse:
@main.30.IfExit:
jmp	@main.24.ForIter
@main.24.ForIter:
     mov                  rcx,        qword[rbp-72]
     mov       qword[rbp-800],                  rcx
     add        qword[rbp-72],                    1
jmp	@main.26.ForCon
@main.26.ForCon:
     mov                  rcx,        qword[rbp-72]
     cmp                  rcx,            qword[@N]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-808],                  rax
     mov                  rcx,       qword[rbp-808]
     mov       qword[rbp-816],                  rcx
     cmp       qword[rbp-816],                    1
je	@main.25.ForBody
jne	@main.27.ForExit
@main.27.ForExit:
jmp	@main.20.ForIter
@main.20.ForIter:
     mov                  rcx,        qword[rbp-64]
     mov       qword[rbp-824],                  rcx
     add        qword[rbp-64],                    1
jmp	@main.22.ForCon
@main.22.ForCon:
     mov                  rcx,        qword[rbp-64]
     cmp                  rcx,            qword[@N]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-832],                  rax
     mov                  rcx,       qword[rbp-832]
     mov       qword[rbp-840],                  rcx
     cmp       qword[rbp-840],                    1
je	@main.21.ForBody
jne	@main.23.ForExit
@main.23.ForExit:
jmp	@main.16.ForIter
@main.16.ForIter:
     mov                  rcx,        qword[rbp-56]
     mov       qword[rbp-848],                  rcx
     add        qword[rbp-56],                    1
jmp	@main.18.ForCon
@main.18.ForCon:
     mov                  rcx,        qword[rbp-56]
     cmp                  rcx,            qword[@N]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-856],                  rax
     mov                  rcx,       qword[rbp-856]
     mov       qword[rbp-864],                  rcx
     cmp       qword[rbp-864],                    1
je	@main.17.ForBody
jne	@main.19.ForExit
@main.19.ForExit:
jmp	@main.12.ForIter
@main.12.ForIter:
     mov                  rcx,        qword[rbp-48]
     mov       qword[rbp-872],                  rcx
     add        qword[rbp-48],                    1
jmp	@main.14.ForCon
@main.14.ForCon:
     mov                  rcx,        qword[rbp-48]
     cmp                  rcx,            qword[@N]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-880],                  rax
     mov                  rcx,       qword[rbp-880]
     mov       qword[rbp-888],                  rcx
     cmp       qword[rbp-888],                    1
je	@main.13.ForBody
jne	@main.15.ForExit
@main.15.ForExit:
jmp	@main.8.ForIter
@main.8.ForIter:
     mov                  rcx,        qword[rbp-40]
     mov       qword[rbp-896],                  rcx
     add        qword[rbp-40],                    1
jmp	@main.10.ForCon
@main.10.ForCon:
     mov                  rcx,        qword[rbp-40]
     cmp                  rcx,            qword[@N]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-904],                  rax
     mov                  rcx,       qword[rbp-904]
     mov       qword[rbp-912],                  rcx
     cmp       qword[rbp-912],                    1
je	@main.9.ForBody
jne	@main.11.ForExit
@main.11.ForExit:
jmp	@main.4.ForIter
@main.4.ForIter:
     mov                  rcx,        qword[rbp-32]
     mov       qword[rbp-920],                  rcx
     add        qword[rbp-32],                    1
jmp	@main.6.ForCon
@main.6.ForCon:
     mov                  rcx,        qword[rbp-32]
     cmp                  rcx,            qword[@N]
     mov                  rax,                    0
   setle                   al
     mov       qword[rbp-928],                  rax
     mov                  rcx,       qword[rbp-928]
     mov       qword[rbp-936],                  rcx
     cmp       qword[rbp-936],                    1
je	@main.5.ForBody
jne	@main.7.ForExit
@main.7.ForExit:
     mov                  rdi,        qword[@total]
call	toString
     mov       qword[rbp-960],                  rax
     mov                  rdi,       qword[rbp-960]
call	println
     mov                  rax,                    0
jmp	@main.2.exit
@main.2.exit:
     add                  rsp,                  976
     pop                  rbp
     ret


 section                 .bss
@total   resq 1
@h   resq 1
@i   resq 1
@j   resq 1
@k   resq 1
@N   resq 1


 section                .data






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

