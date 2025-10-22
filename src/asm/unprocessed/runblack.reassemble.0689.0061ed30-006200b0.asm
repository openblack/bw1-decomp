.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @SetFocusControl__8SetupBoxFP12SetupControl@12
.extern @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20
.extern ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z
.extern ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z
.extern _jmp_addr_0x0061ad20
.extern _jmp_addr_0x0061b330
.extern _jmp_addr_0x0061b350
.extern _jmp_addr_0x0061b4d0
.extern _jmp_addr_0x0061dc70
.extern _jmp_addr_0x0061e640
.extern _jmp_addr_0x0061e8d0
.extern _jmp_addr_0x0061ea40
.extern _jmp_addr_0x00621c40
.extern _jmp_addr_0x00622380
.extern _jmp_addr_0x006223a0
.extern _jmp_addr_0x006223b0
.extern _jmp_addr_0x006223f0
.extern _jmp_addr_0x00622420
.extern _jmp_addr_0x00622c10
.extern _jmp_addr_0x00622d40
.extern _jmp_addr_0x00623180
.extern _jmp_addr_0x00623200
.extern _jmp_addr_0x00623310
.extern _jmp_addr_0x00623470
.extern _jmp_addr_0x006239e0
.extern _jmp_addr_0x00624160
.extern _jmp_addr_0x006255c0
.extern ?IsLanLobby@MPFEConnectionStatus@@QAE_NXZ
.extern  ??3@YAXPAX@Z
.extern _wcsncpy
.extern _wcslen
.extern ??2@YAPAXI@Z
.extern __chkstk
.extern _wcscmp
.extern ?Release@LH3DTexture@@QAEXXZ

.globl _jmp_addr_0x0061ed30

start_0x0061ed30_0x006200b0:
// Snippet: asm, [0x0061ed30, 0x0061fffa)
_jmp_addr_0x0061ed30:    mov              eax, 0x00009060                               // 0x0061ed30    b860900000
                         call             __chkstk                                      // 0x0061ed35    e876811a00
                         push             ebx                                           // 0x0061ed3a    53
                         push             ebp                                           // 0x0061ed3b    55
                         {disp32} mov     ebp, dword ptr [esp + 0x00009070]             // 0x0061ed3c    8bac2470900000
                         test             ebp, ebp                                      // 0x0061ed43    85ed
                         push             esi                                           // 0x0061ed45    56
                         {disp32} mov     esi, dword ptr [esp + 0x00009070]             // 0x0061ed46    8bb42470900000
                         {disp32} mov     eax, dword ptr [esi + 0x00000a4c]             // 0x0061ed4d    8b864c0a0000
                         push             edi                                           // 0x0061ed53    57
                         {disp32} mov     dword ptr [eax + 0x00000a64], esi             // 0x0061ed54    89b0640a0000
                         {disp8} jne      _jmp_addr_0x0061ed83                          // 0x0061ed5a    7527
                         {disp32} mov     ecx, dword ptr [esi + 0x00000120]             // 0x0061ed5c    8b8e20010000
                         mov              edx, dword ptr [ecx]                          // 0x0061ed62    8b11
                         push             0x1                                           // 0x0061ed64    6a01
                         call             dword ptr [edx + 8]                           // 0x0061ed66    ff5208
                         {disp32} mov     ecx, dword ptr [esi + 0x00000128]             // 0x0061ed69    8b8e28010000
                         mov              eax, dword ptr [ecx]                          // 0x0061ed6f    8b01
                         push             0x1                                           // 0x0061ed71    6a01
                         call             dword ptr [eax + 8]                           // 0x0061ed73    ff5008
                         {disp32} mov     ecx, dword ptr [esi + 0x00000124]             // 0x0061ed76    8b8e24010000
                         mov              edx, dword ptr [ecx]                          // 0x0061ed7c    8b11
                         push             0x1                                           // 0x0061ed7e    6a01
                         call             dword ptr [edx + 8]                           // 0x0061ed80    ff5208
_jmp_addr_0x0061ed83:    {disp32} mov     ecx, dword ptr [esi + 0x00000a4c]             // 0x0061ed83    8b8e4c0a0000
                         call             _jmp_addr_0x00622d40                          // 0x0061ed89    e8b23f0000
                         test             eax, eax                                      // 0x0061ed8e    85c0
                         {disp32} mov     dword ptr [esi + 0x00000a44], eax             // 0x0061ed90    8986440a0000
                         {disp8} je       _jmp_addr_0x0061edda                          // 0x0061ed96    7442
                         {disp32} mov     ecx, dword ptr [eax + 0x00000110]             // 0x0061ed98    8b8810010000
                         cmp              ecx, -0x01                                    // 0x0061ed9e    83f9ff
                         {disp8} je       _jmp_addr_0x0061edda                          // 0x0061eda1    7437
                         lea              edx, dword ptr [ecx + ecx * 0x4]              // 0x0061eda3    8d1489
                         lea              ecx, dword ptr [ecx + edx * 0x2]              // 0x0061eda6    8d0c51
                         {disp8} mov      edx, dword ptr [esi + ecx * 0x4 + 0x3c]       // 0x0061eda9    8b548e3c
                         {disp32} mov     ecx, dword ptr [edx + 0x00000250]             // 0x0061edad    8b8a50020000
                         test             ecx, ecx                                      // 0x0061edb3    85c9
                         {disp8} jle      _jmp_addr_0x0061edd0                          // 0x0061edb5    7e19
                         {disp32} mov     edx, dword ptr [edx + 0x00000264]             // 0x0061edb7    8b9264020000
                         mov              ecx, dword ptr [edx]                          // 0x0061edbd    8b0a
                         cmp.s            eax, ecx                                      // 0x0061edbf    3bc1
                         {disp8} jne      _jmp_addr_0x0061edd0                          // 0x0061edc1    750d
                         mov              eax, 0x00000001                               // 0x0061edc3    b801000000
                         {disp32} mov     byte ptr [esi + 0x00000a48], al               // 0x0061edc8    8886480a0000
                         {disp8} jmp      _jmp_addr_0x0061ede1                          // 0x0061edce    eb11
_jmp_addr_0x0061edd0:    xor.s            eax, eax                                      // 0x0061edd0    33c0
                         {disp32} mov     byte ptr [esi + 0x00000a48], al               // 0x0061edd2    8886480a0000
                         {disp8} jmp      _jmp_addr_0x0061ede1                          // 0x0061edd8    eb07
_jmp_addr_0x0061edda:    {disp32} mov     byte ptr [esi + 0x00000a48], 0x00             // 0x0061edda    c686480a000000
_jmp_addr_0x0061ede1:    {disp32} mov     ebx, dword ptr [esp + 0x0000907c]             // 0x0061ede1    8b9c247c900000
                         {disp32} lea     edi, dword ptr [esi + 0x000000e8]             // 0x0061ede8    8dbee8000000
                         {disp8} mov      dword ptr [esp + 0x10], 0x00000005            // 0x0061edee    c744241005000000
