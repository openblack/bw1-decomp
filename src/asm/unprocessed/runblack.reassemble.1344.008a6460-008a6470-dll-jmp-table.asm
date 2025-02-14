.intel_syntax noprefix
.align 16

.extern rdata_bytes

                         jmp              dword ptr [rdata_bytes + 0x31c]         // 0x008a6460    ff251c938a00
                         jmp              dword ptr [rdata_bytes + 0x26c]         // 0x008a6466    ff256c928a00
                         int3                                                     // 0x008a646c    cc
                         int3                                                     // 0x008a646d    cc
                         int3                                                     // 0x008a646e    cc
                         int3                                                     // 0x008a646f    cc
