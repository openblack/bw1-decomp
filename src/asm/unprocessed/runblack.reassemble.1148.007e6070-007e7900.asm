.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern  ??3@YAXPAX@Z
.extern ??0LHOSFile@@QAE@XZ
.extern @Read__8LHOSFileFPvUlPUl@20
.extern _jmp_addr_0x007bcad0
.extern _wcscat
.extern _wcscpy
.extern __itow
.extern _wcslen
.extern _atol
.extern _atoi
.extern _malloc
.extern _free
.extern _isalpha
.extern _isupper
.extern _islower
.extern _isdigit
.extern _isspace
.extern _iswalpha
.extern _iswupper
.extern _iswlower
.extern _iswdigit
.extern _iswspace
.extern _wcscmp
.extern _wcsstr             
.extern _strncpy
.extern _strchr
.extern _atof
.extern _strstr
.extern _strrchr
.extern __itoa
.extern _strpbrk
.extern ___nw__FUl
.extern _jmp_addr_0x007ded80
.extern _jmp_addr_0x007e7900
.extern _jmp_addr_0x007e7960
.extern _jmp_addr_0x007e79c0
.extern _jmp_addr_0x007e7a20
.extern _jmp_addr_0x007e7a70
.extern _jmp_addr_0x007e7aa0
.extern _jmp_addr_0x007e7b70
.extern _jmp_addr_0x007e7be0
.extern _jmp_addr_0x007e7bf0
.extern _jmp_addr_0x007e7fb0
.extern _jmp_addr_0x007e8090
.extern @LoadFile__12LHScriptX_c_FPcPl@16
.extern _jmp_addr_0x007e8240
.extern _jmp_addr_0x007e8a90
.extern ?DestroyVariables@LHScriptX_c_@@QAEXXZ
.extern _jmp_addr_0x007e8d10
.extern _jmp_addr_0x007eadb0
.extern _jmp_addr_0x007eb870
.extern _jmp_addr_0x007f1170
.extern _jmp_addr_0x007f12a0
.extern _jmp_addr_0x007f12b0
.extern _strspn
.extern _wcschr
.extern _wcsrchr
.extern _wcspbrk
.extern _wcsspn

.globl _jmp_addr_0x007e6070
.globl _jmp_addr_0x007e6290
.globl _jmp_addr_0x007e62d0
.globl _jmp_addr_0x007e6330
.globl _jmp_addr_0x007e6450
.globl _jmp_addr_0x007e64a0
.globl _jmp_addr_0x007e6500
.globl _jmp_addr_0x007e66e0
.globl _jmp_addr_0x007e6700
.globl _jmp_addr_0x007e67c0
.globl _jmp_addr_0x007e67e0
.globl _jmp_addr_0x007e6960
.globl _jmp_addr_0x007e69b0
.globl _jmp_addr_0x007e69d0
.globl _jmp_addr_0x007e6a30
.globl _jmp_addr_0x007e6b40
.globl ??0LHReleasedOSFile@@QAE@XZ  
.globl _jmp_addr_0x007e6d30
.globl _jmp_addr_0x007e6d70
.globl _jmp_addr_0x007e6da0
.globl _jmp_addr_0x007e6dc0
.globl _jmp_addr_0x007e6f50
.globl _jmp_addr_0x007e6f60
.globl _jmp_addr_0x007e6f80
.globl _jmp_addr_0x007e6fa0
.globl _jmp_addr_0x007e6fc0
.globl _jmp_addr_0x007e6fe0
.globl _jmp_addr_0x007e6ff0
.globl _jmp_addr_0x007e7160
.globl _jmp_addr_0x007e7170
.globl _jmp_addr_0x007e7180
.globl _jmp_addr_0x007e71a0
.globl _jmp_addr_0x007e71c0
.globl _jmp_addr_0x007e71e0
.globl _jmp_addr_0x007e71f0
.globl _jmp_addr_0x007e7200
.globl _jmp_addr_0x007e7210
.globl _jmp_addr_0x007e7240
.globl @Load__12LHScriptX_c_FPcP19LHScriptCommandX_c_PFlP16LHScriptPramX_c__9LH_RETURNPl@24
.globl _jmp_addr_0x007e73d0
.globl @LoadOneLine__12LHScriptX_c_FR16LHReleasedOSFilePc@16
.globl _jmp_addr_0x007e74c0
.globl _jmp_addr_0x007e7530
.globl @ScanLine__12LHScriptX_c_FPc@12

start_0x007e6070_0x007e7900:
// Snippet: asm, [0x007e6070, 0x007e78c0)
_jmp_addr_0x007e6070:    sub              esp, 0x2c                                     // 0x007e6070    83ec2c
                         push             ebx                                           // 0x007e6073    53
                         push             ebp                                           // 0x007e6074    55
                         push             esi                                           // 0x007e6075    56
                         push             edi                                           // 0x007e6076    57
                         mov.s            esi, ecx                                      // 0x007e6077    8bf1
                         push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e6079    685006e900
                         call             dword ptr [__imp__EnterCriticalSection@4]     // 0x007e607e    ff1580918a00
                         mov              eax, dword ptr [esi]                          // 0x007e6084    8b06
                         {disp8} lea      ecx, dword ptr [esi + 0x74]                   // 0x007e6086    8d4e74
                         {disp32} lea     edi, dword ptr [esi + 0x00000094]             // 0x007e6089    8dbe94000000
                         push             eax                                           // 0x007e608f    50
                         push             ecx                                           // 0x007e6090    51
                         {disp8} mov      ecx, dword ptr [esp + 0x48]                   // 0x007e6091    8b4c2448
                         push             edi                                           // 0x007e6095    57
                         call             _jmp_addr_0x007e6720                          // 0x007e6096    e885060000
                         mov.s            ebp, eax                                      // 0x007e609b    8be8
                         {disp32} lea     eax, dword ptr [esi + 0x000000a4]             // 0x007e609d    8d86a4000000
                         mov.s            ecx, eax                                      // 0x007e60a3    8bc8
                         {disp8} mov      dword ptr [esp + 0x10], ebp                   // 0x007e60a5    896c2410
                         test             ebp, ebp                                      // 0x007e60a9    85ed
                         mov              edx, dword ptr [ecx]                          // 0x007e60ab    8b11
                         {disp8} mov      dword ptr [esp + 0x1c], edx                   // 0x007e60ad    8954241c
                         {disp8} mov      ebx, dword ptr [ecx + 0x04]                   // 0x007e60b1    8b5904
                         {disp8} mov      dword ptr [esp + 0x20], ebx                   // 0x007e60b4    895c2420
                         {disp8} mov      eax, dword ptr [ecx + 0x08]                   // 0x007e60b8    8b4108
                         {disp8} mov      dword ptr [esp + 0x24], eax                   // 0x007e60bb    89442424
                         {disp8} mov      ecx, dword ptr [ecx + 0x0c]                   // 0x007e60bf    8b490c
                         {disp8} mov      dword ptr [esp + 0x28], ecx                   // 0x007e60c2    894c2428
                         {disp32} jne     _jmp_addr_0x007e626b                          // 0x007e60c6    0f859f010000
                         mov              ecx, dword ptr [edi]                          // 0x007e60cc    8b0f
                         cmp.s            edx, ecx                                      // 0x007e60ce    3bd1
                         {disp8} jge      _jmp_addr_0x007e60da                          // 0x007e60d0    7d08
                         mov.s            edx, ecx                                      // 0x007e60d2    8bd1
                         {disp8} mov      dword ptr [esp + 0x1c], edx                   // 0x007e60d4    8954241c
                         {disp8} jmp      _jmp_addr_0x007e60e3                          // 0x007e60d8    eb09
_jmp_addr_0x007e60da:    cmp              edx, dword ptr [edi + 0x08]                   // 0x007e60da    3b5708
                         {disp32} jg      _jmp_addr_0x007e626b                          // 0x007e60dd    0f8f88010000
_jmp_addr_0x007e60e3:    {disp8} mov      ecx, dword ptr [edi + 0x04]                   // 0x007e60e3    8b4f04
                         cmp.s            ebx, ecx                                      // 0x007e60e6    3bd9
                         {disp8} jge      _jmp_addr_0x007e60f2                          // 0x007e60e8    7d08
                         mov.s            ebx, ecx                                      // 0x007e60ea    8bd9
                         {disp8} mov      dword ptr [esp + 0x20], ebx                   // 0x007e60ec    895c2420
                         {disp8} jmp      _jmp_addr_0x007e60fb                          // 0x007e60f0    eb09
_jmp_addr_0x007e60f2:    cmp              ebx, dword ptr [edi + 0x0c]                   // 0x007e60f2    3b5f0c
                         {disp32} jg      _jmp_addr_0x007e626b                          // 0x007e60f5    0f8f70010000
_jmp_addr_0x007e60fb:    {disp8} mov      ecx, dword ptr [edi + 0x08]                   // 0x007e60fb    8b4f08
                         cmp.s            eax, ecx                                      // 0x007e60fe    3bc1
                         {disp8} jle      _jmp_addr_0x007e6108                          // 0x007e6100    7e06
                         {disp8} mov      dword ptr [esp + 0x24], ecx                   // 0x007e6102    894c2424
                         {disp8} jmp      _jmp_addr_0x007e6110                          // 0x007e6106    eb08
_jmp_addr_0x007e6108:    cmp              eax, dword ptr [edi]                          // 0x007e6108    3b07
                         {disp32} jl      _jmp_addr_0x007e626b                          // 0x007e610a    0f8c5b010000
_jmp_addr_0x007e6110:    {disp8} mov      ecx, dword ptr [edi + 0x0c]                   // 0x007e6110    8b4f0c
                         {disp8} mov      eax, dword ptr [esp + 0x28]                   // 0x007e6113    8b442428
                         cmp.s            eax, ecx                                      // 0x007e6117    3bc1
                         {disp8} jle      _jmp_addr_0x007e6123                          // 0x007e6119    7e08
                         mov.s            eax, ecx                                      // 0x007e611b    8bc1
                         {disp8} mov      dword ptr [esp + 0x28], eax                   // 0x007e611d    89442428
                         {disp8} jmp      _jmp_addr_0x007e612c                          // 0x007e6121    eb09
_jmp_addr_0x007e6123:    cmp              eax, dword ptr [edi + 0x04]                   // 0x007e6123    3b4704
                         {disp32} jl      _jmp_addr_0x007e626b                          // 0x007e6126    0f8c3f010000
_jmp_addr_0x007e612c:    mov              ebp, dword ptr [edi]                          // 0x007e612c    8b2f
                         {disp8} mov      ecx, dword ptr [esp + 0x24]                   // 0x007e612e    8b4c2424
                         {disp8} mov      dword ptr [esp + 0x38], eax                   // 0x007e6132    89442438
                         {disp8} mov      eax, dword ptr [esi + 0x74]                   // 0x007e6136    8b4674
                         sub.s            eax, ebp                                      // 0x007e6139    2bc5
                         {disp8} mov      ebp, dword ptr [esi + 0x78]                   // 0x007e613b    8b6e78
                         add.s            eax, edx                                      // 0x007e613e    03c2
                         {disp8} mov      dword ptr [esp + 0x34], ecx                   // 0x007e6140    894c2434
                         {disp8} mov      dword ptr [esp + 0x14], eax                   // 0x007e6144    89442414
                         {disp32} mov     eax, dword ptr [esi + 0x00000098]             // 0x007e6148    8b8698000000
                         mov.s            ecx, ebx                                      // 0x007e614e    8bcb
                         {disp8} mov      dword ptr [esp + 0x2c], edx                   // 0x007e6150    8954242c
                         sub.s            ecx, eax                                      // 0x007e6154    2bc8
                         {disp32} mov     eax, dword ptr [esi + 0x00000088]             // 0x007e6156    8b8688000000
                         add.s            ecx, ebp                                      // 0x007e615c    03cd
                         {disp32} mov     ebp, dword ptr [esi + 0x000000a4]             // 0x007e615e    8baea4000000
                         {disp8} mov      dword ptr [esp + 0x18], ecx                   // 0x007e6164    894c2418
                         {disp32} mov     ecx, dword ptr [esi + 0x000000a8]             // 0x007e6168    8b8ea8000000
                         sub.s            eax, ecx                                      // 0x007e616e    2bc1
                         {disp32} mov     ecx, dword ptr [esi + 0x00000084]             // 0x007e6170    8b8e84000000
                         sub.s            ecx, ebp                                      // 0x007e6176    2bcd
                         {disp8} mov      dword ptr [esp + 0x30], ebx                   // 0x007e6178    895c2430
                         add.s            edx, ecx                                      // 0x007e617c    03d1
                         add.s            ebx, eax                                      // 0x007e617e    03d8
                         {disp8} mov      dword ptr [esp + 0x1c], edx                   // 0x007e6180    8954241c
                         {disp8} mov      edx, dword ptr [esp + 0x24]                   // 0x007e6184    8b542424
                         add.s            edx, ecx                                      // 0x007e6188    03d1
                         {disp8} mov      ecx, dword ptr [esp + 0x28]                   // 0x007e618a    8b4c2428
                         add.s            ecx, eax                                      // 0x007e618e    03c8
                         {disp8} mov      eax, dword ptr [esi + 0x08]                   // 0x007e6190    8b4608
                         test             eax, eax                                      // 0x007e6193    85c0
                         {disp8} mov      dword ptr [esp + 0x20], ebx                   // 0x007e6195    895c2420
                         {disp8} mov      dword ptr [esp + 0x24], edx                   // 0x007e6199    89542424
                         {disp8} mov      dword ptr [esp + 0x28], ecx                   // 0x007e619d    894c2428
                         {disp8} jne      _jmp_addr_0x007e61d4                          // 0x007e61a1    7531
                         xor.s            edx, edx                                      // 0x007e61a3    33d2
                         {disp8} mov      dl, byte ptr [esi + 0x28]                     // 0x007e61a5    8a5628
                         {disp8} mov      eax, dword ptr [esi + edx * 0x4 + 0x2c]       // 0x007e61a8    8b44962c
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x007e61ac    8b4808
                         mov              edx, dword ptr [eax]                          // 0x007e61af    8b10
                         push             ecx                                           // 0x007e61b1    51
                         push             0x1                                           // 0x007e61b2    6a01
                         {disp8} lea      eax, dword ptr [esp + 0x1c]                   // 0x007e61b4    8d44241c
                         push             edx                                           // 0x007e61b8    52
                         {disp8} lea      ecx, dword ptr [esp + 0x28]                   // 0x007e61b9    8d4c2428
                         push             eax                                           // 0x007e61bd    50
                         push             ecx                                           // 0x007e61be    51
                         {disp8} mov      ecx, dword ptr [esp + 0x54]                   // 0x007e61bf    8b4c2454
                         call             _jmp_addr_0x007e67e0                          // 0x007e61c3    e818060000
                         mov.s            ebp, eax                                      // 0x007e61c8    8be8
                         test             ebp, ebp                                      // 0x007e61ca    85ed
                         {disp32} jne     _jmp_addr_0x007e626b                          // 0x007e61cc    0f8599000000
                         {disp8} jmp      _jmp_addr_0x007e61d8                          // 0x007e61d2    eb04
_jmp_addr_0x007e61d4:    {disp8} mov      ebp, dword ptr [esp + 0x10]                   // 0x007e61d4    8b6c2410
_jmp_addr_0x007e61d8:    {disp8} mov      edx, dword ptr [esp + 0x44]                   // 0x007e61d8    8b542444
                         test             edx, edx                                      // 0x007e61dc    85d2
                         {disp32} je      _jmp_addr_0x007e626b                          // 0x007e61de    0f8487000000
                         {disp32} mov     eax, dword ptr [esi + 0x00000084]             // 0x007e61e4    8b8684000000
                         {disp32} mov     ebx, dword ptr [esi + 0x000000a4]             // 0x007e61ea    8b9ea4000000
                         {disp8} mov      ebp, dword ptr [esp + 0x30]                   // 0x007e61f0    8b6c2430
                         sub.s            eax, ebx                                      // 0x007e61f4    2bc3
                         {disp8} mov      ebx, dword ptr [esp + 0x2c]                   // 0x007e61f6    8b5c242c
                         mov.s            ecx, ebp                                      // 0x007e61fa    8bcd
                         add.s            eax, ebx                                      // 0x007e61fc    03c3
                         {disp8} mov      dword ptr [esp + 0x14], eax                   // 0x007e61fe    89442414
                         {disp32} mov     eax, dword ptr [esi + 0x000000a8]             // 0x007e6202    8b86a8000000
                         sub.s            ecx, eax                                      // 0x007e6208    2bc8
                         {disp32} mov     eax, dword ptr [esi + 0x00000088]             // 0x007e620a    8b8688000000
                         add.s            ecx, eax                                      // 0x007e6210    03c8
                         {disp8} mov      eax, dword ptr [esi + 0x78]                   // 0x007e6212    8b4678
                         {disp8} mov      dword ptr [esp + 0x18], ecx                   // 0x007e6215    894c2418
                         {disp32} mov     ecx, dword ptr [esi + 0x00000098]             // 0x007e6219    8b8e98000000
                         sub.s            eax, ecx                                      // 0x007e621f    2bc1
                         {disp8} mov      ecx, dword ptr [esi + 0x74]                   // 0x007e6221    8b4e74
                         sub              ecx, dword ptr [edi]                          // 0x007e6224    2b0f
                         {disp8} mov      edi, dword ptr [esp + 0x34]                   // 0x007e6226    8b7c2434
                         add.s            ebp, eax                                      // 0x007e622a    03e8
                         add.s            ebx, ecx                                      // 0x007e622c    03d9
                         add.s            edi, ecx                                      // 0x007e622e    03f9
                         {disp8} mov      ecx, dword ptr [esp + 0x38]                   // 0x007e6230    8b4c2438
                         {disp8} mov      dword ptr [esp + 0x2c], ebx                   // 0x007e6234    895c242c
                         add.s            ecx, eax                                      // 0x007e6238    03c8
                         xor.s            eax, eax                                      // 0x007e623a    33c0
                         {disp8} mov      al, byte ptr [esi + 0x28]                     // 0x007e623c    8a4628
                         {disp8} mov      dword ptr [esp + 0x38], ecx                   // 0x007e623f    894c2438
                         {disp8} mov      ecx, dword ptr [edx + 0x08]                   // 0x007e6243    8b4a08
                         mov              edx, dword ptr [edx]                          // 0x007e6246    8b12
                         {disp8} mov      dword ptr [esp + 0x30], ebp                   // 0x007e6248    896c2430
                         {disp8} mov      dword ptr [esp + 0x34], edi                   // 0x007e624c    897c2434
                         {disp8} mov      esi, dword ptr [esi + eax * 0x4 + 0x2c]       // 0x007e6250    8b74862c
                         push             ecx                                           // 0x007e6254    51
                         push             0x1                                           // 0x007e6255    6a01
                         {disp8} lea      eax, dword ptr [esp + 0x1c]                   // 0x007e6257    8d44241c
                         push             edx                                           // 0x007e625b    52
                         {disp8} lea      ecx, dword ptr [esp + 0x38]                   // 0x007e625c    8d4c2438
                         push             eax                                           // 0x007e6260    50
                         push             ecx                                           // 0x007e6261    51
                         mov.s            ecx, esi                                      // 0x007e6262    8bce
                         call             _jmp_addr_0x007e67e0                          // 0x007e6264    e877050000
                         mov.s            ebp, eax                                      // 0x007e6269    8be8
_jmp_addr_0x007e626b:    push             0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007e626b    685006e900
                         call             dword ptr [__imp__LeaveCriticalSection@4]     // 0x007e6270    ff1584918a00
                         pop              edi                                           // 0x007e6276    5f
                         mov.s            eax, ebp                                      // 0x007e6277    8bc5
                         pop              esi                                           // 0x007e6279    5e
                         pop              ebp                                           // 0x007e627a    5d
                         pop              ebx                                           // 0x007e627b    5b
                         add              esp, 0x2c                                     // 0x007e627c    83c42c
                         ret              0x0008                                        // 0x007e627f    c20800
                         nop                                                            // 0x007e6282    90
                         nop                                                            // 0x007e6283    90
                         nop                                                            // 0x007e6284    90
                         nop                                                            // 0x007e6285    90
                         nop                                                            // 0x007e6286    90
                         nop                                                            // 0x007e6287    90
                         nop                                                            // 0x007e6288    90
                         nop                                                            // 0x007e6289    90
                         nop                                                            // 0x007e628a    90
                         nop                                                            // 0x007e628b    90
                         nop                                                            // 0x007e628c    90
                         nop                                                            // 0x007e628d    90
                         nop                                                            // 0x007e628e    90
                         nop                                                            // 0x007e628f    90
_jmp_addr_0x007e6290:    mov.s            eax, ecx                                      // 0x007e6290    8bc1
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e6292    8b4c2404
                         {disp8} mov      dword ptr [eax + 0x20], 0x00000001            // 0x007e6296    c7402001000000
                         {disp8} mov      dword ptr [eax + 0x1c], ecx                   // 0x007e629d    89481c
                         mov              dx, word ptr [ecx]                            // 0x007e62a0    668b11
                         {disp8} mov      word ptr [eax + 0x14], dx                     // 0x007e62a3    66895014
                         {disp8} mov      cx, word ptr [ecx + 0x02]                     // 0x007e62a7    668b4902
                         {disp8} mov      edx, dword ptr [esp + 0x08]                   // 0x007e62ab    8b542408
                         {disp8} mov      word ptr [eax + 0x16], cx                     // 0x007e62af    66894816
                         xor.s            ecx, ecx                                      // 0x007e62b3    33c9
                         {disp8} mov      dword ptr [eax + 0x24], edx                   // 0x007e62b5    895024
                         {disp8} mov      dword ptr [eax + 0x08], ecx                   // 0x007e62b8    894808
                         {disp8} mov      dword ptr [eax + 0x28], ecx                   // 0x007e62bb    894828
                         ret              0x0008                                        // 0x007e62be    c20800
                         nop                                                            // 0x007e62c1    90
                         nop                                                            // 0x007e62c2    90
                         nop                                                            // 0x007e62c3    90
                         nop                                                            // 0x007e62c4    90
                         nop                                                            // 0x007e62c5    90
                         nop                                                            // 0x007e62c6    90
                         nop                                                            // 0x007e62c7    90
                         nop                                                            // 0x007e62c8    90
                         nop                                                            // 0x007e62c9    90
                         nop                                                            // 0x007e62ca    90
                         nop                                                            // 0x007e62cb    90
                         nop                                                            // 0x007e62cc    90
                         nop                                                            // 0x007e62cd    90
                         nop                                                            // 0x007e62ce    90
                         nop                                                            // 0x007e62cf    90
