.intel_syntax noprefix
.align 16

.extern rdata_bytes

.globl _jmp_IMM32_DLL__ImmAssociateContext
.globl _jmp_IMM32_DLL__ImmGetContext
.globl _jmp_IMM32_DLL__ImmReleaseContext
.globl _jmp_IMM32_DLL__ImmGetCompositionStringA
.globl _jmp_IMM32_DLL__ImmSetCompositionStringA
.globl _jmp_IMM32_DLL__ImmNotifyIME
.globl _jmp_IMM32_DLL__ImmGetOpenStatus
.globl _jmp_IMM32_DLL__ImmSetOpenStatus
.globl _jmp_IMM32_DLL__ImmSetCompositionWindow
.globl _jmp_IMM32_DLL__ImmGetCandidateListA
.globl _jmp_IMM32_DLL__ImmDestroyContext
.globl _jmp_IMM32_DLL__ImmGetProperty
.globl _jmp_IMM32_DLL__ImmCreateContext
.globl _jmp_IMM32_DLL__ImmGetDescriptionA

_jmp_IMM32_DLL__ImmAssociateContext:         jmp      dword ptr [rdata_bytes + 0x10c]                 // 0x008a2710    ff250c918a00
_jmp_IMM32_DLL__ImmGetContext:               jmp      dword ptr [rdata_bytes + 0x110]                 // 0x008a2716    ff2510918a00
_jmp_IMM32_DLL__ImmReleaseContext:           jmp      dword ptr [rdata_bytes + 0x114]                 // 0x008a271c    ff2514918a00
_jmp_IMM32_DLL__ImmGetCompositionStringA:    jmp      dword ptr [rdata_bytes + 0x118]                 // 0x008a2722    ff2518918a00
_jmp_IMM32_DLL__ImmSetCompositionStringA:    jmp      dword ptr [rdata_bytes + 0x11c]                 // 0x008a2728    ff251c918a00
_jmp_IMM32_DLL__ImmNotifyIME:                jmp      dword ptr [rdata_bytes + 0x120]                 // 0x008a272e    ff2520918a00
_jmp_IMM32_DLL__ImmGetOpenStatus:            jmp      dword ptr [rdata_bytes + 0x12c]                 // 0x008a2734    ff252c918a00
_jmp_IMM32_DLL__ImmSetOpenStatus:            jmp      dword ptr [rdata_bytes + 0x128]                 // 0x008a273a    ff2528918a00
_jmp_IMM32_DLL__ImmSetCompositionWindow:     jmp      dword ptr [rdata_bytes + 0xfc]                  // 0x008a2740    ff25fc908a00
_jmp_IMM32_DLL__ImmGetCandidateListA:        jmp      dword ptr [rdata_bytes + 0x124]                 // 0x008a2746    ff2524918a00
_jmp_IMM32_DLL__ImmDestroyContext:           jmp      dword ptr [rdata_bytes + 0x100]                 // 0x008a274c    ff2500918a00
_jmp_IMM32_DLL__ImmGetProperty:              jmp      dword ptr [rdata_bytes + 0x104]                 // 0x008a2752    ff2504918a00
_jmp_IMM32_DLL__ImmCreateContext:            jmp      dword ptr [rdata_bytes + 0xf8]                  // 0x008a2758    ff25f8908a00
_jmp_IMM32_DLL__ImmGetDescriptionA:          jmp      dword ptr [rdata_bytes + 0x108]                 // 0x008a275e    ff2508918a00
                                             int3                                                     // 0x008a2764    cc
                                             int3                                                     // 0x008a2765    cc
                                             int3                                                     // 0x008a2766    cc
                                             int3                                                     // 0x008a2767    cc
                                             int3                                                     // 0x008a2768    cc
                                             int3                                                     // 0x008a2769    cc
                                             int3                                                     // 0x008a276a    cc
                                             int3                                                     // 0x008a276b    cc
                                             int3                                                     // 0x008a276c    cc
                                             int3                                                     // 0x008a276d    cc
                                             int3                                                     // 0x008a276e    cc
                                             int3                                                     // 0x008a276f    cc