_jmp_addr_0x0061edf6:    {disp32} mov     eax, dword ptr [esp + 0x00009088]             // 0x0061edf6    8b842488900000
                         {disp32} mov     ecx, dword ptr [esp + 0x00009084]             // 0x0061edfd    8b8c2484900000
                         {disp32} mov     edx, dword ptr [esp + 0x00009080]             // 0x0061ee04    8b942480900000
                         push             eax                                           // 0x0061ee0b    50
                         push             ecx                                           // 0x0061ee0c    51
                         push             edx                                           // 0x0061ee0d    52
                         push             ebx                                           // 0x0061ee0e    53
                         push             ebp                                           // 0x0061ee0f    55
                         mov.s            ecx, edi                                      // 0x0061ee10    8bcf
                         call             _jmp_addr_0x0061ad20                          // 0x0061ee12    e809bfffff
                         {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x0061ee17    8b442410
                         sub              edi, 0x2c                                     // 0x0061ee1b    83ef2c
                         dec              eax                                           // 0x0061ee1e    48
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x0061ee1f    89442410
                         {disp8} jne      _jmp_addr_0x0061edf6                          // 0x0061ee23    75d1
                         {disp8} mov      eax, dword ptr [esi + 0x10]                   // 0x0061ee25    8b4610
                         cmp              eax, 0x03                                     // 0x0061ee28    83f803
                         {disp32} ja      _jmp_addr_0x0061eec0                          // 0x0061ee2b    0f878f000000
                         jmp              dword ptr [eax*4 + 0x61fffc]                  // 0x0061ee31    ff2485fcff6100
                         {disp32} mov     eax, dword ptr [esp + 0x00009088]             // 0x0061ee38    8b842488900000
                         {disp32} mov     ecx, dword ptr [esp + 0x00009084]             // 0x0061ee3f    8b8c2484900000
                         {disp32} mov     edi, dword ptr [esp + 0x00009080]             // 0x0061ee46    8bbc2480900000
                         push             eax                                           // 0x0061ee4d    50
                         push             ecx                                           // 0x0061ee4e    51
                         push             edi                                           // 0x0061ee4f    57
                         push             ebx                                           // 0x0061ee50    53
                         push             ebp                                           // 0x0061ee51    55
                         push             esi                                           // 0x0061ee52    56
                         call             _jmp_addr_0x0061ea40                          // 0x0061ee53    e8e8fbffff
                         {disp8} jmp      _jmp_addr_0x0061eec7                          // 0x0061ee58    eb6d
                         {disp32} mov     edx, dword ptr [esp + 0x00009088]             // 0x0061ee5a    8b942488900000
                         {disp32} mov     eax, dword ptr [esp + 0x00009084]             // 0x0061ee61    8b842484900000
                         {disp32} mov     edi, dword ptr [esp + 0x00009080]             // 0x0061ee68    8bbc2480900000
                         push             edx                                           // 0x0061ee6f    52
                         push             eax                                           // 0x0061ee70    50
                         push             edi                                           // 0x0061ee71    57
                         push             ebx                                           // 0x0061ee72    53
                         push             ebp                                           // 0x0061ee73    55
                         push             esi                                           // 0x0061ee74    56
                         call             _jmp_addr_0x0061e640                          // 0x0061ee75    e8c6f7ffff
                         {disp8} jmp      _jmp_addr_0x0061eec7                          // 0x0061ee7a    eb4b
                         {disp32} mov     ecx, dword ptr [esp + 0x00009088]             // 0x0061ee7c    8b8c2488900000
                         {disp32} mov     edx, dword ptr [esp + 0x00009084]             // 0x0061ee83    8b942484900000
                         {disp32} mov     edi, dword ptr [esp + 0x00009080]             // 0x0061ee8a    8bbc2480900000
                         push             ecx                                           // 0x0061ee91    51
                         push             edx                                           // 0x0061ee92    52
                         push             edi                                           // 0x0061ee93    57
                         push             ebx                                           // 0x0061ee94    53
                         push             ebp                                           // 0x0061ee95    55
                         push             esi                                           // 0x0061ee96    56
                         call             _jmp_addr_0x0061e8d0                          // 0x0061ee97    e834faffff
                         {disp8} jmp      _jmp_addr_0x0061eec7                          // 0x0061ee9c    eb29
                         {disp32} mov     eax, dword ptr [esp + 0x00009088]             // 0x0061ee9e    8b842488900000
                         {disp32} mov     ecx, dword ptr [esp + 0x00009084]             // 0x0061eea5    8b8c2484900000
                         {disp32} mov     edi, dword ptr [esp + 0x00009080]             // 0x0061eeac    8bbc2480900000
                         push             eax                                           // 0x0061eeb3    50
                         push             ecx                                           // 0x0061eeb4    51
                         push             edi                                           // 0x0061eeb5    57
                         push             ebx                                           // 0x0061eeb6    53
                         push             ebp                                           // 0x0061eeb7    55
                         push             esi                                           // 0x0061eeb8    56
                         call             _jmp_addr_0x0061dc70                          // 0x0061eeb9    e8b2edffff
                         {disp8} jmp      _jmp_addr_0x0061eec7                          // 0x0061eebe    eb07
_jmp_addr_0x0061eec0:    {disp32} mov     edi, dword ptr [esp + 0x00009080]             // 0x0061eec0    8bbc2480900000
_jmp_addr_0x0061eec7:    mov              ecx, 0x00d40e20                               // 0x0061eec7    b9200ed400
                         call             ?IsLanLobby@MPFEConnectionStatus@@QAE_NXZ     // 0x0061eecc    e8dfeb0000
                         cmp              ebp, 0x0e                                     // 0x0061eed1    83fd0e
                         {disp8} mov      byte ptr [esp + 0x17], al                     // 0x0061eed4    88442417
                         {disp32} ja      _jmp_addr_0x0061ffed                          // 0x0061eed8    0f870f110000
                         xor.s            edx, edx                                      // 0x0061eede    33d2
                         {disp32} mov     dl, byte ptr [ebp + 0x00620030]               // 0x0061eee0    8a9530006200
                         jmp              dword ptr [edx*4 + 0x62000c]                  // 0x0061eee6    ff24950c006200
                         {disp32} mov     eax, dword ptr [esi + 0x00000a3c]             // 0x0061eeed    8b863c0a0000
                         test             eax, eax                                      // 0x0061eef3    85c0
                         {disp8} je       _jmp_addr_0x0061eefc                          // 0x0061eef5    7405
                         {disp8} mov      ebx, dword ptr [eax + 0x04]                   // 0x0061eef7    8b5804
                         {disp8} jmp      _jmp_addr_0x0061eefe                          // 0x0061eefa    eb02
_jmp_addr_0x0061eefc:    xor.s            ebx, ebx                                      // 0x0061eefc    33db
_jmp_addr_0x0061eefe:    {disp32} mov     eax, dword ptr [esi + 0x00000a3c]             // 0x0061eefe    8b863c0a0000
                         xor.s            ebp, ebp                                      // 0x0061ef04    33ed
                         test             eax, eax                                      // 0x0061ef06    85c0
                         {disp8} je       _jmp_addr_0x0061ef44                          // 0x0061ef08    743a
_jmp_addr_0x0061ef0a:    cmp              dword ptr [eax + 0x04], ebx                   // 0x0061ef0a    395804
                         mov              edi, dword ptr [eax]                          // 0x0061ef0d    8b38
                         {disp8} jne      _jmp_addr_0x0061ef3c                          // 0x0061ef0f    752b
                         cmp              eax, dword ptr [esi + 0x00000a3c]             // 0x0061ef11    3b863c0a0000
                         {disp8} jne      _jmp_addr_0x0061ef21                          // 0x0061ef17    7508
                         {disp32} mov     dword ptr [esi + 0x00000a3c], edi             // 0x0061ef19    89be3c0a0000
                         {disp8} jmp      _jmp_addr_0x0061ef24                          // 0x0061ef1f    eb03
_jmp_addr_0x0061ef21:    {disp8} mov      dword ptr [ebp + 0x00], edi                   // 0x0061ef21    897d00
_jmp_addr_0x0061ef24:    {disp32} mov     edx, dword ptr [esi + 0x00000a40]             // 0x0061ef24    8b96400a0000
                         dec              edx                                           // 0x0061ef2a    4a
                         push             eax                                           // 0x0061ef2b    50
                         {disp32} mov     dword ptr [esi + 0x00000a40], edx             // 0x0061ef2c    8996400a0000
                         call             ??3@YAXPAX@Z                                  // 0x0061ef32    e861ff1800
                         add              esp, 0x04                                     // 0x0061ef37    83c404
                         {disp8} jmp      _jmp_addr_0x0061ef3e                          // 0x0061ef3a    eb02
_jmp_addr_0x0061ef3c:    mov.s            ebp, eax                                      // 0x0061ef3c    8be8
_jmp_addr_0x0061ef3e:    test             edi, edi                                      // 0x0061ef3e    85ff
                         mov.s            eax, edi                                      // 0x0061ef40    8bc7
                         {disp8} jne      _jmp_addr_0x0061ef0a                          // 0x0061ef42    75c6
_jmp_addr_0x0061ef44:    cmp              ebx, dword ptr [esp + 0x00009088]             // 0x0061ef44    3b9c2488900000
                         {disp8} jne      _jmp_addr_0x0061efbc                          // 0x0061ef4b    756f
                         mov              eax, dword ptr [ebx]                          // 0x0061ef4d    8b03
                         test             eax, eax                                      // 0x0061ef4f    85c0
                         {disp8} je       _jmp_addr_0x0061ef95                          // 0x0061ef51    7442
                         cmp              eax, 0x05                                     // 0x0061ef53    83f805
                         {disp8} jne      _jmp_addr_0x0061efbc                          // 0x0061ef56    7564
                         {disp32} mov     edi, dword ptr [esp + 0x00009084]             // 0x0061ef58    8bbc2484900000
                         {disp32} mov     eax, dword ptr [ebx + 0x00000208]             // 0x0061ef5f    8b8308020000
                         cmp              edi, 0x00002712                               // 0x0061ef65    81ff12270000
                         sete             cl                                            // 0x0061ef6b    0f94c1
                         push             eax                                           // 0x0061ef6e    50
                         {disp8} lea      edx, dword ptr [ebx + 0x08]                   // 0x0061ef6f    8d5308
                         push             ecx                                           // 0x0061ef72    51
                         {disp32} mov     ecx, dword ptr [esi + 0x00000a4c]             // 0x0061ef73    8b8e4c0a0000
                         push             edx                                           // 0x0061ef79    52
                         call             _jmp_addr_0x00623470                          // 0x0061ef7a    e8f1440000
                         push             ebx                                           // 0x0061ef7f    53
                         call             ??3@YAXPAX@Z                                  // 0x0061ef80    e813ff1800
                         add              esp, 0x04                                     // 0x0061ef85    83c404
                         pop              edi                                           // 0x0061ef88    5f
                         pop              esi                                           // 0x0061ef89    5e
                         pop              ebp                                           // 0x0061ef8a    5d
                         pop              ebx                                           // 0x0061ef8b    5b
                         add              esp, 0x00009060                               // 0x0061ef8c    81c460900000
                         ret              0x0018                                        // 0x0061ef92    c21800
_jmp_addr_0x0061ef95:    {disp32} mov     edi, dword ptr [esp + 0x00009084]             // 0x0061ef95    8bbc2484900000
                         {disp32} mov     eax, dword ptr [ebx + 0x00000208]             // 0x0061ef9c    8b8308020000
                         cmp              edi, 0x00002712                               // 0x0061efa2    81ff12270000
                         sete             cl                                            // 0x0061efa8    0f94c1
                         push             eax                                           // 0x0061efab    50
                         {disp8} lea      edx, dword ptr [ebx + 0x08]                   // 0x0061efac    8d5308
                         push             ecx                                           // 0x0061efaf    51
                         {disp32} mov     ecx, dword ptr [esi + 0x00000a4c]             // 0x0061efb0    8b8e4c0a0000
                         push             edx                                           // 0x0061efb6    52
                         call             _jmp_addr_0x00623180                          // 0x0061efb7    e8c4410000
_jmp_addr_0x0061efbc:    push             ebx                                           // 0x0061efbc    53
                         call             ??3@YAXPAX@Z                                  // 0x0061efbd    e8d6fe1800
                         add              esp, 0x04                                     // 0x0061efc2    83c404
                         pop              edi                                           // 0x0061efc5    5f
                         pop              esi                                           // 0x0061efc6    5e
                         pop              ebp                                           // 0x0061efc7    5d
                         pop              ebx                                           // 0x0061efc8    5b
                         add              esp, 0x00009060                               // 0x0061efc9    81c460900000
                         ret              0x0018                                        // 0x0061efcf    c21800
                         {disp32} mov     ecx, dword ptr [esi + 0x00000a4c]             // 0x0061efd2    8b8e4c0a0000
                         call             _jmp_addr_0x006239e0                          // 0x0061efd8    e8034a0000
                         {disp32} mov     ecx, dword ptr [esi + 0x00000a4c]             // 0x0061efdd    8b8e4c0a0000
                         call             _jmp_addr_0x00624160                          // 0x0061efe3    e878510000
                         {disp32} mov     al, byte ptr [esi + 0x00000150]               // 0x0061efe8    8a8650010000
                         test             al, al                                        // 0x0061efee    84c0
                         {disp8} je       _jmp_addr_0x0061f016                          // 0x0061eff0    7424
                         call             dword ptr [__imp__GetTickCount@4]             // 0x0061eff2    ff15c4918a00
                         {disp8} mov      ecx, dword ptr [esi + 0x20]                   // 0x0061eff8    8b4e20
                         and              eax, 0x00000200                               // 0x0061effb    2500020000
                         neg              eax                                           // 0x0061f000    f7d8
                         sbb.s            eax, eax                                      // 0x0061f002    1bc0
                         and              eax, 0xff007fff                               // 0x0061f004    25ff7f00ff
                         add              eax, 0x00ff8000                               // 0x0061f009    050080ff00
                         {disp32} mov     dword ptr [ecx + 0x00000250], eax             // 0x0061f00e    898150020000
                         {disp8} jmp      _jmp_addr_0x0061f023                          // 0x0061f014    eb0d
_jmp_addr_0x0061f016:    {disp8} mov      edx, dword ptr [esi + 0x20]                   // 0x0061f016    8b5620
                         {disp32} mov     dword ptr [edx + 0x00000250], 0xffffffff      // 0x0061f019    c78250020000ffffffff
_jmp_addr_0x0061f023:    {disp32} mov     eax, dword ptr [esi + 0x00000a3c]             // 0x0061f023    8b863c0a0000
                         test             eax, eax                                      // 0x0061f029    85c0
                         {disp32} je      _jmp_addr_0x0061ffed                          // 0x0061f02b    0f84bc0f0000
                         {disp8} mov      ecx, dword ptr [eax + 0x04]                   // 0x0061f031    8b4804
                         test             ecx, ecx                                      // 0x0061f034    85c9
                         {disp32} je      _jmp_addr_0x0061ffed                          // 0x0061f036    0f84b10f0000
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x0061f03c    8b4e04
                         {disp8} mov      al, byte ptr [ecx + 0x64]                     // 0x0061f03f    8a4164
                         test             al, al                                        // 0x0061f042    84c0
                         {disp32} jne     _jmp_addr_0x0061ffed                          // 0x0061f044    0f85a30f0000
                         {disp32} mov     eax, dword ptr [esi + 0x00000a3c]             // 0x0061f04a    8b863c0a0000
                         test             eax, eax                                      // 0x0061f050    85c0
                         {disp8} je       _jmp_addr_0x0061f059                          // 0x0061f052    7405
                         {disp8} mov      edi, dword ptr [eax + 0x04]                   // 0x0061f054    8b7804
                         {disp8} jmp      _jmp_addr_0x0061f05b                          // 0x0061f057    eb02
_jmp_addr_0x0061f059:    xor.s            edi, edi                                      // 0x0061f059    33ff
_jmp_addr_0x0061f05b:    mov              eax, dword ptr [edi]                          // 0x0061f05b    8b07
                         cmp              eax, 0x15                                     // 0x0061f05d    83f815
                         {disp8} mov      ebp, dword ptr [edi + 0x04]                   // 0x0061f060    8b6f04
                         {disp32} ja      _jmp_addr_0x0061f5bb                          // 0x0061f063    0f8752050000
                         jmp              dword ptr [eax*4 + 0x620040]                  // 0x0061f069    ff248540006200
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001909 // 0x0061f070    813dac7cd10009190000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061f07a    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x0061f086                          // 0x0061f07f    7605
                         add              eax, 0x00012c6c                               // 0x0061f081    056c2c0100
_jmp_addr_0x0061f086:    {disp8} mov      edx, dword ptr [eax + 0x08]                   // 0x0061f086    8b5008
                         push             edi                                           // 0x0061f089    57
                         push             0x0                                           // 0x0061f08a    6a00
                         push             edx                                           // 0x0061f08c    52
                         call             @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x0061f08d    e8fe20dfff
                         {disp8} mov      eax, dword ptr [esi + 0x04]                   // 0x0061f092    8b4604
                         pop              edi                                           // 0x0061f095    5f
                         pop              esi                                           // 0x0061f096    5e
                         {disp32} mov     dword ptr [eax + 0x000000c0], ebp             // 0x0061f097    89a8c0000000
                         pop              ebp                                           // 0x0061f09d    5d
                         pop              ebx                                           // 0x0061f09e    5b
                         add              esp, 0x00009060                               // 0x0061f09f    81c460900000
                         ret              0x0018                                        // 0x0061f0a5    c21800
                         cmp              dword ptr [data_bytes + 0x351cac], 0x0000190a // 0x0061f0a8    813dac7cd1000a190000
                         {disp8} ja       _jmp_addr_0x0061f0bb                          // 0x0061f0b2    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061f0b4    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0061f0c7                          // 0x0061f0b9    eb0c
_jmp_addr_0x0061f0bb:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0061f0bb    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x00012c78]             // 0x0061f0c1    8d82782c0100
_jmp_addr_0x0061f0c7:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061f0c7    8b4008
                         push             edi                                           // 0x0061f0ca    57
                         push             0x0                                           // 0x0061f0cb    6a00
                         push             eax                                           // 0x0061f0cd    50
_jmp_addr_0x0061f0ce:    call             @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x0061f0ce    e8bd20dfff
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x0061f0d3    8b4e04
                         pop              edi                                           // 0x0061f0d6    5f
                         pop              esi                                           // 0x0061f0d7    5e
                         {disp32} mov     dword ptr [ecx + 0x000000c0], ebp             // 0x0061f0d8    89a9c0000000
                         pop              ebp                                           // 0x0061f0de    5d
                         pop              ebx                                           // 0x0061f0df    5b
                         add              esp, 0x00009060                               // 0x0061f0e0    81c460900000
                         ret              0x0018                                        // 0x0061f0e6    c21800
                         cmp              dword ptr [data_bytes + 0x351cac], 0x0000190b // 0x0061f0e9    813dac7cd1000b190000
                         {disp8} ja       _jmp_addr_0x0061f0fc                          // 0x0061f0f3    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061f0f5    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0061f0c7                          // 0x0061f0fa    ebcb
_jmp_addr_0x0061f0fc:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0061f0fc    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x00012c84]             // 0x0061f102    8d82842c0100
                         {disp8} jmp      _jmp_addr_0x0061f0c7                          // 0x0061f108    ebbd
                         cmp              dword ptr [data_bytes + 0x351cac], 0x0000190c // 0x0061f10a    813dac7cd1000c190000
                         {disp8} ja       _jmp_addr_0x0061f11d                          // 0x0061f114    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061f116    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0061f0c7                          // 0x0061f11b    ebaa
_jmp_addr_0x0061f11d:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0061f11d    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x00012c90]             // 0x0061f123    8d82902c0100
                         {disp8} jmp      _jmp_addr_0x0061f0c7                          // 0x0061f129    eb9c
                         cmp              dword ptr [data_bytes + 0x351cac], 0x0000190d // 0x0061f12b    813dac7cd1000d190000
                         {disp8} ja       _jmp_addr_0x0061f13e                          // 0x0061f135    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061f137    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0061f14a                          // 0x0061f13c    eb0c
_jmp_addr_0x0061f13e:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0061f13e    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x00012c9c]             // 0x0061f144    8d829c2c0100
_jmp_addr_0x0061f14a:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061f14a    8b4008
                         push             edi                                           // 0x0061f14d    57
                         push             0x3                                           // 0x0061f14e    6a03
                         add              edi, 0x08                                     // 0x0061f150    83c708
                         push             edi                                           // 0x0061f153    57
                         push             eax                                           // 0x0061f154    50
                         {disp32} lea     eax, dword ptr [esp + 0x00006068]             // 0x0061f155    8d842468600000
                         push             eax                                           // 0x0061f15c    50
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0061f15d    ff15d8938a00
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x0061f163    8b4e04
                         add              esp, 0x0c                                     // 0x0061f166    83c40c
                         push             eax                                           // 0x0061f169    50
                         {disp32} jmp     _jmp_addr_0x0061f0ce                          // 0x0061f16a    e95fffffff
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001a2a // 0x0061f16f    813dac7cd1002a1a0000
                         {disp8} ja       _jmp_addr_0x0061f182                          // 0x0061f179    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061f17b    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0061f18e                          // 0x0061f180    eb0c
_jmp_addr_0x0061f182:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0061f182    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x000139f8]             // 0x0061f188    8d82f8390100
_jmp_addr_0x0061f18e:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061f18e    8b4008
                         push             edi                                           // 0x0061f191    57
                         push             0x0                                           // 0x0061f192    6a00
                         add              edi, 0x08                                     // 0x0061f194    83c708
                         push             edi                                           // 0x0061f197    57
                         push             eax                                           // 0x0061f198    50
                         {disp32} lea     eax, dword ptr [esp + 0x00001040]             // 0x0061f199    8d842440100000
                         push             eax                                           // 0x0061f1a0    50
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0061f1a1    ff15d8938a00
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x0061f1a7    8b4e04
                         add              esp, 0x0c                                     // 0x0061f1aa    83c40c
                         push             eax                                           // 0x0061f1ad    50
                         {disp32} jmp     _jmp_addr_0x0061f0ce                          // 0x0061f1ae    e91bffffff
                         cmp              dword ptr [data_bytes + 0x351cac], 0x0000190f // 0x0061f1b3    813dac7cd1000f190000
                         {disp8} ja       _jmp_addr_0x0061f1c6                          // 0x0061f1bd    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061f1bf    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0061f1d2                          // 0x0061f1c4    eb0c
_jmp_addr_0x0061f1c6:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0061f1c6    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x00012cb4]             // 0x0061f1cc    8d82b42c0100
_jmp_addr_0x0061f1d2:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061f1d2    8b4008
                         push             edi                                           // 0x0061f1d5    57
                         push             0x0                                           // 0x0061f1d6    6a00
                         add              edi, 0x08                                     // 0x0061f1d8    83c708
                         push             edi                                           // 0x0061f1db    57
                         push             eax                                           // 0x0061f1dc    50
                         {disp32} lea     eax, dword ptr [esp + 0x00005060]             // 0x0061f1dd    8d842460500000
                         push             eax                                           // 0x0061f1e4    50
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0061f1e5    ff15d8938a00
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x0061f1eb    8b4e04
                         add              esp, 0x0c                                     // 0x0061f1ee    83c40c
                         push             eax                                           // 0x0061f1f1    50
                         {disp32} jmp     _jmp_addr_0x0061f0ce                          // 0x0061f1f2    e9d7feffff
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001910 // 0x0061f1f7    813dac7cd10010190000
                         {disp8} ja       _jmp_addr_0x0061f20a                          // 0x0061f201    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061f203    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0061f216                          // 0x0061f208    eb0c