_jmp_addr_0x007e62d0:    sub              esp, 0x10                                     // 0x007e62d0    83ec10
                         {disp8} mov      edx, dword ptr [esp + 0x18]                   // 0x007e62d3    8b542418
                         xor.s            eax, eax                                      // 0x007e62d7    33c0
                         push             esi                                           // 0x007e62d9    56
                         mov.s            esi, ecx                                      // 0x007e62da    8bf1
                         {disp8} mov      ecx, dword ptr [esp + 0x18]                   // 0x007e62dc    8b4c2418
                         push             eax                                           // 0x007e62e0    50
                         {disp8} mov      dword ptr [esi + 0x20], eax                   // 0x007e62e1    894620
                         {disp8} mov      dword ptr [esi + 0x08], eax                   // 0x007e62e4    894608
                         {disp8} mov      dword ptr [esi + 0x28], eax                   // 0x007e62e7    894628
                         push             eax                                           // 0x007e62ea    50
                         {disp8} lea      eax, dword ptr [esp + 0x0c]                   // 0x007e62eb    8d44240c
                         {disp8} mov      dword ptr [esi + 0x1c], ecx                   // 0x007e62ef    894e1c
                         push             eax                                           // 0x007e62f2    50
                         {disp8} mov      dword ptr [esi + 0x24], edx                   // 0x007e62f3    895624
                         call             _jmp_addr_0x007f1170                          // 0x007e62f6    e875ae0000
                         {disp8} mov      ecx, dword ptr [esp + 0x0c]                   // 0x007e62fb    8b4c240c
                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e62ff    8b442404
                         {disp8} mov      edx, dword ptr [esp + 0x08]                   // 0x007e6303    8b542408
                         sub.s            ecx, eax                                      // 0x007e6307    2bc8
                         {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007e6309    8b442410
                         inc              ecx                                           // 0x007e630d    41
                         sub.s            eax, edx                                      // 0x007e630e    2bc2
                         {disp8} mov      word ptr [esi + 0x14], cx                     // 0x007e6310    66894e14
                         inc              eax                                           // 0x007e6314    40
                         {disp8} mov      word ptr [esi + 0x16], ax                     // 0x007e6315    66894616
                         mov.s            eax, esi                                      // 0x007e6319    8bc6
                         pop              esi                                           // 0x007e631b    5e
                         add              esp, 0x10                                     // 0x007e631c    83c410
                         ret              0x0008                                        // 0x007e631f    c20800
                         nop                                                            // 0x007e6322    90
                         nop                                                            // 0x007e6323    90
                         nop                                                            // 0x007e6324    90
                         nop                                                            // 0x007e6325    90
                         nop                                                            // 0x007e6326    90
                         nop                                                            // 0x007e6327    90
                         nop                                                            // 0x007e6328    90
                         nop                                                            // 0x007e6329    90
                         nop                                                            // 0x007e632a    90
                         nop                                                            // 0x007e632b    90
                         nop                                                            // 0x007e632c    90
                         nop                                                            // 0x007e632d    90
                         nop                                                            // 0x007e632e    90
                         nop                                                            // 0x007e632f    90
_jmp_addr_0x007e6330:    push             esi                                           // 0x007e6330    56
                         push             edi                                           // 0x007e6331    57
                         mov.s            edi, ecx                                      // 0x007e6332    8bf9
                         call             _jmp_addr_0x007e6350                          // 0x007e6334    e817000000
                         mov.s            esi, eax                                      // 0x007e6339    8bf0
                         test             esi, esi                                      // 0x007e633b    85f6
                         {disp8} jne      _jmp_addr_0x007e6346                          // 0x007e633d    7507
                         mov.s            ecx, edi                                      // 0x007e633f    8bcf
                         call             _jmp_addr_0x007e68e0                          // 0x007e6341    e89a050000
_jmp_addr_0x007e6346:    mov.s            eax, esi                                      // 0x007e6346    8bc6
                         pop              edi                                           // 0x007e6348    5f
                         pop              esi                                           // 0x007e6349    5e
                         ret                                                            // 0x007e634a    c3
                         nop                                                            // 0x007e634b    90
                         nop                                                            // 0x007e634c    90
                         nop                                                            // 0x007e634d    90
                         nop                                                            // 0x007e634e    90
                         nop                                                            // 0x007e634f    90
_jmp_addr_0x007e6350:    sub              esp, 0x7c                                     // 0x007e6350    83ec7c
                         push             esi                                           // 0x007e6353    56
                         mov.s            esi, ecx                                      // 0x007e6354    8bf1
                         push             edi                                           // 0x007e6356    57
                         mov              ecx, 0x0000001f                               // 0x007e6357    b91f000000
                         xor.s            eax, eax                                      // 0x007e635c    33c0
                         {disp8} lea      edi, dword ptr [esp + 0x08]                   // 0x007e635e    8d7c2408
                         rep stosd                                                      // 0x007e6362    f3ab
                         {disp8} mov      ax, word ptr [esi + 0x16]                     // 0x007e6364    668b4616
                         xor.s            ecx, ecx                                      // 0x007e6368    33c9
                         {disp8} mov      cx, word ptr [esi + 0x14]                     // 0x007e636a    668b4e14
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x007e636e    89442410
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4bf07c]        // 0x007e6372    a17c50e800
                         {disp8} mov      dword ptr [esp + 0x14], ecx                   // 0x007e6377    894c2414
                         push             0x0                                           // 0x007e637b    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]                   // 0x007e637d    8d4c240c
                         {disp8} mov      dword ptr [esp + 0x0c], 0x0000007c            // 0x007e6381    c744240c7c000000
                         {disp8} mov      dword ptr [esp + 0x10], 0x00000007            // 0x007e6389    c744241007000000
                         {disp8} mov      dword ptr [esp + 0x74], 0x00000040            // 0x007e6391    c744247440000000
                         mov              edx, dword ptr [eax]                          // 0x007e6399    8b10
                         push             esi                                           // 0x007e639b    56
                         push             ecx                                           // 0x007e639c    51
                         push             eax                                           // 0x007e639d    50
                         call             dword ptr [edx + 0x18]                        // 0x007e639e    ff5218
                         mov.s            ecx, esi                                      // 0x007e63a1    8bce
                         call             _jmp_addr_0x007e63b0                          // 0x007e63a3    e808000000
                         pop              edi                                           // 0x007e63a8    5f
                         pop              esi                                           // 0x007e63a9    5e
                         add              esp, 0x7c                                     // 0x007e63aa    83c47c
                         ret                                                            // 0x007e63ad    c3
                         nop                                                            // 0x007e63ae    90
                         nop                                                            // 0x007e63af    90
_jmp_addr_0x007e63b0:    sub              esp, 0x7c                                     // 0x007e63b0    83ec7c
                         push             ebx                                           // 0x007e63b3    53
                         push             esi                                           // 0x007e63b4    56
                         mov.s            esi, ecx                                      // 0x007e63b5    8bf1
                         push             edi                                           // 0x007e63b7    57
                         mov              ecx, 0x0000001f                               // 0x007e63b8    b91f000000
                         xor.s            eax, eax                                      // 0x007e63bd    33c0
                         {disp8} lea      edi, dword ptr [esp + 0x0c]                   // 0x007e63bf    8d7c240c
                         xor.s            ebx, ebx                                      // 0x007e63c3    33db
                         rep stosd                                                      // 0x007e63c5    f3ab
                         mov              eax, dword ptr [esi]                          // 0x007e63c7    8b06
                         push             ebx                                           // 0x007e63c9    53
                         {disp8} lea      edx, dword ptr [esp + 0x10]                   // 0x007e63ca    8d542410
                         push             0x1                                           // 0x007e63ce    6a01
                         {disp8} mov      dword ptr [esp + 0x14], 0x0000007c            // 0x007e63d0    c74424147c000000
                         mov              ecx, dword ptr [eax]                          // 0x007e63d8    8b08
                         push             edx                                           // 0x007e63da    52
                         push             ebx                                           // 0x007e63db    53
                         push             eax                                           // 0x007e63dc    50
                         call             dword ptr [ecx + 0x64]                        // 0x007e63dd    ff5164
                         test             eax, eax                                      // 0x007e63e0    85c0
                         {disp8} je       _jmp_addr_0x007e63e9                          // 0x007e63e2    7405
                         mov              ebx, 0x00000002                               // 0x007e63e4    bb02000000
_jmp_addr_0x007e63e9:    {disp8} mov      eax, dword ptr [esp + 0x1c]                   // 0x007e63e9    8b44241c
                         xor.s            edx, edx                                      // 0x007e63ed    33d2
                         {disp8} mov      dword ptr [esi + 0x10], eax                   // 0x007e63ef    894610
                         {disp8} mov      ecx, dword ptr [esp + 0x30]                   // 0x007e63f2    8b4c2430
                         shl              eax, 3                                        // 0x007e63f6    c1e003
                         div              dword ptr [esp + 0x60]                        // 0x007e63f9    f7742460
                         {disp8} mov      dword ptr [esi + 0x18], ecx                   // 0x007e63fd    894e18
                         push             0x0                                           // 0x007e6400    6a00
                         {disp8} mov      dword ptr [esi + 0x0c], eax                   // 0x007e6402    89460c
                         mov              eax, dword ptr [esi]                          // 0x007e6405    8b06
                         push             eax                                           // 0x007e6407    50
                         mov              edx, dword ptr [eax]                          // 0x007e6408    8b10
                         call             dword ptr [edx + 0x80]                        // 0x007e640a    ff9280000000
                         test             eax, eax                                      // 0x007e6410    85c0
                         {disp8} je       _jmp_addr_0x007e6419                          // 0x007e6412    7405
                         mov              ebx, 0x00000002                               // 0x007e6414    bb02000000
_jmp_addr_0x007e6419:    xor.s            eax, eax                                      // 0x007e6419    33c0
                         mov.s            ecx, esi                                      // 0x007e641b    8bce
                         test             ebx, ebx                                      // 0x007e641d    85db
                         sete             al                                            // 0x007e641f    0f94c0
                         {disp8} mov      dword ptr [esi + 0x2c], eax                   // 0x007e6422    89462c
                         call             _jmp_addr_0x007e6530                          // 0x007e6425    e806010000
                         {disp8} mov      eax, dword ptr [esi + 0x1c]                   // 0x007e642a    8b461c
                         test             eax, eax                                      // 0x007e642d    85c0
                         {disp8} je       _jmp_addr_0x007e6438                          // 0x007e642f    7407
                         mov.s            ecx, esi                                      // 0x007e6431    8bce
                         call             _jmp_addr_0x007e6590                          // 0x007e6433    e858010000
_jmp_addr_0x007e6438:    pop              edi                                           // 0x007e6438    5f
                         mov.s            eax, ebx                                      // 0x007e6439    8bc3
                         pop              esi                                           // 0x007e643b    5e
                         pop              ebx                                           // 0x007e643c    5b
                         add              esp, 0x7c                                     // 0x007e643d    83c47c
                         ret                                                            // 0x007e6440    c3
                         nop                                                            // 0x007e6441    90
                         nop                                                            // 0x007e6442    90
                         nop                                                            // 0x007e6443    90
                         nop                                                            // 0x007e6444    90
                         nop                                                            // 0x007e6445    90
                         nop                                                            // 0x007e6446    90
                         nop                                                            // 0x007e6447    90
                         nop                                                            // 0x007e6448    90
                         nop                                                            // 0x007e6449    90
                         nop                                                            // 0x007e644a    90
                         nop                                                            // 0x007e644b    90
                         nop                                                            // 0x007e644c    90
                         nop                                                            // 0x007e644d    90
                         nop                                                            // 0x007e644e    90
                         nop                                                            // 0x007e644f    90
_jmp_addr_0x007e6450:    sub              esp, 0x7c                                     // 0x007e6450    83ec7c
                         push             esi                                           // 0x007e6453    56
                         push             edi                                           // 0x007e6454    57
                         mov.s            esi, ecx                                      // 0x007e6455    8bf1
                         xor.s            edi, edi                                      // 0x007e6457    33ff
                         push             edi                                           // 0x007e6459    57
                         {disp8} lea      edx, dword ptr [esp + 0x0c]                   // 0x007e645a    8d54240c
                         mov              eax, dword ptr [esi]                          // 0x007e645e    8b06
                         push             0x21                                          // 0x007e6460    6a21
                         {disp8} mov      dword ptr [esp + 0x10], 0x0000007c            // 0x007e6462    c74424107c000000
                         push             edx                                           // 0x007e646a    52
                         mov              ecx, dword ptr [eax]                          // 0x007e646b    8b08
                         push             edi                                           // 0x007e646d    57
                         push             eax                                           // 0x007e646e    50
                         call             dword ptr [ecx + 0x64]                        // 0x007e646f    ff5164
                         test             eax, eax                                      // 0x007e6472    85c0
                         {disp8} je       _jmp_addr_0x007e647b                          // 0x007e6474    7405
                         mov              edi, 0x00000002                               // 0x007e6476    bf02000000
_jmp_addr_0x007e647b:    {disp8} mov      eax, dword ptr [esp + 0x18]                   // 0x007e647b    8b442418
                         xor.s            edx, edx                                      // 0x007e647f    33d2
                         {disp8} mov      dword ptr [esi + 0x10], eax                   // 0x007e6481    894610
                         {disp8} mov      ecx, dword ptr [esp + 0x2c]                   // 0x007e6484    8b4c242c
                         shl              eax, 3                                        // 0x007e6488    c1e003
                         div              dword ptr [esp + 0x5c]                        // 0x007e648b    f774245c
                         {disp8} mov      dword ptr [esi + 0x18], ecx                   // 0x007e648f    894e18
                         {disp8} mov      dword ptr [esi + 0x0c], eax                   // 0x007e6492    89460c
                         mov.s            eax, edi                                      // 0x007e6495    8bc7
                         pop              edi                                           // 0x007e6497    5f
                         pop              esi                                           // 0x007e6498    5e
                         add              esp, 0x7c                                     // 0x007e6499    83c47c
                         ret                                                            // 0x007e649c    c3
                         nop                                                            // 0x007e649d    90
                         nop                                                            // 0x007e649e    90
                         nop                                                            // 0x007e649f    90
_jmp_addr_0x007e64a0:    mov              eax, dword ptr [ecx]                          // 0x007e64a0    8b01
                         push             esi                                           // 0x007e64a2    56
                         xor.s            esi, esi                                      // 0x007e64a3    33f6
                         mov              ecx, dword ptr [eax]                          // 0x007e64a5    8b08
                         push             esi                                           // 0x007e64a7    56
                         push             eax                                           // 0x007e64a8    50
                         call             dword ptr [ecx + 0x80]                        // 0x007e64a9    ff9180000000
                         test             eax, eax                                      // 0x007e64af    85c0
                         mov              eax, 0x00000002                               // 0x007e64b1    b802000000
                         {disp8} jne      _jmp_addr_0x007e64ba                          // 0x007e64b6    7502
                         mov.s            eax, esi                                      // 0x007e64b8    8bc6
_jmp_addr_0x007e64ba:    pop              esi                                           // 0x007e64ba    5e
                         ret                                                            // 0x007e64bb    c3
                         nop                                                            // 0x007e64bc    90
                         nop                                                            // 0x007e64bd    90
                         nop                                                            // 0x007e64be    90
                         nop                                                            // 0x007e64bf    90
_jmp_addr_0x007e64c0:    {disp8} mov      eax, dword ptr [ecx + 0x2c]                   // 0x007e64c0    8b412c
                         test             eax, eax                                      // 0x007e64c3    85c0
                         {disp8} jne      _jmp_addr_0x007e64cd                          // 0x007e64c5    7506
                         mov              eax, 0x00000002                               // 0x007e64c7    b802000000
                         ret                                                            // 0x007e64cc    c3
_jmp_addr_0x007e64cd:    push             esi                                           // 0x007e64cd    56
                         xor.s            esi, esi                                      // 0x007e64ce    33f6
                         {disp32} mov     dword ptr [data_bytes + 0x4ca670], 0x00000064 // 0x007e64d0    c7057006e90064000000
                         mov              eax, dword ptr [ecx]                          // 0x007e64da    8b01
                         push             0x00e90670                                    // 0x007e64dc    687006e900
                         push             0x01000400                                    // 0x007e64e1    6800040001
                         mov              ecx, dword ptr [eax]                          // 0x007e64e6    8b08
                         push             esi                                           // 0x007e64e8    56
                         push             esi                                           // 0x007e64e9    56
                         push             esi                                           // 0x007e64ea    56
                         push             eax                                           // 0x007e64eb    50
                         call             dword ptr [ecx + 0x14]                        // 0x007e64ec    ff5114
                         test             eax, eax                                      // 0x007e64ef    85c0
                         {disp8} je       _jmp_addr_0x007e64f8                          // 0x007e64f1    7405
                         mov              esi, 0x00000002                               // 0x007e64f3    be02000000
_jmp_addr_0x007e64f8:    mov.s            eax, esi                                      // 0x007e64f8    8bc6
                         pop              esi                                           // 0x007e64fa    5e
                         ret                                                            // 0x007e64fb    c3
                         nop                                                            // 0x007e64fc    90
                         nop                                                            // 0x007e64fd    90
                         nop                                                            // 0x007e64fe    90
                         nop                                                            // 0x007e64ff    90
