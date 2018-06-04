  global                 main
  extern	malloc


 section                .text
__global_declaration:
    push                  rbp
     mov                  rbp,                  rsp
     sub                  rsp,                   40
     mov                   r8,                  256
     mov                  rdi,                  256
     add                   r8,                    1
     shl                   r8,                    3
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
     mov                  rsi,                  rax
     mov           qword[rsi],                  rdi
     add                  rsi,                    8
     sub                   r8,                    8
     mov            qword[@s],                  rsi
     mov                  rdi,                  256
     mov                  rsi,                  256
     add                  rdi,                    1
     shl                  rdi,                    3
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  rdi
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                   r9,                  rax
     mov            qword[r9],                  rsi
     add                   r9,                    8
     sub                  rdi,                    8
     mov            qword[@c],                   r9
     mov           qword[@co],        __const_str29
     mov          qword[@a2q],       __const_str125
     mov          qword[@a2b],       __const_str126
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  100
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                  rsi,                  rax
     mov        qword[@@digt],                  rsi
     mov        qword[@@digt],          -1887415157
     mov      qword[@@digt+8],          -1887415157
     mov     qword[@@digt+16],          -1887415157
     mov     qword[@@digt+24],          -1887415157
     mov     qword[@@digt+32],          -1887415157
     mov     qword[@@digt+40],          -1887415157
     mov     qword[@@digt+48],          -1887415157
     mov     qword[@@digt+56],          -1887415157
     mov     qword[@@digt+64],          -1887415157
     mov     qword[@@digt+72],          -1887415157
     mov     qword[@@digt+80],          -1887415157
     mov     qword[@@digt+88],          -1887415157
     mov     qword[@@digt+96],          -1887415157
     mov    qword[@@digt+104],          -1887415157
     mov    qword[@@digt+112],          -1887415157
     mov    qword[@@digt+120],          -1887415157
     mov    qword[@@digt+128],          -1887415157
     mov    qword[@@digt+136],          -1887415157
     mov    qword[@@digt+144],          -1887415157
     mov    qword[@@digt+152],          -1887415157
     mov    qword[@@digt+160],          -1887415157
     mov    qword[@@digt+168],          -1887415157
     mov    qword[@@digt+176],          -1887415157
     mov    qword[@@digt+184],          -1887415157
     mov    qword[@@digt+192],          -1887415157
     mov    qword[@@digt+200],          -1887415157
     mov    qword[@@digt+208],          -1887415157
     mov    qword[@@digt+216],          -1887415157
     mov    qword[@@digt+224],          -1887415157
     mov    qword[@@digt+232],          -1887415157
     mov    qword[@@digt+240],          -1887415157
     mov    qword[@@digt+248],          -1887415157
     mov    qword[@@digt+256],          -1887415157
     mov    qword[@@digt+264],          -1887415157
     mov    qword[@@digt+272],          -1887415157
     mov    qword[@@digt+280],          -1887415157
     mov    qword[@@digt+288],          -1887415157
     mov    qword[@@digt+296],          -1887415157
     mov    qword[@@digt+304],          -1887415157
     mov    qword[@@digt+312],          -1887415157
     mov    qword[@@digt+320],          -1887415157
     mov    qword[@@digt+328],          -1887415157
     mov    qword[@@digt+336],          -1887415157
     mov    qword[@@digt+344],          -1887415157
     mov    qword[@@digt+352],          -1887415157
     mov    qword[@@digt+360],          -1887415157
     mov    qword[@@digt+368],          -1887415157
     mov    qword[@@digt+376],          -1887415157
     mov    qword[@@digt+384],          -1887415157
     mov    qword[@@digt+392],          -1887415157
     mov    qword[@@digt+400],          -1887415157
     mov    qword[@@digt+408],          -1887415157
     mov    qword[@@digt+416],          -1887415157
     mov    qword[@@digt+424],          -1887415157
     mov    qword[@@digt+432],          -1887415157
     mov    qword[@@digt+440],          -1887415157
     mov    qword[@@digt+448],          -1887415157
     mov    qword[@@digt+456],          -1887415157
     mov    qword[@@digt+464],          -1887415157
     mov    qword[@@digt+472],          -1887415157
     mov    qword[@@digt+480],          -1887415157
     mov    qword[@@digt+488],          -1887415157
     mov    qword[@@digt+496],          -1887415157
     mov    qword[@@digt+504],          -1887415157
     mov    qword[@@digt+512],          -1887415157
     mov    qword[@@digt+520],          -1887415157
     mov    qword[@@digt+528],          -1887415157
     mov    qword[@@digt+536],          -1887415157
     mov    qword[@@digt+544],          -1887415157
     mov    qword[@@digt+552],          -1887415157
     mov    qword[@@digt+560],          -1887415157
     mov    qword[@@digt+568],          -1887415157
     mov    qword[@@digt+576],          -1887415157
     mov    qword[@@digt+584],          -1887415157
     mov    qword[@@digt+592],          -1887415157
     mov    qword[@@digt+600],          -1887415157
     mov    qword[@@digt+608],          -1887415157
     mov    qword[@@digt+616],          -1887415157
     mov    qword[@@digt+624],          -1887415157
     mov    qword[@@digt+632],          -1887415157
     mov    qword[@@digt+640],          -1887415157
     mov    qword[@@digt+648],          -1887415157
     mov    qword[@@digt+656],          -1887415157
     mov    qword[@@digt+664],          -1887415157
     mov    qword[@@digt+672],          -1887415157
     mov    qword[@@digt+680],          -1887415157
     mov    qword[@@digt+688],          -1887415157
     mov    qword[@@digt+696],          -1887415157
     mov    qword[@@digt+704],          -1887415157
     mov    qword[@@digt+712],          -1887415157
     mov    qword[@@digt+720],          -1887415157
     mov    qword[@@digt+728],          -1887415157
     mov    qword[@@digt+736],          -1887415157
     mov    qword[@@digt+744],          -1887415157
     mov    qword[@@digt+752],          -1887415157
     mov    qword[@@digt+760],          -1887415157
     mov    qword[@@digt+768],          -1887415157
     mov    qword[@@digt+776],          -1887415157
     mov    qword[@@digt+784],          -1887415157
     mov    qword[@@digt+792],          -1887415157
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  100
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                  rsi,                  rax
     mov          qword[@@s2],                  rsi
     mov          qword[@@s2],          -1887415157
     mov        qword[@@s2+8],          -1887415157
     mov       qword[@@s2+16],          -1887415157
     mov       qword[@@s2+24],          -1887415157
     mov       qword[@@s2+32],          -1887415157
     mov       qword[@@s2+40],          -1887415157
     mov       qword[@@s2+48],          -1887415157
     mov       qword[@@s2+56],          -1887415157
     mov       qword[@@s2+64],          -1887415157
     mov       qword[@@s2+72],          -1887415157
     mov       qword[@@s2+80],          -1887415157
     mov       qword[@@s2+88],          -1887415157
     mov       qword[@@s2+96],          -1887415157
     mov      qword[@@s2+104],          -1887415157
     mov      qword[@@s2+112],          -1887415157
     mov      qword[@@s2+120],          -1887415157
     mov      qword[@@s2+128],          -1887415157
     mov      qword[@@s2+136],          -1887415157
     mov      qword[@@s2+144],          -1887415157
     mov      qword[@@s2+152],          -1887415157
     mov      qword[@@s2+160],          -1887415157
     mov      qword[@@s2+168],          -1887415157
     mov      qword[@@s2+176],          -1887415157
     mov      qword[@@s2+184],          -1887415157
     mov      qword[@@s2+192],          -1887415157
     mov      qword[@@s2+200],          -1887415157
     mov      qword[@@s2+208],          -1887415157
     mov      qword[@@s2+216],          -1887415157
     mov      qword[@@s2+224],          -1887415157
     mov      qword[@@s2+232],          -1887415157
     mov      qword[@@s2+240],          -1887415157
     mov      qword[@@s2+248],          -1887415157
     mov      qword[@@s2+256],          -1887415157
     mov      qword[@@s2+264],          -1887415157
     mov      qword[@@s2+272],          -1887415157
     mov      qword[@@s2+280],          -1887415157
     mov      qword[@@s2+288],          -1887415157
     mov      qword[@@s2+296],          -1887415157
     mov      qword[@@s2+304],          -1887415157
     mov      qword[@@s2+312],          -1887415157
     mov      qword[@@s2+320],          -1887415157
     mov      qword[@@s2+328],          -1887415157
     mov      qword[@@s2+336],          -1887415157
     mov      qword[@@s2+344],          -1887415157
     mov      qword[@@s2+352],          -1887415157
     mov      qword[@@s2+360],          -1887415157
     mov      qword[@@s2+368],          -1887415157
     mov      qword[@@s2+376],          -1887415157
     mov      qword[@@s2+384],          -1887415157
     mov      qword[@@s2+392],          -1887415157
     mov      qword[@@s2+400],          -1887415157
     mov      qword[@@s2+408],          -1887415157
     mov      qword[@@s2+416],          -1887415157
     mov      qword[@@s2+424],          -1887415157
     mov      qword[@@s2+432],          -1887415157
     mov      qword[@@s2+440],          -1887415157
     mov      qword[@@s2+448],          -1887415157
     mov      qword[@@s2+456],          -1887415157
     mov      qword[@@s2+464],          -1887415157
     mov      qword[@@s2+472],          -1887415157
     mov      qword[@@s2+480],          -1887415157
     mov      qword[@@s2+488],          -1887415157
     mov      qword[@@s2+496],          -1887415157
     mov      qword[@@s2+504],          -1887415157
     mov      qword[@@s2+512],          -1887415157
     mov      qword[@@s2+520],          -1887415157
     mov      qword[@@s2+528],          -1887415157
     mov      qword[@@s2+536],          -1887415157
     mov      qword[@@s2+544],          -1887415157
     mov      qword[@@s2+552],          -1887415157
     mov      qword[@@s2+560],          -1887415157
     mov      qword[@@s2+568],          -1887415157
     mov      qword[@@s2+576],          -1887415157
     mov      qword[@@s2+584],          -1887415157
     mov      qword[@@s2+592],          -1887415157
     mov      qword[@@s2+600],          -1887415157
     mov      qword[@@s2+608],          -1887415157
     mov      qword[@@s2+616],          -1887415157
     mov      qword[@@s2+624],          -1887415157
     mov      qword[@@s2+632],          -1887415157
     mov      qword[@@s2+640],          -1887415157
     mov      qword[@@s2+648],          -1887415157
     mov      qword[@@s2+656],          -1887415157
     mov      qword[@@s2+664],          -1887415157
     mov      qword[@@s2+672],          -1887415157
     mov      qword[@@s2+680],          -1887415157
     mov      qword[@@s2+688],          -1887415157
     mov      qword[@@s2+696],          -1887415157
     mov      qword[@@s2+704],          -1887415157
     mov      qword[@@s2+712],          -1887415157
     mov      qword[@@s2+720],          -1887415157
     mov      qword[@@s2+728],          -1887415157
     mov      qword[@@s2+736],          -1887415157
     mov      qword[@@s2+744],          -1887415157
     mov      qword[@@s2+752],          -1887415157
     mov      qword[@@s2+760],          -1887415157
     mov      qword[@@s2+768],          -1887415157
     mov      qword[@@s2+776],          -1887415157
     mov      qword[@@s2+784],          -1887415157
     mov      qword[@@s2+792],          -1887415157
    push                   r8
    push                  rdi
    push                   r9
    push                  rsi
     sub                  rsp,                    8
     mov                  rdi,                  100
    call               malloc
     add                  rsp,                    8
     pop                  rsi
     pop                   r9
     pop                  rdi
     pop                   r8
     mov                  rsi,                  rax
     mov          qword[@@c2],                  rsi
     mov          qword[@@c2],          -1887415157
     mov        qword[@@c2+8],          -1887415157
     mov       qword[@@c2+16],          -1887415157
     mov       qword[@@c2+24],          -1887415157
     mov       qword[@@c2+32],          -1887415157
     mov       qword[@@c2+40],          -1887415157
     mov       qword[@@c2+48],          -1887415157
     mov       qword[@@c2+56],          -1887415157
     mov       qword[@@c2+64],          -1887415157
     mov       qword[@@c2+72],          -1887415157
     mov       qword[@@c2+80],          -1887415157
     mov       qword[@@c2+88],          -1887415157
     mov       qword[@@c2+96],          -1887415157
     mov      qword[@@c2+104],          -1887415157
     mov      qword[@@c2+112],          -1887415157
     mov      qword[@@c2+120],          -1887415157
     mov      qword[@@c2+128],          -1887415157
     mov      qword[@@c2+136],          -1887415157
     mov      qword[@@c2+144],          -1887415157
     mov      qword[@@c2+152],          -1887415157
     mov      qword[@@c2+160],          -1887415157
     mov      qword[@@c2+168],          -1887415157
     mov      qword[@@c2+176],          -1887415157
     mov      qword[@@c2+184],          -1887415157
     mov      qword[@@c2+192],          -1887415157
     mov      qword[@@c2+200],          -1887415157
     mov      qword[@@c2+208],          -1887415157
     mov      qword[@@c2+216],          -1887415157
     mov      qword[@@c2+224],          -1887415157
     mov      qword[@@c2+232],          -1887415157
     mov      qword[@@c2+240],          -1887415157
     mov      qword[@@c2+248],          -1887415157
     mov      qword[@@c2+256],          -1887415157
     mov      qword[@@c2+264],          -1887415157
     mov      qword[@@c2+272],          -1887415157
     mov      qword[@@c2+280],          -1887415157
     mov      qword[@@c2+288],          -1887415157
     mov      qword[@@c2+296],          -1887415157
     mov      qword[@@c2+304],          -1887415157
     mov      qword[@@c2+312],          -1887415157
     mov      qword[@@c2+320],          -1887415157
     mov      qword[@@c2+328],          -1887415157
     mov      qword[@@c2+336],          -1887415157
     mov      qword[@@c2+344],          -1887415157
     mov      qword[@@c2+352],          -1887415157
     mov      qword[@@c2+360],          -1887415157
     mov      qword[@@c2+368],          -1887415157
     mov      qword[@@c2+376],          -1887415157
     mov      qword[@@c2+384],          -1887415157
     mov      qword[@@c2+392],          -1887415157
     mov      qword[@@c2+400],          -1887415157
     mov      qword[@@c2+408],          -1887415157
     mov      qword[@@c2+416],          -1887415157
     mov      qword[@@c2+424],          -1887415157
     mov      qword[@@c2+432],          -1887415157
     mov      qword[@@c2+440],          -1887415157
     mov      qword[@@c2+448],          -1887415157
     mov      qword[@@c2+456],          -1887415157
     mov      qword[@@c2+464],          -1887415157
     mov      qword[@@c2+472],          -1887415157
     mov      qword[@@c2+480],          -1887415157
     mov      qword[@@c2+488],          -1887415157
     mov      qword[@@c2+496],          -1887415157
     mov      qword[@@c2+504],          -1887415157
     mov      qword[@@c2+512],          -1887415157
     mov      qword[@@c2+520],          -1887415157
     mov      qword[@@c2+528],          -1887415157
     mov      qword[@@c2+536],          -1887415157
     mov      qword[@@c2+544],          -1887415157
     mov      qword[@@c2+552],          -1887415157
     mov      qword[@@c2+560],          -1887415157
     mov      qword[@@c2+568],          -1887415157
     mov      qword[@@c2+576],          -1887415157
     mov      qword[@@c2+584],          -1887415157
     mov      qword[@@c2+592],          -1887415157
     mov      qword[@@c2+600],          -1887415157
     mov      qword[@@c2+608],          -1887415157
     mov      qword[@@c2+616],          -1887415157
     mov      qword[@@c2+624],          -1887415157
     mov      qword[@@c2+632],          -1887415157
     mov      qword[@@c2+640],          -1887415157
     mov      qword[@@c2+648],          -1887415157
     mov      qword[@@c2+656],          -1887415157
     mov      qword[@@c2+664],          -1887415157
     mov      qword[@@c2+672],          -1887415157
     mov      qword[@@c2+680],          -1887415157
     mov      qword[@@c2+688],          -1887415157
     mov      qword[@@c2+696],          -1887415157
     mov      qword[@@c2+704],          -1887415157
     mov      qword[@@c2+712],          -1887415157
     mov      qword[@@c2+720],          -1887415157
     mov      qword[@@c2+728],          -1887415157
     mov      qword[@@c2+736],          -1887415157
     mov      qword[@@c2+744],          -1887415157
     mov      qword[@@c2+752],          -1887415157
     mov      qword[@@c2+760],          -1887415157
     mov      qword[@@c2+768],          -1887415157
     mov      qword[@@c2+776],          -1887415157
     mov      qword[@@c2+784],          -1887415157
     mov      qword[@@c2+792],          -1887415157
     add                  rsp,                   40
     pop                  rbp
     ret