_jmp_addr_0x0061f20a:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0061f20a    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x00012cc0]             // 0x0061f210    8d82c02c0100
_jmp_addr_0x0061f216:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061f216    8b4008
                         push             edi                                           // 0x0061f219    57
                         push             0x0                                           // 0x0061f21a    6a00
                         add              edi, 0x08                                     // 0x0061f21c    83c708
                         push             edi                                           // 0x0061f21f    57
                         push             eax                                           // 0x0061f220    50
                         {disp32} lea     eax, dword ptr [esp + 0x00002048]             // 0x0061f221    8d842448200000
                         push             eax                                           // 0x0061f228    50
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0061f229    ff15d8938a00
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x0061f22f    8b4e04
                         add              esp, 0x0c                                     // 0x0061f232    83c40c
                         push             eax                                           // 0x0061f235    50
                         {disp32} jmp     _jmp_addr_0x0061f0ce                          // 0x0061f236    e993feffff
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001911 // 0x0061f23b    813dac7cd10011190000
                         {disp8} ja       _jmp_addr_0x0061f24e                          // 0x0061f245    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061f247    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0061f25a                          // 0x0061f24c    eb0c
_jmp_addr_0x0061f24e:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0061f24e    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x00012ccc]             // 0x0061f254    8d82cc2c0100
_jmp_addr_0x0061f25a:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061f25a    8b4008
                         push             edi                                           // 0x0061f25d    57
                         push             0x0                                           // 0x0061f25e    6a00
                         add              edi, 0x08                                     // 0x0061f260    83c708
                         push             edi                                           // 0x0061f263    57
                         push             eax                                           // 0x0061f264    50
                         {disp32} lea     eax, dword ptr [esp + 0x00007070]             // 0x0061f265    8d842470700000
                         push             eax                                           // 0x0061f26c    50
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0061f26d    ff15d8938a00
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x0061f273    8b4e04
                         add              esp, 0x0c                                     // 0x0061f276    83c40c
                         push             eax                                           // 0x0061f279    50
                         {disp32} jmp     _jmp_addr_0x0061f0ce                          // 0x0061f27a    e94ffeffff
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001912 // 0x0061f27f    813dac7cd10012190000
                         {disp8} ja       _jmp_addr_0x0061f292                          // 0x0061f289    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061f28b    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0061f29e                          // 0x0061f290    eb0c
_jmp_addr_0x0061f292:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0061f292    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x00012cd8]             // 0x0061f298    8d82d82c0100
_jmp_addr_0x0061f29e:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061f29e    8b4008
                         push             edi                                           // 0x0061f2a1    57
                         push             0x0                                           // 0x0061f2a2    6a00
                         add              edi, 0x08                                     // 0x0061f2a4    83c708
                         push             edi                                           // 0x0061f2a7    57
                         push             eax                                           // 0x0061f2a8    50
                         {disp32} lea     eax, dword ptr [esp + 0x00003050]             // 0x0061f2a9    8d842450300000
                         push             eax                                           // 0x0061f2b0    50
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0061f2b1    ff15d8938a00
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x0061f2b7    8b4e04
                         add              esp, 0x0c                                     // 0x0061f2ba    83c40c
                         push             eax                                           // 0x0061f2bd    50
                         {disp32} jmp     _jmp_addr_0x0061f0ce                          // 0x0061f2be    e90bfeffff
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001913 // 0x0061f2c3    813dac7cd10013190000
                         {disp8} ja       _jmp_addr_0x0061f2d6                          // 0x0061f2cd    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061f2cf    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0061f2e2                          // 0x0061f2d4    eb0c
_jmp_addr_0x0061f2d6:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0061f2d6    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x00012ce4]             // 0x0061f2dc    8d82e42c0100
_jmp_addr_0x0061f2e2:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061f2e2    8b4008
                         push             edi                                           // 0x0061f2e5    57
                         push             0x0                                           // 0x0061f2e6    6a00
                         add              edi, 0x08                                     // 0x0061f2e8    83c708
                         push             edi                                           // 0x0061f2eb    57
                         push             eax                                           // 0x0061f2ec    50
                         {disp8} lea      eax, dword ptr [esp + 0x38]                   // 0x0061f2ed    8d442438
                         push             eax                                           // 0x0061f2f1    50
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0061f2f2    ff15d8938a00
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x0061f2f8    8b4e04
                         add              esp, 0x0c                                     // 0x0061f2fb    83c40c
                         push             eax                                           // 0x0061f2fe    50
                         {disp32} jmp     _jmp_addr_0x0061f0ce                          // 0x0061f2ff    e9cafdffff
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001914 // 0x0061f304    813dac7cd10014190000
                         {disp8} ja       _jmp_addr_0x0061f317                          // 0x0061f30e    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061f310    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0061f323                          // 0x0061f315    eb0c
_jmp_addr_0x0061f317:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0061f317    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x00012cf0]             // 0x0061f31d    8d82f02c0100
_jmp_addr_0x0061f323:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061f323    8b4008
                         push             edi                                           // 0x0061f326    57
                         push             0x3                                           // 0x0061f327    6a03
                         add              edi, 0x08                                     // 0x0061f329    83c708
                         push             edi                                           // 0x0061f32c    57
                         push             eax                                           // 0x0061f32d    50
                         {disp32} lea     eax, dword ptr [esp + 0x00004058]             // 0x0061f32e    8d842458400000
                         push             eax                                           // 0x0061f335    50
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0061f336    ff15d8938a00
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x0061f33c    8b4e04
                         add              esp, 0x0c                                     // 0x0061f33f    83c40c
                         push             eax                                           // 0x0061f342    50
                         {disp32} jmp     _jmp_addr_0x0061f0ce                          // 0x0061f343    e986fdffff
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001ab3 // 0x0061f348    813dac7cd100b31a0000
                         {disp8} ja       _jmp_addr_0x0061f35b                          // 0x0061f352    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061f354    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0061f367                          // 0x0061f359    eb0c
_jmp_addr_0x0061f35b:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0061f35b    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x00014064]             // 0x0061f361    8d8264400100
_jmp_addr_0x0061f367:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061f367    8b4008
                         push             edi                                           // 0x0061f36a    57
                         push             0x5                                           // 0x0061f36b    6a05
                         push             eax                                           // 0x0061f36d    50
                         {disp32} lea     eax, dword ptr [esp + 0x00008074]             // 0x0061f36e    8d842474800000
                         push             eax                                           // 0x0061f375    50
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0061f376    ff15d8938a00
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x0061f37c    8b4e04
                         add              esp, 0x08                                     // 0x0061f37f    83c408
                         push             eax                                           // 0x0061f382    50
                         {disp32} jmp     _jmp_addr_0x0061f0ce                          // 0x0061f383    e946fdffff
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001a9b // 0x0061f388    813dac7cd1009b1a0000
                         {disp8} ja       _jmp_addr_0x0061f39b                          // 0x0061f392    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061f394    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0061f3a7                          // 0x0061f399    eb0c
_jmp_addr_0x0061f39b:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0061f39b    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x00013f44]             // 0x0061f3a1    8d82443f0100
_jmp_addr_0x0061f3a7:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061f3a7    8b4008
                         push             edi                                           // 0x0061f3aa    57
                         push             0x5                                           // 0x0061f3ab    6a05
                         push             eax                                           // 0x0061f3ad    50
                         {disp32} lea     eax, dword ptr [esp + 0x00000838]             // 0x0061f3ae    8d842438080000
                         push             eax                                           // 0x0061f3b5    50
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0061f3b6    ff15d8938a00
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x0061f3bc    8b4e04
                         add              esp, 0x08                                     // 0x0061f3bf    83c408
                         push             eax                                           // 0x0061f3c2    50
                         {disp32} jmp     _jmp_addr_0x0061f0ce                          // 0x0061f3c3    e906fdffff
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001a97 // 0x0061f3c8    813dac7cd100971a0000
                         {disp8} ja       _jmp_addr_0x0061f3db                          // 0x0061f3d2    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061f3d4    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0061f3e7                          // 0x0061f3d9    eb0c
_jmp_addr_0x0061f3db:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0061f3db    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x00013f14]             // 0x0061f3e1    8d82143f0100
_jmp_addr_0x0061f3e7:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061f3e7    8b4008
                         push             edi                                           // 0x0061f3ea    57
                         push             0x5                                           // 0x0061f3eb    6a05
                         push             eax                                           // 0x0061f3ed    50
                         {disp32} lea     eax, dword ptr [esp + 0x00001840]             // 0x0061f3ee    8d842440180000
                         push             eax                                           // 0x0061f3f5    50
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0061f3f6    ff15d8938a00
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x0061f3fc    8b4e04
                         add              esp, 0x08                                     // 0x0061f3ff    83c408
                         push             eax                                           // 0x0061f402    50
                         {disp32} jmp     _jmp_addr_0x0061f0ce                          // 0x0061f403    e9c6fcffff
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001ab2 // 0x0061f408    813dac7cd100b21a0000
                         {disp8} ja       _jmp_addr_0x0061f41b                          // 0x0061f412    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061f414    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0061f427                          // 0x0061f419    eb0c
_jmp_addr_0x0061f41b:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0061f41b    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x00014058]             // 0x0061f421    8d8258400100
_jmp_addr_0x0061f427:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061f427    8b4008
                         push             edi                                           // 0x0061f42a    57
                         push             0x5                                           // 0x0061f42b    6a05
                         push             eax                                           // 0x0061f42d    50
                         {disp32} lea     eax, dword ptr [esp + 0x00002848]             // 0x0061f42e    8d842448280000
                         push             eax                                           // 0x0061f435    50
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0061f436    ff15d8938a00
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x0061f43c    8b4e04
                         add              esp, 0x08                                     // 0x0061f43f    83c408
                         push             eax                                           // 0x0061f442    50
                         {disp32} jmp     _jmp_addr_0x0061f0ce                          // 0x0061f443    e986fcffff
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001aa6 // 0x0061f448    813dac7cd100a61a0000
                         {disp8} ja       _jmp_addr_0x0061f45b                          // 0x0061f452    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061f454    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0061f467                          // 0x0061f459    eb0c
_jmp_addr_0x0061f45b:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0061f45b    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x00013fc8]             // 0x0061f461    8d82c83f0100
_jmp_addr_0x0061f467:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061f467    8b4008
                         push             edi                                           // 0x0061f46a    57
                         push             0x0                                           // 0x0061f46b    6a00
                         push             eax                                           // 0x0061f46d    50
                         {disp32} lea     eax, dword ptr [esp + 0x00003850]             // 0x0061f46e    8d842450380000
                         push             eax                                           // 0x0061f475    50
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0061f476    ff15d8938a00
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x0061f47c    8b4e04
                         add              esp, 0x08                                     // 0x0061f47f    83c408
                         push             eax                                           // 0x0061f482    50
                         {disp32} jmp     _jmp_addr_0x0061f0ce                          // 0x0061f483    e946fcffff
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001aa4 // 0x0061f488    813dac7cd100a41a0000
                         {disp8} ja       _jmp_addr_0x0061f49b                          // 0x0061f492    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061f494    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0061f4a7                          // 0x0061f499    eb0c
_jmp_addr_0x0061f49b:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0061f49b    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x00013fb0]             // 0x0061f4a1    8d82b03f0100
_jmp_addr_0x0061f4a7:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061f4a7    8b4008
                         push             edi                                           // 0x0061f4aa    57
                         push             0x0                                           // 0x0061f4ab    6a00
                         push             eax                                           // 0x0061f4ad    50
                         {disp32} lea     eax, dword ptr [esp + 0x00004858]             // 0x0061f4ae    8d842458480000
                         push             eax                                           // 0x0061f4b5    50
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0061f4b6    ff15d8938a00
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x0061f4bc    8b4e04
                         add              esp, 0x08                                     // 0x0061f4bf    83c408
                         push             eax                                           // 0x0061f4c2    50
                         {disp32} jmp     _jmp_addr_0x0061f0ce                          // 0x0061f4c3    e906fcffff
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001ab9 // 0x0061f4c8    813dac7cd100b91a0000
                         {disp8} ja       _jmp_addr_0x0061f4db                          // 0x0061f4d2    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061f4d4    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0061f4e7                          // 0x0061f4d9    eb0c
_jmp_addr_0x0061f4db:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0061f4db    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x000140ac]             // 0x0061f4e1    8d82ac400100
_jmp_addr_0x0061f4e7:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061f4e7    8b4008
                         push             edi                                           // 0x0061f4ea    57
                         push             0x0                                           // 0x0061f4eb    6a00
                         push             eax                                           // 0x0061f4ed    50
                         {disp32} lea     eax, dword ptr [esp + 0x00005860]             // 0x0061f4ee    8d842460580000
                         push             eax                                           // 0x0061f4f5    50
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0061f4f6    ff15d8938a00
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x0061f4fc    8b4e04
                         add              esp, 0x08                                     // 0x0061f4ff    83c408
                         push             eax                                           // 0x0061f502    50
                         {disp32} jmp     _jmp_addr_0x0061f0ce                          // 0x0061f503    e9c6fbffff
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001b39 // 0x0061f508    813dac7cd100391b0000
                         {disp8} ja       _jmp_addr_0x0061f51b                          // 0x0061f512    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061f514    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0061f527                          // 0x0061f519    eb0c
_jmp_addr_0x0061f51b:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0061f51b    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x000146ac]             // 0x0061f521    8d82ac460100
_jmp_addr_0x0061f527:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061f527    8b4008
                         push             edi                                           // 0x0061f52a    57
                         push             0x0                                           // 0x0061f52b    6a00
                         push             eax                                           // 0x0061f52d    50
                         {disp32} lea     eax, dword ptr [esp + 0x00006868]             // 0x0061f52e    8d842468680000
                         push             eax                                           // 0x0061f535    50
_jmp_addr_0x0061f536:    call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0061f536    ff15d8938a00
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x0061f53c    8b4e04
                         add              esp, 0x08                                     // 0x0061f53f    83c408
                         push             eax                                           // 0x0061f542    50
                         call             @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x0061f543    e8481cdfff
                         pop              edi                                           // 0x0061f548    5f
                         pop              esi                                           // 0x0061f549    5e
                         pop              ebp                                           // 0x0061f54a    5d
                         pop              ebx                                           // 0x0061f54b    5b
                         add              esp, 0x00009060                               // 0x0061f54c    81c460900000
                         ret              0x0018                                        // 0x0061f552    c21800
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001b3a // 0x0061f555    813dac7cd1003a1b0000
                         {disp8} ja       _jmp_addr_0x0061f577                          // 0x0061f55f    7716
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061f561    a1a87cd100
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061f566    8b4008
                         push             edi                                           // 0x0061f569    57
                         push             0x0                                           // 0x0061f56a    6a00
                         push             eax                                           // 0x0061f56c    50
                         {disp32} lea     edx, dword ptr [esp + 0x00007870]             // 0x0061f56d    8d942470780000
                         push             edx                                           // 0x0061f574    52
                         {disp8} jmp      _jmp_addr_0x0061f536                          // 0x0061f575    ebbf