_jmp_addr_0x007e6500:    {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x007e6500    8b542404
                         push             esi                                           // 0x007e6504    56
                         {disp8} mov      dword ptr [ecx + 0x08], 0x00000001            // 0x007e6505    c7410801000000
                         {disp8} lea      eax, dword ptr [ecx + 0x04]                   // 0x007e650c    8d4104
                         mov              si, word ptr [edx]                            // 0x007e650f    668b32
                         mov              word ptr [eax], si                            // 0x007e6512    668930
                         {disp8} mov      dl, byte ptr [edx + 0x02]                     // 0x007e6515    8a5202
                         {disp8} mov      byte ptr [eax + 0x02], dl                     // 0x007e6518    885002
                         call             _jmp_addr_0x007e6530                          // 0x007e651b    e810000000
                         pop              esi                                           // 0x007e6520    5e
                         ret              0x0004                                        // 0x007e6521    c20400
                         nop                                                            // 0x007e6524    90
                         nop                                                            // 0x007e6525    90
                         nop                                                            // 0x007e6526    90
                         nop                                                            // 0x007e6527    90
                         nop                                                            // 0x007e6528    90
                         nop                                                            // 0x007e6529    90
                         nop                                                            // 0x007e652a    90
                         nop                                                            // 0x007e652b    90
                         nop                                                            // 0x007e652c    90
                         nop                                                            // 0x007e652d    90
                         nop                                                            // 0x007e652e    90
                         nop                                                            // 0x007e652f    90
_jmp_addr_0x007e6530:    {disp8} mov      eax, dword ptr [ecx + 0x2c]                   // 0x007e6530    8b412c
                         sub              esp, 0x08                                     // 0x007e6533    83ec08
                         push             esi                                           // 0x007e6536    56
                         xor.s            esi, esi                                      // 0x007e6537    33f6
                         cmp.s            eax, esi                                      // 0x007e6539    3bc6
                         {disp8} jne      _jmp_addr_0x007e6547                          // 0x007e653b    750a
                         mov              eax, 0x00000002                               // 0x007e653d    b802000000
                         pop              esi                                           // 0x007e6542    5e
                         add              esp, 0x08                                     // 0x007e6543    83c408
                         ret                                                            // 0x007e6546    c3
_jmp_addr_0x007e6547:    cmp              dword ptr [ecx + 0x08], esi                   // 0x007e6547    397108
                         {disp8} jne      _jmp_addr_0x007e6553                          // 0x007e654a    7507
                         xor.s            eax, eax                                      // 0x007e654c    33c0
                         pop              esi                                           // 0x007e654e    5e
                         add              esp, 0x08                                     // 0x007e654f    83c408
                         ret                                                            // 0x007e6552    c3
_jmp_addr_0x007e6553:    {disp8} lea      eax, dword ptr [ecx + 0x04]                   // 0x007e6553    8d4104
                         mov              ecx, dword ptr [ecx]                          // 0x007e6556    8b09
                         {disp8} mov      dword ptr [esp + 0x04], esi                   // 0x007e6558    89742404
                         mov              dx, word ptr [eax]                            // 0x007e655c    668b10
                         {disp8} mov      word ptr [esp + 0x04], dx                     // 0x007e655f    6689542404
                         {disp8} mov      al, byte ptr [eax + 0x02]                     // 0x007e6564    8a4002
                         {disp8} mov      byte ptr [esp + 0x06], al                     // 0x007e6567    88442406
                         {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x007e656b    8b542404
                         {disp8} mov      dword ptr [esp + 0x08], edx                   // 0x007e656f    89542408
                         mov              eax, dword ptr [ecx]                          // 0x007e6573    8b01
                         {disp8} lea      edx, dword ptr [esp + 0x04]                   // 0x007e6575    8d542404
                         push             edx                                           // 0x007e6579    52
                         push             0x8                                           // 0x007e657a    6a08
                         push             ecx                                           // 0x007e657c    51
                         call             dword ptr [eax + 0x74]                        // 0x007e657d    ff5074
                         test             eax, eax                                      // 0x007e6580    85c0
                         {disp8} je       _jmp_addr_0x007e6589                          // 0x007e6582    7405
                         mov              esi, 0x00000002                               // 0x007e6584    be02000000
_jmp_addr_0x007e6589:    mov.s            eax, esi                                      // 0x007e6589    8bc6
                         pop              esi                                           // 0x007e658b    5e
                         add              esp, 0x08                                     // 0x007e658c    83c408
                         ret                                                            // 0x007e658f    c3
_jmp_addr_0x007e6590:    sub              esp, 0x28                                     // 0x007e6590    83ec28
                         push             esi                                           // 0x007e6593    56
                         mov.s            esi, ecx                                      // 0x007e6594    8bf1
                         push             edi                                           // 0x007e6596    57
                         xor.s            edi, edi                                      // 0x007e6597    33ff
                         {disp8} mov      eax, dword ptr [esi + 0x2c]                   // 0x007e6599    8b462c
                         test             eax, eax                                      // 0x007e659c    85c0
                         {disp8} jne      _jmp_addr_0x007e65ab                          // 0x007e659e    750b
                         pop              edi                                           // 0x007e65a0    5f
                         mov              eax, 0x00000002                               // 0x007e65a1    b802000000
                         pop              esi                                           // 0x007e65a6    5e
                         add              esp, 0x28                                     // 0x007e65a7    83c428
                         ret                                                            // 0x007e65aa    c3
_jmp_addr_0x007e65ab:    push             ebx                                           // 0x007e65ab    53
                         push             ebp                                           // 0x007e65ac    55
                         mov.s            ecx, esi                                      // 0x007e65ad    8bce
                         call             _jmp_addr_0x007e64c0                          // 0x007e65af    e80cffffff
                         mov.s            ecx, esi                                      // 0x007e65b4    8bce
                         call             _jmp_addr_0x007e6450                          // 0x007e65b6    e895feffff
                         {disp8} mov      eax, dword ptr [esi + 0x20]                   // 0x007e65bb    8b4620
                         sub              eax, 0x00                                     // 0x007e65be    83e800
                         {disp8} je       _jmp_addr_0x007e6627                          // 0x007e65c1    7464
                         dec              eax                                           // 0x007e65c3    48
                         {disp8} jne      _jmp_addr_0x007e65f3                          // 0x007e65c4    752d
                         {disp8} mov      eax, dword ptr [esi + 0x0c]                   // 0x007e65c6    8b460c
                         {disp32} mov     bl, byte ptr [data_bytes + 0x4bf064]          // 0x007e65c9    8a1d6450e800
                         {disp8} mov      ecx, dword ptr [esi + 0x18]                   // 0x007e65cf    8b4e18
                         {disp8} mov      edx, dword ptr [esi + 0x24]                   // 0x007e65d2    8b5624
                         {disp8} mov      edi, dword ptr [esi + 0x1c]                   // 0x007e65d5    8b7e1c
                         cmp              bl, 0x10                                      // 0x007e65d8    80fb10
                         push             eax                                           // 0x007e65db    50
                         push             ecx                                           // 0x007e65dc    51
                         {disp8} jne      _jmp_addr_0x007e6604                          // 0x007e65dd    7525
                         push             0x0                                           // 0x007e65df    6a00
                         push             edx                                           // 0x007e65e1    52
                         push             edi                                           // 0x007e65e2    57
                         push             0x0                                           // 0x007e65e3    6a00
                         push             0x0                                           // 0x007e65e5    6a00
                         mov              ecx, 0x00e8586c                               // 0x007e65e7    b96c58e800
                         call             _jmp_addr_0x007eb870                          // 0x007e65ec    e87f520000
                         mov.s            edi, eax                                      // 0x007e65f1    8bf8
_jmp_addr_0x007e65f3:    mov.s            ecx, esi                                      // 0x007e65f3    8bce
                         call             _jmp_addr_0x007e64a0                          // 0x007e65f5    e8a6feffff
                         pop              ebp                                           // 0x007e65fa    5d
                         mov.s            eax, edi                                      // 0x007e65fb    8bc7
                         pop              ebx                                           // 0x007e65fd    5b
                         pop              edi                                           // 0x007e65fe    5f
                         pop              esi                                           // 0x007e65ff    5e
                         add              esp, 0x28                                     // 0x007e6600    83c428
                         ret                                                            // 0x007e6603    c3
_jmp_addr_0x007e6604:    push             edx                                           // 0x007e6604    52
                         push             edi                                           // 0x007e6605    57
                         push             0x0                                           // 0x007e6606    6a00
                         push             0x0                                           // 0x007e6608    6a00
                         mov              ecx, 0x00e8586c                               // 0x007e660a    b96c58e800
                         call             _jmp_addr_0x007eadb0                          // 0x007e660f    e89c470000
                         mov.s            ecx, esi                                      // 0x007e6614    8bce
                         mov.s            edi, eax                                      // 0x007e6616    8bf8
                         call             _jmp_addr_0x007e64a0                          // 0x007e6618    e883feffff
                         pop              ebp                                           // 0x007e661d    5d
                         mov.s            eax, edi                                      // 0x007e661e    8bc7
                         pop              ebx                                           // 0x007e6620    5b
                         pop              edi                                           // 0x007e6621    5f
                         pop              esi                                           // 0x007e6622    5e
                         add              esp, 0x28                                     // 0x007e6623    83c428
                         ret                                                            // 0x007e6626    c3
_jmp_addr_0x007e6627:    {disp8} mov      ecx, dword ptr [esi + 0x1c]                   // 0x007e6627    8b4e1c
                         push             0x0                                           // 0x007e662a    6a00
                         {disp8} lea      eax, dword ptr [esp + 0x2c]                   // 0x007e662c    8d44242c
                         push             0x0                                           // 0x007e6630    6a00
                         push             eax                                           // 0x007e6632    50
                         call             _jmp_addr_0x007f1170                          // 0x007e6633    e838ab0000
                         {disp8} mov      ecx, dword ptr [esi + 0x1c]                   // 0x007e6638    8b4e1c
                         {disp8} mov      edi, dword ptr [ecx + 0x04]                   // 0x007e663b    8b7904
                         dec              edi                                           // 0x007e663e    4f
                         {disp8} mov      dword ptr [esp + 0x10], edi                   // 0x007e663f    897c2410
_jmp_addr_0x007e6643:    {disp8} mov      ecx, dword ptr [esi + 0x1c]                   // 0x007e6643    8b4e1c
                         and              edi, 0x0000ffff                               // 0x007e6646    81e7ffff0000
                         {disp8} lea      edx, dword ptr [esp + 0x18]                   // 0x007e664c    8d542418
                         push             edi                                           // 0x007e6650    57
                         {disp8} lea      eax, dword ptr [esp + 0x24]                   // 0x007e6651    8d442424
                         push             edx                                           // 0x007e6655    52
                         push             eax                                           // 0x007e6656    50
                         call             _jmp_addr_0x007f12b0                          // 0x007e6657    e854ac0000
                         {disp8} mov      ecx, dword ptr [esp + 0x2c]                   // 0x007e665c    8b4c242c
                         {disp8} mov      edx, dword ptr [esp + 0x28]                   // 0x007e6660    8b542428
                         {disp8} mov      eax, dword ptr [esi + 0x24]                   // 0x007e6664    8b4624
                         {disp8} mov      ebp, dword ptr [esi + 0x0c]                   // 0x007e6667    8b6e0c
                         {disp8} mov      ebx, dword ptr [esi + 0x18]                   // 0x007e666a    8b5e18
                         {disp8} mov      dword ptr [esp + 0x1c], ecx                   // 0x007e666d    894c241c
                         {disp8} mov      ecx, dword ptr [esi + 0x1c]                   // 0x007e6671    8b4e1c
                         push             edi                                           // 0x007e6674    57
                         {disp8} mov      dword ptr [esp + 0x28], edx                   // 0x007e6675    89542428
                         {disp8} mov      dword ptr [esp + 0x18], eax                   // 0x007e6679    89442418
                         call             _jmp_addr_0x007f12a0                          // 0x007e667d    e81eac0000
                         {disp8} mov      ecx, dword ptr [esp + 0x18]                   // 0x007e6682    8b4c2418
                         {disp8} mov      edx, dword ptr [esp + 0x1c]                   // 0x007e6686    8b54241c
                         {disp8} mov      edi, dword ptr [esp + 0x24]                   // 0x007e668a    8b7c2424
                         sub.s            ecx, edx                                      // 0x007e668e    2bca
                         {disp8} mov      edx, dword ptr [esp + 0x20]                   // 0x007e6690    8b542420
                         push             ebp                                           // 0x007e6694    55
                         sub.s            edx, edi                                      // 0x007e6695    2bd7
                         cmp              byte ptr [data_bytes + 0x4bf064], 0x10        // 0x007e6697    803d6450e80010
                         push             ebx                                           // 0x007e669e    53
                         {disp8} jne      _jmp_addr_0x007e66b7                          // 0x007e669f    7516
                         {disp8} mov      edi, dword ptr [esp + 0x1c]                   // 0x007e66a1    8b7c241c
                         push             0x0                                           // 0x007e66a5    6a00
                         push             edi                                           // 0x007e66a7    57
                         push             eax                                           // 0x007e66a8    50
                         push             ecx                                           // 0x007e66a9    51
                         push             edx                                           // 0x007e66aa    52
                         mov              ecx, 0x00e8586c                               // 0x007e66ab    b96c58e800
                         call             _jmp_addr_0x007eb870                          // 0x007e66b0    e8bb510000
                         {disp8} jmp      _jmp_addr_0x007e66c9                          // 0x007e66b5    eb12
_jmp_addr_0x007e66b7:    {disp8} mov      edi, dword ptr [esp + 0x1c]                   // 0x007e66b7    8b7c241c
                         push             edi                                           // 0x007e66bb    57
                         push             eax                                           // 0x007e66bc    50
                         push             ecx                                           // 0x007e66bd    51
                         push             edx                                           // 0x007e66be    52
                         mov              ecx, 0x00e8586c                               // 0x007e66bf    b96c58e800
                         call             _jmp_addr_0x007eadb0                          // 0x007e66c4    e8e7460000
_jmp_addr_0x007e66c9:    {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007e66c9    8b442410
                         add              eax, 0x0000ffff                               // 0x007e66cd    05ffff0000
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x007e66d2    89442410
                         mov.s            edi, eax                                      // 0x007e66d6    8bf8
                         {disp32} jmp     _jmp_addr_0x007e6643                          // 0x007e66d8    e966ffffff
                         nop                                                            // 0x007e66dd    90
                         nop                                                            // 0x007e66de    90
                         nop                                                            // 0x007e66df    90
_jmp_addr_0x007e66e0:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e66e0    8b442404
                         {disp8} mov      edx, dword ptr [ecx + 0x24]                   // 0x007e66e4    8b5124
                         cmp.s            edx, eax                                      // 0x007e66e7    3bd0
                         {disp8} je       _jmp_addr_0x007e66f6                          // 0x007e66e9    740b
                         {disp8} mov      dword ptr [ecx + 0x24], eax                   // 0x007e66eb    894124
                         call             _jmp_addr_0x007e6590                          // 0x007e66ee    e89dfeffff
                         ret              0x0004                                        // 0x007e66f3    c20400
_jmp_addr_0x007e66f6:    xor.s            eax, eax                                      // 0x007e66f6    33c0
                         ret              0x0004                                        // 0x007e66f8    c20400
                         nop                                                            // 0x007e66fb    90
                         nop                                                            // 0x007e66fc    90
                         nop                                                            // 0x007e66fd    90
                         nop                                                            // 0x007e66fe    90
                         nop                                                            // 0x007e66ff    90
_jmp_addr_0x007e6700:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e6700    8b442404
                         {disp8} mov      dword ptr [ecx + 0x20], 0x00000001            // 0x007e6704    c7412001000000
                         {disp8} mov      dword ptr [ecx + 0x1c], eax                   // 0x007e670b    89411c
                         call             _jmp_addr_0x007e6590                          // 0x007e670e    e87dfeffff
                         ret              0x0008                                        // 0x007e6713    c20800
                         nop                                                            // 0x007e6716    90
                         nop                                                            // 0x007e6717    90
                         nop                                                            // 0x007e6718    90
                         nop                                                            // 0x007e6719    90
                         nop                                                            // 0x007e671a    90
                         nop                                                            // 0x007e671b    90
                         nop                                                            // 0x007e671c    90
                         nop                                                            // 0x007e671d    90
                         nop                                                            // 0x007e671e    90
                         nop                                                            // 0x007e671f    90
_jmp_addr_0x007e6720:    sub              esp, 0x18                                     // 0x007e6720    83ec18
                         {disp8} mov      eax, dword ptr [esp + 0x1c]                   // 0x007e6723    8b44241c
                         mov              edx, dword ptr [eax]                          // 0x007e6727    8b10
                         {disp8} mov      dword ptr [esp + 0x08], edx                   // 0x007e6729    89542408
                         {disp8} mov      edx, dword ptr [eax + 0x04]                   // 0x007e672d    8b5004
                         {disp8} mov      dword ptr [esp + 0x0c], edx                   // 0x007e6730    8954240c
                         {disp8} mov      edx, dword ptr [eax + 0x08]                   // 0x007e6734    8b5008
                         {disp8} mov      dword ptr [esp + 0x10], edx                   // 0x007e6737    89542410
                         {disp8} mov      eax, dword ptr [eax + 0x0c]                   // 0x007e673b    8b400c
                         {disp8} mov      dword ptr [esp + 0x14], eax                   // 0x007e673e    89442414
                         {disp8} mov      eax, dword ptr [esp + 0x24]                   // 0x007e6742    8b442424
                         cmp              eax, 0x01                                     // 0x007e6746    83f801
                         {disp8} jne      _jmp_addr_0x007e6797                          // 0x007e6749    754c
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4bf0a8]        // 0x007e674b    a1a850e800
                         {disp32} mov     edx, dword ptr [data_bytes + 0x4bf0ac]        // 0x007e6750    8b15ac50e800
                         push             esi                                           // 0x007e6756    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]                   // 0x007e6757    8b74240c
                         add.s            esi, eax                                      // 0x007e675b    03f0
                         {disp8} mov      dword ptr [esp + 0x04], eax                   // 0x007e675d    89442404
                         {disp8} mov      dword ptr [esp + 0x0c], esi                   // 0x007e6761    8974240c
                         {disp8} mov      esi, dword ptr [esp + 0x10]                   // 0x007e6765    8b742410
                         add.s            esi, edx                                      // 0x007e6769    03f2
                         {disp8} mov      dword ptr [esp + 0x04], eax                   // 0x007e676b    89442404
                         {disp8} mov      dword ptr [esp + 0x10], esi                   // 0x007e676f    89742410
                         {disp8} mov      esi, dword ptr [esp + 0x14]                   // 0x007e6773    8b742414
                         add.s            esi, eax                                      // 0x007e6777    03f0
                         {disp8} mov      eax, dword ptr [esp + 0x18]                   // 0x007e6779    8b442418
                         add.s            eax, edx                                      // 0x007e677d    03c2
                         {disp8} mov      dword ptr [esp + 0x08], edx                   // 0x007e677f    89542408
                         {disp8} mov      dword ptr [esp + 0x14], esi                   // 0x007e6783    89742414
                         {disp8} mov      dword ptr [esp + 0x18], eax                   // 0x007e6787    89442418
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4bf080]        // 0x007e678b    a18050e800
                         {disp8} mov      dword ptr [esp + 0x08], edx                   // 0x007e6790    89542408
                         pop              esi                                           // 0x007e6794    5e
                         {disp8} jmp      _jmp_addr_0x007e679c                          // 0x007e6795    eb05
_jmp_addr_0x007e6797:    {disp32} mov     eax, dword ptr [data_bytes + 0x4bf084]        // 0x007e6797    a18450e800
_jmp_addr_0x007e679c:    {disp8} mov      edx, dword ptr [esp + 0x20]                   // 0x007e679c    8b542420
                         push             0x0                                           // 0x007e67a0    6a00
                         push             0x1                                           // 0x007e67a2    6a01
                         push             eax                                           // 0x007e67a4    50
                         {disp8} lea      eax, dword ptr [esp + 0x14]                   // 0x007e67a5    8d442414
                         push             edx                                           // 0x007e67a9    52
                         push             eax                                           // 0x007e67aa    50
                         call             _jmp_addr_0x007e67e0                          // 0x007e67ab    e830000000
                         add              esp, 0x18                                     // 0x007e67b0    83c418
                         ret              0x000c                                        // 0x007e67b3    c20c00
                         nop                                                            // 0x007e67b6    90
                         nop                                                            // 0x007e67b7    90
                         nop                                                            // 0x007e67b8    90
                         nop                                                            // 0x007e67b9    90
                         nop                                                            // 0x007e67ba    90
                         nop                                                            // 0x007e67bb    90
                         nop                                                            // 0x007e67bc    90
                         nop                                                            // 0x007e67bd    90
                         nop                                                            // 0x007e67be    90
                         nop                                                            // 0x007e67bf    90
_jmp_addr_0x007e67c0:    push             esi                                           // 0x007e67c0    56
                         mov.s            esi, ecx                                      // 0x007e67c1    8bf1
                         call             _jmp_addr_0x007e6920                          // 0x007e67c3    e858010000
                         mov              esi, dword ptr [esi]                          // 0x007e67c8    8b36
                         push             esi                                           // 0x007e67ca    56
                         mov              eax, dword ptr [esi]                          // 0x007e67cb    8b06
                         call             dword ptr [eax + 8]                           // 0x007e67cd    ff5008
                         pop              esi                                           // 0x007e67d0    5e
                         ret                                                            // 0x007e67d1    c3
                         nop                                                            // 0x007e67d2    90
                         nop                                                            // 0x007e67d3    90
                         nop                                                            // 0x007e67d4    90
                         nop                                                            // 0x007e67d5    90
                         nop                                                            // 0x007e67d6    90
                         nop                                                            // 0x007e67d7    90
                         nop                                                            // 0x007e67d8    90
                         nop                                                            // 0x007e67d9    90
                         nop                                                            // 0x007e67da    90
                         nop                                                            // 0x007e67db    90
                         nop                                                            // 0x007e67dc    90
                         nop                                                            // 0x007e67dd    90
                         nop                                                            // 0x007e67de    90
                         nop                                                            // 0x007e67df    90
_jmp_addr_0x007e67e0:    sub              esp, 0x20                                     // 0x007e67e0    83ec20
                         push             edi                                           // 0x007e67e3    57
                         mov.s            edi, ecx                                      // 0x007e67e4    8bf9
                         {disp8} mov      eax, dword ptr [edi + 0x2c]                   // 0x007e67e6    8b472c
                         test             eax, eax                                      // 0x007e67e9    85c0
                         {disp8} jne      _jmp_addr_0x007e67f9                          // 0x007e67eb    750c
                         mov              eax, 0x00000002                               // 0x007e67ed    b802000000
                         pop              edi                                           // 0x007e67f2    5f
                         add              esp, 0x20                                     // 0x007e67f3    83c420
                         ret              0x0014                                        // 0x007e67f6    c21400
_jmp_addr_0x007e67f9:    push             ebx                                           // 0x007e67f9    53
                         push             esi                                           // 0x007e67fa    56
                         {disp8} mov      esi, dword ptr [esp + 0x30]                   // 0x007e67fb    8b742430
                         xor.s            ebx, ebx                                      // 0x007e67ff    33db
                         test             esi, esi                                      // 0x007e6801    85f6
                         {disp8} je       _jmp_addr_0x007e6811                          // 0x007e6803    740c
                         {disp8} lea      eax, dword ptr [esp + 0x1c]                   // 0x007e6805    8d44241c
                         mov.s            ecx, esi                                      // 0x007e6809    8bce
                         push             eax                                           // 0x007e680b    50
                         call             _jmp_addr_0x007ded80                          // 0x007e680c    e86f85ffff
_jmp_addr_0x007e6811:    {disp8} mov      eax, dword ptr [esp + 0x34]                   // 0x007e6811    8b442434
                         push             ebp                                           // 0x007e6815    55
                         test             esi, esi                                      // 0x007e6816    85f6
                         mov              ecx, dword ptr [eax]                          // 0x007e6818    8b08
                         {disp8} mov      edx, dword ptr [eax + 0x04]                   // 0x007e681a    8b5004
                         {disp8} mov      dword ptr [esp + 0x10], ecx                   // 0x007e681d    894c2410
                         {disp8} mov      dword ptr [esp + 0x14], edx                   // 0x007e6821    89542414
                         {disp8} je       _jmp_addr_0x007e6831                          // 0x007e6825    740a
                         {disp8} mov      eax, dword ptr [esi + 0x08]                   // 0x007e6827    8b4608
                         mov              ebp, dword ptr [esi]                          // 0x007e682a    8b2e
                         sub.s            eax, ebp                                      // 0x007e682c    2bc5
                         inc              eax                                           // 0x007e682e    40
                         {disp8} jmp      _jmp_addr_0x007e6837                          // 0x007e682f    eb06
_jmp_addr_0x007e6831:    xor.s            eax, eax                                      // 0x007e6831    33c0
                         {disp8} mov      ax, word ptr [edi + 0x14]                     // 0x007e6833    668b4714
_jmp_addr_0x007e6837:    add.s            ecx, eax                                      // 0x007e6837    03c8
                         test             esi, esi                                      // 0x007e6839    85f6
                         {disp8} mov      dword ptr [esp + 0x18], ecx                   // 0x007e683b    894c2418
                         {disp8} je       _jmp_addr_0x007e684c                          // 0x007e683f    740b
                         {disp8} mov      eax, dword ptr [esi + 0x0c]                   // 0x007e6841    8b460c
                         {disp8} mov      ebp, dword ptr [esi + 0x04]                   // 0x007e6844    8b6e04
                         sub.s            eax, ebp                                      // 0x007e6847    2bc5
                         inc              eax                                           // 0x007e6849    40
                         {disp8} jmp      _jmp_addr_0x007e6852                          // 0x007e684a    eb06
_jmp_addr_0x007e684c:    xor.s            eax, eax                                      // 0x007e684c    33c0
                         {disp8} mov      ax, word ptr [edi + 0x16]                     // 0x007e684e    668b4716
_jmp_addr_0x007e6852:    add.s            edx, eax                                      // 0x007e6852    03d0
                         {disp8} mov      eax, dword ptr [esp + 0x40]                   // 0x007e6854    8b442440
                         cmp              eax, 0x01                                     // 0x007e6858    83f801
                         {disp8} mov      dword ptr [esp + 0x1c], edx                   // 0x007e685b    8954241c
                         pop              ebp                                           // 0x007e685f    5d
                         {disp8} jne      _jmp_addr_0x007e688e                          // 0x007e6860    752c
                         {disp8} mov      edx, dword ptr [esp + 0x40]                   // 0x007e6862    8b542440
                         mov              eax, dword ptr [edi]                          // 0x007e6866    8b07
                         neg              edx                                           // 0x007e6868    f7da
                         sbb.s            edx, edx                                      // 0x007e686a    1bd2
                         mov              ecx, dword ptr [eax]                          // 0x007e686c    8b08
                         and              edx, 0x00008000                               // 0x007e686e    81e200800000
                         push             0x0                                           // 0x007e6874    6a00
                         add              edx, 0x01000000                               // 0x007e6876    81c200000001
                         neg              esi                                           // 0x007e687c    f7de
                         push             edx                                           // 0x007e687e    52
                         {disp8} lea      edx, dword ptr [esp + 0x24]                   // 0x007e687f    8d542424
                         sbb.s            esi, esi                                      // 0x007e6883    1bf6
                         and.s            esi, edx                                      // 0x007e6885    23f2
                         {disp8} mov      edx, dword ptr [esp + 0x40]                   // 0x007e6887    8b542440
                         push             esi                                           // 0x007e688b    56
                         {disp8} jmp      _jmp_addr_0x007e68b7                          // 0x007e688c    eb29
_jmp_addr_0x007e688e:    {disp8} mov      edx, dword ptr [edi + 0x08]                   // 0x007e688e    8b5708
                         {disp8} mov      eax, dword ptr [esp + 0x38]                   // 0x007e6891    8b442438
                         neg              edx                                           // 0x007e6895    f7da
                         sbb.s            edx, edx                                      // 0x007e6897    1bd2
                         mov              ecx, dword ptr [eax]                          // 0x007e6899    8b08
                         and              edx, 0x00008000                               // 0x007e689b    81e200800000
                         push             0x0                                           // 0x007e68a1    6a00
                         add              edx, 0x01000000                               // 0x007e68a3    81c200000001
                         neg              esi                                           // 0x007e68a9    f7de
                         push             edx                                           // 0x007e68ab    52
                         {disp8} lea      edx, dword ptr [esp + 0x24]                   // 0x007e68ac    8d542424
                         sbb.s            esi, esi                                      // 0x007e68b0    1bf6
                         and.s            esi, edx                                      // 0x007e68b2    23f2
                         mov              edx, dword ptr [edi]                          // 0x007e68b4    8b17
                         push             esi                                           // 0x007e68b6    56
_jmp_addr_0x007e68b7:    push             edx                                           // 0x007e68b7    52
                         {disp8} lea      edx, dword ptr [esp + 0x1c]                   // 0x007e68b8    8d54241c
                         push             edx                                           // 0x007e68bc    52
                         push             eax                                           // 0x007e68bd    50
                         call             dword ptr [ecx + 0x14]                        // 0x007e68be    ff5114
                         test             eax, eax                                      // 0x007e68c1    85c0
                         {disp8} je       _jmp_addr_0x007e68ca                          // 0x007e68c3    7405
                         mov              ebx, 0x00000002                               // 0x007e68c5    bb02000000
_jmp_addr_0x007e68ca:    mov.s            eax, ebx                                      // 0x007e68ca    8bc3
                         pop              esi                                           // 0x007e68cc    5e
                         pop              ebx                                           // 0x007e68cd    5b
                         pop              edi                                           // 0x007e68ce    5f
                         add              esp, 0x20                                     // 0x007e68cf    83c420
                         ret              0x0014                                        // 0x007e68d2    c21400
                         nop                                                            // 0x007e68d5    90
                         nop                                                            // 0x007e68d6    90
                         nop                                                            // 0x007e68d7    90
                         nop                                                            // 0x007e68d8    90
                         nop                                                            // 0x007e68d9    90
                         nop                                                            // 0x007e68da    90
                         nop                                                            // 0x007e68db    90
                         nop                                                            // 0x007e68dc    90
                         nop                                                            // 0x007e68dd    90
                         nop                                                            // 0x007e68de    90
                         nop                                                            // 0x007e68df    90
_jmp_addr_0x007e68e0:    {disp32} mov     edx, dword ptr [data_bytes + 0x4ca6d8]        // 0x007e68e0    8b15d806e900
                         test             edx, edx                                      // 0x007e68e6    85d2
                         {disp8} jne      _jmp_addr_0x007e68f8                          // 0x007e68e8    750e
                         {disp32} mov     dword ptr [data_bytes + 0x4ca6d8], ecx        // 0x007e68ea    890dd806e900
                         {disp32} inc     word ptr [data_bytes + 0x4ca6d4]              // 0x007e68f0    66ff05d406e900
                         ret                                                            // 0x007e68f7    c3
_jmp_addr_0x007e68f8:    {disp8} mov      eax, dword ptr [edx + 0x28]                   // 0x007e68f8    8b4228
                         test             eax, eax                                      // 0x007e68fb    85c0
                         {disp8} je       _jmp_addr_0x007e6908                          // 0x007e68fd    7409
_jmp_addr_0x007e68ff:    mov.s            edx, eax                                      // 0x007e68ff    8bd0
                         {disp8} mov      eax, dword ptr [edx + 0x28]                   // 0x007e6901    8b4228
                         test             eax, eax                                      // 0x007e6904    85c0
                         {disp8} jne      _jmp_addr_0x007e68ff                          // 0x007e6906    75f7
_jmp_addr_0x007e6908:    {disp8} mov      dword ptr [edx + 0x28], ecx                   // 0x007e6908    894a28
                         {disp32} inc     word ptr [data_bytes + 0x4ca6d4]              // 0x007e690b    66ff05d406e900
                         ret                                                            // 0x007e6912    c3
                         nop                                                            // 0x007e6913    90
                         nop                                                            // 0x007e6914    90
                         nop                                                            // 0x007e6915    90
                         nop                                                            // 0x007e6916    90
                         nop                                                            // 0x007e6917    90
                         nop                                                            // 0x007e6918    90
                         nop                                                            // 0x007e6919    90
                         nop                                                            // 0x007e691a    90
                         nop                                                            // 0x007e691b    90
                         nop                                                            // 0x007e691c    90
                         nop                                                            // 0x007e691d    90
                         nop                                                            // 0x007e691e    90
                         nop                                                            // 0x007e691f    90
_jmp_addr_0x007e6920:    {disp32} mov     edx, dword ptr [data_bytes + 0x4ca6d8]        // 0x007e6920    8b15d806e900
                         cmp.s            edx, ecx                                      // 0x007e6926    3bd1
                         {disp8} jne      _jmp_addr_0x007e693a                          // 0x007e6928    7510
                         {disp8} mov      eax, dword ptr [ecx + 0x28]                   // 0x007e692a    8b4128
                         dec              word ptr [data_bytes + 0x4ca6d4]              // 0x007e692d    66ff0dd406e900
                         {disp32} mov     dword ptr [data_bytes + 0x4ca6d8], eax        // 0x007e6934    a3d806e900
                         ret                                                            // 0x007e6939    c3
_jmp_addr_0x007e693a:    {disp8} mov      eax, dword ptr [edx + 0x28]                   // 0x007e693a    8b4228
                         cmp.s            eax, ecx                                      // 0x007e693d    3bc1
                         {disp8} je       _jmp_addr_0x007e694a                          // 0x007e693f    7409
_jmp_addr_0x007e6941:    mov.s            edx, eax                                      // 0x007e6941    8bd0
                         {disp8} mov      eax, dword ptr [edx + 0x28]                   // 0x007e6943    8b4228
                         cmp.s            eax, ecx                                      // 0x007e6946    3bc1
                         {disp8} jne      _jmp_addr_0x007e6941                          // 0x007e6948    75f7
_jmp_addr_0x007e694a:    {disp8} mov      ecx, dword ptr [ecx + 0x28]                   // 0x007e694a    8b4928
                         {disp8} mov      dword ptr [edx + 0x28], ecx                   // 0x007e694d    894a28
                         dec              word ptr [data_bytes + 0x4ca6d4]              // 0x007e6950    66ff0dd406e900
                         ret                                                            // 0x007e6957    c3
                         nop                                                            // 0x007e6958    90
                         nop                                                            // 0x007e6959    90
                         nop                                                            // 0x007e695a    90
                         nop                                                            // 0x007e695b    90
                         nop                                                            // 0x007e695c    90
                         nop                                                            // 0x007e695d    90
                         nop                                                            // 0x007e695e    90
                         nop                                                            // 0x007e695f    90
_jmp_addr_0x007e6960:    push             esi                                           // 0x007e6960    56
                         {disp32} mov     esi, dword ptr [data_bytes + 0x4ca6d8]        // 0x007e6961    8b35d806e900
                         push             edi                                           // 0x007e6967    57
                         xor.s            edi, edi                                      // 0x007e6968    33ff
                         test             esi, esi                                      // 0x007e696a    85f6
                         {disp8} je       _jmp_addr_0x007e69a5                          // 0x007e696c    7437
                         push             ebx                                           // 0x007e696e    53
                         {disp8} mov      ebx, dword ptr [esp + 0x10]                   // 0x007e696f    8b5c2410
_jmp_addr_0x007e6973:    test             ebx, ebx                                      // 0x007e6973    85db
                         {disp8} je       _jmp_addr_0x007e6980                          // 0x007e6975    7409
                         mov.s            ecx, esi                                      // 0x007e6977    8bce
                         call             _jmp_addr_0x007e6350                          // 0x007e6979    e8d2f9ffff
                         {disp8} jmp      _jmp_addr_0x007e6998                          // 0x007e697e    eb18
_jmp_addr_0x007e6980:    mov              eax, dword ptr [esi]                          // 0x007e6980    8b06
                         push             eax                                           // 0x007e6982    50
                         mov              ecx, dword ptr [eax]                          // 0x007e6983    8b08
                         call             dword ptr [ecx + 0x6c]                        // 0x007e6985    ff516c
                         test             eax, eax                                      // 0x007e6988    85c0
                         {disp8} je       _jmp_addr_0x007e6991                          // 0x007e698a    7405
                         mov              edi, 0x00000002                               // 0x007e698c    bf02000000
_jmp_addr_0x007e6991:    mov.s            ecx, esi                                      // 0x007e6991    8bce
                         call             _jmp_addr_0x007e63b0                          // 0x007e6993    e818faffff
_jmp_addr_0x007e6998:    {disp8} mov      esi, dword ptr [esi + 0x28]                   // 0x007e6998    8b7628
                         test             esi, esi                                      // 0x007e699b    85f6
                         {disp8} jne      _jmp_addr_0x007e6973                          // 0x007e699d    75d4
                         mov.s            eax, edi                                      // 0x007e699f    8bc7
                         pop              ebx                                           // 0x007e69a1    5b
                         pop              edi                                           // 0x007e69a2    5f
                         pop              esi                                           // 0x007e69a3    5e
                         ret                                                            // 0x007e69a4    c3
_jmp_addr_0x007e69a5:    mov.s            eax, edi                                      // 0x007e69a5    8bc7
                         pop              edi                                           // 0x007e69a7    5f
                         pop              esi                                           // 0x007e69a8    5e
                         ret                                                            // 0x007e69a9    c3
                         nop                                                            // 0x007e69aa    90
                         nop                                                            // 0x007e69ab    90
                         nop                                                            // 0x007e69ac    90
                         nop                                                            // 0x007e69ad    90
                         nop                                                            // 0x007e69ae    90
                         nop                                                            // 0x007e69af    90
_jmp_addr_0x007e69b0:    {disp32} mov     eax, dword ptr [data_bytes + 0x4ca6d8]        // 0x007e69b0    a1d806e900
                         xor.s            ecx, ecx                                      // 0x007e69b5    33c9
                         cmp.s            eax, ecx                                      // 0x007e69b7    3bc1
                         {disp8} je       _jmp_addr_0x007e69c5                          // 0x007e69b9    740a
_jmp_addr_0x007e69bb:    {disp8} mov      dword ptr [eax + 0x2c], ecx                   // 0x007e69bb    89482c
                         {disp8} mov      eax, dword ptr [eax + 0x28]                   // 0x007e69be    8b4028
                         cmp.s            eax, ecx                                      // 0x007e69c1    3bc1
                         {disp8} jne      _jmp_addr_0x007e69bb                          // 0x007e69c3    75f6
_jmp_addr_0x007e69c5:    ret                                                            // 0x007e69c5    c3
                         nop                                                            // 0x007e69c6    90
                         nop                                                            // 0x007e69c7    90
                         nop                                                            // 0x007e69c8    90
                         nop                                                            // 0x007e69c9    90
                         nop                                                            // 0x007e69ca    90
                         nop                                                            // 0x007e69cb    90
                         nop                                                            // 0x007e69cc    90
                         nop                                                            // 0x007e69cd    90
                         nop                                                            // 0x007e69ce    90
                         nop                                                            // 0x007e69cf    90
_jmp_addr_0x007e69d0:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e69d0    8b442404
                         push             eax                                           // 0x007e69d4    50
                         call             _malloc                                       // 0x007e69d5    e872fcfdff
                         add              esp, 0x04                                     // 0x007e69da    83c404
                         ret              0x0004                                        // 0x007e69dd    c20400
                         push             esi                                           // 0x007e69e0    56
                         push             edi                                           // 0x007e69e1    57
                         {disp8} mov      edi, dword ptr [esp + 0x0c]                   // 0x007e69e2    8b7c240c
                         push             edi                                           // 0x007e69e6    57
                         call             _malloc                                       // 0x007e69e7    e860fcfdff
                         mov.s            esi, eax                                      // 0x007e69ec    8bf0
                         add              esp, 0x04                                     // 0x007e69ee    83c404
                         test             esi, esi                                      // 0x007e69f1    85f6
                         {disp8} je       _jmp_addr_0x007e6a20                          // 0x007e69f3    742b
                         {disp8} mov      al, byte ptr [esp + 0x10]                     // 0x007e69f5    8a442410
                         push             ebx                                           // 0x007e69f9    53
                         mov.s            bl, al                                        // 0x007e69fa    8ad8
                         mov.s            ecx, edi                                      // 0x007e69fc    8bcf
                         mov.s            bh, bl                                        // 0x007e69fe    8afb
                         mov.s            edx, ecx                                      // 0x007e6a00    8bd1
                         mov.s            eax, ebx                                      // 0x007e6a02    8bc3
                         mov.s            edi, esi                                      // 0x007e6a04    8bfe
                         shl              eax, 0x10                                     // 0x007e6a06    c1e010
                         mov.s            ax, bx                                        // 0x007e6a09    668bc3
                         pop              ebx                                           // 0x007e6a0c    5b
                         shr              ecx, 2                                        // 0x007e6a0d    c1e902
                         rep stosd                                                      // 0x007e6a10    f3ab
                         mov.s            ecx, edx                                      // 0x007e6a12    8bca
                         and              ecx, 0x03                                     // 0x007e6a14    83e103
                         rep stosb                                                      // 0x007e6a17    f3aa
                         mov.s            eax, esi                                      // 0x007e6a19    8bc6
                         pop              edi                                           // 0x007e6a1b    5f
                         pop              esi                                           // 0x007e6a1c    5e
                         ret              0x0008                                        // 0x007e6a1d    c20800
_jmp_addr_0x007e6a20:    mov.s            eax, esi                                      // 0x007e6a20    8bc6
                         pop              edi                                           // 0x007e6a22    5f
                         pop              esi                                           // 0x007e6a23    5e
                         ret              0x0008                                        // 0x007e6a24    c20800
                         nop                                                            // 0x007e6a27    90
                         nop                                                            // 0x007e6a28    90
                         nop                                                            // 0x007e6a29    90
                         nop                                                            // 0x007e6a2a    90
                         nop                                                            // 0x007e6a2b    90
                         nop                                                            // 0x007e6a2c    90
                         nop                                                            // 0x007e6a2d    90
                         nop                                                            // 0x007e6a2e    90
                         nop                                                            // 0x007e6a2f    90
_jmp_addr_0x007e6a30:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e6a30    8b442404
                         push             eax                                           // 0x007e6a34    50
                         call             _free                                         // 0x007e6a35    e84cfdfdff
                         add              esp, 0x04                                     // 0x007e6a3a    83c404
                         xor.s            eax, eax                                      // 0x007e6a3d    33c0
                         ret              0x0004                                        // 0x007e6a3f    c20400
                         nop                                                            // 0x007e6a42    90
                         nop                                                            // 0x007e6a43    90
                         nop                                                            // 0x007e6a44    90
                         nop                                                            // 0x007e6a45    90
                         nop                                                            // 0x007e6a46    90
                         nop                                                            // 0x007e6a47    90
                         nop                                                            // 0x007e6a48    90
                         nop                                                            // 0x007e6a49    90
                         nop                                                            // 0x007e6a4a    90
                         nop                                                            // 0x007e6a4b    90
                         nop                                                            // 0x007e6a4c    90
                         nop                                                            // 0x007e6a4d    90
                         nop                                                            // 0x007e6a4e    90
                         nop                                                            // 0x007e6a4f    90
                         mov              eax, dword ptr [ecx]                          // 0x007e6a50    8b01
                         test             eax, eax                                      // 0x007e6a52    85c0
                         {disp8} je       _jmp_addr_0x007e6a77                          // 0x007e6a54    7421
                         push             esi                                           // 0x007e6a56    56
_jmp_addr_0x007e6a57:    xor.s            edx, edx                                      // 0x007e6a57    33d2
                         {disp8} mov      dl, byte ptr [ecx + 0x04]                     // 0x007e6a59    8a5104
                         add              ecx, 0x8                                      // 0x007e6a5c    83c108
                         mov.s            esi, edx                                      // 0x007e6a5f    8bf2
                         shl              esi, 5                                        // 0x007e6a61    c1e605
                         add.s            esi, edx                                      // 0x007e6a64    03f2
                         {disp32} mov     edx, dword ptr [esi * 0x8 + 0x00e85968]       // 0x007e6a66    8b14f56859e800
                         mov              dword ptr [eax], edx                          // 0x007e6a6d    8910
                         mov              eax, dword ptr [ecx]                          // 0x007e6a6f    8b01
                         test             eax, eax                                      // 0x007e6a71    85c0
                         {disp8} jne      _jmp_addr_0x007e6a57                          // 0x007e6a73    75e2
                         pop              esi                                           // 0x007e6a75    5e
                         ret                                                            // 0x007e6a76    c3
_jmp_addr_0x007e6a77:    xor.s            eax, eax                                      // 0x007e6a77    33c0
                         ret                                                            // 0x007e6a79    c3
                         nop                                                            // 0x007e6a7a    90
                         nop                                                            // 0x007e6a7b    90
                         nop                                                            // 0x007e6a7c    90
                         nop                                                            // 0x007e6a7d    90
                         nop                                                            // 0x007e6a7e    90
                         nop                                                            // 0x007e6a7f    90
_jmp_addr_0x007e6a80:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e6a80    8b442404
                         push             0x0                                           // 0x007e6a84    6a00
                         push             0x0                                           // 0x007e6a86    6a00
                         push             0x000003ff                                    // 0x007e6a88    68ff030000
                         push             0x00e91adc                                    // 0x007e6a8d    68dc1ae900
                         push             -0x1                                          // 0x007e6a92    6aff
                         push             eax                                           // 0x007e6a94    50
                         push             0x0                                           // 0x007e6a95    6a00
                         push             0x0                                           // 0x007e6a97    6a00
                         call             dword ptr [__imp__WideCharToMultiByte@32]      // 0x007e6a99    ff152c928a00
                         {disp32} mov     byte ptr [eax + 0x00e91adc], 0x00             // 0x007e6a9f    c680dc1ae90000
                         mov              eax, 0x00e91adc                               // 0x007e6aa6    b8dc1ae900
                         ret                                                            // 0x007e6aab    c3
                         nop                                                            // 0x007e6aac    90
                         nop                                                            // 0x007e6aad    90
                         nop                                                            // 0x007e6aae    90
                         nop                                                            // 0x007e6aaf    90
_jmp_addr_0x007e6ab0:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e6ab0    8b442404
                         push             0x0                                           // 0x007e6ab4    6a00
                         push             0x0                                           // 0x007e6ab6    6a00
                         push             0x000003ff                                    // 0x007e6ab8    68ff030000
                         push             0x00e916dc                                    // 0x007e6abd    68dc16e900
                         push             -0x1                                          // 0x007e6ac2    6aff
                         push             eax                                           // 0x007e6ac4    50
                         push             0x0                                           // 0x007e6ac5    6a00
                         push             0x0                                           // 0x007e6ac7    6a00
                         call             dword ptr [__imp__WideCharToMultiByte@32]      // 0x007e6ac9    ff152c928a00
                         {disp32} mov     byte ptr [eax + 0x00e916dc], 0x00             // 0x007e6acf    c680dc16e90000
                         mov              eax, 0x00e916dc                               // 0x007e6ad6    b8dc16e900
                         ret                                                            // 0x007e6adb    c3
                         nop                                                            // 0x007e6adc    90
                         nop                                                            // 0x007e6add    90
                         nop                                                            // 0x007e6ade    90
                         nop                                                            // 0x007e6adf    90
_jmp_addr_0x007e6ae0:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e6ae0    8b442404
                         push             0x000003ff                                    // 0x007e6ae4    68ff030000
                         push             0x00e90edc                                    // 0x007e6ae9    68dc0ee900
                         push             -0x1                                          // 0x007e6aee    6aff
                         push             eax                                           // 0x007e6af0    50
                         push             0x0                                           // 0x007e6af1    6a00
                         push             0x0                                           // 0x007e6af3    6a00
                         call             dword ptr [__imp__MultiByteToWideChar@24]      // 0x007e6af5    ff153c918a00
                         {disp32} mov     word ptr [eax * 0x2 + 0x00e90edc], 0x0000     // 0x007e6afb    66c70445dc0ee9000000
                         mov              eax, 0x00e90edc                               // 0x007e6b05    b8dc0ee900
                         ret                                                            // 0x007e6b0a    c3
                         nop                                                            // 0x007e6b0b    90
                         nop                                                            // 0x007e6b0c    90
                         nop                                                            // 0x007e6b0d    90
                         nop                                                            // 0x007e6b0e    90
                         nop                                                            // 0x007e6b0f    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e6b10    8b442404
                         push             0x000003ff                                    // 0x007e6b14    68ff030000
                         push             0x00e906dc                                    // 0x007e6b19    68dc06e900
                         push             -0x1                                          // 0x007e6b1e    6aff
                         push             eax                                           // 0x007e6b20    50
                         push             0x0                                           // 0x007e6b21    6a00
                         push             0x0                                           // 0x007e6b23    6a00
                         call             dword ptr [__imp__MultiByteToWideChar@24]      // 0x007e6b25    ff153c918a00
                         {disp32} mov     word ptr [eax * 0x2 + 0x00e906dc], 0x0000     // 0x007e6b2b    66c70445dc06e9000000
                         mov              eax, 0x00e906dc                               // 0x007e6b35    b8dc06e900
                         ret                                                            // 0x007e6b3a    c3
                         nop                                                            // 0x007e6b3b    90
                         nop                                                            // 0x007e6b3c    90
                         nop                                                            // 0x007e6b3d    90
                         nop                                                            // 0x007e6b3e    90
                         nop                                                            // 0x007e6b3f    90
_jmp_addr_0x007e6b40:    push             ecx                                           // 0x007e6b40    51
                         {disp8} lea      eax, dword ptr [esp + 0x00]                   // 0x007e6b41    8d442400
                         {disp8} lea      ecx, dword ptr [esp + 0x08]                   // 0x007e6b45    8d4c2408
                         push             eax                                           // 0x007e6b49    50
                         push             0x2                                           // 0x007e6b4a    6a02
                         push             ecx                                           // 0x007e6b4c    51
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007e6b4d    8b4c2414
                         {disp8} mov      dword ptr [esp + 0x0c], 0x00000000            // 0x007e6b51    c744240c00000000
                         call             @Read__8LHOSFileFPvUlPUl@20                   // 0x007e6b59    e8825dfdff
                         pop              ecx                                           // 0x007e6b5e    59
                         ret              0x0004                                        // 0x007e6b5f    c20400
                         nop                                                            // 0x007e6b62    90
                         nop                                                            // 0x007e6b63    90
                         nop                                                            // 0x007e6b64    90
                         nop                                                            // 0x007e6b65    90
                         nop                                                            // 0x007e6b66    90
                         nop                                                            // 0x007e6b67    90
                         nop                                                            // 0x007e6b68    90
                         nop                                                            // 0x007e6b69    90
                         nop                                                            // 0x007e6b6a    90
                         nop                                                            // 0x007e6b6b    90
                         nop                                                            // 0x007e6b6c    90
                         nop                                                            // 0x007e6b6d    90
                         nop                                                            // 0x007e6b6e    90
                         nop                                                            // 0x007e6b6f    90
                         push             -0x1                                          // 0x007e6b70    6aff
                         push             0x008a7aeb                                    // 0x007e6b72    68eb7a8a00
                         {disp32} mov     eax, fs:[0x0]                                 // 0x007e6b77    64a100000000
                         push             eax                                           // 0x007e6b7d    50
                         {disp32} mov     fs:[0x0], esp                                 // 0x007e6b7e    64892500000000
                         sub              esp, 0x0000018c                               // 0x007e6b85    81ec8c010000
                         push             0x0                                           // 0x007e6b8b    6a00
                         push             0x0                                           // 0x007e6b8d    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x08]                   // 0x007e6b8f    8d4c2408
                         call             _jmp_addr_0x007e7380                          // 0x007e6b93    e8e8070000
                         push             0x0                                           // 0x007e6b98    6a00
                         push             0x0                                           // 0x007e6b9a    6a00
                         push             0x0                                           // 0x007e6b9c    6a00
                         push             0x0                                           // 0x007e6b9e    6a00
                         push             0x0                                           // 0x007e6ba0    6a00
                         push             0x0                                           // 0x007e6ba2    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x18]                   // 0x007e6ba4    8d4c2418
                         call             _jmp_addr_0x007e7320                          // 0x007e6ba8    e873070000
                         push             0x0                                           // 0x007e6bad    6a00
                         push             0x0                                           // 0x007e6baf    6a00
                         push             0x0                                           // 0x007e6bb1    6a00
                         push             0x0                                           // 0x007e6bb3    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x007e6bb5    8d4c2410
                         call             @Load__12LHScriptX_c_FPcP19LHScriptCommandX_c_PFlP16LHScriptPramX_c__9LH_RETURNPl@24                          // 0x007e6bb9    e802070000
                         push             0x0                                           // 0x007e6bbe    6a00
                         push             0x0                                           // 0x007e6bc0    6a00
                         push             0x0                                           // 0x007e6bc2    6a00
                         push             0x0                                           // 0x007e6bc4    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x007e6bc6    8d4c2410
                         call             _jmp_addr_0x007e7260                          // 0x007e6bca    e891060000
                         push             0x0                                           // 0x007e6bcf    6a00
                         push             0x0                                           // 0x007e6bd1    6a00
                         push             0x0                                           // 0x007e6bd3    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]                   // 0x007e6bd5    8d4c240c
                         call             _jmp_addr_0x007e73d0                          // 0x007e6bd9    e8f2070000
                         {disp32} lea     ecx, dword ptr [esp + 0x00000080]             // 0x007e6bde    8d8c2480000000
                         call             ??0LHReleasedOSFile@@QAE@XZ                   // 0x007e6be5    e826010000
                         {disp32} lea     eax, dword ptr [esp + 0x00000080]             // 0x007e6bea    8d842480000000
                         push             0x0                                           // 0x007e6bf1    6a00
                         push             eax                                           // 0x007e6bf3    50
                         {disp8} lea      ecx, dword ptr [esp + 0x08]                   // 0x007e6bf4    8d4c2408
                         {disp32} mov     dword ptr [esp + 0x0000019c], 0x00000000      // 0x007e6bf8    c784249c01000000000000
                         call             @LoadOneLine__12LHScriptX_c_FR16LHReleasedOSFilePc@16                          // 0x007e6c03    e8f8070000
                         push             0x0                                           // 0x007e6c08    6a00
                         {disp32} lea     ecx, dword ptr [esp + 0x00000084]             // 0x007e6c0a    8d8c2484000000
                         push             0x0                                           // 0x007e6c11    6a00
                         push             ecx                                           // 0x007e6c13    51
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]                   // 0x007e6c14    8d4c240c
                         call             _jmp_addr_0x007e74c0                          // 0x007e6c18    e8a3080000
                         {disp8} lea      ecx, dword ptr [esp + 0x00]                   // 0x007e6c1d    8d4c2400
                         call             _jmp_addr_0x007e7530                          // 0x007e6c21    e80a090000
                         push             0x0                                           // 0x007e6c26    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x04]                   // 0x007e6c28    8d4c2404
                         call             @ScanLine__12LHScriptX_c_FPc@12               // 0x007e6c2c    e80f090000
                         push             0x0                                           // 0x007e6c31    6a00
                         push             0x0                                           // 0x007e6c33    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x38]                   // 0x007e6c35    8d4c2438
                         call             _jmp_addr_0x007e7a20                          // 0x007e6c39    e8e20d0000
                         push             0x0                                           // 0x007e6c3e    6a00
                         push             0x0                                           // 0x007e6c40    6a00
                         push             0x0                                           // 0x007e6c42    6a00
                         push             0x0                                           // 0x007e6c44    6a00
                         push             0x0                                           // 0x007e6c46    6a00
                         push             0x0                                           // 0x007e6c48    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x48]                   // 0x007e6c4a    8d4c2448
                         call             _jmp_addr_0x007e79c0                          // 0x007e6c4e    e86d0d0000
                         push             0x0                                           // 0x007e6c53    6a00
                         push             0x0                                           // 0x007e6c55    6a00
                         push             0x0                                           // 0x007e6c57    6a00
                         push             0x0                                           // 0x007e6c59    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x40]                   // 0x007e6c5b    8d4c2440
                         call             _jmp_addr_0x007e7960                          // 0x007e6c5f    e8fc0c0000
                         push             0x0                                           // 0x007e6c64    6a00
                         push             0x0                                           // 0x007e6c66    6a00
                         push             0x0                                           // 0x007e6c68    6a00
                         push             0x0                                           // 0x007e6c6a    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x40]                   // 0x007e6c6c    8d4c2440
                         call             _jmp_addr_0x007e7900                          // 0x007e6c70    e88b0c0000
                         push             0x0                                           // 0x007e6c75    6a00
                         push             0x0                                           // 0x007e6c77    6a00
                         push             0x0                                           // 0x007e6c79    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x3c]                   // 0x007e6c7b    8d4c243c
                         call             _jmp_addr_0x007e7a70                          // 0x007e6c7f    e8ec0d0000
                         {disp32} lea     edx, dword ptr [esp + 0x00000080]             // 0x007e6c84    8d942480000000
                         push             0x0                                           // 0x007e6c8b    6a00
                         push             edx                                           // 0x007e6c8d    52
                         {disp8} lea      ecx, dword ptr [esp + 0x38]                   // 0x007e6c8e    8d4c2438
                         call             _jmp_addr_0x007e7aa0                          // 0x007e6c92    e8090e0000
                         push             0x0                                           // 0x007e6c97    6a00
                         {disp32} lea     eax, dword ptr [esp + 0x00000084]             // 0x007e6c99    8d842484000000
                         push             0x0                                           // 0x007e6ca0    6a00
                         push             eax                                           // 0x007e6ca2    50
                         {disp8} lea      ecx, dword ptr [esp + 0x3c]                   // 0x007e6ca3    8d4c243c
                         call             _jmp_addr_0x007e7b70                          // 0x007e6ca7    e8c40e0000
                         {disp8} lea      ecx, dword ptr [esp + 0x30]                   // 0x007e6cac    8d4c2430
                         call             _jmp_addr_0x007e7be0                          // 0x007e6cb0    e82b0f0000
                         push             0x0                                           // 0x007e6cb5    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x34]                   // 0x007e6cb7    8d4c2434
                         call             _jmp_addr_0x007e7bf0                          // 0x007e6cbb    e8300f0000
                         push             0x0                                           // 0x007e6cc0    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x64]                   // 0x007e6cc2    8d4c2464
                         call             _jmp_addr_0x007e7fb0                          // 0x007e6cc6    e8e5120000
                         push             0x0                                           // 0x007e6ccb    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x74]                   // 0x007e6ccd    8d4c2474
                         call             _jmp_addr_0x007e8090                          // 0x007e6cd1    e8ba130000
                         {disp32} lea     ecx, dword ptr [esp + 0x00000080]             // 0x007e6cd6    8d8c2480000000
                         {disp32} mov     dword ptr [esp + 0x00000194], 0xffffffff      // 0x007e6cdd    c7842494010000ffffffff
                         call             _jmp_addr_0x007bcad0                          // 0x007e6ce8    e8e35dfdff
                         {disp32} mov     ecx, dword ptr [esp + 0x0000018c]             // 0x007e6ced    8b8c248c010000
                         {disp32} mov     fs:[0x0], ecx                                 // 0x007e6cf4    64890d00000000
                         add              esp, 0x00000198                               // 0x007e6cfb    81c498010000
                         ret                                                            // 0x007e6d01    c3
                         nop                                                            // 0x007e6d02    90
                         nop                                                            // 0x007e6d03    90
                         nop                                                            // 0x007e6d04    90
                         nop                                                            // 0x007e6d05    90
                         nop                                                            // 0x007e6d06    90
                         nop                                                            // 0x007e6d07    90
                         nop                                                            // 0x007e6d08    90
                         nop                                                            // 0x007e6d09    90
                         nop                                                            // 0x007e6d0a    90
                         nop                                                            // 0x007e6d0b    90
                         nop                                                            // 0x007e6d0c    90
                         nop                                                            // 0x007e6d0d    90
                         nop                                                            // 0x007e6d0e    90
                         nop                                                            // 0x007e6d0f    90
