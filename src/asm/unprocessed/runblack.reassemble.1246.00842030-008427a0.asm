.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x007dcad0
.extern _jmp_addr_0x008412b0
.extern _jmp_addr_0x00841660
.extern _jmp_addr_0x00841670
.extern _jmp_addr_0x00841680
.extern _BMan_Check__FP4Prssiii
.extern _jmp_addr_0x00841750

.globl _jmp_addr_0x00842030
.globl _jmp_addr_0x00842050
.globl _jmp_addr_0x008420f0
.globl _jmp_addr_0x00842100
.globl _jmp_addr_0x00842120
.globl _jmp_addr_0x00842150
.globl _jmp_addr_0x008421f0
.globl _jmp_addr_0x008423c0

.globl _globl_ct_0x00842190
.globl _globl_ct_0x008421b0
.globl _globl_ct_0x008421d0
.globl _PrssKey__4PrssF6LH_KEYUs
.globl _PrssMouse__4PrssFP10MouseInput
.globl ?Terminate@Prss@@UAEXXZ

start_0x00842030_0x008427a0:
// Snippet: asm, [0x00842030, 0x0084269a)
_jmp_addr_0x00842030:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x00842030    8b442404
                         test             eax, eax                                      // 0x00842034    85c0
                         {disp8} je       _jmp_addr_0x0084204f                          // 0x00842036    7417
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x5244b0]        // 0x00842038    8b0db0a4ee00
                         test             ecx, ecx                                      // 0x0084203e    85c9
                         {disp8} je       _jmp_addr_0x0084204f                          // 0x00842040    740d
                         mov              edx, dword ptr [ecx]                          // 0x00842042    8b11
                         push             esi                                           // 0x00842044    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]                   // 0x00842045    8b74240c
                         push             esi                                           // 0x00842049    56
                         push             eax                                           // 0x0084204a    50
                         call             dword ptr [edx + 0xc]                         // 0x0084204b    ff520c
                         pop              esi                                           // 0x0084204e    5e
_jmp_addr_0x0084204f:    ret                                                            // 0x0084204f    c3
_jmp_addr_0x00842050:    {disp32} mov     al, byte ptr [data_bytes + 0x4bf350]          // 0x00842050    a05053e800
                         sub              esp, 0x20                                     // 0x00842055    83ec20
                         mov              edx, 0x00000001                               // 0x00842058    ba01000000
                         test             dl, al                                        // 0x0084205d    84c2
                         push             ebx                                           // 0x0084205f    53
                         {disp8} je       _jmp_addr_0x0084209c                          // 0x00842060    743a
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x4bf30c]        // 0x00842062    8b0d0c53e800
                         {disp32} mov     bl, byte ptr [data_bytes + 0x4bf350]          // 0x00842068    8a1d5053e800
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4bf308]        // 0x0084206e    a10853e800
                         {disp8} mov      dword ptr [esp + 0x08], ecx                   // 0x00842073    894c2408
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x5244b0]        // 0x00842077    8b0db0a4ee00
                         and              bl, -0x02                                     // 0x0084207d    80e3fe
                         test             ecx, ecx                                      // 0x00842080    85c9
                         {disp32} mov     byte ptr [data_bytes + 0x4bf350], bl          // 0x00842082    881d5053e800
                         {disp8} mov      dword ptr [esp + 0x04], eax                   // 0x00842088    89442404
                         {disp8} mov      dword ptr [esp + 0x1c], edx                   // 0x0084208c    8954241c
                         {disp8} je       _jmp_addr_0x008420a2                          // 0x00842090    7410
                         mov              eax, dword ptr [ecx]                          // 0x00842092    8b01
                         {disp8} lea      edx, dword ptr [esp + 0x04]                   // 0x00842094    8d542404
                         push             edx                                           // 0x00842098    52
                         call             dword ptr [eax + 0x10]                        // 0x00842099    ff5010
_jmp_addr_0x0084209c:    {disp32} mov     ecx, dword ptr [data_bytes + 0x5244b0]        // 0x0084209c    8b0db0a4ee00
_jmp_addr_0x008420a2:    {disp32} mov     al, byte ptr [data_bytes + 0x4bf350]          // 0x008420a2    a05053e800
                         mov              edx, 0x00000002                               // 0x008420a7    ba02000000
                         test             dl, al                                        // 0x008420ac    84c2
                         {disp8} je       _jmp_addr_0x008420e6                          // 0x008420ae    7436
                         {disp32} mov     bl, byte ptr [data_bytes + 0x4bf350]          // 0x008420b0    8a1d5053e800
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4bf2c0]        // 0x008420b6    a1c052e800
                         push             esi                                           // 0x008420bb    56
                         {disp32} mov     esi, dword ptr [data_bytes + 0x4bf2c4]        // 0x008420bc    8b35c452e800
                         and              bl, -0x03                                     // 0x008420c2    80e3fd
                         test             ecx, ecx                                      // 0x008420c5    85c9
                         {disp8} mov      dword ptr [esp + 0x0c], esi                   // 0x008420c7    8974240c
                         {disp32} mov     byte ptr [data_bytes + 0x4bf350], bl          // 0x008420cb    881d5053e800
                         {disp8} mov      dword ptr [esp + 0x08], eax                   // 0x008420d1    89442408
                         {disp8} mov      dword ptr [esp + 0x20], edx                   // 0x008420d5    89542420
                         pop              esi                                           // 0x008420d9    5e
                         {disp8} je       _jmp_addr_0x008420e6                          // 0x008420da    740a
                         mov              eax, dword ptr [ecx]                          // 0x008420dc    8b01
                         {disp8} lea      edx, dword ptr [esp + 0x04]                   // 0x008420de    8d542404
                         push             edx                                           // 0x008420e2    52
                         call             dword ptr [eax + 0x10]                        // 0x008420e3    ff5010
_jmp_addr_0x008420e6:    pop              ebx                                           // 0x008420e6    5b
                         add              esp, 0x20                                     // 0x008420e7    83c420
                         ret                                                            // 0x008420ea    c3
                         nop                                                            // 0x008420eb    90
                         nop                                                            // 0x008420ec    90
                         nop                                                            // 0x008420ed    90
                         nop                                                            // 0x008420ee    90
                         nop                                                            // 0x008420ef    90
_jmp_addr_0x008420f0:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x008420f0    8b442404
                         test             eax, eax                                      // 0x008420f4    85c0
                         {disp8} je       _jmp_addr_0x008420fb                          // 0x008420f6    7403
                         {disp8} mov      dword ptr [ecx + 0x08], eax                   // 0x008420f8    894108
_jmp_addr_0x008420fb:    ret              0x0004                                        // 0x008420fb    c20400
                         nop                                                            // 0x008420fe    90
                         nop                                                            // 0x008420ff    90