_jmp_addr_0x0061f577:    {disp32} mov     ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0061f577    8b0da87cd100
                         push             edi                                           // 0x0061f57d    57
                         {disp32} lea     eax, dword ptr [ecx + 0x000146b8]             // 0x0061f57e    8d81b8460100
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061f584    8b4008
                         push             0x0                                           // 0x0061f587    6a00
                         push             eax                                           // 0x0061f589    50
                         {disp32} lea     edx, dword ptr [esp + 0x00007870]             // 0x0061f58a    8d942470780000
                         push             edx                                           // 0x0061f591    52
                         {disp8} jmp      _jmp_addr_0x0061f536                          // 0x0061f592    eba2
                         cmp              dword ptr [data_bytes + 0x351c9c], 0x1b       // 0x0061f594    833d9c7cd1001b
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351c98]        // 0x0061f59b    a1987cd100
                         {disp8} jbe      _jmp_addr_0x0061f5a7                          // 0x0061f5a0    7605
                         add              eax, 0x00000144                               // 0x0061f5a2    0544010000
_jmp_addr_0x0061f5a7:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061f5a7    8b4008
                         push             edi                                           // 0x0061f5aa    57
                         push             0x0                                           // 0x0061f5ab    6a00
                         push             eax                                           // 0x0061f5ad    50
                         {disp32} lea     ecx, dword ptr [esp + 0x00008878]             // 0x0061f5ae    8d8c2478880000
                         push             ecx                                           // 0x0061f5b5    51
                         {disp32} jmp     _jmp_addr_0x0061f536                          // 0x0061f5b6    e97bffffff
_jmp_addr_0x0061f5bb:    {disp32} mov     eax, dword ptr [esi + 0x00000a3c]             // 0x0061f5bb    8b863c0a0000
                         xor.s            ebp, ebp                                      // 0x0061f5c1    33ed
                         test             eax, eax                                      // 0x0061f5c3    85c0
                         {disp8} je       _jmp_addr_0x0061f601                          // 0x0061f5c5    743a
_jmp_addr_0x0061f5c7:    cmp              dword ptr [eax + 0x04], edi                   // 0x0061f5c7    397804
                         mov              ebx, dword ptr [eax]                          // 0x0061f5ca    8b18
                         {disp8} jne      _jmp_addr_0x0061f5f9                          // 0x0061f5cc    752b
                         cmp              eax, dword ptr [esi + 0x00000a3c]             // 0x0061f5ce    3b863c0a0000
                         {disp8} jne      _jmp_addr_0x0061f5de                          // 0x0061f5d4    7508
                         {disp32} mov     dword ptr [esi + 0x00000a3c], ebx             // 0x0061f5d6    899e3c0a0000
                         {disp8} jmp      _jmp_addr_0x0061f5e1                          // 0x0061f5dc    eb03
_jmp_addr_0x0061f5de:    {disp8} mov      dword ptr [ebp + 0x00], ebx                   // 0x0061f5de    895d00
_jmp_addr_0x0061f5e1:    {disp32} mov     edx, dword ptr [esi + 0x00000a40]             // 0x0061f5e1    8b96400a0000
                         dec              edx                                           // 0x0061f5e7    4a
                         push             eax                                           // 0x0061f5e8    50
                         {disp32} mov     dword ptr [esi + 0x00000a40], edx             // 0x0061f5e9    8996400a0000
                         call             ??3@YAXPAX@Z                                  // 0x0061f5ef    e8a4f81800
                         add              esp, 0x04                                     // 0x0061f5f4    83c404
                         {disp8} jmp      _jmp_addr_0x0061f5fb                          // 0x0061f5f7    eb02
_jmp_addr_0x0061f5f9:    mov.s            ebp, eax                                      // 0x0061f5f9    8be8
_jmp_addr_0x0061f5fb:    test             ebx, ebx                                      // 0x0061f5fb    85db
                         mov.s            eax, ebx                                      // 0x0061f5fd    8bc3
                         {disp8} jne      _jmp_addr_0x0061f5c7                          // 0x0061f5ff    75c6
_jmp_addr_0x0061f601:    push             edi                                           // 0x0061f601    57
                         call             ??3@YAXPAX@Z                                  // 0x0061f602    e891f81800
                         add              esp, 0x04                                     // 0x0061f607    83c404
                         pop              edi                                           // 0x0061f60a    5f
                         pop              esi                                           // 0x0061f60b    5e
                         pop              ebp                                           // 0x0061f60c    5d
                         pop              ebx                                           // 0x0061f60d    5b
                         add              esp, 0x00009060                               // 0x0061f60e    81c460900000
                         ret              0x0018                                        // 0x0061f614    c21800
                         {disp8} mov      edx, dword ptr [esi + 0x04]                   // 0x0061f617    8b5604
                         {disp32} mov     eax, dword ptr [edx + 0x000000bc]             // 0x0061f61a    8b82bc000000
                         test             eax, eax                                      // 0x0061f620    85c0
                         {disp32} jne     _jmp_addr_0x0061ffed                          // 0x0061f622    0f85c5090000
                         push             0x0                                           // 0x0061f628    6a00
                         mov.s            ecx, esi                                      // 0x0061f62a    8bce
                         call             _jmp_addr_0x0061b350                          // 0x0061f62c    e81fbdffff
                         push             0x5                                           // 0x0061f631    6a05
                         mov.s            ecx, esi                                      // 0x0061f633    8bce
                         call             _jmp_addr_0x0061b330                          // 0x0061f635    e8f6bcffff
                         pop              edi                                           // 0x0061f63a    5f
                         pop              esi                                           // 0x0061f63b    5e
                         pop              ebp                                           // 0x0061f63c    5d
                         pop              ebx                                           // 0x0061f63d    5b
                         add              esp, 0x00009060                               // 0x0061f63e    81c460900000
                         ret              0x0018                                        // 0x0061f644    c21800
_jmp_addr_0x0061f647:    {disp32} mov     eax, dword ptr [esi + 0x00000a3c]             // 0x0061f647    8b863c0a0000
                         xor.s            edi, edi                                      // 0x0061f64d    33ff
                         cmp.s            eax, edi                                      // 0x0061f64f    3bc7
                         {disp8} je       _jmp_addr_0x0061f6a0                          // 0x0061f651    744d
                         {disp8} mov      ebp, dword ptr [eax + 0x04]                   // 0x0061f653    8b6804
                         xor.s            ebx, ebx                                      // 0x0061f656    33db
                         cmp.s            eax, edi                                      // 0x0061f658    3bc7
                         {disp8} je       _jmp_addr_0x0061f695                          // 0x0061f65a    7439
_jmp_addr_0x0061f65c:    cmp              dword ptr [eax + 0x04], ebp                   // 0x0061f65c    396804
                         mov              edi, dword ptr [eax]                          // 0x0061f65f    8b38
                         {disp8} jne      _jmp_addr_0x0061f68d                          // 0x0061f661    752a
                         cmp              eax, dword ptr [esi + 0x00000a3c]             // 0x0061f663    3b863c0a0000
                         {disp8} jne      _jmp_addr_0x0061f673                          // 0x0061f669    7508
                         {disp32} mov     dword ptr [esi + 0x00000a3c], edi             // 0x0061f66b    89be3c0a0000
                         {disp8} jmp      _jmp_addr_0x0061f675                          // 0x0061f671    eb02
_jmp_addr_0x0061f673:    mov              dword ptr [ebx], edi                          // 0x0061f673    893b
_jmp_addr_0x0061f675:    {disp32} mov     edx, dword ptr [esi + 0x00000a40]             // 0x0061f675    8b96400a0000
                         dec              edx                                           // 0x0061f67b    4a
                         push             eax                                           // 0x0061f67c    50
                         {disp32} mov     dword ptr [esi + 0x00000a40], edx             // 0x0061f67d    8996400a0000
                         call             ??3@YAXPAX@Z                                  // 0x0061f683    e810f81800
                         add              esp, 0x04                                     // 0x0061f688    83c404
                         {disp8} jmp      _jmp_addr_0x0061f68f                          // 0x0061f68b    eb02
_jmp_addr_0x0061f68d:    mov.s            ebx, eax                                      // 0x0061f68d    8bd8
_jmp_addr_0x0061f68f:    test             edi, edi                                      // 0x0061f68f    85ff
                         mov.s            eax, edi                                      // 0x0061f691    8bc7
                         {disp8} jne      _jmp_addr_0x0061f65c                          // 0x0061f693    75c7
_jmp_addr_0x0061f695:    push             ebp                                           // 0x0061f695    55
                         call             ??3@YAXPAX@Z                                  // 0x0061f696    e8fdf71800
                         add              esp, 0x04                                     // 0x0061f69b    83c404
                         {disp8} jmp      _jmp_addr_0x0061f647                          // 0x0061f69e    eba7
_jmp_addr_0x0061f6a0:    {disp32} mov     eax, dword ptr [esi + 0x000009a8]             // 0x0061f6a0    8b86a8090000
                         cmp.s            eax, edi                                      // 0x0061f6a6    3bc7
                         {disp8} je       _jmp_addr_0x0061f6ad                          // 0x0061f6a8    7403
                         {disp8} mov      dword ptr [eax + 0x08], edi                   // 0x0061f6aa    897808
_jmp_addr_0x0061f6ad:    {disp32} mov     ecx, dword ptr [esi + 0x000009a4]             // 0x0061f6ad    8b8ea4090000
                         cmp.s            ecx, edi                                      // 0x0061f6b3    3bcf
                         {disp32} mov     dword ptr [esi + 0x000009a8], edi             // 0x0061f6b5    89bea8090000
                         {disp8} je       _jmp_addr_0x0061f6c2                          // 0x0061f6bb    7405
                         call             ?Release@LH3DTexture@@QAEXXZ                  // 0x0061f6bd    e87e862100
_jmp_addr_0x0061f6c2:    {disp32} mov     eax, dword ptr [esi + 0x00000a30]             // 0x0061f6c2    8b86300a0000
                         cmp.s            eax, edi                                      // 0x0061f6c8    3bc7
                         {disp32} mov     dword ptr [esi + 0x000009a4], edi             // 0x0061f6ca    89bea4090000
                         {disp8} je       _jmp_addr_0x0061f6d5                          // 0x0061f6d0    7403
                         {disp8} mov      dword ptr [eax + 0x08], edi                   // 0x0061f6d2    897808
_jmp_addr_0x0061f6d5:    {disp32} mov     ecx, dword ptr [esi + 0x00000a2c]             // 0x0061f6d5    8b8e2c0a0000
                         cmp.s            ecx, edi                                      // 0x0061f6db    3bcf
                         {disp32} mov     dword ptr [esi + 0x00000a30], edi             // 0x0061f6dd    89be300a0000
                         {disp8} je       _jmp_addr_0x0061f6ea                          // 0x0061f6e3    7405
                         call             ?Release@LH3DTexture@@QAEXXZ                  // 0x0061f6e5    e856862100
_jmp_addr_0x0061f6ea:    {disp32} mov     dword ptr [esi + 0x00000a2c], edi             // 0x0061f6ea    89be2c0a0000
                         pop              edi                                           // 0x0061f6f0    5f
                         pop              esi                                           // 0x0061f6f1    5e
                         pop              ebp                                           // 0x0061f6f2    5d
                         pop              ebx                                           // 0x0061f6f3    5b
                         add              esp, 0x00009060                               // 0x0061f6f4    81c460900000
                         ret              0x0018                                        // 0x0061f6fa    c21800
                         {disp32} mov     eax, dword ptr [data_bytes + 0x516368]        // 0x0061f6fd    a168c3ed00
                         test             eax, eax                                      // 0x0061f702    85c0
                         {disp32} je      _jmp_addr_0x0061f7a8                          // 0x0061f704    0f849e000000
                         {disp32} mov     edi, dword ptr [esi + 0x00000128]             // 0x0061f70a    8bbe28010000
                         {disp32} mov     al, byte ptr [edi + 0x00000229]               // 0x0061f710    8a8729020000
                         test             al, al                                        // 0x0061f716    84c0
                         {disp32} jne     _jmp_addr_0x0061f7a8                          // 0x0061f718    0f858a000000
                         {disp8} mov      ecx, dword ptr [edi + 0x08]                   // 0x0061f71e    8b4f08
                         {disp8} mov      eax, dword ptr [edi + 0x10]                   // 0x0061f721    8b4710
                         {disp8} mov      ebp, dword ptr [edi + 0x14]                   // 0x0061f724    8b6f14
                         {disp8} mov      ebx, dword ptr [edi + 0x0c]                   // 0x0061f727    8b5f0c
                         add.s            eax, ecx                                      // 0x0061f72a    03c1
                         cdq                                                            // 0x0061f72c    99
                         sub.s            eax, edx                                      // 0x0061f72d    2bc2
                         mov.s            ecx, eax                                      // 0x0061f72f    8bc8
                         push             0x42c80000                                    // 0x0061f731    680000c842
                         lea              eax, dword ptr [ebx + ebp * 0x1]              // 0x0061f736    8d042b
                         cdq                                                            // 0x0061f739    99
                         sub.s            eax, edx                                      // 0x0061f73a    2bc2
                         mov.s            edi, eax                                      // 0x0061f73c    8bf8
                         push             0x0                                           // 0x0061f73e    6a00
                         push             0x0000a000                                    // 0x0061f740    6800a00000
                         push             0xffff6000                                    // 0x0061f745    680060ffff
                         mov.s            eax, ebp                                      // 0x0061f74a    8bc5
                         sub.s            eax, ebx                                      // 0x0061f74c    2bc3
                         cdq                                                            // 0x0061f74e    99
                         sub.s            eax, edx                                      // 0x0061f74f    2bc2
                         push             0x1                                           // 0x0061f751    6a01
                         mov              dl, -0x01                                     // 0x0061f753    b2ff
                         {disp8} mov      byte ptr [esp + 0x24], dl                     // 0x0061f755    88542424
                         {disp8} mov      byte ptr [esp + 0x25], dl                     // 0x0061f759    88542425
                         {disp8} mov      byte ptr [esp + 0x26], dl                     // 0x0061f75d    88542426
                         {disp8} mov      byte ptr [esp + 0x27], dl                     // 0x0061f761    88542427
                         {disp8} lea      edx, dword ptr [esp + 0x24]                   // 0x0061f765    8d542424
                         push             edx                                           // 0x0061f769    52
                         {disp32} mov     edx, dword ptr [data_bytes + 0x516368]        // 0x0061f76a    8b1568c3ed00
                         push             edx                                           // 0x0061f770    52
                         push             0x3ec00000                                    // 0x0061f771    680000c03e
                         push             0x3f800000                                    // 0x0061f776    680000803f
                         sar              eax, 1                                        // 0x0061f77b    d1f8
                         push             0x3e800000                                    // 0x0061f77d    680000803e
                         sar              edi, 1                                        // 0x0061f782    d1ff
                         push             0x3f600000                                    // 0x0061f784    680000603f
                         lea              edx, dword ptr [eax + edi * 0x1]              // 0x0061f789    8d1438
                         push             edx                                           // 0x0061f78c    52
                         sar              ecx, 1                                        // 0x0061f78d    d1f9
                         lea              edx, dword ptr [eax + ecx * 0x1]              // 0x0061f78f    8d1408
                         push             edx                                           // 0x0061f792    52
                         sub.s            edi, eax                                      // 0x0061f793    2bf8
                         sub.s            ecx, eax                                      // 0x0061f795    2bc8
                         push             edi                                           // 0x0061f797    57
                         push             ecx                                           // 0x0061f798    51
                         call             ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x0061f799    e8e231dfff
                         {disp32} mov     ebx, dword ptr [esp + 0x000090b8]             // 0x0061f79e    8b9c24b8900000
                         add              esp, 0x3c                                     // 0x0061f7a5    83c43c