??0LHReleasedOSFile@@QAE@XZ:
                                  push             esi                                           // 0x007e6d10    56
                         mov.s            esi, ecx                                      // 0x007e6d11    8bf1
                         call             ??0LHOSFile@@QAE@XZ                           // 0x007e6d13    e83859fdff
                         mov              dword ptr [esi], 0x008c4d00                   // 0x007e6d18    c706004d8c00
                         mov.s            eax, esi                                      // 0x007e6d1e    8bc6
                         pop              esi                                           // 0x007e6d20    5e
                         ret                                                            // 0x007e6d21    c3
                         nop                                                            // 0x007e6d22    90
                         nop                                                            // 0x007e6d23    90
                         nop                                                            // 0x007e6d24    90
                         nop                                                            // 0x007e6d25    90
                         nop                                                            // 0x007e6d26    90
                         nop                                                            // 0x007e6d27    90
                         nop                                                            // 0x007e6d28    90
                         nop                                                            // 0x007e6d29    90
                         nop                                                            // 0x007e6d2a    90
                         nop                                                            // 0x007e6d2b    90
                         nop                                                            // 0x007e6d2c    90
                         nop                                                            // 0x007e6d2d    90
                         nop                                                            // 0x007e6d2e    90
                         nop                                                            // 0x007e6d2f    90
