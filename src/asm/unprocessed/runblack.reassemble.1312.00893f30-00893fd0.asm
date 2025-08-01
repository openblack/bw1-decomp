.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _atoi

.globl _jmp_addr_0x00893f30

start_0x00893f30_0x00893fd0:
// Snippet: asm, [0x00893f30, 0x00893fab)
_jmp_addr_0x00893f30:    {disp8} mov     eax, dword ptr [esp + 0x08]        // 0x00893f30    8b442408
                         cmp             dword ptr [eax], 0x00              // 0x00893f34    833800
                         {disp8} je      _jmp_addr_0x00893faa               // 0x00893f37    7471
                         push            esi                                // 0x00893f39    56
                         push            edi                                // 0x00893f3a    57
                         {disp8} mov     edi, dword ptr [esp + 0x0c]        // 0x00893f3b    8b7c240c
                         {disp8} lea     esi, dword ptr [eax + 0x04]        // 0x00893f3f    8d7004
_jmp_addr_0x00893f42:    {disp8} mov     eax, dword ptr [esi + -0x04]       // 0x00893f42    8b46fc
                         add             eax, -0x02                         // 0x00893f45    83c0fe
                         cmp             eax, 0x07                          // 0x00893f48    83f807
                         {disp8} ja      _jmp_addr_0x00893f9e               // 0x00893f4b    7751
                         jmp             dword ptr [eax*4 + 0x893fac]       // 0x00893f4d    ff2485ac3f8900
                         mov             eax, dword ptr [esi]               // 0x00893f54    8b06
                         mov             dword ptr [edi], eax               // 0x00893f56    8907
                         {disp8} jmp     _jmp_addr_0x00893f9e               // 0x00893f58    eb44
                         cmp             dword ptr [esi], 0x00              // 0x00893f5a    833e00
                         {disp8} je      _jmp_addr_0x00893f74               // 0x00893f5d    7415
                         {disp8} mov     eax, dword ptr [esi + 0x04]        // 0x00893f5f    8b4604
                         test            eax, eax                           // 0x00893f62    85c0
                         {disp8} je      _jmp_addr_0x00893f74               // 0x00893f64    740e
                         push            eax                                // 0x00893f66    50
                         call            _atoi               // 0x00893f67    e81b26f3ff
                         add             esp, 0x04                          // 0x00893f6c    83c404
                         {disp8} mov     dword ptr [edi + 0x18], eax        // 0x00893f6f    894718
                         {disp8} jmp     _jmp_addr_0x00893f9e               // 0x00893f72    eb2a
_jmp_addr_0x00893f74:    {disp8} mov     dword ptr [edi + 0x18], 0x00000000 // 0x00893f74    c7471800000000
                         {disp8} jmp     _jmp_addr_0x00893f9e               // 0x00893f7b    eb21
                         mov             ecx, dword ptr [esi]               // 0x00893f7d    8b0e
                         {disp8} mov     dword ptr [edi + 0x04], ecx        // 0x00893f7f    894f04
                         {disp8} jmp     _jmp_addr_0x00893f9e               // 0x00893f82    eb1a
                         mov             edx, dword ptr [esi]               // 0x00893f84    8b16
                         {disp8} mov     dword ptr [edi + 0x08], edx        // 0x00893f86    895708
                         {disp8} jmp     _jmp_addr_0x00893f9e               // 0x00893f89    eb13
                         mov             eax, dword ptr [esi]               // 0x00893f8b    8b06
                         {disp8} mov     dword ptr [edi + 0x0c], eax        // 0x00893f8d    89470c
                         {disp8} jmp     _jmp_addr_0x00893f9e               // 0x00893f90    eb0c
                         mov             ecx, dword ptr [esi]               // 0x00893f92    8b0e
                         {disp8} mov     dword ptr [edi + 0x10], ecx        // 0x00893f94    894f10
                         {disp8} jmp     _jmp_addr_0x00893f9e               // 0x00893f97    eb05
                         mov             edx, dword ptr [esi]               // 0x00893f99    8b16
                         {disp8} mov     dword ptr [edi + 0x14], edx        // 0x00893f9b    895714
_jmp_addr_0x00893f9e:    {disp8} mov     eax, dword ptr [esi + 0x08]        // 0x00893f9e    8b4608
                         add             esi, 0x0c                          // 0x00893fa1    83c60c
                         test            eax, eax                           // 0x00893fa4    85c0
                         {disp8} jne     _jmp_addr_0x00893f42               // 0x00893fa6    759a
                         pop             edi                                // 0x00893fa8    5f
                         pop             esi                                // 0x00893fa9    5e
_jmp_addr_0x00893faa:    ret                                                // 0x00893faa    c3

// Snippet: db, [0x00893fab, 0x00893fac)
.byte 0x90                        // 0x00893fab

// Snippet: jmptbl, [0x00893fac, 0x00893fcc)
.byte 0x54, 0x3f, 0x89, 0x00      // 0x00893fac
.byte 0x5a, 0x3f, 0x89, 0x00      // 0x00893fb0
.byte 0x7d, 0x3f, 0x89, 0x00      // 0x00893fb4
.byte 0x84, 0x3f, 0x89, 0x00      // 0x00893fb8
.byte 0x9e, 0x3f, 0x89, 0x00      // 0x00893fbc
.byte 0x8b, 0x3f, 0x89, 0x00      // 0x00893fc0
.byte 0x92, 0x3f, 0x89, 0x00      // 0x00893fc4
.byte 0x99, 0x3f, 0x89, 0x00      // 0x00893fc8

// Snippet: db, [0x00893fcc, 0x00893fd0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00893fcc