main:
    push                  rbp
     mov                  rbp,                  rsp
    call __global_declaration
     sub                  rsp,                   40
    push                  r12
    push                  rbx
@main.1.enter:
     mov                  rbx,                    0
     mov                  rsi,            qword[@c]
     mov           qword[rsi],        __const_str13
     mov                  rsi,            qword[@c]
     mov         qword[rsi+8],        __const_str14
     mov                  rsi,            qword[@c]
     mov        qword[rsi+16],        __const_str15
     mov                  rsi,            qword[@c]
     mov        qword[rsi+24],        __const_str16
     mov                  rsi,            qword[@c]
     mov        qword[rsi+32],        __const_str17
     mov                  rsi,            qword[@c]
     mov        qword[rsi+40],        __const_str18
     mov                  rsi,            qword[@c]
     mov        qword[rsi+48],        __const_str19
     mov                  rsi,            qword[@c]
     mov        qword[rsi+56],        __const_str20
     mov                  rsi,            qword[@c]
     mov        qword[rsi+64],        __const_str21
     mov                  rsi,            qword[@c]
     mov        qword[rsi+72],        __const_str22
     mov                  rsi,            qword[@c]
     mov        qword[rsi+80],        __const_str23
     mov                  rsi,            qword[@c]
     mov        qword[rsi+88],        __const_str24
     mov                  rsi,            qword[@c]
     mov        qword[rsi+96],        __const_str25
     mov                  rsi,            qword[@c]
     mov       qword[rsi+104],        __const_str26
     mov                  rsi,            qword[@c]
     mov       qword[rsi+112],        __const_str27
     mov                  rsi,            qword[@c]
     mov       qword[rsi+120],         __const_str0
     mov                  rsi,            qword[@c]
     mov       qword[rsi+128],         __const_str1
     mov                  rsi,            qword[@c]
     mov       qword[rsi+136],         __const_str2
     mov                  rsi,            qword[@c]
     mov       qword[rsi+144],         __const_str3
     mov                  rsi,            qword[@c]
     mov       qword[rsi+152],         __const_str4
     mov                  rsi,            qword[@c]
     mov       qword[rsi+160],         __const_str5
     mov                  rsi,            qword[@c]
     mov       qword[rsi+168],         __const_str6
     mov                  rsi,            qword[@c]
     mov       qword[rsi+176],         __const_str7
     mov                  rsi,            qword[@c]
     mov       qword[rsi+184],         __const_str8
     mov                  rsi,            qword[@c]
     mov       qword[rsi+192],         __const_str9
     mov                  rsi,            qword[@c]
     mov       qword[rsi+200],        __const_str28
     mov                  rsi,            qword[@c]
     mov       qword[rsi+208],        __const_str29
     mov                  rsi,            qword[@c]
     mov       qword[rsi+216],        __const_str30
     mov                  rsi,            qword[@c]
     mov       qword[rsi+224],        __const_str31
     mov                  rsi,            qword[@c]
     mov       qword[rsi+232],        __const_str32
     mov                  rsi,            qword[@c]
     mov       qword[rsi+240],        __const_str33
     mov                  rsi,            qword[@c]
     mov       qword[rsi+248],        __const_str34
     mov                  rsi,            qword[@c]
     mov       qword[rsi+256],        __const_str35
     mov                  rsi,            qword[@c]
     mov       qword[rsi+264],        __const_str36
     mov                  rsi,            qword[@c]
     mov       qword[rsi+272],        __const_str37
     mov                  rsi,            qword[@c]
     mov       qword[rsi+280],        __const_str38
     mov                  rsi,            qword[@c]
     mov       qword[rsi+288],        __const_str39
     mov                  rsi,            qword[@c]
     mov       qword[rsi+296],        __const_str40
     mov                  rsi,            qword[@c]
     mov       qword[rsi+304],        __const_str41
     mov                  rsi,            qword[@c]
     mov       qword[rsi+312],        __const_str42
     mov                  rsi,            qword[@c]
     mov       qword[rsi+320],        __const_str43
     mov                  rsi,            qword[@c]
     mov       qword[rsi+328],        __const_str44
     mov                  rsi,            qword[@c]
     mov       qword[rsi+336],        __const_str45
     mov                  rsi,            qword[@c]
     mov       qword[rsi+344],        __const_str46
     mov                  rsi,            qword[@c]
     mov       qword[rsi+352],        __const_str47
     mov                  rsi,            qword[@c]
     mov       qword[rsi+360],        __const_str48
     mov                  rsi,            qword[@c]
     mov       qword[rsi+368],        __const_str49
     mov                  rsi,            qword[@c]
     mov       qword[rsi+376],        __const_str50
     mov                  rsi,            qword[@c]
     mov       qword[rsi+384],        __const_str51
     mov                  rsi,            qword[@c]
     mov       qword[rsi+392],        __const_str52
     mov                  rsi,            qword[@c]
     mov       qword[rsi+400],        __const_str53
     mov                  rsi,            qword[@c]
     mov       qword[rsi+408],        __const_str54
     mov                  rsi,            qword[@c]
     mov       qword[rsi+416],        __const_str55
     mov                  rsi,            qword[@c]
     mov       qword[rsi+424],        __const_str56
     mov                  rsi,            qword[@c]
     mov       qword[rsi+432],        __const_str57
     mov                  rsi,            qword[@c]
     mov       qword[rsi+440],        __const_str58
     mov                  rsi,            qword[@c]
     mov       qword[rsi+448],        __const_str59
     mov                  rsi,            qword[@c]
     mov       qword[rsi+456],        __const_str60
     mov                  rsi,            qword[@c]
     mov       qword[rsi+464],        __const_str61
     mov                  rsi,            qword[@c]
     mov       qword[rsi+472],        __const_str62
     mov                  rsi,            qword[@c]
     mov       qword[rsi+480],        __const_str63
     mov                  rsi,            qword[@c]
     mov       qword[rsi+488],        __const_str64
     mov                  rsi,            qword[@c]
     mov       qword[rsi+496],        __const_str65
     mov                  rsi,            qword[@c]
     mov       qword[rsi+504],        __const_str66
     mov                  rsi,            qword[@c]
     mov       qword[rsi+512],        __const_str67
     mov                  rsi,            qword[@c]
     mov       qword[rsi+520],        __const_str68
     mov                  rsi,            qword[@c]
     mov       qword[rsi+528],        __const_str69
     mov                  rsi,            qword[@c]
     mov       qword[rsi+536],        __const_str70
     mov                  rsi,            qword[@c]
     mov       qword[rsi+544],        __const_str71
     mov                  rsi,            qword[@c]
     mov       qword[rsi+552],        __const_str72
     mov                  rsi,            qword[@c]
     mov       qword[rsi+560],        __const_str73
     mov                  rsi,            qword[@c]
     mov       qword[rsi+568],        __const_str74
     mov                  rsi,            qword[@c]
     mov       qword[rsi+576],        __const_str75
     mov                  rsi,            qword[@c]
     mov       qword[rsi+584],        __const_str76
     mov                  rsi,            qword[@c]
     mov       qword[rsi+592],        __const_str77
     mov                  rsi,            qword[@c]
     mov       qword[rsi+600],        __const_str78
     mov                  rsi,            qword[@c]
     mov       qword[rsi+608],        __const_str79
     mov                  rsi,            qword[@c]
     mov       qword[rsi+616],        __const_str80
     mov                  rsi,            qword[@c]
     mov       qword[rsi+624],        __const_str81
     mov                  rsi,            qword[@c]
     mov       qword[rsi+632],        __const_str82
     mov                  rsi,            qword[@c]
     mov       qword[rsi+640],        __const_str83
     mov                  rsi,            qword[@c]
     mov       qword[rsi+648],        __const_str84
     mov                  rsi,            qword[@c]
     mov       qword[rsi+656],        __const_str85
     mov                  rsi,            qword[@c]
     mov       qword[rsi+664],        __const_str86
     mov                  rsi,            qword[@c]
     mov       qword[rsi+672],        __const_str87
     mov                  rsi,            qword[@c]
     mov       qword[rsi+680],        __const_str88
     mov                  rsi,            qword[@c]
     mov       qword[rsi+688],        __const_str89
     mov                  rsi,            qword[@c]
     mov       qword[rsi+696],        __const_str90
     mov                  rsi,            qword[@c]
     mov       qword[rsi+704],        __const_str91
     mov                  rsi,            qword[@c]
     mov       qword[rsi+712],        __const_str92
     mov                  rsi,            qword[@c]
     mov       qword[rsi+720],        __const_str93
     mov                  rsi,            qword[@c]
     mov       qword[rsi+728],        __const_str94
     mov                  rsi,            qword[@c]
     mov       qword[rsi+736],        __const_str95
     mov                  rsi,            qword[@s]
     mov           qword[rsi],        __const_str96
     mov                  rsi,            qword[@s]
     mov         qword[rsi+8],        __const_str97
     mov                  rsi,            qword[@s]
     mov        qword[rsi+16],        __const_str98
     mov                  rsi,            qword[@s]
     mov        qword[rsi+24],        __const_str99
     mov                  rsi,            qword[@s]
     mov        qword[rsi+32],       __const_str100
     mov                  rsi,            qword[@s]
     mov        qword[rsi+40],       __const_str101
     mov                  rsi,            qword[@s]
     mov        qword[rsi+48],       __const_str102
     mov                  rsi,            qword[@s]
     mov        qword[rsi+56],       __const_str103
     mov                  rsi,            qword[@s]
     mov        qword[rsi+64],       __const_str104
     mov                  rsi,            qword[@s]
     mov        qword[rsi+72],       __const_str105
     mov                  rsi,            qword[@s]
     mov        qword[rsi+80],       __const_str106
     mov                  rsi,            qword[@s]
     mov        qword[rsi+88],       __const_str107
     mov                  rsi,            qword[@s]
     mov        qword[rsi+96],       __const_str108
     mov                  rsi,            qword[@s]
     mov       qword[rsi+104],       __const_str109
     mov                  rsi,            qword[@s]
     mov       qword[rsi+112],       __const_str110
     mov                  rsi,            qword[@s]
     mov       qword[rsi+120],       __const_str111
     mov                  rsi,            qword[@s]
     mov       qword[rsi+128],       __const_str112
     mov                  rsi,            qword[@s]
     mov       qword[rsi+136],       __const_str113
     mov                  rsi,            qword[@s]
     mov       qword[rsi+144],       __const_str108
     mov                  rsi,            qword[@s]
     mov       qword[rsi+152],       __const_str114
     mov                  rsi,            qword[@s]
     mov       qword[rsi+160],       __const_str115
     mov                  rsi,            qword[@s]
     mov       qword[rsi+168],       __const_str116
     mov                  rsi,            qword[@s]
     mov       qword[rsi+176],       __const_str108
     mov                  rsi,            qword[@s]
     mov       qword[rsi+184],       __const_str117
     mov                  rsi,            qword[@s]
     mov       qword[rsi+192],       __const_str118
     mov                  rsi,            qword[@s]
     mov       qword[rsi+200],       __const_str119
     mov                  rsi,            qword[@s]
     mov       qword[rsi+208],       __const_str120
     mov                  rsi,            qword[@s]
     mov       qword[rsi+216],       __const_str121
     mov                  rsi,            qword[@s]
     mov       qword[rsi+224],       __const_str122
     mov                  rsi,            qword[@s]
     mov       qword[rsi+232],       __const_str123
     mov                  rsi,            qword[@s]
     mov       qword[rsi+240],       __const_str124
     mov                  rsi,            qword[@s]
     mov       qword[rsi+248],        __const_str94
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+648]
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+568]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+552]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+528]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+568]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+552]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+568]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+688]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+64]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+712]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+568]
     mov                  rsi,       qword[rbx+544]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+688]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+120]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+64]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+536]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+664]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+120]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+208]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+568]
     mov                  rsi,       qword[rbx+544]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+688]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+128]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+64]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+536]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+664]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+128]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+208]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+568]
     mov                  rsi,       qword[rbx+544]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+688]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+136]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+64]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+536]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+664]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+136]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+208]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+568]
     mov                  rsi,       qword[rbx+544]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+688]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+144]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+64]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+536]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+664]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+144]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+208]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+568]
     mov                  rsi,       qword[rbx+544]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+688]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+152]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+64]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+536]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+664]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+152]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+208]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+568]
     mov                  rsi,       qword[rbx+544]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+688]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+160]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+64]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+536]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+664]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+160]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+208]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+568]
     mov                  rsi,       qword[rbx+544]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+688]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+168]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+64]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+536]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+664]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+168]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+208]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+568]
     mov                  rsi,       qword[rbx+544]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+688]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+176]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+64]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+536]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+664]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+176]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+208]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+568]
     mov                  rsi,       qword[rbx+544]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+688]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+184]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+64]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+536]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+664]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+184]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+208]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+568]
     mov                  rsi,       qword[rbx+544]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+688]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+192]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+64]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+536]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+664]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+192]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+208]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rdi,       qword[rsi+728]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+648]
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+568]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+552]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+464]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+472]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+648]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+536]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+680]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+648]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+568]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+552]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+464]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+136]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+160]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+168]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+472]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+208]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+648]
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+568]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+552]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+464]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+472]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+520]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+536]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+680]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+648]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+568]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+552]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+464]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+136]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+160]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+168]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+472]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+208]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+648]
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+568]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+552]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+648]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+136]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+568]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+648]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+648]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+64]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+712]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+568]
     mov                  rsi,       qword[rbx+544]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+648]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+648]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+216]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+192]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+64]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+536]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+664]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+648]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+464]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+80]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+528]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+568]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+552]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+648]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+648]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+64]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+80]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+472]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+208]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+640]
     mov                  rsi,       qword[rbx+536]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+664]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+648]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+464]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+80]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+528]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+568]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+552]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+648]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+648]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+112]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+128]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+120]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+64]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+80]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+528]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+568]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+552]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+648]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+648]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+32]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+128]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+120]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+64]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+80]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+472]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+208]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rdi,       qword[rsi+728]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+648]
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+568]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+552]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+520]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+136]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+568]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+520]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+520]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+64]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+712]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+568]
     mov                  rsi,       qword[rbx+544]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+520]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+520]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+216]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+192]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+64]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+536]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+664]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+520]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+464]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+80]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+528]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+568]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+552]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+520]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+520]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+64]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+80]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+472]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+208]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+640]
     mov                  rsi,       qword[rbx+536]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+664]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+520]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+464]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+80]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+528]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+568]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+552]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+520]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+520]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+112]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+128]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+120]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+64]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+80]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+528]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+568]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+552]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+56]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+520]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+520]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+32]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+128]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+120]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+64]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,        qword[rbx+80]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+472]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+208]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rdi,       qword[rsi+728]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+648]
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+568]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+552]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+520]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+616]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+208]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+208]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+648]
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+568]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+552]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+504]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+136]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+632]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2b]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+208]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@c]
     mov                  rbx,            qword[@c]
     mov                  rdi,       qword[rsi+648]
     mov                  rsi,       qword[rbx+656]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+640]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+568]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+608]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+552]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,           qword[rbx]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+504]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+136]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+512]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+224]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2b]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2b]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,            qword[@c]
     mov                  rdi,                  rsi
     mov                  rsi,       qword[rbx+208]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rsi,            qword[@s]
     mov                  rdi,           qword[rsi]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
     mov                  rbx,                    0
	jmp	@main.5.ForCon
