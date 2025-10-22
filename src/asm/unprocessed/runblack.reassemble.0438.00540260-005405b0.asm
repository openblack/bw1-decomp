.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x004707f0
.extern ??0DialogBoxBase@@QAE@XZ
.extern _wcsncpy
.extern _wcslen

.globl @__vt__8LoginBoxFv@4

start_0x00540260_0x005405b0:
// Snippet: asm, [0x00540260, 0x00540579)
@__vt__8LoginBoxFv@4:    push             esi                                           // 0x00540260    56
                         mov.s            esi, ecx                                      // 0x00540261    8bf1
                         call             ??0DialogBoxBase@@QAE@XZ                      // 0x00540263    e83831fdff
                         mov              dword ptr [esi], 0x008dec98                   // 0x00540268    c70698ec8d00
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00000dc5 // 0x0054026e    813dac7cd100c50d0000
                         {disp8} ja       _jmp_addr_0x0054028b                          // 0x00540278    7711
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0054027a    a1a87cd100
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0054027f    8b4008
                         {disp32} mov     dword ptr [data_bytes + 0x30ab68], eax        // 0x00540282    a3680bcd00
                         mov.s            eax, esi                                      // 0x00540287    8bc6
                         pop              esi                                           // 0x00540289    5e
                         ret                                                            // 0x0054028a    c3
