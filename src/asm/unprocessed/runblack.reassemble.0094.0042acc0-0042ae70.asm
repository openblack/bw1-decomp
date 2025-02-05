.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x005bd210

.globl _jmp_addr_0x0042acc0

start_0x0042acc0_0x0042ae70:
// Snippet: asm, [0x0042acc0, 0x0042ae39)
_jmp_addr_0x0042acc0:    {disp8} mov       eax, dword ptr [esp + 0x08]                          // 0x0042acc0    8b442408
                         test              eax, eax                                             // 0x0042acc4    85c0
                         push              ebx                                                  // 0x0042acc6    53
                         push              esi                                                  // 0x0042acc7    56
                         push              edi                                                  // 0x0042acc8    57
                         mov.s             esi, ecx                                             // 0x0042acc9    8bf1
                         {disp8} je        _jmp_addr_0x0042ad4b                                 // 0x0042accb    747e
                         {disp8} mov       eax, dword ptr [esi + 0x04]                          // 0x0042accd    8b4604
                         xor.s             ebx, ebx                                             // 0x0042acd0    33db
                         cmp               eax, 0x04                                            // 0x0042acd2    83f804
                         {disp32} ja       _jmp_addr_0x0042ae33                                 // 0x0042acd5    0f8758010000
                         jmp               dword ptr [eax*4 + 0x42ae3c]                         // 0x0042acdb    ff24853cae4200
                         {disp8} mov       eax, dword ptr [esp + 0x10]                          // 0x0042ace2    8b442410
                         {disp8} jmp       _jmp_addr_0x0042ad2a                                 // 0x0042ace6    eb42
                         {disp8} mov       eax, dword ptr [esp + 0x10]                          // 0x0042ace8    8b442410
                         {disp32} mov      eax, dword ptr [eax + 0x00003470]                    // 0x0042acec    8b8070340000
                         {disp8} jmp       _jmp_addr_0x0042ad2a                                 // 0x0042acf2    eb36
                         {disp8} mov       eax, dword ptr [esp + 0x10]                          // 0x0042acf4    8b442410
                         {disp32} mov      ecx, dword ptr [eax + 0x00002c24]                    // 0x0042acf8    8b88242c0000
                         test              ecx, ecx                                             // 0x0042acfe    85c9
                         {disp8} je        _jmp_addr_0x0042ad2a                                 // 0x0042ad00    7428
                         {disp32} mov      eax, dword ptr [eax + 0x00003470]                    // 0x0042ad02    8b8070340000
                         {disp8} jmp       _jmp_addr_0x0042ad2a                                 // 0x0042ad08    eb20
                         {disp8} mov       eax, dword ptr [esp + 0x10]                          // 0x0042ad0a    8b442410
                         {disp32} mov      ecx, dword ptr [eax + 0x00002c24]                    // 0x0042ad0e    8b88242c0000
                         test              ecx, ecx                                             // 0x0042ad14    85c9
                         {disp8} jne       _jmp_addr_0x0042ad2a                                 // 0x0042ad16    7512
                         {disp32} mov      eax, dword ptr [eax + 0x00003470]                    // 0x0042ad18    8b8070340000
                         {disp8} jmp       _jmp_addr_0x0042ad2a                                 // 0x0042ad1e    eb0a
                         {disp8} mov       eax, dword ptr [esp + 0x10]                          // 0x0042ad20    8b442410
                         {disp32} mov      ebx, dword ptr [eax + 0x00003470]                    // 0x0042ad24    8b9870340000
_jmp_addr_0x0042ad2a:    test              eax, eax                                             // 0x0042ad2a    85c0
                         {disp8} je        _jmp_addr_0x0042ad3a                                 // 0x0042ad2c    740c
                         push              0x1                                                  // 0x0042ad2e    6a01
                         push              0x0                                                  // 0x0042ad30    6a00
                         push              eax                                                  // 0x0042ad32    50
                         mov.s             ecx, esi                                             // 0x0042ad33    8bce
                         call              _jmp_addr_0x0042acc0                                 // 0x0042ad35    e886ffffff