_jmp_addr_0x0061f7a8:    {disp32} mov     al, byte ptr [data_bytes + 0x379010]          // 0x0061f7a8    a010f0d300
                         test             al, al                                        // 0x0061f7ad    84c0
                         {disp32} je      _jmp_addr_0x0061ffed                          // 0x0061f7af    0f8438080000
                         {disp32} mov     esi, dword ptr [esi + 0x00000144]             // 0x0061f7b5    8bb644010000
                         {disp32} mov     al, byte ptr [esi + 0x00000229]               // 0x0061f7bb    8a8629020000
                         test             al, al                                        // 0x0061f7c1    84c0
                         {disp8} jne      _jmp_addr_0x0061f7d7                          // 0x0061f7c3    7512
                         {disp32} mov     al, byte ptr [esi + 0x00000228]               // 0x0061f7c5    8a8628020000
                         test             al, al                                        // 0x0061f7cb    84c0
                         {disp8} jne      _jmp_addr_0x0061f7d7                          // 0x0061f7cd    7508
                         push             esi                                           // 0x0061f7cf    56
                         mov.s            ecx, ebx                                      // 0x0061f7d0    8bcb
                         call             @SetFocusControl__8SetupBoxFP12SetupControl@12// 0x0061f7d2    e86999deff
_jmp_addr_0x0061f7d7:    pop              edi                                           // 0x0061f7d7    5f
                         pop              esi                                           // 0x0061f7d8    5e
                         pop              ebp                                           // 0x0061f7d9    5d
                         {disp32} mov     byte ptr [data_bytes + 0x379010], 0x00        // 0x0061f7da    c60510f0d30000
                         pop              ebx                                           // 0x0061f7e1    5b
                         add              esp, 0x00009060                               // 0x0061f7e2    81c460900000
                         ret              0x0018                                        // 0x0061f7e8    c21800
                         {disp32} mov     eax, dword ptr [esi + 0x00000a44]             // 0x0061f7eb    8b86440a0000
                         test             eax, eax                                      // 0x0061f7f1    85c0
                         mov              edi, 0x00ffffff                               // 0x0061f7f3    bfffffff00
                         {disp8} je       _jmp_addr_0x0061f807                          // 0x0061f7f8    740d
                         {disp32} mov     eax, dword ptr [eax + 0x00000110]             // 0x0061f7fa    8b8010010000
                         {disp32} mov     edi, dword ptr [eax * 0x4 + 0x00bf456c]       // 0x0061f800    8b3c856c45bf00
_jmp_addr_0x0061f807:    {disp32} mov     ebx, dword ptr [data_bytes + 0x2078]          // 0x0061f807    8b1d78809c00
                         push             0x1                                           // 0x0061f80d    6a01
                         push             0x1                                           // 0x0061f80f    6a01
                         mov.s            eax, ebx                                      // 0x0061f811    8bc3
                         cdq                                                            // 0x0061f813    99
                         push             edi                                           // 0x0061f814    57
                         sub.s            eax, edx                                      // 0x0061f815    2bc2
                         push             edi                                           // 0x0061f817    57
                         sar              eax, 1                                        // 0x0061f818    d1f8
                         {disp32} mov     dword ptr [data_bytes + 0x2078], eax          // 0x0061f81a    a378809c00
                         {disp8} mov      eax, dword ptr [esi + 0x30]                   // 0x0061f81f    8b4630
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x0061f822    8b4814
                         {disp8} mov      edx, dword ptr [eax + 0x10]                   // 0x0061f825    8b5010
                         push             edi                                           // 0x0061f828    57
                         push             edi                                           // 0x0061f829    57
                         push             ecx                                           // 0x0061f82a    51
                         {disp8} mov      ecx, dword ptr [eax + 0x0c]                   // 0x0061f82b    8b480c
                         push             edx                                           // 0x0061f82e    52
                         {disp8} mov      edx, dword ptr [eax + 0x08]                   // 0x0061f82f    8b5008
                         push             ecx                                           // 0x0061f832    51
                         push             edx                                           // 0x0061f833    52
                         call             ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x0061f834    e8873adfff
                         add              esp, 0x28                                     // 0x0061f839    83c428
                         xor.s            ebp, ebp                                      // 0x0061f83c    33ed
                         mov              eax, 0x00d3f044                               // 0x0061f83e    b844f0d300
_jmp_addr_0x0061f843:    mov              ecx, dword ptr [eax]                          // 0x0061f843    8b08
                         add              eax, 0x08                                     // 0x0061f845    83c008
                         add.s            ebp, ecx                                      // 0x0061f848    03e9
                         cmp              eax, 0x00d3f064                               // 0x0061f84a    3d64f0d300
                         .byte            0x72, 0xf2// {disp8} jb _jmp_addr_0x0061f843  // 0x0061f84f    72f2
                         {disp32} mov     eax, dword ptr [esi + 0x00000a4c]             // 0x0061f851    8b864c0a0000
                         {disp32} mov     eax, dword ptr [eax + 0x00000a58]             // 0x0061f857    8b80580a0000
                         test             eax, eax                                      // 0x0061f85d    85c0
                         {disp8} jne      _jmp_addr_0x0061f86f                          // 0x0061f85f    750e
                         {disp32} mov     eax, dword ptr [esi + 0x00000a44]             // 0x0061f861    8b86440a0000
                         test             eax, eax                                      // 0x0061f867    85c0
                         {disp32} je      _jmp_addr_0x0061f91d                          // 0x0061f869    0f84ae000000
_jmp_addr_0x0061f86f:    {disp32} mov     ecx, dword ptr [esi + 0x00000a44]             // 0x0061f86f    8b8e440a0000
                         test             ecx, ecx                                      // 0x0061f875    85c9
                         {disp32} je      _jmp_addr_0x0061f91d                          // 0x0061f877    0f84a0000000
                         {disp8} mov      ecx, dword ptr [esi + 0x10]                   // 0x0061f87d    8b4e10
                         cmp              ecx, 0x03                                     // 0x0061f880    83f903
                         {disp8} je       _jmp_addr_0x0061f88a                          // 0x0061f883    7405
                         cmp              ecx, 0x02                                     // 0x0061f885    83f902
                         {disp8} jne      _jmp_addr_0x0061f897                          // 0x0061f888    750d
_jmp_addr_0x0061f88a:    {disp32} mov     ecx, dword ptr [eax + 0x00000110]             // 0x0061f88a    8b8810010000
                         {disp32} mov     edi, dword ptr [ecx * 0x4 + 0x00bf456c]       // 0x0061f890    8b3c8d6c45bf00
_jmp_addr_0x0061f897:    {disp8} mov      eax, dword ptr [esi + 0x34]                   // 0x0061f897    8b4634
                         {disp8} mov      edx, dword ptr [eax + 0x14]                   // 0x0061f89a    8b5014
                         {disp8} mov      ecx, dword ptr [eax + 0x10]                   // 0x0061f89d    8b4810
                         push             0x1                                           // 0x0061f8a0    6a01
                         push             0x1                                           // 0x0061f8a2    6a01
                         push             edi                                           // 0x0061f8a4    57
                         push             edi                                           // 0x0061f8a5    57
                         push             edi                                           // 0x0061f8a6    57
                         push             edi                                           // 0x0061f8a7    57
                         push             edx                                           // 0x0061f8a8    52
                         {disp8} mov      edx, dword ptr [eax + 0x0c]                   // 0x0061f8a9    8b500c
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061f8ac    8b4008
                         push             ecx                                           // 0x0061f8af    51
                         push             edx                                           // 0x0061f8b0    52
                         push             eax                                           // 0x0061f8b1    50
                         call             ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x0061f8b2    e8093adfff
                         {disp32} mov     dword ptr [data_bytes + 0x2078], ebx          // 0x0061f8b7    891d78809c00
                         {disp32} mov     eax, dword ptr [esi + 0x00000a44]             // 0x0061f8bd    8b86440a0000
                         {disp32} mov     bl, byte ptr [eax + 0x00000100]               // 0x0061f8c3    8a9800010000
                         {disp32} mov     ecx, dword ptr [esi + 0x00000118]             // 0x0061f8c9    8b8e18010000
                         mov              edx, dword ptr [ecx]                          // 0x0061f8cf    8b11
                         add              esp, 0x28                                     // 0x0061f8d1    83c428
                         test             bl, bl                                        // 0x0061f8d4    84db
                         sete             al                                            // 0x0061f8d6    0f94c0
                         push             eax                                           // 0x0061f8d9    50
                         call             dword ptr [edx + 8]                           // 0x0061f8da    ff5208
                         {disp32} mov     ecx, dword ptr [esi + 0x0000011c]             // 0x0061f8dd    8b8e1c010000
                         mov              edx, dword ptr [ecx]                          // 0x0061f8e3    8b11
                         push             0x1                                           // 0x0061f8e5    6a01
                         call             dword ptr [edx + 8]                           // 0x0061f8e7    ff5208
                         {disp8} mov      eax, dword ptr [esi + 0x10]                   // 0x0061f8ea    8b4610
                         test             eax, eax                                      // 0x0061f8ed    85c0
                         {disp8} jne      _jmp_addr_0x0061f91d                          // 0x0061f8ef    752c
                         {disp32} mov     eax, dword ptr [esi + 0x00000a44]             // 0x0061f8f1    8b86440a0000
                         {disp32} mov     cl, byte ptr [eax + 0x00000100]               // 0x0061f8f7    8a8800010000
                         test             cl, cl                                        // 0x0061f8fd    84c9
                         {disp8} je       _jmp_addr_0x0061f91d                          // 0x0061f8ff    741c
                         {disp32} mov     ecx, dword ptr [esi + 0x00000118]             // 0x0061f901    8b8e18010000
                         cmp              byte ptr [ecx + 0x00000229], 0x01             // 0x0061f907    80b92902000001
                         {disp8} jne      _jmp_addr_0x0061f91d                          // 0x0061f90e    750d
                         {disp32} mov     ecx, dword ptr [esi + 0x0000011c]             // 0x0061f910    8b8e1c010000
                         mov              edx, dword ptr [ecx]                          // 0x0061f916    8b11
                         push             0x0                                           // 0x0061f918    6a00
                         call             dword ptr [edx + 8]                           // 0x0061f91a    ff5208
_jmp_addr_0x0061f91d:    mov              ecx, 0x00d3f038                               // 0x0061f91d    b938f0d300
                         call             _jmp_addr_0x00622d40                          // 0x0061f922    e819340000
                         test             eax, eax                                      // 0x0061f927    85c0
                         {disp8} je       _jmp_addr_0x0061f951                          // 0x0061f929    7426
                         mov              ecx, 0x00d3f038                               // 0x0061f92b    b938f0d300
                         call             _jmp_addr_0x00622d40                          // 0x0061f930    e80b340000
                         {disp32} mov     dl, byte ptr [eax + 0x00000121]               // 0x0061f935    8a9021010000
                         xor.s            ecx, ecx                                      // 0x0061f93b    33c9
                         cmp              dl, 0x01                                      // 0x0061f93d    80fa01
                         {disp32} mov     edx, dword ptr [esi + 0x00000ab8]             // 0x0061f940    8b96b80a0000
                         sete             cl                                            // 0x0061f946    0f94c1
                         mov.s            eax, ecx                                      // 0x0061f949    8bc1
                         {disp32} mov     dword ptr [edx + 0x00000248], eax             // 0x0061f94b    898248020000
_jmp_addr_0x0061f951:    {disp32} mov     ecx, dword ptr [esi + 0x00000118]             // 0x0061f951    8b8e18010000
                         mov              eax, dword ptr [ecx]                          // 0x0061f957    8b01
                         push             0x1                                           // 0x0061f959    6a01
                         call             dword ptr [eax + 8]                           // 0x0061f95b    ff5008
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x379a9c]        // 0x0061f95e    8b0d9cfad300
                         cmp              dword ptr [ecx + 0x10], 0x01                  // 0x0061f964    83791001
                         {disp8} jne      _jmp_addr_0x0061f9e5                          // 0x0061f968    757b
                         {disp32} mov     al, byte ptr [data_bytes + 0x37a5fe]          // 0x0061f96a    a0fe05d400
                         test             al, al                                        // 0x0061f96f    84c0
                         {disp8} je       _jmp_addr_0x0061f9e5                          // 0x0061f971    7472
                         {disp32} mov     edx, dword ptr [data_bytes + 0x379a94]        // 0x0061f973    8b1594fad300
                         {disp32} mov     eax, dword ptr [edx + 0x00000300]             // 0x0061f979    8b8200030000
                         test             eax, eax                                      // 0x0061f97f    85c0
                         {disp8} je       _jmp_addr_0x0061f9e5                          // 0x0061f981    7462
                         cmp              ebp, 0x01                                     // 0x0061f983    83fd01
                         {disp8} jbe      _jmp_addr_0x0061f9e5                          // 0x0061f986    765d
                         {disp32} mov     ecx, dword ptr [esi + 0x00000118]             // 0x0061f988    8b8e18010000
                         mov              eax, dword ptr [ecx]                          // 0x0061f98e    8b01
                         push             0x0                                           // 0x0061f990    6a00
                         call             dword ptr [eax + 8]                           // 0x0061f992    ff5008
                         mov              ebx, 0x00d3f038                               // 0x0061f995    bb38f0d300
_jmp_addr_0x0061f99a:    mov              edi, dword ptr [ebx]                          // 0x0061f99a    8b3b
                         test             edi, edi                                      // 0x0061f99c    85ff
                         {disp8} je       _jmp_addr_0x0061f9da                          // 0x0061f99e    743a
_jmp_addr_0x0061f9a0:    mov              eax, dword ptr [edi]                          // 0x0061f9a0    8b07
                         {disp32} mov     ecx, dword ptr [eax + 0x00000110]             // 0x0061f9a2    8b8810010000
                         cmp              ecx, 0x01                                     // 0x0061f9a8    83f901
                         {disp8} jl       _jmp_addr_0x0061f9d3                          // 0x0061f9ab    7c26
                         cmp              ecx, 0x05                                     // 0x0061f9ad    83f905
                         {disp8} jge      _jmp_addr_0x0061f9d3                          // 0x0061f9b0    7d21
                         {disp32} mov     cl, byte ptr [eax + 0x00000100]               // 0x0061f9b2    8a8800010000
                         test             cl, cl                                        // 0x0061f9b8    84c9
                         {disp8} jne      _jmp_addr_0x0061f9d3                          // 0x0061f9ba    7517
                         {disp32} mov     cl, byte ptr [eax + 0x00000121]               // 0x0061f9bc    8a8821010000
                         test             cl, cl                                        // 0x0061f9c2    84c9
                         {disp8} jne      _jmp_addr_0x0061f9d3                          // 0x0061f9c4    750d
                         {disp32} mov     ecx, dword ptr [esi + 0x00000118]             // 0x0061f9c6    8b8e18010000
                         mov              edx, dword ptr [ecx]                          // 0x0061f9cc    8b11
                         push             0x1                                           // 0x0061f9ce    6a01
                         call             dword ptr [edx + 8]                           // 0x0061f9d0    ff5208