_jmp_addr_0x007e6d30:    push             ebx                                           // 0x007e6d30    53
                         push             esi                                           // 0x007e6d31    56
                         push             edi                                           // 0x007e6d32    57
                         {disp8} mov      edi, dword ptr [esp + 0x14]                   // 0x007e6d33    8b7c2414
                         or               ecx, 0xffffffff                               // 0x007e6d37    83c9ff
                         xor.s            eax, eax                                      // 0x007e6d3a    33c0
                         repne scasb                                                    // 0x007e6d3c    f2ae
                         not              ecx                                           // 0x007e6d3e    f7d1
                         sub.s            edi, ecx                                      // 0x007e6d40    2bf9
                         mov.s            esi, edi                                      // 0x007e6d42    8bf7
                         {disp8} mov      edi, dword ptr [esp + 0x10]                   // 0x007e6d44    8b7c2410
                         mov.s            edx, ecx                                      // 0x007e6d48    8bd1
                         mov.s            ebx, edi                                      // 0x007e6d4a    8bdf
                         or               ecx, 0xffffffff                               // 0x007e6d4c    83c9ff
                         repne scasb                                                    // 0x007e6d4f    f2ae
                         mov.s            ecx, edx                                      // 0x007e6d51    8bca
                         dec              edi                                           // 0x007e6d53    4f
                         shr              ecx, 2                                        // 0x007e6d54    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x007e6d57    f3a5
                         mov.s            ecx, edx                                      // 0x007e6d59    8bca
                         mov.s            eax, ebx                                      // 0x007e6d5b    8bc3
                         and              ecx, 0x03                                     // 0x007e6d5d    83e103
                         rep movsb                                                      // 0x007e6d60    f3a4
                         pop              edi                                           // 0x007e6d62    5f
                         pop              esi                                           // 0x007e6d63    5e
                         pop              ebx                                           // 0x007e6d64    5b
                         ret                                                            // 0x007e6d65    c3
                         nop                                                            // 0x007e6d66    90
                         nop                                                            // 0x007e6d67    90
                         nop                                                            // 0x007e6d68    90
                         nop                                                            // 0x007e6d69    90
                         nop                                                            // 0x007e6d6a    90
                         nop                                                            // 0x007e6d6b    90
                         nop                                                            // 0x007e6d6c    90
                         nop                                                            // 0x007e6d6d    90
                         nop                                                            // 0x007e6d6e    90
                         nop                                                            // 0x007e6d6f    90
_jmp_addr_0x007e6d70:    push             esi                                           // 0x007e6d70    56
                         push             edi                                           // 0x007e6d71    57
                         {disp8} mov      edi, dword ptr [esp + 0x10]                   // 0x007e6d72    8b7c2410
                         or               ecx, 0xffffffff                               // 0x007e6d76    83c9ff
                         xor.s            eax, eax                                      // 0x007e6d79    33c0
                         repne scasb                                                    // 0x007e6d7b    f2ae
                         not              ecx                                           // 0x007e6d7d    f7d1
                         sub.s            edi, ecx                                      // 0x007e6d7f    2bf9
                         mov.s            esi, edi                                      // 0x007e6d81    8bf7
                         {disp8} mov      edi, dword ptr [esp + 0x0c]                   // 0x007e6d83    8b7c240c
                         mov.s            eax, ecx                                      // 0x007e6d87    8bc1
                         mov.s            edx, edi                                      // 0x007e6d89    8bd7
                         shr              ecx, 2                                        // 0x007e6d8b    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x007e6d8e    f3a5
                         mov.s            ecx, eax                                      // 0x007e6d90    8bc8
                         mov.s            eax, edx                                      // 0x007e6d92    8bc2
                         and              ecx, 0x03                                     // 0x007e6d94    83e103
                         rep movsb                                                      // 0x007e6d97    f3a4
                         pop              edi                                           // 0x007e6d99    5f
                         pop              esi                                           // 0x007e6d9a    5e
                         ret                                                            // 0x007e6d9b    c3
                         nop                                                            // 0x007e6d9c    90
                         nop                                                            // 0x007e6d9d    90
                         nop                                                            // 0x007e6d9e    90
                         nop                                                            // 0x007e6d9f    90
_jmp_addr_0x007e6da0:    push             edi                                           // 0x007e6da0    57
                         {disp8} mov      edi, dword ptr [esp + 0x08]                   // 0x007e6da1    8b7c2408
                         or               ecx, 0xffffffff                               // 0x007e6da5    83c9ff
                         xor.s            eax, eax                                      // 0x007e6da8    33c0
                         repne scasb                                                    // 0x007e6daa    f2ae
                         not              ecx                                           // 0x007e6dac    f7d1
                         dec              ecx                                           // 0x007e6dae    49
                         pop              edi                                           // 0x007e6daf    5f
                         mov.s            eax, ecx                                      // 0x007e6db0    8bc1
                         ret                                                            // 0x007e6db2    c3
                         nop                                                            // 0x007e6db3    90
                         nop                                                            // 0x007e6db4    90
                         nop                                                            // 0x007e6db5    90
                         nop                                                            // 0x007e6db6    90
                         nop                                                            // 0x007e6db7    90
                         nop                                                            // 0x007e6db8    90
                         nop                                                            // 0x007e6db9    90
                         nop                                                            // 0x007e6dba    90
                         nop                                                            // 0x007e6dbb    90
                         nop                                                            // 0x007e6dbc    90
                         nop                                                            // 0x007e6dbd    90
                         nop                                                            // 0x007e6dbe    90
                         nop                                                            // 0x007e6dbf    90
_jmp_addr_0x007e6dc0:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e6dc0    8b442404
                         push             ebx                                           // 0x007e6dc4    53
                         push             esi                                           // 0x007e6dc5    56
                         {disp8} mov      esi, dword ptr [esp + 0x10]                   // 0x007e6dc6    8b742410
_jmp_addr_0x007e6dca:    mov              dl, byte ptr [eax]                            // 0x007e6dca    8a10
                         mov              bl, byte ptr [esi]                            // 0x007e6dcc    8a1e
                         mov.s            cl, dl                                        // 0x007e6dce    8aca
                         cmp.s            dl, bl                                        // 0x007e6dd0    3ad3
                         {disp8} jne      _jmp_addr_0x007e6df3                          // 0x007e6dd2    751f
                         test             cl, cl                                        // 0x007e6dd4    84c9
                         {disp8} je       _jmp_addr_0x007e6dee                          // 0x007e6dd6    7416
                         {disp8} mov      dl, byte ptr [eax + 0x01]                     // 0x007e6dd8    8a5001
                         {disp8} mov      bl, byte ptr [esi + 0x01]                     // 0x007e6ddb    8a5e01
                         mov.s            cl, dl                                        // 0x007e6dde    8aca
                         cmp.s            dl, bl                                        // 0x007e6de0    3ad3
                         {disp8} jne      _jmp_addr_0x007e6df3                          // 0x007e6de2    750f
                         add              eax, 0x02                                     // 0x007e6de4    83c002
                         add              esi, 0x02                                     // 0x007e6de7    83c602
                         test             cl, cl                                        // 0x007e6dea    84c9
                         {disp8} jne      _jmp_addr_0x007e6dca                          // 0x007e6dec    75dc
_jmp_addr_0x007e6dee:    pop              esi                                           // 0x007e6dee    5e
                         xor.s            eax, eax                                      // 0x007e6def    33c0
                         pop              ebx                                           // 0x007e6df1    5b
                         ret                                                            // 0x007e6df2    c3
_jmp_addr_0x007e6df3:    sbb.s            eax, eax                                      // 0x007e6df3    1bc0
                         pop              esi                                           // 0x007e6df5    5e
                         sbb              eax, -0x01                                    // 0x007e6df6    83d8ff
                         pop              ebx                                           // 0x007e6df9    5b
                         ret                                                            // 0x007e6dfa    c3
                         nop                                                            // 0x007e6dfb    90
                         nop                                                            // 0x007e6dfc    90
                         nop                                                            // 0x007e6dfd    90
                         nop                                                            // 0x007e6dfe    90
                         nop                                                            // 0x007e6dff    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e6e00    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e6e04    8b4c2404
                         push             eax                                           // 0x007e6e08    50
                         push             ecx                                           // 0x007e6e09    51
                         call             _strchr                                       // 0x007e6e0a    e8e123feff
                         add              esp, 0x08                                     // 0x007e6e0f    83c408
                         ret                                                            // 0x007e6e12    c3
                         nop                                                            // 0x007e6e13    90
                         nop                                                            // 0x007e6e14    90
                         nop                                                            // 0x007e6e15    90
                         nop                                                            // 0x007e6e16    90
                         nop                                                            // 0x007e6e17    90
                         nop                                                            // 0x007e6e18    90
                         nop                                                            // 0x007e6e19    90
                         nop                                                            // 0x007e6e1a    90
                         nop                                                            // 0x007e6e1b    90
                         nop                                                            // 0x007e6e1c    90
                         nop                                                            // 0x007e6e1d    90
                         nop                                                            // 0x007e6e1e    90
                         nop                                                            // 0x007e6e1f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e6e20    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e6e24    8b4c2404
                         push             eax                                           // 0x007e6e28    50
                         push             ecx                                           // 0x007e6e29    51
                         call             _strchr                                       // 0x007e6e2a    e8c123feff
                         add              esp, 0x08                                     // 0x007e6e2f    83c408
                         ret                                                            // 0x007e6e32    c3
                         nop                                                            // 0x007e6e33    90
                         nop                                                            // 0x007e6e34    90
                         nop                                                            // 0x007e6e35    90
                         nop                                                            // 0x007e6e36    90
                         nop                                                            // 0x007e6e37    90
                         nop                                                            // 0x007e6e38    90
                         nop                                                            // 0x007e6e39    90
                         nop                                                            // 0x007e6e3a    90
                         nop                                                            // 0x007e6e3b    90
                         nop                                                            // 0x007e6e3c    90
                         nop                                                            // 0x007e6e3d    90
                         nop                                                            // 0x007e6e3e    90
                         nop                                                            // 0x007e6e3f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e6e40    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e6e44    8b4c2404
                         push             eax                                           // 0x007e6e48    50
                         push             ecx                                           // 0x007e6e49    51
                         call             _strrchr                                      // 0x007e6e4a    e8a12dfeff
                         add              esp, 0x08                                     // 0x007e6e4f    83c408
                         ret                                                            // 0x007e6e52    c3
                         nop                                                            // 0x007e6e53    90
                         nop                                                            // 0x007e6e54    90
                         nop                                                            // 0x007e6e55    90
                         nop                                                            // 0x007e6e56    90
                         nop                                                            // 0x007e6e57    90
                         nop                                                            // 0x007e6e58    90
                         nop                                                            // 0x007e6e59    90
                         nop                                                            // 0x007e6e5a    90
                         nop                                                            // 0x007e6e5b    90
                         nop                                                            // 0x007e6e5c    90
                         nop                                                            // 0x007e6e5d    90
                         nop                                                            // 0x007e6e5e    90
                         nop                                                            // 0x007e6e5f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e6e60    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e6e64    8b4c2404
                         push             eax                                           // 0x007e6e68    50
                         push             ecx                                           // 0x007e6e69    51
                         call             _strrchr                                      // 0x007e6e6a    e8812dfeff
                         add              esp, 0x08                                     // 0x007e6e6f    83c408
                         ret                                                            // 0x007e6e72    c3
                         nop                                                            // 0x007e6e73    90
                         nop                                                            // 0x007e6e74    90
                         nop                                                            // 0x007e6e75    90
                         nop                                                            // 0x007e6e76    90
                         nop                                                            // 0x007e6e77    90
                         nop                                                            // 0x007e6e78    90
                         nop                                                            // 0x007e6e79    90
                         nop                                                            // 0x007e6e7a    90
                         nop                                                            // 0x007e6e7b    90
                         nop                                                            // 0x007e6e7c    90
                         nop                                                            // 0x007e6e7d    90
                         nop                                                            // 0x007e6e7e    90
                         nop                                                            // 0x007e6e7f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e6e80    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e6e84    8b4c2404
                         push             eax                                           // 0x007e6e88    50
                         push             ecx                                           // 0x007e6e89    51
                         call             _strstr                                       // 0x007e6e8a    e8d126feff
                         add              esp, 0x08                                     // 0x007e6e8f    83c408
                         ret                                                            // 0x007e6e92    c3
                         nop                                                            // 0x007e6e93    90
                         nop                                                            // 0x007e6e94    90
                         nop                                                            // 0x007e6e95    90
                         nop                                                            // 0x007e6e96    90
                         nop                                                            // 0x007e6e97    90
                         nop                                                            // 0x007e6e98    90
                         nop                                                            // 0x007e6e99    90
                         nop                                                            // 0x007e6e9a    90
                         nop                                                            // 0x007e6e9b    90
                         nop                                                            // 0x007e6e9c    90
                         nop                                                            // 0x007e6e9d    90
                         nop                                                            // 0x007e6e9e    90
                         nop                                                            // 0x007e6e9f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e6ea0    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e6ea4    8b4c2404
                         push             eax                                           // 0x007e6ea8    50
                         push             ecx                                           // 0x007e6ea9    51
                         call             _strstr                                       // 0x007e6eaa    e8b126feff
                         add              esp, 0x08                                     // 0x007e6eaf    83c408
                         ret                                                            // 0x007e6eb2    c3
                         nop                                                            // 0x007e6eb3    90
                         nop                                                            // 0x007e6eb4    90
                         nop                                                            // 0x007e6eb5    90
                         nop                                                            // 0x007e6eb6    90
                         nop                                                            // 0x007e6eb7    90
                         nop                                                            // 0x007e6eb8    90
                         nop                                                            // 0x007e6eb9    90
                         nop                                                            // 0x007e6eba    90
                         nop                                                            // 0x007e6ebb    90
                         nop                                                            // 0x007e6ebc    90
                         nop                                                            // 0x007e6ebd    90
                         nop                                                            // 0x007e6ebe    90
                         nop                                                            // 0x007e6ebf    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e6ec0    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e6ec4    8b4c2404
                         push             eax                                           // 0x007e6ec8    50
                         push             ecx                                           // 0x007e6ec9    51
                         call             _strpbrk                                      // 0x007e6eca    e8210cffff
                         add              esp, 0x08                                     // 0x007e6ecf    83c408
                         ret                                                            // 0x007e6ed2    c3
                         nop                                                            // 0x007e6ed3    90
                         nop                                                            // 0x007e6ed4    90
                         nop                                                            // 0x007e6ed5    90
                         nop                                                            // 0x007e6ed6    90
                         nop                                                            // 0x007e6ed7    90
                         nop                                                            // 0x007e6ed8    90
                         nop                                                            // 0x007e6ed9    90
                         nop                                                            // 0x007e6eda    90
                         nop                                                            // 0x007e6edb    90
                         nop                                                            // 0x007e6edc    90
                         nop                                                            // 0x007e6edd    90
                         nop                                                            // 0x007e6ede    90
                         nop                                                            // 0x007e6edf    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e6ee0    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e6ee4    8b4c2404
                         push             eax                                           // 0x007e6ee8    50
                         push             ecx                                           // 0x007e6ee9    51
                         call             _strpbrk                                      // 0x007e6eea    e8010cffff
                         add              esp, 0x08                                     // 0x007e6eef    83c408
                         ret                                                            // 0x007e6ef2    c3
                         nop                                                            // 0x007e6ef3    90
                         nop                                                            // 0x007e6ef4    90
                         nop                                                            // 0x007e6ef5    90
                         nop                                                            // 0x007e6ef6    90
                         nop                                                            // 0x007e6ef7    90
                         nop                                                            // 0x007e6ef8    90
                         nop                                                            // 0x007e6ef9    90
                         nop                                                            // 0x007e6efa    90
                         nop                                                            // 0x007e6efb    90
                         nop                                                            // 0x007e6efc    90
                         nop                                                            // 0x007e6efd    90
                         nop                                                            // 0x007e6efe    90
                         nop                                                            // 0x007e6eff    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e6f00    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e6f04    8b4c2404
                         push             eax                                           // 0x007e6f08    50
                         push             ecx                                           // 0x007e6f09    51
                         call             _strspn                                       // 0x007e6f0a    e851f10b00
                         add              esp, 0x08                                     // 0x007e6f0f    83c408
                         ret                                                            // 0x007e6f12    c3
                         nop                                                            // 0x007e6f13    90
                         nop                                                            // 0x007e6f14    90
                         nop                                                            // 0x007e6f15    90
                         nop                                                            // 0x007e6f16    90
                         nop                                                            // 0x007e6f17    90
                         nop                                                            // 0x007e6f18    90
                         nop                                                            // 0x007e6f19    90
                         nop                                                            // 0x007e6f1a    90
                         nop                                                            // 0x007e6f1b    90
                         nop                                                            // 0x007e6f1c    90
                         nop                                                            // 0x007e6f1d    90
                         nop                                                            // 0x007e6f1e    90
                         nop                                                            // 0x007e6f1f    90
                         movsx            eax, byte ptr [esp + 0x04]                    // 0x007e6f20    0fbe442404
                         push             eax                                           // 0x007e6f25    50
                         call             _isalpha                                      // 0x007e6f26    e844f9fdff
                         add              esp, 0x04                                     // 0x007e6f2b    83c404
                         ret                                                            // 0x007e6f2e    c3
                         nop                                                            // 0x007e6f2f    90
                         movsx            eax, byte ptr [esp + 0x04]                    // 0x007e6f30    0fbe442404
                         push             eax                                           // 0x007e6f35    50
                         call             _isupper                                      // 0x007e6f36    e862f9fdff
                         add              esp, 0x04                                     // 0x007e6f3b    83c404
                         ret                                                            // 0x007e6f3e    c3
                         nop                                                            // 0x007e6f3f    90
                         movsx            eax, byte ptr [esp + 0x04]                    // 0x007e6f40    0fbe442404
                         push             eax                                           // 0x007e6f45    50
                         call             _islower                                      // 0x007e6f46    e87af9fdff
                         add              esp, 0x04                                     // 0x007e6f4b    83c404
                         ret                                                            // 0x007e6f4e    c3
                         nop                                                            // 0x007e6f4f    90