_jmp_addr_0x00842100:    push             esi                                           // 0x00842100    56
                         mov.s            esi, ecx                                      // 0x00842101    8bf1
                         {disp8} mov      ecx, dword ptr [esi + 0x08]                   // 0x00842103    8b4e08
                         test             ecx, ecx                                      // 0x00842106    85c9
                         {disp8} je       _jmp_addr_0x00842111                          // 0x00842108    7407
                         mov              eax, dword ptr [ecx]                          // 0x0084210a    8b01
                         call             dword ptr [eax]                               // 0x0084210c    ff10
                         {disp8} mov      dword ptr [esi + 0x08], eax                   // 0x0084210e    894608
_jmp_addr_0x00842111:    pop              esi                                           // 0x00842111    5e
                         ret                                                            // 0x00842112    c3
                         nop                                                            // 0x00842113    90
                         nop                                                            // 0x00842114    90
                         nop                                                            // 0x00842115    90
                         nop                                                            // 0x00842116    90
                         nop                                                            // 0x00842117    90
                         nop                                                            // 0x00842118    90
                         nop                                                            // 0x00842119    90
                         nop                                                            // 0x0084211a    90
                         nop                                                            // 0x0084211b    90
                         nop                                                            // 0x0084211c    90
                         nop                                                            // 0x0084211d    90
                         nop                                                            // 0x0084211e    90
                         nop                                                            // 0x0084211f    90
_jmp_addr_0x00842120:    {disp8} mov      ecx, dword ptr [ecx + 0x08]                   // 0x00842120    8b4908
                         test             ecx, ecx                                      // 0x00842123    85c9
                         {disp8} je       _jmp_addr_0x0084212c                          // 0x00842125    7405
                         mov              eax, dword ptr [ecx]                          // 0x00842127    8b01
                         {disp8} jmp      dword ptr [eax + 4]                           // 0x00842129    ff6004
_jmp_addr_0x0084212c:    ret                                                            // 0x0084212c    c3
                         nop                                                            // 0x0084212d    90
                         nop                                                            // 0x0084212e    90
                         nop                                                            // 0x0084212f    90
?Terminate@Prss@@UAEXXZ:
                         push             esi                                           // 0x00842130    56
                         mov.s            esi, ecx                                      // 0x00842131    8bf1
                         {disp8} mov      eax, dword ptr [esi + 0x04]                   // 0x00842133    8b4604
                         push             eax                                           // 0x00842136    50
                         call             _jmp_addr_0x00842150                          // 0x00842137    e814000000
                         add              esp, 0x04                                     // 0x0084213c    83c404
                         {disp8} mov      dword ptr [esi + 0x0c], 0x00000000            // 0x0084213f    c7460c00000000
                         pop              esi                                           // 0x00842146    5e
                         ret                                                            // 0x00842147    c3
                         nop                                                            // 0x00842148    90
                         nop                                                            // 0x00842149    90
                         nop                                                            // 0x0084214a    90
                         nop                                                            // 0x0084214b    90
                         nop                                                            // 0x0084214c    90
                         nop                                                            // 0x0084214d    90
                         nop                                                            // 0x0084214e    90
                         nop                                                            // 0x0084214f    90
_jmp_addr_0x00842150:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x00842150    8b442404
                         {disp32} mov     dword ptr [data_bytes + 0x5244b0], eax        // 0x00842154    a3b0a4ee00
                         ret                                                            // 0x00842159    c3
                         nop                                                            // 0x0084215a    90
                         nop                                                            // 0x0084215b    90
                         nop                                                            // 0x0084215c    90
                         nop                                                            // 0x0084215d    90
                         nop                                                            // 0x0084215e    90
                         nop                                                            // 0x0084215f    90
_PrssKey__4PrssF6LH_KEYUs:
                         cmp              dword ptr [esp + 0x04], 0x01                  // 0x00842160    837c240401
                         {disp8} jne      _jmp_addr_0x0084216c                          // 0x00842165    7505
                         mov              eax, dword ptr [ecx]                          // 0x00842167    8b01
                         call             dword ptr [eax + 8]                           // 0x00842169    ff5008
_jmp_addr_0x0084216c:    ret              0x0008                                        // 0x0084216c    c20800
                         nop                                                            // 0x0084216f    90
_PrssMouse__4PrssFP10MouseInput:
                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x00842170    8b442404
                         {disp8} mov      edx, dword ptr [eax + 0x18]                   // 0x00842174    8b5018
                         test             edx, edx                                      // 0x00842177    85d2
                         {disp8} je       _jmp_addr_0x0084218c                          // 0x00842179    7411
                         push             edx                                           // 0x0084217b    52
                         {disp8} mov      edx, dword ptr [eax + 0x04]                   // 0x0084217c    8b5004
                         mov              eax, dword ptr [eax]                          // 0x0084217f    8b00
                         push             edx                                           // 0x00842181    52
                         push             eax                                           // 0x00842182    50
                         push             ecx                                           // 0x00842183    51
                         call             _BMan_Check__FP4Prssiii                       // 0x00842184    e857f5ffff
                         add              esp, 0x10                                     // 0x00842189    83c410
_jmp_addr_0x0084218c:    ret              0x0004                                        // 0x0084218c    c20400
                         nop                                                            // 0x0084218f    90
_globl_ct_0x00842190:    {disp32} jmp     _jmp_addr_0x008421a0                          // 0x00842190    e90b000000
                         nop                                                            // 0x00842195    90
                         nop                                                            // 0x00842196    90
                         nop                                                            // 0x00842197    90
                         nop                                                            // 0x00842198    90
                         nop                                                            // 0x00842199    90
                         nop                                                            // 0x0084219a    90
                         nop                                                            // 0x0084219b    90
                         nop                                                            // 0x0084219c    90
                         nop                                                            // 0x0084219d    90
                         nop                                                            // 0x0084219e    90
                         nop                                                            // 0x0084219f    90
_jmp_addr_0x008421a0:    {disp32} mov     dword ptr [data_bytes + 0x524420], 0x009a3b1c // 0x008421a0    c70520a4ee001c3b9a00
                         ret                                                            // 0x008421aa    c3
                         nop                                                            // 0x008421ab    90
                         nop                                                            // 0x008421ac    90
                         nop                                                            // 0x008421ad    90
                         nop                                                            // 0x008421ae    90
                         nop                                                            // 0x008421af    90
_globl_ct_0x008421b0:    {disp32} jmp     _jmp_addr_0x008421c0                          // 0x008421b0    e90b000000
                         nop                                                            // 0x008421b5    90
                         nop                                                            // 0x008421b6    90
                         nop                                                            // 0x008421b7    90
                         nop                                                            // 0x008421b8    90
                         nop                                                            // 0x008421b9    90
                         nop                                                            // 0x008421ba    90
                         nop                                                            // 0x008421bb    90
                         nop                                                            // 0x008421bc    90
                         nop                                                            // 0x008421bd    90
                         nop                                                            // 0x008421be    90
                         nop                                                            // 0x008421bf    90
