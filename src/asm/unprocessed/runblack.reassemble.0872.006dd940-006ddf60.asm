.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?__nw@Base@@SAPAXK@Z
.extern ??3Base@@SAXPAXK@Z
.extern ??0GameThing@@QAE@XZ
.extern _jmp_addr_0x0056fa80
.extern ?ToBeDeleted@GameThingWithPos@@UAEXH@Z
.extern ?SetToZero@GameThingWithPos@@QAEXXZ
.extern ?ToBeDeleted@Object@@UAEXH@Z
.extern ?CallVirtualFunctionsForCreation@Object@@UAEXABUMapCoords@@@Z
.extern _jmp_addr_0x006dc9f0
.extern _jmp_addr_0x006ddf60

.globl ?GetText@ChessGamePuzzle@@UAEPBDXZ
.globl ??_GChessGamePuzzle@@UAEPAXI@Z
.globl ?ToBeDeleted@ChessGamePuzzle@@UAEXH@Z
.globl ?ToBeDeleted@ChessPion@@UAEXH@Z
.globl ?CallVirtualFunctionsForCreation@ChessPion@@UAEXABUMapCoords@@@Z


start_0x006dd940_0x006ddf60:
// Snippet: asm, [0x006dd940, 0x006ddf3f)
                         {disp32} mov     eax, dword ptr [ecx + 0x00000148]        // 0x006dd940    8b8148010000
                         {disp8} mov      edx, dword ptr [esp + 0x04]              // 0x006dd946    8b542404
                         cmp.s            eax, edx                                 // 0x006dd94a    3bc2
                         push             ebx                                      // 0x006dd94c    53
                         push             ebp                                      // 0x006dd94d    55
                         push             esi                                      // 0x006dd94e    56
                         push             edi                                      // 0x006dd94f    57
                         {disp8} je       _jmp_addr_0x006dd95e                     // 0x006dd950    740c
                         {disp8} mov      esi, dword ptr [esp + 0x18]              // 0x006dd952    8b742418
                         cmp              dword ptr [ecx + 0x0000014c], esi        // 0x006dd956    39b14c010000
                         {disp8} jne      _jmp_addr_0x006dd9c6                     // 0x006dd95c    7568
_jmp_addr_0x006dd95e:    {disp32} mov     esi, dword ptr [ecx + 0x0000014c]        // 0x006dd95e    8bb14c010000
                         mov.s            edi, eax                                 // 0x006dd964    8bf8
                         sub.s            eax, edx                                 // 0x006dd966    2bc2
                         xor.s            ebp, ebp                                 // 0x006dd968    33ed
                         xor.s            ebx, ebx                                 // 0x006dd96a    33db
                         test             eax, eax                                 // 0x006dd96c    85c0
                         {disp8} jle      _jmp_addr_0x006dd975                     // 0x006dd96e    7e05
                         or               ebp, 0xffffffff                          // 0x006dd970    83cdff
                         {disp8} jmp      _jmp_addr_0x006dd97c                     // 0x006dd973    eb07
_jmp_addr_0x006dd975:    {disp8} jge      _jmp_addr_0x006dd97c                     // 0x006dd975    7d05
                         mov              ebp, 0x00000001                          // 0x006dd977    bd01000000
_jmp_addr_0x006dd97c:    {disp8} mov      ecx, dword ptr [esp + 0x18]              // 0x006dd97c    8b4c2418
                         mov.s            eax, esi                                 // 0x006dd980    8bc6
                         sub.s            eax, ecx                                 // 0x006dd982    2bc1
                         test             eax, eax                                 // 0x006dd984    85c0
                         {disp8} jle      _jmp_addr_0x006dd98d                     // 0x006dd986    7e05
                         or               ebx, 0xffffffff                          // 0x006dd988    83cbff
                         {disp8} jmp      _jmp_addr_0x006dd994                     // 0x006dd98b    eb07
_jmp_addr_0x006dd98d:    {disp8} jge      _jmp_addr_0x006dd994                     // 0x006dd98d    7d05
                         mov              ebx, 0x00000001                          // 0x006dd98f    bb01000000
_jmp_addr_0x006dd994:    add.s            edi, ebp                                 // 0x006dd994    03fd
                         add.s            esi, ebx                                 // 0x006dd996    03f3
_jmp_addr_0x006dd998:    cmp.s            edi, edx                                 // 0x006dd998    3bfa
                         {disp8} jne      _jmp_addr_0x006dd9a2                     // 0x006dd99a    7506
                         cmp              esi, dword ptr [esp + 0x18]              // 0x006dd99c    3b742418
                         {disp8} je       _jmp_addr_0x006dd9ba                     // 0x006dd9a0    7418
_jmp_addr_0x006dd9a2:    push             esi                                      // 0x006dd9a2    56
                         push             edi                                      // 0x006dd9a3    57
                         call             _jmp_addr_0x006dc9f0                     // 0x006dd9a4    e847f0ffff
                         add              esp, 0x08                                // 0x006dd9a9    83c408
                         test             eax, eax                                 // 0x006dd9ac    85c0
                         {disp8} jne      _jmp_addr_0x006dd9c6                     // 0x006dd9ae    7516
                         {disp8} mov      edx, dword ptr [esp + 0x14]              // 0x006dd9b0    8b542414
                         add.s            edi, ebp                                 // 0x006dd9b4    03fd
                         add.s            esi, ebx                                 // 0x006dd9b6    03f3
                         {disp8} jmp      _jmp_addr_0x006dd998                     // 0x006dd9b8    ebde
_jmp_addr_0x006dd9ba:    pop              edi                                      // 0x006dd9ba    5f
                         pop              esi                                      // 0x006dd9bb    5e
                         pop              ebp                                      // 0x006dd9bc    5d
                         mov              eax, 0x00000001                          // 0x006dd9bd    b801000000
                         pop              ebx                                      // 0x006dd9c2    5b
                         ret              0x0008                                   // 0x006dd9c3    c20800