_jmp_addr_0x0042ad3a:    test              ebx, ebx                                             // 0x0042ad3a    85db
                         {disp32} je       _jmp_addr_0x0042ae33                                 // 0x0042ad3c    0f84f1000000
                         mov               edi, 0x00000001                                      // 0x0042ad42    bf01000000
                         mov.s             ecx, ebx                                             // 0x0042ad47    8bcb
                         {disp8} jmp       _jmp_addr_0x0042ad53                                 // 0x0042ad49    eb08
_jmp_addr_0x0042ad4b:    {disp8} mov       edi, dword ptr [esp + 0x18]                          // 0x0042ad4b    8b7c2418
                         {disp8} mov       ecx, dword ptr [esp + 0x10]                          // 0x0042ad4f    8b4c2410
_jmp_addr_0x0042ad53:    {disp8} mov       eax, dword ptr [esi + 0x0c]                          // 0x0042ad53    8b460c
                         cdq                                                                    // 0x0042ad56    99
                         mov               ebx, 0x00000050                                      // 0x0042ad57    bb50000000
                         idiv              ebx                                                  // 0x0042ad5c    f7fb
                         test              ecx, ecx                                             // 0x0042ad5e    85c9
                         {disp8} mov       dword ptr [esi + 0x0c], edx                          // 0x0042ad60    89560c
                         {disp32} je       _jmp_addr_0x0042ae33                                 // 0x0042ad63    0f84ca000000
                         {disp8} mov       eax, dword ptr [esi + 0x08]                          // 0x0042ad69    8b4608
                         dec               eax                                                  // 0x0042ad6c    48
                         cmp               eax, 0x06                                            // 0x0042ad6d    83f806
                         {disp32} ja       _jmp_addr_0x0042ae33                                 // 0x0042ad70    0f87bd000000
                         jmp               dword ptr [eax*4 + 0x42ae50]                         // 0x0042ad76    ff248550ae4200
                         {disp8} fild      dword ptr [esi + 0x10]                               // 0x0042ad7d    db4610
                         push              ecx                                                  // 0x0042ad80    51
                         {disp32} fmul     dword ptr [rdata_bytes + 0x1bb10]                    // 0x0042ad81    d80d104b8c00
                         fstp              dword ptr [esp]                                      // 0x0042ad87    d91c24
                         push              edx                                                  // 0x0042ad8a    52
                         call              _jmp_addr_0x005bd210                                 // 0x0042ad8b    e880241900
                         pop               edi                                                  // 0x0042ad90    5f
                         pop               esi                                                  // 0x0042ad91    5e
                         pop               ebx                                                  // 0x0042ad92    5b
                         ret               0x000c                                               // 0x0042ad93    c20c00
                         test              edi, edi                                             // 0x0042ad96    85ff
                         {disp32} je       _jmp_addr_0x0042ae33                                 // 0x0042ad98    0f8495000000
                         {disp32} mov      dword ptr [ecx + edx * 0x4 + 0x000030bc], 0x00000000 // 0x0042ad9e    c78491bc30000000000000
                         {disp8} mov       edx, dword ptr [esi + 0x0c]                          // 0x0042ada9    8b560c
                         pop               edi                                                  // 0x0042adac    5f
                         pop               esi                                                  // 0x0042adad    5e
                         {disp32} mov      dword ptr [ecx + edx * 0x4 + 0x00002f7c], 0x00000001 // 0x0042adae    c784917c2f000001000000
                         pop               ebx                                                  // 0x0042adb9    5b
                         ret               0x000c                                               // 0x0042adba    c20c00
                         test              edi, edi                                             // 0x0042adbd    85ff
                         {disp8} je        _jmp_addr_0x0042ae33                                 // 0x0042adbf    7472
                         {disp32} mov      dword ptr [ecx + edx * 0x4 + 0x000030bc], 0x00000000 // 0x0042adc1    c78491bc30000000000000
                         {disp8} mov       eax, dword ptr [esi + 0x0c]                          // 0x0042adcc    8b460c
                         pop               edi                                                  // 0x0042adcf    5f
                         pop               esi                                                  // 0x0042add0    5e
                         {disp32} mov      dword ptr [ecx + eax * 0x4 + 0x00002f7c], 0x00000002 // 0x0042add1    c784817c2f000002000000
                         pop               ebx                                                  // 0x0042addc    5b
                         ret               0x000c                                               // 0x0042addd    c20c00
                         {disp32} mov      eax, dword ptr [ecx + edx * 0x4 + 0x00002f7c]        // 0x0042ade0    8b84917c2f0000
                         cmp               eax, 0x03                                            // 0x0042ade7    83f803
                         {disp8} je        _jmp_addr_0x0042adf1                                 // 0x0042adea    7405
                         cmp               eax, 0x02                                            // 0x0042adec    83f802
                         {disp8} jne       _jmp_addr_0x0042ae33                                 // 0x0042adef    7542
