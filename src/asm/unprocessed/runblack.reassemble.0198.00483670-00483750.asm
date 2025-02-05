.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @GetAnim__9MorphableFll@16

.globl _jmp_addr_0x00483670

start_0x00483670_0x00483750:
// Snippet: asm, [0x00483670, 0x00483716)
_jmp_addr_0x00483670:    push             edi                                     // 0x00483670    57
                         mov.s            edi, ecx                                // 0x00483671    8bf9
                         {disp32} mov     eax, dword ptr [edi + 0x00004994]       // 0x00483673    8b8794490000
                         cmp              eax, 0x23                               // 0x00483679    83f823
                         {disp32} ja      _jmp_addr_0x00483712                    // 0x0048367c    0f8790000000
                         xor.s            ecx, ecx                                // 0x00483682    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x0048372c]         // 0x00483684    8a882c374800
                         jmp              dword ptr [ecx*4 + 0x483718]            // 0x0048368a    ff248d18374800
                         {disp32} mov     ecx, dword ptr [edi + 0x00005190]       // 0x00483691    8b8f90510000
                         xor.s            eax, eax                                // 0x00483697    33c0
                         cmp              ecx, 0x05                               // 0x00483699    83f905
                         setne            al                                      // 0x0048369c    0f95c0
                         pop              edi                                     // 0x0048369f    5f
                         ret                                                      // 0x004836a0    c3
                         mov              eax, 0x00000001                         // 0x004836a1    b801000000
                         pop              edi                                     // 0x004836a6    5f
                         ret                                                      // 0x004836a7    c3
                         {disp32} mov     ecx, dword ptr [edi + 0x000049a0]       // 0x004836a8    8b8fa0490000
                         xor.s            eax, eax                                // 0x004836ae    33c0
                         cmp              ecx, 0x26                               // 0x004836b0    83f926
                         sete             al                                      // 0x004836b3    0f94c0
                         pop              edi                                     // 0x004836b6    5f
                         ret                                                      // 0x004836b7    c3
                         push             esi                                     // 0x004836b8    56
                         push             0x0                                     // 0x004836b9    6a00
                         push             0x000000d2                              // 0x004836bb    68d2000000
                         mov.s            ecx, edi                                // 0x004836c0    8bcf
                         call             @GetAnim__9MorphableFll@16              // 0x004836c2    e8895f1900
                         mov              esi, dword ptr [eax]                    // 0x004836c7    8b30
                         {disp32} mov     edi, dword ptr [edi + 0x000047d0]       // 0x004836c9    8bbfd0470000
                         {disp32} lea     ecx, dword ptr [esi * 0x8 + 0x00000000] // 0x004836cf    8d0cf500000000
                         sub.s            ecx, esi                                // 0x004836d6    2bce
                         mov              eax, 0x66666667                         // 0x004836d8    b867666666
                         imul             ecx                                     // 0x004836dd    f7e9
                         sar              edx, 2                                  // 0x004836df    c1fa02
                         mov.s            eax, edx                                // 0x004836e2    8bc2
                         shr              eax, 0x1f                               // 0x004836e4    c1e81f
                         add.s            edx, eax                                // 0x004836e7    03d0
                         cmp.s            edi, edx                                // 0x004836e9    3bfa
                         {disp8} jg       _jmp_addr_0x0048370a                    // 0x004836eb    7f1d
                         lea              ecx, dword ptr [esi + esi * 0x1]        // 0x004836ed    8d0c36
                         mov              eax, 0x66666667                         // 0x004836f0    b867666666
                         imul             ecx                                     // 0x004836f5    f7e9
                         sar              edx, 2                                  // 0x004836f7    c1fa02
                         mov.s            ecx, edx                                // 0x004836fa    8bca
                         shr              ecx, 0x1f                               // 0x004836fc    c1e91f
                         add.s            edx, ecx                                // 0x004836ff    03d1
                         cmp.s            edi, edx                                // 0x00483701    3bfa
                         {disp8} jl       _jmp_addr_0x0048370a                    // 0x00483703    7c05
                         pop              esi                                     // 0x00483705    5e
                         xor.s            eax, eax                                // 0x00483706    33c0
                         pop              edi                                     // 0x00483708    5f
                         ret                                                      // 0x00483709    c3
_jmp_addr_0x0048370a:    pop              esi                                     // 0x0048370a    5e
                         mov              eax, 0x00000001                         // 0x0048370b    b801000000
                         pop              edi                                     // 0x00483710    5f
                         ret                                                      // 0x00483711    c3
_jmp_addr_0x00483712:    xor.s            eax, eax                                // 0x00483712    33c0
                         pop              edi                                     // 0x00483714    5f
                         ret                                                      // 0x00483715    c3

// Snippet: db, [0x00483716, 0x00483718)
.byte 0x8b, 0xff                  // 0x00483716

// Snippet: jmptbl, [0x00483718, 0x0048372c)
.byte 0xa1, 0x36, 0x48, 0x00      // 0x00483718
.byte 0x91, 0x36, 0x48, 0x00      // 0x0048371c
.byte 0xa8, 0x36, 0x48, 0x00      // 0x00483720
.byte 0xb8, 0x36, 0x48, 0x00      // 0x00483724
.byte 0x12, 0x37, 0x48, 0x00      // 0x00483728

// Snippet: ijmptbl, [0x0048372c, 0x00483750)
.byte 0x00, 0x01, 0x04, 0x02      // 0x0048372c
.byte 0x04, 0x04, 0x04, 0x04      // 0x00483730
.byte 0x03, 0x03, 0x04, 0x04      // 0x00483734
.byte 0x04, 0x04, 0x04, 0x04      // 0x00483738
.byte 0x04, 0x04, 0x04, 0x00      // 0x0048373c
.byte 0x00, 0x04, 0x04, 0x04      // 0x00483740
.byte 0x04, 0x04, 0x04, 0x04      // 0x00483744
.byte 0x04, 0x04, 0x04, 0x04      // 0x00483748
.byte 0x04, 0x04, 0x04, 0x00      // 0x0048374c