_jmp_addr_0x006dd9c6:    pop              edi                                      // 0x006dd9c6    5f
                         pop              esi                                      // 0x006dd9c7    5e
                         pop              ebp                                      // 0x006dd9c8    5d
                         xor.s            eax, eax                                 // 0x006dd9c9    33c0
                         pop              ebx                                      // 0x006dd9cb    5b
                         ret              0x0008                                   // 0x006dd9cc    c20800
                         nop                                                       // 0x006dd9cf    90
                         {disp8} mov      edx, dword ptr [esp + 0x08]              // 0x006dd9d0    8b542408
                         mov              eax, dword ptr [ecx]                     // 0x006dd9d4    8b01
                         push             edx                                      // 0x006dd9d6    52
                         {disp8} mov      edx, dword ptr [esp + 0x08]              // 0x006dd9d7    8b542408
                         push             edx                                      // 0x006dd9db    52
                         call             dword ptr [eax + 0xb1c]                  // 0x006dd9dc    ff901c0b0000
                         ret              0x0008                                   // 0x006dd9e2    c20800
                         nop                                                       // 0x006dd9e5    90
                         nop                                                       // 0x006dd9e6    90
                         nop                                                       // 0x006dd9e7    90
                         nop                                                       // 0x006dd9e8    90
                         nop                                                       // 0x006dd9e9    90
                         nop                                                       // 0x006dd9ea    90
                         nop                                                       // 0x006dd9eb    90
                         nop                                                       // 0x006dd9ec    90
                         nop                                                       // 0x006dd9ed    90
                         nop                                                       // 0x006dd9ee    90
                         nop                                                       // 0x006dd9ef    90
                         {disp8} mov      edx, dword ptr [esp + 0x04]              // 0x006dd9f0    8b542404
                         push             esi                                      // 0x006dd9f4    56
                         mov.s            esi, ecx                                 // 0x006dd9f5    8bf1
                         cmp              dword ptr [esi + 0x00000148], edx        // 0x006dd9f7    399648010000
                         push             edi                                      // 0x006dd9fd    57
                         {disp8} je       _jmp_addr_0x006dda07                     // 0x006dd9fe    7407
                         pop              edi                                      // 0x006dda00    5f
                         xor.s            eax, eax                                 // 0x006dda01    33c0
                         pop              esi                                      // 0x006dda03    5e
                         ret              0x0008                                   // 0x006dda04    c20800
_jmp_addr_0x006dda07:    {disp32} mov     eax, dword ptr [esi + 0x0000014c]        // 0x006dda07    8b864c010000
                         cmp              eax, 0x01                                // 0x006dda0d    83f801
                         {disp8} mov      edi, dword ptr [esp + 0x10]              // 0x006dda10    8b7c2410
                         {disp8} je       _jmp_addr_0x006dda1b                     // 0x006dda14    7405
                         cmp              eax, 0x06                                // 0x006dda16    83f806
                         {disp8} jne      _jmp_addr_0x006dda4c                     // 0x006dda19    7531
_jmp_addr_0x006dda1b:    {disp32} mov     ecx, dword ptr [esi + 0x00000150]        // 0x006dda1b    8b8e50010000
                         push             ebx                                      // 0x006dda21    53
                         {disp32} lea     ebx, dword ptr [ecx * 0x4 + -0x00000002] // 0x006dda22    8d1c8dfeffffff
                         sub.s            eax, edi                                 // 0x006dda29    2bc7
                         cmp.s            eax, ebx                                 // 0x006dda2b    3bc3
                         pop              ebx                                      // 0x006dda2d    5b
                         {disp8} jne      _jmp_addr_0x006dda4c                     // 0x006dda2e    751c
                         {disp8} lea      eax, dword ptr [edi + ecx * 0x2 + -0x01] // 0x006dda30    8d444fff
                         push             eax                                      // 0x006dda34    50
                         push             edx                                      // 0x006dda35    52
                         call             _jmp_addr_0x006dc9f0                     // 0x006dda36    e8b5efffff
                         add              esp, 0x08                                // 0x006dda3b    83c408
                         test             eax, eax                                 // 0x006dda3e    85c0
                         {disp8} jne      _jmp_addr_0x006dda4c                     // 0x006dda40    750a
                         pop              edi                                      // 0x006dda42    5f
                         mov              eax, 0x00000001                          // 0x006dda43    b801000000
                         pop              esi                                      // 0x006dda48    5e
                         ret              0x0008                                   // 0x006dda49    c20800
_jmp_addr_0x006dda4c:    {disp32} mov     ecx, dword ptr [esi + 0x00000150]        // 0x006dda4c    8b8e50010000
                         {disp32} mov     eax, dword ptr [esi + 0x0000014c]        // 0x006dda52    8b864c010000
                         sub.s            eax, edi                                 // 0x006dda58    2bc7
                         {disp8} lea      edx, dword ptr [ecx + ecx * 0x1 + -0x01] // 0x006dda5a    8d5409ff
                         sub.s            eax, edx                                 // 0x006dda5e    2bc2
                         neg              eax                                      // 0x006dda60    f7d8
                         sbb.s            eax, eax                                 // 0x006dda62    1bc0
                         pop              edi                                      // 0x006dda64    5f
                         inc              eax                                      // 0x006dda65    40
                         pop              esi                                      // 0x006dda66    5e
                         ret              0x0008                                   // 0x006dda67    c20800
                         nop                                                       // 0x006dda6a    90
                         nop                                                       // 0x006dda6b    90
                         nop                                                       // 0x006dda6c    90
                         nop                                                       // 0x006dda6d    90
                         nop                                                       // 0x006dda6e    90
                         nop                                                       // 0x006dda6f    90
                         {disp32} mov     eax, dword ptr [ecx + 0x00000148]        // 0x006dda70    8b8148010000
                         cmp              eax, dword ptr [esp + 0x04]              // 0x006dda76    3b442404
                         {disp8} jne      _jmp_addr_0x006dda81                     // 0x006dda7a    7505
                         xor.s            eax, eax                                 // 0x006dda7c    33c0
                         ret              0x0008                                   // 0x006dda7e    c20800
_jmp_addr_0x006dda81:    {disp32} mov     eax, dword ptr [ecx + 0x0000014c]        // 0x006dda81    8b814c010000
                         {disp8} mov      edx, dword ptr [esp + 0x08]              // 0x006dda87    8b542408
                         {disp32} mov     ecx, dword ptr [ecx + 0x00000150]        // 0x006dda8b    8b8950010000
                         sub.s            eax, edx                                 // 0x006dda91    2bc2
                         {disp8} lea      edx, dword ptr [ecx + ecx * 0x1 + -0x01] // 0x006dda93    8d5409ff
                         sub.s            eax, edx                                 // 0x006dda97    2bc2
                         neg              eax                                      // 0x006dda99    f7d8
                         sbb.s            eax, eax                                 // 0x006dda9b    1bc0
                         inc              eax                                      // 0x006dda9d    40
                         ret              0x0008                                   // 0x006dda9e    c20800
                         nop                                                       // 0x006ddaa1    90
                         nop                                                       // 0x006ddaa2    90
                         nop                                                       // 0x006ddaa3    90
                         nop                                                       // 0x006ddaa4    90
                         nop                                                       // 0x006ddaa5    90
                         nop                                                       // 0x006ddaa6    90
                         nop                                                       // 0x006ddaa7    90
                         nop                                                       // 0x006ddaa8    90
                         nop                                                       // 0x006ddaa9    90
                         nop                                                       // 0x006ddaaa    90
                         nop                                                       // 0x006ddaab    90
                         nop                                                       // 0x006ddaac    90
                         nop                                                       // 0x006ddaad    90
                         nop                                                       // 0x006ddaae    90
                         nop                                                       // 0x006ddaaf    90
                         {disp8} mov      edx, dword ptr [esp + 0x04]              // 0x006ddab0    8b542404
                         {disp32} mov     eax, dword ptr [ecx + 0x00000148]        // 0x006ddab4    8b8148010000
                         sub.s            eax, edx                                 // 0x006ddaba    2bc2
                         cdq                                                       // 0x006ddabc    99
                         xor.s            eax, edx                                 // 0x006ddabd    33c2
                         sub.s            eax, edx                                 // 0x006ddabf    2bc2
                         cmp              eax, 0x02                                // 0x006ddac1    83f802
                         {disp8} jne      _jmp_addr_0x006ddadf                     // 0x006ddac4    7519
                         {disp8} mov      edx, dword ptr [esp + 0x08]              // 0x006ddac6    8b542408
                         {disp32} mov     eax, dword ptr [ecx + 0x0000014c]        // 0x006ddaca    8b814c010000
                         sub.s            eax, edx                                 // 0x006ddad0    2bc2
                         cdq                                                       // 0x006ddad2    99
                         xor.s            eax, edx                                 // 0x006ddad3    33c2
                         sub.s            eax, edx                                 // 0x006ddad5    2bc2
                         cmp              eax, 0x01                                // 0x006ddad7    83f801
                         {disp8} jne      _jmp_addr_0x006ddb02                     // 0x006ddada    7526
                         ret              0x0008                                   // 0x006ddadc    c20800
