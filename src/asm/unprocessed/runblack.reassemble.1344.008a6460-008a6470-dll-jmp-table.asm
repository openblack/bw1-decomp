.intel_syntax noprefix
.balign 0

.extern __imp__GetCurrentProcessId@0
.extern __imp__GetSystemTimeAsFileTime@4

// Unable to set this byte so it's done in post process
//                          int3                                                     // 0x008a645b    cc
                         int3                                                          // 0x008a645c    cc
                         int3                                                          // 0x008a645d    cc
                         int3                                                          // 0x008a645e    cc
                         int3                                                          // 0x008a645f    cc
                         jmp              dword ptr [__imp__GetCurrentProcessId@0]     // 0x008a6460    ff251c938a00
                         jmp              dword ptr [__imp__GetSystemTimeAsFileTime@4] // 0x008a6466    ff256c928a00
                         int3                                                          // 0x008a646c    cc
                         int3                                                          // 0x008a646d    cc
                         int3                                                          // 0x008a646e    cc
                         int3                                                          // 0x008a646f    cc
