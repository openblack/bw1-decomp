.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _wcscpy

.globl _jmp_addr_0x005497f0

start_0x005497f0_0x00549900:
// Snippet: asm, [0x005497f0, 0x005498e9)
_jmp_addr_0x005497f0:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x005497f0    8b442404
                         cmp              eax, 0x03                                     // 0x005497f4    83f803
                         {disp32} ja      _jmp_addr_0x005498e3                          // 0x005497f7    0f87e6000000
                         jmp              dword ptr [eax*4 + 0x5498ec]                  // 0x005497fd    ff2485ec985400
                         cmp              dword ptr [data_bytes + 0x351cac], 0x000012d4 // 0x00549804    813dac7cd100d4120000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0054980e    a1a87cd100
                         {disp32} jbe     _jmp_addr_0x005498d2                          // 0x00549813    0f86b9000000
                         add              eax, 0x0000e1f0                               // 0x00549819    05f0e10000
                         {disp32} jmp     _jmp_addr_0x005498d2                          // 0x0054981e    e9af000000
                         cmp              dword ptr [data_bytes + 0x351cac], 0x000012d5 // 0x00549823    813dac7cd100d5120000
                         {disp8} ja       _jmp_addr_0x0054984b                          // 0x0054982d    771c
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0054982f    a1a87cd100
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x00549834    8b4008
                         push             eax                                           // 0x00549837    50
                         push             0x00cd1194                                    // 0x00549838    689411cd00
                         call             _wcscpy                                       // 0x0054983d    e874c72700
                         add              esp, 0x08                                     // 0x00549842    83c408
                         mov              eax, 0x00cd1194                               // 0x00549845    b89411cd00
                         ret                                                            // 0x0054984a    c3
_jmp_addr_0x0054984b:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0054984b    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x0000e1fc]             // 0x00549851    8d82fce10000
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x00549857    8b4008
                         push             eax                                           // 0x0054985a    50
                         push             0x00cd1194                                    // 0x0054985b    689411cd00
                         call             _wcscpy                                       // 0x00549860    e851c72700
                         add              esp, 0x08                                     // 0x00549865    83c408
                         mov              eax, 0x00cd1194                               // 0x00549868    b89411cd00
                         ret                                                            // 0x0054986d    c3
                         cmp              dword ptr [data_bytes + 0x351cac], 0x000012d6 // 0x0054986e    813dac7cd100d6120000
                         {disp8} ja       _jmp_addr_0x00549896                          // 0x00549878    771c
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0054987a    a1a87cd100
                         {disp8} mov      edx, dword ptr [eax + 0x08]                   // 0x0054987f    8b5008
                         push             edx                                           // 0x00549882    52
                         push             0x00cd1194                                    // 0x00549883    689411cd00
                         call             _wcscpy                                       // 0x00549888    e829c72700
                         add              esp, 0x08                                     // 0x0054988d    83c408
                         mov              eax, 0x00cd1194                               // 0x00549890    b89411cd00
                         ret                                                            // 0x00549895    c3
_jmp_addr_0x00549896:    {disp32} mov     ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00549896    8b0da87cd100
                         {disp32} mov     edx, dword ptr [ecx + 0x0000e210]             // 0x0054989c    8b9110e20000
                         {disp32} lea     eax, dword ptr [ecx + 0x0000e208]             // 0x005498a2    8d8108e20000
                         push             edx                                           // 0x005498a8    52
                         push             0x00cd1194                                    // 0x005498a9    689411cd00
                         call             _wcscpy                                       // 0x005498ae    e803c72700
                         add              esp, 0x08                                     // 0x005498b3    83c408
                         mov              eax, 0x00cd1194                               // 0x005498b6    b89411cd00
                         ret                                                            // 0x005498bb    c3
                         cmp              dword ptr [data_bytes + 0x351cac], 0x000012d6 // 0x005498bc    813dac7cd100d6120000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x005498c6    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x005498d2                          // 0x005498cb    7605
                         add              eax, 0x0000e208                               // 0x005498cd    0508e20000
_jmp_addr_0x005498d2:    {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x005498d2    8b4808
                         push             ecx                                           // 0x005498d5    51
                         push             0x00cd1194                                    // 0x005498d6    689411cd00
                         call             _wcscpy                                       // 0x005498db    e8d6c62700
                         add              esp, 0x08                                     // 0x005498e0    83c408
_jmp_addr_0x005498e3:    mov              eax, 0x00cd1194                               // 0x005498e3    b89411cd00
                         ret                                                            // 0x005498e8    c3

// Snippet: db, [0x005498e9, 0x005498ec)
.byte 0x8d, 0x49, 0x00            // 0x005498e9

// Snippet: jmptbl, [0x005498ec, 0x005498fc)
.byte 0x04, 0x98, 0x54, 0x00      // 0x005498ec
.byte 0x23, 0x98, 0x54, 0x00      // 0x005498f0
.byte 0x6e, 0x98, 0x54, 0x00      // 0x005498f4
.byte 0xbc, 0x98, 0x54, 0x00      // 0x005498f8

// Snippet: db, [0x005498fc, 0x00549900)
.byte 0x90, 0x90, 0x90, 0x90      // 0x005498fc