_jmp_addr_0x006ddadf:    cmp              eax, 0x01                                // 0x006ddadf    83f801
                         {disp8} jne      _jmp_addr_0x006ddb02                     // 0x006ddae2    751e
                         {disp8} mov      edx, dword ptr [esp + 0x08]              // 0x006ddae4    8b542408
                         {disp32} mov     eax, dword ptr [ecx + 0x0000014c]        // 0x006ddae8    8b814c010000
                         sub.s            eax, edx                                 // 0x006ddaee    2bc2
                         cdq                                                       // 0x006ddaf0    99
                         xor.s            eax, edx                                 // 0x006ddaf1    33c2
                         sub.s            eax, edx                                 // 0x006ddaf3    2bc2
                         cmp              eax, 0x02                                // 0x006ddaf5    83f802
                         {disp8} jne      _jmp_addr_0x006ddb02                     // 0x006ddaf8    7508
                         mov              eax, 0x00000001                          // 0x006ddafa    b801000000
                         ret              0x0008                                   // 0x006ddaff    c20800
_jmp_addr_0x006ddb02:    xor.s            eax, eax                                 // 0x006ddb02    33c0
                         ret              0x0008                                   // 0x006ddb04    c20800
                         nop                                                       // 0x006ddb07    90
                         nop                                                       // 0x006ddb08    90
                         nop                                                       // 0x006ddb09    90
                         nop                                                       // 0x006ddb0a    90
                         nop                                                       // 0x006ddb0b    90
                         nop                                                       // 0x006ddb0c    90
                         nop                                                       // 0x006ddb0d    90
                         nop                                                       // 0x006ddb0e    90
                         nop                                                       // 0x006ddb0f    90
                         {disp8} mov      edx, dword ptr [esp + 0x08]              // 0x006ddb10    8b542408
                         mov              eax, dword ptr [ecx]                     // 0x006ddb14    8b01
                         push             edx                                      // 0x006ddb16    52
                         {disp8} mov      edx, dword ptr [esp + 0x08]              // 0x006ddb17    8b542408
                         push             edx                                      // 0x006ddb1b    52
                         call             dword ptr [eax + 0xb1c]                  // 0x006ddb1c    ff901c0b0000
                         ret              0x0008                                   // 0x006ddb22    c20800
                         nop                                                       // 0x006ddb25    90
                         nop                                                       // 0x006ddb26    90
                         nop                                                       // 0x006ddb27    90
                         nop                                                       // 0x006ddb28    90
                         nop                                                       // 0x006ddb29    90
                         nop                                                       // 0x006ddb2a    90
                         nop                                                       // 0x006ddb2b    90
                         nop                                                       // 0x006ddb2c    90
                         nop                                                       // 0x006ddb2d    90
                         nop                                                       // 0x006ddb2e    90
                         nop                                                       // 0x006ddb2f    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]              // 0x006ddb30    8b442404
                         push             ebx                                      // 0x006ddb34    53
                         push             ebp                                      // 0x006ddb35    55
                         push             esi                                      // 0x006ddb36    56
                         {disp32} mov     esi, dword ptr [ecx + 0x00000148]        // 0x006ddb37    8bb148010000
                         cmp.s            esi, eax                                 // 0x006ddb3d    3bf0
                         push             edi                                      // 0x006ddb3f    57
                         {disp8} je       _jmp_addr_0x006ddb6a                     // 0x006ddb40    7428
                         {disp32} mov     eax, dword ptr [ecx + 0x0000014c]        // 0x006ddb42    8b814c010000
                         {disp8} mov      edx, dword ptr [esp + 0x18]              // 0x006ddb48    8b542418
                         cmp.s            eax, edx                                 // 0x006ddb4c    3bc2
                         {disp8} je       _jmp_addr_0x006ddb6a                     // 0x006ddb4e    741a
                         sub.s            eax, edx                                 // 0x006ddb50    2bc2
                         cdq                                                       // 0x006ddb52    99
                         mov.s            edi, eax                                 // 0x006ddb53    8bf8
                         xor.s            edi, edx                                 // 0x006ddb55    33fa
                         sub.s            edi, edx                                 // 0x006ddb57    2bfa
                         {disp8} mov      edx, dword ptr [esp + 0x14]              // 0x006ddb59    8b542414
                         mov.s            eax, esi                                 // 0x006ddb5d    8bc6
                         sub.s            eax, edx                                 // 0x006ddb5f    2bc2
                         cdq                                                       // 0x006ddb61    99
                         xor.s            eax, edx                                 // 0x006ddb62    33c2
                         sub.s            eax, edx                                 // 0x006ddb64    2bc2
                         cmp.s            eax, edi                                 // 0x006ddb66    3bc7
                         {disp8} jne      _jmp_addr_0x006ddbd2                     // 0x006ddb68    7568
_jmp_addr_0x006ddb6a:    {disp8} mov      edx, dword ptr [esp + 0x14]              // 0x006ddb6a    8b542414
                         {disp32} mov     edi, dword ptr [ecx + 0x0000014c]        // 0x006ddb6e    8bb94c010000
                         mov.s            eax, esi                                 // 0x006ddb74    8bc6
                         sub.s            eax, edx                                 // 0x006ddb76    2bc2
                         xor.s            ebp, ebp                                 // 0x006ddb78    33ed
                         xor.s            ebx, ebx                                 // 0x006ddb7a    33db
                         test             eax, eax                                 // 0x006ddb7c    85c0
                         {disp8} jle      _jmp_addr_0x006ddb85                     // 0x006ddb7e    7e05
                         or               ebp, 0xffffffff                          // 0x006ddb80    83cdff
                         {disp8} jmp      _jmp_addr_0x006ddb8c                     // 0x006ddb83    eb07