@main.4.ForBody:
     mov                  rdi,                  rbx
    push                  rsi
 call	c2
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  r12,            qword[@c]
     mov                  rdi,                  rbx
     shl                  rdi,                    3
     add                  r12,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,           qword[r12]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,           qword[@co]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
	jmp	@main.3.ForIter
@main.3.ForIter:
     mov                  rsi,                  rbx
     add                  rbx,                    1
	jmp	@main.5.ForCon
@main.5.ForCon:
     cmp                  rbx,                   93
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.4.ForBody
	jmp	@main.6.ForExit
@main.6.ForExit:
     mov                  rbx,                    0
	jmp	@main.9.ForCon
@main.8.ForBody:
     mov                  rdi,                  rbx
    push                  rsi
 call	s2
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  r12,            qword[@s]
     mov                  rdi,                  rbx
     shl                  rdi,                    3
     add                  r12,                  rdi
     mov                  rdi,                  rsi
     mov                  rsi,           qword[r12]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,          qword[@a2q]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,           qword[@co]
    push                  rsi
call	__string_connect__
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
	jmp	@main.7.ForIter
@main.7.ForIter:
     mov                  rsi,                  rbx
     add                  rbx,                    1
	jmp	@main.9.ForCon
@main.9.ForCon:
     cmp                  rbx,                   32
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.8.ForBody
	jmp	@main.10.ForExit