_jmp_addr_0x0061f9d3:    {disp8} mov      edi, dword ptr [edi + 0x04]                   // 0x0061f9d3    8b7f04
                         test             edi, edi                                      // 0x0061f9d6    85ff
                         {disp8} jne      _jmp_addr_0x0061f9a0                          // 0x0061f9d8    75c6
_jmp_addr_0x0061f9da:    add              ebx, 0x08                                     // 0x0061f9da    83c308
                         cmp              ebx, 0x00d3f060                               // 0x0061f9dd    81fb60f0d300
                         {disp8} jl       _jmp_addr_0x0061f99a                          // 0x0061f9e3    7cb5
_jmp_addr_0x0061f9e5:    {disp32} mov     ecx, dword ptr [esi + 0x00000ab8]             // 0x0061f9e5    8b8eb80a0000
                         mov              eax, dword ptr [ecx]                          // 0x0061f9eb    8b01
                         push             0x0                                           // 0x0061f9ed    6a00
                         call             dword ptr [eax + 8]                           // 0x0061f9ef    ff5008
                         {disp32} mov     eax, dword ptr [data_bytes + 0x379a94]        // 0x0061f9f2    a194fad300
                         test             eax, eax                                      // 0x0061f9f7    85c0
                         {disp8} je       _jmp_addr_0x0061fa2c                          // 0x0061f9f9    7431
                         mov              ecx, 0x00d3f038                               // 0x0061f9fb    b938f0d300
                         call             _jmp_addr_0x00622d40                          // 0x0061fa00    e83b330000
                         {disp32} mov     ecx, dword ptr [eax + 0x00000110]             // 0x0061fa05    8b8810010000
                         test             ecx, ecx                                      // 0x0061fa0b    85c9
                         {disp8} je       _jmp_addr_0x0061fa2c                          // 0x0061fa0d    741d
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x379a94]        // 0x0061fa0f    8b0d94fad300
                         {disp32} mov     eax, dword ptr [ecx + 0x00000300]             // 0x0061fa15    8b8100030000
                         test             eax, eax                                      // 0x0061fa1b    85c0
                         {disp8} je       _jmp_addr_0x0061fa2c                          // 0x0061fa1d    740d
                         {disp32} mov     al, byte ptr [data_bytes + 0x37a5fe]          // 0x0061fa1f    a0fe05d400
                         test             al, al                                        // 0x0061fa24    84c0
                         {disp32} je      _jmp_addr_0x0061ffed                          // 0x0061fa26    0f84c1050000
_jmp_addr_0x0061fa2c:    {disp32} mov     esi, dword ptr [esi + 0x00000ab8]             // 0x0061fa2c    8bb6b80a0000
                         mov              edx, dword ptr [esi]                          // 0x0061fa32    8b16
                         push             0x1                                           // 0x0061fa34    6a01
                         mov.s            ecx, esi                                      // 0x0061fa36    8bce
                         call             dword ptr [edx + 8]                           // 0x0061fa38    ff5208
                         pop              edi                                           // 0x0061fa3b    5f
                         pop              esi                                           // 0x0061fa3c    5e
                         pop              ebp                                           // 0x0061fa3d    5d
                         pop              ebx                                           // 0x0061fa3e    5b
                         add              esp, 0x00009060                               // 0x0061fa3f    81c460900000
                         ret              0x0018                                        // 0x0061fa45    c21800
                         mov              eax, dword ptr [esi]                          // 0x0061fa48    8b06
                         mov.s            ecx, esi                                      // 0x0061fa4a    8bce
                         call             dword ptr [eax + 0x20]                        // 0x0061fa4c    ff5020
                         pop              edi                                           // 0x0061fa4f    5f
                         pop              esi                                           // 0x0061fa50    5e
                         pop              ebp                                           // 0x0061fa51    5d
                         {disp32} mov     byte ptr [data_bytes + 0x379010], 0x01        // 0x0061fa52    c60510f0d30001
                         pop              ebx                                           // 0x0061fa59    5b
                         add              esp, 0x00009060                               // 0x0061fa5a    81c460900000
                         ret              0x0018                                        // 0x0061fa60    c21800
                         {disp32} mov     eax, dword ptr [data_bytes + 0x379a9c]        // 0x0061fa63    a19cfad300
                         cmp              edi, dword ptr [eax + 0x00000154]             // 0x0061fa68    3bb854010000
                         {disp8} jne      _jmp_addr_0x0061fa9b                          // 0x0061fa6e    752b
                         {disp32} mov     eax, dword ptr [esi + 0x00000154]             // 0x0061fa70    8b8654010000
                         {disp32} mov     edi, dword ptr [eax + 0x00000248]             // 0x0061fa76    8bb848020000
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x379a98]        // 0x0061fa7c    8b0d98fad300
                         mov              edx, dword ptr [ecx]                          // 0x0061fa82    8b11
                         cmp              edi, 0x01                                     // 0x0061fa84    83ff01
                         sete             al                                            // 0x0061fa87    0f94c0
                         push             eax                                           // 0x0061fa8a    50
                         call             dword ptr [edx + 0x3c]                        // 0x0061fa8b    ff523c
                         pop              edi                                           // 0x0061fa8e    5f
                         pop              esi                                           // 0x0061fa8f    5e
                         pop              ebp                                           // 0x0061fa90    5d
                         pop              ebx                                           // 0x0061fa91    5b
                         add              esp, 0x00009060                               // 0x0061fa92    81c460900000
                         ret              0x0018                                        // 0x0061fa98    c21800
_jmp_addr_0x0061fa9b:    cmp              edi, dword ptr [eax + 0x00000ab4]             // 0x0061fa9b    3bb8b40a0000
                         {disp32} jne     _jmp_addr_0x0061fbc2                          // 0x0061faa1    0f851b010000
                         {disp32} mov     cl, byte ptr [eax + 0x00000abc]               // 0x0061faa7    8a88bc0a0000
                         test             cl, cl                                        // 0x0061faad    84c9
                         sete             cl                                            // 0x0061faaf    0f94c1
                         {disp32} mov     byte ptr [eax + 0x00000abc], cl               // 0x0061fab2    8888bc0a0000
                         {disp32} mov     al, byte ptr [esi + 0x00000abc]               // 0x0061fab8    8a86bc0a0000
                         test             al, al                                        // 0x0061fabe    84c0
                         {disp8} je       _jmp_addr_0x0061fac9                          // 0x0061fac0    7407
                         {disp32} mov     byte ptr [data_bytes + 0x379010], 0x01        // 0x0061fac2    c60510f0d30001
_jmp_addr_0x0061fac9:    {disp32} mov     eax, dword ptr [data_bytes + 0x379a9c]        // 0x0061fac9    a19cfad300
                         {disp32} mov     bl, byte ptr [eax + 0x00000abc]               // 0x0061face    8a98bc0a0000
                         {disp32} mov     ecx, dword ptr [esi + 0x00000144]             // 0x0061fad4    8b8e44010000
                         mov              edx, dword ptr [ecx]                          // 0x0061fada    8b11
                         test             bl, bl                                        // 0x0061fadc    84db
                         sete             al                                            // 0x0061fade    0f94c0
                         push             eax                                           // 0x0061fae1    50
                         call             dword ptr [edx + 8]                           // 0x0061fae2    ff5208
                         {disp32} mov     eax, dword ptr [data_bytes + 0x379a9c]        // 0x0061fae5    a19cfad300
                         {disp32} mov     bl, byte ptr [eax + 0x00000abc]               // 0x0061faea    8a98bc0a0000
                         {disp32} mov     ecx, dword ptr [esi + 0x00000148]             // 0x0061faf0    8b8e48010000
                         mov              edx, dword ptr [ecx]                          // 0x0061faf6    8b11
                         test             bl, bl                                        // 0x0061faf8    84db
                         sete             al                                            // 0x0061fafa    0f94c0
                         push             eax                                           // 0x0061fafd    50
                         call             dword ptr [edx + 8]                           // 0x0061fafe    ff5208
                         {disp32} mov     eax, dword ptr [data_bytes + 0x379a9c]        // 0x0061fb01    a19cfad300
                         {disp32} mov     bl, byte ptr [eax + 0x00000abc]               // 0x0061fb06    8a98bc0a0000
                         {disp32} mov     ecx, dword ptr [esi + 0x0000014c]             // 0x0061fb0c    8b8e4c010000
                         mov              edx, dword ptr [ecx]                          // 0x0061fb12    8b11
                         test             bl, bl                                        // 0x0061fb14    84db
                         sete             al                                            // 0x0061fb16    0f94c0
                         push             eax                                           // 0x0061fb19    50
                         call             dword ptr [edx + 8]                           // 0x0061fb1a    ff5208
                         {disp32} mov     ecx, dword ptr [esi + 0x00000188]             // 0x0061fb1d    8b8e88010000
                         mov              edx, dword ptr [ecx]                          // 0x0061fb23    8b11
                         xor.s            eax, eax                                      // 0x0061fb25    33c0
                         {disp32} mov     eax, dword ptr [data_bytes + 0x379a9c]        // 0x0061fb27    a19cfad300
                         {disp32} mov     al, byte ptr [eax + 0x00000abc]               // 0x0061fb2c    8a80bc0a0000
                         push             eax                                           // 0x0061fb32    50
                         call             dword ptr [edx + 8]                           // 0x0061fb33    ff5208
                         {disp32} mov     ecx, dword ptr [esi + 0x0000018c]             // 0x0061fb36    8b8e8c010000
                         mov              edx, dword ptr [ecx]                          // 0x0061fb3c    8b11
                         xor.s            eax, eax                                      // 0x0061fb3e    33c0
                         {disp32} mov     eax, dword ptr [data_bytes + 0x379a9c]        // 0x0061fb40    a19cfad300
                         {disp32} mov     al, byte ptr [eax + 0x00000abc]               // 0x0061fb45    8a80bc0a0000
                         push             eax                                           // 0x0061fb4b    50
                         call             dword ptr [edx + 8]                           // 0x0061fb4c    ff5208
                         {disp32} mov     ecx, dword ptr [esi + 0x00000190]             // 0x0061fb4f    8b8e90010000
                         mov              edx, dword ptr [ecx]                          // 0x0061fb55    8b11
                         xor.s            eax, eax                                      // 0x0061fb57    33c0
                         {disp32} mov     eax, dword ptr [data_bytes + 0x379a9c]        // 0x0061fb59    a19cfad300
                         {disp32} mov     al, byte ptr [eax + 0x00000abc]               // 0x0061fb5e    8a80bc0a0000
                         push             eax                                           // 0x0061fb64    50
                         call             dword ptr [edx + 8]                           // 0x0061fb65    ff5208
                         {disp32} mov     ecx, dword ptr [esi + 0x00000194]             // 0x0061fb68    8b8e94010000
                         mov              edx, dword ptr [ecx]                          // 0x0061fb6e    8b11
                         xor.s            eax, eax                                      // 0x0061fb70    33c0
                         {disp32} mov     eax, dword ptr [data_bytes + 0x379a9c]        // 0x0061fb72    a19cfad300
                         {disp32} mov     al, byte ptr [eax + 0x00000abc]               // 0x0061fb77    8a80bc0a0000
                         push             eax                                           // 0x0061fb7d    50
                         call             dword ptr [edx + 8]                           // 0x0061fb7e    ff5208
                         {disp32} mov     ecx, dword ptr [esi + 0x00000198]             // 0x0061fb81    8b8e98010000
                         mov              edx, dword ptr [ecx]                          // 0x0061fb87    8b11
                         xor.s            eax, eax                                      // 0x0061fb89    33c0
                         {disp32} mov     eax, dword ptr [data_bytes + 0x379a9c]        // 0x0061fb8b    a19cfad300
                         {disp32} mov     al, byte ptr [eax + 0x00000abc]               // 0x0061fb90    8a80bc0a0000
                         push             eax                                           // 0x0061fb96    50
                         call             dword ptr [edx + 8]                           // 0x0061fb97    ff5208
                         {disp32} mov     eax, dword ptr [data_bytes + 0x379a9c]        // 0x0061fb9a    a19cfad300
                         {disp32} mov     esi, dword ptr [esi + 0x0000019c]             // 0x0061fb9f    8bb69c010000
                         mov              edx, dword ptr [esi]                          // 0x0061fba5    8b16
                         xor.s            ecx, ecx                                      // 0x0061fba7    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x00000abc]               // 0x0061fba9    8a88bc0a0000
                         push             ecx                                           // 0x0061fbaf    51
                         mov.s            ecx, esi                                      // 0x0061fbb0    8bce
                         call             dword ptr [edx + 8]                           // 0x0061fbb2    ff5208
                         pop              edi                                           // 0x0061fbb5    5f
                         pop              esi                                           // 0x0061fbb6    5e
                         pop              ebp                                           // 0x0061fbb7    5d
                         pop              ebx                                           // 0x0061fbb8    5b
                         add              esp, 0x00009060                               // 0x0061fbb9    81c460900000
                         ret              0x0018                                        // 0x0061fbbf    c21800
_jmp_addr_0x0061fbc2:    cmp              edi, dword ptr [eax + 0x00000ab8]             // 0x0061fbc2    3bb8b80a0000
                         {disp8} jne      _jmp_addr_0x0061fbf6                          // 0x0061fbc8    752c
                         mov              ecx, 0x00d3f038                               // 0x0061fbca    b938f0d300
                         call             _jmp_addr_0x00622d40                          // 0x0061fbcf    e86c310000
                         {disp32} mov     cl, byte ptr [eax + 0x00000121]               // 0x0061fbd4    8a8821010000
                         test             cl, cl                                        // 0x0061fbda    84c9
                         mov              ecx, 0x00d3f038                               // 0x0061fbdc    b938f0d300
                         sete             bl                                            // 0x0061fbe1    0f94c3
                         call             _jmp_addr_0x00622d40                          // 0x0061fbe4    e857310000
                         {disp32} mov     byte ptr [eax + 0x00000121], bl               // 0x0061fbe9    889821010000
                         {disp32} mov     byte ptr [data_bytes + 0x37a602], 0x01        // 0x0061fbef    c6050206d40001
_jmp_addr_0x0061fbf6:    test             edi, edi                                      // 0x0061fbf6    85ff
                         {disp8} je       _jmp_addr_0x0061fc1e                          // 0x0061fbf8    7424
                         {disp8} mov      eax, dword ptr [edi + 0x18]                   // 0x0061fbfa    8b4718
                         add              eax, 0xfffff704                               // 0x0061fbfd    0504f7ffff
                         cmp              eax, 0x03                                     // 0x0061fc02    83f803
                         {disp8} ja       _jmp_addr_0x0061fc1e                          // 0x0061fc05    7717
                         jmp              dword ptr [eax*4 + 0x620098]                  // 0x0061fc07    ff248598006200
                         {disp8} mov      cl, byte ptr [esp + 0x17]                     // 0x0061fc0e    8a4c2417
                         test             cl, cl                                        // 0x0061fc12    84c9
                         {disp8} jne      _jmp_addr_0x0061fc1e                          // 0x0061fc14    7508
                         push             eax                                           // 0x0061fc16    50
                         mov.s            ecx, esi                                      // 0x0061fc17    8bce
                         call             _jmp_addr_0x0061b4d0                          // 0x0061fc19    e8b2b8ffff