_jmp_addr_0x006ddb85:    {disp8} jge      _jmp_addr_0x006ddb8c                     // 0x006ddb85    7d05
                         mov              ebp, 0x00000001                          // 0x006ddb87    bd01000000
_jmp_addr_0x006ddb8c:    {disp8} mov      edx, dword ptr [esp + 0x18]              // 0x006ddb8c    8b542418
                         mov.s            eax, edi                                 // 0x006ddb90    8bc7
                         sub.s            eax, edx                                 // 0x006ddb92    2bc2
                         test             eax, eax                                 // 0x006ddb94    85c0
                         {disp8} jle      _jmp_addr_0x006ddb9d                     // 0x006ddb96    7e05
                         or               ebx, 0xffffffff                          // 0x006ddb98    83cbff
                         {disp8} jmp      _jmp_addr_0x006ddba4                     // 0x006ddb9b    eb07
_jmp_addr_0x006ddb9d:    {disp8} jge      _jmp_addr_0x006ddba4                     // 0x006ddb9d    7d05
                         mov              ebx, 0x00000001                          // 0x006ddb9f    bb01000000
_jmp_addr_0x006ddba4:    {disp8} mov      eax, dword ptr [esp + 0x14]              // 0x006ddba4    8b442414
                         add.s            esi, ebp                                 // 0x006ddba8    03f5
                         add.s            edi, ebx                                 // 0x006ddbaa    03fb
                         cmp.s            esi, eax                                 // 0x006ddbac    3bf0
                         {disp8} jne      _jmp_addr_0x006ddbb6                     // 0x006ddbae    7506
                         cmp              edi, dword ptr [esp + 0x18]              // 0x006ddbb0    3b7c2418
                         {disp8} je       _jmp_addr_0x006ddbc6                     // 0x006ddbb4    7410
_jmp_addr_0x006ddbb6:    push             edi                                      // 0x006ddbb6    57
                         push             esi                                      // 0x006ddbb7    56
                         call             _jmp_addr_0x006dc9f0                     // 0x006ddbb8    e833eeffff
                         add              esp, 0x08                                // 0x006ddbbd    83c408
                         test             eax, eax                                 // 0x006ddbc0    85c0
                         {disp8} jne      _jmp_addr_0x006ddbd2                     // 0x006ddbc2    750e
                         {disp8} jmp      _jmp_addr_0x006ddba4                     // 0x006ddbc4    ebde
_jmp_addr_0x006ddbc6:    pop              edi                                      // 0x006ddbc6    5f
                         pop              esi                                      // 0x006ddbc7    5e
                         pop              ebp                                      // 0x006ddbc8    5d
                         mov              eax, 0x00000001                          // 0x006ddbc9    b801000000
                         pop              ebx                                      // 0x006ddbce    5b
                         ret              0x0008                                   // 0x006ddbcf    c20800
_jmp_addr_0x006ddbd2:    pop              edi                                      // 0x006ddbd2    5f
                         pop              esi                                      // 0x006ddbd3    5e
                         pop              ebp                                      // 0x006ddbd4    5d
                         xor.s            eax, eax                                 // 0x006ddbd5    33c0
                         pop              ebx                                      // 0x006ddbd7    5b
                         ret              0x0008                                   // 0x006ddbd8    c20800
                         nop                                                       // 0x006ddbdb    90
                         nop                                                       // 0x006ddbdc    90
                         nop                                                       // 0x006ddbdd    90
                         nop                                                       // 0x006ddbde    90
                         nop                                                       // 0x006ddbdf    90
                         {disp8} mov      edx, dword ptr [esp + 0x08]              // 0x006ddbe0    8b542408
                         mov              eax, dword ptr [ecx]                     // 0x006ddbe4    8b01
                         push             edx                                      // 0x006ddbe6    52
                         {disp8} mov      edx, dword ptr [esp + 0x08]              // 0x006ddbe7    8b542408
                         push             edx                                      // 0x006ddbeb    52
                         call             dword ptr [eax + 0xb1c]                  // 0x006ddbec    ff901c0b0000
                         ret              0x0008                                   // 0x006ddbf2    c20800
                         nop                                                       // 0x006ddbf5    90
                         nop                                                       // 0x006ddbf6    90
                         nop                                                       // 0x006ddbf7    90
                         nop                                                       // 0x006ddbf8    90
                         nop                                                       // 0x006ddbf9    90
                         nop                                                       // 0x006ddbfa    90
                         nop                                                       // 0x006ddbfb    90
                         nop                                                       // 0x006ddbfc    90
                         nop                                                       // 0x006ddbfd    90
                         nop                                                       // 0x006ddbfe    90
                         nop                                                       // 0x006ddbff    90
                         push             ecx                                      // 0x006ddc00    51
                         {disp8} mov      eax, dword ptr [esp + 0x08]              // 0x006ddc01    8b442408
                         push             ebx                                      // 0x006ddc05    53
                         push             ebp                                      // 0x006ddc06    55
                         push             esi                                      // 0x006ddc07    56
                         push             edi                                      // 0x006ddc08    57
                         {disp32} mov     edi, dword ptr [ecx + 0x00000148]        // 0x006ddc09    8bb948010000
                         cmp.s            edi, eax                                 // 0x006ddc0f    3bf8
                         {disp32} je      _jmp_addr_0x006ddc9a                     // 0x006ddc11    0f8483000000
                         {disp32} mov     esi, dword ptr [ecx + 0x0000014c]        // 0x006ddc17    8bb14c010000
                         {disp8} mov      edx, dword ptr [esp + 0x1c]              // 0x006ddc1d    8b54241c
                         cmp.s            esi, edx                                 // 0x006ddc21    3bf2
                         {disp8} je       _jmp_addr_0x006ddc9a                     // 0x006ddc23    7475
                         mov.s            ecx, edi                                 // 0x006ddc25    8bcf
                         sub.s            ecx, eax                                 // 0x006ddc27    2bc8
                         mov.s            eax, esi                                 // 0x006ddc29    8bc6
                         sub.s            eax, edx                                 // 0x006ddc2b    2bc2
                         {disp8} mov      dword ptr [esp + 0x10], eax              // 0x006ddc2d    89442410
                         cdq                                                       // 0x006ddc31    99
                         mov.s            ebx, eax                                 // 0x006ddc32    8bd8
                         xor.s            ebx, edx                                 // 0x006ddc34    33da
                         sub.s            ebx, edx                                 // 0x006ddc36    2bda
                         mov.s            eax, ecx                                 // 0x006ddc38    8bc1
                         cdq                                                       // 0x006ddc3a    99
                         xor.s            eax, edx                                 // 0x006ddc3b    33c2
                         sub.s            eax, edx                                 // 0x006ddc3d    2bc2
                         cmp.s            eax, ebx                                 // 0x006ddc3f    3bc3
                         {disp8} jne      _jmp_addr_0x006ddc9a                     // 0x006ddc41    7557
                         xor.s            ebp, ebp                                 // 0x006ddc43    33ed
                         xor.s            ebx, ebx                                 // 0x006ddc45    33db
                         test             ecx, ecx                                 // 0x006ddc47    85c9
                         {disp8} jle      _jmp_addr_0x006ddc50                     // 0x006ddc49    7e05
                         or               ebp, 0xffffffff                          // 0x006ddc4b    83cdff
                         {disp8} jmp      _jmp_addr_0x006ddc57                     // 0x006ddc4e    eb07