_jmp_addr_0x007e6f50:    movsx            eax, byte ptr [esp + 0x04]                    // 0x007e6f50    0fbe442404
                         push             eax                                           // 0x007e6f55    50
                         call             _isdigit                                      // 0x007e6f56    e892f9fdff
                         add              esp, 0x04                                     // 0x007e6f5b    83c404
                         ret                                                            // 0x007e6f5e    c3
                         nop                                                            // 0x007e6f5f    90
_jmp_addr_0x007e6f60:    movsx            eax, byte ptr [esp + 0x04]                    // 0x007e6f60    0fbe442404
                         push             eax                                           // 0x007e6f65    50
                         call             _isspace                                      // 0x007e6f66    e8d7f9fdff
                         add              esp, 0x04                                     // 0x007e6f6b    83c404
                         ret                                                            // 0x007e6f6e    c3
                         nop                                                            // 0x007e6f6f    90
_jmp_addr_0x007e6f70:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e6f70    8b442404
                         push             eax                                           // 0x007e6f74    50
                         call             _atof                                         // 0x007e6f75    e85425feff
                         pop              ecx                                           // 0x007e6f7a    59
                         ret                                                            // 0x007e6f7b    c3
                         nop                                                            // 0x007e6f7c    90
                         nop                                                            // 0x007e6f7d    90
                         nop                                                            // 0x007e6f7e    90
                         nop                                                            // 0x007e6f7f    90
_jmp_addr_0x007e6f80:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e6f80    8b442404
                         push             eax                                           // 0x007e6f84    50
                         call             _atoi                          // 0x007e6f85    e8fdf5fdff
                         add              esp, 0x04                                     // 0x007e6f8a    83c404
                         ret                                                            // 0x007e6f8d    c3
                         nop                                                            // 0x007e6f8e    90
                         nop                                                            // 0x007e6f8f    90
_jmp_addr_0x007e6f90:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e6f90    8b442404
                         push             eax                                           // 0x007e6f94    50
                         call             _atol                                         // 0x007e6f95    e862f5fdff
                         add              esp, 0x04                                     // 0x007e6f9a    83c404
                         ret                                                            // 0x007e6f9d    c3
                         nop                                                            // 0x007e6f9e    90
                         nop                                                            // 0x007e6f9f    90