_jmp_addr_0x008421c0:    {disp32} mov     dword ptr [data_bytes + 0x5243b8], 0x009a3b38 // 0x008421c0    c705b8a3ee00383b9a00
                         ret                                                            // 0x008421ca    c3
                         nop                                                            // 0x008421cb    90
                         nop                                                            // 0x008421cc    90
                         nop                                                            // 0x008421cd    90
                         nop                                                            // 0x008421ce    90
                         nop                                                            // 0x008421cf    90
_globl_ct_0x008421d0:    {disp32} jmp     _jmp_addr_0x008421e0                          // 0x008421d0    e90b000000
                         nop                                                            // 0x008421d5    90
                         nop                                                            // 0x008421d6    90
                         nop                                                            // 0x008421d7    90
                         nop                                                            // 0x008421d8    90
                         nop                                                            // 0x008421d9    90
                         nop                                                            // 0x008421da    90
                         nop                                                            // 0x008421db    90
                         nop                                                            // 0x008421dc    90
                         nop                                                            // 0x008421dd    90
                         nop                                                            // 0x008421de    90
                         nop                                                            // 0x008421df    90
_jmp_addr_0x008421e0:    {disp32} mov     dword ptr [data_bytes + 0x524398], 0x009a3b54 // 0x008421e0    c70598a3ee00543b9a00
                         ret                                                            // 0x008421ea    c3
                         nop                                                            // 0x008421eb    90
                         nop                                                            // 0x008421ec    90
                         nop                                                            // 0x008421ed    90
                         nop                                                            // 0x008421ee    90
                         nop                                                            // 0x008421ef    90