@main.10.ForExit:
     mov                  rbx,                    1
	jmp	@main.13.ForCon
@main.12.ForBody:
     mov                  rsi,            qword[@s]
     mov                  rdi,                  rbx
     shl                  rdi,                    3
     add                  rsi,                  rdi
     mov                  rdi,           qword[rsi]
     sub                  rsp,                    8
call	println
     add                  rsp,                    8
	jmp	@main.11.ForIter
@main.11.ForIter:
     mov                  rsi,                  rbx
     add                  rbx,                    1
	jmp	@main.13.ForCon
@main.13.ForCon:
     cmp                  rbx,                   32
     mov                  rsi,                    0
    setl                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@main.12.ForBody
	jmp	@main.14.ForExit
@main.14.ForExit:
     mov                  rax,                    0
	jmp	@main.2.exit
@main.2.exit:
     pop                  rbx
     pop                  r12
     add                  rsp,                   40
     pop                  rbp
     ret
digt:
    push                  rbp
     mov                  rbp,                  rsp
     mov        qword[rbp-16],                  rdi
     cmp                  rdi,                    0
      jl @digt_purity_checkin_out
     cmp                  rdi,                  100
     jnl @digt_purity_checkin_out
     mov                  rdx,               @@digt
     mov                  rcx,        qword[rbp-16]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov                  rdx,           qword[rdx]
     cmp                  rdx,          -1887415157
      je @digt_purity_checkin_out
     mov                  rax,                  rdx
     pop                  rbp
     ret
@digt_purity_checkin_out:
     sub                  rsp,                   16
@digt.1.enter:
     mov                  rsi,                  rdi
     cmp                  rsi,                    0
     mov                  rdi,                    0
    sete                  dil
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@digt.4.IfTrue
	jmp	@digt.3.IfFalse
@digt.4.IfTrue:
     mov                  rax,         __const_str0
	jmp	@digt.2.exit
	jmp	@digt.5.IfExit
@digt.3.IfFalse:
@digt.5.IfExit:
     cmp                  rsi,                    1
     mov                  rdi,                    0
    sete                  dil
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@digt.7.IfTrue
	jmp	@digt.6.IfFalse
@digt.7.IfTrue:
     mov                  rax,         __const_str1
	jmp	@digt.2.exit
	jmp	@digt.8.IfExit
@digt.6.IfFalse:
@digt.8.IfExit:
     cmp                  rsi,                    2
     mov                  rdi,                    0
    sete                  dil
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@digt.10.IfTrue
	jmp	@digt.9.IfFalse
@digt.10.IfTrue:
     mov                  rax,         __const_str2
	jmp	@digt.2.exit
	jmp	@digt.11.IfExit
@digt.9.IfFalse:
@digt.11.IfExit:
     cmp                  rsi,                    3
     mov                  rdi,                    0
    sete                  dil
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@digt.13.IfTrue
	jmp	@digt.12.IfFalse
@digt.13.IfTrue:
     mov                  rax,         __const_str3
	jmp	@digt.2.exit
	jmp	@digt.14.IfExit
@digt.12.IfFalse:
@digt.14.IfExit:
     cmp                  rsi,                    4
     mov                  rdi,                    0
    sete                  dil
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@digt.16.IfTrue
	jmp	@digt.15.IfFalse
@digt.16.IfTrue:
     mov                  rax,         __const_str4
	jmp	@digt.2.exit
	jmp	@digt.17.IfExit
@digt.15.IfFalse:
@digt.17.IfExit:
     cmp                  rsi,                    5
     mov                  rdi,                    0
    sete                  dil
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@digt.19.IfTrue
	jmp	@digt.18.IfFalse
@digt.19.IfTrue:
     mov                  rax,         __const_str5
	jmp	@digt.2.exit
	jmp	@digt.20.IfExit
@digt.18.IfFalse:
@digt.20.IfExit:
     cmp                  rsi,                    6
     mov                  rdi,                    0
    sete                  dil
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@digt.22.IfTrue
	jmp	@digt.21.IfFalse
@digt.22.IfTrue:
     mov                  rax,         __const_str6
	jmp	@digt.2.exit
	jmp	@digt.23.IfExit
@digt.21.IfFalse:
@digt.23.IfExit:
     cmp                  rsi,                    7
     mov                  rdi,                    0
    sete                  dil
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@digt.25.IfTrue
	jmp	@digt.24.IfFalse
@digt.25.IfTrue:
     mov                  rax,         __const_str7
	jmp	@digt.2.exit
	jmp	@digt.26.IfExit
@digt.24.IfFalse:
@digt.26.IfExit:
     cmp                  rsi,                    8
     mov                  rdi,                    0
    sete                  dil
     mov                  rdi,                  rdi
     cmp                  rdi,                    1
	je	@digt.28.IfTrue
	jmp	@digt.27.IfFalse
@digt.28.IfTrue:
     mov                  rax,         __const_str8
	jmp	@digt.2.exit
	jmp	@digt.29.IfExit
@digt.27.IfFalse:
@digt.29.IfExit:
     cmp                  rsi,                    9
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@digt.31.IfTrue
	jmp	@digt.30.IfFalse
@digt.31.IfTrue:
     mov                  rax,         __const_str9
	jmp	@digt.2.exit
	jmp	@digt.32.IfExit
@digt.30.IfFalse:
@digt.32.IfExit:
@digt.2.exit:
     add                  rsp,                   16
     mov                  rdi,                  rax
     cmp        qword[rbp-16],                    0
      jl @digt_purity_addition_out
     cmp        qword[rbp-16],                  100
     jnl @digt_purity_addition_out
     mov                  rdx,               @@digt
     mov                  rcx,        qword[rbp-16]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov           qword[rdx],                  rax
     mov                  rax,                  rdi
     pop                  rbp
     ret
@digt_purity_addition_out:
     pop                  rbp
     ret
s2:
    push                  rbp
     mov                  rbp,                  rsp
     mov        qword[rbp-16],                  rdi
     cmp                  rdi,                    0
      jl @s2_purity_checkin_out
     cmp                  rdi,                  100
     jnl @s2_purity_checkin_out
     mov                  rdx,                 @@s2
     mov                  rcx,        qword[rbp-16]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov                  rdx,           qword[rdx]
     cmp                  rdx,          -1887415157
      je @s2_purity_checkin_out
     mov                  rax,                  rdx
     pop                  rbp
     ret
@s2_purity_checkin_out:
     sub                  rsp,                   16
    push                  r12
    push                  r13
    push                  rbx
@s2.1.enter:
     mov                  rbx,                  rdi
     cmp                  rbx,                    9
     mov                  rsi,                    0
   setle                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@s2.4.IfTrue
	jmp	@s2.3.IfFalse
@s2.4.IfTrue:
     mov                  r13,                  rbx
@s2.8.@digt.1.enter:
     cmp                  r13,                    0
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@s2.9.@digt.4.IfTrue
	jmp	@s2.10.@digt.3.IfFalse
@s2.9.@digt.4.IfTrue:
     mov                  rdi,         __const_str0
	jmp	@s2.7.@digt.2.exit
	jmp	@s2.11.@digt.5.IfExit
@s2.10.@digt.3.IfFalse:
@s2.11.@digt.5.IfExit:
     cmp                  r13,                    1
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@s2.12.@digt.7.IfTrue
	jmp	@s2.13.@digt.6.IfFalse
@s2.12.@digt.7.IfTrue:
     mov                  rdi,         __const_str1
	jmp	@s2.7.@digt.2.exit
	jmp	@s2.14.@digt.8.IfExit
