.intel_syntax noprefix
.align 16

.extern rdata_bytes

.globl _jmp_DDRAW_DLL__DirectDrawEnumerateA
.globl _jmp_DDRAW_DLL__DirectDrawCreateEx
.globl _jmp_DDRAW_DLL__DirectDrawCreate

_jmp_DDRAW_DLL__DirectDrawEnumerateA:              jmp                dword ptr [rdata_bytes + 0x28]                // 0x00898390    ff2528908a00
_jmp_DDRAW_DLL__DirectDrawCreateEx:                jmp                dword ptr [rdata_bytes + 0x24]                // 0x00898396    ff2524908a00
_jmp_DDRAW_DLL__DirectDrawCreate:                  jmp                dword ptr [rdata_bytes + 0x2c]                // 0x0089839c    ff252c908a00
_jmp_WINMM_DLL__mmioAscend:                        jmp                dword ptr [rdata_bytes + 0x888]               // 0x008983a2    ff2588988a00
_jmp_WINMM_DLL__mmioRead:                          jmp                dword ptr [rdata_bytes + 0x8c8]               // 0x008983a8    ff25c8988a00
_jmp_WINMM_DLL__mmioClose:                         jmp                dword ptr [rdata_bytes + 0x884]               // 0x008983ae    ff2584988a00
_jmp_WINMM_DLL__mmioDescend:                       jmp                dword ptr [rdata_bytes + 0x8c4]               // 0x008983b4    ff25c4988a00
_jmp_WINMM_DLL__mmioOpenA:                         jmp                dword ptr [rdata_bytes + 0x8c0]               // 0x008983ba    ff25c0988a00
_jmp_WINMM_DLL__waveInAddBuffer:                   jmp                dword ptr [rdata_bytes + 0x8b4]               // 0x008983c0    ff25b4988a00
_jmp_WINMM_DLL__waveInPrepareHeader:               jmp                dword ptr [rdata_bytes + 0x8bc]               // 0x008983c6    ff25bc988a00
_jmp_WINMM_DLL__waveInUnprepareHeader:             jmp                dword ptr [rdata_bytes + 0x8b8]               // 0x008983cc    ff25b8988a00
_jmp_WINMM_DLL__waveInClose:                       jmp                dword ptr [rdata_bytes + 0x8a8]               // 0x008983d2    ff25a8988a00
_jmp_WINMM_DLL__waveInReset:                       jmp                dword ptr [rdata_bytes + 0x8b0]               // 0x008983d8    ff25b0988a00
_jmp_WINMM_DLL__waveInStart:                       jmp                dword ptr [rdata_bytes + 0x8ac]               // 0x008983de    ff25ac988a00
_jmp_WINMM_DLL__waveInOpen:                        jmp                dword ptr [rdata_bytes + 0x89c]               // 0x008983e4    ff259c988a00
_jmp_WINMM_DLL__waveInGetDevCapsA:                 jmp                dword ptr [rdata_bytes + 0x8a4]               // 0x008983ea    ff25a4988a00
_jmp_WINMM_DLL__waveInGetNumDevs:                  jmp                dword ptr [rdata_bytes + 0x8a0]               // 0x008983f0    ff25a0988a00
_jmp_WINMM_DLL__timeGetTime:                       jmp                dword ptr [rdata_bytes + 0x88c]               // 0x008983f6    ff258c988a00
_jmp_WINMM_DLL__timeKillEvent:                     jmp                dword ptr [rdata_bytes + 0x890]               // 0x008983fc    ff2590988a00
_jmp_WINMM_DLL__timeSetEvent:                      jmp                dword ptr [rdata_bytes + 0x898]               // 0x00898402    ff2598988a00
_jmp_WINMM_DLL__mciSendCommandA:                   jmp                dword ptr [rdata_bytes + 0x894]               // 0x00898408    ff2594988a00
_jmp_WEARASR_DLL__Dialup__dt_Dialup:               jmp                dword ptr [rdata_bytes + 0x990]               // 0x0089840e    ff2590998a00
_jmp_WEARASR_DLL__Dialup__Release:                 jmp                dword ptr [rdata_bytes + 0x998]               // 0x00898414    ff2598998a00
_jmp_WEARASR_DLL__Dialup__GetDialupProperties:     jmp                dword ptr [rdata_bytes + 0x994]               // 0x0089841a    ff2594998a00
_jmp_WEARASR_DLL__Dialup__GetDefaultEntryIndex:    jmp                dword ptr [rdata_bytes + 0x984]               // 0x00898420    ff2584998a00
_jmp_WEARASR_DLL__Dialup__GetNoDialUpConnecti:     jmp                dword ptr [rdata_bytes + 0x98c]               // 0x00898426    ff258c998a00
_jmp_WEARASR_DLL__Dialup__Initialise:              jmp                dword ptr [rdata_bytes + 0x988]               // 0x0089842c    ff2588998a00
_jmp_WEARASR_DLL__Dialup__Dialup:                  jmp                dword ptr [rdata_bytes + 0x980]               // 0x00898432    ff2580998a00
_jmp_WEARASR_DLL__Dialup__Disconnect:              jmp                dword ptr [rdata_bytes + 0x99c]               // 0x00898438    ff259c998a00
_jmp_WEARASR_DLL__Dialup__Connect:                 jmp                dword ptr [rdata_bytes + 0x9a0]               // 0x0089843e    ff25a0998a00
                                                   int3                                                             // 0x00898444    cc
                                                   int3                                                             // 0x00898445    cc
                                                   int3                                                             // 0x00898446    cc
                                                   int3                                                             // 0x00898447    cc
                                                   int3                                                             // 0x00898448    cc
                                                   int3                                                             // 0x00898449    cc
                                                   int3                                                             // 0x0089844a    cc
                                                   int3                                                             // 0x0089844b    cc
                                                   int3                                                             // 0x0089844c    cc
                                                   int3                                                             // 0x0089844d    cc
                                                   int3                                                             // 0x0089844e    cc
                                                   int3                                                             // 0x0089844f    cc