_jmp_addr_0x008421f0:    {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x008421f0    8b442408
                         push             esi                                           // 0x008421f4    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                   // 0x008421f5    8b742408
                         push             eax                                           // 0x008421f9    50
                         push             esi                                           // 0x008421fa    56
                         mov              ecx, 0x00eea420                               // 0x008421fb    b920a4ee00
                         call             _jmp_addr_0x008422b0                          // 0x00842200    e8ab000000
                         push             0x00eea420                                    // 0x00842205    6820a4ee00
                         mov.s            ecx, esi                                      // 0x0084220a    8bce
                         call             _jmp_addr_0x008420f0                          // 0x0084220c    e8dffeffff
                         pop              esi                                           // 0x00842211    5e
                         ret                                                            // 0x00842212    c3
                         nop                                                            // 0x00842213    90
                         nop                                                            // 0x00842214    90
                         nop                                                            // 0x00842215    90
                         nop                                                            // 0x00842216    90
                         nop                                                            // 0x00842217    90
                         nop                                                            // 0x00842218    90
                         nop                                                            // 0x00842219    90
                         nop                                                            // 0x0084221a    90
                         nop                                                            // 0x0084221b    90
                         nop                                                            // 0x0084221c    90
                         nop                                                            // 0x0084221d    90
                         nop                                                            // 0x0084221e    90
                         nop                                                            // 0x0084221f    90
                         or               ecx, 0xffffffff                               // 0x00842220    83c9ff
                         sub              esp, 0x00000080                               // 0x00842223    81ec80000000
                         push             ebx                                           // 0x00842229    53
                         push             esi                                           // 0x0084222a    56
                         push             edi                                           // 0x0084222b    57
                         {disp32} mov     edi, dword ptr [esp + 0x00000094]             // 0x0084222c    8bbc2494000000
                         xor.s            eax, eax                                      // 0x00842233    33c0
                         repne scasb                                                    // 0x00842235    f2ae
                         not              ecx                                           // 0x00842237    f7d1
                         sub.s            edi, ecx                                      // 0x00842239    2bf9
                         mov.s            eax, ecx                                      // 0x0084223b    8bc1
                         shr              ecx, 2                                        // 0x0084223d    c1e902
                         mov.s            esi, edi                                      // 0x00842240    8bf7
                         {disp8} lea      edx, dword ptr [esp + 0x0c]                   // 0x00842242    8d54240c
                         mov.s            edi, edx                                      // 0x00842246    8bfa
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x00842248    f3a5
                         mov.s            ecx, eax                                      // 0x0084224a    8bc8
                         and              ecx, 0x03                                     // 0x0084224c    83e103
                         rep movsb                                                      // 0x0084224f    f3a4
                         {disp32} mov     edi, dword ptr [esp + 0x00000098]             // 0x00842251    8bbc2498000000
                         or               ecx, 0xffffffff                               // 0x00842258    83c9ff
                         xor.s            eax, eax                                      // 0x0084225b    33c0
                         repne scasb                                                    // 0x0084225d    f2ae
                         not              ecx                                           // 0x0084225f    f7d1
                         sub.s            edi, ecx                                      // 0x00842261    2bf9
                         mov.s            ebx, ecx                                      // 0x00842263    8bd9
                         or               ecx, 0xffffffff                               // 0x00842265    83c9ff
                         mov.s            esi, edi                                      // 0x00842268    8bf7
                         {disp8} lea      edx, dword ptr [esp + 0x0c]                   // 0x0084226a    8d54240c
                         mov.s            edi, edx                                      // 0x0084226e    8bfa
                         repne scasb                                                    // 0x00842270    f2ae
                         mov.s            ecx, ebx                                      // 0x00842272    8bcb
                         shr              ecx, 2                                        // 0x00842274    c1e902
                         dec              edi                                           // 0x00842277    4f
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x00842278    f3a5
                         mov.s            ecx, ebx                                      // 0x0084227a    8bcb
                         and              ecx, 0x03                                     // 0x0084227c    83e103
                         rep movsb                                                      // 0x0084227f    f3a4
                         {disp32} mov     esi, dword ptr [esp + 0x00000090]             // 0x00842281    8bb42490000000
                         {disp8} lea      eax, dword ptr [esp + 0x0c]                   // 0x00842288    8d44240c
                         push             eax                                           // 0x0084228c    50
                         push             esi                                           // 0x0084228d    56
                         mov              ecx, 0x00eea420                               // 0x0084228e    b920a4ee00
                         call             _jmp_addr_0x008422b0                          // 0x00842293    e818000000
                         push             0x00eea420                                    // 0x00842298    6820a4ee00
                         mov.s            ecx, esi                                      // 0x0084229d    8bce
                         call             _jmp_addr_0x008420f0                          // 0x0084229f    e84cfeffff
                         pop              edi                                           // 0x008422a4    5f
                         pop              esi                                           // 0x008422a5    5e
                         pop              ebx                                           // 0x008422a6    5b
                         add              esp, 0x00000080                               // 0x008422a7    81c480000000
                         ret                                                            // 0x008422ad    c3
                         nop                                                            // 0x008422ae    90
                         nop                                                            // 0x008422af    90
_jmp_addr_0x008422b0:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x008422b0    8b442404
                         mov.s            edx, ecx                                      // 0x008422b4    8bd1
                         or               ecx, 0xffffffff                               // 0x008422b6    83c9ff
                         push             ebx                                           // 0x008422b9    53
                         push             esi                                           // 0x008422ba    56
                         push             edi                                           // 0x008422bb    57
                         {disp8} mov      edi, dword ptr [esp + 0x14]                   // 0x008422bc    8b7c2414
                         {disp8} mov      dword ptr [edx + 0x04], eax                   // 0x008422c0    894204
                         {disp8} mov      dword ptr [edx + 0x08], 0x00000000            // 0x008422c3    c7420800000000
                         {disp8} mov      dword ptr [edx + 0x0c], 0x00000001            // 0x008422ca    c7420c01000000
                         xor.s            eax, eax                                      // 0x008422d1    33c0
                         repne scasb                                                    // 0x008422d3    f2ae
                         not              ecx                                           // 0x008422d5    f7d1
                         sub.s            edi, ecx                                      // 0x008422d7    2bf9
                         mov.s            eax, ecx                                      // 0x008422d9    8bc1
                         shr              ecx, 2                                        // 0x008422db    c1e902
                         {disp8} lea      ebx, dword ptr [edx + 0x10]                   // 0x008422de    8d5a10
                         mov.s            esi, edi                                      // 0x008422e1    8bf7
                         mov.s            edi, ebx                                      // 0x008422e3    8bfb
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x008422e5    f3a5
                         mov.s            ecx, eax                                      // 0x008422e7    8bc8
                         and              ecx, 0x03                                     // 0x008422e9    83e103
                         push             edx                                           // 0x008422ec    52
                         rep movsb                                                      // 0x008422ed    f3a4
                         call             _jmp_addr_0x00842150                          // 0x008422ef    e85cfeffff
                         add              esp, 0x04                                     // 0x008422f4    83c404
                         pop              edi                                           // 0x008422f7    5f
                         pop              esi                                           // 0x008422f8    5e
                         pop              ebx                                           // 0x008422f9    5b
                         ret              0x0008                                        // 0x008422fa    c20800
                         nop                                                            // 0x008422fd    90
                         nop                                                            // 0x008422fe    90
                         nop                                                            // 0x008422ff    90
                         {disp8} mov      eax, dword ptr [ecx + 0x0c]                   // 0x00842300    8b410c
                         neg              eax                                           // 0x00842303    f7d8
                         sbb.s            eax, eax                                      // 0x00842305    1bc0
                         and.s            eax, ecx                                      // 0x00842307    23c1
                         ret                                                            // 0x00842309    c3
                         nop                                                            // 0x0084230a    90
                         nop                                                            // 0x0084230b    90
                         nop                                                            // 0x0084230c    90
                         nop                                                            // 0x0084230d    90
                         nop                                                            // 0x0084230e    90
                         nop                                                            // 0x0084230f    90
                         push             ebx                                           // 0x00842310    53
                         push             esi                                           // 0x00842311    56
                         {disp32} mov     esi, dword ptr [data_bytes + 0x530530]        // 0x00842312    8b353065ef00
                         push             edi                                           // 0x00842318    57
                         {disp32} mov     edi, dword ptr [data_bytes + 0x530534]        // 0x00842319    8b3d3465ef00
                         push             -0x1                                          // 0x0084231f    6aff
                         push             0x5                                           // 0x00842321    6a05
                         push             0x00ef6504                                    // 0x00842323    680465ef00
                         mov.s            ebx, ecx                                      // 0x00842328    8bd9
                         push             0x00c39104                                    // 0x0084232a    680491c300
                         {disp8} lea      eax, dword ptr [ebx + 0x10]                   // 0x0084232f    8d4310
                         push             0x00ef651c                                    // 0x00842332    681c65ef00
                         push             eax                                           // 0x00842337    50
                         sar              esi, 1                                        // 0x00842338    d1fe
                         sar              edi, 1                                        // 0x0084233a    d1ff
                         call             _jmp_addr_0x008412b0                          // 0x0084233c    e86fefffff
                         add              edi, 0x10                                     // 0x00842341    83c710
                         push             edi                                           // 0x00842344    57
                         call             _jmp_addr_0x00841670                          // 0x00842345    e826f3ffff
                         add              esi, -0x18                                    // 0x0084234a    83c6e8
                         push             esi                                           // 0x0084234d    56
                         call             _jmp_addr_0x00841660                          // 0x0084234e    e80df3ffff
                         push             0x1                                           // 0x00842353    6a01
                         push             0x009dd694                                    // 0x00842355    6894d69d00
                         push             0x00ef64f8                                    // 0x0084235a    68f864ef00
                         push             0x0                                           // 0x0084235f    6a00
                         push             0x0                                           // 0x00842361    6a00
                         push             0x4                                           // 0x00842363    6a04
                         push             ebx                                           // 0x00842365    53
                         call             _jmp_addr_0x00841750                          // 0x00842366    e8e5f3ffff
                         add              esp, 0x3c                                     // 0x0084236b    83c43c
                         pop              edi                                           // 0x0084236e    5f
                         pop              esi                                           // 0x0084236f    5e
                         pop              ebx                                           // 0x00842370    5b
                         ret                                                            // 0x00842371    c3
                         nop                                                            // 0x00842372    90
                         nop                                                            // 0x00842373    90
                         nop                                                            // 0x00842374    90
                         nop                                                            // 0x00842375    90
                         nop                                                            // 0x00842376    90
                         nop                                                            // 0x00842377    90
                         nop                                                            // 0x00842378    90
                         nop                                                            // 0x00842379    90
                         nop                                                            // 0x0084237a    90
                         nop                                                            // 0x0084237b    90
                         nop                                                            // 0x0084237c    90
                         nop                                                            // 0x0084237d    90
                         nop                                                            // 0x0084237e    90
                         nop                                                            // 0x0084237f    90
                         push             esi                                           // 0x00842380    56
                         mov.s            esi, ecx                                      // 0x00842381    8bf1
                         mov              eax, dword ptr [esi]                          // 0x00842383    8b06
                         call             dword ptr [eax + 8]                           // 0x00842385    ff5008
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x00842388    8b4e04
                         {disp8} mov      dword ptr [ecx + 0x08], 0x00000000            // 0x0084238b    c7410800000000
                         pop              esi                                           // 0x00842392    5e
                         ret              0x0008                                        // 0x00842393    c20800
                         nop                                                            // 0x00842396    90
                         nop                                                            // 0x00842397    90
                         nop                                                            // 0x00842398    90
                         nop                                                            // 0x00842399    90
                         nop                                                            // 0x0084239a    90
                         nop                                                            // 0x0084239b    90
                         nop                                                            // 0x0084239c    90
                         nop                                                            // 0x0084239d    90
                         nop                                                            // 0x0084239e    90
                         nop                                                            // 0x0084239f    90
                         push             esi                                           // 0x008423a0    56
                         mov.s            esi, ecx                                      // 0x008423a1    8bf1
                         mov              eax, dword ptr [esi]                          // 0x008423a3    8b06
                         call             dword ptr [eax + 8]                           // 0x008423a5    ff5008
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x008423a8    8b4e04
                         {disp8} mov      dword ptr [ecx + 0x08], 0x00000000            // 0x008423ab    c7410800000000
                         pop              esi                                           // 0x008423b2    5e
                         ret              0x000c                                        // 0x008423b3    c20c00
                         nop                                                            // 0x008423b6    90
                         nop                                                            // 0x008423b7    90
                         nop                                                            // 0x008423b8    90
                         nop                                                            // 0x008423b9    90
                         nop                                                            // 0x008423ba    90
                         nop                                                            // 0x008423bb    90
                         nop                                                            // 0x008423bc    90
                         nop                                                            // 0x008423bd    90
                         nop                                                            // 0x008423be    90
                         nop                                                            // 0x008423bf    90
_jmp_addr_0x008423c0:    {disp8} mov      eax, dword ptr [esp + 0x18]                   // 0x008423c0    8b442418
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x008423c4    8b4c2414
                         {disp8} mov      edx, dword ptr [esp + 0x10]                   // 0x008423c8    8b542410
                         push             esi                                           // 0x008423cc    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                   // 0x008423cd    8b742408
                         push             eax                                           // 0x008423d1    50
                         {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x008423d2    8b442414
                         push             ecx                                           // 0x008423d6    51
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x008423d7    8b4c2414
                         push             edx                                           // 0x008423db    52
                         push             eax                                           // 0x008423dc    50
                         push             ecx                                           // 0x008423dd    51
                         push             esi                                           // 0x008423de    56
                         mov              ecx, 0x00eea3b8                               // 0x008423df    b9b8a3ee00
                         call             _jmp_addr_0x00842400                          // 0x008423e4    e817000000
                         push             0x00eea3b8                                    // 0x008423e9    68b8a3ee00
                         mov.s            ecx, esi                                      // 0x008423ee    8bce
                         call             _jmp_addr_0x008420f0                          // 0x008423f0    e8fbfcffff
                         pop              esi                                           // 0x008423f5    5e
                         ret                                                            // 0x008423f6    c3
                         nop                                                            // 0x008423f7    90
                         nop                                                            // 0x008423f8    90
                         nop                                                            // 0x008423f9    90
                         nop                                                            // 0x008423fa    90
                         nop                                                            // 0x008423fb    90
                         nop                                                            // 0x008423fc    90
                         nop                                                            // 0x008423fd    90
                         nop                                                            // 0x008423fe    90
                         nop                                                            // 0x008423ff    90
_jmp_addr_0x00842400:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x00842400    8b442404
                         mov.s            edx, ecx                                      // 0x00842404    8bd1
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                   // 0x00842406    8b4c2408
                         push             esi                                           // 0x0084240a    56
                         {disp8} mov      esi, dword ptr [esp + 0x18]                   // 0x0084240b    8b742418
                         {disp8} mov      dword ptr [edx + 0x04], eax                   // 0x0084240f    894204
                         xor.s            eax, eax                                      // 0x00842412    33c0
                         cmp.s            esi, eax                                      // 0x00842414    3bf0
                         {disp8} mov      dword ptr [edx + 0x60], ecx                   // 0x00842416    894a60
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x00842419    8b4c2410
                         {disp8} mov      dword ptr [edx + 0x08], eax                   // 0x0084241d    894208
                         {disp8} mov      dword ptr [edx + 0x0c], 0x00000001            // 0x00842420    c7420c01000000
                         {disp8} mov      dword ptr [edx + 0x5c], ecx                   // 0x00842427    894a5c
                         {disp8} je       _jmp_addr_0x0084245f                          // 0x0084242a    7433
                         or               ecx, 0xffffffff                               // 0x0084242c    83c9ff
                         push             ebx                                           // 0x0084242f    53
                         push             edi                                           // 0x00842430    57
                         mov.s            edi, esi                                      // 0x00842431    8bfe
                         repne scasb                                                    // 0x00842433    f2ae
                         not              ecx                                           // 0x00842435    f7d1
                         dec              ecx                                           // 0x00842437    49
                         {disp8} mov      dword ptr [edx + 0x10], ecx                   // 0x00842438    894a10
                         or               ecx, 0xffffffff                               // 0x0084243b    83c9ff
                         mov.s            edi, esi                                      // 0x0084243e    8bfe
                         repne scasb                                                    // 0x00842440    f2ae
                         not              ecx                                           // 0x00842442    f7d1
                         sub.s            edi, ecx                                      // 0x00842444    2bf9
                         mov.s            eax, ecx                                      // 0x00842446    8bc1
                         mov.s            esi, edi                                      // 0x00842448    8bf7
                         {disp8} lea      ebx, dword ptr [edx + 0x1c]                   // 0x0084244a    8d5a1c
                         shr              ecx, 2                                        // 0x0084244d    c1e902
                         mov.s            edi, ebx                                      // 0x00842450    8bfb
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x00842452    f3a5
                         mov.s            ecx, eax                                      // 0x00842454    8bc8
                         and              ecx, 0x03                                     // 0x00842456    83e103
                         rep movsb                                                      // 0x00842459    f3a4
                         pop              edi                                           // 0x0084245b    5f
                         pop              ebx                                           // 0x0084245c    5b
                         {disp8} jmp      _jmp_addr_0x00842465                          // 0x0084245d    eb06
_jmp_addr_0x0084245f:    {disp8} mov      dword ptr [edx + 0x10], eax                   // 0x0084245f    894210
                         {disp8} mov      byte ptr [edx + 0x1c], al                     // 0x00842462    88421c
_jmp_addr_0x00842465:    {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x00842465    8b442414
                         cmp              eax, 0x40                                     // 0x00842469    83f840
                         {disp8} mov      ecx, dword ptr [esp + 0x1c]                   // 0x0084246c    8b4c241c
                         {disp8} mov      dword ptr [edx + 0x18], ecx                   // 0x00842470    894a18
                         pop              esi                                           // 0x00842473    5e
                         {disp8} jl       _jmp_addr_0x0084247b                          // 0x00842474    7c05
                         mov              eax, 0x00000040                               // 0x00842476    b840000000
_jmp_addr_0x0084247b:    push             edx                                           // 0x0084247b    52
                         {disp8} mov      dword ptr [edx + 0x14], eax                   // 0x0084247c    894214
                         call             _jmp_addr_0x00842150                          // 0x0084247f    e8ccfcffff
                         pop              ecx                                           // 0x00842484    59
                         ret              0x0018                                        // 0x00842485    c21800
                         nop                                                            // 0x00842488    90
                         nop                                                            // 0x00842489    90
                         nop                                                            // 0x0084248a    90
                         nop                                                            // 0x0084248b    90
                         nop                                                            // 0x0084248c    90
                         nop                                                            // 0x0084248d    90
                         nop                                                            // 0x0084248e    90
                         nop                                                            // 0x0084248f    90
                         {disp8} mov      eax, dword ptr [ecx + 0x0c]                   // 0x00842490    8b410c
                         neg              eax                                           // 0x00842493    f7d8
                         sbb.s            eax, eax                                      // 0x00842495    1bc0
                         and.s            eax, ecx                                      // 0x00842497    23c1
                         ret                                                            // 0x00842499    c3
                         nop                                                            // 0x0084249a    90
                         nop                                                            // 0x0084249b    90
                         nop                                                            // 0x0084249c    90
                         nop                                                            // 0x0084249d    90
                         nop                                                            // 0x0084249e    90
                         nop                                                            // 0x0084249f    90
                         {disp32} mov     eax, dword ptr [data_bytes + 0x530534]        // 0x008424a0    a13465ef00
                         push             esi                                           // 0x008424a5    56
                         sar              eax, 1                                        // 0x008424a6    d1f8
                         push             edi                                           // 0x008424a8    57
                         {disp32} mov     edi, dword ptr [data_bytes + 0x530530]        // 0x008424a9    8b3d3065ef00
                         add              eax, 0x10                                     // 0x008424af    83c010
                         push             eax                                           // 0x008424b2    50
                         mov.s            esi, ecx                                      // 0x008424b3    8bf1
                         sar              edi, 1                                        // 0x008424b5    d1ff
                         call             _jmp_addr_0x00841670                          // 0x008424b7    e8b4f1ffff
                         add              edi, -0x3c                                    // 0x008424bc    83c7c4
                         push             edi                                           // 0x008424bf    57
                         call             _jmp_addr_0x00841660                          // 0x008424c0    e89bf1ffff
                         push             0x1                                           // 0x008424c5    6a01
                         push             0x009dd694                                    // 0x008424c7    6894d69d00
                         push             0x00ef64f8                                    // 0x008424cc    68f864ef00
                         push             0x0                                           // 0x008424d1    6a00
                         push             0x1                                           // 0x008424d3    6a01
                         push             0x4                                           // 0x008424d5    6a04
                         push             esi                                           // 0x008424d7    56
                         call             _jmp_addr_0x00841750                          // 0x008424d8    e873f2ffff
                         push             0x18                                          // 0x008424dd    6a18
                         call             _jmp_addr_0x00841680                          // 0x008424df    e89cf1ffff
                         push             0x1                                           // 0x008424e4    6a01
                         push             0x00be0b10                                    // 0x008424e6    68100bbe00
                         push             0x00ef64fc                                    // 0x008424eb    68fc64ef00
                         push             0x0                                           // 0x008424f0    6a00
                         push             0x0                                           // 0x008424f2    6a00
                         push             0x4                                           // 0x008424f4    6a04
                         push             esi                                           // 0x008424f6    56
                         call             _jmp_addr_0x00841750                          // 0x008424f7    e854f2ffff
                         {disp8} mov      ecx, dword ptr [esi + 0x10]                   // 0x008424fc    8b4e10
                         {disp8} mov      eax, dword ptr [esi + 0x5c]                   // 0x008424ff    8b465c
                         add              esp, 0x44                                     // 0x00842502    83c444
                         push             ecx                                           // 0x00842505    51
                         push             0xb                                           // 0x00842506    6a0b
                         push             0x00ef6514                                    // 0x00842508    681465ef00
                         {disp8} lea      edx, dword ptr [esi + 0x1c]                   // 0x0084250d    8d561c
                         push             edx                                           // 0x00842510    52
                         push             0x00ef6504                                    // 0x00842511    680465ef00
                         push             eax                                           // 0x00842516    50
                         call             _jmp_addr_0x008412b0                          // 0x00842517    e894edffff
                         add              esp, 0x18                                     // 0x0084251c    83c418
                         pop              edi                                           // 0x0084251f    5f
                         pop              esi                                           // 0x00842520    5e
                         ret                                                            // 0x00842521    c3
                         nop                                                            // 0x00842522    90
                         nop                                                            // 0x00842523    90
                         nop                                                            // 0x00842524    90
                         nop                                                            // 0x00842525    90
                         nop                                                            // 0x00842526    90
                         nop                                                            // 0x00842527    90
                         nop                                                            // 0x00842528    90
                         nop                                                            // 0x00842529    90
                         nop                                                            // 0x0084252a    90
                         nop                                                            // 0x0084252b    90
                         nop                                                            // 0x0084252c    90
                         nop                                                            // 0x0084252d    90
                         nop                                                            // 0x0084252e    90
                         nop                                                            // 0x0084252f    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x00842530    8b442404
                         push             esi                                           // 0x00842534    56
                         mov.s            esi, ecx                                      // 0x00842535    8bf1
                         {disp8} lea      ecx, dword ptr [eax + -0x01]                  // 0x00842537    8d48ff
                         cmp              ecx, 0x000000d2                               // 0x0084253a    81f9d2000000
                         push             edi                                           // 0x00842540    57
                         {disp32} ja      _jmp_addr_0x0084262e                          // 0x00842541    0f87e7000000
                         xor.s            edx, edx                                      // 0x00842547    33d2
                         {disp32} mov     dl, byte ptr [ecx + 0x008426c0]               // 0x00842549    8a91c0268400
                         jmp              dword ptr [edx*4 + 0x84269c]                  // 0x0084254f    ff24959c268400
                         mov              eax, dword ptr [esi]                          // 0x00842556    8b06
                         push             0x0                                           // 0x00842558    6a00
                         push             0x0                                           // 0x0084255a    6a00
                         push             0x0                                           // 0x0084255c    6a00
                         mov.s            ecx, esi                                      // 0x0084255e    8bce
                         call             dword ptr [eax + 0x14]                        // 0x00842560    ff5014
                         pop              edi                                           // 0x00842563    5f
                         pop              esi                                           // 0x00842564    5e
                         ret              0x0008                                        // 0x00842565    c20800
                         mov              edx, dword ptr [esi]                          // 0x00842568    8b16
                         push             0x1                                           // 0x0084256a    6a01
                         push             0x0                                           // 0x0084256c    6a00
                         push             0x0                                           // 0x0084256e    6a00
                         mov.s            ecx, esi                                      // 0x00842570    8bce
                         call             dword ptr [edx + 0x14]                        // 0x00842572    ff5214
                         pop              edi                                           // 0x00842575    5f
                         pop              esi                                           // 0x00842576    5e
                         ret              0x0008                                        // 0x00842577    c20800
                         {disp8} mov      eax, dword ptr [esi + 0x10]                   // 0x0084257a    8b4610
                         test             eax, eax                                      // 0x0084257d    85c0
                         {disp32} jle     _jmp_addr_0x00842695                          // 0x0084257f    0f8e10010000
                         dec              eax                                           // 0x00842585    48
                         cmp              eax, 0x3f                                     // 0x00842586    83f83f
                         {disp8} mov      dword ptr [esi + 0x10], eax                   // 0x00842589    894610
                         {disp32} jge     _jmp_addr_0x00842695                          // 0x0084258c    0f8d03010000
_jmp_addr_0x00842592:    {disp8} mov      cl, byte ptr [esi + eax * 0x1 + 0x1d]         // 0x00842592    8a4c061d
                         {disp8} mov      byte ptr [esi + eax * 0x1 + 0x1c], cl         // 0x00842596    884c061c
                         inc              eax                                           // 0x0084259a    40
                         cmp              eax, 0x3f                                     // 0x0084259b    83f83f
                         {disp8} jl       _jmp_addr_0x00842592                          // 0x0084259e    7cf2
                         pop              edi                                           // 0x008425a0    5f
                         pop              esi                                           // 0x008425a1    5e
                         ret              0x0008                                        // 0x008425a2    c20800
                         {disp8} lea      edx, dword ptr [esi + 0x1c]                   // 0x008425a5    8d561c
                         {disp8} mov      esi, dword ptr [esi + 0x10]                   // 0x008425a8    8b7610
                         or               ecx, 0xffffffff                               // 0x008425ab    83c9ff
                         xor.s            eax, eax                                      // 0x008425ae    33c0
                         mov.s            edi, edx                                      // 0x008425b0    8bfa
                         repne scasb                                                    // 0x008425b2    f2ae
                         not              ecx                                           // 0x008425b4    f7d1
                         dec              ecx                                           // 0x008425b6    49
                         cmp.s            esi, ecx                                      // 0x008425b7    3bf1
                         {disp32} jge     _jmp_addr_0x00842695                          // 0x008425b9    0f8dd6000000
                         mov.s            eax, esi                                      // 0x008425bf    8bc6
                         cmp              eax, 0x3f                                     // 0x008425c1    83f83f
                         {disp32} jge     _jmp_addr_0x00842695                          // 0x008425c4    0f8dcb000000
_jmp_addr_0x008425ca:    {disp8} mov      cl, byte ptr [edx + eax * 0x1 + 0x01]         // 0x008425ca    8a4c0201
                         mov              byte ptr [edx + eax * 0x1], cl                // 0x008425ce    880c02
                         inc              eax                                           // 0x008425d1    40
                         cmp              eax, 0x3f                                     // 0x008425d2    83f83f
                         {disp8} jl       _jmp_addr_0x008425ca                          // 0x008425d5    7cf3
                         pop              edi                                           // 0x008425d7    5f
                         pop              esi                                           // 0x008425d8    5e
                         ret              0x0008                                        // 0x008425d9    c20800
                         pop              edi                                           // 0x008425dc    5f
                         {disp8} mov      dword ptr [esi + 0x10], 0x00000000            // 0x008425dd    c7461000000000
                         pop              esi                                           // 0x008425e4    5e
                         ret              0x0008                                        // 0x008425e5    c20800
                         or               ecx, 0xffffffff                               // 0x008425e8    83c9ff
                         {disp8} lea      edi, dword ptr [esi + 0x1c]                   // 0x008425eb    8d7e1c
                         xor.s            eax, eax                                      // 0x008425ee    33c0
                         repne scasb                                                    // 0x008425f0    f2ae
                         not              ecx                                           // 0x008425f2    f7d1
                         dec              ecx                                           // 0x008425f4    49
                         pop              edi                                           // 0x008425f5    5f
                         {disp8} mov      dword ptr [esi + 0x10], ecx                   // 0x008425f6    894e10
                         pop              esi                                           // 0x008425f9    5e
                         ret              0x0008                                        // 0x008425fa    c20800
                         {disp8} mov      eax, dword ptr [esi + 0x10]                   // 0x008425fd    8b4610
                         test             eax, eax                                      // 0x00842600    85c0
                         {disp32} jle     _jmp_addr_0x00842695                          // 0x00842602    0f8e8d000000
                         dec              eax                                           // 0x00842608    48
                         pop              edi                                           // 0x00842609    5f
                         {disp8} mov      dword ptr [esi + 0x10], eax                   // 0x0084260a    894610
                         pop              esi                                           // 0x0084260d    5e
                         ret              0x0008                                        // 0x0084260e    c20800
                         {disp8} mov      edx, dword ptr [esi + 0x10]                   // 0x00842611    8b5610
                         or               ecx, 0xffffffff                               // 0x00842614    83c9ff
                         xor.s            eax, eax                                      // 0x00842617    33c0
                         {disp8} lea      edi, dword ptr [esi + 0x1c]                   // 0x00842619    8d7e1c
                         repne scasb                                                    // 0x0084261c    f2ae
                         not              ecx                                           // 0x0084261e    f7d1
                         dec              ecx                                           // 0x00842620    49
                         cmp.s            edx, ecx                                      // 0x00842621    3bd1
                         {disp8} jge      _jmp_addr_0x00842695                          // 0x00842623    7d70
                         inc              edx                                           // 0x00842625    42
                         pop              edi                                           // 0x00842626    5f
                         {disp8} mov      dword ptr [esi + 0x10], edx                   // 0x00842627    895610
                         pop              esi                                           // 0x0084262a    5e
                         ret              0x0008                                        // 0x0084262b    c20800
_jmp_addr_0x0084262e:    {disp32} mov     dl, byte ptr [rdata_bytes + 0xf861c]          // 0x0084262e    8a151c169a00
                         test             byte ptr [esp + 0x10], dl                     // 0x00842634    84542410
                         {disp8} je       _jmp_addr_0x0084263e                          // 0x00842638    7404
                         push             0x1                                           // 0x0084263a    6a01
                         {disp8} jmp      _jmp_addr_0x00842640                          // 0x0084263c    eb02
_jmp_addr_0x0084263e:    push             0x0                                           // 0x0084263e    6a00
_jmp_addr_0x00842640:    push             eax                                           // 0x00842640    50
                         mov              ecx, 0x00e8536c                               // 0x00842641    b96c53e800
                         call             _jmp_addr_0x007dcad0                          // 0x00842646    e885a4f9ff
                         cmp              al, 0x20                                      // 0x0084264b    3c20
                         {disp8} jl       _jmp_addr_0x00842695                          // 0x0084264d    7c46
                         cmp              al, 0x7e                                      // 0x0084264f    3c7e
                         {disp8} jg       _jmp_addr_0x00842695                          // 0x00842651    7f42
                         test             al, al                                        // 0x00842653    84c0
                         {disp8} je       _jmp_addr_0x00842695                          // 0x00842655    743e
                         {disp8} mov      edx, dword ptr [esi + 0x14]                   // 0x00842657    8b5614
                         {disp8} mov      ecx, dword ptr [esi + 0x10]                   // 0x0084265a    8b4e10
                         dec              edx                                           // 0x0084265d    4a
                         cmp.s            ecx, edx                                      // 0x0084265e    3bca
                         {disp8} jge      _jmp_addr_0x00842695                          // 0x00842660    7d33
                         cmp              ecx, 0x3f                                     // 0x00842662    83f93f
                         {disp8} jge      _jmp_addr_0x00842683                          // 0x00842665    7d1c
                         mov              edx, 0xffffffe4                               // 0x00842667    bae4ffffff
                         push             ebx                                           // 0x0084266c    53
                         {disp8} lea      ecx, dword ptr [esi + 0x5b]                   // 0x0084266d    8d4e5b
                         sub.s            edx, esi                                      // 0x00842670    2bd6
_jmp_addr_0x00842672:    {disp8} mov      bl, byte ptr [ecx + -0x01]                    // 0x00842672    8a59ff
                         mov              byte ptr [ecx], bl                            // 0x00842675    8819
                         {disp8} mov      ebx, dword ptr [esi + 0x10]                   // 0x00842677    8b5e10
                         dec              ecx                                           // 0x0084267a    49
                         lea              edi, dword ptr [edx + ecx * 0x1]              // 0x0084267b    8d3c0a
                         cmp.s            edi, ebx                                      // 0x0084267e    3bfb
                         {disp8} jg       _jmp_addr_0x00842672                          // 0x00842680    7ff0
                         pop              ebx                                           // 0x00842682    5b
_jmp_addr_0x00842683:    {disp8} mov      ecx, dword ptr [esi + 0x10]                   // 0x00842683    8b4e10
                         {disp8} mov      byte ptr [ecx + esi * 0x1 + 0x1c], al         // 0x00842686    8844311c
                         {disp8} mov      eax, dword ptr [esi + 0x10]                   // 0x0084268a    8b4610
                         inc              eax                                           // 0x0084268d    40
                         {disp8} mov      byte ptr [esi + 0x5b], 0x00                   // 0x0084268e    c6465b00
                         {disp8} mov      dword ptr [esi + 0x10], eax                   // 0x00842692    894610
_jmp_addr_0x00842695:    pop              edi                                           // 0x00842695    5f
                         pop              esi                                           // 0x00842696    5e
                         ret              0x0008                                        // 0x00842697    c20800

// Snippet: db, [0x0084269a, 0x0084269c)
.byte 0x8b, 0xff                  // 0x0084269a

// Snippet: jmptbl, [0x0084269c, 0x008426c0)
.byte 0x56, 0x25, 0x84, 0x00      // 0x0084269c
.byte 0x7a, 0x25, 0x84, 0x00      // 0x008426a0
.byte 0x68, 0x25, 0x84, 0x00      // 0x008426a4
.byte 0xdc, 0x25, 0x84, 0x00      // 0x008426a8
.byte 0xfd, 0x25, 0x84, 0x00      // 0x008426ac
.byte 0x11, 0x26, 0x84, 0x00      // 0x008426b0
.byte 0xe8, 0x25, 0x84, 0x00      // 0x008426b4
.byte 0xa5, 0x25, 0x84, 0x00      // 0x008426b8
.byte 0x2e, 0x26, 0x84, 0x00      // 0x008426bc

// Snippet: ijmptbl, [0x008426c0, 0x00842793)
.byte 0x00, 0x08, 0x08, 0x08      // 0x008426c0
.byte 0x08, 0x08, 0x08, 0x08      // 0x008426c4
.byte 0x08, 0x08, 0x08, 0x08      // 0x008426c8
.byte 0x08, 0x01, 0x08, 0x08      // 0x008426cc
.byte 0x08, 0x08, 0x08, 0x08      // 0x008426d0
.byte 0x08, 0x08, 0x08, 0x08      // 0x008426d4
.byte 0x08, 0x08, 0x08, 0x02      // 0x008426d8
.byte 0x08, 0x08, 0x08, 0x08      // 0x008426dc
.byte 0x08, 0x08, 0x08, 0x08      // 0x008426e0
.byte 0x08, 0x08, 0x08, 0x08      // 0x008426e4
.byte 0x08, 0x08, 0x08, 0x08      // 0x008426e8
.byte 0x08, 0x08, 0x08, 0x08      // 0x008426ec
.byte 0x08, 0x08, 0x08, 0x08      // 0x008426f0
.byte 0x08, 0x08, 0x08, 0x08      // 0x008426f4
.byte 0x08, 0x08, 0x08, 0x08      // 0x008426f8
.byte 0x08, 0x08, 0x08, 0x08      // 0x008426fc
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842700
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842704
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842708
.byte 0x08, 0x08, 0x08, 0x08      // 0x0084270c
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842710
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842714
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842718
.byte 0x08, 0x08, 0x08, 0x08      // 0x0084271c
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842720
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842724
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842728
.byte 0x08, 0x08, 0x08, 0x08      // 0x0084272c
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842730
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842734
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842738
.byte 0x08, 0x08, 0x08, 0x08      // 0x0084273c
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842740
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842744
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842748
.byte 0x08, 0x08, 0x08, 0x08      // 0x0084274c
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842750
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842754
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842758
.byte 0x08, 0x08, 0x08, 0x08      // 0x0084275c
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842760
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842764
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842768
.byte 0x08, 0x08, 0x08, 0x08      // 0x0084276c
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842770
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842774
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842778
.byte 0x08, 0x08, 0x08, 0x08      // 0x0084277c
.byte 0x08, 0x08, 0x08, 0x08      // 0x00842780
.byte 0x08, 0x08, 0x03, 0x08      // 0x00842784
.byte 0x08, 0x08, 0x04, 0x08      // 0x00842788
.byte 0x05, 0x08, 0x06, 0x08      // 0x0084278c
.byte 0x08, 0x08, 0x07            // 0x00842790

// Snippet: db, [0x00842793, 0x008427a0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00842793
.byte 0x90, 0x90, 0x90, 0x90      // 0x00842797
.byte 0x90, 0x90, 0x90, 0x90      // 0x0084279b
.byte 0x90                        // 0x0084279f