@s2.13.@digt.6.IfFalse:
@s2.14.@digt.8.IfExit:
     cmp                  r13,                    2
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@s2.15.@digt.10.IfTrue
	jmp	@s2.16.@digt.9.IfFalse
@s2.15.@digt.10.IfTrue:
     mov                  rdi,         __const_str2
	jmp	@s2.7.@digt.2.exit
	jmp	@s2.17.@digt.11.IfExit
@s2.16.@digt.9.IfFalse:
@s2.17.@digt.11.IfExit:
     cmp                  r13,                    3
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@s2.18.@digt.13.IfTrue
	jmp	@s2.19.@digt.12.IfFalse
@s2.18.@digt.13.IfTrue:
     mov                  rdi,         __const_str3
	jmp	@s2.7.@digt.2.exit
	jmp	@s2.20.@digt.14.IfExit
@s2.19.@digt.12.IfFalse:
@s2.20.@digt.14.IfExit:
     cmp                  r13,                    4
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@s2.21.@digt.16.IfTrue
	jmp	@s2.22.@digt.15.IfFalse
@s2.21.@digt.16.IfTrue:
     mov                  rdi,         __const_str4
	jmp	@s2.7.@digt.2.exit
	jmp	@s2.23.@digt.17.IfExit
@s2.22.@digt.15.IfFalse:
@s2.23.@digt.17.IfExit:
     cmp                  r13,                    5
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@s2.24.@digt.19.IfTrue
	jmp	@s2.25.@digt.18.IfFalse
@s2.24.@digt.19.IfTrue:
     mov                  rdi,         __const_str5
	jmp	@s2.7.@digt.2.exit
	jmp	@s2.26.@digt.20.IfExit
@s2.25.@digt.18.IfFalse:
@s2.26.@digt.20.IfExit:
     cmp                  r13,                    6
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@s2.27.@digt.22.IfTrue
	jmp	@s2.28.@digt.21.IfFalse
@s2.27.@digt.22.IfTrue:
     mov                  rdi,         __const_str6
	jmp	@s2.7.@digt.2.exit
	jmp	@s2.29.@digt.23.IfExit
@s2.28.@digt.21.IfFalse:
@s2.29.@digt.23.IfExit:
     cmp                  r13,                    7
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@s2.30.@digt.25.IfTrue
	jmp	@s2.31.@digt.24.IfFalse
@s2.30.@digt.25.IfTrue:
     mov                  rdi,         __const_str7
	jmp	@s2.7.@digt.2.exit
	jmp	@s2.32.@digt.26.IfExit
@s2.31.@digt.24.IfFalse:
@s2.32.@digt.26.IfExit:
     cmp                  r13,                    8
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@s2.33.@digt.28.IfTrue
	jmp	@s2.34.@digt.27.IfFalse
@s2.33.@digt.28.IfTrue:
     mov                  rdi,         __const_str8
	jmp	@s2.7.@digt.2.exit
	jmp	@s2.35.@digt.29.IfExit
@s2.34.@digt.27.IfFalse:
@s2.35.@digt.29.IfExit:
     cmp                  r13,                    9
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@s2.36.@digt.31.IfTrue
	jmp	@s2.37.@digt.30.IfFalse
@s2.36.@digt.31.IfTrue:
     mov                  rdi,         __const_str9
	jmp	@s2.7.@digt.2.exit
	jmp	@s2.38.@digt.32.IfExit
@s2.37.@digt.30.IfFalse:
@s2.38.@digt.32.IfExit:
@s2.7.@digt.2.exit:
     mov                  rsi,                  rdi
     mov                  rdi,        __const_str10
     mov                  rsi,                  rsi
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,        __const_str11
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
	jmp	@s2.2.exit
	jmp	@s2.5.IfExit
@s2.3.IfFalse:
@s2.5.IfExit:
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
@s2.40.@digt.1.enter:
     cmp                  rdi,                    0
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@s2.41.@digt.4.IfTrue
	jmp	@s2.42.@digt.3.IfFalse
@s2.41.@digt.4.IfTrue:
     mov                  r12,         __const_str0
	jmp	@s2.39.@digt.2.exit
	jmp	@s2.43.@digt.5.IfExit
@s2.42.@digt.3.IfFalse:
@s2.43.@digt.5.IfExit:
     cmp                  rdi,                    1
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@s2.44.@digt.7.IfTrue
	jmp	@s2.45.@digt.6.IfFalse
@s2.44.@digt.7.IfTrue:
     mov                  r12,         __const_str1
	jmp	@s2.39.@digt.2.exit
	jmp	@s2.46.@digt.8.IfExit
@s2.45.@digt.6.IfFalse:
@s2.46.@digt.8.IfExit:
     cmp                  rdi,                    2
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@s2.47.@digt.10.IfTrue
	jmp	@s2.48.@digt.9.IfFalse
@s2.47.@digt.10.IfTrue:
     mov                  r12,         __const_str2
	jmp	@s2.39.@digt.2.exit
	jmp	@s2.49.@digt.11.IfExit
@s2.48.@digt.9.IfFalse:
@s2.49.@digt.11.IfExit:
     cmp                  rdi,                    3
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@s2.50.@digt.13.IfTrue
	jmp	@s2.51.@digt.12.IfFalse
@s2.50.@digt.13.IfTrue:
     mov                  r12,         __const_str3
	jmp	@s2.39.@digt.2.exit
	jmp	@s2.52.@digt.14.IfExit
@s2.51.@digt.12.IfFalse:
@s2.52.@digt.14.IfExit:
     cmp                  rdi,                    4
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@s2.53.@digt.16.IfTrue
	jmp	@s2.54.@digt.15.IfFalse
@s2.53.@digt.16.IfTrue:
     mov                  r12,         __const_str4
	jmp	@s2.39.@digt.2.exit
	jmp	@s2.55.@digt.17.IfExit
@s2.54.@digt.15.IfFalse:
@s2.55.@digt.17.IfExit:
     cmp                  rdi,                    5
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@s2.56.@digt.19.IfTrue
	jmp	@s2.57.@digt.18.IfFalse
@s2.56.@digt.19.IfTrue:
     mov                  r12,         __const_str5
	jmp	@s2.39.@digt.2.exit
	jmp	@s2.58.@digt.20.IfExit
@s2.57.@digt.18.IfFalse:
@s2.58.@digt.20.IfExit:
     cmp                  rdi,                    6
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@s2.59.@digt.22.IfTrue
	jmp	@s2.60.@digt.21.IfFalse
@s2.59.@digt.22.IfTrue:
     mov                  r12,         __const_str6
	jmp	@s2.39.@digt.2.exit
	jmp	@s2.61.@digt.23.IfExit
@s2.60.@digt.21.IfFalse:
@s2.61.@digt.23.IfExit:
     cmp                  rdi,                    7
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@s2.62.@digt.25.IfTrue
	jmp	@s2.63.@digt.24.IfFalse
@s2.62.@digt.25.IfTrue:
     mov                  r12,         __const_str7
	jmp	@s2.39.@digt.2.exit
	jmp	@s2.64.@digt.26.IfExit
@s2.63.@digt.24.IfFalse:
@s2.64.@digt.26.IfExit:
     cmp                  rdi,                    8
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@s2.65.@digt.28.IfTrue
	jmp	@s2.66.@digt.27.IfFalse
@s2.65.@digt.28.IfTrue:
     mov                  r12,         __const_str8
	jmp	@s2.39.@digt.2.exit
	jmp	@s2.67.@digt.29.IfExit
@s2.66.@digt.27.IfFalse:
@s2.67.@digt.29.IfExit:
     cmp                  rdi,                    9
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@s2.68.@digt.31.IfTrue
	jmp	@s2.69.@digt.30.IfFalse
@s2.68.@digt.31.IfTrue:
     mov                  r12,         __const_str9
	jmp	@s2.39.@digt.2.exit
	jmp	@s2.70.@digt.32.IfExit
@s2.69.@digt.30.IfFalse:
@s2.70.@digt.32.IfExit:
@s2.39.@digt.2.exit:
     mov                  rsi,                  r12
     mov                  rdi,        __const_str10
     mov                  rsi,                  rsi
    push                  rsi
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,                  rbx
     mov                  rax,                  rbx
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rdi,                  rbx
@s2.72.@digt.1.enter:
     cmp                  rdi,                    0
     mov                  rbx,                    0
    sete                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@s2.73.@digt.4.IfTrue
	jmp	@s2.74.@digt.3.IfFalse
@s2.73.@digt.4.IfTrue:
     mov                   r8,         __const_str0
	jmp	@s2.71.@digt.2.exit
	jmp	@s2.75.@digt.5.IfExit
@s2.74.@digt.3.IfFalse:
@s2.75.@digt.5.IfExit:
     cmp                  rdi,                    1
     mov                  rbx,                    0
    sete                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@s2.76.@digt.7.IfTrue
	jmp	@s2.77.@digt.6.IfFalse
@s2.76.@digt.7.IfTrue:
     mov                   r8,         __const_str1
	jmp	@s2.71.@digt.2.exit
	jmp	@s2.78.@digt.8.IfExit
@s2.77.@digt.6.IfFalse:
@s2.78.@digt.8.IfExit:
     cmp                  rdi,                    2
     mov                  rbx,                    0
    sete                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@s2.79.@digt.10.IfTrue
	jmp	@s2.80.@digt.9.IfFalse
@s2.79.@digt.10.IfTrue:
     mov                   r8,         __const_str2
	jmp	@s2.71.@digt.2.exit
	jmp	@s2.81.@digt.11.IfExit
@s2.80.@digt.9.IfFalse:
@s2.81.@digt.11.IfExit:
     cmp                  rdi,                    3
     mov                  rbx,                    0
    sete                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@s2.82.@digt.13.IfTrue
	jmp	@s2.83.@digt.12.IfFalse
@s2.82.@digt.13.IfTrue:
     mov                   r8,         __const_str3
	jmp	@s2.71.@digt.2.exit
	jmp	@s2.84.@digt.14.IfExit
@s2.83.@digt.12.IfFalse:
@s2.84.@digt.14.IfExit:
     cmp                  rdi,                    4
     mov                  rbx,                    0
    sete                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@s2.85.@digt.16.IfTrue
	jmp	@s2.86.@digt.15.IfFalse
@s2.85.@digt.16.IfTrue:
     mov                   r8,         __const_str4
	jmp	@s2.71.@digt.2.exit
	jmp	@s2.87.@digt.17.IfExit