_jmp_addr_0x006ddc50:    {disp8} jge      _jmp_addr_0x006ddc57                     // 0x006ddc50    7d05
                         mov              ebp, 0x00000001                          // 0x006ddc52    bd01000000
_jmp_addr_0x006ddc57:    {disp8} mov      eax, dword ptr [esp + 0x10]              // 0x006ddc57    8b442410
                         test             eax, eax                                 // 0x006ddc5b    85c0
                         {disp8} jle      _jmp_addr_0x006ddc64                     // 0x006ddc5d    7e05
                         or               ebx, 0xffffffff                          // 0x006ddc5f    83cbff
                         {disp8} jmp      _jmp_addr_0x006ddc6b                     // 0x006ddc62    eb07
_jmp_addr_0x006ddc64:    {disp8} jge      _jmp_addr_0x006ddc6b                     // 0x006ddc64    7d05
                         mov              ebx, 0x00000001                          // 0x006ddc66    bb01000000
_jmp_addr_0x006ddc6b:    {disp8} mov      eax, dword ptr [esp + 0x18]              // 0x006ddc6b    8b442418
                         add.s            edi, ebp                                 // 0x006ddc6f    03fd
                         add.s            esi, ebx                                 // 0x006ddc71    03f3
                         cmp.s            edi, eax                                 // 0x006ddc73    3bf8
                         {disp8} jne      _jmp_addr_0x006ddc7d                     // 0x006ddc75    7506
                         cmp              esi, dword ptr [esp + 0x1c]              // 0x006ddc77    3b74241c
                         {disp8} je       _jmp_addr_0x006ddc8d                     // 0x006ddc7b    7410
_jmp_addr_0x006ddc7d:    push             esi                                      // 0x006ddc7d    56
                         push             edi                                      // 0x006ddc7e    57
                         call             _jmp_addr_0x006dc9f0                     // 0x006ddc7f    e86cedffff
                         add              esp, 0x08                                // 0x006ddc84    83c408
                         test             eax, eax                                 // 0x006ddc87    85c0
                         {disp8} jne      _jmp_addr_0x006ddc9a                     // 0x006ddc89    750f
                         {disp8} jmp      _jmp_addr_0x006ddc6b                     // 0x006ddc8b    ebde
_jmp_addr_0x006ddc8d:    pop              edi                                      // 0x006ddc8d    5f
                         pop              esi                                      // 0x006ddc8e    5e
                         pop              ebp                                      // 0x006ddc8f    5d
                         mov              eax, 0x00000001                          // 0x006ddc90    b801000000
                         pop              ebx                                      // 0x006ddc95    5b
                         pop              ecx                                      // 0x006ddc96    59
                         ret              0x0008                                   // 0x006ddc97    c20800
_jmp_addr_0x006ddc9a:    pop              edi                                      // 0x006ddc9a    5f
                         pop              esi                                      // 0x006ddc9b    5e
                         pop              ebp                                      // 0x006ddc9c    5d
                         xor.s            eax, eax                                 // 0x006ddc9d    33c0
                         pop              ebx                                      // 0x006ddc9f    5b
                         pop              ecx                                      // 0x006ddca0    59
                         ret              0x0008                                   // 0x006ddca1    c20800
                         nop                                                       // 0x006ddca4    90
                         nop                                                       // 0x006ddca5    90
                         nop                                                       // 0x006ddca6    90
                         nop                                                       // 0x006ddca7    90
                         nop                                                       // 0x006ddca8    90
                         nop                                                       // 0x006ddca9    90
                         nop                                                       // 0x006ddcaa    90
                         nop                                                       // 0x006ddcab    90
                         nop                                                       // 0x006ddcac    90
                         nop                                                       // 0x006ddcad    90
                         nop                                                       // 0x006ddcae    90
                         nop                                                       // 0x006ddcaf    90
                         {disp8} mov      edx, dword ptr [esp + 0x08]              // 0x006ddcb0    8b542408
                         mov              eax, dword ptr [ecx]                     // 0x006ddcb4    8b01
                         push             edx                                      // 0x006ddcb6    52
                         {disp8} mov      edx, dword ptr [esp + 0x08]              // 0x006ddcb7    8b542408
                         push             edx                                      // 0x006ddcbb    52
                         call             dword ptr [eax + 0xb1c]                  // 0x006ddcbc    ff901c0b0000
                         ret              0x0008                                   // 0x006ddcc2    c20800
                         nop                                                       // 0x006ddcc5    90
                         nop                                                       // 0x006ddcc6    90
                         nop                                                       // 0x006ddcc7    90
                         nop                                                       // 0x006ddcc8    90
                         nop                                                       // 0x006ddcc9    90
                         nop                                                       // 0x006ddcca    90
                         nop                                                       // 0x006ddccb    90
                         nop                                                       // 0x006ddccc    90
                         nop                                                       // 0x006ddccd    90
                         nop                                                       // 0x006ddcce    90
                         nop                                                       // 0x006ddccf    90
                         {disp8} mov      edx, dword ptr [esp + 0x04]              // 0x006ddcd0    8b542404
                         {disp32} mov     eax, dword ptr [ecx + 0x00000148]        // 0x006ddcd4    8b8148010000
                         sub.s            eax, edx                                 // 0x006ddcda    2bc2
                         cdq                                                       // 0x006ddcdc    99
                         xor.s            eax, edx                                 // 0x006ddcdd    33c2
                         sub.s            eax, edx                                 // 0x006ddcdf    2bc2
                         cmp              eax, 0x01                                // 0x006ddce1    83f801
                         {disp8} jg       _jmp_addr_0x006ddd04                     // 0x006ddce4    7f1e
                         {disp8} mov      edx, dword ptr [esp + 0x08]              // 0x006ddce6    8b542408
                         {disp32} mov     eax, dword ptr [ecx + 0x0000014c]        // 0x006ddcea    8b814c010000
                         sub.s            eax, edx                                 // 0x006ddcf0    2bc2
                         cdq                                                       // 0x006ddcf2    99
                         xor.s            eax, edx                                 // 0x006ddcf3    33c2
                         sub.s            eax, edx                                 // 0x006ddcf5    2bc2
                         cmp              eax, 0x01                                // 0x006ddcf7    83f801
                         {disp8} jg       _jmp_addr_0x006ddd04                     // 0x006ddcfa    7f08
                         mov              eax, 0x00000001                          // 0x006ddcfc    b801000000
                         ret              0x0008                                   // 0x006ddd01    c20800
