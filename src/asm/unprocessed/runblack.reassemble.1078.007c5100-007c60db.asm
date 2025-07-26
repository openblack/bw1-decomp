.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern  ___dl__FPv
.extern _jmp_addr_0x007c6288
.extern _malloc
.extern _free
.extern ??0exception@@QAE@ABQBD@Z
.extern ??0exception@@QAE@ABV0@@Z
.extern ??1exception@@UAE@XZ
.extern __CxxThrowException@8
.extern _jmp_addr_0x007c989f
.extern __lockexit
.extern __unlockexit
.extern __amsg_exit
.extern __lock
.extern __unlock
.extern ___crtLCMapStringA
.extern __isctype
.extern __setdefaultprecision
.extern _jmp_addr_0x007cc9b2
.extern _strcmp
.extern _jmp_addr_0x007cce94
.extern __flsbuf
.extern __output
.extern __itoa
.extern __ltoa
.extern __ultoa
.extern __i64toa
.extern __ui64toa

.globl _jmp_addr_0x007c5394
.globl _jmp_addr_0x007c56e0
.globl _atexit@4
.globl _jmp_addr_0x007c57d2
.globl _jmp_addr_0x007c593a
.globl _jmp_addr_0x007c5a19
.globl _toupper
.globl _wcscat
.globl _wcscpy
.globl _jmp_addr_0x007c614c
.globl _fltused
.globl _jmp_addr_0x007c561b
.globl _jmp_addr_0x007c568d
.globl _jmp_addr_0x007c57a3
.globl __purecall

                         jmp              dword ptr [rdata_bytes + 0x758]               // 0x007c5100    ff2558978a00
                         jmp              dword ptr [rdata_bytes + 0x75c]               // 0x007c5106    ff255c978a00
                         jmp              dword ptr [rdata_bytes + 0x760]               // 0x007c510c    ff2560978a00
                         jmp              dword ptr [rdata_bytes + 0x764]               // 0x007c5112    ff2564978a00
                         jmp              dword ptr [rdata_bytes + 0x768]               // 0x007c5118    ff2568978a00
                         jmp              dword ptr [rdata_bytes + 0x774]               // 0x007c511e    ff2574978a00
                         jmp              dword ptr [rdata_bytes + 0x7a0]               // 0x007c5124    ff25a0978a00
                         jmp              dword ptr [rdata_bytes + 0x6f4]               // 0x007c512a    ff25f4968a00
                         jmp              dword ptr [rdata_bytes + 0x6f8]               // 0x007c5130    ff25f8968a00
                         jmp              dword ptr [rdata_bytes + 0x6fc]               // 0x007c5136    ff25fc968a00
                         jmp              dword ptr [rdata_bytes + 0x700]               // 0x007c513c    ff2500978a00
                         jmp              dword ptr [rdata_bytes + 0x704]               // 0x007c5142    ff2504978a00
                         jmp              dword ptr [rdata_bytes + 0x708]               // 0x007c5148    ff2508978a00
                         jmp              dword ptr [__imp___0LH_AudioSystem__QAE_XZ@4] // 0x007c514e    ff250c978a00
                         jmp              dword ptr [__imp___1LH_AudioSystem__QAE_XZ@4] // 0x007c5154    ff2510978a00
                         jmp              dword ptr [rdata_bytes + 0x714]               // 0x007c515a    ff2514978a00
                         jmp              dword ptr [rdata_bytes + 0x718]               // 0x007c5160    ff2518978a00
                         jmp              dword ptr [rdata_bytes + 0x71c]               // 0x007c5166    ff251c978a00
                         jmp              dword ptr [rdata_bytes + 0x720]               // 0x007c516c    ff2520978a00
                         jmp              dword ptr [rdata_bytes + 0x724]               // 0x007c5172    ff2524978a00
                         jmp              dword ptr [rdata_bytes + 0x728]               // 0x007c5178    ff2528978a00
                         jmp              dword ptr [rdata_bytes + 0x72c]               // 0x007c517e    ff252c978a00
                         jmp              dword ptr [rdata_bytes + 0x730]               // 0x007c5184    ff2530978a00
                         jmp              dword ptr [rdata_bytes + 0x734]               // 0x007c518a    ff2534978a00
                         jmp              dword ptr [rdata_bytes + 0x6cc]               // 0x007c5190    ff25cc968a00
                         jmp              dword ptr [rdata_bytes + 0x73c]               // 0x007c5196    ff253c978a00
                         jmp              dword ptr [rdata_bytes + 0x740]               // 0x007c519c    ff2540978a00
                         jmp              dword ptr [rdata_bytes + 0x744]               // 0x007c51a2    ff2544978a00
                         jmp              dword ptr [rdata_bytes + 0x748]               // 0x007c51a8    ff2548978a00
                         jmp              dword ptr [rdata_bytes + 0x76c]               // 0x007c51ae    ff256c978a00
                         jmp              dword ptr [rdata_bytes + 0x770]               // 0x007c51b4    ff2570978a00
                         jmp              dword ptr [rdata_bytes + 0x6b8]               // 0x007c51ba    ff25b8968a00
                         jmp              dword ptr [rdata_bytes + 0x6bc]               // 0x007c51c0    ff25bc968a00
                         jmp              dword ptr [rdata_bytes + 0x778]               // 0x007c51c6    ff2578978a00
                         jmp              dword ptr [rdata_bytes + 0x77c]               // 0x007c51cc    ff257c978a00
                         jmp              dword ptr [rdata_bytes + 0x754]               // 0x007c51d2    ff2554978a00
                         jmp              dword ptr [rdata_bytes + 0x784]               // 0x007c51d8    ff2584978a00
                         jmp              dword ptr [rdata_bytes + 0x788]               // 0x007c51de    ff2588978a00
                         jmp              dword ptr [rdata_bytes + 0x78c]               // 0x007c51e4    ff258c978a00
                         jmp              dword ptr [rdata_bytes + 0x790]               // 0x007c51ea    ff2590978a00
                         jmp              dword ptr [rdata_bytes + 0x780]               // 0x007c51f0    ff2580978a00
                         jmp              dword ptr [rdata_bytes + 0x794]               // 0x007c51f6    ff2594978a00
                         jmp              dword ptr [rdata_bytes + 0x798]               // 0x007c51fc    ff2598978a00
                         jmp              dword ptr [rdata_bytes + 0x79c]               // 0x007c5202    ff259c978a00
                         jmp              dword ptr [rdata_bytes + 0x6c8]               // 0x007c5208    ff25c8968a00
                         jmp              dword ptr [rdata_bytes + 0x6c0]               // 0x007c520e    ff25c0968a00
                         jmp              dword ptr [rdata_bytes + 0x7a4]               // 0x007c5214    ff25a4978a00
                         jmp              dword ptr [rdata_bytes + 0x738]               // 0x007c521a    ff2538978a00
                         jmp              dword ptr [rdata_bytes + 0x74c]               // 0x007c5220    ff254c978a00
                         jmp              dword ptr [rdata_bytes + 0x6f0]               // 0x007c5226    ff25f0968a00
                         jmp              dword ptr [rdata_bytes + 0x6ec]               // 0x007c522c    ff25ec968a00
                         jmp              dword ptr [rdata_bytes + 0x750]               // 0x007c5232    ff2550978a00
                         jmp              dword ptr [rdata_bytes + 0x6d0]               // 0x007c5238    ff25d0968a00
                         jmp              dword ptr [rdata_bytes + 0x6d4]               // 0x007c523e    ff25d4968a00
                         jmp              dword ptr [rdata_bytes + 0x6d8]               // 0x007c5244    ff25d8968a00
                         jmp              dword ptr [rdata_bytes + 0x6dc]               // 0x007c524a    ff25dc968a00
                         jmp              dword ptr [rdata_bytes + 0x6e0]               // 0x007c5250    ff25e0968a00
                         jmp              dword ptr [rdata_bytes + 0x6e4]               // 0x007c5256    ff25e4968a00
                         jmp              dword ptr [rdata_bytes + 0x6e8]               // 0x007c525c    ff25e8968a00
                         jmp              dword ptr [rdata_bytes + 0x6a4]               // 0x007c5262    ff25a4968a00
                         jmp              dword ptr [rdata_bytes + 0x6a0]               // 0x007c5268    ff25a0968a00
                         jmp              dword ptr [__imp__Reset_DBInfo__QAEXXZ@4]     // 0x007c526e    ff259c968a00
                         jmp              dword ptr [rdata_bytes + 0x698]               // 0x007c5274    ff2598968a00
                         jmp              dword ptr [rdata_bytes + 0x694]               // 0x007c527a    ff2594968a00
                         jmp              dword ptr [rdata_bytes + 0x690]               // 0x007c5280    ff2590968a00
                         jmp              dword ptr [rdata_bytes + 0x68c]               // 0x007c5286    ff258c968a00
                         jmp              dword ptr [__imp___0LH_USER_ID__QAE_K_Z@4]    // 0x007c528c    ff2588968a00
                         jmp              dword ptr [rdata_bytes + 0x684]               // 0x007c5292    ff2584968a00
                         jmp              dword ptr [rdata_bytes + 0x680]               // 0x007c5298    ff2580968a00
                         jmp              dword ptr [rdata_bytes + 0x67c]               // 0x007c529e    ff257c968a00
                         jmp              dword ptr [rdata_bytes + 0x674]               // 0x007c52a4    ff2574968a00
                         jmp              dword ptr [__imp___0LH_USER_ID__QAE_XZ@4]     // 0x007c52aa    ff256c968a00
                         jmp              dword ptr [rdata_bytes + 0x668]               // 0x007c52b0    ff2568968a00
                         jmp              dword ptr [__imp__Startup_LHSocket__SAXXZ@4]  // 0x007c52b6    ff25ac968a00
                         jmp              dword ptr [rdata_bytes + 0x664]               // 0x007c52bc    ff2564968a00
                         jmp              dword ptr [rdata_bytes + 0x660]               // 0x007c52c2    ff2560968a00
                         jmp              dword ptr [rdata_bytes + 0x65c]               // 0x007c52c8    ff255c968a00
                         jmp              dword ptr [rdata_bytes + 0x658]               // 0x007c52ce    ff2558968a00
                         jmp              dword ptr [rdata_bytes + 0x654]               // 0x007c52d4    ff2554968a00
                         jmp              dword ptr [rdata_bytes + 0x650]               // 0x007c52da    ff2550968a00
                         jmp              dword ptr [rdata_bytes + 0x64c]               // 0x007c52e0    ff254c968a00
                         jmp              dword ptr [rdata_bytes + 0x648]               // 0x007c52e6    ff2548968a00
                         jmp              dword ptr [rdata_bytes + 0x644]               // 0x007c52ec    ff2544968a00
                         jmp              dword ptr [rdata_bytes + 0x640]               // 0x007c52f2    ff2540968a00
                         jmp              dword ptr [rdata_bytes + 0x63c]               // 0x007c52f8    ff253c968a00
                         jmp              dword ptr [rdata_bytes + 0x638]               // 0x007c52fe    ff2538968a00
                         jmp              dword ptr [rdata_bytes + 0x634]               // 0x007c5304    ff2534968a00
                         jmp              dword ptr [rdata_bytes + 0x630]               // 0x007c530a    ff2530968a00
                         jmp              dword ptr [rdata_bytes + 0x62c]               // 0x007c5310    ff252c968a00
                         jmp              dword ptr [rdata_bytes + 0x628]               // 0x007c5316    ff2528968a00
                         jmp              dword ptr [__imp___1LHPlayer__QAE_XZ@4]       // 0x007c531c    ff2518968a00
                         jmp              dword ptr [rdata_bytes + 0x614]               // 0x007c5322    ff2514968a00
                         jmp              dword ptr [rdata_bytes + 0x60c]               // 0x007c5328    ff250c968a00
                         jmp              dword ptr [rdata_bytes + 0x608]               // 0x007c532e    ff2508968a00
                         jmp              dword ptr [rdata_bytes + 0x604]               // 0x007c5334    ff2504968a00
                         jmp              dword ptr [__imp___0LHFileDownload__QAE_XZ@4] // 0x007c533a    ff2500968a00
                         jmp              dword ptr [__imp___1LHFileDownload__QAE_XZ@4] // 0x007c5340    ff25fc958a00
                         jmp              dword ptr [rdata_bytes + 0x5f8]               // 0x007c5346    ff25f8958a00
                         jmp              dword ptr [rdata_bytes + 0x5f4]               // 0x007c534c    ff25f4958a00
                         jmp              dword ptr [rdata_bytes + 0x5f0]               // 0x007c5352    ff25f0958a00
                         jmp              dword ptr [rdata_bytes + 0x5ec]               // 0x007c5358    ff25ec958a00
                         jmp              dword ptr [rdata_bytes + 0x5e8]               // 0x007c535e    ff25e8958a00
                         jmp              dword ptr [rdata_bytes + 0x4d4]               // 0x007c5364    ff25d4948a00
                         jmp              dword ptr [__imp__LHNetUseProfile__YAXPAG_Z@4]// 0x007c536a    ff2548958a00
                         jmp              dword ptr [rdata_bytes + 0x3ec]               // 0x007c5370    ff25ec938a00
                         jmp              dword ptr [rdata_bytes + 0x3f0]               // 0x007c5376    ff25f0938a00
                         jmp              dword ptr [rdata_bytes + 0x404]               // 0x007c537c    ff2504948a00
                         jmp              dword ptr [rdata_bytes + 0x408]               // 0x007c5382    ff2508948a00
                         jmp              dword ptr [rdata_bytes + 0x40c]               // 0x007c5388    ff250c948a00
                         jmp              dword ptr [rdata_bytes + 0x410]               // 0x007c538e    ff2510948a00