@s2.86.@digt.15.IfFalse:
@s2.87.@digt.17.IfExit:
     cmp                  rdi,                    5
     mov                  rbx,                    0
    sete                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@s2.88.@digt.19.IfTrue
	jmp	@s2.89.@digt.18.IfFalse
@s2.88.@digt.19.IfTrue:
     mov                   r8,         __const_str5
	jmp	@s2.71.@digt.2.exit
	jmp	@s2.90.@digt.20.IfExit
@s2.89.@digt.18.IfFalse:
@s2.90.@digt.20.IfExit:
     cmp                  rdi,                    6
     mov                  rbx,                    0
    sete                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@s2.91.@digt.22.IfTrue
	jmp	@s2.92.@digt.21.IfFalse
@s2.91.@digt.22.IfTrue:
     mov                   r8,         __const_str6
	jmp	@s2.71.@digt.2.exit
	jmp	@s2.93.@digt.23.IfExit
@s2.92.@digt.21.IfFalse:
@s2.93.@digt.23.IfExit:
     cmp                  rdi,                    7
     mov                  rbx,                    0
    sete                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@s2.94.@digt.25.IfTrue
	jmp	@s2.95.@digt.24.IfFalse
@s2.94.@digt.25.IfTrue:
     mov                   r8,         __const_str7
	jmp	@s2.71.@digt.2.exit
	jmp	@s2.96.@digt.26.IfExit
@s2.95.@digt.24.IfFalse:
@s2.96.@digt.26.IfExit:
     cmp                  rdi,                    8
     mov                  rbx,                    0
    sete                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@s2.97.@digt.28.IfTrue
	jmp	@s2.98.@digt.27.IfFalse
@s2.97.@digt.28.IfTrue:
     mov                   r8,         __const_str8
	jmp	@s2.71.@digt.2.exit
	jmp	@s2.99.@digt.29.IfExit
@s2.98.@digt.27.IfFalse:
@s2.99.@digt.29.IfExit:
     cmp                  rdi,                    9
     mov                  rbx,                    0
    sete                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@s2.100.@digt.31.IfTrue
	jmp	@s2.101.@digt.30.IfFalse
@s2.100.@digt.31.IfTrue:
     mov                   r8,         __const_str9
	jmp	@s2.71.@digt.2.exit
	jmp	@s2.102.@digt.32.IfExit
@s2.101.@digt.30.IfFalse:
@s2.102.@digt.32.IfExit:
@s2.71.@digt.2.exit:
     mov                  rbx,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,        __const_str11
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
	jmp	@s2.2.exit
@s2.2.exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     add                  rsp,                   16
     mov                  rdi,                  rax
     cmp        qword[rbp-16],                    0
      jl @s2_purity_addition_out
     cmp        qword[rbp-16],                  100
     jnl @s2_purity_addition_out
     mov                  rdx,                 @@s2
     mov                  rcx,        qword[rbp-16]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov           qword[rdx],                  rax
     mov                  rax,                  rdi
     pop                  rbp
     ret
@s2_purity_addition_out:
     pop                  rbp
     ret
c2:
    push                  rbp
     mov                  rbp,                  rsp
     mov        qword[rbp-16],                  rdi
     cmp                  rdi,                    0
      jl @c2_purity_checkin_out
     cmp                  rdi,                  100
     jnl @c2_purity_checkin_out
     mov                  rdx,                 @@c2
     mov                  rcx,        qword[rbp-16]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov                  rdx,           qword[rdx]
     cmp                  rdx,          -1887415157
      je @c2_purity_checkin_out
     mov                  rax,                  rdx
     pop                  rbp
     ret
@c2_purity_checkin_out:
     sub                  rsp,                   16
    push                  r12
    push                  r13
    push                  rbx
@c2.1.enter:
     mov                  rbx,                  rdi
     cmp                  rbx,                    9
     mov                  rsi,                    0
   setle                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@c2.4.IfTrue
	jmp	@c2.3.IfFalse
@c2.4.IfTrue:
     mov                  r13,                  rbx
@c2.8.@digt.1.enter:
     cmp                  r13,                    0
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@c2.9.@digt.4.IfTrue
	jmp	@c2.10.@digt.3.IfFalse
@c2.9.@digt.4.IfTrue:
     mov                  rdi,         __const_str0
	jmp	@c2.7.@digt.2.exit
	jmp	@c2.11.@digt.5.IfExit
@c2.10.@digt.3.IfFalse:
@c2.11.@digt.5.IfExit:
     cmp                  r13,                    1
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@c2.12.@digt.7.IfTrue
	jmp	@c2.13.@digt.6.IfFalse
@c2.12.@digt.7.IfTrue:
     mov                  rdi,         __const_str1
	jmp	@c2.7.@digt.2.exit
	jmp	@c2.14.@digt.8.IfExit
@c2.13.@digt.6.IfFalse:
@c2.14.@digt.8.IfExit:
     cmp                  r13,                    2
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@c2.15.@digt.10.IfTrue
	jmp	@c2.16.@digt.9.IfFalse
@c2.15.@digt.10.IfTrue:
     mov                  rdi,         __const_str2
	jmp	@c2.7.@digt.2.exit
	jmp	@c2.17.@digt.11.IfExit
@c2.16.@digt.9.IfFalse:
@c2.17.@digt.11.IfExit:
     cmp                  r13,                    3
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@c2.18.@digt.13.IfTrue
	jmp	@c2.19.@digt.12.IfFalse
@c2.18.@digt.13.IfTrue:
     mov                  rdi,         __const_str3
	jmp	@c2.7.@digt.2.exit
	jmp	@c2.20.@digt.14.IfExit
@c2.19.@digt.12.IfFalse:
@c2.20.@digt.14.IfExit:
     cmp                  r13,                    4
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@c2.21.@digt.16.IfTrue
	jmp	@c2.22.@digt.15.IfFalse
@c2.21.@digt.16.IfTrue:
     mov                  rdi,         __const_str4
	jmp	@c2.7.@digt.2.exit
	jmp	@c2.23.@digt.17.IfExit
@c2.22.@digt.15.IfFalse:
@c2.23.@digt.17.IfExit:
     cmp                  r13,                    5
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@c2.24.@digt.19.IfTrue
	jmp	@c2.25.@digt.18.IfFalse
@c2.24.@digt.19.IfTrue:
     mov                  rdi,         __const_str5
	jmp	@c2.7.@digt.2.exit
	jmp	@c2.26.@digt.20.IfExit
@c2.25.@digt.18.IfFalse:
@c2.26.@digt.20.IfExit:
     cmp                  r13,                    6
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@c2.27.@digt.22.IfTrue
	jmp	@c2.28.@digt.21.IfFalse
@c2.27.@digt.22.IfTrue:
     mov                  rdi,         __const_str6
	jmp	@c2.7.@digt.2.exit
	jmp	@c2.29.@digt.23.IfExit
@c2.28.@digt.21.IfFalse:
@c2.29.@digt.23.IfExit:
     cmp                  r13,                    7
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@c2.30.@digt.25.IfTrue
	jmp	@c2.31.@digt.24.IfFalse
@c2.30.@digt.25.IfTrue:
     mov                  rdi,         __const_str7
	jmp	@c2.7.@digt.2.exit
	jmp	@c2.32.@digt.26.IfExit
@c2.31.@digt.24.IfFalse:
@c2.32.@digt.26.IfExit:
     cmp                  r13,                    8
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@c2.33.@digt.28.IfTrue
	jmp	@c2.34.@digt.27.IfFalse
@c2.33.@digt.28.IfTrue:
     mov                  rdi,         __const_str8
	jmp	@c2.7.@digt.2.exit
	jmp	@c2.35.@digt.29.IfExit
@c2.34.@digt.27.IfFalse:
@c2.35.@digt.29.IfExit:
     cmp                  r13,                    9
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@c2.36.@digt.31.IfTrue
	jmp	@c2.37.@digt.30.IfFalse
@c2.36.@digt.31.IfTrue:
     mov                  rdi,         __const_str9
	jmp	@c2.7.@digt.2.exit
	jmp	@c2.38.@digt.32.IfExit
@c2.37.@digt.30.IfFalse:
@c2.38.@digt.32.IfExit:
@c2.7.@digt.2.exit:
     mov                  rsi,                  rdi
     mov                  rdi,        __const_str12
     mov                  rsi,                  rsi
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,        __const_str11
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
	jmp	@c2.2.exit
	jmp	@c2.5.IfExit
@c2.3.IfFalse:
@c2.5.IfExit:
     mov                  rsi,                  rbx
     mov                  rax,                  rsi
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rsi,                  rax
     mov                  rdi,                  rsi
@c2.40.@digt.1.enter:
     cmp                  rdi,                    0
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@c2.41.@digt.4.IfTrue
	jmp	@c2.42.@digt.3.IfFalse
@c2.41.@digt.4.IfTrue:
     mov                  r12,         __const_str0
	jmp	@c2.39.@digt.2.exit
	jmp	@c2.43.@digt.5.IfExit
@c2.42.@digt.3.IfFalse:
@c2.43.@digt.5.IfExit:
     cmp                  rdi,                    1
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@c2.44.@digt.7.IfTrue
	jmp	@c2.45.@digt.6.IfFalse
@c2.44.@digt.7.IfTrue:
     mov                  r12,         __const_str1
	jmp	@c2.39.@digt.2.exit
	jmp	@c2.46.@digt.8.IfExit
@c2.45.@digt.6.IfFalse:
@c2.46.@digt.8.IfExit:
     cmp                  rdi,                    2
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@c2.47.@digt.10.IfTrue
	jmp	@c2.48.@digt.9.IfFalse
@c2.47.@digt.10.IfTrue:
     mov                  r12,         __const_str2
	jmp	@c2.39.@digt.2.exit
	jmp	@c2.49.@digt.11.IfExit
@c2.48.@digt.9.IfFalse:
@c2.49.@digt.11.IfExit:
     cmp                  rdi,                    3
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@c2.50.@digt.13.IfTrue
	jmp	@c2.51.@digt.12.IfFalse
@c2.50.@digt.13.IfTrue:
     mov                  r12,         __const_str3
	jmp	@c2.39.@digt.2.exit
	jmp	@c2.52.@digt.14.IfExit
@c2.51.@digt.12.IfFalse:
@c2.52.@digt.14.IfExit:
     cmp                  rdi,                    4
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@c2.53.@digt.16.IfTrue
	jmp	@c2.54.@digt.15.IfFalse