_jmp_addr_0x007e6fa0:    {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e6fa0    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e6fa4    8b4c2404
                         push             eax                                           // 0x007e6fa8    50
                         push             ecx                                           // 0x007e6fa9    51
                         call             _wcscat                                       // 0x007e6faa    e8ddeffdff
                         add              esp, 0x08                                     // 0x007e6faf    83c408
                         ret                                                            // 0x007e6fb2    c3
                         nop                                                            // 0x007e6fb3    90
                         nop                                                            // 0x007e6fb4    90
                         nop                                                            // 0x007e6fb5    90
                         nop                                                            // 0x007e6fb6    90
                         nop                                                            // 0x007e6fb7    90
                         nop                                                            // 0x007e6fb8    90
                         nop                                                            // 0x007e6fb9    90
                         nop                                                            // 0x007e6fba    90
                         nop                                                            // 0x007e6fbb    90
                         nop                                                            // 0x007e6fbc    90
                         nop                                                            // 0x007e6fbd    90
                         nop                                                            // 0x007e6fbe    90
                         nop                                                            // 0x007e6fbf    90
_jmp_addr_0x007e6fc0:    {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e6fc0    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e6fc4    8b4c2404
                         push             eax                                           // 0x007e6fc8    50
                         push             ecx                                           // 0x007e6fc9    51
                         call             _wcscpy                                       // 0x007e6fca    e8e7effdff
                         add              esp, 0x08                                     // 0x007e6fcf    83c408
                         ret                                                            // 0x007e6fd2    c3
                         nop                                                            // 0x007e6fd3    90
                         nop                                                            // 0x007e6fd4    90
                         nop                                                            // 0x007e6fd5    90
                         nop                                                            // 0x007e6fd6    90
                         nop                                                            // 0x007e6fd7    90
                         nop                                                            // 0x007e6fd8    90
                         nop                                                            // 0x007e6fd9    90
                         nop                                                            // 0x007e6fda    90
                         nop                                                            // 0x007e6fdb    90
                         nop                                                            // 0x007e6fdc    90
                         nop                                                            // 0x007e6fdd    90
                         nop                                                            // 0x007e6fde    90
                         nop                                                            // 0x007e6fdf    90
_jmp_addr_0x007e6fe0:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e6fe0    8b442404
                         push             eax                                           // 0x007e6fe4    50
                         call             _wcslen                                       // 0x007e6fe5    e878f4fdff
                         add              esp, 0x04                                     // 0x007e6fea    83c404
                         ret                                                            // 0x007e6fed    c3
                         nop                                                            // 0x007e6fee    90
                         nop                                                            // 0x007e6fef    90
_jmp_addr_0x007e6ff0:    {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e6ff0    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e6ff4    8b4c2404
                         push             eax                                           // 0x007e6ff8    50
                         push             ecx                                           // 0x007e6ff9    51
                         call             _wcscmp                          // 0x007e6ffa    e8e0fefdff
                         add              esp, 0x08                                     // 0x007e6fff    83c408
                         ret                                                            // 0x007e7002    c3
                         nop                                                            // 0x007e7003    90
                         nop                                                            // 0x007e7004    90
                         nop                                                            // 0x007e7005    90
                         nop                                                            // 0x007e7006    90
                         nop                                                            // 0x007e7007    90
                         nop                                                            // 0x007e7008    90
                         nop                                                            // 0x007e7009    90
                         nop                                                            // 0x007e700a    90
                         nop                                                            // 0x007e700b    90
                         nop                                                            // 0x007e700c    90
                         nop                                                            // 0x007e700d    90
                         nop                                                            // 0x007e700e    90
                         nop                                                            // 0x007e700f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e7010    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e7014    8b4c2404
                         push             eax                                           // 0x007e7018    50
                         push             ecx                                           // 0x007e7019    51
                         call             _wcschr                                       // 0x007e701a    e87ff00b00
                         add              esp, 0x08                                     // 0x007e701f    83c408
                         ret                                                            // 0x007e7022    c3
                         nop                                                            // 0x007e7023    90
                         nop                                                            // 0x007e7024    90
                         nop                                                            // 0x007e7025    90
                         nop                                                            // 0x007e7026    90
                         nop                                                            // 0x007e7027    90
                         nop                                                            // 0x007e7028    90
                         nop                                                            // 0x007e7029    90
                         nop                                                            // 0x007e702a    90
                         nop                                                            // 0x007e702b    90
                         nop                                                            // 0x007e702c    90
                         nop                                                            // 0x007e702d    90
                         nop                                                            // 0x007e702e    90
                         nop                                                            // 0x007e702f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e7030    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e7034    8b4c2404
                         push             eax                                           // 0x007e7038    50
                         push             ecx                                           // 0x007e7039    51
                         call             _wcschr                                       // 0x007e703a    e85ff00b00
                         add              esp, 0x08                                     // 0x007e703f    83c408
                         ret                                                            // 0x007e7042    c3
                         nop                                                            // 0x007e7043    90
                         nop                                                            // 0x007e7044    90
                         nop                                                            // 0x007e7045    90
                         nop                                                            // 0x007e7046    90
                         nop                                                            // 0x007e7047    90
                         nop                                                            // 0x007e7048    90
                         nop                                                            // 0x007e7049    90
                         nop                                                            // 0x007e704a    90
                         nop                                                            // 0x007e704b    90
                         nop                                                            // 0x007e704c    90
                         nop                                                            // 0x007e704d    90
                         nop                                                            // 0x007e704e    90
                         nop                                                            // 0x007e704f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e7050    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e7054    8b4c2404
                         push             eax                                           // 0x007e7058    50
                         push             ecx                                           // 0x007e7059    51
                         call             _wcsrchr                                      // 0x007e705a    e868f00b00
                         add              esp, 0x08                                     // 0x007e705f    83c408
                         ret                                                            // 0x007e7062    c3
                         nop                                                            // 0x007e7063    90
                         nop                                                            // 0x007e7064    90
                         nop                                                            // 0x007e7065    90
                         nop                                                            // 0x007e7066    90
                         nop                                                            // 0x007e7067    90
                         nop                                                            // 0x007e7068    90
                         nop                                                            // 0x007e7069    90
                         nop                                                            // 0x007e706a    90
                         nop                                                            // 0x007e706b    90
                         nop                                                            // 0x007e706c    90
                         nop                                                            // 0x007e706d    90
                         nop                                                            // 0x007e706e    90
                         nop                                                            // 0x007e706f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e7070    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e7074    8b4c2404
                         push             eax                                           // 0x007e7078    50
                         push             ecx                                           // 0x007e7079    51
                         call             _wcsrchr                                      // 0x007e707a    e848f00b00
                         add              esp, 0x08                                     // 0x007e707f    83c408
                         ret                                                            // 0x007e7082    c3
                         nop                                                            // 0x007e7083    90
                         nop                                                            // 0x007e7084    90
                         nop                                                            // 0x007e7085    90
                         nop                                                            // 0x007e7086    90
                         nop                                                            // 0x007e7087    90
                         nop                                                            // 0x007e7088    90
                         nop                                                            // 0x007e7089    90
                         nop                                                            // 0x007e708a    90
                         nop                                                            // 0x007e708b    90
                         nop                                                            // 0x007e708c    90
                         nop                                                            // 0x007e708d    90
                         nop                                                            // 0x007e708e    90
                         nop                                                            // 0x007e708f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e7090    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e7094    8b4c2404
                         push             eax                                           // 0x007e7098    50
                         push             ecx                                           // 0x007e7099    51
                         call             _wcsstr                                       // 0x007e709a    e82e11feff
                         add              esp, 0x08                                     // 0x007e709f    83c408
                         ret                                                            // 0x007e70a2    c3
                         nop                                                            // 0x007e70a3    90
                         nop                                                            // 0x007e70a4    90
                         nop                                                            // 0x007e70a5    90
                         nop                                                            // 0x007e70a6    90
                         nop                                                            // 0x007e70a7    90
                         nop                                                            // 0x007e70a8    90
                         nop                                                            // 0x007e70a9    90
                         nop                                                            // 0x007e70aa    90
                         nop                                                            // 0x007e70ab    90
                         nop                                                            // 0x007e70ac    90
                         nop                                                            // 0x007e70ad    90
                         nop                                                            // 0x007e70ae    90
                         nop                                                            // 0x007e70af    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e70b0    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e70b4    8b4c2404
                         push             eax                                           // 0x007e70b8    50
                         push             ecx                                           // 0x007e70b9    51
                         call             _wcsstr                                       // 0x007e70ba    e80e11feff
                         add              esp, 0x08                                     // 0x007e70bf    83c408
                         ret                                                            // 0x007e70c2    c3
                         nop                                                            // 0x007e70c3    90
                         nop                                                            // 0x007e70c4    90
                         nop                                                            // 0x007e70c5    90
                         nop                                                            // 0x007e70c6    90
                         nop                                                            // 0x007e70c7    90
                         nop                                                            // 0x007e70c8    90
                         nop                                                            // 0x007e70c9    90
                         nop                                                            // 0x007e70ca    90
                         nop                                                            // 0x007e70cb    90
                         nop                                                            // 0x007e70cc    90
                         nop                                                            // 0x007e70cd    90
                         nop                                                            // 0x007e70ce    90
                         nop                                                            // 0x007e70cf    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e70d0    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e70d4    8b4c2404
                         push             eax                                           // 0x007e70d8    50
                         push             ecx                                           // 0x007e70d9    51
                         call             _wcspbrk                                      // 0x007e70da    e828f00b00
                         add              esp, 0x08                                     // 0x007e70df    83c408
                         ret                                                            // 0x007e70e2    c3
                         nop                                                            // 0x007e70e3    90
                         nop                                                            // 0x007e70e4    90
                         nop                                                            // 0x007e70e5    90
                         nop                                                            // 0x007e70e6    90
                         nop                                                            // 0x007e70e7    90
                         nop                                                            // 0x007e70e8    90
                         nop                                                            // 0x007e70e9    90
                         nop                                                            // 0x007e70ea    90
                         nop                                                            // 0x007e70eb    90
                         nop                                                            // 0x007e70ec    90
                         nop                                                            // 0x007e70ed    90
                         nop                                                            // 0x007e70ee    90
                         nop                                                            // 0x007e70ef    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e70f0    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e70f4    8b4c2404
                         push             eax                                           // 0x007e70f8    50
                         push             ecx                                           // 0x007e70f9    51
                         call             _wcspbrk                                      // 0x007e70fa    e808f00b00
                         add              esp, 0x08                                     // 0x007e70ff    83c408
                         ret                                                            // 0x007e7102    c3
                         nop                                                            // 0x007e7103    90
                         nop                                                            // 0x007e7104    90
                         nop                                                            // 0x007e7105    90
                         nop                                                            // 0x007e7106    90
                         nop                                                            // 0x007e7107    90
                         nop                                                            // 0x007e7108    90
                         nop                                                            // 0x007e7109    90
                         nop                                                            // 0x007e710a    90
                         nop                                                            // 0x007e710b    90
                         nop                                                            // 0x007e710c    90
                         nop                                                            // 0x007e710d    90
                         nop                                                            // 0x007e710e    90
                         nop                                                            // 0x007e710f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e7110    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007e7114    8b4c2404
                         push             eax                                           // 0x007e7118    50
                         push             ecx                                           // 0x007e7119    51
                         call             _wcsspn                                       // 0x007e711a    e826f00b00
                         add              esp, 0x08                                     // 0x007e711f    83c408
                         ret                                                            // 0x007e7122    c3
                         nop                                                            // 0x007e7123    90
                         nop                                                            // 0x007e7124    90
                         nop                                                            // 0x007e7125    90
                         nop                                                            // 0x007e7126    90
                         nop                                                            // 0x007e7127    90
                         nop                                                            // 0x007e7128    90
                         nop                                                            // 0x007e7129    90
                         nop                                                            // 0x007e712a    90
                         nop                                                            // 0x007e712b    90
                         nop                                                            // 0x007e712c    90
                         nop                                                            // 0x007e712d    90
                         nop                                                            // 0x007e712e    90
                         nop                                                            // 0x007e712f    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e7130    8b442404
                         push             eax                                           // 0x007e7134    50
                         call             _iswalpha                                     // 0x007e7135    e8e2f9fdff
                         add              esp, 0x04                                     // 0x007e713a    83c404
                         ret                                                            // 0x007e713d    c3
                         nop                                                            // 0x007e713e    90
                         nop                                                            // 0x007e713f    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e7140    8b442404
                         push             eax                                           // 0x007e7144    50
                         call             _iswupper                                     // 0x007e7145    e8e3f9fdff
                         add              esp, 0x04                                     // 0x007e714a    83c404
                         ret                                                            // 0x007e714d    c3
                         nop                                                            // 0x007e714e    90
                         nop                                                            // 0x007e714f    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e7150    8b442404
                         push             eax                                           // 0x007e7154    50
                         call             _iswlower                                     // 0x007e7155    e8e1f9fdff
                         add              esp, 0x04                                     // 0x007e715a    83c404
                         ret                                                            // 0x007e715d    c3
                         nop                                                            // 0x007e715e    90
                         nop                                                            // 0x007e715f    90
_jmp_addr_0x007e7160:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e7160    8b442404
                         push             eax                                           // 0x007e7164    50
                         call             _iswdigit                                     // 0x007e7165    e8dff9fdff
                         add              esp, 0x04                                     // 0x007e716a    83c404
                         ret                                                            // 0x007e716d    c3
                         nop                                                            // 0x007e716e    90
                         nop                                                            // 0x007e716f    90
_jmp_addr_0x007e7170:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e7170    8b442404
                         push             eax                                           // 0x007e7174    50
                         call             _iswspace                                     // 0x007e7175    e8eef9fdff
                         add              esp, 0x04                                     // 0x007e717a    83c404
                         ret                                                            // 0x007e717d    c3
                         nop                                                            // 0x007e717e    90
                         nop                                                            // 0x007e717f    90
_jmp_addr_0x007e7180:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e7180    8b442404
                         push             eax                                           // 0x007e7184    50
                         call             _jmp_addr_0x007e6ab0                          // 0x007e7185    e826f9ffff
                         push             eax                                           // 0x007e718a    50
                         call             _atof                                         // 0x007e718b    e83e23feff
                         add              esp, 0x08                                     // 0x007e7190    83c408
                         ret                                                            // 0x007e7193    c3
                         nop                                                            // 0x007e7194    90
                         nop                                                            // 0x007e7195    90
                         nop                                                            // 0x007e7196    90
                         nop                                                            // 0x007e7197    90
                         nop                                                            // 0x007e7198    90
                         nop                                                            // 0x007e7199    90
                         nop                                                            // 0x007e719a    90
                         nop                                                            // 0x007e719b    90
                         nop                                                            // 0x007e719c    90
                         nop                                                            // 0x007e719d    90
                         nop                                                            // 0x007e719e    90
                         nop                                                            // 0x007e719f    90
_jmp_addr_0x007e71a0:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e71a0    8b442404
                         push             eax                                           // 0x007e71a4    50
                         call             _jmp_addr_0x007e6ab0                          // 0x007e71a5    e806f9ffff
                         push             eax                                           // 0x007e71aa    50
                         call             _atoi                          // 0x007e71ab    e8d7f3fdff
                         add              esp, 0x08                                     // 0x007e71b0    83c408
                         ret                                                            // 0x007e71b3    c3
                         nop                                                            // 0x007e71b4    90
                         nop                                                            // 0x007e71b5    90
                         nop                                                            // 0x007e71b6    90
                         nop                                                            // 0x007e71b7    90
                         nop                                                            // 0x007e71b8    90
                         nop                                                            // 0x007e71b9    90
                         nop                                                            // 0x007e71ba    90
                         nop                                                            // 0x007e71bb    90
                         nop                                                            // 0x007e71bc    90
                         nop                                                            // 0x007e71bd    90
                         nop                                                            // 0x007e71be    90
                         nop                                                            // 0x007e71bf    90
_jmp_addr_0x007e71c0:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e71c0    8b442404
                         push             eax                                           // 0x007e71c4    50
                         call             _jmp_addr_0x007e6ab0                          // 0x007e71c5    e8e6f8ffff
                         push             eax                                           // 0x007e71ca    50
                         call             _atol                                         // 0x007e71cb    e82cf3fdff
                         add              esp, 0x08                                     // 0x007e71d0    83c408
                         ret                                                            // 0x007e71d3    c3
                         nop                                                            // 0x007e71d4    90
                         nop                                                            // 0x007e71d5    90
                         nop                                                            // 0x007e71d6    90
                         nop                                                            // 0x007e71d7    90
                         nop                                                            // 0x007e71d8    90
                         nop                                                            // 0x007e71d9    90
                         nop                                                            // 0x007e71da    90
                         nop                                                            // 0x007e71db    90
                         nop                                                            // 0x007e71dc    90
                         nop                                                            // 0x007e71dd    90
                         nop                                                            // 0x007e71de    90
                         nop                                                            // 0x007e71df    90
_jmp_addr_0x007e71e0:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e71e0    8b442404
                         push             eax                                           // 0x007e71e4    50
                         call             _jmp_addr_0x007e6a80                          // 0x007e71e5    e896f8ffff
                         add              esp, 0x04                                     // 0x007e71ea    83c404
                         ret                                                            // 0x007e71ed    c3
                         nop                                                            // 0x007e71ee    90
                         nop                                                            // 0x007e71ef    90
_jmp_addr_0x007e71f0:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e71f0    8b442404
                         ret                                                            // 0x007e71f4    c3
                         nop                                                            // 0x007e71f5    90
                         nop                                                            // 0x007e71f6    90
                         nop                                                            // 0x007e71f7    90
                         nop                                                            // 0x007e71f8    90
                         nop                                                            // 0x007e71f9    90
                         nop                                                            // 0x007e71fa    90
                         nop                                                            // 0x007e71fb    90
                         nop                                                            // 0x007e71fc    90
                         nop                                                            // 0x007e71fd    90
                         nop                                                            // 0x007e71fe    90
                         nop                                                            // 0x007e71ff    90
_jmp_addr_0x007e7200:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e7200    8b442404
                         push             eax                                           // 0x007e7204    50
                         call             _jmp_addr_0x007e6ae0                          // 0x007e7205    e8d6f8ffff
                         add              esp, 0x04                                     // 0x007e720a    83c404
                         ret                                                            // 0x007e720d    c3
                         nop                                                            // 0x007e720e    90
                         nop                                                            // 0x007e720f    90
_jmp_addr_0x007e7210:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007e7210    8b442404
                         ret                                                            // 0x007e7214    c3
                         nop                                                            // 0x007e7215    90
                         nop                                                            // 0x007e7216    90
                         nop                                                            // 0x007e7217    90
                         nop                                                            // 0x007e7218    90
                         nop                                                            // 0x007e7219    90
                         nop                                                            // 0x007e721a    90
                         nop                                                            // 0x007e721b    90
                         nop                                                            // 0x007e721c    90
                         nop                                                            // 0x007e721d    90
                         nop                                                            // 0x007e721e    90
                         nop                                                            // 0x007e721f    90
_jmp_addr_0x007e7220:    {disp8} mov      eax, dword ptr [esp + 0x0c]                   // 0x007e7220    8b44240c
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                   // 0x007e7224    8b4c2408
                         {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x007e7228    8b542404
                         push             eax                                           // 0x007e722c    50
                         push             ecx                                           // 0x007e722d    51
                         push             edx                                           // 0x007e722e    52
                         call             __itoa                                        // 0x007e722f    e85067feff
                         add              esp, 0x0c                                     // 0x007e7234    83c40c
                         ret                                                            // 0x007e7237    c3
                         nop                                                            // 0x007e7238    90
                         nop                                                            // 0x007e7239    90
                         nop                                                            // 0x007e723a    90
                         nop                                                            // 0x007e723b    90
                         nop                                                            // 0x007e723c    90
                         nop                                                            // 0x007e723d    90
                         nop                                                            // 0x007e723e    90
                         nop                                                            // 0x007e723f    90
_jmp_addr_0x007e7240:    {disp8} mov      eax, dword ptr [esp + 0x0c]                   // 0x007e7240    8b44240c
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                   // 0x007e7244    8b4c2408
                         {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x007e7248    8b542404
                         push             eax                                           // 0x007e724c    50
                         push             ecx                                           // 0x007e724d    51
                         push             edx                                           // 0x007e724e    52
                         call             __itow                                        // 0x007e724f    e887edfdff
                         add              esp, 0x0c                                     // 0x007e7254    83c40c
                         ret                                                            // 0x007e7257    c3
                         nop                                                            // 0x007e7258    90
                         nop                                                            // 0x007e7259    90
                         nop                                                            // 0x007e725a    90
                         nop                                                            // 0x007e725b    90
                         nop                                                            // 0x007e725c    90
                         nop                                                            // 0x007e725d    90
                         nop                                                            // 0x007e725e    90
                         nop                                                            // 0x007e725f    90
_jmp_addr_0x007e7260:    sub              esp, 0x30                                     // 0x007e7260    83ec30
                         push             ebx                                           // 0x007e7263    53
                         push             esi                                           // 0x007e7264    56
                         push             edi                                           // 0x007e7265    57
                         mov.s            ebx, ecx                                      // 0x007e7266    8bd9
                         call             ?DestroyVariables@LHScriptX_c_@@QAEXXZ        // 0x007e7268    e8431a0000
                         {disp8} mov      eax, dword ptr [esp + 0x44]                   // 0x007e726d    8b442444
                         {disp8} mov      edx, dword ptr [esp + 0x4c]                   // 0x007e7271    8b54244c
                         mov              ecx, 0x0000000c                               // 0x007e7275    b90c000000
                         mov.s            esi, ebx                                      // 0x007e727a    8bf3
                         {disp8} lea      edi, dword ptr [esp + 0x0c]                   // 0x007e727c    8d7c240c
                         push             edx                                           // 0x007e7280    52
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x007e7281    f3a5
                         {disp8} mov      ecx, dword ptr [esp + 0x4c]                   // 0x007e7283    8b4c244c
                         {disp8} mov      dword ptr [ebx + 0x28], eax                   // 0x007e7287    894328
                         {disp8} mov      eax, dword ptr [esp + 0x44]                   // 0x007e728a    8b442444
                         {disp8} mov      dword ptr [ebx + 0x2c], ecx                   // 0x007e728e    894b2c
                         push             eax                                           // 0x007e7291    50
                         mov.s            ecx, ebx                                      // 0x007e7292    8bcb
                         {disp8} mov      dword ptr [ebx + 0x20], 0x00000000            // 0x007e7294    c7432000000000
                         call             @LoadFile__12LHScriptX_c_FPcPl@16             // 0x007e729b    e8d00e0000
                         mov              ecx, 0x0000000c                               // 0x007e72a0    b90c000000
                         {disp8} lea      esi, dword ptr [esp + 0x0c]                   // 0x007e72a5    8d74240c
                         mov.s            edi, ebx                                      // 0x007e72a9    8bfb
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x007e72ab    f3a5
                         pop              edi                                           // 0x007e72ad    5f
                         pop              esi                                           // 0x007e72ae    5e
                         pop              ebx                                           // 0x007e72af    5b
                         add              esp, 0x30                                     // 0x007e72b0    83c430
                         ret              0x0010                                        // 0x007e72b3    c21000
                         nop                                                            // 0x007e72b6    90
                         nop                                                            // 0x007e72b7    90
                         nop                                                            // 0x007e72b8    90
                         nop                                                            // 0x007e72b9    90
                         nop                                                            // 0x007e72ba    90
                         nop                                                            // 0x007e72bb    90
                         nop                                                            // 0x007e72bc    90
                         nop                                                            // 0x007e72bd    90
                         nop                                                            // 0x007e72be    90
                         nop                                                            // 0x007e72bf    90
@Load__12LHScriptX_c_FPcP19LHScriptCommandX_c_PFlP16LHScriptPramX_c__9LH_RETURNPl@24:    sub              esp, 0x30                                     // 0x007e72c0    83ec30
                         push             ebx                                           // 0x007e72c3    53
                         push             esi                                           // 0x007e72c4    56
                         push             edi                                           // 0x007e72c5    57
                         mov.s            ebx, ecx                                      // 0x007e72c6    8bd9
                         call             ?DestroyVariables@LHScriptX_c_@@QAEXXZ        // 0x007e72c8    e8e3190000
                         {disp8} mov      eax, dword ptr [esp + 0x44]                   // 0x007e72cd    8b442444
                         {disp8} mov      edx, dword ptr [esp + 0x4c]                   // 0x007e72d1    8b54244c
                         mov              ecx, 0x0000000c                               // 0x007e72d5    b90c000000
                         mov.s            esi, ebx                                      // 0x007e72da    8bf3
                         {disp8} lea      edi, dword ptr [esp + 0x0c]                   // 0x007e72dc    8d7c240c
                         push             edx                                           // 0x007e72e0    52
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x007e72e1    f3a5
                         {disp8} mov      ecx, dword ptr [esp + 0x4c]                   // 0x007e72e3    8b4c244c
                         {disp8} mov      dword ptr [ebx + 0x20], eax                   // 0x007e72e7    894320
                         {disp8} mov      eax, dword ptr [esp + 0x44]                   // 0x007e72ea    8b442444
                         {disp8} mov      dword ptr [ebx + 0x24], ecx                   // 0x007e72ee    894b24
                         push             eax                                           // 0x007e72f1    50
                         mov.s            ecx, ebx                                      // 0x007e72f2    8bcb
                         {disp8} mov      dword ptr [ebx + 0x28], 0x00000000            // 0x007e72f4    c7432800000000
                         call             @LoadFile__12LHScriptX_c_FPcPl@16             // 0x007e72fb    e8700e0000
                         mov              ecx, 0x0000000c                               // 0x007e7300    b90c000000
                         {disp8} lea      esi, dword ptr [esp + 0x0c]                   // 0x007e7305    8d74240c
                         mov.s            edi, ebx                                      // 0x007e7309    8bfb
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x007e730b    f3a5
                         pop              edi                                           // 0x007e730d    5f
                         pop              esi                                           // 0x007e730e    5e
                         pop              ebx                                           // 0x007e730f    5b
                         add              esp, 0x30                                     // 0x007e7310    83c430
                         ret              0x0010                                        // 0x007e7313    c21000
                         nop                                                            // 0x007e7316    90
                         nop                                                            // 0x007e7317    90
                         nop                                                            // 0x007e7318    90
                         nop                                                            // 0x007e7319    90
                         nop                                                            // 0x007e731a    90
                         nop                                                            // 0x007e731b    90
                         nop                                                            // 0x007e731c    90
                         nop                                                            // 0x007e731d    90
                         nop                                                            // 0x007e731e    90
                         nop                                                            // 0x007e731f    90
_jmp_addr_0x007e7320:    sub              esp, 0x30                                     // 0x007e7320    83ec30
                         push             ebx                                           // 0x007e7323    53
                         push             esi                                           // 0x007e7324    56
                         push             edi                                           // 0x007e7325    57
                         mov.s            ebx, ecx                                      // 0x007e7326    8bd9
                         call             ?DestroyVariables@LHScriptX_c_@@QAEXXZ        // 0x007e7328    e883190000
                         {disp8} mov      edx, dword ptr [esp + 0x4c]                   // 0x007e732d    8b54244c
                         {disp8} mov      eax, dword ptr [esp + 0x44]                   // 0x007e7331    8b442444
                         mov              ecx, 0x0000000c                               // 0x007e7335    b90c000000
                         mov.s            esi, ebx                                      // 0x007e733a    8bf3
                         {disp8} lea      edi, dword ptr [esp + 0x0c]                   // 0x007e733c    8d7c240c
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x007e7340    f3a5
                         {disp8} mov      ecx, dword ptr [esp + 0x48]                   // 0x007e7342    8b4c2448
                         {disp8} mov      dword ptr [ebx + 0x28], edx                   // 0x007e7346    895328
                         {disp8} mov      edx, dword ptr [esp + 0x40]                   // 0x007e7349    8b542440
                         {disp8} mov      dword ptr [ebx + 0x24], ecx                   // 0x007e734d    894b24
                         {disp8} mov      ecx, dword ptr [esp + 0x54]                   // 0x007e7350    8b4c2454
                         {disp8} mov      dword ptr [ebx + 0x20], eax                   // 0x007e7354    894320
                         {disp8} mov      eax, dword ptr [esp + 0x50]                   // 0x007e7357    8b442450
                         push             ecx                                           // 0x007e735b    51
                         push             edx                                           // 0x007e735c    52
                         mov.s            ecx, ebx                                      // 0x007e735d    8bcb
                         {disp8} mov      dword ptr [ebx + 0x2c], eax                   // 0x007e735f    89432c
                         call             @LoadFile__12LHScriptX_c_FPcPl@16             // 0x007e7362    e8090e0000
                         mov              ecx, 0x0000000c                               // 0x007e7367    b90c000000
                         {disp8} lea      esi, dword ptr [esp + 0x0c]                   // 0x007e736c    8d74240c
                         mov.s            edi, ebx                                      // 0x007e7370    8bfb
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x007e7372    f3a5
                         pop              edi                                           // 0x007e7374    5f
                         pop              esi                                           // 0x007e7375    5e
                         pop              ebx                                           // 0x007e7376    5b
                         add              esp, 0x30                                     // 0x007e7377    83c430
                         ret              0x0018                                        // 0x007e737a    c21800
                         nop                                                            // 0x007e737d    90
                         nop                                                            // 0x007e737e    90
                         nop                                                            // 0x007e737f    90
_jmp_addr_0x007e7380:    sub              esp, 0x30                                     // 0x007e7380    83ec30
                         push             ebx                                           // 0x007e7383    53
                         push             esi                                           // 0x007e7384    56
                         push             edi                                           // 0x007e7385    57
                         mov.s            ebx, ecx                                      // 0x007e7386    8bd9
                         call             ?DestroyVariables@LHScriptX_c_@@QAEXXZ        // 0x007e7388    e823190000
                         mov              ecx, 0x0000000c                               // 0x007e738d    b90c000000
                         mov.s            esi, ebx                                      // 0x007e7392    8bf3
                         {disp8} lea      edi, dword ptr [esp + 0x0c]                   // 0x007e7394    8d7c240c
                         xor.s            eax, eax                                      // 0x007e7398    33c0
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x007e739a    f3a5
                         {disp8} mov      ecx, dword ptr [esp + 0x40]                   // 0x007e739c    8b4c2440
                         {disp8} mov      dword ptr [ebx + 0x20], eax                   // 0x007e73a0    894320
                         {disp8} mov      dword ptr [ebx + 0x28], eax                   // 0x007e73a3    894328
                         {disp8} mov      eax, dword ptr [esp + 0x44]                   // 0x007e73a6    8b442444
                         push             eax                                           // 0x007e73aa    50
                         push             ecx                                           // 0x007e73ab    51
                         mov.s            ecx, ebx                                      // 0x007e73ac    8bcb
                         call             @LoadFile__12LHScriptX_c_FPcPl@16             // 0x007e73ae    e8bd0d0000
                         mov              ecx, 0x0000000c                               // 0x007e73b3    b90c000000
                         {disp8} lea      esi, dword ptr [esp + 0x0c]                   // 0x007e73b8    8d74240c
                         mov.s            edi, ebx                                      // 0x007e73bc    8bfb
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x007e73be    f3a5
                         pop              edi                                           // 0x007e73c0    5f
                         pop              esi                                           // 0x007e73c1    5e
                         pop              ebx                                           // 0x007e73c2    5b
                         add              esp, 0x30                                     // 0x007e73c3    83c430
                         ret              0x0008                                        // 0x007e73c6    c20800
                         nop                                                            // 0x007e73c9    90
                         nop                                                            // 0x007e73ca    90
                         nop                                                            // 0x007e73cb    90
                         nop                                                            // 0x007e73cc    90
                         nop                                                            // 0x007e73cd    90
                         nop                                                            // 0x007e73ce    90
                         nop                                                            // 0x007e73cf    90
_jmp_addr_0x007e73d0:    push             esi                                           // 0x007e73d0    56
                         mov.s            esi, ecx                                      // 0x007e73d1    8bf1
                         call             ?DestroyVariables@LHScriptX_c_@@QAEXXZ        // 0x007e73d3    e8d8180000
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007e73d8    8b442408
                         {disp8} mov      ecx, dword ptr [esp + 0x0c]                   // 0x007e73dc    8b4c240c
                         {disp8} mov      dword ptr [esi + 0x20], eax                   // 0x007e73e0    894620
                         xor.s            eax, eax                                      // 0x007e73e3    33c0
                         {disp8} mov      dword ptr [esi + 0x24], ecx                   // 0x007e73e5    894e24
                         {disp8} mov      dword ptr [esi + 0x28], eax                   // 0x007e73e8    894628
                         mov              dword ptr [esi], 0xffffffff                   // 0x007e73eb    c706ffffffff
                         {disp8} mov      dword ptr [esi + 0x04], eax                   // 0x007e73f1    894604
                         pop              esi                                           // 0x007e73f4    5e
                         ret              0x000c                                        // 0x007e73f5    c20c00
                         nop                                                            // 0x007e73f8    90
                         nop                                                            // 0x007e73f9    90
                         nop                                                            // 0x007e73fa    90
                         nop                                                            // 0x007e73fb    90
                         nop                                                            // 0x007e73fc    90
                         nop                                                            // 0x007e73fd    90
                         nop                                                            // 0x007e73fe    90
                         nop                                                            // 0x007e73ff    90
@LoadOneLine__12LHScriptX_c_FR16LHReleasedOSFilePc@16:    sub              esp, 0x0c                                     // 0x007e7400    83ec0c
                         push             ebx                                           // 0x007e7403    53
                         {disp8} mov      ebx, dword ptr [esp + 0x18]                   // 0x007e7404    8b5c2418
                         push             ebp                                           // 0x007e7408    55
                         {disp8} mov      ebp, dword ptr [esp + 0x18]                   // 0x007e7409    8b6c2418
                         push             esi                                           // 0x007e740d    56
                         {disp8} lea      eax, dword ptr [esp + 0x0c]                   // 0x007e740e    8d44240c
                         push             edi                                           // 0x007e7412    57
                         mov.s            esi, ecx                                      // 0x007e7413    8bf1
                         push             eax                                           // 0x007e7415    50
                         xor.s            edi, edi                                      // 0x007e7416    33ff
                         push             0x1                                           // 0x007e7418    6a01
                         push             ebx                                           // 0x007e741a    53
                         mov.s            ecx, ebp                                      // 0x007e741b    8bcd
                         {disp8} mov      dword ptr [esp + 0x24], esi                   // 0x007e741d    89742424
                         {disp8} mov      dword ptr [esp + 0x20], edi                   // 0x007e7421    897c2420
                         {disp8} mov      dword ptr [esp + 0x1c], edi                   // 0x007e7425    897c241c
                         call             @Read__8LHOSFileFPvUlPUl@20                   // 0x007e7429    e8b254fdff
                         cmp              eax, 0x03                                     // 0x007e742e    83f803
                         {disp8} je       _jmp_addr_0x007e7464                          // 0x007e7431    7431
                         mov.s            esi, ebx                                      // 0x007e7433    8bf3
_jmp_addr_0x007e7435:    {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007e7435    8b442410
                         test             eax, eax                                      // 0x007e7439    85c0
                         {disp8} je       _jmp_addr_0x007e7460                          // 0x007e743b    7423
                         cmp              byte ptr [esi], 0x0a                          // 0x007e743d    803e0a
                         {disp8} je       _jmp_addr_0x007e746e                          // 0x007e7440    742c
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x007e7442    8d4c2410
                         inc              edi                                           // 0x007e7446    47
                         inc              esi                                           // 0x007e7447    46
                         push             ecx                                           // 0x007e7448    51
                         push             0x1                                           // 0x007e7449    6a01
                         push             esi                                           // 0x007e744b    56
                         mov.s            ecx, ebp                                      // 0x007e744c    8bcd
                         {disp8} mov      dword ptr [esp + 0x1c], 0x00000000            // 0x007e744e    c744241c00000000
                         call             @Read__8LHOSFileFPvUlPUl@20                   // 0x007e7456    e88554fdff
                         cmp              eax, 0x03                                     // 0x007e745b    83f803
                         {disp8} jne      _jmp_addr_0x007e7435                          // 0x007e745e    75d5
_jmp_addr_0x007e7460:    {disp8} mov      esi, dword ptr [esp + 0x18]                   // 0x007e7460    8b742418
_jmp_addr_0x007e7464:    {disp8} mov      dword ptr [esp + 0x14], 0x00000002            // 0x007e7464    c744241402000000
                         {disp8} jmp      _jmp_addr_0x007e7472                          // 0x007e746c    eb04
_jmp_addr_0x007e746e:    {disp8} mov      esi, dword ptr [esp + 0x18]                   // 0x007e746e    8b742418
_jmp_addr_0x007e7472:    test             edi, edi                                      // 0x007e7472    85ff
                         {disp8} je       _jmp_addr_0x007e74a9                          // 0x007e7474    7433
                         mov              byte ptr [edi + ebx * 0x1], 0x00              // 0x007e7476    c6041f00
                         {disp8} mov      edx, dword ptr [esi + 0x04]                   // 0x007e747a    8b5604
                         push             0x000001ff                                    // 0x007e747d    68ff010000
                         inc              edx                                           // 0x007e7482    42
                         push             ebx                                           // 0x007e7483    53
                         push             0x00c341c0                                    // 0x007e7484    68c041c300
                         {disp8} mov      dword ptr [esi + 0x04], edx                   // 0x007e7489    895604
                         call             _strncpy                                      // 0x007e748c    e80f1cfeff
                         add              esp, 0x0c                                     // 0x007e7491    83c40c
                         mov.s            ecx, esi                                      // 0x007e7494    8bce
                         push             ebx                                           // 0x007e7496    53
                         call             @ScanLine__12LHScriptX_c_FPc@12               // 0x007e7497    e8a4000000
                         cmp              eax, 0x03                                     // 0x007e749c    83f803
                         {disp8} jne      _jmp_addr_0x007e74a9                          // 0x007e749f    7508
                         {disp8} mov      dword ptr [esp + 0x14], 0x00000002            // 0x007e74a1    c744241402000000
_jmp_addr_0x007e74a9:    {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007e74a9    8b4c2414
                         xor.s            eax, eax                                      // 0x007e74ad    33c0
                         pop              edi                                           // 0x007e74af    5f
                         pop              esi                                           // 0x007e74b0    5e
                         test             ecx, ecx                                      // 0x007e74b1    85c9
                         pop              ebp                                           // 0x007e74b3    5d
                         pop              ebx                                           // 0x007e74b4    5b
                         sete             al                                            // 0x007e74b5    0f94c0
                         add              esp, 0x0c                                     // 0x007e74b8    83c40c
                         ret              0x0008                                        // 0x007e74bb    c20800
                         nop                                                            // 0x007e74be    90
                         nop                                                            // 0x007e74bf    90
_jmp_addr_0x007e74c0:    push             ecx                                           // 0x007e74c0    51
                         {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007e74c1    8b442410
                         push             ebx                                           // 0x007e74c5    53
                         push             ebp                                           // 0x007e74c6    55
                         xor.s            ebp, ebp                                      // 0x007e74c7    33ed
                         xor.s            ebx, ebx                                      // 0x007e74c9    33db
                         push             esi                                           // 0x007e74cb    56
                         cmp.s            eax, ebp                                      // 0x007e74cc    3bc5
                         push             edi                                           // 0x007e74ce    57
                         {disp8} mov      dword ptr [esp + 0x10], ebp                   // 0x007e74cf    896c2410
                         {disp8} jbe      _jmp_addr_0x007e751d                          // 0x007e74d3    7648
                         {disp8} mov      edi, dword ptr [esp + 0x18]                   // 0x007e74d5    8b7c2418
_jmp_addr_0x007e74d9:    cmp.s            ebx, ebp                                      // 0x007e74d9    3bdd
                         {disp8} jne      _jmp_addr_0x007e751d                          // 0x007e74db    7540
                         {disp8} mov      esi, dword ptr [esp + 0x1c]                   // 0x007e74dd    8b74241c
_jmp_addr_0x007e74e1:    {disp8} lea      eax, dword ptr [esp + 0x18]                   // 0x007e74e1    8d442418
                         mov.s            ecx, edi                                      // 0x007e74e5    8bcf
                         push             eax                                           // 0x007e74e7    50
                         push             0x1                                           // 0x007e74e8    6a01
                         push             esi                                           // 0x007e74ea    56
                         {disp8} mov      dword ptr [esp + 0x24], ebp                   // 0x007e74eb    896c2424
                         call             @Read__8LHOSFileFPvUlPUl@20                   // 0x007e74ef    e8ec53fdff
                         cmp              eax, 0x03                                     // 0x007e74f4    83f803
                         {disp8} je       _jmp_addr_0x007e74ff                          // 0x007e74f7    7406
                         cmp              dword ptr [esp + 0x18], ebp                   // 0x007e74f9    396c2418
                         {disp8} jne      _jmp_addr_0x007e7504                          // 0x007e74fd    7505
_jmp_addr_0x007e74ff:    mov              ebx, 0x00000002                               // 0x007e74ff    bb02000000
_jmp_addr_0x007e7504:    cmp              byte ptr [esi], 0x0a                          // 0x007e7504    803e0a
                         {disp8} je       _jmp_addr_0x007e750c                          // 0x007e7507    7403
                         inc              esi                                           // 0x007e7509    46
                         {disp8} jmp      _jmp_addr_0x007e74e1                          // 0x007e750a    ebd5
_jmp_addr_0x007e750c:    {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007e750c    8b442410
                         {disp8} mov      ecx, dword ptr [esp + 0x20]                   // 0x007e7510    8b4c2420
                         inc              eax                                           // 0x007e7514    40
                         cmp.s            eax, ecx                                      // 0x007e7515    3bc1
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x007e7517    89442410
                         .byte            0x72, 0xbc// {disp8} jb _jmp_addr_0x007e74d9  // 0x007e751b    72bc
_jmp_addr_0x007e751d:    xor.s            eax, eax                                      // 0x007e751d    33c0
                         pop              edi                                           // 0x007e751f    5f
                         cmp.s            ebx, ebp                                      // 0x007e7520    3bdd
                         pop              esi                                           // 0x007e7522    5e
                         pop              ebp                                           // 0x007e7523    5d
                         pop              ebx                                           // 0x007e7524    5b
                         sete             al                                            // 0x007e7525    0f94c0
                         pop              ecx                                           // 0x007e7528    59
                         ret              0x000c                                        // 0x007e7529    c20c00
                         nop                                                            // 0x007e752c    90
                         nop                                                            // 0x007e752d    90
                         nop                                                            // 0x007e752e    90
                         nop                                                            // 0x007e752f    90
_jmp_addr_0x007e7530:    mov              dword ptr [ecx], 0xffffffff                   // 0x007e7530    c701ffffffff
                         ret                                                            // 0x007e7536    c3
                         nop                                                            // 0x007e7537    90
                         nop                                                            // 0x007e7538    90
                         nop                                                            // 0x007e7539    90
                         nop                                                            // 0x007e753a    90
                         nop                                                            // 0x007e753b    90
                         nop                                                            // 0x007e753c    90
                         nop                                                            // 0x007e753d    90
                         nop                                                            // 0x007e753e    90
                         nop                                                            // 0x007e753f    90
@ScanLine__12LHScriptX_c_FPc@12:    sub              esp, 0x000003fc                               // 0x007e7540    81ecfc030000
                         push             ebx                                           // 0x007e7546    53
                         push             ebp                                           // 0x007e7547    55
                         mov.s            ebp, ecx                                      // 0x007e7548    8be9
                         push             esi                                           // 0x007e754a    56
                         push             edi                                           // 0x007e754b    57
                         {disp8} mov      dword ptr [esp + 0x18], ebp                   // 0x007e754c    896c2418
                         {disp8} mov      byte ptr [esp + 0x13], 0x00                   // 0x007e7550    c644241300
_jmp_addr_0x007e7555:    {disp8} lea      eax, dword ptr [esp + 0x13]                   // 0x007e7555    8d442413
                         {disp8} lea      ecx, dword ptr [esp + 0x24]                   // 0x007e7559    8d4c2424
                         push             eax                                           // 0x007e755d    50
                         {disp32} lea     edx, dword ptr [esp + 0x00000414]             // 0x007e755e    8d942414040000
                         mov              esi, 0x00000001                               // 0x007e7565    be01000000
                         push             ecx                                           // 0x007e756a    51
                         push             edx                                           // 0x007e756b    52
                         mov.s            ecx, ebp                                      // 0x007e756c    8bcd
                         {disp8} mov      dword ptr [esp + 0x28], esi                   // 0x007e756e    89742428
                         {disp8} mov      dword ptr [esp + 0x2c], 0x00000000            // 0x007e7572    c744242c00000000
                         call             _jmp_addr_0x007e8a90                          // 0x007e757a    e811150000
                         cmp              eax, 0x1e                                     // 0x007e757f    83f81e
                         {disp8} mov      dword ptr [esp + 0x14], eax                   // 0x007e7582    89442414
                         {disp32} ja      _jmp_addr_0x007e76db                          // 0x007e7586    0f874f010000
                         xor.s            ecx, ecx                                      // 0x007e758c    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x007e78d8]               // 0x007e758e    8a88d8787e00
                         jmp              dword ptr [ecx*4 + 0x7e78c0]                  // 0x007e7594    ff248dc0787e00
                         {disp8} mov      eax, dword ptr [ebp + 0x00]                   // 0x007e759b    8b4500
                         cmp              eax, -0x01                                    // 0x007e759e    83f8ff
                         {disp8} lea      edx, dword ptr [eax + -0x01]                  // 0x007e75a1    8d50ff
                         {disp8} mov      dword ptr [ebp + 0x00], edx                   // 0x007e75a4    895500
                         {disp32} jle     _jmp_addr_0x007e78ae                          // 0x007e75a7    0f8e01030000
                         {disp32} jmp     _jmp_addr_0x007e7893                          // 0x007e75ad    e9e1020000
                         {disp8} lea      eax, dword ptr [esp + 0x24]                   // 0x007e75b2    8d442424
                         mov.s            ecx, ebp                                      // 0x007e75b6    8bcd
                         push             eax                                           // 0x007e75b8    50
                         call             _jmp_addr_0x007e8d10                          // 0x007e75b9    e852170000
                         mov.s            esi, eax                                      // 0x007e75be    8bf0
                         test             esi, esi                                      // 0x007e75c0    85f6
                         {disp32} je      _jmp_addr_0x007e78ae                          // 0x007e75c2    0f84e6020000
                         {disp8} lea      ecx, dword ptr [esp + 0x13]                   // 0x007e75c8    8d4c2413
                         {disp8} lea      edx, dword ptr [esp + 0x24]                   // 0x007e75cc    8d542424
                         push             ecx                                           // 0x007e75d0    51
                         {disp32} lea     eax, dword ptr [esp + 0x00000414]             // 0x007e75d1    8d842414040000
                         push             edx                                           // 0x007e75d8    52
                         push             eax                                           // 0x007e75d9    50
                         mov.s            ecx, ebp                                      // 0x007e75da    8bcd
                         call             _jmp_addr_0x007e8a90                          // 0x007e75dc    e8af140000
                         {disp8} mov      al, byte ptr [esp + 0x13]                     // 0x007e75e1    8a442413
                         test             al, al                                        // 0x007e75e5    84c0
                         {disp32} jne     _jmp_addr_0x007e78ae                          // 0x007e75e7    0f85c1020000
                         cmp              byte ptr [esp + 0x24], 0x3d                   // 0x007e75ed    807c24243d
                         {disp32} jne     _jmp_addr_0x007e78ae                          // 0x007e75f2    0f85b6020000
                         {disp8} lea      ecx, dword ptr [esp + 0x13]                   // 0x007e75f8    8d4c2413
                         {disp8} lea      edx, dword ptr [esp + 0x24]                   // 0x007e75fc    8d542424
                         push             ecx                                           // 0x007e7600    51
                         {disp32} lea     eax, dword ptr [esp + 0x00000414]             // 0x007e7601    8d842414040000
                         push             edx                                           // 0x007e7608    52
                         push             eax                                           // 0x007e7609    50
                         mov.s            ecx, ebp                                      // 0x007e760a    8bcd
                         call             _jmp_addr_0x007e8a90                          // 0x007e760c    e87f140000
                         mov              eax, dword ptr [esi]                          // 0x007e7611    8b06
                         sub              eax, 0x00                                     // 0x007e7613    83e800
                         {disp8} je       _jmp_addr_0x007e7683                          // 0x007e7616    746b
                         dec              eax                                           // 0x007e7618    48
                         {disp8} je       _jmp_addr_0x007e7637                          // 0x007e7619    741c
                         dec              eax                                           // 0x007e761b    48
                         {disp32} jne     _jmp_addr_0x007e7893                          // 0x007e761c    0f8571020000
                         {disp8} lea      ecx, dword ptr [esp + 0x24]                   // 0x007e7622    8d4c2424
                         push             ecx                                           // 0x007e7626    51
                         call             _jmp_addr_0x007e6f70                          // 0x007e7627    e844f9ffff
                         {disp8} fstp     dword ptr [esi + 0x08]                        // 0x007e762c    d95e08
                         add              esp, 0x04                                     // 0x007e762f    83c404
                         {disp32} jmp     _jmp_addr_0x007e7893                          // 0x007e7632    e95c020000
_jmp_addr_0x007e7637:    {disp8} mov      eax, dword ptr [esi + 0x08]                   // 0x007e7637    8b4608
                         test             eax, eax                                      // 0x007e763a    85c0
                         {disp8} je       _jmp_addr_0x007e7647                          // 0x007e763c    7409
                         push             eax                                           // 0x007e763e    50
                         call             ??3@YAXPAX@Z                                  // 0x007e763f    e85478fcff
                         add              esp, 0x04                                     // 0x007e7644    83c404
_jmp_addr_0x007e7647:    {disp8} lea      edx, dword ptr [esp + 0x24]                   // 0x007e7647    8d542424
                         push             edx                                           // 0x007e764b    52
                         call             _jmp_addr_0x007e6da0                          // 0x007e764c    e84ff7ffff
                         push             0x000002e1                                    // 0x007e7651    68e1020000
                         inc              eax                                           // 0x007e7656    40
                         push             0x00c34da4                                    // 0x007e7657    68a44dc300
                         push             eax                                           // 0x007e765c    50
                         call             ___nw__FUl                                    // 0x007e765d    e82e41ffff
                         add              esp, 0x10                                     // 0x007e7662    83c410
                         {disp8} mov      dword ptr [esi + 0x08], eax                   // 0x007e7665    894608
                         test             eax, eax                                      // 0x007e7668    85c0
                         {disp32} je      _jmp_addr_0x007e78ae                          // 0x007e766a    0f843e020000
                         {disp8} lea      ecx, dword ptr [esp + 0x24]                   // 0x007e7670    8d4c2424
                         push             ecx                                           // 0x007e7674    51
                         push             eax                                           // 0x007e7675    50
                         call             _jmp_addr_0x007e6d70                          // 0x007e7676    e8f5f6ffff
                         add              esp, 0x08                                     // 0x007e767b    83c408
                         {disp32} jmp     _jmp_addr_0x007e7893                          // 0x007e767e    e910020000
_jmp_addr_0x007e7683:    {disp8} lea      edx, dword ptr [esp + 0x24]                   // 0x007e7683    8d542424
                         push             edx                                           // 0x007e7687    52
                         call             _jmp_addr_0x007e6f80                          // 0x007e7688    e8f3f8ffff
                         add              esp, 0x04                                     // 0x007e768d    83c404
                         {disp8} mov      dword ptr [esi + 0x08], eax                   // 0x007e7690    894608
                         {disp32} jmp     _jmp_addr_0x007e7893                          // 0x007e7693    e9fb010000
                         {disp8} mov      eax, dword ptr [ebp + 0x00]                   // 0x007e7698    8b4500
                         cmp              eax, -0x01                                    // 0x007e769b    83f8ff
                         {disp8} je       _jmp_addr_0x007e76ac                          // 0x007e769e    740c
                         {disp8} mov      cl, byte ptr [eax + ebp * 0x1 + 0x08]         // 0x007e76a0    8a4c2808
                         test             cl, cl                                        // 0x007e76a4    84c9
                         {disp32} je      _jmp_addr_0x007e789f                          // 0x007e76a6    0f84f3010000
_jmp_addr_0x007e76ac:    {disp8} lea      eax, dword ptr [esp + 0x13]                   // 0x007e76ac    8d442413
                         {disp8} lea      ecx, dword ptr [esp + 0x24]                   // 0x007e76b0    8d4c2424
                         push             eax                                           // 0x007e76b4    50
                         {disp32} lea     edx, dword ptr [esp + 0x00000414]             // 0x007e76b5    8d942414040000
                         push             ecx                                           // 0x007e76bc    51
                         push             edx                                           // 0x007e76bd    52
                         mov.s            ecx, ebp                                      // 0x007e76be    8bcd
                         call             _jmp_addr_0x007e8a90                          // 0x007e76c0    e8cb130000
                         test             eax, eax                                      // 0x007e76c5    85c0
                         {disp8} mov      dword ptr [esp + 0x14], eax                   // 0x007e76c7    89442414
                         {disp8} je       _jmp_addr_0x007e76d7                          // 0x007e76cb    740a
                         {disp8} mov      dword ptr [esp + 0x1c], 0x00000002            // 0x007e76cd    c744241c02000000
                         {disp8} jmp      _jmp_addr_0x007e76db                          // 0x007e76d5    eb04
_jmp_addr_0x007e76d7:    {disp8} mov      dword ptr [esp + 0x20], esi                   // 0x007e76d7    89742420
_jmp_addr_0x007e76db:    {disp8} mov      eax, dword ptr [ebp + 0x00]                   // 0x007e76db    8b4500
                         cmp              eax, -0x01                                    // 0x007e76de    83f8ff
                         {disp8} je       _jmp_addr_0x007e76ef                          // 0x007e76e1    740c
                         {disp8} mov      cl, byte ptr [eax + ebp * 0x1 + 0x08]         // 0x007e76e3    8a4c2808
                         test             cl, cl                                        // 0x007e76e7    84c9
                         {disp32} je      _jmp_addr_0x007e789f                          // 0x007e76e9    0f84b0010000
_jmp_addr_0x007e76ef:    {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x007e76ef    8b442414
                         test             eax, eax                                      // 0x007e76f3    85c0
                         {disp8} jle      _jmp_addr_0x007e7702                          // 0x007e76f5    7e0b
                         shl              eax, 4                                        // 0x007e76f7    c1e004
                         {disp32} lea     ebx, dword ptr [eax + 0x00c343b0]             // 0x007e76fa    8d98b043c300
                         {disp8} jmp      _jmp_addr_0x007e770b                          // 0x007e7700    eb09
_jmp_addr_0x007e7702:    {disp8} mov      ebx, dword ptr [ebp + 0x20]                   // 0x007e7702    8b5d20
                         inc              eax                                           // 0x007e7705    40
                         shl              eax, 4                                        // 0x007e7706    c1e004
                         sub.s            ebx, eax                                      // 0x007e7709    2bd8
_jmp_addr_0x007e770b:    cmp              dword ptr [esp + 0x1c], esi                   // 0x007e770b    3974241c
                         {disp32} jl      _jmp_addr_0x007e7893                          // 0x007e770f    0f8c7e010000
_jmp_addr_0x007e7715:    {disp8} mov      esi, dword ptr [esp + 0x20]                   // 0x007e7715    8b742420
                         cmp              esi, 0x0c                                     // 0x007e7719    83fe0c
                         mov.s            edi, esi                                      // 0x007e771c    8bfe
                         {disp32} jae     _jmp_addr_0x007e7803                          // 0x007e771e    0f83df000000
                         {disp32} lea     ebp, dword ptr [esi * 0x4 + 0x00fbfd70]       // 0x007e7724    8d2cb570fdfb00
                         shl              esi, 0xb                                      // 0x007e772b    c1e60b
                         add              esi, 0x00fb9d40                               // 0x007e772e    81c6409dfb00
_jmp_addr_0x007e7734:    cmp              byte ptr [ebx + edi * 0x1 + 0x04], 0x20       // 0x007e7734    807c3b0420
                         {disp32} je      _jmp_addr_0x007e77ff                          // 0x007e7739    0f84c0000000
                         {disp8} mov      al, byte ptr [esp + 0x13]                     // 0x007e773f    8a442413
                         test             al, al                                        // 0x007e7743    84c0
                         {disp32} jne     _jmp_addr_0x007e77ff                          // 0x007e7745    0f85b4000000
                         {disp8} lea      eax, dword ptr [esp + 0x13]                   // 0x007e774b    8d442413
                         {disp32} lea     ecx, dword ptr [esp + 0x00000410]             // 0x007e774f    8d8c2410040000
                         push             eax                                           // 0x007e7756    50
                         push             esi                                           // 0x007e7757    56
                         push             ecx                                           // 0x007e7758    51
                         {disp8} mov      ecx, dword ptr [esp + 0x24]                   // 0x007e7759    8b4c2424
                         call             _jmp_addr_0x007e8a90                          // 0x007e775d    e82e130000
                         cmp              eax, 0x1e                                     // 0x007e7762    83f81e
                         {disp8} jne      _jmp_addr_0x007e77c3                          // 0x007e7765    755c
                         {disp8} mov      ecx, dword ptr [esp + 0x18]                   // 0x007e7767    8b4c2418
                         push             esi                                           // 0x007e776b    56
                         call             _jmp_addr_0x007e8d10                          // 0x007e776c    e89f150000
                         test             eax, eax                                      // 0x007e7771    85c0
                         {disp32} je      _jmp_addr_0x007e78ae                          // 0x007e7773    0f8435010000
                         mov              ecx, dword ptr [eax]                          // 0x007e7779    8b08
                         sub              ecx, 0x00                                     // 0x007e777b    83e900
                         {disp8} je       _jmp_addr_0x007e77b0                          // 0x007e777e    7430
                         dec              ecx                                           // 0x007e7780    49
                         {disp8} je       _jmp_addr_0x007e7799                          // 0x007e7781    7416
                         dec              ecx                                           // 0x007e7783    49
                         {disp8} jne      _jmp_addr_0x007e77e9                          // 0x007e7784    7563
                         cmp              byte ptr [ebx + edi * 0x1 + 0x04], 0x46       // 0x007e7786    807c3b0446
                         {disp32} jne     _jmp_addr_0x007e78ae                          // 0x007e778b    0f851d010000
                         {disp8} mov      edx, dword ptr [eax + 0x08]                   // 0x007e7791    8b5008
                         {disp8} mov      dword ptr [ebp + 0x00], edx                   // 0x007e7794    895500
                         {disp8} jmp      _jmp_addr_0x007e77e9                          // 0x007e7797    eb50
_jmp_addr_0x007e7799:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x007e7799    8b4008
                         test             eax, eax                                      // 0x007e779c    85c0
                         {disp32} je      _jmp_addr_0x007e78ae                          // 0x007e779e    0f840a010000
                         push             eax                                           // 0x007e77a4    50
                         push             esi                                           // 0x007e77a5    56
                         call             _jmp_addr_0x007e6d70                          // 0x007e77a6    e8c5f5ffff
                         add              esp, 0x08                                     // 0x007e77ab    83c408
                         {disp8} jmp      _jmp_addr_0x007e77e9                          // 0x007e77ae    eb39
_jmp_addr_0x007e77b0:    cmp              byte ptr [ebx + edi * 0x1 + 0x04], 0x4e       // 0x007e77b0    807c3b044e
                         {disp32} jne     _jmp_addr_0x007e78ae                          // 0x007e77b5    0f85f3000000
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x007e77bb    8b4008
                         {disp8} mov      dword ptr [ebp + -0x30], eax                  // 0x007e77be    8945d0
                         {disp8} jmp      _jmp_addr_0x007e77e9                          // 0x007e77c1    eb26
_jmp_addr_0x007e77c3:    {disp8} mov      al, byte ptr [ebx + edi * 0x1 + 0x04]         // 0x007e77c3    8a443b04
                         cmp              al, 0x4e                                      // 0x007e77c7    3c4e
                         {disp8} jne      _jmp_addr_0x007e77d9                          // 0x007e77c9    750e
                         push             esi                                           // 0x007e77cb    56
                         call             _jmp_addr_0x007e6f90                          // 0x007e77cc    e8bff7ffff
                         add              esp, 0x04                                     // 0x007e77d1    83c404
                         {disp8} mov      dword ptr [ebp + -0x30], eax                  // 0x007e77d4    8945d0
                         {disp8} jmp      _jmp_addr_0x007e77e9                          // 0x007e77d7    eb10
_jmp_addr_0x007e77d9:    cmp              al, 0x46                                      // 0x007e77d9    3c46
                         {disp8} jne      _jmp_addr_0x007e77e9                          // 0x007e77db    750c
                         push             esi                                           // 0x007e77dd    56
                         call             _jmp_addr_0x007e6f70                          // 0x007e77de    e88df7ffff
                         {disp8} fstp     dword ptr [ebp + 0x00]                        // 0x007e77e3    d95d00
                         add              esp, 0x04                                     // 0x007e77e6    83c404
_jmp_addr_0x007e77e9:    add              esi, 0x00000800                               // 0x007e77e9    81c600080000
                         inc              edi                                           // 0x007e77ef    47
                         add              ebp, 0x04                                     // 0x007e77f0    83c504
                         cmp              esi, 0x00fbfd40                               // 0x007e77f3    81fe40fdfb00
                         {disp32} jb      _jmp_addr_0x007e7734                          // 0x007e77f9    0f8235ffffff
_jmp_addr_0x007e77ff:    {disp8} mov      ebp, dword ptr [esp + 0x18]                   // 0x007e77ff    8b6c2418
_jmp_addr_0x007e7803:    cmp              edi, 0x0c                                     // 0x007e7803    83ff0c
                         {disp8} je       _jmp_addr_0x007e782c                          // 0x007e7806    7424
                         {disp8} mov      al, byte ptr [ebx + edi * 0x1 + 0x04]         // 0x007e7808    8a443b04
                         cmp              al, 0x4c                                      // 0x007e780c    3c4c
                         {disp32} je      _jmp_addr_0x007e78ae                          // 0x007e780e    0f849a000000
                         cmp              al, 0x41                                      // 0x007e7814    3c41
                         {disp32} je      _jmp_addr_0x007e78ae                          // 0x007e7816    0f8492000000
                         cmp              al, 0x4e                                      // 0x007e781c    3c4e
                         {disp32} je      _jmp_addr_0x007e78ae                          // 0x007e781e    0f848a000000
                         cmp              al, 0x46                                      // 0x007e7824    3c46
                         {disp32} je      _jmp_addr_0x007e78ae                          // 0x007e7826    0f8482000000
_jmp_addr_0x007e782c:    {disp8} mov      esi, dword ptr [esp + 0x1c]                   // 0x007e782c    8b74241c
                         cmp              esi, 0x02                                     // 0x007e7830    83fe02
                         {disp8} jne      _jmp_addr_0x007e7874                          // 0x007e7833    753f
                         cmp              byte ptr [esp + 0x13], 0x01                   // 0x007e7835    807c241301
                         {disp8} je       _jmp_addr_0x007e78ae                          // 0x007e783a    7472
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007e783c    8b4c2414
                         push             0xa                                           // 0x007e7840    6a0a
                         push             0x00fb9d40                                    // 0x007e7842    68409dfb00
                         push             0x00fb9d40                                    // 0x007e7847    68409dfb00
                         push             ecx                                           // 0x007e784c    51
                         mov.s            ecx, ebp                                      // 0x007e784d    8bcd
                         call             _jmp_addr_0x007e8240                          // 0x007e784f    e8ec090000
                         push             eax                                           // 0x007e7854    50
                         call             _jmp_addr_0x007e7220                          // 0x007e7855    e8c6f9ffff
                         add              esp, 0x0c                                     // 0x007e785a    83c40c
                         mov              ebx, 0x00c34560                               // 0x007e785d    bb6045c300
                         {disp8} mov      dword ptr [esp + 0x14], 0x0000001b            // 0x007e7862    c74424141b000000
                         {disp8} mov      dword ptr [esp + 0x20], 0x00000001            // 0x007e786a    c744242001000000
                         {disp8} jmp      _jmp_addr_0x007e7885                          // 0x007e7872    eb11
_jmp_addr_0x007e7874:    {disp8} mov      edx, dword ptr [esp + 0x14]                   // 0x007e7874    8b542414
                         push             0x00fb9d40                                    // 0x007e7878    68409dfb00
                         push             edx                                           // 0x007e787d    52
                         mov.s            ecx, ebp                                      // 0x007e787e    8bcd
                         call             _jmp_addr_0x007e8240                          // 0x007e7880    e8bb090000
_jmp_addr_0x007e7885:    dec              esi                                           // 0x007e7885    4e
                         cmp              esi, 0x01                                     // 0x007e7886    83fe01
                         {disp8} mov      dword ptr [esp + 0x1c], esi                   // 0x007e7889    8974241c
                         {disp32} jge     _jmp_addr_0x007e7715                          // 0x007e788d    0f8d82feffff
_jmp_addr_0x007e7893:    {disp8} mov      al, byte ptr [esp + 0x13]                     // 0x007e7893    8a442413
                         test             al, al                                        // 0x007e7897    84c0
                         {disp32} je      _jmp_addr_0x007e7555                          // 0x007e7899    0f84b6fcffff
_jmp_addr_0x007e789f:    pop              edi                                           // 0x007e789f    5f
                         pop              esi                                           // 0x007e78a0    5e
                         pop              ebp                                           // 0x007e78a1    5d
                         xor.s            eax, eax                                      // 0x007e78a2    33c0
                         pop              ebx                                           // 0x007e78a4    5b
                         add              esp, 0x000003fc                               // 0x007e78a5    81c4fc030000
                         ret              0x0004                                        // 0x007e78ab    c20400
_jmp_addr_0x007e78ae:    pop              edi                                           // 0x007e78ae    5f
                         pop              esi                                           // 0x007e78af    5e
                         pop              ebp                                           // 0x007e78b0    5d
                         mov              eax, 0x00000003                               // 0x007e78b1    b803000000
                         pop              ebx                                           // 0x007e78b6    5b
                         add              esp, 0x000003fc                               // 0x007e78b7    81c4fc030000
                         ret              0x0004                                        // 0x007e78bd    c20400

// Snippet: jmptbl, [0x007e78c0, 0x007e78d8)
.byte 0x93, 0x78, 0x7e, 0x00      // 0x007e78c0
.byte 0x98, 0x76, 0x7e, 0x00      // 0x007e78c4
.byte 0x9b, 0x75, 0x7e, 0x00      // 0x007e78c8
.byte 0x9f, 0x78, 0x7e, 0x00      // 0x007e78cc
.byte 0xb2, 0x75, 0x7e, 0x00      // 0x007e78d0
.byte 0xdb, 0x76, 0x7e, 0x00      // 0x007e78d4

// Snippet: ijmptbl, [0x007e78d8, 0x007e78f7)
.byte 0x00, 0x05, 0x05, 0x05      // 0x007e78d8
.byte 0x05, 0x05, 0x05, 0x05      // 0x007e78dc
.byte 0x05, 0x05, 0x05, 0x05      // 0x007e78e0
.byte 0x05, 0x05, 0x05, 0x05      // 0x007e78e4
.byte 0x05, 0x05, 0x05, 0x05      // 0x007e78e8
.byte 0x05, 0x05, 0x05, 0x05      // 0x007e78ec
.byte 0x05, 0x05, 0x05, 0x01      // 0x007e78f0
.byte 0x02, 0x03, 0x04            // 0x007e78f4

// Snippet: db, [0x007e78f7, 0x007e7900)
.byte 0x90, 0x90, 0x90, 0x90      // 0x007e78f7
.byte 0x90, 0x90, 0x90, 0x90      // 0x007e78fb
.byte 0x90                        // 0x007e78ff