_jmp_addr_0x0061fc1e:    {disp32} mov     eax, dword ptr [esi + 0x00000144]             // 0x0061fc1e    8b8644010000
                         cmp.s            edi, eax                                      // 0x0061fc24    3bf8
                         {disp8} jne      _jmp_addr_0x0061fca6                          // 0x0061fc26    757e
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001aae // 0x0061fc28    813dac7cd100ae1a0000
                         {disp8} ja       _jmp_addr_0x0061fc3c                          // 0x0061fc32    7708
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0061fc34    8b0da87cd100
                         {disp8} jmp      _jmp_addr_0x0061fc48                          // 0x0061fc3a    eb0c
_jmp_addr_0x0061fc3c:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0061fc3c    8b15a87cd100
                         {disp32} lea     ecx, dword ptr [edx + 0x00014028]             // 0x0061fc42    8d8a28400100
_jmp_addr_0x0061fc48:    {disp8} mov      ecx, dword ptr [ecx + 0x08]                   // 0x0061fc48    8b4908
                         push             ecx                                           // 0x0061fc4b    51
                         add              eax, 0x24                                     // 0x0061fc4c    83c024
                         push             eax                                           // 0x0061fc4f    50
                         call             _wcscmp                          // 0x0061fc50    e88a721a00
                         add              esp, 0x08                                     // 0x0061fc55    83c408
                         test             eax, eax                                      // 0x0061fc58    85c0
                         {disp8} jne      _jmp_addr_0x0061fca6                          // 0x0061fc5a    754a
                         {disp32} mov     edi, dword ptr [esi + 0x00000144]             // 0x0061fc5c    8bbe44010000
                         push             0x000000ff                                    // 0x0061fc62    68ff000000
                         {disp8} lea      ebx, dword ptr [edi + 0x24]                   // 0x0061fc67    8d5f24
                         push             0x00c4cd30                                    // 0x0061fc6a    6830cdc400
                         push             ebx                                           // 0x0061fc6f    53
                         call             _wcsncpy                                      // 0x0061fc70    e8b0671a00
                         xor.s            ebp, ebp                                      // 0x0061fc75    33ed
                         push             ebx                                           // 0x0061fc77    53
                         {disp32} mov     word ptr [edi + 0x00000222], bp               // 0x0061fc78    6689af22020000
                         call             _wcslen                                       // 0x0061fc7f    e8de671a00
                         {disp32} mov     dword ptr [edi + 0x0000024c], eax             // 0x0061fc84    89874c020000
                         {disp32} mov     dword ptr [edi + 0x00000254], eax             // 0x0061fc8a    898754020000
                         {disp32} mov     dword ptr [edi + 0x00000250], eax             // 0x0061fc90    898750020000
                         {disp32} mov     dword ptr [edi + 0x00000258], ebp             // 0x0061fc96    89af58020000
                         {disp32} mov     edi, dword ptr [esp + 0x00009090]             // 0x0061fc9c    8bbc2490900000
                         add              esp, 0x10                                     // 0x0061fca3    83c410
_jmp_addr_0x0061fca6:    cmp              edi, dword ptr [esi + 0x00000120]             // 0x0061fca6    3bbe20010000
                         {disp8} jne      _jmp_addr_0x0061fcc4                          // 0x0061fcac    7516
                         {disp32} mov     ecx, dword ptr [esi + 0x00000a4c]             // 0x0061fcae    8b8e4c0a0000
                         {disp32} mov     eax, dword ptr [ecx + 0x00000a58]             // 0x0061fcb4    8b81580a0000
                         test             eax, eax                                      // 0x0061fcba    85c0
                         {disp8} je       _jmp_addr_0x0061fcc4                          // 0x0061fcbc    7406
                         push             eax                                           // 0x0061fcbe    50
                         call             _jmp_addr_0x00623200                          // 0x0061fcbf    e83c350000
_jmp_addr_0x0061fcc4:    cmp              edi, dword ptr [esi + 0x00000124]             // 0x0061fcc4    3bbe24010000
                         {disp8} jne      _jmp_addr_0x0061fce2                          // 0x0061fcca    7516
                         {disp32} mov     ecx, dword ptr [esi + 0x00000a4c]             // 0x0061fccc    8b8e4c0a0000
                         {disp32} mov     eax, dword ptr [ecx + 0x00000a58]             // 0x0061fcd2    8b81580a0000
                         test             eax, eax                                      // 0x0061fcd8    85c0
                         {disp8} je       _jmp_addr_0x0061fce2                          // 0x0061fcda    7406
                         push             eax                                           // 0x0061fcdc    50
                         call             _jmp_addr_0x00623310                          // 0x0061fcdd    e82e360000
_jmp_addr_0x0061fce2:    cmp              edi, dword ptr [esi + 0x00000114]             // 0x0061fce2    3bbe14010000
                         {disp8} jne      _jmp_addr_0x0061fd07                          // 0x0061fce8    751d
                         {disp8} mov      eax, dword ptr [esi + 0x10]                   // 0x0061fcea    8b4610
                         test             eax, eax                                      // 0x0061fced    85c0
                         {disp8} je       _jmp_addr_0x0061fcfc                          // 0x0061fcef    740b
                         push             0x0                                           // 0x0061fcf1    6a00
                         mov.s            ecx, esi                                      // 0x0061fcf3    8bce
                         call             _jmp_addr_0x0061b4d0                          // 0x0061fcf5    e8d6b7ffff
                         {disp8} jmp      _jmp_addr_0x0061fd07                          // 0x0061fcfa    eb0b
_jmp_addr_0x0061fcfc:    {disp32} mov     ecx, dword ptr [esi + 0x00000a4c]             // 0x0061fcfc    8b8e4c0a0000
                         call             _jmp_addr_0x00622c10                          // 0x0061fd02    e8092f0000
_jmp_addr_0x0061fd07:    cmp              edi, dword ptr [esi + 0x0000011c]             // 0x0061fd07    3bbe1c010000
                         {disp8} jne      _jmp_addr_0x0061fd18                          // 0x0061fd0d    7509
                         push             0x1                                           // 0x0061fd0f    6a01
                         mov.s            ecx, esi                                      // 0x0061fd11    8bce
                         call             _jmp_addr_0x0061b4d0                          // 0x0061fd13    e8b8b7ffff
_jmp_addr_0x0061fd18:    cmp              edi, dword ptr [esi + 0x00000118]             // 0x0061fd18    3bbe18010000
                         {disp8} jne      _jmp_addr_0x0061fd2b                          // 0x0061fd1e    750b
                         {disp32} mov     ecx, dword ptr [esi + 0x00000a4c]             // 0x0061fd20    8b8e4c0a0000
                         call             _jmp_addr_0x006255c0                          // 0x0061fd26    e895580000
_jmp_addr_0x0061fd2b:    {disp8} mov      edi, dword ptr [edi + 0x18]                   // 0x0061fd2b    8b7f18
                         cmp              edi, 0x00000145                               // 0x0061fd2e    81ff45010000
                         {disp32} jl      _jmp_addr_0x0061ffd6                          // 0x0061fd34    0f8c9c020000
                         cmp              edi, 0x00000154                               // 0x0061fd3a    81ff54010000
                         {disp32} jg      _jmp_addr_0x0061ffd6                          // 0x0061fd40    0f8f90020000
                         {disp32} mov     ecx, dword ptr [esi + 0x00000a8c]             // 0x0061fd46    8b8e8c0a0000
                         {disp32} lea     eax, dword ptr [edi + -0x00000145]            // 0x0061fd4c    8d87bbfeffff
                         test             eax, eax                                      // 0x0061fd52    85c0
                         {disp8} jl       _jmp_addr_0x0061fd69                          // 0x0061fd54    7c13
                         cmp              eax, dword ptr [ecx + 0x00000250]             // 0x0061fd56    3b8150020000
                         {disp8} jge      _jmp_addr_0x0061fd69                          // 0x0061fd5c    7d0b
                         {disp32} mov     edx, dword ptr [ecx + 0x00000264]             // 0x0061fd5e    8b9164020000
                         mov              edi, dword ptr [edx + eax * 0x4]              // 0x0061fd64    8b3c82
                         {disp8} jmp      _jmp_addr_0x0061fd6b                          // 0x0061fd67    eb02
_jmp_addr_0x0061fd69:    xor.s            edi, edi                                      // 0x0061fd69    33ff
_jmp_addr_0x0061fd6b:    {disp32} mov     edx, dword ptr [esi + 0x00000a4c]             // 0x0061fd6b    8b964c0a0000
                         mov.s            eax, edi                                      // 0x0061fd71    8bc7
                         shl              eax, 4                                        // 0x0061fd73    c1e004
                         {disp32} lea     eax, dword ptr [eax + edx * 0x1 + 0x000015d4] // 0x0061fd76    8d8410d4150000
                         {disp32} mov     dword ptr [esi + 0x00000ac0], eax             // 0x0061fd7d    8986c00a0000
                         {disp32} mov     eax, dword ptr [esp + 0x00009080]             // 0x0061fd83    8b842480900000
                         {disp8} mov      edx, dword ptr [eax + 0x18]                   // 0x0061fd8a    8b5018
                         sub              edx, 0x00000145                               // 0x0061fd8d    81ea45010000
                         {disp32} mov     dword ptr [ecx + 0x00000248], edx             // 0x0061fd93    899148020000
                         {disp8} mov      eax, dword ptr [eax + 0x18]                   // 0x0061fd99    8b4018
                         {disp32} mov     ecx, dword ptr [esi + eax * 0x4 + 0x0000053c] // 0x0061fd9c    8b8c863c050000
                         {disp32} mov     edx, dword ptr [ecx + 0x00000248]             // 0x0061fda3    8b9148020000
                         test             edx, edx                                      // 0x0061fda9    85d2
                         setne            dl                                            // 0x0061fdab    0f95c2
                         mov.s            ecx, esi                                      // 0x0061fdae    8bce
                         {disp32} mov     byte ptr [edi + esi * 0x1 + 0x00000ac4], dl   // 0x0061fdb0    889437c40a0000
                         call             _jmp_addr_0x00621c40                          // 0x0061fdb7    e8841e0000
                         {disp8} mov      dword ptr [esp + 0x1c], 0x00000000            // 0x0061fdbc    c744241c00000000
                         {disp8} mov      dword ptr [esp + 0x18], edi                   // 0x0061fdc4    897c2418
                         {disp32} mov     al, byte ptr [edi + esi * 0x1 + 0x00000ac4]   // 0x0061fdc8    8a8437c40a0000
                         test             al, al                                        // 0x0061fdcf    84c0
                         {disp8} je       _jmp_addr_0x0061fdde                          // 0x0061fdd1    740b
                         {disp32} mov     eax, dword ptr [esi + 0x00000ac0]             // 0x0061fdd3    8b86c00a0000
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0061fdd9    8b4008
                         {disp8} jmp      _jmp_addr_0x0061fde1                          // 0x0061fddc    eb03
_jmp_addr_0x0061fdde:    or               eax, -0x1                                     // 0x0061fdde    83c8ff
_jmp_addr_0x0061fde1:    {disp32} mov     ecx, dword ptr [data_bytes + 0x37a708]        // 0x0061fde1    8b0d0807d400
                         {disp8} mov      dword ptr [esp + 0x1c], eax                   // 0x0061fde7    8944241c
                         {disp32} mov     eax, dword ptr [data_bytes + 0x37a704]        // 0x0061fdeb    a10407d400
                         sub.s            ecx, eax                                      // 0x0061fdf0    2bc8
                         sar              ecx, 3                                        // 0x0061fdf2    c1f903
                         cmp              ecx, 0x01                                     // 0x0061fdf5    83f901
                         mov.s            edi, eax                                      // 0x0061fdf8    8bf8
                         {disp32} jae     _jmp_addr_0x0061fef5                          // 0x0061fdfa    0f83f5000000
                         {disp32} mov     edx, dword ptr [data_bytes + 0x37a700]        // 0x0061fe00    8b150007d400
                         test             edx, edx                                      // 0x0061fe06    85d2
                         {disp8} je       _jmp_addr_0x0061fe1f                          // 0x0061fe08    7415
                         mov.s            ecx, eax                                      // 0x0061fe0a    8bc8
                         sub.s            ecx, edx                                      // 0x0061fe0c    2bca
                         sar              ecx, 3                                        // 0x0061fe0e    c1f903
                         cmp              ecx, 0x01                                     // 0x0061fe11    83f901
                         {disp8} jbe      _jmp_addr_0x0061fe1f                          // 0x0061fe14    7609
                         mov.s            ecx, eax                                      // 0x0061fe16    8bc8
                         sub.s            ecx, edx                                      // 0x0061fe18    2bca
                         sar              ecx, 3                                        // 0x0061fe1a    c1f903
                         {disp8} jmp      _jmp_addr_0x0061fe24                          // 0x0061fe1d    eb05
_jmp_addr_0x0061fe1f:    mov              ecx, 0x00000001                               // 0x0061fe1f    b901000000
_jmp_addr_0x0061fe24:    test             edx, edx                                      // 0x0061fe24    85d2
                         {disp8} jne      _jmp_addr_0x0061fe2c                          // 0x0061fe26    7504
                         xor.s            eax, eax                                      // 0x0061fe28    33c0
                         {disp8} jmp      _jmp_addr_0x0061fe31                          // 0x0061fe2a    eb05
_jmp_addr_0x0061fe2c:    sub.s            eax, edx                                      // 0x0061fe2c    2bc2
                         sar              eax, 3                                        // 0x0061fe2e    c1f803
_jmp_addr_0x0061fe31:    add.s            eax, ecx                                      // 0x0061fe31    03c1
                         test             eax, eax                                      // 0x0061fe33    85c0
                         {disp8} mov      dword ptr [esp + 0x24], eax                   // 0x0061fe35    89442424
                         {disp8} jge      _jmp_addr_0x0061fe3d                          // 0x0061fe39    7d02
                         xor.s            eax, eax                                      // 0x0061fe3b    33c0
_jmp_addr_0x0061fe3d:    {disp32} lea     edx, dword ptr [eax * 0x8 + 0x00000000]       // 0x0061fe3d    8d14c500000000
                         push             edx                                           // 0x0061fe44    52
                         call             ??2@YAPAXI@Z                                  // 0x0061fe45    e8a4661a00
                         {disp32} mov     ebx, dword ptr [data_bytes + 0x37a700]        // 0x0061fe4a    8b1d0007d400
                         add              esp, 0x04                                     // 0x0061fe50    83c404
                         cmp.s            ebx, edi                                      // 0x0061fe53    3bdf
                         {disp8} mov      dword ptr [esp + 0x20], eax                   // 0x0061fe55    89442420
                         mov.s            ebp, eax                                      // 0x0061fe59    8be8
                         {disp8} je       _jmp_addr_0x0061fe71                          // 0x0061fe5b    7414
_jmp_addr_0x0061fe5d:    push             ebx                                           // 0x0061fe5d    53
                         push             ebp                                           // 0x0061fe5e    55
                         call             _jmp_addr_0x00622420                          // 0x0061fe5f    e8bc250000
                         add              ebx, 0x08                                     // 0x0061fe64    83c308
                         add              esp, 0x08                                     // 0x0061fe67    83c408
                         add              ebp, 0x08                                     // 0x0061fe6a    83c508
                         cmp.s            ebx, edi                                      // 0x0061fe6d    3bdf
                         {disp8} jne      _jmp_addr_0x0061fe5d                          // 0x0061fe6f    75ec