_jmp_addr_0x0054028b:    {disp32} mov     ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0054028b    8b0da87cd100
                         {disp32} mov     edx, dword ptr [ecx + 0x0000a544]             // 0x00540291    8b9144a50000
                         mov.s            eax, esi                                      // 0x00540297    8bc6
                         {disp32} mov     dword ptr [data_bytes + 0x30ab68], edx        // 0x00540299    8915680bcd00
                         pop              esi                                           // 0x0054029f    5e
                         ret                                                            // 0x005402a0    c3
                         nop                                                            // 0x005402a1    90
                         nop                                                            // 0x005402a2    90
                         nop                                                            // 0x005402a3    90
                         nop                                                            // 0x005402a4    90
                         nop                                                            // 0x005402a5    90
                         nop                                                            // 0x005402a6    90
                         nop                                                            // 0x005402a7    90
                         nop                                                            // 0x005402a8    90
                         nop                                                            // 0x005402a9    90
                         nop                                                            // 0x005402aa    90
                         nop                                                            // 0x005402ab    90
                         nop                                                            // 0x005402ac    90
                         nop                                                            // 0x005402ad    90
                         nop                                                            // 0x005402ae    90
                         nop                                                            // 0x005402af    90
                         {disp32} mov     eax, dword ptr [data_bytes + 0x30ab64]        // 0x005402b0    a1640bcd00
                         test             eax, eax                                      // 0x005402b5    85c0
                         {disp8} je       _jmp_addr_0x005402c9                          // 0x005402b7    7410
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                   // 0x005402b9    8b4c2408
                         {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x005402bd    8b542404
                         push             ecx                                           // 0x005402c1    51
                         push             edx                                           // 0x005402c2    52
                         push             eax                                           // 0x005402c3    50
                         call             _jmp_addr_0x005402d0                          // 0x005402c4    e807000000
_jmp_addr_0x005402c9:    ret              0x0008                                        // 0x005402c9    c20800
                         nop                                                            // 0x005402cc    90
                         nop                                                            // 0x005402cd    90
                         nop                                                            // 0x005402ce    90
                         nop                                                            // 0x005402cf    90
_jmp_addr_0x005402d0:    {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x005402d0    8b442408
                         push             ebx                                           // 0x005402d4    53
                         add              eax, 0x03                                     // 0x005402d5    83c003
                         cmp              eax, 0x09                                     // 0x005402d8    83f809
                         push             esi                                           // 0x005402db    56
                         push             edi                                           // 0x005402dc    57
                         {disp32} ja      _jmp_addr_0x00540573                          // 0x005402dd    0f8790020000
                         jmp              dword ptr [eax*4 + 0x54057c]                  // 0x005402e3    ff24857c055400
                         push             0x00000d96                                    // 0x005402ea    68960d0000
                         mov              ecx, 0x00d17ca8                               // 0x005402ef    b9a87cd100
                         call             _jmp_addr_0x004707f0                          // 0x005402f4    e8f704f3ff
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x005402f9    8b4008
                         {disp8} mov      edi, dword ptr [esp + 0x18]                   // 0x005402fc    8b7c2418
                         push             0x000000ff                                    // 0x00540300    68ff000000
                         {disp8} lea      ebx, dword ptr [edi + 0x24]                   // 0x00540305    8d5f24
                         push             eax                                           // 0x00540308    50
                         {disp32} jmp     _jmp_addr_0x005403ff                          // 0x00540309    e9f1000000
                         push             0x00000d97                                    // 0x0054030e    68970d0000
                         mov              ecx, 0x00d17ca8                               // 0x00540313    b9a87cd100
                         call             _jmp_addr_0x004707f0                          // 0x00540318    e8d304f3ff
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0054031d    8b4008
                         {disp8} mov      edi, dword ptr [esp + 0x18]                   // 0x00540320    8b7c2418
                         push             0x000000ff                                    // 0x00540324    68ff000000
                         {disp8} lea      ebx, dword ptr [edi + 0x24]                   // 0x00540329    8d5f24
                         push             eax                                           // 0x0054032c    50
                         {disp32} jmp     _jmp_addr_0x005403ff                          // 0x0054032d    e9cd000000
                         push             0x00000d98                                    // 0x00540332    68980d0000
                         mov              ecx, 0x00d17ca8                               // 0x00540337    b9a87cd100
                         call             _jmp_addr_0x004707f0                          // 0x0054033c    e8af04f3ff
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x00540341    8b4008
                         {disp8} mov      edi, dword ptr [esp + 0x18]                   // 0x00540344    8b7c2418
                         push             0x000000ff                                    // 0x00540348    68ff000000
                         push             eax                                           // 0x0054034d    50
                         {disp8} lea      ebx, dword ptr [edi + 0x24]                   // 0x0054034e    8d5f24
                         push             ebx                                           // 0x00540351    53
                         call             _wcsncpy                                      // 0x00540352    e8ce602800
                         xor.s            esi, esi                                      // 0x00540357    33f6
                         push             ebx                                           // 0x00540359    53
                         {disp32} mov     word ptr [edi + 0x00000222], si               // 0x0054035a    6689b722020000
                         call             _wcslen                                       // 0x00540361    e8fc602800
                         {disp8} mov      ecx, dword ptr [esp + 0x20]                   // 0x00540366    8b4c2420
                         add              esp, 0x10                                     // 0x0054036a    83c410
                         {disp32} mov     dword ptr [edi + 0x00000258], esi             // 0x0054036d    89b758020000
                         {disp32} mov     dword ptr [edi + 0x0000024c], eax             // 0x00540373    89874c020000
                         {disp32} mov     dword ptr [edi + 0x00000254], eax             // 0x00540379    898754020000
                         {disp32} mov     dword ptr [edi + 0x00000250], eax             // 0x0054037f    898750020000
                         pop              edi                                           // 0x00540385    5f
                         pop              esi                                           // 0x00540386    5e
                         {disp32} mov     word ptr [ecx + 0x00000898], 0x0001           // 0x00540387    66c781980800000100
                         pop              ebx                                           // 0x00540390    5b
                         ret              0x000c                                        // 0x00540391    c20c00
                         push             0x00000d99                                    // 0x00540394    68990d0000
                         mov              ecx, 0x00d17ca8                               // 0x00540399    b9a87cd100
                         call             _jmp_addr_0x004707f0                          // 0x0054039e    e84d04f3ff
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x005403a3    8b4008
                         {disp8} mov      edi, dword ptr [esp + 0x18]                   // 0x005403a6    8b7c2418
                         push             0x000000ff                                    // 0x005403aa    68ff000000
                         {disp8} lea      ebx, dword ptr [edi + 0x24]                   // 0x005403af    8d5f24
                         push             eax                                           // 0x005403b2    50
                         {disp8} jmp      _jmp_addr_0x005403ff                          // 0x005403b3    eb4a
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00000d9a // 0x005403b5    813dac7cd1009a0d0000
                         {disp8} ja       _jmp_addr_0x005403cb                          // 0x005403bf    770a
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x005403c1    a1a87cd100
                         {disp32} jmp     _jmp_addr_0x00540454                          // 0x005403c6    e989000000
_jmp_addr_0x005403cb:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x005403cb    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x0000a338]             // 0x005403d1    8d8238a30000
                         {disp8} jmp      _jmp_addr_0x00540454                          // 0x005403d7    eb7b
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00000d9b // 0x005403d9    813dac7cd1009b0d0000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x005403e3    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x005403ef                          // 0x005403e8    7605
                         add              eax, 0x0000a344                               // 0x005403ea    0544a30000
_jmp_addr_0x005403ef:    {disp8} mov      edi, dword ptr [esp + 0x18]                   // 0x005403ef    8b7c2418
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x005403f3    8b4808
                         push             0x000000ff                                    // 0x005403f6    68ff000000
                         {disp8} lea      ebx, dword ptr [edi + 0x24]                   // 0x005403fb    8d5f24
                         push             ecx                                           // 0x005403fe    51
_jmp_addr_0x005403ff:    push             ebx                                           // 0x005403ff    53
                         call             _wcsncpy                                      // 0x00540400    e820602800
                         xor.s            esi, esi                                      // 0x00540405    33f6
                         push             ebx                                           // 0x00540407    53
                         {disp32} mov     word ptr [edi + 0x00000222], si               // 0x00540408    6689b722020000
                         call             _wcslen                                       // 0x0054040f    e84e602800
                         add              esp, 0x10                                     // 0x00540414    83c410
                         {disp32} mov     dword ptr [edi + 0x00000258], esi             // 0x00540417    89b758020000
                         {disp32} mov     dword ptr [edi + 0x0000024c], eax             // 0x0054041d    89874c020000
                         {disp32} mov     dword ptr [edi + 0x00000254], eax             // 0x00540423    898754020000
                         {disp32} mov     dword ptr [edi + 0x00000250], eax             // 0x00540429    898750020000
                         pop              edi                                           // 0x0054042f    5f
                         pop              esi                                           // 0x00540430    5e
                         pop              ebx                                           // 0x00540431    5b
                         ret              0x000c                                        // 0x00540432    c20c00
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00000d9c // 0x00540435    813dac7cd1009c0d0000
                         {disp8} ja       _jmp_addr_0x00540448                          // 0x0054043f    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x00540441    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x00540454                          // 0x00540446    eb0c
_jmp_addr_0x00540448:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x00540448    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x0000a350]             // 0x0054044e    8d8250a30000
_jmp_addr_0x00540454:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x00540454    8b4008
                         {disp8} mov      edi, dword ptr [esp + 0x18]                   // 0x00540457    8b7c2418
                         push             0x000000ff                                    // 0x0054045b    68ff000000
                         push             eax                                           // 0x00540460    50
                         {disp8} lea      ebx, dword ptr [edi + 0x24]                   // 0x00540461    8d5f24
                         push             ebx                                           // 0x00540464    53
                         call             _wcsncpy                                      // 0x00540465    e8bb5f2800
                         xor.s            esi, esi                                      // 0x0054046a    33f6
                         push             ebx                                           // 0x0054046c    53
                         {disp32} mov     word ptr [edi + 0x00000222], si               // 0x0054046d    6689b722020000
                         call             _wcslen                                       // 0x00540474    e8e95f2800
                         {disp8} mov      ecx, dword ptr [esp + 0x20]                   // 0x00540479    8b4c2420
                         {disp32} mov     dword ptr [edi + 0x0000024c], eax             // 0x0054047d    89874c020000
                         {disp32} mov     dword ptr [edi + 0x00000254], eax             // 0x00540483    898754020000
                         {disp32} mov     dword ptr [edi + 0x00000250], eax             // 0x00540489    898750020000
                         {disp32} mov     dword ptr [edi + 0x00000258], esi             // 0x0054048f    89b758020000
                         {disp8} mov      ecx, dword ptr [ecx + 0x24]                   // 0x00540495    8b4924
                         mov              edx, dword ptr [ecx]                          // 0x00540498    8b11
                         add              esp, 0x10                                     // 0x0054049a    83c410
                         push             esi                                           // 0x0054049d    56
                         call             dword ptr [edx + 8]                           // 0x0054049e    ff5208
                         pop              edi                                           // 0x005404a1    5f
                         pop              esi                                           // 0x005404a2    5e
                         pop              ebx                                           // 0x005404a3    5b
                         ret              0x000c                                        // 0x005404a4    c20c00
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00000d9d // 0x005404a7    813dac7cd1009d0d0000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x005404b1    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x005404bd                          // 0x005404b6    7605
                         add              eax, 0x0000a35c                               // 0x005404b8    055ca30000