_jmp_addr_0x007c5394:    jmp              dword ptr [__imp__GetIPAddress__YAPADXZ@4]    // 0x007c5394    ff2518948a00
                         jmp              dword ptr [rdata_bytes + 0x41c]               // 0x007c539a    ff251c948a00
                         jmp              dword ptr [rdata_bytes + 0x420]               // 0x007c53a0    ff2520948a00
                         jmp              dword ptr [rdata_bytes + 0x424]               // 0x007c53a6    ff2524948a00
                         jmp              dword ptr [rdata_bytes + 0x428]               // 0x007c53ac    ff2528948a00
                         jmp              dword ptr [rdata_bytes + 0x42c]               // 0x007c53b2    ff252c948a00
                         jmp              dword ptr [rdata_bytes + 0x430]               // 0x007c53b8    ff2530948a00
                         jmp              dword ptr [rdata_bytes + 0x438]               // 0x007c53be    ff2538948a00
                         jmp              dword ptr [rdata_bytes + 0x43c]               // 0x007c53c4    ff253c948a00
                         jmp              dword ptr [rdata_bytes + 0x440]               // 0x007c53ca    ff2540948a00
                         jmp              dword ptr [rdata_bytes + 0x444]               // 0x007c53d0    ff2544948a00
                         jmp              dword ptr [rdata_bytes + 0x448]               // 0x007c53d6    ff2548948a00
                         jmp              dword ptr [rdata_bytes + 0x44c]               // 0x007c53dc    ff254c948a00
                         jmp              dword ptr [rdata_bytes + 0x450]               // 0x007c53e2    ff2550948a00
                         jmp              dword ptr [rdata_bytes + 0x454]               // 0x007c53e8    ff2554948a00
                         jmp              dword ptr [rdata_bytes + 0x45c]               // 0x007c53ee    ff255c948a00
                         jmp              dword ptr [rdata_bytes + 0x460]               // 0x007c53f4    ff2560948a00
                         jmp              dword ptr [rdata_bytes + 0x464]               // 0x007c53fa    ff2564948a00
                         jmp              dword ptr [rdata_bytes + 0x468]               // 0x007c5400    ff2568948a00
                         jmp              dword ptr [rdata_bytes + 0x46c]               // 0x007c5406    ff256c948a00
                         jmp              dword ptr [rdata_bytes + 0x470]               // 0x007c540c    ff2570948a00
                         jmp              dword ptr [rdata_bytes + 0x474]               // 0x007c5412    ff2574948a00
                         jmp              dword ptr [rdata_bytes + 0x478]               // 0x007c5418    ff2578948a00
                         jmp              dword ptr [rdata_bytes + 0x47c]               // 0x007c541e    ff257c948a00
                         jmp              dword ptr [rdata_bytes + 0x480]               // 0x007c5424    ff2580948a00
                         jmp              dword ptr [rdata_bytes + 0x484]               // 0x007c542a    ff2584948a00
                         jmp              dword ptr [rdata_bytes + 0x488]               // 0x007c5430    ff2588948a00
                         jmp              dword ptr [rdata_bytes + 0x48c]               // 0x007c5436    ff258c948a00
                         jmp              dword ptr [rdata_bytes + 0x490]               // 0x007c543c    ff2590948a00
                         jmp              dword ptr [rdata_bytes + 0x49c]               // 0x007c5442    ff259c948a00
                         jmp              dword ptr [rdata_bytes + 0x4a0]               // 0x007c5448    ff25a0948a00
                         jmp              dword ptr [rdata_bytes + 0x4a4]               // 0x007c544e    ff25a4948a00
                         jmp              dword ptr [rdata_bytes + 0x4a8]               // 0x007c5454    ff25a8948a00
                         jmp              dword ptr [rdata_bytes + 0x4b0]               // 0x007c545a    ff25b0948a00
                         jmp              dword ptr [__imp___1LHHttp2__QAE_XZ@4]        // 0x007c5460    ff25b4948a00
                         jmp              dword ptr [__imp__Reset_LHHttp2__QAEXXZ@4]    // 0x007c5466    ff25b8948a00
                         jmp              dword ptr [rdata_bytes + 0x4bc]               // 0x007c546c    ff25bc948a00
                         jmp              dword ptr [rdata_bytes + 0x4c0]               // 0x007c5472    ff25c0948a00
                         jmp              dword ptr [rdata_bytes + 0x4c4]               // 0x007c5478    ff25c4948a00
                         jmp              dword ptr [rdata_bytes + 0x4c8]               // 0x007c547e    ff25c8948a00
                         jmp              dword ptr [rdata_bytes + 0x4cc]               // 0x007c5484    ff25cc948a00
                         jmp              dword ptr [rdata_bytes + 0x4d0]               // 0x007c548a    ff25d0948a00
                         jmp              dword ptr [__imp___0LHHttp2__QAE_XZ@4]        // 0x007c5490    ff25b0968a00
                         jmp              dword ptr [rdata_bytes + 0x4d8]               // 0x007c5496    ff25d8948a00
                         jmp              dword ptr [__imp__Close_LHLobby__UAEXXZ@4]    // 0x007c549c    ff25dc948a00
                         jmp              dword ptr [rdata_bytes + 0x4e0]               // 0x007c54a2    ff25e0948a00
                         jmp              dword ptr [rdata_bytes + 0x4e8]               // 0x007c54a8    ff25e8948a00
                         jmp              dword ptr [__imp___0LHLobby__QAE_XZ@4]        // 0x007c54ae    ff25ec948a00
                         jmp              dword ptr [rdata_bytes + 0x4f0]               // 0x007c54b4    ff25f0948a00
                         jmp              dword ptr [__imp___1LHLobby__UAE_XZ@4]        // 0x007c54ba    ff25f4948a00
                         jmp              dword ptr [rdata_bytes + 0x4f8]               // 0x007c54c0    ff25f8948a00
                         jmp              dword ptr [__imp___1LHNetUser__QAE_XZ@4]      // 0x007c54c6    ff25fc948a00
                         jmp              dword ptr [__imp__Logout_LHNetUser__QAEXXZ@4] // 0x007c54cc    ff2504958a00
                         jmp              dword ptr [rdata_bytes + 0x508]               // 0x007c54d2    ff2508958a00
                         jmp              dword ptr [rdata_bytes + 0x50c]               // 0x007c54d8    ff250c958a00
                         jmp              dword ptr [rdata_bytes + 0x510]               // 0x007c54de    ff2510958a00
                         jmp              dword ptr [rdata_bytes + 0x514]               // 0x007c54e4    ff2514958a00
                         jmp              dword ptr [rdata_bytes + 0x518]               // 0x007c54ea    ff2518958a00
                         jmp              dword ptr [rdata_bytes + 0x51c]               // 0x007c54f0    ff251c958a00
                         jmp              dword ptr [rdata_bytes + 0x520]               // 0x007c54f6    ff2520958a00
                         jmp              dword ptr [rdata_bytes + 0x524]               // 0x007c54fc    ff2524958a00
                         jmp              dword ptr [__imp__Close_LHSession__UAEXXZ@4]  // 0x007c5502    ff2528958a00
                         jmp              dword ptr [rdata_bytes + 0x52c]               // 0x007c5508    ff252c958a00
                         jmp              dword ptr [rdata_bytes + 0x530]               // 0x007c550e    ff2530958a00
                         jmp              dword ptr [rdata_bytes + 0x534]               // 0x007c5514    ff2534958a00
                         jmp              dword ptr [rdata_bytes + 0x53c]               // 0x007c551a    ff253c958a00
                         jmp              dword ptr [__imp___1LHSession__UAE_XZ@4]      // 0x007c5520    ff2544958a00
                         jmp              dword ptr [rdata_bytes + 0x3e4]               // 0x007c5526    ff25e4938a00
                         jmp              dword ptr [rdata_bytes + 0x54c]               // 0x007c552c    ff254c958a00
                         jmp              dword ptr [rdata_bytes + 0x550]               // 0x007c5532    ff2550958a00
                         jmp              dword ptr [rdata_bytes + 0x554]               // 0x007c5538    ff2554958a00
                         jmp              dword ptr [rdata_bytes + 0x558]               // 0x007c553e    ff2558958a00
                         jmp              dword ptr [rdata_bytes + 0x560]               // 0x007c5544    ff2560958a00
                         jmp              dword ptr [__imp___1LHHttpHeaders__QAE_XZ@4]  // 0x007c554a    ff2564958a00
                         jmp              dword ptr [rdata_bytes + 0x568]               // 0x007c5550    ff2568958a00
                         jmp              dword ptr [rdata_bytes + 0x56c]               // 0x007c5556    ff256c958a00
                         jmp              dword ptr [__imp__db_free_data__YAXPAPAD_Z@4] // 0x007c555c    ff2570958a00
                         jmp              dword ptr [rdata_bytes + 0x574]               // 0x007c5562    ff2574958a00
                         jmp              dword ptr [rdata_bytes + 0x578]               // 0x007c5568    ff2578958a00
                         jmp              dword ptr [rdata_bytes + 0x57c]               // 0x007c556e    ff257c958a00
                         jmp              dword ptr [__imp___1DBInfo__QAE_XZ@4]         // 0x007c5574    ff2580958a00
                         jmp              dword ptr [rdata_bytes + 0x584]               // 0x007c557a    ff2584958a00
                         jmp              dword ptr [rdata_bytes + 0x588]               // 0x007c5580    ff2588958a00
                         jmp              dword ptr [rdata_bytes + 0x58c]               // 0x007c5586    ff258c958a00
                         jmp              dword ptr [rdata_bytes + 0x594]               // 0x007c558c    ff2594958a00
                         jmp              dword ptr [rdata_bytes + 0x598]               // 0x007c5592    ff2598958a00
                         jmp              dword ptr [rdata_bytes + 0x59c]               // 0x007c5598    ff259c958a00
                         jmp              dword ptr [rdata_bytes + 0x5a0]               // 0x007c559e    ff25a0958a00
                         jmp              dword ptr [rdata_bytes + 0x5a4]               // 0x007c55a4    ff25a4958a00
                         jmp              dword ptr [rdata_bytes + 0x5a8]               // 0x007c55aa    ff25a8958a00
                         jmp              dword ptr [rdata_bytes + 0x5ac]               // 0x007c55b0    ff25ac958a00
                         jmp              dword ptr [rdata_bytes + 0x5b0]               // 0x007c55b6    ff25b0958a00
                         jmp              dword ptr [rdata_bytes + 0x5b4]               // 0x007c55bc    ff25b4958a00
                         jmp              dword ptr [rdata_bytes + 0x5b8]               // 0x007c55c2    ff25b8958a00
                         jmp              dword ptr [rdata_bytes + 0x5c0]               // 0x007c55c8    ff25c0958a00
                         jmp              dword ptr [rdata_bytes + 0x5c4]               // 0x007c55ce    ff25c4958a00
                         jmp              dword ptr [rdata_bytes + 0x5c8]               // 0x007c55d4    ff25c8958a00
                         jmp              dword ptr [rdata_bytes + 0x5cc]               // 0x007c55da    ff25cc958a00
                         jmp              dword ptr [rdata_bytes + 0x5d0]               // 0x007c55e0    ff25d0958a00
                         jmp              dword ptr [rdata_bytes + 0x5d4]               // 0x007c55e6    ff25d4958a00
                         jmp              dword ptr [rdata_bytes + 0x5d8]               // 0x007c55ec    ff25d8958a00
                         jmp              dword ptr [rdata_bytes + 0x5dc]               // 0x007c55f2    ff25dc958a00
                         jmp              dword ptr [rdata_bytes + 0x5e0]               // 0x007c55f8    ff25e0958a00
                         jmp              dword ptr [rdata_bytes + 0x5e4]               // 0x007c55fe    ff25e4958a00