_jmp_addr_0x0061fe71:    {disp8} lea      eax, dword ptr [esp + 0x18]                   // 0x0061fe71    8d442418
                         push             eax                                           // 0x0061fe75    50
                         push             ebp                                           // 0x0061fe76    55
                         call             _jmp_addr_0x00622420                          // 0x0061fe77    e8a4250000
                         {disp32} mov     ebx, dword ptr [data_bytes + 0x37a704]        // 0x0061fe7c    8b1d0407d400
                         add              esp, 0x08                                     // 0x0061fe82    83c408
                         add              ebp, 0x08                                     // 0x0061fe85    83c508
                         cmp.s            edi, ebx                                      // 0x0061fe88    3bfb
                         {disp8} je       _jmp_addr_0x0061fea0                          // 0x0061fe8a    7414
_jmp_addr_0x0061fe8c:    push             edi                                           // 0x0061fe8c    57
                         push             ebp                                           // 0x0061fe8d    55
                         call             _jmp_addr_0x00622420                          // 0x0061fe8e    e88d250000
                         add              edi, 0x08                                     // 0x0061fe93    83c708
                         add              esp, 0x08                                     // 0x0061fe96    83c408
                         add              ebp, 0x08                                     // 0x0061fe99    83c508
                         cmp.s            edi, ebx                                      // 0x0061fe9c    3bfb
                         {disp8} jne      _jmp_addr_0x0061fe8c                          // 0x0061fe9e    75ec
_jmp_addr_0x0061fea0:    {disp32} mov     ecx, dword ptr [data_bytes + 0x37a704]        // 0x0061fea0    8b0d0407d400
                         {disp32} mov     edx, dword ptr [data_bytes + 0x37a700]        // 0x0061fea6    8b150007d400
                         push             ecx                                           // 0x0061feac    51
                         push             edx                                           // 0x0061fead    52
                         mov              ecx, 0x00d406fc                               // 0x0061feae    b9fc06d400
                         call             _jmp_addr_0x006223a0                          // 0x0061feb3    e8e8240000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x37a700]        // 0x0061feb8    a10007d400
                         push             eax                                           // 0x0061febd    50
                         call             ??3@YAXPAX@Z                                  // 0x0061febe    e8d5ef1800
                         {disp8} mov      ecx, dword ptr [esp + 0x28]                   // 0x0061fec3    8b4c2428
                         {disp8} mov      edi, dword ptr [esp + 0x24]                   // 0x0061fec7    8b7c2424
                         lea              edx, dword ptr [edi + ecx * 0x8]              // 0x0061fecb    8d14cf
                         add              esp, 0x04                                     // 0x0061fece    83c404
                         mov              ecx, 0x00d406fc                               // 0x0061fed1    b9fc06d400
                         {disp32} mov     dword ptr [data_bytes + 0x37a708], edx        // 0x0061fed6    89150807d400
                         call             _jmp_addr_0x00622380                          // 0x0061fedc    e89f240000
                         {disp8} lea      eax, dword ptr [edi + eax * 0x8 + 0x08]       // 0x0061fee1    8d44c708
                         {disp32} mov     dword ptr [data_bytes + 0x37a704], eax        // 0x0061fee5    a30407d400
                         {disp32} mov     dword ptr [data_bytes + 0x37a700], edi        // 0x0061feea    893d0007d400
                         {disp32} jmp     _jmp_addr_0x0061ffa9                          // 0x0061fef0    e9b4000000
_jmp_addr_0x0061fef5:    mov.s            ecx, eax                                      // 0x0061fef5    8bc8
                         sub.s            ecx, edi                                      // 0x0061fef7    2bcf
                         sar              ecx, 3                                        // 0x0061fef9    c1f903
                         cmp              ecx, 0x01                                     // 0x0061fefc    83f901
                         {disp8} jae      _jmp_addr_0x0061ff54                          // 0x0061feff    7353
                         {disp8} lea      edx, dword ptr [edi + 0x08]                   // 0x0061ff01    8d5708
                         push             edx                                           // 0x0061ff04    52
                         push             eax                                           // 0x0061ff05    50
                         push             edi                                           // 0x0061ff06    57
                         mov              ecx, 0x00d406fc                               // 0x0061ff07    b9fc06d400
                         call             _jmp_addr_0x006223b0                          // 0x0061ff0c    e89f240000
                         {disp8} lea      eax, dword ptr [esp + 0x18]                   // 0x0061ff11    8d442418
                         push             eax                                           // 0x0061ff15    50
                         {disp32} mov     eax, dword ptr [data_bytes + 0x37a704]        // 0x0061ff16    a10407d400
                         mov.s            ecx, eax                                      // 0x0061ff1b    8bc8
                         sub.s            ecx, edi                                      // 0x0061ff1d    2bcf
                         sar              ecx, 3                                        // 0x0061ff1f    c1f903
                         mov              edx, 0x00000001                               // 0x0061ff22    ba01000000
                         sub.s            edx, ecx                                      // 0x0061ff27    2bd1
                         push             edx                                           // 0x0061ff29    52
                         push             eax                                           // 0x0061ff2a    50
                         mov              ecx, 0x00d406fc                               // 0x0061ff2b    b9fc06d400
                         call             _jmp_addr_0x006223f0                          // 0x0061ff30    e8bb240000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x37a704]        // 0x0061ff35    a10407d400
                         cmp.s            edi, eax                                      // 0x0061ff3a    3bf8
                         {disp8} je       _jmp_addr_0x0061ffa2                          // 0x0061ff3c    7464
_jmp_addr_0x0061ff3e:    {disp8} mov      ecx, dword ptr [esp + 0x18]                   // 0x0061ff3e    8b4c2418
                         mov              dword ptr [edi], ecx                          // 0x0061ff42    890f
                         {disp8} mov      edx, dword ptr [esp + 0x1c]                   // 0x0061ff44    8b54241c
                         {disp8} mov      dword ptr [edi + 0x04], edx                   // 0x0061ff48    895704
                         add              edi, 0x08                                     // 0x0061ff4b    83c708
                         cmp.s            edi, eax                                      // 0x0061ff4e    3bf8
                         {disp8} jne      _jmp_addr_0x0061ff3e                          // 0x0061ff50    75ec
                         {disp8} jmp      _jmp_addr_0x0061ffa2                          // 0x0061ff52    eb4e
_jmp_addr_0x0061ff54:    push             eax                                           // 0x0061ff54    50
                         push             eax                                           // 0x0061ff55    50
                         add              eax, -0x08                                    // 0x0061ff56    83c0f8
                         push             eax                                           // 0x0061ff59    50
                         mov              ecx, 0x00d406fc                               // 0x0061ff5a    b9fc06d400
                         call             _jmp_addr_0x006223b0                          // 0x0061ff5f    e84c240000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x37a704]        // 0x0061ff64    a10407d400
                         mov.s            ecx, eax                                      // 0x0061ff69    8bc8
                         add              eax, -0x08                                    // 0x0061ff6b    83c0f8
                         cmp.s            edi, eax                                      // 0x0061ff6e    3bf8
                         {disp8} je       _jmp_addr_0x0061ff87                          // 0x0061ff70    7415
_jmp_addr_0x0061ff72:    {disp8} mov      edx, dword ptr [eax + -0x08]                  // 0x0061ff72    8b50f8
                         sub              eax, 0x08                                     // 0x0061ff75    83e808
                         sub              ecx, 0x08                                     // 0x0061ff78    83e908
                         cmp.s            eax, edi                                      // 0x0061ff7b    3bc7
                         mov              dword ptr [ecx], edx                          // 0x0061ff7d    8911
                         {disp8} mov      edx, dword ptr [eax + 0x04]                   // 0x0061ff7f    8b5004
                         {disp8} mov      dword ptr [ecx + 0x04], edx                   // 0x0061ff82    895104
                         {disp8} jne      _jmp_addr_0x0061ff72                          // 0x0061ff85    75eb
_jmp_addr_0x0061ff87:    {disp8} lea      eax, dword ptr [edi + 0x08]                   // 0x0061ff87    8d4708
                         cmp.s            edi, eax                                      // 0x0061ff8a    3bf8
                         {disp8} je       _jmp_addr_0x0061ffa2                          // 0x0061ff8c    7414
_jmp_addr_0x0061ff8e:    {disp8} mov      ecx, dword ptr [esp + 0x18]                   // 0x0061ff8e    8b4c2418
                         mov              dword ptr [edi], ecx                          // 0x0061ff92    890f
                         {disp8} mov      edx, dword ptr [esp + 0x1c]                   // 0x0061ff94    8b54241c
                         {disp8} mov      dword ptr [edi + 0x04], edx                   // 0x0061ff98    895704
                         add              edi, 0x08                                     // 0x0061ff9b    83c708
                         cmp.s            edi, eax                                      // 0x0061ff9e    3bf8
                         {disp8} jne      _jmp_addr_0x0061ff8e                          // 0x0061ffa0    75ec
_jmp_addr_0x0061ffa2:    add              dword ptr [data_bytes + 0x37a704], 0x08       // 0x0061ffa2    83050407d40008
_jmp_addr_0x0061ffa9:    {disp32} mov     byte ptr [data_bytes + 0x37a601], 0x01        // 0x0061ffa9    c6050106d40001
                         mov              ecx, 0x00d3f038                               // 0x0061ffb0    b938f0d300
_jmp_addr_0x0061ffb5:    mov              eax, dword ptr [ecx]                          // 0x0061ffb5    8b01
                         test             eax, eax                                      // 0x0061ffb7    85c0
                         {disp8} je       _jmp_addr_0x0061ffcb                          // 0x0061ffb9    7410
_jmp_addr_0x0061ffbb:    mov              edx, dword ptr [eax]                          // 0x0061ffbb    8b10
                         {disp32} mov     byte ptr [edx + 0x00000121], 0x00             // 0x0061ffbd    c6822101000000
                         {disp8} mov      eax, dword ptr [eax + 0x04]                   // 0x0061ffc4    8b4004
                         test             eax, eax                                      // 0x0061ffc7    85c0
                         {disp8} jne      _jmp_addr_0x0061ffbb                          // 0x0061ffc9    75f0
_jmp_addr_0x0061ffcb:    add              ecx, 0x8                                      // 0x0061ffcb    83c108
                         cmp              ecx, 0x00d3f060                               // 0x0061ffce    81f960f0d300
                         {disp8} jl       _jmp_addr_0x0061ffb5                          // 0x0061ffd4    7cdf
_jmp_addr_0x0061ffd6:    {disp32} mov     eax, dword ptr [esp + 0x00009080]             // 0x0061ffd6    8b842480900000
                         cmp              dword ptr [eax + 0x18], 0x00000142            // 0x0061ffdd    81781842010000
                         {disp8} jne      _jmp_addr_0x0061ffed                          // 0x0061ffe4    7507
                         mov.s            ecx, esi                                      // 0x0061ffe6    8bce
                         call             _jmp_addr_0x00621c40                          // 0x0061ffe8    e8531c0000
_jmp_addr_0x0061ffed:    pop              edi                                           // 0x0061ffed    5f
                         pop              esi                                           // 0x0061ffee    5e
                         pop              ebp                                           // 0x0061ffef    5d
                         pop              ebx                                           // 0x0061fff0    5b
                         add              esp, 0x00009060                               // 0x0061fff1    81c460900000
                         ret              0x0018                                        // 0x0061fff7    c21800

// Snippet: db, [0x0061fffa, 0x0061fffc)
.byte 0x8b, 0xff                  // 0x0061fffa

// Snippet: jmptbl, [0x0061fffc, 0x00620030)
.byte 0x5a, 0xee, 0x61, 0x00      // 0x0061fffc
.byte 0x9e, 0xee, 0x61, 0x00      // 0x00620000
.byte 0x38, 0xee, 0x61, 0x00      // 0x00620004
.byte 0x7c, 0xee, 0x61, 0x00      // 0x00620008
.byte 0xd2, 0xef, 0x61, 0x00      // 0x0062000c
.byte 0x63, 0xfa, 0x61, 0x00      // 0x00620010
.byte 0xed, 0xee, 0x61, 0x00      // 0x00620014
.byte 0x48, 0xfa, 0x61, 0x00      // 0x00620018
.byte 0x47, 0xf6, 0x61, 0x00      // 0x0062001c
.byte 0x17, 0xf6, 0x61, 0x00      // 0x00620020
.byte 0xeb, 0xf7, 0x61, 0x00      // 0x00620024
.byte 0xfd, 0xf6, 0x61, 0x00      // 0x00620028
.byte 0xed, 0xff, 0x61, 0x00      // 0x0062002c

// Snippet: ijmptbl, [0x00620030, 0x0062003f)
.byte 0x00, 0x01, 0x08, 0x02      // 0x00620030
.byte 0x08, 0x08, 0x03, 0x04      // 0x00620034
.byte 0x08, 0x05, 0x08, 0x08      // 0x00620038
.byte 0x08, 0x06, 0x07            // 0x0062003c

// Snippet: db, [0x0062003f, 0x00620040)
.byte 0x90                        // 0x0062003f

// Snippet: jmptbl, [0x00620040, 0x006200a8)
.byte 0x2b, 0xf1, 0x61, 0x00      // 0x00620040
.byte 0xf7, 0xf1, 0x61, 0x00      // 0x00620044
.byte 0x3b, 0xf2, 0x61, 0x00      // 0x00620048
.byte 0x7f, 0xf2, 0x61, 0x00      // 0x0062004c
.byte 0xc3, 0xf2, 0x61, 0x00      // 0x00620050
.byte 0x04, 0xf3, 0x61, 0x00      // 0x00620054
.byte 0x70, 0xf0, 0x61, 0x00      // 0x00620058
.byte 0xa8, 0xf0, 0x61, 0x00      // 0x0062005c
.byte 0xe9, 0xf0, 0x61, 0x00      // 0x00620060
.byte 0x0a, 0xf1, 0x61, 0x00      // 0x00620064
.byte 0x6f, 0xf1, 0x61, 0x00      // 0x00620068
.byte 0xb3, 0xf1, 0x61, 0x00      // 0x0062006c
.byte 0x48, 0xf3, 0x61, 0x00      // 0x00620070
.byte 0x88, 0xf3, 0x61, 0x00      // 0x00620074
.byte 0xc8, 0xf3, 0x61, 0x00      // 0x00620078
.byte 0x08, 0xf4, 0x61, 0x00      // 0x0062007c
.byte 0x48, 0xf4, 0x61, 0x00      // 0x00620080
.byte 0x88, 0xf4, 0x61, 0x00      // 0x00620084
.byte 0xc8, 0xf4, 0x61, 0x00      // 0x00620088
.byte 0x08, 0xf5, 0x61, 0x00      // 0x0062008c
.byte 0x55, 0xf5, 0x61, 0x00      // 0x00620090
.byte 0x94, 0xf5, 0x61, 0x00      // 0x00620094
.byte 0x16, 0xfc, 0x61, 0x00      // 0x00620098
.byte 0x16, 0xfc, 0x61, 0x00      // 0x0062009c
.byte 0x0e, 0xfc, 0x61, 0x00      // 0x006200a0
.byte 0x0e, 0xfc, 0x61, 0x00      // 0x006200a4

// Snippet: db, [0x006200a8, 0x006200b0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x006200a8
.byte 0x90, 0x90, 0x90, 0x90      // 0x006200ac

