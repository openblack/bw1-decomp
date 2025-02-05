.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00887e40
.extern _jmp_addr_0x00887e50
.extern _jmp_addr_0x00888060

.globl _jmp_addr_0x00897480
.globl _jmp_addr_0x008974c0

start_0x00897480_0x00897550:
// Snippet: asm, [0x00897480, 0x00897535)
_jmp_addr_0x00897480:    push             esi                                    // 0x00897480    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]            // 0x00897481    8b74240c
                         test             esi, esi                               // 0x00897485    85f6
                         push             edi                                    // 0x00897487    57
                         {disp8} jl       _jmp_addr_0x008974b0                   // 0x00897488    7c26
                         {disp8} mov      edi, dword ptr [esp + 0x0c]            // 0x0089748a    8b7c240c
                         {disp8} mov      eax, dword ptr [edi + 0x04]            // 0x0089748e    8b4704
                         push             eax                                    // 0x00897491    50
                         call             _jmp_addr_0x00887e40                   // 0x00897492    e8a909ffff
                         add              esp, 0x04                              // 0x00897497    83c404
                         cmp.s            esi, eax                               // 0x0089749a    3bf0
                         {disp8} jge      _jmp_addr_0x008974b0                   // 0x0089749c    7d12
                         {disp8} mov      ecx, dword ptr [edi + 0x04]            // 0x0089749e    8b4f04
                         push             esi                                    // 0x008974a1    56
                         push             ecx                                    // 0x008974a2    51
                         call             _jmp_addr_0x00887e50                   // 0x008974a3    e8a809ffff
                         mov              eax, dword ptr [eax]                   // 0x008974a8    8b00
                         add              esp, 0x08                              // 0x008974aa    83c408
                         pop              edi                                    // 0x008974ad    5f
                         pop              esi                                    // 0x008974ae    5e
                         ret                                                     // 0x008974af    c3
_jmp_addr_0x008974b0:    pop              edi                                    // 0x008974b0    5f
                         xor.s            eax, eax                               // 0x008974b1    33c0
                         pop              esi                                    // 0x008974b3    5e
                         ret                                                     // 0x008974b4    c3
                         nop                                                     // 0x008974b5    90
                         nop                                                     // 0x008974b6    90
                         nop                                                     // 0x008974b7    90
                         nop                                                     // 0x008974b8    90
                         nop                                                     // 0x008974b9    90
                         nop                                                     // 0x008974ba    90
                         nop                                                     // 0x008974bb    90
                         nop                                                     // 0x008974bc    90
                         nop                                                     // 0x008974bd    90
                         nop                                                     // 0x008974be    90
                         nop                                                     // 0x008974bf    90
_jmp_addr_0x008974c0:    {disp8} mov      eax, dword ptr [esp + 0x04]            // 0x008974c0    8b442404
                         {disp8} mov      ecx, dword ptr [eax + 0x04]            // 0x008974c4    8b4804
                         push             ecx                                    // 0x008974c7    51
                         call             _jmp_addr_0x00887e40                   // 0x008974c8    e87309ffff
                         add              esp, 0x04                              // 0x008974cd    83c404
                         ret                                                     // 0x008974d0    c3
                         nop                                                     // 0x008974d1    90
                         nop                                                     // 0x008974d2    90
                         nop                                                     // 0x008974d3    90
                         nop                                                     // 0x008974d4    90
                         nop                                                     // 0x008974d5    90
                         nop                                                     // 0x008974d6    90
                         nop                                                     // 0x008974d7    90
                         nop                                                     // 0x008974d8    90
                         nop                                                     // 0x008974d9    90
                         nop                                                     // 0x008974da    90
                         nop                                                     // 0x008974db    90
                         nop                                                     // 0x008974dc    90
                         nop                                                     // 0x008974dd    90
                         nop                                                     // 0x008974de    90
                         nop                                                     // 0x008974df    90
                         {disp8} mov      eax, dword ptr [esp + 0x10]            // 0x008974e0    8b442410
                         cmp              eax, 0x03                              // 0x008974e4    83f803
                         {disp8} ja       _jmp_addr_0x00897505                   // 0x008974e7    771c
                         jmp              dword ptr [eax*4 + 0x897538]           // 0x008974e9    ff248538758900
                         mov              ecx, 0x00897550                        // 0x008974f0    b950758900
                         {disp8} jmp      _jmp_addr_0x0089750a                   // 0x008974f5    eb13
                         mov              ecx, 0x008975b0                        // 0x008974f7    b9b0758900
                         {disp8} jmp      _jmp_addr_0x0089750a                   // 0x008974fc    eb0c
                         mov              ecx, 0x00897640                        // 0x008974fe    b940768900
                         {disp8} jmp      _jmp_addr_0x0089750a                   // 0x00897503    eb05
_jmp_addr_0x00897505:    mov              ecx, 0x008976d0                        // 0x00897505    b9d0768900
_jmp_addr_0x0089750a:    {disp8} mov      eax, dword ptr [esp + 0x04]            // 0x0089750a    8b442404
                         {disp8} mov      edx, dword ptr [esp + 0x0c]            // 0x0089750e    8b54240c
                         push             ecx                                    // 0x00897512    51
                         {disp32} mov     dword ptr [eax + 0x00000080], edx      // 0x00897513    899080000000
                         {disp8} mov      edx, dword ptr [esp + 0x0c]            // 0x00897519    8b54240c
                         {disp32} mov     dword ptr [eax + 0x00000084], edx      // 0x0089751d    899084000000
                         {disp32} mov     dword ptr [data_bytes + 0x5f9da0], eax // 0x00897523    a3a0fdfb00
                         {disp8} mov      eax, dword ptr [eax + 0x04]            // 0x00897528    8b4004
                         push             eax                                    // 0x0089752b    50
                         call             _jmp_addr_0x00888060                   // 0x0089752c    e82f0bffff
                         add              esp, 0x08                              // 0x00897531    83c408
                         ret                                                     // 0x00897534    c3

// Snippet: db, [0x00897535, 0x00897538)
.byte 0x8d, 0x49, 0x00            // 0x00897535

// Snippet: jmptbl, [0x00897538, 0x00897548)
.byte 0xf0, 0x74, 0x89, 0x00      // 0x00897538
.byte 0xf7, 0x74, 0x89, 0x00      // 0x0089753c
.byte 0xfe, 0x74, 0x89, 0x00      // 0x00897540
.byte 0x05, 0x75, 0x89, 0x00      // 0x00897544

// Snippet: db, [0x00897548, 0x00897550)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00897548
.byte 0x90, 0x90, 0x90, 0x90      // 0x0089754c