_fltused:                call             _jmp_addr_0x007c561c                          // 0x007c5604    e813000000
                         call             _jmp_addr_0x007cc9b2                          // 0x007c5609    e8a4730000
                         {disp32} mov     dword ptr [data_bytes + 0x4be194], eax        // 0x007c560e    a39441e800
                         call             __setdefaultprecision                         // 0x007c5613    e84a730000
                         fnclex                                                         // 0x007c5618    dbe2
                         ret                                                            // 0x007c561a    c3
_jmp_addr_0x007c561b:    ret                                                            // 0x007c561b    c3
_jmp_addr_0x007c561c:    mov              eax, 0x007ccd8b                               // 0x007c561c    b88bcd7c00
                         {disp32} mov     dword ptr [data_bytes + 0x267df0], 0x007cca35 // 0x007c5621    c705f0ddc20035ca7c00
                         {disp32} mov     dword ptr [data_bytes + 0x267dec], eax        // 0x007c562b    a3ecddc200
                         {disp32} mov     dword ptr [data_bytes + 0x267df4], 0x007cca9b // 0x007c5630    c705f4ddc2009bca7c00
                         {disp32} mov     dword ptr [data_bytes + 0x267df8], 0x007cc9db // 0x007c563a    c705f8ddc200dbc97c00
                         {disp32} mov     dword ptr [data_bytes + 0x267dfc], 0x007cca83 // 0x007c5644    c705fcddc20083ca7c00
                         {disp32} mov     dword ptr [data_bytes + 0x267e00], eax        // 0x007c564e    a300dec200
                         ret                                                            // 0x007c5653    c3
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007c5654    8b4c2404
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4be190]        // 0x007c5658    a19041e800
                         {disp32} mov     dword ptr [data_bytes + 0x4be190], ecx        // 0x007c565d    890d9041e800
                         ret                                                            // 0x007c5663    c3
_jmp_addr_0x007c5664:    push             esi                                           // 0x007c5664    56
                         mov.s            esi, ecx                                      // 0x007c5665    8bf1
                         push             0x1b                                          // 0x007c5667    6a1b
                         mov              dword ptr [esi], 0x009a05c4                   // 0x007c5669    c706c4059a00
                         call             __lock                                         // 0x007c566f    e842600000
                         {disp8} mov      esi, dword ptr [esi + 0x04]                   // 0x007c5674    8b7604
                         pop              ecx                                           // 0x007c5677    59
                         test             esi, esi                                      // 0x007c5678    85f6
                         {disp8} je       _jmp_addr_0x007c5683                          // 0x007c567a    7407
                         push             esi                                           // 0x007c567c    56
                         call             _free                                         // 0x007c567d    e804110000
                         pop              ecx                                           // 0x007c5682    59
_jmp_addr_0x007c5683:    push             0x1b                                          // 0x007c5683    6a1b
                         call             __unlock                                      // 0x007c5685    e88d600000
                         pop              ecx                                           // 0x007c568a    59
                         pop              esi                                           // 0x007c568b    5e
                         ret                                                            // 0x007c568c    c3
_jmp_addr_0x007c568d:    push             esi                                           // 0x007c568d    56
                         mov.s            esi, ecx                                      // 0x007c568e    8bf1
                         call             _jmp_addr_0x007c5664                          // 0x007c5690    e8cfffffff
                         test             byte ptr [esp + 0x08], 0x01                   // 0x007c5695    f644240801
                         {disp8} je       _jmp_addr_0x007c56a3                          // 0x007c569a    7407
                         push             esi                                           // 0x007c569c    56
                         call              ___dl__FPv                                   // 0x007c569d    e8f697feff
                         pop              ecx                                           // 0x007c56a2    59
_jmp_addr_0x007c56a3:    mov.s            eax, esi                                      // 0x007c56a3    8bc6
                         pop              esi                                           // 0x007c56a5    5e
                         ret              0x0004                                        // 0x007c56a6    c20400
                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c56a9    8b442404
                         add              ecx, 0x9                                      // 0x007c56ad    83c109
                         add              eax, 0x09                                     // 0x007c56b0    83c009
                         push             ecx                                           // 0x007c56b3    51
                         push             eax                                           // 0x007c56b4    50
                         call             _strcmp                                       // 0x007c56b5    e856770000
                         neg              eax                                           // 0x007c56ba    f7d8
                         pop              ecx                                           // 0x007c56bc    59
                         sbb.s            eax, eax                                      // 0x007c56bd    1bc0
                         pop              ecx                                           // 0x007c56bf    59
                         inc              eax                                           // 0x007c56c0    40
                         ret              0x0004                                        // 0x007c56c1    c20400
                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c56c4    8b442404
                         add              ecx, 0x9                                      // 0x007c56c8    83c109
                         add              eax, 0x09                                     // 0x007c56cb    83c009
                         push             ecx                                           // 0x007c56ce    51
                         push             eax                                           // 0x007c56cf    50
                         call             _strcmp                                       // 0x007c56d0    e83b770000
                         neg              eax                                           // 0x007c56d5    f7d8
                         pop              ecx                                           // 0x007c56d7    59
                         sbb.s            eax, eax                                      // 0x007c56d8    1bc0
                         pop              ecx                                           // 0x007c56da    59
                         neg              eax                                           // 0x007c56db    f7d8
                         ret              0x0004                                        // 0x007c56dd    c20400
_jmp_addr_0x007c56e0:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c56e0    8b442404
                         add              ecx, 0x9                                      // 0x007c56e4    83c109
                         add              eax, 0x09                                     // 0x007c56e7    83c009
                         push             ecx                                           // 0x007c56ea    51
                         push             eax                                           // 0x007c56eb    50
                         call             _strcmp                                       // 0x007c56ec    e81f770000
                         pop              ecx                                           // 0x007c56f1    59
                         pop              ecx                                           // 0x007c56f2    59
                         xor.s            ecx, ecx                                      // 0x007c56f3    33c9
                         test             eax, eax                                      // 0x007c56f5    85c0
                         setg             cl                                            // 0x007c56f7    0f9fc1
                         mov.s            eax, ecx                                      // 0x007c56fa    8bc1
                         ret              0x0004                                        // 0x007c56fc    c20400
                         {disp8} lea      eax, dword ptr [ecx + 0x08]                   // 0x007c56ff    8d4108
                         ret                                                            // 0x007c5702    c3
                         mov.s            eax, ecx                                      // 0x007c5703    8bc1
                         mov              dword ptr [eax], 0x009a05c4                   // 0x007c5705    c700c4059a00
                         ret              0x0004                                        // 0x007c570b    c20400
                         mov.s            eax, ecx                                      // 0x007c570e    8bc1
                         ret              0x0004                                        // 0x007c5710    c20400
___onexit:               push             esi                                           // 0x007c5713    56
                         call             __lockexit                                    // 0x007c5714    e8ad480000
                         push             dword ptr [data_bytes + 0x5e7cdc]             // 0x007c5719    ff35dcdcfa00
                         call             _jmp_addr_0x007cce94                          // 0x007c571f    e870770000
                         {disp32} mov     edx, dword ptr [data_bytes + 0x5e7cdc]        // 0x007c5724    8b15dcdcfa00
                         pop              ecx                                           // 0x007c572a    59
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x5e7cd8]        // 0x007c572b    8b0dd8dcfa00
                         mov.s            esi, ecx                                      // 0x007c5731    8bf1
                         sub.s            esi, edx                                      // 0x007c5733    2bf2
                         add              esi, 0x04                                     // 0x007c5735    83c604
                         cmp.s            eax, esi                                      // 0x007c5738    3bc6
                         {disp8} jae      _jmp_addr_0x007c5779                          // 0x007c573a    733d
                         push             edx                                           // 0x007c573c    52
                         call             _jmp_addr_0x007cce94                          // 0x007c573d    e852770000
                         add              eax, 0x10                                     // 0x007c5742    83c010
                         push             eax                                           // 0x007c5745    50
                         push             dword ptr [data_bytes + 0x5e7cdc]             // 0x007c5746    ff35dcdcfa00
                         call             _jmp_addr_0x007c989f                          // 0x007c574c    e84e410000
                         add              esp, 0x0c                                     // 0x007c5751    83c40c
                         test             eax, eax                                      // 0x007c5754    85c0
                         {disp8} jne      _jmp_addr_0x007c575c                          // 0x007c5756    7504
                         xor.s            esi, esi                                      // 0x007c5758    33f6
                         {disp8} jmp      _jmp_addr_0x007c5788                          // 0x007c575a    eb2c