@c2.53.@digt.16.IfTrue:
     mov                  r12,         __const_str4
	jmp	@c2.39.@digt.2.exit
	jmp	@c2.55.@digt.17.IfExit
@c2.54.@digt.15.IfFalse:
@c2.55.@digt.17.IfExit:
     cmp                  rdi,                    5
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@c2.56.@digt.19.IfTrue
	jmp	@c2.57.@digt.18.IfFalse
@c2.56.@digt.19.IfTrue:
     mov                  r12,         __const_str5
	jmp	@c2.39.@digt.2.exit
	jmp	@c2.58.@digt.20.IfExit
@c2.57.@digt.18.IfFalse:
@c2.58.@digt.20.IfExit:
     cmp                  rdi,                    6
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@c2.59.@digt.22.IfTrue
	jmp	@c2.60.@digt.21.IfFalse
@c2.59.@digt.22.IfTrue:
     mov                  r12,         __const_str6
	jmp	@c2.39.@digt.2.exit
	jmp	@c2.61.@digt.23.IfExit
@c2.60.@digt.21.IfFalse:
@c2.61.@digt.23.IfExit:
     cmp                  rdi,                    7
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@c2.62.@digt.25.IfTrue
	jmp	@c2.63.@digt.24.IfFalse
@c2.62.@digt.25.IfTrue:
     mov                  r12,         __const_str7
	jmp	@c2.39.@digt.2.exit
	jmp	@c2.64.@digt.26.IfExit
@c2.63.@digt.24.IfFalse:
@c2.64.@digt.26.IfExit:
     cmp                  rdi,                    8
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@c2.65.@digt.28.IfTrue
	jmp	@c2.66.@digt.27.IfFalse
@c2.65.@digt.28.IfTrue:
     mov                  r12,         __const_str8
	jmp	@c2.39.@digt.2.exit
	jmp	@c2.67.@digt.29.IfExit
@c2.66.@digt.27.IfFalse:
@c2.67.@digt.29.IfExit:
     cmp                  rdi,                    9
     mov                  rsi,                    0
    sete                  sil
     mov                  rsi,                  rsi
     cmp                  rsi,                    1
	je	@c2.68.@digt.31.IfTrue
	jmp	@c2.69.@digt.30.IfFalse
@c2.68.@digt.31.IfTrue:
     mov                  r12,         __const_str9
	jmp	@c2.39.@digt.2.exit
	jmp	@c2.70.@digt.32.IfExit
@c2.69.@digt.30.IfFalse:
@c2.70.@digt.32.IfExit:
@c2.39.@digt.2.exit:
     mov                  rsi,                  r12
     mov                  rdi,        __const_str12
     mov                  rsi,                  rsi
    push                  rsi
    push                   r8
call	__string_connect__
     pop                   r8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rbx,                  rbx
     mov                  rax,                  rbx
     mov                  rcx,                   10
     cdq
    idiv                  ecx
     mov                  rbx,                  rdx
     mov                  rdi,                  rbx
@c2.72.@digt.1.enter:
     cmp                  rdi,                    0
     mov                  rbx,                    0
    sete                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@c2.73.@digt.4.IfTrue
	jmp	@c2.74.@digt.3.IfFalse
@c2.73.@digt.4.IfTrue:
     mov                   r8,         __const_str0
	jmp	@c2.71.@digt.2.exit
	jmp	@c2.75.@digt.5.IfExit
@c2.74.@digt.3.IfFalse:
@c2.75.@digt.5.IfExit:
     cmp                  rdi,                    1
     mov                  rbx,                    0
    sete                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@c2.76.@digt.7.IfTrue
	jmp	@c2.77.@digt.6.IfFalse
@c2.76.@digt.7.IfTrue:
     mov                   r8,         __const_str1
	jmp	@c2.71.@digt.2.exit
	jmp	@c2.78.@digt.8.IfExit
@c2.77.@digt.6.IfFalse:
@c2.78.@digt.8.IfExit:
     cmp                  rdi,                    2
     mov                  rbx,                    0
    sete                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@c2.79.@digt.10.IfTrue
	jmp	@c2.80.@digt.9.IfFalse
@c2.79.@digt.10.IfTrue:
     mov                   r8,         __const_str2
	jmp	@c2.71.@digt.2.exit
	jmp	@c2.81.@digt.11.IfExit
@c2.80.@digt.9.IfFalse:
@c2.81.@digt.11.IfExit:
     cmp                  rdi,                    3
     mov                  rbx,                    0
    sete                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@c2.82.@digt.13.IfTrue
	jmp	@c2.83.@digt.12.IfFalse
@c2.82.@digt.13.IfTrue:
     mov                   r8,         __const_str3
	jmp	@c2.71.@digt.2.exit
	jmp	@c2.84.@digt.14.IfExit
@c2.83.@digt.12.IfFalse:
@c2.84.@digt.14.IfExit:
     cmp                  rdi,                    4
     mov                  rbx,                    0
    sete                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@c2.85.@digt.16.IfTrue
	jmp	@c2.86.@digt.15.IfFalse
@c2.85.@digt.16.IfTrue:
     mov                   r8,         __const_str4
	jmp	@c2.71.@digt.2.exit
	jmp	@c2.87.@digt.17.IfExit
@c2.86.@digt.15.IfFalse:
@c2.87.@digt.17.IfExit:
     cmp                  rdi,                    5
     mov                  rbx,                    0
    sete                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@c2.88.@digt.19.IfTrue
	jmp	@c2.89.@digt.18.IfFalse
@c2.88.@digt.19.IfTrue:
     mov                   r8,         __const_str5
	jmp	@c2.71.@digt.2.exit
	jmp	@c2.90.@digt.20.IfExit
@c2.89.@digt.18.IfFalse:
@c2.90.@digt.20.IfExit:
     cmp                  rdi,                    6
     mov                  rbx,                    0
    sete                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@c2.91.@digt.22.IfTrue
	jmp	@c2.92.@digt.21.IfFalse
@c2.91.@digt.22.IfTrue:
     mov                   r8,         __const_str6
	jmp	@c2.71.@digt.2.exit
	jmp	@c2.93.@digt.23.IfExit
@c2.92.@digt.21.IfFalse:
@c2.93.@digt.23.IfExit:
     cmp                  rdi,                    7
     mov                  rbx,                    0
    sete                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@c2.94.@digt.25.IfTrue
	jmp	@c2.95.@digt.24.IfFalse
@c2.94.@digt.25.IfTrue:
     mov                   r8,         __const_str7
	jmp	@c2.71.@digt.2.exit
	jmp	@c2.96.@digt.26.IfExit
@c2.95.@digt.24.IfFalse:
@c2.96.@digt.26.IfExit:
     cmp                  rdi,                    8
     mov                  rbx,                    0
    sete                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@c2.97.@digt.28.IfTrue
	jmp	@c2.98.@digt.27.IfFalse
@c2.97.@digt.28.IfTrue:
     mov                   r8,         __const_str8
	jmp	@c2.71.@digt.2.exit
	jmp	@c2.99.@digt.29.IfExit
@c2.98.@digt.27.IfFalse:
@c2.99.@digt.29.IfExit:
     cmp                  rdi,                    9
     mov                  rbx,                    0
    sete                   bl
     mov                  rbx,                  rbx
     cmp                  rbx,                    1
	je	@c2.100.@digt.31.IfTrue
	jmp	@c2.101.@digt.30.IfFalse
@c2.100.@digt.31.IfTrue:
     mov                   r8,         __const_str9
	jmp	@c2.71.@digt.2.exit
	jmp	@c2.102.@digt.32.IfExit
@c2.101.@digt.30.IfFalse:
@c2.102.@digt.32.IfExit:
@c2.71.@digt.2.exit:
     mov                  rbx,                   r8
     mov                  rdi,                  rsi
     mov                  rsi,                  rbx
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rdi,                  rsi
     mov                  rsi,        __const_str11
    push                  rsi
     sub                  rsp,                    8
call	__string_connect__
     add                  rsp,                    8
     pop                  rsi
     mov                  rsi,                  rax
     mov                  rsi,                  rsi
     mov                  rax,                  rsi
	jmp	@c2.2.exit
@c2.2.exit:
     pop                  rbx
     pop                  r13
     pop                  r12
     add                  rsp,                   16
     mov                  rdi,                  rax
     cmp        qword[rbp-16],                    0
      jl @c2_purity_addition_out
     cmp        qword[rbp-16],                  100
     jnl @c2_purity_addition_out
     mov                  rdx,                 @@c2
     mov                  rcx,        qword[rbp-16]
     shl                  rcx,                    3
     add                  rdx,                  rcx
     mov           qword[rdx],                  rax
     mov                  rax,                  rdi
     pop                  rbp
     ret
@c2_purity_addition_out:
     pop                  rbp
     ret


 section                 .bss
@s:
  	resq 		1
@c:
  	resq 		1
@co:
  	resq 		1
@a2q:
  	resq 		1
@a2b:
  	resq 		1
@@digt:
  	resq 		1
@@s2:
  	resq 		1
@@c2:
  	resq 		1


 section                .data
      dq                  116
__const_str104:
      db "println(c[71]+c[68]+c[7]+c[86]+c[28]+c[28]+c[21]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[21]+a2q+c[26]);",0
      dq                  116
__const_str106:
      db "println(c[71]+c[68]+c[7]+c[86]+c[28]+c[28]+c[23]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[23]+a2q+c[26]);",0
      dq                    1
__const_str13:
      db " ",0
      dq                    1
__const_str14:
      db "!",0
      dq                    1
__const_str15:
      db "#",0
      dq                    1
__const_str16:
      db "$",0
      dq                    1
__const_str17:
      db "%",0
      dq                   88
__const_str117:
      db "println(c[81]+c[82]+c[80]+c[71]+c[76]+c[69]+c[0]+c[65]+c[77]+c[28]+a2q+c[26]+a2q+c[26]);",0
      dq                    1
__const_str18:
      db "&",0
      dq                    1
__const_str19:
      db "'",0
      dq                    1
__const_str20:
      db "(",0
      dq                    1
__const_str21:
      db ")",0
      dq                    1
__const_str22:
      db "*",0
      dq                    1
__const_str23:
      db "+",0
      dq                    1
__const_str24:
      db ",",0
      dq                  241