_jmp_addr_0x006ddd04:    xor.s            eax, eax                                 // 0x006ddd04    33c0
                         ret              0x0008                                   // 0x006ddd06    c20800
                         nop                                                       // 0x006ddd09    90
                         nop                                                       // 0x006ddd0a    90
                         nop                                                       // 0x006ddd0b    90
                         nop                                                       // 0x006ddd0c    90
                         nop                                                       // 0x006ddd0d    90
                         nop                                                       // 0x006ddd0e    90
                         nop                                                       // 0x006ddd0f    90
                         {disp8} mov      edx, dword ptr [esp + 0x08]              // 0x006ddd10    8b542408
                         mov              eax, dword ptr [ecx]                     // 0x006ddd14    8b01
                         push             edx                                      // 0x006ddd16    52
                         {disp8} mov      edx, dword ptr [esp + 0x08]              // 0x006ddd17    8b542408
                         push             edx                                      // 0x006ddd1b    52
                         call             dword ptr [eax + 0xb1c]                  // 0x006ddd1c    ff901c0b0000
                         ret              0x0008                                   // 0x006ddd22    c20800
                         nop                                                       // 0x006ddd25    90
                         nop                                                       // 0x006ddd26    90
                         nop                                                       // 0x006ddd27    90
                         nop                                                       // 0x006ddd28    90
                         nop                                                       // 0x006ddd29    90
                         nop                                                       // 0x006ddd2a    90
                         nop                                                       // 0x006ddd2b    90
                         nop                                                       // 0x006ddd2c    90
                         nop                                                       // 0x006ddd2d    90
                         nop                                                       // 0x006ddd2e    90
                         nop                                                       // 0x006ddd2f    90
                         xor.s            eax, eax                                 // 0x006ddd30    33c0
                         ret              0x0008                                   // 0x006ddd32    c20800
                         nop                                                       // 0x006ddd35    90
                         nop                                                       // 0x006ddd36    90
                         nop                                                       // 0x006ddd37    90
                         nop                                                       // 0x006ddd38    90
                         nop                                                       // 0x006ddd39    90
                         nop                                                       // 0x006ddd3a    90
                         nop                                                       // 0x006ddd3b    90
                         nop                                                       // 0x006ddd3c    90
                         nop                                                       // 0x006ddd3d    90
                         nop                                                       // 0x006ddd3e    90
                         nop                                                       // 0x006ddd3f    90
                         xor.s            eax, eax                                 // 0x006ddd40    33c0
                         ret              0x0008                                   // 0x006ddd42    c20800
                         nop                                                       // 0x006ddd45    90
                         nop                                                       // 0x006ddd46    90
                         nop                                                       // 0x006ddd47    90
                         nop                                                       // 0x006ddd48    90
                         nop                                                       // 0x006ddd49    90
                         nop                                                       // 0x006ddd4a    90
                         nop                                                       // 0x006ddd4b    90
                         nop                                                       // 0x006ddd4c    90
                         nop                                                       // 0x006ddd4d    90
                         nop                                                       // 0x006ddd4e    90
                         nop                                                       // 0x006ddd4f    90
_jmp_addr_0x006ddd50:    push             esi                                      // 0x006ddd50    56
                         push             edi                                      // 0x006ddd51    57
                         mov.s            esi, ecx                                 // 0x006ddd52    8bf1
                         call             ??0GameThing@@QAE@XZ                     // 0x006ddd54    e8b71ce9ff
                         xor.s            edi, edi                                 // 0x006ddd59    33ff
                         {disp8} mov      dword ptr [esi + 0x14], edi              // 0x006ddd5b    897e14
                         {disp8} mov      dword ptr [esi + 0x18], edi              // 0x006ddd5e    897e18
                         {disp8} mov      dword ptr [esi + 0x1c], edi              // 0x006ddd61    897e1c
                         {disp8} mov      dword ptr [esi + 0x20], edi              // 0x006ddd64    897e20
                         mov.s            ecx, esi                                 // 0x006ddd67    8bce
                         mov              dword ptr [esi], 0x008c31a0              // 0x006ddd69    c706a0318c00
                         call             ?SetToZero@GameThingWithPos@@QAEXXZ      // 0x006ddd6f    e85c28e9ff
                         {disp8} lea      eax, dword ptr [esi + 0x28]              // 0x006ddd74    8d4628
                         mov              ecx, 0x00000002                          // 0x006ddd77    b902000000
_jmp_addr_0x006ddd7c:    mov              dword ptr [eax], edi                     // 0x006ddd7c    8938
                         {disp8} mov      dword ptr [eax + 0x04], edi              // 0x006ddd7e    897804
                         mov              dword ptr [eax], edi                     // 0x006ddd81    8938
                         add              eax, 0x08                                // 0x006ddd83    83c008
                         dec              ecx                                      // 0x006ddd86    49
                         {disp8} jne      _jmp_addr_0x006ddd7c                     // 0x006ddd87    75f3
                         pop              edi                                      // 0x006ddd89    5f
                         mov              dword ptr [esi], 0x0093dbbc              // 0x006ddd8a    c706bcdb9300
                         mov.s            eax, esi                                 // 0x006ddd90    8bc6
                         pop              esi                                      // 0x006ddd92    5e
                         ret                                                       // 0x006ddd93    c3
                         nop                                                       // 0x006ddd94    90
                         nop                                                       // 0x006ddd95    90
                         nop                                                       // 0x006ddd96    90
                         nop                                                       // 0x006ddd97    90
                         nop                                                       // 0x006ddd98    90
                         nop                                                       // 0x006ddd99    90
                         nop                                                       // 0x006ddd9a    90
                         nop                                                       // 0x006ddd9b    90
                         nop                                                       // 0x006ddd9c    90
                         nop                                                       // 0x006ddd9d    90
                         nop                                                       // 0x006ddd9e    90
                         nop                                                       // 0x006ddd9f    90
?GetText@ChessGamePuzzle@@UAEPBDXZ:
                         mov              eax, 0x00c099d0                          // 0x006ddda0    b8d099c000
                         ret                                                       // 0x006ddda5    c3
                         nop                                                       // 0x006ddda6    90
                         nop                                                       // 0x006ddda7    90
                         nop                                                       // 0x006ddda8    90
                         nop                                                       // 0x006ddda9    90
                         nop                                                       // 0x006dddaa    90
                         nop                                                       // 0x006dddab    90
                         nop                                                       // 0x006dddac    90
                         nop                                                       // 0x006dddad    90
                         nop                                                       // 0x006dddae    90
                         nop                                                       // 0x006dddaf    90