_jmp_addr_0x007c575c:    {disp32} mov     ecx, dword ptr [data_bytes + 0x5e7cd8]        // 0x007c575c    8b0dd8dcfa00
                         sub              ecx, dword ptr [data_bytes + 0x5e7cdc]        // 0x007c5762    2b0ddcdcfa00
                         {disp32} mov     dword ptr [data_bytes + 0x5e7cdc], eax        // 0x007c5768    a3dcdcfa00
                         sar              ecx, 2                                        // 0x007c576d    c1f902
                         lea              ecx, dword ptr [eax + ecx * 0x4]              // 0x007c5770    8d0c88
                         {disp32} mov     dword ptr [data_bytes + 0x5e7cd8], ecx        // 0x007c5773    890dd8dcfa00
_jmp_addr_0x007c5779:    {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007c5779    8b442408
                         mov              dword ptr [ecx], eax                          // 0x007c577d    8901
                         add              dword ptr [data_bytes + 0x5e7cd8], 0x04       // 0x007c577f    8305d8dcfa0004
                         mov.s            esi, eax                                      // 0x007c5786    8bf0
_jmp_addr_0x007c5788:    call             __unlockexit                                  // 0x007c5788    e842480000
                         mov.s            eax, esi                                      // 0x007c578d    8bc6
                         pop              esi                                           // 0x007c578f    5e
                         ret                                                            // 0x007c5790    c3
_atexit@4:               push             dword ptr [esp + 0x04]                        // 0x007c5791    ff742404
                         call             ___onexit                                     // 0x007c5795    e879ffffff
                         neg              eax                                           // 0x007c579a    f7d8
                         sbb.s            eax, eax                                      // 0x007c579c    1bc0
                         pop              ecx                                           // 0x007c579e    59
                         neg              eax                                           // 0x007c579f    f7d8
                         dec              eax                                           // 0x007c57a1    48
                         ret                                                            // 0x007c57a2    c3
_jmp_addr_0x007c57a3:    push             0x00000080                                    // 0x007c57a3    6880000000
                         call             _malloc                                       // 0x007c57a8    e89f0e0000
                         test             eax, eax                                      // 0x007c57ad    85c0
                         pop              ecx                                           // 0x007c57af    59
                         {disp32} mov     dword ptr [data_bytes + 0x5e7cdc], eax        // 0x007c57b0    a3dcdcfa00
                         {disp8} jne      _jmp_addr_0x007c57c4                          // 0x007c57b5    750d
                         push             0x18                                          // 0x007c57b7    6a18
                         call             __amsg_exit                                   // 0x007c57b9    e8e94d0000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x5e7cdc]        // 0x007c57be    a1dcdcfa00
                         pop              ecx                                           // 0x007c57c3    59
_jmp_addr_0x007c57c4:    and              dword ptr [eax], 0x00                         // 0x007c57c4    832000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x5e7cdc]        // 0x007c57c7    a1dcdcfa00
                         {disp32} mov     dword ptr [data_bytes + 0x5e7cd8], eax        // 0x007c57cc    a3d8dcfa00
                         ret                                                            // 0x007c57d1    c3
_jmp_addr_0x007c57d2:    push             ebp                                           // 0x007c57d2    55
                         mov.s            ebp, esp                                      // 0x007c57d3    8bec
                         sub              esp, 0x20                                     // 0x007c57d5    83ec20
                         {disp8} mov      eax, dword ptr [ebp + 0x08]                   // 0x007c57d8    8b4508
                         push             esi                                           // 0x007c57db    56
                         {disp8} mov      dword ptr [ebp + -0x18], eax                  // 0x007c57dc    8945e8
                         {disp8} mov      dword ptr [ebp + -0x20], eax                  // 0x007c57df    8945e0
                         {disp8} lea      eax, dword ptr [ebp + 0x10]                   // 0x007c57e2    8d4510
                         {disp8} mov      dword ptr [ebp + -0x14], 0x00000042           // 0x007c57e5    c745ec42000000
                         push             eax                                           // 0x007c57ec    50
                         {disp8} lea      eax, dword ptr [ebp + -0x20]                  // 0x007c57ed    8d45e0
                         push             dword ptr [ebp + 0x0c]                        // 0x007c57f0    ff750c
                         {disp8} mov      dword ptr [ebp + -0x1c], 0x7fffffff           // 0x007c57f3    c745e4ffffff7f
                         push             eax                                           // 0x007c57fa    50
                         call             __output                                      // 0x007c57fb    e89a780000
                         add              esp, 0x0c                                     // 0x007c5800    83c40c
                         dec              dword ptr [ebp + -0x1c]                       // 0x007c5803    ff4de4
                         mov.s            esi, eax                                      // 0x007c5806    8bf0
                         {disp8} js       _jmp_addr_0x007c5812                          // 0x007c5808    7808
                         {disp8} mov      eax, dword ptr [ebp + -0x20]                  // 0x007c580a    8b45e0
                         and              byte ptr [eax], 0x00                          // 0x007c580d    802000
                         {disp8} jmp      _jmp_addr_0x007c581f                          // 0x007c5810    eb0d
_jmp_addr_0x007c5812:    {disp8} lea      eax, dword ptr [ebp + -0x20]                  // 0x007c5812    8d45e0
                         push             eax                                           // 0x007c5815    50
                         push             0x0                                           // 0x007c5816    6a00
                         call             __flsbuf                                      // 0x007c5818    e865770000
                         pop              ecx                                           // 0x007c581d    59
                         pop              ecx                                           // 0x007c581e    59
_jmp_addr_0x007c581f:    mov.s            eax, esi                                      // 0x007c581f    8bc6
                         pop              esi                                           // 0x007c5821    5e
                         leave                                                          // 0x007c5822    c9
                         ret                                                            // 0x007c5823    c3
                         push             ebp                                           // 0x007c5824    55
                         mov.s            ebp, esp                                      // 0x007c5825    8bec
                         push             -0x1                                          // 0x007c5827    6aff
                         push             0x009a05f0                                    // 0x007c5829    68f0059a00
                         push             0x007cd8ac /*__except_handler3*/              // 0x007c582e    68acd87c00
                         {disp32} mov     eax, fs:[0x0]                                 // 0x007c5833    64a100000000
                         push             eax                                           // 0x007c5839    50
                         {disp32} mov     fs:[0x0], esp                                 // 0x007c583a    64892500000000
                         sub              esp, 0x18                                     // 0x007c5841    83ec18
                         push             ebx                                           // 0x007c5844    53
                         push             esi                                           // 0x007c5845    56
                         push             edi                                           // 0x007c5846    57
                         {disp8} mov      dword ptr [ebp + -0x18], esp                  // 0x007c5847    8965e8
                         cmp              dword ptr [ebp + 0x08], 0x00                  // 0x007c584a    837d0800
                         {disp8} jne      _jmp_addr_0x007c5861                          // 0x007c584e    7511
                         xor.s            eax, eax                                      // 0x007c5850    33c0
_jmp_addr_0x007c5852:    {disp8} mov      ecx, dword ptr [ebp + -0x10]                  // 0x007c5852    8b4df0
                         {disp32} mov     fs:[0x0], ecx                                 // 0x007c5855    64890d00000000
                         pop              edi                                           // 0x007c585c    5f
                         pop              esi                                           // 0x007c585d    5e
                         pop              ebx                                           // 0x007c585e    5b
                         leave                                                          // 0x007c585f    c9
                         ret                                                            // 0x007c5860    c3
_jmp_addr_0x007c5861:    and              dword ptr [ebp + -0x04], 0x00                 // 0x007c5861    8365fc00
                         push             dword ptr [ebp + 0x08]                        // 0x007c5865    ff7508
                         call             _jmp_addr_0x007c5b81                          // 0x007c5868    e814030000
                         pop              ecx                                           // 0x007c586d    59
                         or               dword ptr [ebp - 4], 0xffffffff               // 0x007c586e    834dfcff
                         {disp8} jmp      _jmp_addr_0x007c5852                          // 0x007c5872    ebde
                         {disp8} mov      eax, dword ptr [ebp + -0x14]                  // 0x007c5874    8b45ec
                         mov              eax, dword ptr [eax]                          // 0x007c5877    8b00
                         mov              eax, dword ptr [eax]                          // 0x007c5879    8b00
                         xor.s            ecx, ecx                                      // 0x007c587b    33c9
                         cmp              eax, 0xc0000005                               // 0x007c587d    3d050000c0
                         sete             cl                                            // 0x007c5882    0f94c1
                         mov.s            eax, ecx                                      // 0x007c5885    8bc1
                         ret                                                            // 0x007c5887    c3
                         {disp8} mov      esp, dword ptr [ebp + -0x18]                  // 0x007c5888    8b65e8
                         push             0x009a05c8                                    // 0x007c588b    68c8059a00
                         {disp8} lea      ecx, dword ptr [ebp + -0x24]                  // 0x007c5890    8d4ddc
                         call             _jmp_addr_0x007c58a6                          // 0x007c5893    e80e000000
                         push             0x009be480                                    // 0x007c5898    6880e49b00
                         {disp8} lea      eax, dword ptr [ebp + -0x24]                  // 0x007c589d    8d45dc
                         push             eax                                           // 0x007c58a0    50
                         call             __CxxThrowException@8                          // 0x007c58a1    e802340000
_jmp_addr_0x007c58a6:    push             ebp                                           // 0x007c58a6    55
                         mov.s            ebp, esp                                      // 0x007c58a7    8bec
                         {disp8} mov      eax, dword ptr [ebp + 0x08]                   // 0x007c58a9    8b4508
                         push             esi                                           // 0x007c58ac    56
                         {disp8} mov      dword ptr [ebp + 0x08], eax                   // 0x007c58ad    894508
                         {disp8} lea      eax, dword ptr [ebp + 0x08]                   // 0x007c58b0    8d4508
                         mov.s            esi, ecx                                      // 0x007c58b3    8bf1
                         push             eax                                           // 0x007c58b5    50
                         call             ??0exception@@QAE@ABQBD@Z                          // 0x007c58b6    e824330000
                         mov              dword ptr [esi], 0x009a0600                   // 0x007c58bb    c70600069a00
                         mov.s            eax, esi                                      // 0x007c58c1    8bc6
                         pop              esi                                           // 0x007c58c3    5e
                         pop              ebp                                           // 0x007c58c4    5d
                         ret              0x0004                                        // 0x007c58c5    c20400
                         push             esi                                           // 0x007c58c8    56
                         mov.s            esi, ecx                                      // 0x007c58c9    8bf1
                         call             _jmp_addr_0x007c58e4                          // 0x007c58cb    e814000000
                         test             byte ptr [esp + 0x08], 0x01                   // 0x007c58d0    f644240801
                         {disp8} je       _jmp_addr_0x007c58de                          // 0x007c58d5    7407
                         push             esi                                           // 0x007c58d7    56
                         call              ___dl__FPv                                   // 0x007c58d8    e8bb95feff
                         pop              ecx                                           // 0x007c58dd    59
_jmp_addr_0x007c58de:    mov.s            eax, esi                                      // 0x007c58de    8bc6
                         pop              esi                                           // 0x007c58e0    5e
                         ret              0x0004                                        // 0x007c58e1    c20400
_jmp_addr_0x007c58e4:    {disp32} jmp     ??1exception@@UAE@XZ                          // 0x007c58e4    e99c330000
                         push             esi                                           // 0x007c58e9    56
                         mov.s            esi, ecx                                      // 0x007c58ea    8bf1
                         push             dword ptr [esp + 0x08]                        // 0x007c58ec    ff742408
                         call             ??0exception@@QAE@ABV0@@Z                     // 0x007c58f0    e827330000
                         mov              dword ptr [esi], 0x009a0600                   // 0x007c58f5    c70600069a00
                         mov.s            eax, esi                                      // 0x007c58fb    8bc6
                         pop              esi                                           // 0x007c58fd    5e
                         ret              0x0004                                        // 0x007c58fe    c20400
                         push             esi                                           // 0x007c5901    56
                         mov.s            esi, ecx                                      // 0x007c5902    8bf1
                         push             dword ptr [esp + 0x08]                        // 0x007c5904    ff742408
                         call             ??0exception@@QAE@ABV0@@Z                     // 0x007c5908    e80f330000
                         mov              dword ptr [esi], 0x009a060c                   // 0x007c590d    c7060c069a00
                         mov.s            eax, esi                                      // 0x007c5913    8bc6
                         pop              esi                                           // 0x007c5915    5e
                         ret              0x0004                                        // 0x007c5916    c20400
                         push             esi                                           // 0x007c5919    56
                         mov.s            esi, ecx                                      // 0x007c591a    8bf1
                         call             _jmp_addr_0x007c5935                          // 0x007c591c    e814000000
                         test             byte ptr [esp + 0x08], 0x01                   // 0x007c5921    f644240801
                         {disp8} je       _jmp_addr_0x007c592f                          // 0x007c5926    7407
                         push             esi                                           // 0x007c5928    56
                         call              ___dl__FPv                                   // 0x007c5929    e86a95feff
                         pop              ecx                                           // 0x007c592e    59
_jmp_addr_0x007c592f:    mov.s            eax, esi                                      // 0x007c592f    8bc6
                         pop              esi                                           // 0x007c5931    5e
                         ret              0x0004                                        // 0x007c5932    c20400
_jmp_addr_0x007c5935:    {disp32} jmp     ??1exception@@UAE@XZ                          // 0x007c5935    e94b330000
_jmp_addr_0x007c593a:    push             ebp                                           // 0x007c593a    55
                         mov.s            ebp, esp                                      // 0x007c593b    8bec
                         push             -0x1                                          // 0x007c593d    6aff
                         push             0x009a0660                                    // 0x007c593f    6860069a00
                         push             0x007cd8ac /*__except_handler3*/              // 0x007c5944    68acd87c00
                         {disp32} mov     eax, fs:[0x0]                                 // 0x007c5949    64a100000000
                         push             eax                                           // 0x007c594f    50
                         {disp32} mov     fs:[0x0], esp                                 // 0x007c5950    64892500000000
                         sub              esp, 0x34                                     // 0x007c5957    83ec34
                         push             ebx                                           // 0x007c595a    53
                         push             esi                                           // 0x007c595b    56
                         push             edi                                           // 0x007c595c    57
                         {disp8} mov      dword ptr [ebp + -0x18], esp                  // 0x007c595d    8965e8
                         {disp8} mov      eax, dword ptr [ebp + 0x08]                   // 0x007c5960    8b4508
                         test             eax, eax                                      // 0x007c5963    85c0
                         {disp8} jne      _jmp_addr_0x007c5982                          // 0x007c5965    751b
                         push             0x009a0638                                    // 0x007c5967    6838069a00
                         {disp8} lea      ecx, dword ptr [ebp + -0x28]                  // 0x007c596c    8d4dd8
                         call             _jmp_addr_0x007c5a00                          // 0x007c596f    e88c000000
                         push             0x009be4a0                                    // 0x007c5974    68a0e49b00
                         {disp8} lea      eax, dword ptr [ebp + -0x28]                  // 0x007c5979    8d45d8
                         push             eax                                           // 0x007c597c    50
                         call             __CxxThrowException@8                          // 0x007c597d    e826330000
_jmp_addr_0x007c5982:    and              dword ptr [ebp + -0x04], 0x00                 // 0x007c5982    8365fc00
                         mov              eax, dword ptr [eax]                          // 0x007c5986    8b00
                         {disp8} mov      esi, dword ptr [eax + -0x04]                  // 0x007c5988    8b70fc
                         {disp8} mov      dword ptr [ebp + -0x1c], esi                  // 0x007c598b    8975e4
                         push             0x8                                           // 0x007c598e    6a08
                         push             dword ptr [esi + 0x0c]                        // 0x007c5990    ff760c
                         call             dword ptr [__imp__IsBadReadPtr@4]             // 0x007c5993    ff1508928a00
                         test             eax, eax                                      // 0x007c5999    85c0
                         {disp8} jne      _jmp_addr_0x007c59b3                          // 0x007c599b    7516
                         {disp8} mov      eax, dword ptr [esi + 0x0c]                   // 0x007c599d    8b460c
                         or               dword ptr [ebp - 4], 0xffffffff               // 0x007c59a0    834dfcff
                         {disp8} mov      ecx, dword ptr [ebp + -0x10]                  // 0x007c59a4    8b4df0
                         {disp32} mov     fs:[0x0], ecx                                 // 0x007c59a7    64890d00000000
                         pop              edi                                           // 0x007c59ae    5f
                         pop              esi                                           // 0x007c59af    5e
                         pop              ebx                                           // 0x007c59b0    5b
                         leave                                                          // 0x007c59b1    c9
                         ret                                                            // 0x007c59b2    c3
_jmp_addr_0x007c59b3:    push             0x009a0614                                    // 0x007c59b3    6814069a00
                         {disp8} lea      ecx, dword ptr [ebp + -0x34]                  // 0x007c59b8    8d4dcc
                         call             _jmp_addr_0x007c58a6                          // 0x007c59bb    e8e6feffff
                         push             0x009be480                                    // 0x007c59c0    6880e49b00
                         {disp8} lea      eax, dword ptr [ebp + -0x34]                  // 0x007c59c5    8d45cc
                         push             eax                                           // 0x007c59c8    50
                         call             __CxxThrowException@8                          // 0x007c59c9    e8da320000
                         {disp8} mov      eax, dword ptr [ebp + -0x14]                  // 0x007c59ce    8b45ec
                         mov              eax, dword ptr [eax]                          // 0x007c59d1    8b00
                         mov              eax, dword ptr [eax]                          // 0x007c59d3    8b00
                         xor.s            ecx, ecx                                      // 0x007c59d5    33c9
                         cmp              eax, 0xc0000005                               // 0x007c59d7    3d050000c0
                         sete             cl                                            // 0x007c59dc    0f94c1
                         mov.s            eax, ecx                                      // 0x007c59df    8bc1
                         ret                                                            // 0x007c59e1    c3
                         {disp8} mov      esp, dword ptr [ebp + -0x18]                  // 0x007c59e2    8b65e8
                         push             0x009a05c8                                    // 0x007c59e5    68c8059a00
                         {disp8} lea      ecx, dword ptr [ebp + -0x40]                  // 0x007c59ea    8d4dc0
                         call             _jmp_addr_0x007c58a6                          // 0x007c59ed    e8b4feffff
                         push             0x009be480                                    // 0x007c59f2    6880e49b00
                         {disp8} lea      eax, dword ptr [ebp + -0x40]                  // 0x007c59f7    8d45c0
                         push             eax                                           // 0x007c59fa    50
                         call             __CxxThrowException@8                          // 0x007c59fb    e8a8320000
_jmp_addr_0x007c5a00:    {disp8} lea      eax, dword ptr [esp + 0x04]                   // 0x007c5a00    8d442404
                         push             esi                                           // 0x007c5a04    56
                         mov.s            esi, ecx                                      // 0x007c5a05    8bf1
                         push             eax                                           // 0x007c5a07    50
                         call             ??0exception@@QAE@ABQBD@Z                          // 0x007c5a08    e8d2310000
                         mov              dword ptr [esi], 0x009a060c                   // 0x007c5a0d    c7060c069a00
                         mov.s            eax, esi                                      // 0x007c5a13    8bc6
                         pop              esi                                           // 0x007c5a15    5e
                         ret              0x0004                                        // 0x007c5a16    c20400
_jmp_addr_0x007c5a19:    push             ebp                                           // 0x007c5a19    55
                         mov.s            ebp, esp                                      // 0x007c5a1a    8bec
                         push             -0x1                                          // 0x007c5a1c    6aff
                         push             0x009a0680                                    // 0x007c5a1e    6880069a00
                         push             0x007cd8ac /*__except_handler3*/              // 0x007c5a23    68acd87c00
                         {disp32} mov     eax, fs:[0x0]                                 // 0x007c5a28    64a100000000
                         push             eax                                           // 0x007c5a2e    50
                         {disp32} mov     fs:[0x0], esp                                 // 0x007c5a2f    64892500000000
                         sub              esp, 0x3c                                     // 0x007c5a36    83ec3c
                         push             ebx                                           // 0x007c5a39    53
                         push             esi                                           // 0x007c5a3a    56
                         push             edi                                           // 0x007c5a3b    57
                         {disp8} mov      dword ptr [ebp + -0x18], esp                  // 0x007c5a3c    8965e8
                         {disp8} mov      esi, dword ptr [ebp + 0x08]                   // 0x007c5a3f    8b7508
                         test             esi, esi                                      // 0x007c5a42    85f6
                         {disp8} jne      _jmp_addr_0x007c5a57                          // 0x007c5a44    7511
                         xor.s            eax, eax                                      // 0x007c5a46    33c0
_jmp_addr_0x007c5a48:    {disp8} mov      ecx, dword ptr [ebp + -0x10]                  // 0x007c5a48    8b4df0
                         {disp32} mov     fs:[0x0], ecx                                 // 0x007c5a4b    64890d00000000
                         pop              edi                                           // 0x007c5a52    5f
                         pop              esi                                           // 0x007c5a53    5e
                         pop              ebx                                           // 0x007c5a54    5b
                         leave                                                          // 0x007c5a55    c9
                         ret                                                            // 0x007c5a56    c3
_jmp_addr_0x007c5a57:    and              dword ptr [ebp + -0x04], 0x00                 // 0x007c5a57    8365fc00
                         push             esi                                           // 0x007c5a5b    56
                         call             _jmp_addr_0x007c5b81                          // 0x007c5a5c    e820010000
                         pop              ecx                                           // 0x007c5a61    59
                         mov.s            edi, eax                                      // 0x007c5a62    8bf8
                         {disp8} mov      dword ptr [ebp + -0x2c], edi                  // 0x007c5a64    897dd4
                         mov              eax, dword ptr [esi]                          // 0x007c5a67    8b06
                         {disp8} mov      eax, dword ptr [eax + -0x04]                  // 0x007c5a69    8b40fc
                         {disp8} mov      dword ptr [ebp + -0x24], eax                  // 0x007c5a6c    8945dc
                         sub              esi, dword ptr [ebp + 0x0c]                   // 0x007c5a6f    2b750c
                         {disp8} mov      dword ptr [ebp + 0x08], esi                   // 0x007c5a72    897508
                         sub.s            esi, edi                                      // 0x007c5a75    2bf7
                         {disp8} mov      dword ptr [ebp + -0x28], esi                  // 0x007c5a77    8975d8
                         {disp8} mov      ecx, dword ptr [eax + 0x10]                   // 0x007c5a7a    8b4810
                         {disp8} mov      ecx, dword ptr [ecx + 0x04]                   // 0x007c5a7d    8b4904
                         test             cl, 0x01                                      // 0x007c5a80    f6c101
                         {disp8} jne      _jmp_addr_0x007c5a95                          // 0x007c5a83    7510
                         push             dword ptr [ebp + 0x14]                        // 0x007c5a85    ff7514
                         push             esi                                           // 0x007c5a88    56
                         push             dword ptr [ebp + 0x10]                        // 0x007c5a89    ff7510
                         push             eax                                           // 0x007c5a8c    50
                         push             edi                                           // 0x007c5a8d    57
                         call             _jmp_addr_0x007c5b9b                          // 0x007c5a8e    e808010000
                         {disp8} jmp      _jmp_addr_0x007c5aaf                          // 0x007c5a93    eb1a
_jmp_addr_0x007c5a95:    test             cl, 0x02                                      // 0x007c5a95    f6c102
                         push             dword ptr [ebp + 0x14]                        // 0x007c5a98    ff7514
                         push             esi                                           // 0x007c5a9b    56
                         push             dword ptr [ebp + 0x10]                        // 0x007c5a9c    ff7510
                         push             eax                                           // 0x007c5a9f    50
                         push             edi                                           // 0x007c5aa0    57
                         {disp8} jne      _jmp_addr_0x007c5aaa                          // 0x007c5aa1    7507
                         call             _jmp_addr_0x007c5bf5                          // 0x007c5aa3    e84d010000
                         {disp8} jmp      _jmp_addr_0x007c5aaf                          // 0x007c5aa8    eb05
_jmp_addr_0x007c5aaa:    call             _jmp_addr_0x007c5cee                          // 0x007c5aaa    e83f020000
_jmp_addr_0x007c5aaf:    add              esp, 0x14                                     // 0x007c5aaf    83c414
                         {disp8} mov      dword ptr [ebp + -0x1c], eax                  // 0x007c5ab2    8945e4
                         test             eax, eax                                      // 0x007c5ab5    85c0
                         {disp8} je       _jmp_addr_0x007c5ad3                          // 0x007c5ab7    741a
                         add              eax, 0x08                                     // 0x007c5ab9    83c008
                         push             eax                                           // 0x007c5abc    50
                         push             edi                                           // 0x007c5abd    57
                         call             _jmp_addr_0x007c5e26                          // 0x007c5abe    e863030000
                         pop              ecx                                           // 0x007c5ac3    59
                         pop              ecx                                           // 0x007c5ac4    59
                         add.s            eax, edi                                      // 0x007c5ac5    03c7
                         {disp8} mov      dword ptr [ebp + -0x20], eax                  // 0x007c5ac7    8945e0
_jmp_addr_0x007c5aca:    or               dword ptr [ebp - 4], 0xffffffff               // 0x007c5aca    834dfcff
                         {disp32} jmp     _jmp_addr_0x007c5a48                          // 0x007c5ace    e975ffffff
_jmp_addr_0x007c5ad3:    xor.s            eax, eax                                      // 0x007c5ad3    33c0
                         {disp8} mov      dword ptr [ebp + -0x20], eax                  // 0x007c5ad5    8945e0
                         cmp              dword ptr [ebp + 0x18], eax                   // 0x007c5ad8    394518
                         {disp8} je       _jmp_addr_0x007c5aca                          // 0x007c5adb    74ed
                         {disp8} mov      dword ptr [ebp + -0x3c], 0x009a066c           // 0x007c5add    c745c46c069a00
                         {disp8} lea      eax, dword ptr [ebp + -0x3c]                  // 0x007c5ae4    8d45c4
                         push             eax                                           // 0x007c5ae7    50
                         {disp8} lea      ecx, dword ptr [ebp + -0x38]                  // 0x007c5ae8    8d4dc8
                         call             _jmp_addr_0x007c5b30                          // 0x007c5aeb    e840000000
                         push             0x009be4e0                                    // 0x007c5af0    68e0e49b00
                         {disp8} lea      eax, dword ptr [ebp + -0x38]                  // 0x007c5af5    8d45c8
                         push             eax                                           // 0x007c5af8    50
                         call             __CxxThrowException@8                          // 0x007c5af9    e8aa310000
                         {disp8} mov      eax, dword ptr [ebp + -0x14]                  // 0x007c5afe    8b45ec
                         mov              eax, dword ptr [eax]                          // 0x007c5b01    8b00
                         mov              eax, dword ptr [eax]                          // 0x007c5b03    8b00
                         xor.s            ecx, ecx                                      // 0x007c5b05    33c9
                         cmp              eax, 0xc0000005                               // 0x007c5b07    3d050000c0
                         sete             cl                                            // 0x007c5b0c    0f94c1
                         mov.s            eax, ecx                                      // 0x007c5b0f    8bc1
                         ret                                                            // 0x007c5b11    c3
                         {disp8} mov      esp, dword ptr [ebp + -0x18]                  // 0x007c5b12    8b65e8
                         push             0x009a05c8                                    // 0x007c5b15    68c8059a00
                         {disp8} lea      ecx, dword ptr [ebp + -0x48]                  // 0x007c5b1a    8d4db8
                         call             _jmp_addr_0x007c58a6                          // 0x007c5b1d    e884fdffff
                         push             0x009be480                                    // 0x007c5b22    6880e49b00
                         {disp8} lea      eax, dword ptr [ebp + -0x48]                  // 0x007c5b27    8d45b8
                         push             eax                                           // 0x007c5b2a    50
                         call             __CxxThrowException@8                          // 0x007c5b2b    e878310000
_jmp_addr_0x007c5b30:    push             esi                                           // 0x007c5b30    56
                         mov.s            esi, ecx                                      // 0x007c5b31    8bf1
                         push             dword ptr [esp + 0x08]                        // 0x007c5b33    ff742408
                         call             ??0exception@@QAE@ABQBD@Z                          // 0x007c5b37    e8a3300000
                         mov              dword ptr [esi], 0x009a0690                   // 0x007c5b3c    c70690069a00
                         mov.s            eax, esi                                      // 0x007c5b42    8bc6
                         pop              esi                                           // 0x007c5b44    5e
                         ret              0x0004                                        // 0x007c5b45    c20400
                         push             esi                                           // 0x007c5b48    56
                         mov.s            esi, ecx                                      // 0x007c5b49    8bf1
                         call             _jmp_addr_0x007c5b64                          // 0x007c5b4b    e814000000
                         test             byte ptr [esp + 0x08], 0x01                   // 0x007c5b50    f644240801
                         {disp8} je       _jmp_addr_0x007c5b5e                          // 0x007c5b55    7407
                         push             esi                                           // 0x007c5b57    56
                         call              ___dl__FPv                                   // 0x007c5b58    e83b93feff
                         pop              ecx                                           // 0x007c5b5d    59
_jmp_addr_0x007c5b5e:    mov.s            eax, esi                                      // 0x007c5b5e    8bc6
                         pop              esi                                           // 0x007c5b60    5e
                         ret              0x0004                                        // 0x007c5b61    c20400
_jmp_addr_0x007c5b64:    {disp32} jmp     ??1exception@@UAE@XZ                          // 0x007c5b64    e91c310000
                         push             esi                                           // 0x007c5b69    56
                         mov.s            esi, ecx                                      // 0x007c5b6a    8bf1
                         push             dword ptr [esp + 0x08]                        // 0x007c5b6c    ff742408
                         call             ??0exception@@QAE@ABV0@@Z                     // 0x007c5b70    e8a7300000
                         mov              dword ptr [esi], 0x009a0690                   // 0x007c5b75    c70690069a00
                         mov.s            eax, esi                                      // 0x007c5b7b    8bc6
                         pop              esi                                           // 0x007c5b7d    5e
                         ret              0x0004                                        // 0x007c5b7e    c20400
_jmp_addr_0x007c5b81:    {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007c5b81    8b4c2404
                         mov              eax, dword ptr [ecx]                          // 0x007c5b85    8b01
                         {disp8} mov      edx, dword ptr [eax + -0x04]                  // 0x007c5b87    8b50fc
                         mov.s            eax, ecx                                      // 0x007c5b8a    8bc1
                         sub              eax, dword ptr [edx + 0x04]                   // 0x007c5b8c    2b4204
                         {disp8} mov      edx, dword ptr [edx + 0x08]                   // 0x007c5b8f    8b5208
                         test             edx, edx                                      // 0x007c5b92    85d2
                         {disp8} je       _jmp_addr_0x007c5b9a                          // 0x007c5b94    7404
                         sub.s            ecx, edx                                      // 0x007c5b96    2bca
                         add              eax, dword ptr [ecx]                          // 0x007c5b98    0301
_jmp_addr_0x007c5b9a:    ret                                                            // 0x007c5b9a    c3
_jmp_addr_0x007c5b9b:    push             ebp                                           // 0x007c5b9b    55
                         mov.s            ebp, esp                                      // 0x007c5b9c    8bec
                         push             ecx                                           // 0x007c5b9e    51
                         and              dword ptr [ebp + -0x04], 0x00                 // 0x007c5b9f    8365fc00
                         push             ebx                                           // 0x007c5ba3    53
                         {disp8} mov      ebx, dword ptr [ebp + 0x0c]                   // 0x007c5ba4    8b5d0c
                         push             esi                                           // 0x007c5ba7    56
                         push             edi                                           // 0x007c5ba8    57
                         {disp8} mov      eax, dword ptr [ebx + 0x10]                   // 0x007c5ba9    8b4310
                         cmp              dword ptr [eax + 0x08], 0x00                  // 0x007c5bac    83780800
                         {disp8} mov      esi, dword ptr [eax + 0x0c]                   // 0x007c5bb0    8b700c
                         {disp8} jbe      _jmp_addr_0x007c5bea                          // 0x007c5bb3    7635
_jmp_addr_0x007c5bb5:    mov              edi, dword ptr [esi]                          // 0x007c5bb5    8b3e
                         {disp8} mov      ecx, dword ptr [ebp + 0x18]                   // 0x007c5bb7    8b4d18
                         mov              eax, dword ptr [edi]                          // 0x007c5bba    8b07
                         cmp.s            eax, ecx                                      // 0x007c5bbc    3bc1
                         {disp8} je       _jmp_addr_0x007c5bd3                          // 0x007c5bbe    7413
                         add              ecx, 0x8                                      // 0x007c5bc0    83c108
                         add              eax, 0x08                                     // 0x007c5bc3    83c008
                         push             ecx                                           // 0x007c5bc6    51
                         push             eax                                           // 0x007c5bc7    50
                         call             _strcmp                                       // 0x007c5bc8    e843720000
                         pop              ecx                                           // 0x007c5bcd    59
                         test             eax, eax                                      // 0x007c5bce    85c0
                         pop              ecx                                           // 0x007c5bd0    59
                         {disp8} jne      _jmp_addr_0x007c5bd9                          // 0x007c5bd1    7506
_jmp_addr_0x007c5bd3:    test             byte ptr [edi + 0x14], 0x01                   // 0x007c5bd3    f6471401
                         {disp8} je       _jmp_addr_0x007c5bf1                          // 0x007c5bd7    7418
_jmp_addr_0x007c5bd9:    {disp8} inc      dword ptr [ebp + -0x04]                       // 0x007c5bd9    ff45fc
                         {disp8} mov      eax, dword ptr [ebx + 0x10]                   // 0x007c5bdc    8b4310
                         {disp8} mov      ecx, dword ptr [ebp + -0x04]                  // 0x007c5bdf    8b4dfc
                         add              esi, 0x04                                     // 0x007c5be2    83c604
                         cmp              ecx, dword ptr [eax + 0x08]                   // 0x007c5be5    3b4808
                         .byte            0x72, 0xcb// {disp8} jb _jmp_addr_0x007c5bb5  // 0x007c5be8    72cb
_jmp_addr_0x007c5bea:    xor.s            eax, eax                                      // 0x007c5bea    33c0
_jmp_addr_0x007c5bec:    pop              edi                                           // 0x007c5bec    5f
                         pop              esi                                           // 0x007c5bed    5e
                         pop              ebx                                           // 0x007c5bee    5b
                         leave                                                          // 0x007c5bef    c9
                         ret                                                            // 0x007c5bf0    c3
_jmp_addr_0x007c5bf1:    mov.s            eax, edi                                      // 0x007c5bf1    8bc7
                         {disp8} jmp      _jmp_addr_0x007c5bec                          // 0x007c5bf3    ebf7
_jmp_addr_0x007c5bf5:    push             ebp                                           // 0x007c5bf5    55
                         mov.s            ebp, esp                                      // 0x007c5bf6    8bec
                         sub              esp, 0x0c                                     // 0x007c5bf8    83ec0c
                         and              dword ptr [ebp + -0x04], 0x00                 // 0x007c5bfb    8365fc00
                         push             ebx                                           // 0x007c5bff    53
                         {disp8} mov      ebx, dword ptr [ebp + 0x0c]                   // 0x007c5c00    8b5d0c
                         push             esi                                           // 0x007c5c03    56
                         push             edi                                           // 0x007c5c04    57
                         {disp8} mov      eax, dword ptr [ebx + 0x10]                   // 0x007c5c05    8b4310
                         cmp              dword ptr [eax + 0x08], 0x00                  // 0x007c5c08    83780800
                         {disp8} mov      edi, dword ptr [eax + 0x0c]                   // 0x007c5c0c    8b780c
                         {disp32} jbe     _jmp_addr_0x007c5c9e                          // 0x007c5c0f    0f8689000000
_jmp_addr_0x007c5c15:    mov              esi, dword ptr [edi]                          // 0x007c5c15    8b37
                         {disp8} mov      ecx, dword ptr [ebp + 0x18]                   // 0x007c5c17    8b4d18
                         mov              eax, dword ptr [esi]                          // 0x007c5c1a    8b06
                         cmp.s            eax, ecx                                      // 0x007c5c1c    3bc1
                         {disp8} je       _jmp_addr_0x007c5c33                          // 0x007c5c1e    7413
                         add              ecx, 0x8                                      // 0x007c5c20    83c108
                         add              eax, 0x08                                     // 0x007c5c23    83c008
                         push             ecx                                           // 0x007c5c26    51
                         push             eax                                           // 0x007c5c27    50
                         call             _strcmp                                       // 0x007c5c28    e8e3710000
                         pop              ecx                                           // 0x007c5c2d    59
                         test             eax, eax                                      // 0x007c5c2e    85c0
                         pop              ecx                                           // 0x007c5c30    59
                         {disp8} jne      _jmp_addr_0x007c5c89                          // 0x007c5c31    7556
_jmp_addr_0x007c5c33:    and              dword ptr [ebp + -0x0c], 0x00                 // 0x007c5c33    8365f400
                         cmp              dword ptr [esi + 0x04], 0x00                  // 0x007c5c37    837e0400
                         {disp8} lea      eax, dword ptr [edi + 0x04]                   // 0x007c5c3b    8d4704
                         {disp8} mov      dword ptr [ebp + -0x08], eax                  // 0x007c5c3e    8945f8
                         {disp8} jbe      _jmp_addr_0x007c5c89                          // 0x007c5c41    7646
_jmp_addr_0x007c5c43:    {disp8} mov      eax, dword ptr [ebp + -0x08]                  // 0x007c5c43    8b45f8
                         {disp8} mov      ecx, dword ptr [ebp + 0x10]                   // 0x007c5c46    8b4d10
                         mov              ebx, dword ptr [eax]                          // 0x007c5c49    8b18
                         mov              eax, dword ptr [ebx]                          // 0x007c5c4b    8b03
                         cmp.s            eax, ecx                                      // 0x007c5c4d    3bc1
                         {disp8} je       _jmp_addr_0x007c5c64                          // 0x007c5c4f    7413
                         add              ecx, 0x8                                      // 0x007c5c51    83c108
                         add              eax, 0x08                                     // 0x007c5c54    83c008
                         push             ecx                                           // 0x007c5c57    51
                         push             eax                                           // 0x007c5c58    50
                         call             _strcmp                                       // 0x007c5c59    e8b2710000
                         pop              ecx                                           // 0x007c5c5e    59
                         test             eax, eax                                      // 0x007c5c5f    85c0
                         pop              ecx                                           // 0x007c5c61    59
                         {disp8} jne      _jmp_addr_0x007c5c77                          // 0x007c5c62    7513
_jmp_addr_0x007c5c64:    add              ebx, 0x08                                     // 0x007c5c64    83c308
                         push             ebx                                           // 0x007c5c67    53
                         push             dword ptr [ebp + 0x08]                        // 0x007c5c68    ff7508
                         call             _jmp_addr_0x007c5e26                          // 0x007c5c6b    e8b6010000
                         cmp              eax, dword ptr [ebp + 0x14]                   // 0x007c5c70    3b4514
                         pop              ecx                                           // 0x007c5c73    59
                         pop              ecx                                           // 0x007c5c74    59
                         {disp8} je       _jmp_addr_0x007c5cea                          // 0x007c5c75    7473
_jmp_addr_0x007c5c77:    {disp8} inc      dword ptr [ebp + -0x0c]                       // 0x007c5c77    ff45f4
                         add              dword ptr [ebp + -0x08], 0x04                 // 0x007c5c7a    8345f804
                         {disp8} mov      eax, dword ptr [ebp + -0x0c]                  // 0x007c5c7e    8b45f4
                         cmp              eax, dword ptr [esi + 0x04]                   // 0x007c5c81    3b4604
                         .byte            0x72, 0xbd// {disp8} jb _jmp_addr_0x007c5c43  // 0x007c5c84    72bd
                         {disp8} mov      ebx, dword ptr [ebp + 0x0c]                   // 0x007c5c86    8b5d0c
_jmp_addr_0x007c5c89:    {disp8} inc      dword ptr [ebp + -0x04]                       // 0x007c5c89    ff45fc
                         {disp8} mov      eax, dword ptr [ebx + 0x10]                   // 0x007c5c8c    8b4310
                         {disp8} mov      ecx, dword ptr [ebp + -0x04]                  // 0x007c5c8f    8b4dfc
                         add              edi, 0x04                                     // 0x007c5c92    83c704
                         cmp              ecx, dword ptr [eax + 0x08]                   // 0x007c5c95    3b4808
                         {disp32} jb      _jmp_addr_0x007c5c15                          // 0x007c5c98    0f8277ffffff
_jmp_addr_0x007c5c9e:    {disp8} mov      eax, dword ptr [ebx + 0x10]                   // 0x007c5c9e    8b4310
                         and              dword ptr [ebp + -0x04], 0x00                 // 0x007c5ca1    8365fc00
                         cmp              dword ptr [eax + 0x08], 0x00                  // 0x007c5ca5    83780800
                         {disp8} mov      edi, dword ptr [eax + 0x0c]                   // 0x007c5ca9    8b780c
                         {disp8} jbe      _jmp_addr_0x007c5ce3                          // 0x007c5cac    7635
_jmp_addr_0x007c5cae:    mov              esi, dword ptr [edi]                          // 0x007c5cae    8b37
                         {disp8} mov      ecx, dword ptr [ebp + 0x18]                   // 0x007c5cb0    8b4d18
                         mov              eax, dword ptr [esi]                          // 0x007c5cb3    8b06
                         cmp.s            eax, ecx                                      // 0x007c5cb5    3bc1
                         {disp8} je       _jmp_addr_0x007c5ccc                          // 0x007c5cb7    7413
                         add              ecx, 0x8                                      // 0x007c5cb9    83c108
                         add              eax, 0x08                                     // 0x007c5cbc    83c008
                         push             ecx                                           // 0x007c5cbf    51
                         push             eax                                           // 0x007c5cc0    50
                         call             _strcmp                                       // 0x007c5cc1    e84a710000
                         pop              ecx                                           // 0x007c5cc6    59
                         test             eax, eax                                      // 0x007c5cc7    85c0
                         pop              ecx                                           // 0x007c5cc9    59
                         {disp8} jne      _jmp_addr_0x007c5cd2                          // 0x007c5cca    7506
_jmp_addr_0x007c5ccc:    test             byte ptr [esi + 0x14], 0x03                   // 0x007c5ccc    f6461403
                         {disp8} je       _jmp_addr_0x007c5cea                          // 0x007c5cd0    7418
_jmp_addr_0x007c5cd2:    {disp8} inc      dword ptr [ebp + -0x04]                       // 0x007c5cd2    ff45fc
                         {disp8} mov      eax, dword ptr [ebx + 0x10]                   // 0x007c5cd5    8b4310
                         {disp8} mov      ecx, dword ptr [ebp + -0x04]                  // 0x007c5cd8    8b4dfc
                         add              edi, 0x04                                     // 0x007c5cdb    83c704
                         cmp              ecx, dword ptr [eax + 0x08]                   // 0x007c5cde    3b4808
                         .byte            0x72, 0xcb// {disp8} jb _jmp_addr_0x007c5cae  // 0x007c5ce1    72cb
_jmp_addr_0x007c5ce3:    xor.s            eax, eax                                      // 0x007c5ce3    33c0
_jmp_addr_0x007c5ce5:    pop              edi                                           // 0x007c5ce5    5f
                         pop              esi                                           // 0x007c5ce6    5e
                         pop              ebx                                           // 0x007c5ce7    5b
                         leave                                                          // 0x007c5ce8    c9
                         ret                                                            // 0x007c5ce9    c3
_jmp_addr_0x007c5cea:    mov.s            eax, esi                                      // 0x007c5cea    8bc6
                         {disp8} jmp      _jmp_addr_0x007c5ce5                          // 0x007c5cec    ebf7
_jmp_addr_0x007c5cee:    push             ebp                                           // 0x007c5cee    55
                         mov.s            ebp, esp                                      // 0x007c5cef    8bec
                         sub              esp, 0x10                                     // 0x007c5cf1    83ec10
                         push             ebx                                           // 0x007c5cf4    53
                         push             esi                                           // 0x007c5cf5    56
                         push             edi                                           // 0x007c5cf6    57
                         {disp8} mov      edi, dword ptr [ebp + 0x0c]                   // 0x007c5cf7    8b7d0c
                         xor.s            ecx, ecx                                      // 0x007c5cfa    33c9
                         {disp8} mov      eax, dword ptr [edi + 0x10]                   // 0x007c5cfc    8b4710
                         {disp8} mov      dword ptr [ebp + -0x10], ecx                  // 0x007c5cff    894df0
                         {disp8} mov      dword ptr [ebp + -0x04], ecx                  // 0x007c5d02    894dfc
                         cmp              dword ptr [eax + 0x08], ecx                   // 0x007c5d05    394808
                         {disp8} mov      ebx, dword ptr [eax + 0x0c]                   // 0x007c5d08    8b580c
                         {disp32} jbe     _jmp_addr_0x007c5dd8                          // 0x007c5d0b    0f86c7000000
_jmp_addr_0x007c5d11:    mov              esi, dword ptr [ebx]                          // 0x007c5d11    8b33
                         {disp8} mov      ecx, dword ptr [ebp + 0x18]                   // 0x007c5d13    8b4d18
                         mov              eax, dword ptr [esi]                          // 0x007c5d16    8b06
                         cmp.s            eax, ecx                                      // 0x007c5d18    3bc1
                         {disp8} je       _jmp_addr_0x007c5d33                          // 0x007c5d1a    7417
                         add              ecx, 0x8                                      // 0x007c5d1c    83c108
                         add              eax, 0x08                                     // 0x007c5d1f    83c008
                         push             ecx                                           // 0x007c5d22    51
                         push             eax                                           // 0x007c5d23    50
                         call             _strcmp                                       // 0x007c5d24    e8e7700000
                         pop              ecx                                           // 0x007c5d29    59
                         test             eax, eax                                      // 0x007c5d2a    85c0
                         pop              ecx                                           // 0x007c5d2c    59
                         {disp32} jne     _jmp_addr_0x007c5dba                          // 0x007c5d2d    0f8587000000
_jmp_addr_0x007c5d33:    and              dword ptr [ebp + -0x0c], 0x00                 // 0x007c5d33    8365f400
                         cmp              dword ptr [esi + 0x04], 0x00                  // 0x007c5d37    837e0400
                         {disp8} lea      eax, dword ptr [ebx + 0x04]                   // 0x007c5d3b    8d4304
                         {disp8} mov      dword ptr [ebp + -0x08], eax                  // 0x007c5d3e    8945f8
                         {disp8} jbe      _jmp_addr_0x007c5dba                          // 0x007c5d41    7677
_jmp_addr_0x007c5d43:    {disp8} mov      eax, dword ptr [ebp + -0x08]                  // 0x007c5d43    8b45f8
                         {disp8} mov      ecx, dword ptr [ebp + 0x10]                   // 0x007c5d46    8b4d10
                         mov              edi, dword ptr [eax]                          // 0x007c5d49    8b38
                         mov              eax, dword ptr [edi]                          // 0x007c5d4b    8b07
                         cmp.s            eax, ecx                                      // 0x007c5d4d    3bc1
                         {disp8} je       _jmp_addr_0x007c5d64                          // 0x007c5d4f    7413
                         add              ecx, 0x8                                      // 0x007c5d51    83c108
                         add              eax, 0x08                                     // 0x007c5d54    83c008
                         push             ecx                                           // 0x007c5d57    51
                         push             eax                                           // 0x007c5d58    50
                         call             _strcmp                                       // 0x007c5d59    e8b2700000
                         pop              ecx                                           // 0x007c5d5e    59
                         test             eax, eax                                      // 0x007c5d5f    85c0
                         pop              ecx                                           // 0x007c5d61    59
                         {disp8} jne      _jmp_addr_0x007c5da8                          // 0x007c5d62    7544
_jmp_addr_0x007c5d64:    add              edi, 0x08                                     // 0x007c5d64    83c708
                         push             edi                                           // 0x007c5d67    57
                         push             dword ptr [ebp + 0x08]                        // 0x007c5d68    ff7508
                         call             _jmp_addr_0x007c5e26                          // 0x007c5d6b    e8b6000000
                         cmp              eax, dword ptr [ebp + 0x14]                   // 0x007c5d70    3b4514
                         pop              ecx                                           // 0x007c5d73    59
                         pop              ecx                                           // 0x007c5d74    59
                         {disp8} jne      _jmp_addr_0x007c5da8                          // 0x007c5d75    7531
                         {disp8} mov      edi, dword ptr [ebp + -0x10]                  // 0x007c5d77    8b7df0
                         test             edi, edi                                      // 0x007c5d7a    85ff
                         {disp8} je       _jmp_addr_0x007c5da5                          // 0x007c5d7c    7427
                         {disp8} lea      eax, dword ptr [esi + 0x08]                   // 0x007c5d7e    8d4608
                         push             eax                                           // 0x007c5d81    50
                         push             dword ptr [ebp + 0x08]                        // 0x007c5d82    ff7508
                         call             _jmp_addr_0x007c5e26                          // 0x007c5d85    e89c000000
                         add              edi, 0x08                                     // 0x007c5d8a    83c708
                         mov.s            edx, eax                                      // 0x007c5d8d    8bd0
                         push             edi                                           // 0x007c5d8f    57
                         {disp8} mov      dword ptr [ebp + -0x10], edx                  // 0x007c5d90    8955f0
                         push             dword ptr [ebp + 0x08]                        // 0x007c5d93    ff7508
                         call             _jmp_addr_0x007c5e26                          // 0x007c5d96    e88b000000
                         {disp8} mov      ecx, dword ptr [ebp + -0x10]                  // 0x007c5d9b    8b4df0
                         add              esp, 0x10                                     // 0x007c5d9e    83c410
                         cmp.s            eax, ecx                                      // 0x007c5da1    3bc1
                         {disp8} jne      _jmp_addr_0x007c5e1b                          // 0x007c5da3    7576
_jmp_addr_0x007c5da5:    {disp8} mov      dword ptr [ebp + -0x10], esi                  // 0x007c5da5    8975f0
_jmp_addr_0x007c5da8:    {disp8} inc      dword ptr [ebp + -0x0c]                       // 0x007c5da8    ff45f4
                         add              dword ptr [ebp + -0x08], 0x04                 // 0x007c5dab    8345f804
                         {disp8} mov      eax, dword ptr [ebp + -0x0c]                  // 0x007c5daf    8b45f4
                         cmp              eax, dword ptr [esi + 0x04]                   // 0x007c5db2    3b4604
                         .byte            0x72, 0x8c// {disp8} jb _jmp_addr_0x007c5d43  // 0x007c5db5    728c
                         {disp8} mov      edi, dword ptr [ebp + 0x0c]                   // 0x007c5db7    8b7d0c
_jmp_addr_0x007c5dba:    {disp8} inc      dword ptr [ebp + -0x04]                       // 0x007c5dba    ff45fc
                         {disp8} mov      eax, dword ptr [edi + 0x10]                   // 0x007c5dbd    8b4710
                         {disp8} mov      ecx, dword ptr [ebp + -0x04]                  // 0x007c5dc0    8b4dfc
                         add              ebx, 0x04                                     // 0x007c5dc3    83c304
                         cmp              ecx, dword ptr [eax + 0x08]                   // 0x007c5dc6    3b4808
                         {disp32} jb      _jmp_addr_0x007c5d11                          // 0x007c5dc9    0f8242ffffff
                         {disp8} mov      eax, dword ptr [ebp + -0x10]                  // 0x007c5dcf    8b45f0
                         xor.s            ecx, ecx                                      // 0x007c5dd2    33c9
                         cmp.s            eax, ecx                                      // 0x007c5dd4    3bc1
                         {disp8} jne      _jmp_addr_0x007c5e1d                          // 0x007c5dd6    7545
_jmp_addr_0x007c5dd8:    {disp8} mov      eax, dword ptr [edi + 0x10]                   // 0x007c5dd8    8b4710
                         {disp8} mov      dword ptr [ebp + -0x04], ecx                  // 0x007c5ddb    894dfc
                         cmp              dword ptr [eax + 0x08], ecx                   // 0x007c5dde    394808
                         {disp8} mov      ebx, dword ptr [eax + 0x0c]                   // 0x007c5de1    8b580c
                         {disp8} jbe      _jmp_addr_0x007c5e1b                          // 0x007c5de4    7635
_jmp_addr_0x007c5de6:    mov              esi, dword ptr [ebx]                          // 0x007c5de6    8b33
                         {disp8} mov      ecx, dword ptr [ebp + 0x18]                   // 0x007c5de8    8b4d18
                         mov              eax, dword ptr [esi]                          // 0x007c5deb    8b06
                         cmp.s            eax, ecx                                      // 0x007c5ded    3bc1
                         {disp8} je       _jmp_addr_0x007c5e04                          // 0x007c5def    7413
                         add              ecx, 0x8                                      // 0x007c5df1    83c108
                         add              eax, 0x08                                     // 0x007c5df4    83c008
                         push             ecx                                           // 0x007c5df7    51
                         push             eax                                           // 0x007c5df8    50
                         call             _strcmp                                       // 0x007c5df9    e812700000
                         pop              ecx                                           // 0x007c5dfe    59
                         test             eax, eax                                      // 0x007c5dff    85c0
                         pop              ecx                                           // 0x007c5e01    59
                         {disp8} jne      _jmp_addr_0x007c5e0a                          // 0x007c5e02    7506
_jmp_addr_0x007c5e04:    test             byte ptr [esi + 0x14], 0x03                   // 0x007c5e04    f6461403
                         {disp8} je       _jmp_addr_0x007c5e22                          // 0x007c5e08    7418
_jmp_addr_0x007c5e0a:    {disp8} inc      dword ptr [ebp + -0x04]                       // 0x007c5e0a    ff45fc
                         {disp8} mov      eax, dword ptr [edi + 0x10]                   // 0x007c5e0d    8b4710
                         {disp8} mov      ecx, dword ptr [ebp + -0x04]                  // 0x007c5e10    8b4dfc
                         add              ebx, 0x04                                     // 0x007c5e13    83c304
                         cmp              ecx, dword ptr [eax + 0x08]                   // 0x007c5e16    3b4808
                         .byte            0x72, 0xcb// {disp8} jb _jmp_addr_0x007c5de6  // 0x007c5e19    72cb
_jmp_addr_0x007c5e1b:    xor.s            eax, eax                                      // 0x007c5e1b    33c0
_jmp_addr_0x007c5e1d:    pop              edi                                           // 0x007c5e1d    5f
                         pop              esi                                           // 0x007c5e1e    5e
                         pop              ebx                                           // 0x007c5e1f    5b
                         leave                                                          // 0x007c5e20    c9
                         ret                                                            // 0x007c5e21    c3
_jmp_addr_0x007c5e22:    mov.s            eax, esi                                      // 0x007c5e22    8bc6
                         {disp8} jmp      _jmp_addr_0x007c5e1d                          // 0x007c5e24    ebf7
_jmp_addr_0x007c5e26:    {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007c5e26    8b442408
                         xor.s            ecx, ecx                                      // 0x007c5e2a    33c9
                         {disp8} mov      edx, dword ptr [eax + 0x04]                   // 0x007c5e2c    8b5004
                         test             edx, edx                                      // 0x007c5e2f    85d2
                         {disp8} jl       _jmp_addr_0x007c5e44                          // 0x007c5e31    7c11
                         mov.s            ecx, edx                                      // 0x007c5e33    8bca
                         {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x007c5e35    8b542404
                         push             esi                                           // 0x007c5e39    56
                         {disp8} mov      esi, dword ptr [eax + 0x08]                   // 0x007c5e3a    8b7008
                         mov              edx, dword ptr [ecx + edx * 0x1]              // 0x007c5e3d    8b1411
                         add              ecx, dword ptr [edx + esi * 0x1]              // 0x007c5e40    030c32
                         pop              esi                                           // 0x007c5e43    5e
_jmp_addr_0x007c5e44:    mov              eax, dword ptr [eax]                          // 0x007c5e44    8b00
                         add.s            eax, ecx                                      // 0x007c5e46    03c1
                         ret                                                            // 0x007c5e48    c3