__const_str113:
      db "println(c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[81]+c[58]+a2q+c[10]+c[66]+c[71]+c[69]+c[82]+c[7]+c[81]+c[81]+c[14]+c[16]+c[15]+c[8]+c[10]+c[66]+c[71]+c[69]+c[82]+c[7]+c[81]+c[81]+c[4]+c[16]+c[15]+c[8]+c[10]+a2q+c[59]+c[28]+a2q+c[26]);",0
      dq                    1
__const_str25:
      db "-",0
      dq                    1
__const_str26:
      db ".",0
      dq                  116
__const_str99:
      db "println(c[71]+c[68]+c[7]+c[86]+c[28]+c[28]+c[16]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[16]+a2q+c[26]);",0
      dq                    1
__const_str27:
      db "/",0
      dq                    1
__const_str0:
      db "0",0
      dq                    1
__const_str1:
      db "1",0
      dq                    1
__const_str2:
      db "2",0
      dq                  169
__const_str110:
      db "println(c[81]+c[82]+c[80]+c[71]+c[76]+c[69]+c[58]+c[59]+c[0]+c[65]+c[28]+c[76]+c[67]+c[85]+c[0]+c[81]+c[82]+c[80]+c[71]+c[76]+c[69]+c[58]+c[17]+c[20]+c[21]+c[59]+c[26]);",0
      dq                    1
__const_str3:
      db "3",0
      dq                   15
__const_str108:
      db "println(c[91]);",0
      dq                  241
__const_str116:
      db "println(c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[65]+c[58]+a2q+c[10]+c[66]+c[71]+c[69]+c[82]+c[7]+c[65]+c[65]+c[14]+c[16]+c[15]+c[8]+c[10]+c[66]+c[71]+c[69]+c[82]+c[7]+c[65]+c[65]+c[4]+c[16]+c[15]+c[8]+c[10]+a2q+c[59]+c[28]+a2q+c[26]);",0
      dq                    1
__const_str4:
      db "4",0
      dq                    1
__const_str5:
      db "5",0
      dq                    1
__const_str6:
      db "6",0
      dq                    1
__const_str7:
      db "7",0
      dq                  116
__const_str101:
      db "println(c[71]+c[68]+c[7]+c[86]+c[28]+c[28]+c[18]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[18]+a2q+c[26]);",0
      dq                    1
__const_str8:
      db "8",0
      dq                    1
__const_str9:
      db "9",0
      dq                    9
__const_str124:
      db "return 0;",0
      dq                    1
__const_str28:
      db ":",0
      dq                    1
__const_str29:
      db ";",0
      dq                    1
__const_str30:
      db "<",0
      dq                    1
__const_str31:
      db "=",0
      dq                    1
__const_str32:
      db ">",0
      dq                    1
__const_str33:
      db "?",0
      dq                    1
__const_str34:
      db "@",0
      dq                    1
__const_str35:
      db "A",0
      dq                    1
__const_str36:
      db "B",0
      dq                    1
__const_str37:
      db "C",0
      dq                   48
__const_str121:
      db "for(i=0;i<93;i++)println(c2(i)+a2q+c[i]+a2q+co);",0
      dq                    1
__const_str38:
      db "D",0
      dq                    1
__const_str39:
      db "E",0
      dq                    1
__const_str40:
      db "F",0
      dq                    1
__const_str125:
      db "",34,"",0
      dq                    1
__const_str41:
      db "G",0
      dq                    2
__const_str10:
      db "s[",0
      dq                    1
__const_str42:
      db "H",0
      dq                    1
__const_str43:
      db "I",0
      dq                    1
__const_str44:
      db "J",0
      dq                    1
__const_str45:
      db "K",0
      dq                    1
__const_str46:
      db "L",0
      dq                    1
__const_str47:
      db "M",0
      dq                    1
__const_str48:
      db "N",0
      dq                    1
__const_str49:
      db "O",0
      dq                    1
__const_str50:
      db "P",0
      dq                    1
__const_str51:
      db "Q",0
      dq                    1
__const_str52:
      db "R",0
      dq                    1
__const_str53:
      db "S",0
      dq                    1
__const_str54:
      db "T",0
      dq                    1
__const_str55:
      db "U",0
      dq                    1
__const_str56:
      db "V",0
      dq                    1
__const_str57:
      db "W",0
      dq                    2
__const_str12:
      db "c[",0
      dq                    1
__const_str58:
      db "X",0
      dq                    1
__const_str59:
      db "Y",0
      dq                    1
__const_str60:
      db "Z",0
      dq                    1
__const_str61:
      db "[",0
      dq                    1
__const_str62:
      db "]",0
      dq                    1
__const_str63:
      db "^",0
      dq                    1
__const_str64:
      db "_",0
      dq                    1
__const_str65:
      db "`",0
      dq                    1
__const_str66:
      db "a",0
      dq                    1
__const_str67:
      db "b",0
      dq                    1
__const_str68:
      db "c",0
      dq                   96
__const_str118:
      db "println(c[81]+c[82]+c[80]+c[71]+c[76]+c[69]+c[0]+c[63]+c[17]+c[79]+c[28]+a2q+a2b+a2q+a2q+c[26]);",0
      dq                    1
__const_str69:
      db "d",0
      dq                    1
__const_str70:
      db "e",0
      dq                    1
__const_str71:
      db "f",0
      dq                    1
__const_str72:
      db "g",0
      dq                    1
__const_str73:
      db "h",0
      dq                    1
__const_str74:
      db "i",0
      dq                    1
__const_str75:
      db "j",0
      dq                    1
__const_str76:
      db "k",0
      dq                  206
__const_str115:
      db "println(c[71]+c[68]+c[7]+c[65]+c[65]+c[27]+c[28]+c[24]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[65]+c[58]+a2q+c[10]+c[66]+c[71]+c[69]+c[82]+c[7]+c[65]+c[65]+c[8]+c[10]+a2q+c[59]+c[28]+a2q+c[26]);",0
      dq                    1
__const_str77:
      db "l",0
      dq                    1
__const_str78:
      db "m",0
      dq                    1
__const_str79:
      db "n",0
      dq                    1
__const_str80:
      db "o",0
      dq                    1
__const_str81:
      db "p",0
      dq                    1
__const_str82:
      db "q",0
      dq                    1
__const_str83:
      db "r",0
      dq                    1
__const_str84:
      db "s",0
      dq                    1
__const_str85:
      db "t",0
      dq                    1
__const_str86:
      db "u",0
      dq                    1
__const_str87:
      db "v",0
      dq                    1
__const_str88:
      db "w",0
      dq                    1
__const_str89:
      db "x",0
      dq                    1
__const_str90:
      db "y",0
      dq                    1
__const_str91:
      db "z",0
      dq                   14
__const_str120:
      db "println(s[0]);",0
      dq                    1
__const_str92:
      db "{",0
      dq                    1
__const_str93:
      db "|",0
      dq                    1
__const_str94:
      db "}",0
      dq                    1
__const_str95:
      db "~",0
      dq                    2
__const_str11:
      db "]=",0
      dq                    1
__const_str126:
      db "",92,"",0
      dq                  116
__const_str103:
      db "println(c[71]+c[68]+c[7]+c[86]+c[28]+c[28]+c[20]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[20]+a2q+c[26]);",0
      dq                  116
__const_str98:
      db "println(c[71]+c[68]+c[7]+c[86]+c[28]+c[28]+c[15]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[15]+a2q+c[26]);",0
      dq                  119
__const_str97:
      db "println(c[81]+c[82]+c[80]+c[71]+c[76]+c[69]+c[0]+c[66]+c[71]+c[69]+c[82]+c[7]+c[71]+c[76]+c[82]+c[0]+c[86]+c[8]+c[89]);",0
      dq                   48
__const_str122:
      db "for(i=0;i<32;i++)println(s2(i)+a2q+s[i]+a2q+co);",0
      dq                  116
__const_str105:
      db "println(c[71]+c[68]+c[7]+c[86]+c[28]+c[28]+c[22]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[22]+a2q+c[26]);",0
      dq                   83
__const_str96:
      db "int main(){int i=0;// Quine is a a program that produces its source code as output.",0
      dq                  116
__const_str107:
      db "println(c[71]+c[68]+c[7]+c[86]+c[28]+c[28]+c[24]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[24]+a2q+c[26]);",0
      dq                  113
__const_str111:
      db "println(c[81]+c[82]+c[80]+c[71]+c[76]+c[69]+c[0]+c[81]+c[17]+c[7]+c[71]+c[76]+c[82]+c[0]+c[81]+c[81]+c[8]+c[89]);",0
      dq                  116
__const_str100:
      db "println(c[71]+c[68]+c[7]+c[86]+c[28]+c[28]+c[17]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[17]+a2q+c[26]);",0
      dq                  116
__const_str102:
      db "println(c[71]+c[68]+c[7]+c[86]+c[28]+c[28]+c[19]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[19]+a2q+c[26]);",0
      dq                  169
__const_str109:
      db "println(c[81]+c[82]+c[80]+c[71]+c[76]+c[69]+c[58]+c[59]+c[0]+c[81]+c[28]+c[76]+c[67]+c[85]+c[0]+c[81]+c[82]+c[80]+c[71]+c[76]+c[69]+c[58]+c[17]+c[20]+c[21]+c[59]+c[26]);",0
      dq                  113
__const_str114:
      db "println(c[81]+c[82]+c[80]+c[71]+c[76]+c[69]+c[0]+c[65]+c[17]+c[7]+c[71]+c[76]+c[82]+c[0]+c[65]+c[65]+c[8]+c[89]);",0
      dq                  206
__const_str112:
      db "println(c[71]+c[68]+c[7]+c[81]+c[81]+c[27]+c[28]+c[24]+c[8]+c[80]+c[67]+c[82]+c[83]+c[80]+c[76]+c[0]+a2q+c[81]+c[58]+a2q+c[10]+c[66]+c[71]+c[69]+c[82]+c[7]+c[81]+c[81]+c[8]+c[10]+a2q+c[59]+c[28]+a2q+c[26]);",0
      dq                   31
__const_str123:
      db "for(i=1;i<32;i++)println(s[i]);",0
      dq                   96
__const_str119:
      db "println(c[81]+c[82]+c[80]+c[71]+c[76]+c[69]+c[0]+c[63]+c[17]+c[64]+c[28]+a2q+a2b+a2b+a2q+c[26]);",0






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