??_GChessGamePuzzle@@UAEPAXI@Z:
                         push             esi                                      // 0x006dddb0    56
                         mov.s            esi, ecx                                 // 0x006dddb1    8bf1
                         call             _jmp_addr_0x0056fa80                     // 0x006dddb3    e8c81ce9ff
                         test             byte ptr [esp + 0x08], 0x01              // 0x006dddb8    f644240801
                         {disp8} je       _jmp_addr_0x006dddcd                     // 0x006dddbd    740e
                         push             0x00000138                               // 0x006dddbf    6838010000
                         push             esi                                      // 0x006dddc4    56
                         call             ??3Base@@SAXPAXK@Z                     // 0x006dddc5    e8a68bd5ff
                         add              esp, 0x08                                // 0x006dddca    83c408
_jmp_addr_0x006dddcd:    mov.s            eax, esi                                 // 0x006dddcd    8bc6
                         pop              esi                                      // 0x006dddcf    5e
                         ret              0x0004                                   // 0x006dddd0    c20400
                         nop                                                       // 0x006dddd3    90
                         nop                                                       // 0x006dddd4    90
                         nop                                                       // 0x006dddd5    90
                         nop                                                       // 0x006dddd6    90
                         nop                                                       // 0x006dddd7    90
                         nop                                                       // 0x006dddd8    90
                         nop                                                       // 0x006dddd9    90
                         nop                                                       // 0x006dddda    90
                         nop                                                       // 0x006ddddb    90
                         nop                                                       // 0x006ddddc    90
                         nop                                                       // 0x006ddddd    90
                         nop                                                       // 0x006dddde    90
                         nop                                                       // 0x006ddddf    90
                         push             esi                                      // 0x006ddde0    56
                         push             0x0000101c                               // 0x006ddde1    681c100000
                         push             0x00c09908                               // 0x006ddde6    680899c000
                         push             0x00000138                               // 0x006dddeb    6838010000
                         call             ?__nw@Base@@SAPAXK@Z                     // 0x006dddf0    e8fb88d5ff
                         add              esp, 0x0c                                // 0x006dddf5    83c40c
                         test             eax, eax                                 // 0x006dddf8    85c0
                         {disp8} je       _jmp_addr_0x006dde18                     // 0x006dddfa    741c
                         mov.s            ecx, eax                                 // 0x006dddfc    8bc8
                         call             _jmp_addr_0x006ddd50                     // 0x006dddfe    e84dffffff
                         {disp8} mov      ecx, dword ptr [esp + 0x08]              // 0x006dde03    8b4c2408
                         mov.s            esi, eax                                 // 0x006dde07    8bf0
                         mov              eax, dword ptr [esi]                     // 0x006dde09    8b06
                         push             ecx                                      // 0x006dde0b    51
                         mov.s            ecx, esi                                 // 0x006dde0c    8bce
                         call             dword ptr [eax + 0x500]                  // 0x006dde0e    ff9000050000
                         mov.s            eax, esi                                 // 0x006dde14    8bc6
                         pop              esi                                      // 0x006dde16    5e
                         ret                                                       // 0x006dde17    c3
_jmp_addr_0x006dde18:    {disp8} mov      ecx, dword ptr [esp + 0x08]              // 0x006dde18    8b4c2408
                         xor.s            esi, esi                                 // 0x006dde1c    33f6
                         mov              eax, dword ptr [esi]                     // 0x006dde1e    8b06
                         push             ecx                                      // 0x006dde20    51
                         mov.s            ecx, esi                                 // 0x006dde21    8bce
                         call             dword ptr [eax + 0x500]                  // 0x006dde23    ff9000050000
                         mov.s            eax, esi                                 // 0x006dde29    8bc6
                         pop              esi                                      // 0x006dde2b    5e
                         ret                                                       // 0x006dde2c    c3
                         nop                                                       // 0x006dde2d    90
                         nop                                                       // 0x006dde2e    90
                         nop                                                       // 0x006dde2f    90
?ToBeDeleted@ChessGamePuzzle@@UAEXH@Z:
                         {disp8} mov      eax, dword ptr [esp + 0x04]              // 0x006dde30    8b442404
                         push             eax                                      // 0x006dde34    50
                         call             ?ToBeDeleted@GameThingWithPos@@UAEXH@Z   // 0x006dde35    e8c61fe9ff
                         ret              0x0004                                   // 0x006dde3a    c20400
                         nop                                                       // 0x006dde3d    90
                         nop                                                       // 0x006dde3e    90
                         nop                                                       // 0x006dde3f    90
?ToBeDeleted@ChessPion@@UAEXH@Z:
                         push             0x0                                      // 0x006dde40    6a00
                         call             ?ToBeDeleted@Object@@UAEXH@Z             // 0x006dde42    e82988f5ff
                         ret              0x0004                                   // 0x006dde47    c20400
                         nop                                                       // 0x006dde4a    90
                         nop                                                       // 0x006dde4b    90
                         nop                                                       // 0x006dde4c    90
                         nop                                                       // 0x006dde4d    90
                         nop                                                       // 0x006dde4e    90
                         nop                                                       // 0x006dde4f    90
?CallVirtualFunctionsForCreation@ChessPion@@UAEXABUMapCoords@@@Z:
                         {disp8} mov      eax, dword ptr [esp + 0x04]              // 0x006dde50    8b442404
                         push             eax                                      // 0x006dde54    50
                         call             ?CallVirtualFunctionsForCreation@Object@@UAEXABUMapCoords@@@Z  // 0x006dde55    e8868df5ff
                         ret              0x0004                                   // 0x006dde5a    c20400
                         nop                                                       // 0x006dde5d    90
                         nop                                                       // 0x006dde5e    90
                         nop                                                       // 0x006dde5f    90
                         sub              esp, 0x08                                // 0x006dde60    83ec08
                         push             ebx                                      // 0x006dde63    53
                         push             ebp                                      // 0x006dde64    55
                         {disp8} mov      ebp, dword ptr [esp + 0x14]              // 0x006dde65    8b6c2414
                         push             esi                                      // 0x006dde69    56
                         push             edi                                      // 0x006dde6a    57
                         {disp8} mov      dword ptr [esp + 0x10], ecx              // 0x006dde6b    894c2410
                         xor.s            ebx, ebx                                 // 0x006dde6f    33db
_jmp_addr_0x006dde71:    xor.s            eax, eax                                 // 0x006dde71    33c0
                         {disp8} mov      dword ptr [esp + 0x14], eax              // 0x006dde73    89442414