_jmp_addr_0x005404bd:    {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x005404bd    8b4808
                         {disp8} mov      edi, dword ptr [esp + 0x18]                   // 0x005404c0    8b7c2418
                         push             0x000000ff                                    // 0x005404c4    68ff000000
                         push             ecx                                           // 0x005404c9    51
                         {disp8} lea      ebx, dword ptr [edi + 0x24]                   // 0x005404ca    8d5f24
                         push             ebx                                           // 0x005404cd    53
                         call             _wcsncpy                                      // 0x005404ce    e8525f2800
                         xor.s            esi, esi                                      // 0x005404d3    33f6
                         push             ebx                                           // 0x005404d5    53
                         {disp32} mov     word ptr [edi + 0x00000222], si               // 0x005404d6    6689b722020000
                         call             _wcslen                                       // 0x005404dd    e8805f2800
                         {disp32} mov     dword ptr [edi + 0x0000024c], eax             // 0x005404e2    89874c020000
                         {disp32} mov     dword ptr [edi + 0x00000254], eax             // 0x005404e8    898754020000
                         {disp32} mov     dword ptr [edi + 0x00000250], eax             // 0x005404ee    898750020000
                         {disp8} mov      eax, dword ptr [esp + 0x20]                   // 0x005404f4    8b442420
                         {disp32} mov     dword ptr [edi + 0x00000258], esi             // 0x005404f8    89b758020000
                         {disp8} mov      ecx, dword ptr [eax + 0x24]                   // 0x005404fe    8b4824
                         add              esp, 0x10                                     // 0x00540501    83c410
                         {disp32} mov     word ptr [eax + 0x00000898], si               // 0x00540504    6689b098080000
                         mov              edx, dword ptr [ecx]                          // 0x0054050b    8b11
                         push             esi                                           // 0x0054050d    56
                         call             dword ptr [edx + 8]                           // 0x0054050e    ff5208
                         pop              edi                                           // 0x00540511    5f
                         pop              esi                                           // 0x00540512    5e
                         pop              ebx                                           // 0x00540513    5b
                         ret              0x000c                                        // 0x00540514    c20c00
                         push             0x00000d9e                                    // 0x00540517    689e0d0000
                         mov              ecx, 0x00d17ca8                               // 0x0054051c    b9a87cd100
                         call             _jmp_addr_0x004707f0                          // 0x00540521    e8ca02f3ff
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x00540526    8b4008
                         {disp8} mov      edi, dword ptr [esp + 0x18]                   // 0x00540529    8b7c2418
                         push             0x000000ff                                    // 0x0054052d    68ff000000
                         push             eax                                           // 0x00540532    50
                         {disp8} lea      ebx, dword ptr [edi + 0x24]                   // 0x00540533    8d5f24
                         push             ebx                                           // 0x00540536    53
                         call             _wcsncpy                                      // 0x00540537    e8e95e2800
                         xor.s            esi, esi                                      // 0x0054053c    33f6
                         push             ebx                                           // 0x0054053e    53
                         {disp32} mov     word ptr [edi + 0x00000222], si               // 0x0054053f    6689b722020000
                         call             _wcslen                                       // 0x00540546    e8175f2800
                         {disp32} mov     dword ptr [edi + 0x0000024c], eax             // 0x0054054b    89874c020000
                         {disp32} mov     dword ptr [edi + 0x00000254], eax             // 0x00540551    898754020000
                         {disp32} mov     dword ptr [edi + 0x00000250], eax             // 0x00540557    898750020000
                         {disp8} mov      eax, dword ptr [esp + 0x20]                   // 0x0054055d    8b442420
                         {disp32} mov     dword ptr [edi + 0x00000258], esi             // 0x00540561    89b758020000
                         {disp8} mov      ecx, dword ptr [eax + 0x24]                   // 0x00540567    8b4824
                         mov              edx, dword ptr [ecx]                          // 0x0054056a    8b11
                         add              esp, 0x10                                     // 0x0054056c    83c410
                         push             esi                                           // 0x0054056f    56
                         call             dword ptr [edx + 8]                           // 0x00540570    ff5208
_jmp_addr_0x00540573:    pop              edi                                           // 0x00540573    5f
                         pop              esi                                           // 0x00540574    5e
                         pop              ebx                                           // 0x00540575    5b
                         ret              0x000c                                        // 0x00540576    c20c00

// Snippet: db, [0x00540579, 0x0054057c)
.byte 0x8d, 0x49, 0x00            // 0x00540579

// Snippet: jmptbl, [0x0054057c, 0x005405a4)
.byte 0xb5, 0x03, 0x54, 0x00      // 0x0054057c
.byte 0x35, 0x04, 0x54, 0x00      // 0x00540580
.byte 0xa7, 0x04, 0x54, 0x00      // 0x00540584
.byte 0x73, 0x05, 0x54, 0x00      // 0x00540588
.byte 0xea, 0x02, 0x54, 0x00      // 0x0054058c
.byte 0x32, 0x03, 0x54, 0x00      // 0x00540590
.byte 0x0e, 0x03, 0x54, 0x00      // 0x00540594
.byte 0x94, 0x03, 0x54, 0x00      // 0x00540598
.byte 0xd9, 0x03, 0x54, 0x00      // 0x0054059c
.byte 0x17, 0x05, 0x54, 0x00      // 0x005405a0

// Snippet: db, [0x005405a4, 0x005405b0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x005405a4
.byte 0x90, 0x90, 0x90, 0x90      // 0x005405a8
.byte 0x90, 0x90, 0x90, 0x90      // 0x005405ac