_jmp_addr_0x0042adf1:    pop               edi                                                  // 0x0042adf1    5f
                         pop               esi                                                  // 0x0042adf2    5e
                         {disp32} mov      dword ptr [ecx + edx * 0x4 + 0x00002f7c], 0x00000004 // 0x0042adf3    c784917c2f000004000000
                         pop               ebx                                                  // 0x0042adfe    5b
                         ret               0x000c                                               // 0x0042adff    c20c00
                         {disp32} mov      edx, dword ptr [ecx + 0x00002f78]                    // 0x0042ae02    8b91782f0000
                         pop               edi                                                  // 0x0042ae08    5f
                         {disp32} mov      dword ptr [ecx + 0x00002f74], edx                    // 0x0042ae09    8991742f0000
                         {disp8} mov       eax, dword ptr [esi + 0x0c]                          // 0x0042ae0f    8b460c
                         pop               esi                                                  // 0x0042ae12    5e
                         {disp32} mov      dword ptr [ecx + 0x00002f78], eax                    // 0x0042ae13    8981782f0000
                         pop               ebx                                                  // 0x0042ae19    5b
                         ret               0x000c                                               // 0x0042ae1a    c20c00
                         {disp32} mov      edx, dword ptr [ecx + 0x00002f74]                    // 0x0042ae1d    8b91742f0000
                         {disp32} mov      dword ptr [ecx + 0x00002f78], edx                    // 0x0042ae23    8991782f0000
                         {disp32} mov      dword ptr [ecx + 0x00002f74], 0x00000000             // 0x0042ae29    c781742f000000000000
_jmp_addr_0x0042ae33:    pop               edi                                                  // 0x0042ae33    5f
                         pop               esi                                                  // 0x0042ae34    5e
                         pop               ebx                                                  // 0x0042ae35    5b
                         ret               0x000c                                               // 0x0042ae36    c20c00

// Snippet: db, [0x0042ae39, 0x0042ae3c)
.byte 0x8d, 0x49, 0x00            // 0x0042ae39

// Snippet: jmptbl, [0x0042ae3c, 0x0042ae6c)
.byte 0xe2, 0xac, 0x42, 0x00      // 0x0042ae3c
.byte 0xe8, 0xac, 0x42, 0x00      // 0x0042ae40
.byte 0xf4, 0xac, 0x42, 0x00      // 0x0042ae44
.byte 0x0a, 0xad, 0x42, 0x00      // 0x0042ae48
.byte 0x20, 0xad, 0x42, 0x00      // 0x0042ae4c
.byte 0x96, 0xad, 0x42, 0x00      // 0x0042ae50
.byte 0xbd, 0xad, 0x42, 0x00      // 0x0042ae54
.byte 0xe0, 0xad, 0x42, 0x00      // 0x0042ae58
.byte 0x7d, 0xad, 0x42, 0x00      // 0x0042ae5c
.byte 0x02, 0xae, 0x42, 0x00      // 0x0042ae60
.byte 0x02, 0xae, 0x42, 0x00      // 0x0042ae64
.byte 0x1d, 0xae, 0x42, 0x00      // 0x0042ae68

// Snippet: db, [0x0042ae6c, 0x0042ae70)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0042ae6c