_jmp_addr_0x006dde77:    cmp              ebx, 0x01                                // 0x006dde77    83fb01
                         {disp8} mov      edx, dword ptr [esp + 0x10]              // 0x006dde7a    8b542410
                         {disp32} lea     edi, dword ptr [eax * 0x8 + 0x00000000]  // 0x006dde7e    8d3cc500000000
                         lea              ecx, dword ptr [edi + ebx * 0x1]         // 0x006dde85    8d0c1f
                         {disp8} lea      esi, dword ptr [edx + ecx * 0x4 + 0x38]  // 0x006dde88    8d748a38
                         mov              dword ptr [esi], 0x00000000              // 0x006dde8c    c70600000000
                         {disp8} jne      _jmp_addr_0x006ddeab                     // 0x006dde92    7517
                         push             0x0                                      // 0x006dde94    6a00
                         push             0x0                                      // 0x006dde96    6a00
                         push             ebp                                      // 0x006dde98    55
                         call             _jmp_addr_0x006ddf60                     // 0x006dde99    e8c2000000
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]              // 0x006dde9e    8b4c241c
                         add              esp, 0x0c                                // 0x006ddea2    83c40c
                         {disp8} mov      dword ptr [ecx + edi * 0x4 + 0x3c], eax  // 0x006ddea5    8944b93c
                         {disp8} jmp      _jmp_addr_0x006ddf19                     // 0x006ddea9    eb6e
_jmp_addr_0x006ddeab:    cmp              ebx, 0x06                                // 0x006ddeab    83fb06
                         {disp8} jne      _jmp_addr_0x006ddec7                     // 0x006ddeae    7517
                         push             0x0                                      // 0x006ddeb0    6a00
                         push             0x1                                      // 0x006ddeb2    6a01
                         push             ebp                                      // 0x006ddeb4    55
                         call             _jmp_addr_0x006ddf60                     // 0x006ddeb5    e8a6000000
                         {disp8} mov      edx, dword ptr [esp + 0x1c]              // 0x006ddeba    8b54241c
                         add              esp, 0x0c                                // 0x006ddebe    83c40c
                         {disp8} mov      dword ptr [edx + edi * 0x4 + 0x50], eax  // 0x006ddec1    8944ba50
                         {disp8} jmp      _jmp_addr_0x006ddf19                     // 0x006ddec5    eb52
_jmp_addr_0x006ddec7:    test             ebx, ebx                                 // 0x006ddec7    85db
                         {disp8} je       _jmp_addr_0x006ddeea                     // 0x006ddec9    741f
                         cmp              ebx, 0x07                                // 0x006ddecb    83fb07
                         {disp8} jne      _jmp_addr_0x006ddf19                     // 0x006ddece    7549
                         {disp8} mov      byte ptr [esp + 0x1c], 0x01              // 0x006dded0    c644241c01
_jmp_addr_0x006dded5:    cmp              eax, 0x07                                // 0x006dded5    83f807
                         {disp8} ja       _jmp_addr_0x006ddf19                     // 0x006dded8    773f
                         jmp              dword ptr [eax*4 + 0x6ddf40]             // 0x006ddeda    ff248540df6d00
                         {disp8} mov      eax, dword ptr [esp + 0x1c]              // 0x006ddee1    8b44241c
                         push             0x1                                      // 0x006ddee5    6a01
                         push             eax                                      // 0x006ddee7    50
                         {disp8} jmp      _jmp_addr_0x006ddf0e                     // 0x006ddee8    eb24
_jmp_addr_0x006ddeea:    {disp8} mov      byte ptr [esp + 0x1c], 0x00              // 0x006ddeea    c644241c00
                         {disp8} jmp      _jmp_addr_0x006dded5                     // 0x006ddeef    ebe4
                         push             0x2                                      // 0x006ddef1    6a02
                         {disp8} jmp      _jmp_addr_0x006ddf09                     // 0x006ddef3    eb14
                         {disp8} mov      edx, dword ptr [esp + 0x1c]              // 0x006ddef5    8b54241c
                         push             0x3                                      // 0x006ddef9    6a03
                         push             edx                                      // 0x006ddefb    52
                         {disp8} jmp      _jmp_addr_0x006ddf0e                     // 0x006ddefc    eb10
                         {disp8} mov      eax, dword ptr [esp + 0x1c]              // 0x006ddefe    8b44241c
                         push             0x4                                      // 0x006ddf02    6a04
                         push             eax                                      // 0x006ddf04    50
                         {disp8} jmp      _jmp_addr_0x006ddf0e                     // 0x006ddf05    eb07
                         push             0x5                                      // 0x006ddf07    6a05
_jmp_addr_0x006ddf09:    {disp8} mov      ecx, dword ptr [esp + 0x20]              // 0x006ddf09    8b4c2420
                         push             ecx                                      // 0x006ddf0d    51
_jmp_addr_0x006ddf0e:    push             ebp                                      // 0x006ddf0e    55
                         call             _jmp_addr_0x006ddf60                     // 0x006ddf0f    e84c000000
                         add              esp, 0x0c                                // 0x006ddf14    83c40c
                         mov              dword ptr [esi], eax                     // 0x006ddf17    8906
_jmp_addr_0x006ddf19:    {disp8} mov      eax, dword ptr [esp + 0x14]              // 0x006ddf19    8b442414
                         inc              eax                                      // 0x006ddf1d    40
                         cmp              eax, 0x08                                // 0x006ddf1e    83f808
                         {disp8} mov      dword ptr [esp + 0x14], eax              // 0x006ddf21    89442414
                         {disp32} jb      _jmp_addr_0x006dde77                     // 0x006ddf25    0f824cffffff
                         inc              ebx                                      // 0x006ddf2b    43
                         cmp              ebx, 0x08                                // 0x006ddf2c    83fb08
                         {disp32} jb      _jmp_addr_0x006dde71                     // 0x006ddf2f    0f823cffffff
                         pop              edi                                      // 0x006ddf35    5f
                         pop              esi                                      // 0x006ddf36    5e
                         pop              ebp                                      // 0x006ddf37    5d
                         pop              ebx                                      // 0x006ddf38    5b
                         add              esp, 0x08                                // 0x006ddf39    83c408
                         ret              0x0004                                   // 0x006ddf3c    c20400

// Snippet: db, [0x006ddf3f, 0x006ddf40)
.byte 0x90                        // 0x006ddf3f

// Snippet: jmptbl, [0x006ddf40, 0x006ddf60)
.byte 0xe1, 0xde, 0x6d, 0x00      // 0x006ddf40
.byte 0xf1, 0xde, 0x6d, 0x00      // 0x006ddf44
.byte 0xf5, 0xde, 0x6d, 0x00      // 0x006ddf48
.byte 0xfe, 0xde, 0x6d, 0x00      // 0x006ddf4c
.byte 0x07, 0xdf, 0x6d, 0x00      // 0x006ddf50
.byte 0xf5, 0xde, 0x6d, 0x00      // 0x006ddf54
.byte 0xf1, 0xde, 0x6d, 0x00      // 0x006ddf58
.byte 0xe1, 0xde, 0x6d, 0x00      // 0x006ddf5c

