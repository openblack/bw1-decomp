.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _GetMidTextSize__Fv
.extern _jmp_addr_0x00407a20
.extern _jmp_addr_0x00407a30
.extern @SetDestinationWithSpeedAndTime__6ZoomerFfff@20
.extern ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ
.extern @FindControl__8SetupBoxFi@12
.extern _jmp_addr_0x00408240
.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern @__ct__10SetupButtonFiiiiiPwi@36
.extern @__ct__11SetupSliderFiiiiifPw@36
.extern @__ct__14SetupBigButtonFiiiPwiii@36
.extern @__ct__13SetupCheckBoxFiiibiPwi@33
.extern @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20
.extern _jmp_addr_0x00426d30
.extern _jmp_addr_0x00428250
.extern _jmp_addr_0x004282b0
.extern _jmp_addr_0x00428600
.extern _jmp_addr_0x00428660
.extern _jmp_addr_0x0046ee30
.extern _jmp_addr_0x0046ee50
.extern _jmp_addr_0x0046f030
.extern _jmp_addr_0x0046f040
.extern _jmp_addr_0x00514620
.extern _jmp_addr_0x005148b0
.extern ??0DialogBoxImmersion@@QAE@XZ
.extern ??0MiniDialogBoxOptions@@QAE@XZ
.extern _jmp_addr_0x0053f3e0
.extern _jmp_addr_0x0053f540
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern _jmp_addr_0x005553f0
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x005558d0
.extern ?SetActive@GInterface@@SAXH@Z
.extern _jmp_addr_0x0066bcd0
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _atexit
.extern _wcscpy
.extern ___nw__FUl
.extern @SetCursor__7LHMouseFPv19LH_MOUSE_IMAGE_TYPEi@20

.globl ??0DialogBoxBase@@QAE@XZ  
.globl _jmp_addr_0x005133c0
.globl @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20
.globl ?Destroy@DialogBoxBase@@UAEXXZ
.globl ?Show@DialogBoxBase@@UAEXXZ
.globl _jmp_addr_0x00513640
.globl _jmp_addr_0x00513680
.globl _jmp_addr_0x005136b0
.globl _HideAll__13DialogBoxBaseFv@0
.globl _jmp_addr_0x00513770
.globl ??0DialogBoxOptions@@QAE@XZ  
.globl _jmp_addr_0x00513850
.globl _jmp_addr_0x00513e10
.globl _jmp_addr_0x00513ea0
.globl _jmp_addr_0x00513eb0
.globl _jmp_addr_0x00513f80
.globl _jmp_addr_0x00513f90
.globl _jmp_addr_0x00514010
.globl _jmp_addr_0x00514020
.globl _jmp_addr_0x005140b0

.globl _globl_ct_0x005132d0
.globl _globl_ct_0x00513320
.globl _globl_ct_0x00513370
.globl _globl_ct_0x00513790
.globl _globl_ct_0x005137c0
.globl _globl_ct_0x005137e0
.globl _Destroy__13DialogBoxBaseFv
.globl _Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v
.globl _Show__13DialogBoxBaseFv
.globl ?CanESCOut@DialogBoxOptions@@UAE_NXZ
.globl ?Init@DialogBoxOptions@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z
.globl ?Destroy@DialogBoxOptions@@UAEXXZ
.globl ?InitControls@DialogBoxOptions@@UAEXXZ

start_0x005132d0_0x00514620:
// Snippet: asm, [0x005132d0, 0x005145f6)
_globl_ct_0x005132d0:    call              _jmp_addr_0x005132e0                          // 0x005132d0    e80b000000
                         {disp32} jmp      _jmp_addr_0x005132f0                          // 0x005132d5    e916000000
                         nop                                                             // 0x005132da    90
                         nop                                                             // 0x005132db    90
                         nop                                                             // 0x005132dc    90
                         nop                                                             // 0x005132dd    90
                         nop                                                             // 0x005132de    90
                         nop                                                             // 0x005132df    90
_jmp_addr_0x005132e0:    mov               ecx, 0x00cc6148                               // 0x005132e0    b94861cc00
                         {disp32} jmp      _jmp_addr_0x0046ee30                          // 0x005132e5    e946bbf5ff
                         nop                                                             // 0x005132ea    90
                         nop                                                             // 0x005132eb    90
                         nop                                                             // 0x005132ec    90
                         nop                                                             // 0x005132ed    90
                         nop                                                             // 0x005132ee    90
                         nop                                                             // 0x005132ef    90
_jmp_addr_0x005132f0:    push              0x00513300                                    // 0x005132f0    6800335100
                         call              _atexit                                       // 0x005132f5    e897242b00
                         pop               ecx                                           // 0x005132fa    59
                         ret                                                             // 0x005132fb    c3
                         nop                                                             // 0x005132fc    90
                         nop                                                             // 0x005132fd    90
                         nop                                                             // 0x005132fe    90
                         nop                                                             // 0x005132ff    90
                         {disp32} mov      cl, byte ptr [data_bytes + 0x300038]          // 0x00513300    8a0d3860cc00
                         mov               al, 0x01                                      // 0x00513306    b001
                         test              al, cl                                        // 0x00513308    84c8
                         {disp8} jne       _jmp_addr_0x0051331e                          // 0x0051330a    7512
                         or.s              cl, al                                        // 0x0051330c    0ac8
                         {disp32} mov      byte ptr [data_bytes + 0x300038], cl          // 0x0051330e    880d3860cc00
                         mov               ecx, 0x00cc6148                               // 0x00513314    b94861cc00
                         {disp32} jmp      _jmp_addr_0x0046ee50                          // 0x00513319    e932bbf5ff
_jmp_addr_0x0051331e:    ret                                                             // 0x0051331e    c3
                         nop                                                             // 0x0051331f    90
_globl_ct_0x00513320:    call              _jmp_addr_0x00513330                          // 0x00513320    e80b000000
                         {disp32} jmp      _jmp_addr_0x00513340                          // 0x00513325    e916000000
                         nop                                                             // 0x0051332a    90
                         nop                                                             // 0x0051332b    90
                         nop                                                             // 0x0051332c    90
                         nop                                                             // 0x0051332d    90
                         nop                                                             // 0x0051332e    90
                         nop                                                             // 0x0051332f    90
_jmp_addr_0x00513330:    mov               ecx, 0x00cc6040                               // 0x00513330    b94060cc00
                         {disp32} jmp      _jmp_addr_0x0046f030                          // 0x00513335    e9f6bcf5ff
                         nop                                                             // 0x0051333a    90
                         nop                                                             // 0x0051333b    90
                         nop                                                             // 0x0051333c    90
                         nop                                                             // 0x0051333d    90
                         nop                                                             // 0x0051333e    90
                         nop                                                             // 0x0051333f    90
_jmp_addr_0x00513340:    push              0x00513350                                    // 0x00513340    6850335100
                         call              _atexit                                       // 0x00513345    e847242b00
                         pop               ecx                                           // 0x0051334a    59
                         ret                                                             // 0x0051334b    c3
                         nop                                                             // 0x0051334c    90
                         nop                                                             // 0x0051334d    90
                         nop                                                             // 0x0051334e    90
                         nop                                                             // 0x0051334f    90
                         {disp32} mov      cl, byte ptr [data_bytes + 0x300038]          // 0x00513350    8a0d3860cc00
                         mov               al, 0x02                                      // 0x00513356    b002
                         test              al, cl                                        // 0x00513358    84c8
                         {disp8} jne       _jmp_addr_0x0051336e                          // 0x0051335a    7512
                         or.s              cl, al                                        // 0x0051335c    0ac8
                         {disp32} mov      byte ptr [data_bytes + 0x300038], cl          // 0x0051335e    880d3860cc00
                         mov               ecx, 0x00cc6040                               // 0x00513364    b94060cc00
                         {disp32} jmp      _jmp_addr_0x0046f040                          // 0x00513369    e9d2bcf5ff
_jmp_addr_0x0051336e:    ret                                                             // 0x0051336e    c3
                         nop                                                             // 0x0051336f    90
_globl_ct_0x00513370:    {disp32} mov      cl, byte ptr [_DAT_00fac934]                  // 0x00513370    8a0d34c9fa00
                         mov               al, 0x01                                      // 0x00513376    b001
                         test              al, cl                                        // 0x00513378    84c8
                         {disp8} jne       _jmp_addr_0x00513384                          // 0x0051337a    7508
                         or.s              cl, al                                        // 0x0051337c    0ac8
                         {disp32} mov      byte ptr [_DAT_00fac934], cl                  // 0x0051337e    880d34c9fa00
_jmp_addr_0x00513384:    {disp32} jmp      _jmp_addr_0x00513390                          // 0x00513384    e907000000
                         nop                                                             // 0x00513389    90
                         nop                                                             // 0x0051338a    90
                         nop                                                             // 0x0051338b    90
                         nop                                                             // 0x0051338c    90
                         nop                                                             // 0x0051338d    90
                         nop                                                             // 0x0051338e    90
                         nop                                                             // 0x0051338f    90
_jmp_addr_0x00513390:    push              0x00407870                                    // 0x00513390    6870784000
                         call              _atexit                                       // 0x00513395    e8f7232b00
                         pop               ecx                                           // 0x0051339a    59
                         ret                                                             // 0x0051339b    c3
                         nop                                                             // 0x0051339c    90
                         nop                                                             // 0x0051339d    90
                         nop                                                             // 0x0051339e    90
                         nop                                                             // 0x0051339f    90
??0DialogBoxBase@@QAE@XZ:
                               mov.s             eax, ecx                                      // 0x005133a0    8bc1
                         mov               dword ptr [eax], 0x008d85c8                   // 0x005133a2    c700c8858d00
                         {disp8} mov       dword ptr [eax + 0x04], 0x00000000            // 0x005133a8    c7400400000000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x300298]        // 0x005133af    8b0d9862cc00
                         {disp8} mov       dword ptr [eax + 0x0c], ecx                   // 0x005133b5    89480c
                         {disp32} mov      dword ptr [data_bytes + 0x300298], eax        // 0x005133b8    a39862cc00
                         ret                                                             // 0x005133bd    c3
                         nop                                                             // 0x005133be    90
                         nop                                                             // 0x005133bf    90
_jmp_addr_0x005133c0:    mov               dword ptr [ecx], 0x008d85c8                   // 0x005133c0    c701c8858d00
                         {disp32} mov      eax, dword ptr [data_bytes + 0x300298]        // 0x005133c6    a19862cc00
                         cmp.s             eax, ecx                                      // 0x005133cb    3bc1
                         {disp8} jne       _jmp_addr_0x005133d8                          // 0x005133cd    7509
                         {disp8} mov       eax, dword ptr [ecx + 0x0c]                   // 0x005133cf    8b410c
                         {disp32} mov      dword ptr [data_bytes + 0x300298], eax        // 0x005133d2    a39862cc00
                         ret                                                             // 0x005133d7    c3
_jmp_addr_0x005133d8:    test              eax, eax                                      // 0x005133d8    85c0
                         {disp8} je        _jmp_addr_0x005133f0                          // 0x005133da    7414
_jmp_addr_0x005133dc:    {disp8} mov       edx, dword ptr [eax + 0x0c]                   // 0x005133dc    8b500c
                         cmp.s             edx, ecx                                      // 0x005133df    3bd1
                         {disp8} je        _jmp_addr_0x005133ea                          // 0x005133e1    7407
                         mov.s             eax, edx                                      // 0x005133e3    8bc2
                         test              eax, eax                                      // 0x005133e5    85c0
                         {disp8} jne       _jmp_addr_0x005133dc                          // 0x005133e7    75f3
                         ret                                                             // 0x005133e9    c3
_jmp_addr_0x005133ea:    {disp8} mov       ecx, dword ptr [ecx + 0x0c]                   // 0x005133ea    8b490c
                         {disp8} mov       dword ptr [eax + 0x0c], ecx                   // 0x005133ed    89480c
_jmp_addr_0x005133f0:    ret                                                             // 0x005133f0    c3
                         nop                                                             // 0x005133f1    90
                         nop                                                             // 0x005133f2    90
                         nop                                                             // 0x005133f3    90
                         nop                                                             // 0x005133f4    90
                         nop                                                             // 0x005133f5    90
                         nop                                                             // 0x005133f6    90
                         nop                                                             // 0x005133f7    90
                         nop                                                             // 0x005133f8    90
                         nop                                                             // 0x005133f9    90
                         nop                                                             // 0x005133fa    90
                         nop                                                             // 0x005133fb    90
                         nop                                                             // 0x005133fc    90
                         nop                                                             // 0x005133fd    90
                         nop                                                             // 0x005133fe    90
                         nop                                                             // 0x005133ff    90
_Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v:
@Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20:    sub               esp, 0x10                                     // 0x00513400    83ec10
                         push              ebx                                           // 0x00513403    53
                         push              esi                                           // 0x00513404    56
                         push              edi                                           // 0x00513405    57
                         push              0x2a                                          // 0x00513406    6a2a
                         mov.s             edi, ecx                                      // 0x00513408    8bf9
                         push              0x00be8c88                                    // 0x0051340a    68888cbe00
                         push              0x000000cc                                    // 0x0051340f    68cc000000
                         {disp8} mov       dword ptr [esp + 0x18], edi                   // 0x00513414    897c2418
                         call              ___nw__FUl                                    // 0x00513418    e873832c00
                         mov.s             esi, eax                                      // 0x0051341d    8bf0
                         xor.s             ebx, ebx                                      // 0x0051341f    33db
                         add               esp, 0x0c                                     // 0x00513421    83c40c
                         cmp.s             esi, ebx                                      // 0x00513424    3bf3
                         {disp32} je       _jmp_addr_0x00513563                          // 0x00513426    0f8437010000
                         {disp8} mov       eax, dword ptr [esp + 0x20]                   // 0x0051342c    8b442420
                         {disp8} mov       ecx, dword ptr [esp + 0x24]                   // 0x00513430    8b4c2424
                         mov               dword ptr [esi], 0x008d85f0                   // 0x00513434    c706f0858d00
                         {disp32} mov      dword ptr [esi + 0x000000c0], 0xffffffff      // 0x0051343a    c786c0000000ffffffff
                         {disp32} mov      dword ptr [esi + 0x00000098], ebx             // 0x00513444    899e98000000
                         {disp32} mov      dword ptr [esi + 0x000000c4], 0x3f800000      // 0x0051344a    c786c40000000000803f
                         {disp32} mov      dword ptr [esi + 0x0000009c], eax             // 0x00513454    89869c000000
                         {disp32} mov      dword ptr [esi + 0x000000a0], ecx             // 0x0051345a    898ea0000000
                         {disp32} mov      dword ptr [esi + 0x000000a4], 0x00000258      // 0x00513460    c786a400000058020000
                         {disp32} mov      dword ptr [esi + 0x000000a8], 0x000000c8      // 0x0051346a    c786a8000000c8000000
                         {disp8} mov       byte ptr [esi + 0x64], bl                     // 0x00513474    885e64
                         {disp8} mov       byte ptr [esi + 0x65], bl                     // 0x00513477    885e65
                         {disp8} mov       dword ptr [esi + 0x74], ebx                   // 0x0051347a    895e74
                         {disp8} mov       dword ptr [esi + 0x6c], ebx                   // 0x0051347d    895e6c
                         {disp8} mov       dword ptr [esi + 0x70], ebx                   // 0x00513480    895e70
                         {disp8} mov       dword ptr [esi + 0x68], ebx                   // 0x00513483    895e68
                         {disp32} mov      dword ptr [esi + 0x000000b0], ebx             // 0x00513486    899eb0000000
                         call              _jmp_addr_0x00407a20                          // 0x0051348c    e88f45efff
                         {disp32} mov      dword ptr [esi + 0x000000ac], eax             // 0x00513491    8986ac000000
                         {disp32} mov      dword ptr [data_bytes + 0x286d1c], esi        // 0x00513497    89351ccdc400
                         {disp8} lea       edi, dword ptr [esi + 0x04]                   // 0x0051349d    8d7e04
                         {disp8} lea       ecx, dword ptr [esi + 0x34]                   // 0x005134a0    8d4e34
                         {disp8} mov       dword ptr [edi + 0x04], ebx                   // 0x005134a3    895f04
                         mov               dword ptr [edi], ebx                          // 0x005134a6    891f
                         {disp8} mov       dword ptr [edi + 0x1c], ebx                   // 0x005134a8    895f1c
                         {disp8} mov       dword ptr [edi + 0x18], ebx                   // 0x005134ab    895f18
                         {disp8} mov       dword ptr [edi + 0x14], ebx                   // 0x005134ae    895f14
                         {disp8} mov       dword ptr [edi + 0x2c], ebx                   // 0x005134b1    895f2c
                         {disp8} mov       dword ptr [edi + 0x28], ebx                   // 0x005134b4    895f28
                         {disp8} mov       dword ptr [edi + 0x10], ebx                   // 0x005134b7    895f10
                         {disp8} mov       dword ptr [edi + 0x24], ebx                   // 0x005134ba    895f24
                         {disp8} mov       dword ptr [edi + 0x0c], ebx                   // 0x005134bd    895f0c
                         {disp8} mov       dword ptr [edi + 0x20], ebx                   // 0x005134c0    895f20
                         {disp8} mov       dword ptr [edi + 0x08], ebx                   // 0x005134c3    895f08
                         push              0x3f000000                                    // 0x005134c6    680000003f
                         push              ebx                                           // 0x005134cb    53
                         push              ebx                                           // 0x005134cc    53
                         {disp8} mov       dword ptr [ecx + 0x04], ebx                   // 0x005134cd    895904
                         mov               dword ptr [ecx], ebx                          // 0x005134d0    8919
                         {disp8} mov       dword ptr [ecx + 0x1c], ebx                   // 0x005134d2    89591c
                         {disp8} mov       dword ptr [ecx + 0x18], ebx                   // 0x005134d5    895918
                         {disp8} mov       dword ptr [ecx + 0x14], ebx                   // 0x005134d8    895914
                         {disp8} mov       dword ptr [ecx + 0x2c], ebx                   // 0x005134db    89592c
                         {disp8} mov       dword ptr [ecx + 0x28], ebx                   // 0x005134de    895928
                         {disp8} mov       dword ptr [ecx + 0x10], ebx                   // 0x005134e1    895910
                         {disp8} mov       dword ptr [ecx + 0x24], ebx                   // 0x005134e4    895924
                         {disp8} mov       dword ptr [ecx + 0x0c], ebx                   // 0x005134e7    89590c
                         {disp8} mov       dword ptr [ecx + 0x20], ebx                   // 0x005134ea    895920
                         {disp8} mov       dword ptr [ecx + 0x08], ebx                   // 0x005134ed    895908
                         call              @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x005134f0    e86b48efff
                         {disp32} fld      dword ptr [esi + 0x000000c4]                  // 0x005134f5    d986c4000000
                         push              0x3f000000                                    // 0x005134fb    680000003f
                         push              ebx                                           // 0x00513500    53
                         push              ecx                                           // 0x00513501    51
                         fstp              dword ptr [esp]                               // 0x00513502    d91c24
                         mov.s             ecx, edi                                      // 0x00513505    8bcf
                         call              @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x00513507    e85448efff
                         {disp8} mov       edi, dword ptr [esp + 0x0c]                   // 0x0051350c    8b7c240c
                         mov.s             ecx, ebx                                      // 0x00513510    8bcb
                         {disp32} lea      edx, dword ptr [esi + 0x00000088]             // 0x00513512    8d9688000000
                         mov               dword ptr [edx], ecx                          // 0x00513518    890a
                         mov               eax, 0x00000001                               // 0x0051351a    b801000000
                         {disp8} mov       dword ptr [edx + 0x04], ecx                   // 0x0051351f    894a04
                         {disp8} mov       byte ptr [esi + 0x78], al                     // 0x00513522    884678
                         {disp8} mov       dword ptr [esi + 0x7c], 0x00000190            // 0x00513525    c7467c90010000
                         {disp32} mov      dword ptr [esi + 0x00000080], 0x0000012c      // 0x0051352c    c786800000002c010000
                         {disp32} mov      dword ptr [esi + 0x00000084], 0x3f800000      // 0x00513536    c786840000000000803f
                         {disp8} mov       dword ptr [esp + 0x10], ebx                   // 0x00513540    895c2410
                         {disp8} mov       dword ptr [esp + 0x14], ebx                   // 0x00513544    895c2414
                         {disp8} mov       dword ptr [esp + 0x18], ebx                   // 0x00513548    895c2418
                         {disp8} mov       dword ptr [edx + 0x08], ecx                   // 0x0051354c    894a08
                         {disp32} mov      dword ptr [esi + 0x00000094], eax             // 0x0051354f    898694000000
                         {disp32} mov      dword ptr [esi + 0x000000c8], ebx             // 0x00513555    899ec8000000
                         {disp32} mov      dword ptr [esi + 0x000000bc], ebx             // 0x0051355b    899ebc000000
                         {disp8} jmp       _jmp_addr_0x00513565                          // 0x00513561    eb02
_jmp_addr_0x00513563:    xor.s             esi, esi                                      // 0x00513563    33f6
_jmp_addr_0x00513565:    {disp8} mov       eax, dword ptr [esp + 0x28]                   // 0x00513565    8b442428
                         {disp8} mov       dword ptr [edi + 0x04], esi                   // 0x00513569    897704
                         {disp32} mov      dword ptr [data_bytes + 0x286d1c], esi        // 0x0051356c    89351ccdc400
                         {disp8} mov       edx, dword ptr [edi + 0x04]                   // 0x00513572    8b5704
                         pop               edi                                           // 0x00513575    5f
                         pop               esi                                           // 0x00513576    5e
                         {disp32} mov      dword ptr [edx + 0x000000b0], eax             // 0x00513577    8982b0000000
                         pop               ebx                                           // 0x0051357d    5b
                         add               esp, 0x10                                     // 0x0051357e    83c410
                         ret               0x000c                                        // 0x00513581    c20c00
                         nop                                                             // 0x00513584    90
                         nop                                                             // 0x00513585    90
                         nop                                                             // 0x00513586    90
                         nop                                                             // 0x00513587    90
                         nop                                                             // 0x00513588    90
                         nop                                                             // 0x00513589    90
                         nop                                                             // 0x0051358a    90
                         nop                                                             // 0x0051358b    90
                         nop                                                             // 0x0051358c    90
                         nop                                                             // 0x0051358d    90
                         nop                                                             // 0x0051358e    90
                         nop                                                             // 0x0051358f    90
_Destroy__13DialogBoxBaseFv:
?Destroy@DialogBoxBase@@UAEXXZ:
                                  push              esi                                           // 0x00513590    56
                         {disp8} mov       esi, dword ptr [ecx + 0x04]                   // 0x00513591    8b7104
                         test              esi, esi                                      // 0x00513594    85f6
                         {disp8} je        _jmp_addr_0x005135ec                          // 0x00513596    7454
                         mov               dword ptr [esi], 0x008d85f0                   // 0x00513598    c706f0858d00
                         mov.s             ecx, esi                                      // 0x0051359e    8bce
                         {disp32} mov      dword ptr [data_bytes + 0x286d1c], 0x00000000 // 0x005135a0    c7051ccdc40000000000
                         call              _jmp_addr_0x00408240                          // 0x005135aa    e8914cefff
                         {disp8} mov       ecx, dword ptr [esi + 0x6c]                   // 0x005135af    8b4e6c
                         test              ecx, ecx                                      // 0x005135b2    85c9
                         {disp8} je        _jmp_addr_0x005135c4                          // 0x005135b4    740e
_jmp_addr_0x005135b6:    mov               eax, dword ptr [ecx]                          // 0x005135b6    8b01
                         push              0x1                                           // 0x005135b8    6a01
                         call              dword ptr [eax + 0x30]                        // 0x005135ba    ff5030
                         {disp8} mov       ecx, dword ptr [esi + 0x6c]                   // 0x005135bd    8b4e6c
                         test              ecx, ecx                                      // 0x005135c0    85c9
                         {disp8} jne       _jmp_addr_0x005135b6                          // 0x005135c2    75f2
_jmp_addr_0x005135c4:    {disp8} mov       eax, dword ptr [esi + 0x68]                   // 0x005135c4    8b4668
                         test              eax, eax                                      // 0x005135c7    85c0
                         {disp8} mov       dword ptr [esi + 0x6c], eax                   // 0x005135c9    89466c
                         {disp8} je        _jmp_addr_0x005135e3                          // 0x005135cc    7415
_jmp_addr_0x005135ce:    {disp8} mov       ecx, dword ptr [esi + 0x6c]                   // 0x005135ce    8b4e6c
                         test              ecx, ecx                                      // 0x005135d1    85c9
                         {disp8} je        _jmp_addr_0x005135dc                          // 0x005135d3    7407
                         mov               edx, dword ptr [ecx]                          // 0x005135d5    8b11
                         push              0x1                                           // 0x005135d7    6a01
                         call              dword ptr [edx + 0x30]                        // 0x005135d9    ff5230
_jmp_addr_0x005135dc:    {disp8} mov       eax, dword ptr [esi + 0x6c]                   // 0x005135dc    8b466c
                         test              eax, eax                                      // 0x005135df    85c0
                         {disp8} jne       _jmp_addr_0x005135ce                          // 0x005135e1    75eb
_jmp_addr_0x005135e3:    push              esi                                           // 0x005135e3    56
                         call              ??3@YAXPAX@Z                                  // 0x005135e4    e8afb82900
                         add               esp, 0x04                                     // 0x005135e9    83c404
_jmp_addr_0x005135ec:    pop               esi                                           // 0x005135ec    5e
                         ret                                                             // 0x005135ed    c3
                         nop                                                             // 0x005135ee    90
                         nop                                                             // 0x005135ef    90
_Show__13DialogBoxBaseFv:
?Show@DialogBoxBase@@UAEXXZ:
                               cmp               dword ptr [data_bytes + 0x3002a0], 0x0f       // 0x005135f0    833da062cc000f
                         push              esi                                           // 0x005135f7    56
                         mov.s             esi, ecx                                      // 0x005135f8    8bf1
                         {disp8} jae       _jmp_addr_0x0051363b                          // 0x005135fa    733f
                         call              ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x005135fc    e8cf48efff
                         cmp               eax, dword ptr [esi + 0x04]                   // 0x00513601    3b4604
                         {disp8} je        _jmp_addr_0x0051363b                          // 0x00513604    7435
                         call              ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x00513606    e8c548efff
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x3002a0]        // 0x0051360b    8b0da062cc00
                         {disp32} mov      dword ptr [ecx * 0x4 + 0x00cc6258], eax       // 0x00513611    89048d5862cc00
                         inc               ecx                                           // 0x00513618    41
                         {disp32} mov      dword ptr [data_bytes + 0x3002a0], ecx        // 0x00513619    890da062cc00
                         {disp8} mov       eax, dword ptr [esi + 0x04]                   // 0x0051361f    8b4604
                         push              eax                                           // 0x00513622    50
                         call              _jmp_addr_0x00407a30                          // 0x00513623    e80844efff
                         {disp8} mov       ecx, dword ptr [esi + 0x04]                   // 0x00513628    8b4e04
                         {disp32} mov      edx, dword ptr [data_bytes + 0x3002a0]        // 0x0051362b    8b15a062cc00
                         add               esp, 0x04                                     // 0x00513631    83c404
                         {disp32} mov      dword ptr [edx * 0x4 + 0x00cc6258], ecx       // 0x00513634    890c955862cc00
_jmp_addr_0x0051363b:    pop               esi                                           // 0x0051363b    5e
                         ret                                                             // 0x0051363c    c3
                         nop                                                             // 0x0051363d    90
                         nop                                                             // 0x0051363e    90
                         nop                                                             // 0x0051363f    90
_jmp_addr_0x00513640:    {disp32} mov      ecx, dword ptr [data_bytes + 0x30029c]        // 0x00513640    8b0d9c62cc00
                         test              ecx, ecx                                      // 0x00513646    85c9
                         {disp8} je        _jmp_addr_0x0051364f                          // 0x00513648    7405
                         mov               eax, dword ptr [ecx]                          // 0x0051364a    8b01
                         call              dword ptr [eax + 0x10]                        // 0x0051364c    ff5010
_jmp_addr_0x0051364f:    {disp32} mov      eax, dword ptr [data_bytes + 0x3002a0]        // 0x0051364f    a1a062cc00
                         test              eax, eax                                      // 0x00513654    85c0
                         {disp8} jbe       _jmp_addr_0x0051366f                          // 0x00513656    7617
                         {disp32} mov      ecx, dword ptr [eax * 0x4 + 0x00cc6254]       // 0x00513658    8b0c855462cc00
                         dec               eax                                           // 0x0051365f    48
                         push              ecx                                           // 0x00513660    51
                         {disp32} mov      dword ptr [data_bytes + 0x3002a0], eax        // 0x00513661    a3a062cc00
                         call              _jmp_addr_0x00407a30                          // 0x00513666    e8c543efff
                         add               esp, 0x04                                     // 0x0051366b    83c404
                         ret                                                             // 0x0051366e    c3
_jmp_addr_0x0051366f:    push              0x0                                           // 0x0051366f    6a00
                         call              _jmp_addr_0x00407a30                          // 0x00513671    e8ba43efff
                         pop               ecx                                           // 0x00513676    59
                         ret                                                             // 0x00513677    c3
                         nop                                                             // 0x00513678    90
                         nop                                                             // 0x00513679    90
                         nop                                                             // 0x0051367a    90
                         nop                                                             // 0x0051367b    90
                         nop                                                             // 0x0051367c    90
                         nop                                                             // 0x0051367d    90
                         nop                                                             // 0x0051367e    90
                         nop                                                             // 0x0051367f    90
_jmp_addr_0x00513680:    {disp32} mov      eax, dword ptr [data_bytes + 0x300298]        // 0x00513680    a19862cc00
                         test              eax, eax                                      // 0x00513685    85c0
                         {disp32} mov      dword ptr [data_bytes + 0x30029c], 0x00000000 // 0x00513687    c7059c62cc0000000000
                         {disp8} je        _jmp_addr_0x005136a9                          // 0x00513691    7416
                         {disp8} mov       ecx, dword ptr [esp + 0x04]                   // 0x00513693    8b4c2404
_jmp_addr_0x00513697:    cmp               dword ptr [eax + 0x04], ecx                   // 0x00513697    394804
                         {disp8} je        _jmp_addr_0x005136a4                          // 0x0051369a    7408
                         {disp8} mov       eax, dword ptr [eax + 0x0c]                   // 0x0051369c    8b400c
                         test              eax, eax                                      // 0x0051369f    85c0
                         {disp8} jne       _jmp_addr_0x00513697                          // 0x005136a1    75f4
                         ret                                                             // 0x005136a3    c3
_jmp_addr_0x005136a4:    {disp32} mov      dword ptr [data_bytes + 0x30029c], eax        // 0x005136a4    a39c62cc00
_jmp_addr_0x005136a9:    ret                                                             // 0x005136a9    c3
                         call              dword ptr [__imp__DirectXSetupGetVersion]     // 0x005136aa    ff153c908a00
_jmp_addr_0x005136b0:    {disp32} mov      eax, dword ptr [data_bytes + 0x3002a0]        // 0x005136b0    a1a062cc00
                         test              eax, eax                                      // 0x005136b5    85c0
                         {disp8} jbe       _jmp_addr_0x005136ca                          // 0x005136b7    7611
                         {disp32} mov      eax, dword ptr [eax * 0x4 + 0x00cc6258]       // 0x005136b9    8b04855862cc00
                         push              eax                                           // 0x005136c0    50
                         call              _jmp_addr_0x00407a30                          // 0x005136c1    e86a43efff
                         add               esp, 0x04                                     // 0x005136c6    83c404
                         ret                                                             // 0x005136c9    c3
_jmp_addr_0x005136ca:    push              0x0                                           // 0x005136ca    6a00
                         call              _jmp_addr_0x00407a30                          // 0x005136cc    e85f43efff
                         pop               ecx                                           // 0x005136d1    59
                         ret                                                             // 0x005136d2    c3
                         nop                                                             // 0x005136d3    90
                         nop                                                             // 0x005136d4    90
                         nop                                                             // 0x005136d5    90
                         nop                                                             // 0x005136d6    90
                         nop                                                             // 0x005136d7    90
                         nop                                                             // 0x005136d8    90
                         nop                                                             // 0x005136d9    90
                         nop                                                             // 0x005136da    90
                         nop                                                             // 0x005136db    90
                         nop                                                             // 0x005136dc    90
                         nop                                                             // 0x005136dd    90
                         nop                                                             // 0x005136de    90
                         nop                                                             // 0x005136df    90
_HideAll__13DialogBoxBaseFv@0:    xor.s             eax, eax                                      // 0x005136e0    33c0
                         push              edi                                           // 0x005136e2    57
                         mov               ecx, 0x00000010                               // 0x005136e3    b910000000
                         mov               edi, 0x00cc6258                               // 0x005136e8    bf5862cc00
                         push              eax                                           // 0x005136ed    50
                         rep stosd                                                       // 0x005136ee    f3ab
                         {disp32} mov      dword ptr [data_bytes + 0x3002a0], eax        // 0x005136f0    a3a062cc00
                         call              _jmp_addr_0x00407a30                          // 0x005136f5    e83643efff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x005136fa    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x00513700    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x00513702    8a81595a2000
                         add               esp, 0x04                                     // 0x00513708    83c404
                         pop               edi                                           // 0x0051370b    5f
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0051370c    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0051370f    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x00513712    8d0450
                         shl               eax, 5                                        // 0x00513715    c1e005
                         {disp8} lea       edx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x00513718    8d540818
                         test              edx, edx                                      // 0x0051371c    85d2
                         {disp8} je        _jmp_addr_0x00513748                          // 0x0051371e    7428
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x00513720    e82b210400
                         test              eax, eax                                      // 0x00513725    85c0
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00513727    8b0d5c19d000
                         {disp8} je        _jmp_addr_0x00513748                          // 0x0051372d    7419
                         {disp32} mov      edx, dword ptr [ecx + 0x00250538]             // 0x0051372f    8b9138052500
                         test              edx, edx                                      // 0x00513735    85d2
                         {disp8} je        _jmp_addr_0x00513748                          // 0x00513737    740f
                         push              0x1                                           // 0x00513739    6a01
                         mov.s             ecx, eax                                      // 0x0051373b    8bc8
                         call              ?SetActive@GInterface@@SAXH@Z                 // 0x0051373d    e87eb60b00
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00513742    8b0d5c19d000
_jmp_addr_0x00513748:    cmp               dword ptr [ecx + 0x00205a28], 0x01            // 0x00513748    83b9285a200001
                         {disp8} jne       _jmp_addr_0x00513761                          // 0x0051374f    7510
                         push              0x0                                           // 0x00513751    6a00
                         push              0x1                                           // 0x00513753    6a01
                         push              0x0                                           // 0x00513755    6a00
                         mov               ecx, 0x00e85204                               // 0x00513757    b90452e800
                         call              @SetCursor__7LHMouseFPv19LH_MOUSE_IMAGE_TYPEi@20                          // 0x0051375c    e84f1c2d00
_jmp_addr_0x00513761:    {disp32} mov      dword ptr [data_bytes + 0x30029c], 0x00000000 // 0x00513761    c7059c62cc0000000000
                         ret                                                             // 0x0051376b    c3
                         nop                                                             // 0x0051376c    90
                         nop                                                             // 0x0051376d    90
                         nop                                                             // 0x0051376e    90
                         nop                                                             // 0x0051376f    90
_jmp_addr_0x00513770:    push              esi                                           // 0x00513770    56
                         mov.s             esi, ecx                                      // 0x00513771    8bf1
                         call              ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x00513773    e85847efff
                         sub               eax, dword ptr [esi + 0x04]                   // 0x00513778    2b4604
                         neg               eax                                           // 0x0051377b    f7d8
                         sbb.s             eax, eax                                      // 0x0051377d    1bc0
                         inc               eax                                           // 0x0051377f    40
                         pop               esi                                           // 0x00513780    5e
                         ret                                                             // 0x00513781    c3
                         nop                                                             // 0x00513782    90
                         nop                                                             // 0x00513783    90
                         nop                                                             // 0x00513784    90
                         nop                                                             // 0x00513785    90
                         nop                                                             // 0x00513786    90
                         nop                                                             // 0x00513787    90
                         nop                                                             // 0x00513788    90
                         nop                                                             // 0x00513789    90
                         nop                                                             // 0x0051378a    90
                         nop                                                             // 0x0051378b    90
                         nop                                                             // 0x0051378c    90
                         nop                                                             // 0x0051378d    90
                         nop                                                             // 0x0051378e    90
                         nop                                                             // 0x0051378f    90
_globl_ct_0x00513790:    {disp32} mov      cl, byte ptr [_DAT_00fac934]                  // 0x00513790    8a0d34c9fa00
                         mov               al, 0x01                                      // 0x00513796    b001
                         test              al, cl                                        // 0x00513798    84c8
                         {disp8} jne       _jmp_addr_0x005137a4                          // 0x0051379a    7508
                         or.s              cl, al                                        // 0x0051379c    0ac8
                         {disp32} mov      byte ptr [_DAT_00fac934], cl                  // 0x0051379e    880d34c9fa00
_jmp_addr_0x005137a4:    {disp32} jmp      _jmp_addr_0x005137b0                          // 0x005137a4    e907000000
                         nop                                                             // 0x005137a9    90
                         nop                                                             // 0x005137aa    90
                         nop                                                             // 0x005137ab    90
                         nop                                                             // 0x005137ac    90
                         nop                                                             // 0x005137ad    90
                         nop                                                             // 0x005137ae    90
                         nop                                                             // 0x005137af    90
_jmp_addr_0x005137b0:    push              0x00407870                                    // 0x005137b0    6870784000
                         call              _atexit                                       // 0x005137b5    e8d71f2b00
                         pop               ecx                                           // 0x005137ba    59
                         ret                                                             // 0x005137bb    c3
                         nop                                                             // 0x005137bc    90
                         nop                                                             // 0x005137bd    90
                         nop                                                             // 0x005137be    90
                         nop                                                             // 0x005137bf    90
_globl_ct_0x005137c0:    {disp32} jmp      _jmp_addr_0x005137d0                          // 0x005137c0    e90b000000
                         nop                                                             // 0x005137c5    90
                         nop                                                             // 0x005137c6    90
                         nop                                                             // 0x005137c7    90
                         nop                                                             // 0x005137c8    90
                         nop                                                             // 0x005137c9    90
                         nop                                                             // 0x005137ca    90
                         nop                                                             // 0x005137cb    90
                         nop                                                             // 0x005137cc    90
                         nop                                                             // 0x005137cd    90
                         nop                                                             // 0x005137ce    90
                         nop                                                             // 0x005137cf    90
_jmp_addr_0x005137d0:    {disp32} mov      dword ptr [data_bytes + 0x3002b0], 0xffffffff // 0x005137d0    c705b062cc00ffffffff
                         ret                                                             // 0x005137da    c3
                         call              ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x005137db    e899e0eeff
_globl_ct_0x005137e0:    {disp32} jmp      _jmp_addr_0x005137f0                          // 0x005137e0    e90b000000
                         nop                                                             // 0x005137e5    90
                         nop                                                             // 0x005137e6    90
                         nop                                                             // 0x005137e7    90
                         nop                                                             // 0x005137e8    90
                         nop                                                             // 0x005137e9    90
                         nop                                                             // 0x005137ea    90
                         nop                                                             // 0x005137eb    90
                         nop                                                             // 0x005137ec    90
                         nop                                                             // 0x005137ed    90
                         nop                                                             // 0x005137ee    90
                         nop                                                             // 0x005137ef    90
_jmp_addr_0x005137f0:    {disp32} fld      dword ptr [rdata_bytes + 0x2f614]             // 0x005137f0    d90514868d00
                         {disp32} fmul     dword ptr [rdata_bytes + 0x2f610]             // 0x005137f6    d80d10868d00
                         {disp32} fstp     dword ptr [data_bytes + 0x3002ac]             // 0x005137fc    d91dac62cc00
                         ret                                                             // 0x00513802    c3
                         nop                                                             // 0x00513803    90
                         nop                                                             // 0x00513804    90
                         nop                                                             // 0x00513805    90
                         nop                                                             // 0x00513806    90
                         nop                                                             // 0x00513807    90
                         nop                                                             // 0x00513808    90
                         nop                                                             // 0x00513809    90
                         nop                                                             // 0x0051380a    90
                         nop                                                             // 0x0051380b    90
                         nop                                                             // 0x0051380c    90
                         nop                                                             // 0x0051380d    90
                         nop                                                             // 0x0051380e    90
                         nop                                                             // 0x0051380f    90
??0DialogBoxOptions@@QAE@XZ:
                                  push              esi                                           // 0x00513810    56
                         mov.s             esi, ecx                                      // 0x00513811    8bf1
                         call              ??0DialogBoxBase@@QAE@XZ                      // 0x00513813    e888fbffff
                         mov               dword ptr [esi], 0x008d861c                   // 0x00513818    c7061c868d00
                         mov.s             eax, esi                                      // 0x0051381e    8bc6
                         pop               esi                                           // 0x00513820    5e
                         ret                                                             // 0x00513821    c3
                         nop                                                             // 0x00513822    90
                         nop                                                             // 0x00513823    90
                         nop                                                             // 0x00513824    90
                         nop                                                             // 0x00513825    90
                         nop                                                             // 0x00513826    90
                         nop                                                             // 0x00513827    90
                         nop                                                             // 0x00513828    90
                         nop                                                             // 0x00513829    90
                         nop                                                             // 0x0051382a    90
                         nop                                                             // 0x0051382b    90
                         nop                                                             // 0x0051382c    90
                         nop                                                             // 0x0051382d    90
                         nop                                                             // 0x0051382e    90
                         nop                                                             // 0x0051382f    90
?CanESCOut@DialogBoxOptions@@UAE_NXZ:
                         {disp32} mov      eax, dword ptr [_game]                        // 0x00513830    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250304]             // 0x00513835    8b8804032500
                         {disp8} mov       eax, dword ptr [ecx + 0x5c]                   // 0x0051383b    8b415c
                         sub               eax, dword ptr [ecx + 0x54]                   // 0x0051383e    2b4154
                         neg               eax                                           // 0x00513841    f7d8
                         sbb.s             eax, eax                                      // 0x00513843    1bc0
                         inc               eax                                           // 0x00513845    40
                         ret                                                             // 0x00513846    c3
                         nop                                                             // 0x00513847    90
                         nop                                                             // 0x00513848    90
                         nop                                                             // 0x00513849    90
                         nop                                                             // 0x0051384a    90
                         nop                                                             // 0x0051384b    90
                         nop                                                             // 0x0051384c    90
                         nop                                                             // 0x0051384d    90
                         nop                                                             // 0x0051384e    90
                         nop                                                             // 0x0051384f    90
_jmp_addr_0x00513850:    mov               dword ptr [ecx], 0x008d861c                   // 0x00513850    c7011c868d00
                         {disp32} jmp      _jmp_addr_0x005133c0                          // 0x00513856    e965fbffff
                         nop                                                             // 0x0051385b    90
                         nop                                                             // 0x0051385c    90
                         nop                                                             // 0x0051385d    90
                         nop                                                             // 0x0051385e    90
                         nop                                                             // 0x0051385f    90
?Init@DialogBoxOptions@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         {disp8} mov       eax, dword ptr [esp + 0x0c]                   // 0x00513860    8b44240c
                         {disp8} mov       edx, dword ptr [esp + 0x04]                   // 0x00513864    8b542404
                         push              ebx                                           // 0x00513868    53
                         push              esi                                           // 0x00513869    56
                         mov.s             esi, ecx                                      // 0x0051386a    8bf1
                         {disp8} mov       ecx, dword ptr [esp + 0x10]                   // 0x0051386c    8b4c2410
                         push              edi                                           // 0x00513870    57
                         xor.s             ebx, ebx                                      // 0x00513871    33db
                         push              eax                                           // 0x00513873    50
                         push              ecx                                           // 0x00513874    51
                         {disp8} mov       dword ptr [esi + 0x58], 0x00000005            // 0x00513875    c7465805000000
                         {disp8} mov       dword ptr [esi + 0x54], ebx                   // 0x0051387c    895e54
                         {disp8} mov       dword ptr [esi + 0x50], ebx                   // 0x0051387f    895e50
                         {disp8} mov       dword ptr [esi + 0x4c], ebx                   // 0x00513882    895e4c
                         {disp8} mov       dword ptr [esi + 0x5c], ebx                   // 0x00513885    895e5c
                         {disp8} mov       dword ptr [esi + 0x48], ebx                   // 0x00513888    895e48
                         push              edx                                           // 0x0051388b    52
                         mov.s             ecx, esi                                      // 0x0051388c    8bce
                         {disp32} mov      dword ptr [data_bytes + 0x3002b8], ebx        // 0x0051388e    891db862cc00
                         call              @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x00513894    e867fbffff
                         push              0x3e                                          // 0x00513899    6a3e
                         push              0x00be8d40                                    // 0x0051389b    68408dbe00
                         push              0x00000244                                    // 0x005138a0    6844020000
                         call              ___nw__FUl                                    // 0x005138a5    e8e67e2c00
                         mov.s             edi, eax                                      // 0x005138aa    8bf8
                         add               esp, 0x0c                                     // 0x005138ac    83c40c
                         cmp.s             edi, ebx                                      // 0x005138af    3bfb
                         {disp8} je        _jmp_addr_0x00513900                          // 0x005138b1    744d
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d6a // 0x005138b3    813dac7cd1006a0d0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x005138bd    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x005138c9                          // 0x005138c2    7605
                         add               eax, 0x0000a0f8                               // 0x005138c4    05f8a00000
_jmp_addr_0x005138c9:    {disp8} mov       ecx, dword ptr [eax + 0x08]                   // 0x005138c9    8b4808
                         push              ecx                                           // 0x005138cc    51
                         push              0x28                                          // 0x005138cd    6a28
                         push              0x000002bc                                    // 0x005138cf    68bc020000
                         push              0x3c                                          // 0x005138d4    6a3c
                         push              0x32                                          // 0x005138d6    6a32
                         push              0x000003e7                                    // 0x005138d8    68e7030000
                         mov.s             ecx, edi                                      // 0x005138dd    8bcf
                         call              ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x005138df    e86c59efff
                         mov               dword ptr [edi], 0x008ab5c0                   // 0x005138e4    c707c0b58a00
                         {disp32} mov      dword ptr [edi + 0x0000023c], 0x00000004      // 0x005138ea    c7873c02000004000000
                         {disp32} mov      byte ptr [edi + 0x0000022a], bl               // 0x005138f4    889f2a020000
                         {disp32} mov      dword ptr [edi + 0x00000240], ebx             // 0x005138fa    899f40020000
_jmp_addr_0x00513900:    push              0x40                                          // 0x00513900    6a40
                         push              0x00be8d40                                    // 0x00513902    68408dbe00
                         push              0x00000244                                    // 0x00513907    6844020000
                         call              ___nw__FUl                                    // 0x0051390c    e87f7e2c00
                         add               esp, 0x0c                                     // 0x00513911    83c40c
                         cmp.s             eax, ebx                                      // 0x00513914    3bc3
                         {disp8} je        _jmp_addr_0x0051393a                          // 0x00513916    7422
                         push              ebx                                           // 0x00513918    53
                         push              0x009cee0c                                    // 0x00513919    680cee9c00
                         push              0x1e                                          // 0x0051391e    6a1e
                         push              0x000000c8                                    // 0x00513920    68c8000000
                         push              0x00000096                                    // 0x00513925    6896000000
                         push              0x0000012c                                    // 0x0051392a    682c010000
                         push              0x6b                                          // 0x0051392f    6a6b
                         mov.s             ecx, eax                                      // 0x00513931    8bc8
                         call              @__ct__10SetupButtonFiiiiiPwi@36              // 0x00513933    e8785fefff
                         {disp8} jmp       _jmp_addr_0x0051393c                          // 0x00513938    eb02
_jmp_addr_0x0051393a:    xor.s             eax, eax                                      // 0x0051393a    33c0
_jmp_addr_0x0051393c:    {disp8} mov       dword ptr [esi + 0x10], eax                   // 0x0051393c    894610
                         call              _GetMidTextSize__Fv                           // 0x0051393f    e8bc40efff
                         {disp8} mov       edx, dword ptr [esi + 0x10]                   // 0x00513944    8b5610
                         push              0x42                                          // 0x00513947    6a42
                         push              0x00be8d40                                    // 0x00513949    68408dbe00
                         push              0x0000025c                                    // 0x0051394e    685c020000
                         {disp8} mov       dword ptr [edx + 0x20], eax                   // 0x00513953    894220
                         call              ___nw__FUl                                    // 0x00513956    e8357e2c00
                         add               esp, 0x0c                                     // 0x0051395b    83c40c
                         cmp.s             eax, ebx                                      // 0x0051395e    3bc3
                         {disp8} je        _jmp_addr_0x00513981                          // 0x00513960    741f
                         push              0x2                                           // 0x00513962    6a02
                         push              ebx                                           // 0x00513964    53
                         push              0x20                                          // 0x00513965    6a20
                         push              0x009cee0c                                    // 0x00513967    680cee9c00
                         push              0x00000095                                    // 0x0051396c    6895000000
                         push              0x00000104                                    // 0x00513971    6804010000
                         push              0x6d                                          // 0x00513976    6a6d
                         mov.s             ecx, eax                                      // 0x00513978    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36           // 0x0051397a    e8e198efff
                         {disp8} jmp       _jmp_addr_0x00513983                          // 0x0051397f    eb02
_jmp_addr_0x00513981:    xor.s             eax, eax                                      // 0x00513981    33c0
_jmp_addr_0x00513983:    push              0x43                                          // 0x00513983    6a43
                         push              0x00be8d40                                    // 0x00513985    68408dbe00
                         push              0x0000025c                                    // 0x0051398a    685c020000
                         {disp8} mov       dword ptr [esi + 0x14], eax                   // 0x0051398f    894614
                         call              ___nw__FUl                                    // 0x00513992    e8f97d2c00
                         add               esp, 0x0c                                     // 0x00513997    83c40c
                         cmp.s             eax, ebx                                      // 0x0051399a    3bc3
                         {disp8} je        _jmp_addr_0x005139bd                          // 0x0051399c    741f
                         push              0x3                                           // 0x0051399e    6a03
                         push              ebx                                           // 0x005139a0    53
                         push              0x20                                          // 0x005139a1    6a20
                         push              0x009cee0c                                    // 0x005139a3    680cee9c00
                         push              0x00000095                                    // 0x005139a8    6895000000
                         push              0x000001fc                                    // 0x005139ad    68fc010000
                         push              0x6c                                          // 0x005139b2    6a6c
                         mov.s             ecx, eax                                      // 0x005139b4    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36           // 0x005139b6    e8a598efff
                         {disp8} jmp       _jmp_addr_0x005139bf                          // 0x005139bb    eb02
_jmp_addr_0x005139bd:    xor.s             eax, eax                                      // 0x005139bd    33c0
_jmp_addr_0x005139bf:    push              0x45                                          // 0x005139bf    6a45
                         push              0x00be8d40                                    // 0x005139c1    68408dbe00
                         push              0x00000244                                    // 0x005139c6    6844020000
                         {disp8} mov       dword ptr [esi + 0x18], eax                   // 0x005139cb    894618
                         call              ___nw__FUl                                    // 0x005139ce    e8bd7d2c00
                         add               esp, 0x0c                                     // 0x005139d3    83c40c
                         cmp.s             eax, ebx                                      // 0x005139d6    3bc3
                         {disp8} je        _jmp_addr_0x005139fc                          // 0x005139d8    7422
                         push              ebx                                           // 0x005139da    53
                         push              0x009cee0c                                    // 0x005139db    680cee9c00
                         push              0x1e                                          // 0x005139e0    6a1e
                         push              0x000000c8                                    // 0x005139e2    68c8000000
                         push              0x000000d7                                    // 0x005139e7    68d7000000
                         push              0x0000012c                                    // 0x005139ec    682c010000
                         push              0x6e                                          // 0x005139f1    6a6e
                         mov.s             ecx, eax                                      // 0x005139f3    8bc8
                         call              @__ct__10SetupButtonFiiiiiPwi@36              // 0x005139f5    e8b65eefff
                         {disp8} jmp       _jmp_addr_0x005139fe                          // 0x005139fa    eb02
_jmp_addr_0x005139fc:    xor.s             eax, eax                                      // 0x005139fc    33c0
_jmp_addr_0x005139fe:    {disp8} mov       dword ptr [esi + 0x1c], eax                   // 0x005139fe    89461c
                         call              _GetMidTextSize__Fv                           // 0x00513a01    e8fa3fefff
                         {disp8} mov       ecx, dword ptr [esi + 0x1c]                   // 0x00513a06    8b4e1c
                         push              0x47                                          // 0x00513a09    6a47
                         push              0x00be8d40                                    // 0x00513a0b    68408dbe00
                         push              0x0000025c                                    // 0x00513a10    685c020000
                         {disp8} mov       dword ptr [ecx + 0x20], eax                   // 0x00513a15    894120
                         call              ___nw__FUl                                    // 0x00513a18    e8737d2c00
                         add               esp, 0x0c                                     // 0x00513a1d    83c40c
                         cmp.s             eax, ebx                                      // 0x00513a20    3bc3
                         {disp8} je        _jmp_addr_0x00513a43                          // 0x00513a22    741f
                         push              0x2                                           // 0x00513a24    6a02
                         push              ebx                                           // 0x00513a26    53
                         push              0x20                                          // 0x00513a27    6a20
                         push              0x009cee0c                                    // 0x00513a29    680cee9c00
                         push              0x000000d6                                    // 0x00513a2e    68d6000000
                         push              0x00000104                                    // 0x00513a33    6804010000
                         push              0x70                                          // 0x00513a38    6a70
                         mov.s             ecx, eax                                      // 0x00513a3a    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00513a3c    e81f98efff
                         {disp8} jmp       _jmp_addr_0x00513a45                          // 0x00513a41    eb02
_jmp_addr_0x00513a43:    xor.s             eax, eax                                      // 0x00513a43    33c0
_jmp_addr_0x00513a45:    push              0x48                                          // 0x00513a45    6a48
                         push              0x00be8d40                                    // 0x00513a47    68408dbe00
                         push              0x0000025c                                    // 0x00513a4c    685c020000
                         {disp8} mov       dword ptr [esi + 0x20], eax                   // 0x00513a51    894620
                         call              ___nw__FUl                                    // 0x00513a54    e8377d2c00
                         add               esp, 0x0c                                     // 0x00513a59    83c40c
                         cmp.s             eax, ebx                                      // 0x00513a5c    3bc3
                         {disp8} je        _jmp_addr_0x00513a7f                          // 0x00513a5e    741f
                         push              0x3                                           // 0x00513a60    6a03
                         push              ebx                                           // 0x00513a62    53
                         push              0x20                                          // 0x00513a63    6a20
                         push              0x009cee0c                                    // 0x00513a65    680cee9c00
                         push              0x000000d6                                    // 0x00513a6a    68d6000000
                         push              0x000001fc                                    // 0x00513a6f    68fc010000
                         push              0x6f                                          // 0x00513a74    6a6f
                         mov.s             ecx, eax                                      // 0x00513a76    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00513a78    e8e397efff
                         {disp8} jmp       _jmp_addr_0x00513a81                          // 0x00513a7d    eb02
_jmp_addr_0x00513a7f:    xor.s             eax, eax                                      // 0x00513a7f    33c0
_jmp_addr_0x00513a81:    push              0x4a                                          // 0x00513a81    6a4a
                         push              0x00be8d40                                    // 0x00513a83    68408dbe00
                         push              0x00000244                                    // 0x00513a88    6844020000
                         {disp8} mov       dword ptr [esi + 0x24], eax                   // 0x00513a8d    894624
                         call              ___nw__FUl                                    // 0x00513a90    e8fb7c2c00
                         add               esp, 0x0c                                     // 0x00513a95    83c40c
                         cmp.s             eax, ebx                                      // 0x00513a98    3bc3
                         {disp8} je        _jmp_addr_0x00513abe                          // 0x00513a9a    7422
                         push              ebx                                           // 0x00513a9c    53
                         push              0x00c4cd30                                    // 0x00513a9d    6830cdc400
                         push              0x1e                                          // 0x00513aa2    6a1e
                         push              0x000000c8                                    // 0x00513aa4    68c8000000
                         push              0x00000118                                    // 0x00513aa9    6818010000
                         push              0x0000012c                                    // 0x00513aae    682c010000
                         push              0x71                                          // 0x00513ab3    6a71
                         mov.s             ecx, eax                                      // 0x00513ab5    8bc8
                         call              @__ct__10SetupButtonFiiiiiPwi@36              // 0x00513ab7    e8f45defff
                         {disp8} jmp       _jmp_addr_0x00513ac0                          // 0x00513abc    eb02
_jmp_addr_0x00513abe:    xor.s             eax, eax                                      // 0x00513abe    33c0
_jmp_addr_0x00513ac0:    {disp8} mov       dword ptr [esi + 0x28], eax                   // 0x00513ac0    894628
                         call              _GetMidTextSize__Fv                           // 0x00513ac3    e8383fefff
                         {disp8} mov       edx, dword ptr [esi + 0x28]                   // 0x00513ac8    8b5628
                         push              0x4c                                          // 0x00513acb    6a4c
                         push              0x00be8d40                                    // 0x00513acd    68408dbe00
                         push              0x0000025c                                    // 0x00513ad2    685c020000
                         {disp8} mov       dword ptr [edx + 0x20], eax                   // 0x00513ad7    894220
                         call              ___nw__FUl                                    // 0x00513ada    e8b17c2c00
                         add               esp, 0x0c                                     // 0x00513adf    83c40c
                         cmp.s             eax, ebx                                      // 0x00513ae2    3bc3
                         {disp8} je        _jmp_addr_0x00513b05                          // 0x00513ae4    741f
                         push              0x2                                           // 0x00513ae6    6a02
                         push              ebx                                           // 0x00513ae8    53
                         push              0x20                                          // 0x00513ae9    6a20
                         push              0x00c4cd30                                    // 0x00513aeb    6830cdc400
                         push              0x00000117                                    // 0x00513af0    6817010000
                         push              0x00000104                                    // 0x00513af5    6804010000
                         push              0x72                                          // 0x00513afa    6a72
                         mov.s             ecx, eax                                      // 0x00513afc    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00513afe    e85d97efff
                         {disp8} jmp       _jmp_addr_0x00513b07                          // 0x00513b03    eb02
_jmp_addr_0x00513b05:    xor.s             eax, eax                                      // 0x00513b05    33c0
_jmp_addr_0x00513b07:    push              0x4d                                          // 0x00513b07    6a4d
                         push              0x00be8d40                                    // 0x00513b09    68408dbe00
                         push              0x0000025c                                    // 0x00513b0e    685c020000
                         {disp8} mov       dword ptr [esi + 0x2c], eax                   // 0x00513b13    89462c
                         call              ___nw__FUl                                    // 0x00513b16    e8757c2c00
                         add               esp, 0x0c                                     // 0x00513b1b    83c40c
                         cmp.s             eax, ebx                                      // 0x00513b1e    3bc3
                         {disp8} je        _jmp_addr_0x00513b41                          // 0x00513b20    741f
                         push              0x3                                           // 0x00513b22    6a03
                         push              ebx                                           // 0x00513b24    53
                         push              0x20                                          // 0x00513b25    6a20
                         push              0x00c4cd30                                    // 0x00513b27    6830cdc400
                         push              0x00000117                                    // 0x00513b2c    6817010000
                         push              0x000001fc                                    // 0x00513b31    68fc010000
                         push              0x73                                          // 0x00513b36    6a73
                         mov.s             ecx, eax                                      // 0x00513b38    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00513b3a    e82197efff
                         {disp8} jmp       _jmp_addr_0x00513b43                          // 0x00513b3f    eb02
_jmp_addr_0x00513b41:    xor.s             eax, eax                                      // 0x00513b41    33c0
_jmp_addr_0x00513b43:    push              0x4f                                          // 0x00513b43    6a4f
                         push              0x00be8d40                                    // 0x00513b45    68408dbe00
                         push              0x00000250                                    // 0x00513b4a    6850020000
                         {disp8} mov       dword ptr [esi + 0x30], eax                   // 0x00513b4f    894630
                         call              ___nw__FUl                                    // 0x00513b52    e8397c2c00
                         add               esp, 0x0c                                     // 0x00513b57    83c40c
                         cmp.s             eax, ebx                                      // 0x00513b5a    3bc3
                         {disp8} je        _jmp_addr_0x00513b97                          // 0x00513b5c    7439
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d78 // 0x00513b5e    813dac7cd100780d0000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00513b68    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x00513b76                          // 0x00513b6e    7606
                         add               ecx, 0x0000a1a0                               // 0x00513b70    81c1a0a10000
_jmp_addr_0x00513b76:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x00513b76    8b4908
                         push              ecx                                           // 0x00513b79    51
                         push              ebx                                           // 0x00513b7a    53
                         push              0x1e                                          // 0x00513b7b    6a1e
                         push              0x0000012c                                    // 0x00513b7d    682c010000
                         push              0x0000016d                                    // 0x00513b82    686d010000
                         push              0x000000fa                                    // 0x00513b87    68fa000000
                         push              0x78                                          // 0x00513b8c    6a78
                         mov.s             ecx, eax                                      // 0x00513b8e    8bc8
                         call              @__ct__11SetupSliderFiiiiifPw@36              // 0x00513b90    e85b60efff
                         {disp8} jmp       _jmp_addr_0x00513b99                          // 0x00513b95    eb02
_jmp_addr_0x00513b97:    xor.s             eax, eax                                      // 0x00513b97    33c0
_jmp_addr_0x00513b99:    {disp8} mov       dword ptr [esi + 0x40], eax                   // 0x00513b99    894640
                         call              _GetMidTextSize__Fv                           // 0x00513b9c    e85f3eefff
                         {disp8} mov       edx, dword ptr [esi + 0x40]                   // 0x00513ba1    8b5640
                         {disp8} mov       dword ptr [edx + 0x20], eax                   // 0x00513ba4    894220
                         {disp32} mov      ecx, dword ptr [_global]                      // 0x00513ba7    8b0d203bcd00
                         call              _jmp_addr_0x00426d30                          // 0x00513bad    e87e31f1ff
                         {disp8} mov       ecx, dword ptr [esi + 0x40]                   // 0x00513bb2    8b4e40
                         mov               edx, dword ptr [ecx]                          // 0x00513bb5    8b11
                         cmp               eax, 0x01                                     // 0x00513bb7    83f801
                         sete              al                                            // 0x00513bba    0f94c0
                         push              eax                                           // 0x00513bbd    50
                         call              dword ptr [edx + 8]                           // 0x00513bbe    ff5208
                         push              0x62                                          // 0x00513bc1    6a62
                         push              0x00be8d40                                    // 0x00513bc3    68408dbe00
                         push              0x00000260                                    // 0x00513bc8    6860020000
                         call              ___nw__FUl                                    // 0x00513bcd    e8be7b2c00
                         add               esp, 0x0c                                     // 0x00513bd2    83c40c
                         cmp.s             eax, ebx                                      // 0x00513bd5    3bc3
                         {disp8} je        _jmp_addr_0x00513c0e                          // 0x00513bd7    7435
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d77 // 0x00513bd9    813dac7cd100770d0000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00513be3    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x00513bf1                          // 0x00513be9    7606
                         add               ecx, 0x0000a194                               // 0x00513beb    81c194a10000
_jmp_addr_0x00513bf1:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x00513bf1    8b4908
                         push              0x19                                          // 0x00513bf4    6a19
                         push              ecx                                           // 0x00513bf6    51
                         push              ebx                                           // 0x00513bf7    53
                         push              ebx                                           // 0x00513bf8    53
                         push              0x000001c2                                    // 0x00513bf9    68c2010000
                         push              0x00000181                                    // 0x00513bfe    6881010000
                         push              0x74                                          // 0x00513c03    6a74
                         mov.s             ecx, eax                                      // 0x00513c05    8bc8
                         call              @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x00513c07    e804d3efff
                         {disp8} jmp       _jmp_addr_0x00513c10                          // 0x00513c0c    eb02
_jmp_addr_0x00513c0e:    xor.s             eax, eax                                      // 0x00513c0e    33c0
_jmp_addr_0x00513c10:    push              0x63                                          // 0x00513c10    6a63
                         push              0x00be8d40                                    // 0x00513c12    68408dbe00
                         push              0x00000260                                    // 0x00513c17    6860020000
                         {disp8} mov       dword ptr [esi + 0x34], eax                   // 0x00513c1c    894634
                         call              ___nw__FUl                                    // 0x00513c1f    e86c7b2c00
                         add               esp, 0x0c                                     // 0x00513c24    83c40c
                         cmp.s             eax, ebx                                      // 0x00513c27    3bc3
                         {disp8} je        _jmp_addr_0x00513c68                          // 0x00513c29    743d
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d69 // 0x00513c2b    813dac7cd100690d0000
                         {disp8} ja        _jmp_addr_0x00513c3f                          // 0x00513c35    7708
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00513c37    8b0da87cd100
                         {disp8} jmp       _jmp_addr_0x00513c4b                          // 0x00513c3d    eb0c
_jmp_addr_0x00513c3f:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x00513c3f    8b15a87cd100
                         {disp32} lea      ecx, dword ptr [edx + 0x0000a0ec]             // 0x00513c45    8d8aeca00000
_jmp_addr_0x00513c4b:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x00513c4b    8b4908
                         push              0x19                                          // 0x00513c4e    6a19
                         push              ecx                                           // 0x00513c50    51
                         push              ebx                                           // 0x00513c51    53
                         push              ebx                                           // 0x00513c52    53
                         push              0x000001c2                                    // 0x00513c53    68c2010000
                         push              0x000000b9                                    // 0x00513c58    68b9000000
                         push              0x69                                          // 0x00513c5d    6a69
                         mov.s             ecx, eax                                      // 0x00513c5f    8bc8
                         call              @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x00513c61    e8aad2efff
                         {disp8} jmp       _jmp_addr_0x00513c6a                          // 0x00513c66    eb02
_jmp_addr_0x00513c68:    xor.s             eax, eax                                      // 0x00513c68    33c0
_jmp_addr_0x00513c6a:    push              0x64                                          // 0x00513c6a    6a64
                         push              0x00be8d40                                    // 0x00513c6c    68408dbe00
                         push              0x00000260                                    // 0x00513c71    6860020000
                         {disp8} mov       dword ptr [esi + 0x38], eax                   // 0x00513c76    894638
                         call              ___nw__FUl                                    // 0x00513c79    e8127b2c00
                         add               esp, 0x0c                                     // 0x00513c7e    83c40c
                         cmp.s             eax, ebx                                      // 0x00513c81    3bc3
                         {disp8} je        _jmp_addr_0x00513cba                          // 0x00513c83    7435
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001aa0 // 0x00513c85    813dac7cd100a01a0000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00513c8f    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x00513c9d                          // 0x00513c95    7606
                         add               ecx, 0x00013f80                               // 0x00513c97    81c1803f0100
_jmp_addr_0x00513c9d:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x00513c9d    8b4908
                         push              0x19                                          // 0x00513ca0    6a19
                         push              ecx                                           // 0x00513ca2    51
                         push              ebx                                           // 0x00513ca3    53
                         push              ebx                                           // 0x00513ca4    53
                         push              0x000001c2                                    // 0x00513ca5    68c2010000
                         push              0x00000249                                    // 0x00513caa    6849020000
                         push              0x6a                                          // 0x00513caf    6a6a
                         mov.s             ecx, eax                                      // 0x00513cb1    8bc8
                         call              @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x00513cb3    e858d2efff
                         {disp8} jmp       _jmp_addr_0x00513cbc                          // 0x00513cb8    eb02
_jmp_addr_0x00513cba:    xor.s             eax, eax                                      // 0x00513cba    33c0
_jmp_addr_0x00513cbc:    push              0x6e                                          // 0x00513cbc    6a6e
                         push              0x00be8d40                                    // 0x00513cbe    68408dbe00
                         push              0x0000025c                                    // 0x00513cc3    685c020000
                         {disp8} mov       dword ptr [esi + 0x3c], eax                   // 0x00513cc8    89463c
                         call              ___nw__FUl                                    // 0x00513ccb    e8c07a2c00
                         add               esp, 0x0c                                     // 0x00513cd0    83c40c
                         cmp.s             eax, ebx                                      // 0x00513cd3    3bc3
                         {disp8} je        _jmp_addr_0x00513d12                          // 0x00513cd5    743b
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d7a // 0x00513cd7    813dac7cd1007a0d0000
                         {disp8} ja        _jmp_addr_0x00513ceb                          // 0x00513ce1    7708
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00513ce3    8b0da87cd100
                         {disp8} jmp       _jmp_addr_0x00513cf7                          // 0x00513ce9    eb0c
_jmp_addr_0x00513ceb:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x00513ceb    8b15a87cd100
                         {disp32} lea      ecx, dword ptr [edx + 0x0000a1b8]             // 0x00513cf1    8d8ab8a10000
_jmp_addr_0x00513cf7:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x00513cf7    8b4908
                         push              0x2                                           // 0x00513cfa    6a02
                         push              ebx                                           // 0x00513cfc    53
                         push              0x28                                          // 0x00513cfd    6a28
                         push              ecx                                           // 0x00513cff    51
                         push              0x00000212                                    // 0x00513d00    6812020000
                         push              0x1e                                          // 0x00513d05    6a1e
                         push              0x7a                                          // 0x00513d07    6a7a
                         mov.s             ecx, eax                                      // 0x00513d09    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00513d0b    e85095efff
                         {disp8} jmp       _jmp_addr_0x00513d14                          // 0x00513d10    eb02
_jmp_addr_0x00513d12:    xor.s             eax, eax                                      // 0x00513d12    33c0
_jmp_addr_0x00513d14:    {disp8} mov       dword ptr [esi + 0x44], eax                   // 0x00513d14    894644
                         call              _GetMidTextSize__Fv                           // 0x00513d17    e8e43cefff
                         {disp8} mov       ecx, dword ptr [esi + 0x44]                   // 0x00513d1c    8b4e44
                         push              0x3                                           // 0x00513d1f    6a03
                         {disp8} mov       dword ptr [ecx + 0x20], eax                   // 0x00513d21    894120
                         call              _jmp_addr_0x0053f540                          // 0x00513d24    e817b80200
                         push              0x74                                          // 0x00513d29    6a74
                         push              0x00be8d40                                    // 0x00513d2b    68408dbe00
                         push              0x48                                          // 0x00513d30    6a48
                         call              ___nw__FUl                                    // 0x00513d32    e8597a2c00
                         add               esp, 0x10                                     // 0x00513d37    83c410
                         cmp.s             eax, ebx                                      // 0x00513d3a    3bc3
                         {disp8} je        _jmp_addr_0x00513d47                          // 0x00513d3c    7409
                         mov.s             ecx, eax                                      // 0x00513d3e    8bc8
                         call              ??0MiniDialogBoxOptions@@QAE@XZ               // 0x00513d40    e8db110000
                         {disp8} jmp       _jmp_addr_0x00513d49                          // 0x00513d45    eb02
_jmp_addr_0x00513d47:    xor.s             eax, eax                                      // 0x00513d47    33c0
_jmp_addr_0x00513d49:    push              0x005140c0                                    // 0x00513d49    68c0405100
                         push              0x000001f4                                    // 0x00513d4e    68f4010000
                         {disp8} mov       dword ptr [esi + 0x60], eax                   // 0x00513d53    894660
                         mov               edx, dword ptr [eax]                          // 0x00513d56    8b10
                         push              0x0000030c                                    // 0x00513d58    680c030000
                         mov.s             ecx, eax                                      // 0x00513d5d    8bc8
                         call              dword ptr [edx]                               // 0x00513d5f    ff12
                         push              0x77                                          // 0x00513d61    6a77
                         push              0x00be8d40                                    // 0x00513d63    68408dbe00
                         push              0x30                                          // 0x00513d68    6a30
                         call              ___nw__FUl                                    // 0x00513d6a    e8217a2c00
                         add               esp, 0x0c                                     // 0x00513d6f    83c40c
                         cmp.s             eax, ebx                                      // 0x00513d72    3bc3
                         {disp8} je        _jmp_addr_0x00513d7f                          // 0x00513d74    7409
                         mov.s             ecx, eax                                      // 0x00513d76    8bc8
                         call              ??0DialogBoxImmersion@@QAE@XZ                 // 0x00513d78    e8530c0000
                         {disp8} jmp       _jmp_addr_0x00513d81                          // 0x00513d7d    eb02
_jmp_addr_0x00513d7f:    xor.s             eax, eax                                      // 0x00513d7f    33c0
_jmp_addr_0x00513d81:    push              0x00514da0                                    // 0x00513d81    68a04d5100
                         push              0x000001f4                                    // 0x00513d86    68f4010000
                         {disp8} mov       dword ptr [esi + 0x64], eax                   // 0x00513d8b    894664
                         mov               edx, dword ptr [eax]                          // 0x00513d8e    8b10
                         push              0x0000030c                                    // 0x00513d90    680c030000
                         mov.s             ecx, eax                                      // 0x00513d95    8bc8
                         call              dword ptr [edx]                               // 0x00513d97    ff12
                         pop               edi                                           // 0x00513d99    5f
                         pop               esi                                           // 0x00513d9a    5e
                         pop               ebx                                           // 0x00513d9b    5b
                         ret               0x000c                                        // 0x00513d9c    c20c00
                         nop                                                             // 0x00513d9f    90
?Destroy@DialogBoxOptions@@UAEXXZ:
                         push              esi                                           // 0x00513da0    56
                         mov.s             esi, ecx                                      // 0x00513da1    8bf1
                         call              ?Destroy@DialogBoxBase@@UAEXXZ                // 0x00513da3    e8e8f7ffff
                         {disp8} mov       dword ptr [esi + 0x40], 0x00000000            // 0x00513da8    c7464000000000
                         pop               esi                                           // 0x00513daf    5e
                         ret                                                             // 0x00513db0    c3
                         nop                                                             // 0x00513db1    90
                         nop                                                             // 0x00513db2    90
                         nop                                                             // 0x00513db3    90
                         nop                                                             // 0x00513db4    90
                         nop                                                             // 0x00513db5    90
                         nop                                                             // 0x00513db6    90
                         nop                                                             // 0x00513db7    90
                         nop                                                             // 0x00513db8    90
                         nop                                                             // 0x00513db9    90
                         nop                                                             // 0x00513dba    90
                         nop                                                             // 0x00513dbb    90
                         nop                                                             // 0x00513dbc    90
                         nop                                                             // 0x00513dbd    90
                         nop                                                             // 0x00513dbe    90
                         nop                                                             // 0x00513dbf    90
?InitControls@DialogBoxOptions@@UAEXXZ:
                         push              esi                                           // 0x00513dc0    56
                         push              edi                                           // 0x00513dc1    57
                         mov.s             esi, ecx                                      // 0x00513dc2    8bf1
                         {disp32} mov      ecx, dword ptr [_global]                      // 0x00513dc4    8b0d203bcd00
                         xor.s             edi, edi                                      // 0x00513dca    33ff
                         cmp.s             ecx, edi                                      // 0x00513dcc    3bcf
                         {disp8} je        _jmp_addr_0x00513dd5                          // 0x00513dce    7405
                         call              _jmp_addr_0x00426d30                          // 0x00513dd0    e85b2ff1ff
_jmp_addr_0x00513dd5:    mov.s             ecx, esi                                      // 0x00513dd5    8bce
                         {disp8} mov       dword ptr [esi + 0x48], edi                   // 0x00513dd7    897e48
                         {disp8} mov       dword ptr [esi + 0x50], edi                   // 0x00513dda    897e50
                         {disp8} mov       dword ptr [esi + 0x4c], edi                   // 0x00513ddd    897e4c
                         {disp8} mov       dword ptr [esi + 0x54], edi                   // 0x00513de0    897e54
                         {disp8} mov       dword ptr [esi + 0x58], 0x00000005            // 0x00513de3    c7465805000000
                         call              _jmp_addr_0x00514620                          // 0x00513dea    e831080000
                         {disp8} mov       eax, dword ptr [esi + 0x54]                   // 0x00513def    8b4654
                         {disp8} mov       ecx, dword ptr [esi + 0x60]                   // 0x00513df2    8b4e60
                         {disp8} mov       dword ptr [esi + 0x5c], eax                   // 0x00513df5    89465c
                         mov               edx, dword ptr [ecx]                          // 0x00513df8    8b11
                         call              dword ptr [edx + 0x20]                        // 0x00513dfa    ff5220
                         {disp8} mov       ecx, dword ptr [esi + 0x64]                   // 0x00513dfd    8b4e64
                         mov               eax, dword ptr [ecx]                          // 0x00513e00    8b01
                         call              dword ptr [eax + 0x20]                        // 0x00513e02    ff5020
                         pop               edi                                           // 0x00513e05    5f
                         pop               esi                                           // 0x00513e06    5e
                         ret                                                             // 0x00513e07    c3
                         nop                                                             // 0x00513e08    90
                         nop                                                             // 0x00513e09    90
                         nop                                                             // 0x00513e0a    90
                         nop                                                             // 0x00513e0b    90
                         nop                                                             // 0x00513e0c    90
                         nop                                                             // 0x00513e0d    90
                         nop                                                             // 0x00513e0e    90
                         nop                                                             // 0x00513e0f    90
_jmp_addr_0x00513e10:    {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x00513e10    8b442404
                         sub               esp, 0x14                                     // 0x00513e14    83ec14
                         test              eax, eax                                      // 0x00513e17    85c0
                         push              esi                                           // 0x00513e19    56
                         push              edi                                           // 0x00513e1a    57
                         mov.s             edi, ecx                                      // 0x00513e1b    8bf9
                         {disp8} jge       _jmp_addr_0x00513e24                          // 0x00513e1d    7d05
                         add               eax, 0x000001f4                               // 0x00513e1f    05f4010000
_jmp_addr_0x00513e24:    cdq                                                             // 0x00513e24    99
                         mov               ecx, 0x00000005                               // 0x00513e25    b905000000
                         idiv              ecx                                           // 0x00513e2a    f7f9
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351cac]        // 0x00513e2c    8b0dac7cd100
                         {disp8} mov       dword ptr [esp + 0x08], 0x00000d6b            // 0x00513e32    c74424086b0d0000
                         {disp8} mov       dword ptr [esp + 0x0c], 0x00000d6c            // 0x00513e3a    c744240c6c0d0000
                         {disp8} mov       dword ptr [esp + 0x10], 0x00000d6d            // 0x00513e42    c74424106d0d0000
                         {disp8} mov       dword ptr [esp + 0x14], 0x00000d6e            // 0x00513e4a    c74424146e0d0000
                         {disp8} mov       dword ptr [esp + 0x18], 0x00000d6f            // 0x00513e52    c74424186f0d0000
                         mov.s             esi, edx                                      // 0x00513e5a    8bf2
                         {disp8} mov       eax, dword ptr [esp + esi * 0x4 + 0x08]       // 0x00513e5c    8b44b408
                         cmp.s             eax, ecx                                      // 0x00513e60    3bc1
                         {disp8} jae       _jmp_addr_0x00513e68                          // 0x00513e62    7304
                         test              eax, eax                                      // 0x00513e64    85c0
                         {disp8} ja        _jmp_addr_0x00513e6f                          // 0x00513e66    7707
_jmp_addr_0x00513e68:    {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x00513e68    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x00513e7a                          // 0x00513e6d    eb0b
_jmp_addr_0x00513e6f:    lea               edx, dword ptr [eax + eax * 0x2]              // 0x00513e6f    8d1440
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x00513e72    a1a87cd100
                         lea               eax, dword ptr [eax + edx * 0x4]              // 0x00513e77    8d0490
_jmp_addr_0x00513e7a:    {disp8} mov       ecx, dword ptr [eax + 0x08]                   // 0x00513e7a    8b4808
                         {disp8} mov       edx, dword ptr [edi + 0x10]                   // 0x00513e7d    8b5710
                         push              ecx                                           // 0x00513e80    51
                         add               edx, 0x24                                     // 0x00513e81    83c224
                         push              edx                                           // 0x00513e84    52
                         call              _wcscpy                                       // 0x00513e85    e82c212b00
                         add               esp, 0x08                                     // 0x00513e8a    83c408
                         {disp8} mov       dword ptr [edi + 0x50], esi                   // 0x00513e8d    897750
                         pop               edi                                           // 0x00513e90    5f
                         pop               esi                                           // 0x00513e91    5e
                         add               esp, 0x14                                     // 0x00513e92    83c414
                         ret               0x0004                                        // 0x00513e95    c20400
                         nop                                                             // 0x00513e98    90
                         nop                                                             // 0x00513e99    90
                         nop                                                             // 0x00513e9a    90
                         nop                                                             // 0x00513e9b    90
                         nop                                                             // 0x00513e9c    90
                         nop                                                             // 0x00513e9d    90
                         nop                                                             // 0x00513e9e    90
                         nop                                                             // 0x00513e9f    90
_jmp_addr_0x00513ea0:    {disp8} mov       eax, dword ptr [ecx + 0x50]                   // 0x00513ea0    8b4150
                         ret                                                             // 0x00513ea3    c3
                         nop                                                             // 0x00513ea4    90
                         nop                                                             // 0x00513ea5    90
                         nop                                                             // 0x00513ea6    90
                         nop                                                             // 0x00513ea7    90
                         nop                                                             // 0x00513ea8    90
                         nop                                                             // 0x00513ea9    90
                         nop                                                             // 0x00513eaa    90
                         nop                                                             // 0x00513eab    90
                         nop                                                             // 0x00513eac    90
                         nop                                                             // 0x00513ead    90
                         nop                                                             // 0x00513eae    90
                         nop                                                             // 0x00513eaf    90
_jmp_addr_0x00513eb0:    {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x00513eb0    8b442404
                         sub               esp, 0x1c                                     // 0x00513eb4    83ec1c
                         test              eax, eax                                      // 0x00513eb7    85c0
                         push              esi                                           // 0x00513eb9    56
                         push              edi                                           // 0x00513eba    57
                         mov.s             esi, ecx                                      // 0x00513ebb    8bf1
                         {disp8} jge       _jmp_addr_0x00513ecb                          // 0x00513ebd    7d0c
                         {disp8} mov       ecx, dword ptr [esi + 0x58]                   // 0x00513ebf    8b4e58
                         lea               ecx, dword ptr [ecx + ecx * 0x4]              // 0x00513ec2    8d0c89
                         lea               ecx, dword ptr [ecx + ecx * 0x4]              // 0x00513ec5    8d0c89
                         lea               eax, dword ptr [eax + ecx * 0x4]              // 0x00513ec8    8d0488
_jmp_addr_0x00513ecb:    {disp8} mov       ecx, dword ptr [esi + 0x58]                   // 0x00513ecb    8b4e58
                         test              ecx, ecx                                      // 0x00513ece    85c9
                         {disp8} jg        _jmp_addr_0x00513ed9                          // 0x00513ed0    7f07
                         {disp8} mov       dword ptr [esi + 0x58], 0x00000001            // 0x00513ed2    c7465801000000
_jmp_addr_0x00513ed9:    cdq                                                             // 0x00513ed9    99
                         idiv              dword ptr [esi + 0x58]                        // 0x00513eda    f77e58
                         mov               ecx, 0x00000007                               // 0x00513edd    b907000000
                         {disp8} mov       dword ptr [esp + 0x08], 0x00000dc9            // 0x00513ee2    c7442408c90d0000
                         {disp8} mov       dword ptr [esp + 0x0c], 0x00000dca            // 0x00513eea    c744240cca0d0000
                         {disp8} mov       dword ptr [esp + 0x10], 0x00000dcb            // 0x00513ef2    c7442410cb0d0000
                         {disp8} mov       dword ptr [esp + 0x14], 0x00000dcc            // 0x00513efa    c7442414cc0d0000
                         {disp8} mov       dword ptr [esp + 0x18], 0x00000dcd            // 0x00513f02    c7442418cd0d0000
                         {disp8} mov       dword ptr [esp + 0x1c], 0x00000dce            // 0x00513f0a    c744241cce0d0000
                         {disp8} mov       dword ptr [esp + 0x20], 0x00000dcf            // 0x00513f12    c7442420cf0d0000
                         mov.s             eax, edx                                      // 0x00513f1a    8bc2
                         cdq                                                             // 0x00513f1c    99
                         xor.s             eax, edx                                      // 0x00513f1d    33c2
                         sub.s             eax, edx                                      // 0x00513f1f    2bc2
                         cdq                                                             // 0x00513f21    99
                         idiv              ecx                                           // 0x00513f22    f7f9
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351cac]        // 0x00513f24    8b0dac7cd100
                         mov.s             edi, edx                                      // 0x00513f2a    8bfa
                         {disp8} mov       eax, dword ptr [esp + edi * 0x4 + 0x08]       // 0x00513f2c    8b44bc08
                         cmp.s             eax, ecx                                      // 0x00513f30    3bc1
                         {disp8} jae       _jmp_addr_0x00513f38                          // 0x00513f32    7304
                         test              eax, eax                                      // 0x00513f34    85c0
                         {disp8} ja        _jmp_addr_0x00513f3f                          // 0x00513f36    7707
_jmp_addr_0x00513f38:    {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x00513f38    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x00513f4a                          // 0x00513f3d    eb0b
_jmp_addr_0x00513f3f:    lea               edx, dword ptr [eax + eax * 0x2]              // 0x00513f3f    8d1440
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x00513f42    a1a87cd100
                         lea               eax, dword ptr [eax + edx * 0x4]              // 0x00513f47    8d0490
_jmp_addr_0x00513f4a:    {disp8} mov       ecx, dword ptr [eax + 0x08]                   // 0x00513f4a    8b4808
                         {disp32} mov      edx, dword ptr [_game]                        // 0x00513f4d    8b155c19d000
                         {disp32} mov      eax, dword ptr [edx + 0x00250304]             // 0x00513f53    8b8204032500
                         push              ecx                                           // 0x00513f59    51
                         {disp8} mov       ecx, dword ptr [eax + 0x60]                   // 0x00513f5a    8b4860
                         {disp8} mov       edx, dword ptr [ecx + 0x44]                   // 0x00513f5d    8b5144
                         add               edx, 0x24                                     // 0x00513f60    83c224
                         push              edx                                           // 0x00513f63    52
                         call              _wcscpy                                       // 0x00513f64    e84d202b00
                         add               esp, 0x08                                     // 0x00513f69    83c408
                         {disp8} mov       dword ptr [esi + 0x54], edi                   // 0x00513f6c    897e54
                         pop               edi                                           // 0x00513f6f    5f
                         pop               esi                                           // 0x00513f70    5e
                         add               esp, 0x1c                                     // 0x00513f71    83c41c
                         ret               0x0004                                        // 0x00513f74    c20400
                         nop                                                             // 0x00513f77    90
                         nop                                                             // 0x00513f78    90
                         nop                                                             // 0x00513f79    90
                         nop                                                             // 0x00513f7a    90
                         nop                                                             // 0x00513f7b    90
                         nop                                                             // 0x00513f7c    90
                         nop                                                             // 0x00513f7d    90
                         nop                                                             // 0x00513f7e    90
                         nop                                                             // 0x00513f7f    90
_jmp_addr_0x00513f80:    {disp8} mov       eax, dword ptr [ecx + 0x54]                   // 0x00513f80    8b4154
                         ret                                                             // 0x00513f83    c3
                         nop                                                             // 0x00513f84    90
                         nop                                                             // 0x00513f85    90
                         nop                                                             // 0x00513f86    90
                         nop                                                             // 0x00513f87    90
                         nop                                                             // 0x00513f88    90
                         nop                                                             // 0x00513f89    90
                         nop                                                             // 0x00513f8a    90
                         nop                                                             // 0x00513f8b    90
                         nop                                                             // 0x00513f8c    90
                         nop                                                             // 0x00513f8d    90
                         nop                                                             // 0x00513f8e    90
                         nop                                                             // 0x00513f8f    90
_jmp_addr_0x00513f90:    {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x00513f90    8b442404
                         sub               esp, 0x0c                                     // 0x00513f94    83ec0c
                         test              eax, eax                                      // 0x00513f97    85c0
                         push              esi                                           // 0x00513f99    56
                         push              edi                                           // 0x00513f9a    57
                         mov.s             edi, ecx                                      // 0x00513f9b    8bf9
                         {disp8} jge       _jmp_addr_0x00513fa4                          // 0x00513f9d    7d05
                         add               eax, 0x0000012c                               // 0x00513f9f    052c010000
_jmp_addr_0x00513fa4:    cdq                                                             // 0x00513fa4    99
                         xor.s             eax, edx                                      // 0x00513fa5    33c2
                         sub.s             eax, edx                                      // 0x00513fa7    2bc2
                         cdq                                                             // 0x00513fa9    99
                         mov               ecx, 0x00000003                               // 0x00513faa    b903000000
                         idiv              ecx                                           // 0x00513faf    f7f9
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351cac]        // 0x00513fb1    8b0dac7cd100
                         {disp8} mov       dword ptr [esp + 0x08], 0x00000d70            // 0x00513fb7    c7442408700d0000
                         {disp8} mov       dword ptr [esp + 0x0c], 0x00000d71            // 0x00513fbf    c744240c710d0000
                         {disp8} mov       dword ptr [esp + 0x10], 0x00000d72            // 0x00513fc7    c7442410720d0000
                         mov.s             esi, edx                                      // 0x00513fcf    8bf2
                         {disp8} mov       eax, dword ptr [esp + esi * 0x4 + 0x08]       // 0x00513fd1    8b44b408
                         cmp.s             eax, ecx                                      // 0x00513fd5    3bc1
                         {disp8} jae       _jmp_addr_0x00513fdd                          // 0x00513fd7    7304
                         test              eax, eax                                      // 0x00513fd9    85c0
                         {disp8} ja        _jmp_addr_0x00513fe4                          // 0x00513fdb    7707
_jmp_addr_0x00513fdd:    {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x00513fdd    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x00513fef                          // 0x00513fe2    eb0b
_jmp_addr_0x00513fe4:    lea               edx, dword ptr [eax + eax * 0x2]              // 0x00513fe4    8d1440
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x00513fe7    a1a87cd100
                         lea               eax, dword ptr [eax + edx * 0x4]              // 0x00513fec    8d0490
_jmp_addr_0x00513fef:    {disp8} mov       ecx, dword ptr [eax + 0x08]                   // 0x00513fef    8b4808
                         {disp8} mov       edx, dword ptr [edi + 0x1c]                   // 0x00513ff2    8b571c
                         push              ecx                                           // 0x00513ff5    51
                         add               edx, 0x24                                     // 0x00513ff6    83c224
                         push              edx                                           // 0x00513ff9    52
                         call              _wcscpy                                       // 0x00513ffa    e8b71f2b00
                         add               esp, 0x08                                     // 0x00513fff    83c408
                         {disp8} mov       dword ptr [edi + 0x4c], esi                   // 0x00514002    89774c
                         pop               edi                                           // 0x00514005    5f
                         pop               esi                                           // 0x00514006    5e
                         add               esp, 0x0c                                     // 0x00514007    83c40c
                         ret               0x0004                                        // 0x0051400a    c20400
                         nop                                                             // 0x0051400d    90
                         nop                                                             // 0x0051400e    90
                         nop                                                             // 0x0051400f    90
_jmp_addr_0x00514010:    {disp8} mov       eax, dword ptr [ecx + 0x4c]                   // 0x00514010    8b414c
                         ret                                                             // 0x00514013    c3
                         nop                                                             // 0x00514014    90
                         nop                                                             // 0x00514015    90
                         nop                                                             // 0x00514016    90
                         nop                                                             // 0x00514017    90
                         nop                                                             // 0x00514018    90
                         nop                                                             // 0x00514019    90
                         nop                                                             // 0x0051401a    90
                         nop                                                             // 0x0051401b    90
                         nop                                                             // 0x0051401c    90
                         nop                                                             // 0x0051401d    90
                         nop                                                             // 0x0051401e    90
                         nop                                                             // 0x0051401f    90
_jmp_addr_0x00514020:    {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x00514020    8b442404
                         sub               esp, 0x10                                     // 0x00514024    83ec10
                         test              eax, eax                                      // 0x00514027    85c0
                         push              esi                                           // 0x00514029    56
                         push              edi                                           // 0x0051402a    57
                         mov.s             edi, ecx                                      // 0x0051402b    8bf9
                         {disp8} jge       _jmp_addr_0x00514034                          // 0x0051402d    7d05
                         add               eax, 0x00000190                               // 0x0051402f    0590010000
_jmp_addr_0x00514034:    cdq                                                             // 0x00514034    99
                         xor.s             eax, edx                                      // 0x00514035    33c2
                         sub.s             eax, edx                                      // 0x00514037    2bc2
                         mov.s             esi, eax                                      // 0x00514039    8bf0
                         and               esi, 0x80000003                               // 0x0051403b    81e603000080
                         {disp8} jns       _jmp_addr_0x00514048                          // 0x00514041    7905
                         dec               esi                                           // 0x00514043    4e
                         or                esi, 0xfffffffc                               // 0x00514044    83cefc
                         inc               esi                                           // 0x00514047    46
_jmp_addr_0x00514048:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351cac]        // 0x00514048    8b0dac7cd100
                         {disp8} mov       dword ptr [esp + 0x08], 0x00000d73            // 0x0051404e    c7442408730d0000
                         {disp8} mov       dword ptr [esp + 0x0c], 0x00000d74            // 0x00514056    c744240c740d0000
                         {disp8} mov       dword ptr [esp + 0x10], 0x00000d75            // 0x0051405e    c7442410750d0000
                         {disp8} mov       dword ptr [esp + 0x14], 0x00000d76            // 0x00514066    c7442414760d0000
                         {disp8} mov       eax, dword ptr [esp + esi * 0x4 + 0x08]       // 0x0051406e    8b44b408
                         cmp.s             eax, ecx                                      // 0x00514072    3bc1
                         {disp8} jae       _jmp_addr_0x0051407a                          // 0x00514074    7304
                         test              eax, eax                                      // 0x00514076    85c0
                         {disp8} ja        _jmp_addr_0x00514081                          // 0x00514078    7707
_jmp_addr_0x0051407a:    {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0051407a    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0051408d                          // 0x0051407f    eb0c
_jmp_addr_0x00514081:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00514081    8b0da87cd100
                         lea               eax, dword ptr [eax + eax * 0x2]              // 0x00514087    8d0440
                         lea               eax, dword ptr [ecx + eax * 0x4]              // 0x0051408a    8d0481
_jmp_addr_0x0051408d:    {disp8} mov       edx, dword ptr [eax + 0x08]                   // 0x0051408d    8b5008
                         {disp8} mov       eax, dword ptr [edi + 0x28]                   // 0x00514090    8b4728
                         push              edx                                           // 0x00514093    52
                         add               eax, 0x24                                     // 0x00514094    83c024
                         push              eax                                           // 0x00514097    50
                         call              _wcscpy                                       // 0x00514098    e8191f2b00
                         add               esp, 0x08                                     // 0x0051409d    83c408
                         {disp8} mov       dword ptr [edi + 0x48], esi                   // 0x005140a0    897748
                         pop               edi                                           // 0x005140a3    5f
                         pop               esi                                           // 0x005140a4    5e
                         add               esp, 0x10                                     // 0x005140a5    83c410
                         ret               0x0004                                        // 0x005140a8    c20400
                         call              ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x005140ab    e8c9d7eeff
_jmp_addr_0x005140b0:    {disp8} mov       eax, dword ptr [ecx + 0x48]                   // 0x005140b0    8b4148
                         ret                                                             // 0x005140b3    c3
                         nop                                                             // 0x005140b4    90
                         nop                                                             // 0x005140b5    90
                         nop                                                             // 0x005140b6    90
                         nop                                                             // 0x005140b7    90
                         nop                                                             // 0x005140b8    90
                         nop                                                             // 0x005140b9    90
                         nop                                                             // 0x005140ba    90
                         nop                                                             // 0x005140bb    90
                         nop                                                             // 0x005140bc    90
                         nop                                                             // 0x005140bd    90
                         nop                                                             // 0x005140be    90
                         nop                                                             // 0x005140bf    90
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x005140c0    8b0d5c19d000
                         {disp32} mov      eax, dword ptr [ecx + 0x00250304]             // 0x005140c6    8b8104032500
                         {disp8} mov       edx, dword ptr [eax + 0x5c]                   // 0x005140cc    8b505c
                         push              ebx                                           // 0x005140cf    53
                         {disp8} mov       ebx, dword ptr [esp + 0x10]                   // 0x005140d0    8b5c2410
                         push              ebp                                           // 0x005140d4    55
                         {disp8} mov       ebp, dword ptr [esp + 0x1c]                   // 0x005140d5    8b6c241c
                         push              esi                                           // 0x005140d9    56
                         cmp               edx, dword ptr [eax + 0x54]                   // 0x005140da    3b5054
                         push              edi                                           // 0x005140dd    57
                         {disp8} mov       edi, dword ptr [esp + 0x18]                   // 0x005140de    8b7c2418
                         {disp8} jne       _jmp_addr_0x00514101                          // 0x005140e2    751d
                         {disp8} mov       esi, dword ptr [esp + 0x20]                   // 0x005140e4    8b742420
                         {disp8} mov       eax, dword ptr [esp + 0x14]                   // 0x005140e8    8b442414
                         push              ebp                                           // 0x005140ec    55
                         push              esi                                           // 0x005140ed    56
                         push              ebx                                           // 0x005140ee    53
                         push              edi                                           // 0x005140ef    57
                         push              eax                                           // 0x005140f0    50
                         call              _jmp_addr_0x0053f3e0                          // 0x005140f1    e8eab20200
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x005140f6    8b0d5c19d000
                         add               esp, 0x14                                     // 0x005140fc    83c414
                         {disp8} jmp       _jmp_addr_0x00514176                          // 0x005140ff    eb75
_jmp_addr_0x00514101:    cmp               dword ptr [esp + 0x14], 0x01                  // 0x00514101    837c241401
                         {disp8} jne       _jmp_addr_0x00514172                          // 0x00514106    756a
                         test              ebx, ebx                                      // 0x00514108    85db
                         {disp8} je        _jmp_addr_0x00514172                          // 0x0051410a    7466
                         {disp8} mov       esi, dword ptr [ebx + 0x18]                   // 0x0051410c    8b7318
                         cmp               esi, 0x000008fc                               // 0x0051410f    81fefc080000
                         {disp8} jl        _jmp_addr_0x00514172                          // 0x00514115    7c5b
                         cmp               esi, 0x00000906                               // 0x00514117    81fe06090000
                         {disp8} jge       _jmp_addr_0x00514172                          // 0x0051411d    7d53
                         cmp               esi, 0x000008fd                               // 0x0051411f    81fefd080000
                         {disp8} je        _jmp_addr_0x00514172                          // 0x00514125    744b
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000dd0 // 0x00514127    813dac7cd100d00d0000
                         {disp8} ja        _jmp_addr_0x0051413a                          // 0x00514131    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x00514133    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x00514146                          // 0x00514138    eb0c
_jmp_addr_0x0051413a:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0051413a    8b0da87cd100
                         {disp32} lea      eax, dword ptr [ecx + 0x0000a5c0]             // 0x00514140    8d81c0a50000
_jmp_addr_0x00514146:    {disp8} mov       edx, dword ptr [eax + 0x08]                   // 0x00514146    8b5008
                         push              0x0                                           // 0x00514149    6a00
                         push              0x0                                           // 0x0051414b    6a00
                         push              edx                                           // 0x0051414d    52
                         mov.s             ecx, edi                                      // 0x0051414e    8bcf
                         call              @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x00514150    e83bd0efff
                         {disp32} mov      eax, dword ptr [_game]                        // 0x00514155    a15c19d000
                         {disp32} mov      eax, dword ptr [eax + 0x00250304]             // 0x0051415a    8b8004032500
                         {disp8} mov       ecx, dword ptr [eax + 0x54]                   // 0x00514160    8b4854
                         {disp8} mov       dword ptr [eax + 0x5c], ecx                   // 0x00514163    89485c
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00514166    8b0d5c19d000
                         {disp32} mov      dword ptr [data_bytes + 0x3002b8], esi        // 0x0051416c    8935b862cc00
_jmp_addr_0x00514172:    {disp8} mov       esi, dword ptr [esp + 0x20]                   // 0x00514172    8b742420
_jmp_addr_0x00514176:    {disp8} mov       edx, dword ptr [esp + 0x14]                   // 0x00514176    8b542414
                         {disp8} lea       eax, dword ptr [edx + -0x01]                  // 0x0051417a    8d42ff
                         cmp               eax, 0x06                                     // 0x0051417d    83f806
                         {disp32} ja       _jmp_addr_0x005145ef                          // 0x00514180    0f8769040000
                         jmp               dword ptr [eax*4 + 0x5145f8]                  // 0x00514186    ff2485f8455100
                         cmp               esi, 0x01                                     // 0x0051418d    83fe01
                         {disp32} jne      _jmp_addr_0x005145ef                          // 0x00514190    0f8559040000
                         test              ebp, ebp                                      // 0x00514196    85ed
                         {disp32} jne      _jmp_addr_0x005145ef                          // 0x00514198    0f8551040000
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250304]             // 0x0051419e    8b8904032500
                         {disp8} mov       eax, dword ptr [ecx + 0x5c]                   // 0x005141a4    8b415c
                         cmp               eax, dword ptr [ecx + 0x54]                   // 0x005141a7    3b4154
                         {disp8} je        _jmp_addr_0x005141fc                          // 0x005141aa    7450
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000dd0 // 0x005141ac    813dac7cd100d00d0000
                         {disp8} ja        _jmp_addr_0x005141bf                          // 0x005141b6    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x005141b8    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x005141cb                          // 0x005141bd    eb0c
_jmp_addr_0x005141bf:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005141bf    8b0da87cd100
                         {disp32} lea      eax, dword ptr [ecx + 0x0000a5c0]             // 0x005141c5    8d81c0a50000
_jmp_addr_0x005141cb:    {disp8} mov       edx, dword ptr [eax + 0x08]                   // 0x005141cb    8b5008
                         push              0x0                                           // 0x005141ce    6a00
                         push              0x0                                           // 0x005141d0    6a00
                         push              edx                                           // 0x005141d2    52
                         mov.s             ecx, edi                                      // 0x005141d3    8bcf
                         call              @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x005141d5    e8b6cfefff
                         {disp32} mov      eax, dword ptr [_game]                        // 0x005141da    a15c19d000
                         {disp32} mov      eax, dword ptr [eax + 0x00250304]             // 0x005141df    8b8004032500
                         {disp8} mov       ecx, dword ptr [eax + 0x54]                   // 0x005141e5    8b4854
                         pop               edi                                           // 0x005141e8    5f
                         pop               esi                                           // 0x005141e9    5e
                         pop               ebp                                           // 0x005141ea    5d
                         {disp8} mov       dword ptr [eax + 0x5c], ecx                   // 0x005141eb    89485c
                         {disp32} mov      dword ptr [data_bytes + 0x3002b8], 0x00000000 // 0x005141ee    c705b862cc0000000000
                         pop               ebx                                           // 0x005141f8    5b
                         ret               0x0014                                        // 0x005141f9    c21400
_jmp_addr_0x005141fc:    call              _jmp_addr_0x00513640                          // 0x005141fc    e83ff4ffff
                         pop               edi                                           // 0x00514201    5f
                         pop               esi                                           // 0x00514202    5e
                         pop               ebp                                           // 0x00514203    5d
                         pop               ebx                                           // 0x00514204    5b
                         ret               0x0014                                        // 0x00514205    c21400
                         {disp32} mov      eax, dword ptr [data_bytes + 0x3002b8]        // 0x00514208    a1b862cc00
                         test              eax, eax                                      // 0x0051420d    85c0
                         {disp8} je        _jmp_addr_0x00514229                          // 0x0051420f    7418
                         push              ebp                                           // 0x00514211    55
                         push              esi                                           // 0x00514212    56
                         push              eax                                           // 0x00514213    50
                         mov.s             ecx, edi                                      // 0x00514214    8bcf
                         call              @FindControl__8SetupBoxFi@12                  // 0x00514216    e8453fefff
                         push              eax                                           // 0x0051421b    50
                         push              edi                                           // 0x0051421c    57
                         push              0x1                                           // 0x0051421d    6a01
                         call              _jmp_addr_0x0053f3e0                          // 0x0051421f    e8bcb10200
                         add               esp, 0x14                                     // 0x00514224    83c414
                         {disp8} jmp       _jmp_addr_0x0051422e                          // 0x00514227    eb05
_jmp_addr_0x00514229:    call              _jmp_addr_0x00513640                          // 0x00514229    e812f4ffff
_jmp_addr_0x0051422e:    cmp               ebp, 0x01                                     // 0x0051422e    83fd01
                         {disp32} jne      _jmp_addr_0x005145ef                          // 0x00514231    0f85b8030000
                         cmp               esi, 0x00002712                               // 0x00514237    81fe12270000
                         {disp32} jne      _jmp_addr_0x005145ef                          // 0x0051423d    0f85ac030000
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00514243    8b0d5c19d000
                         test              ecx, ecx                                      // 0x00514249    85c9
                         {disp32} je       _jmp_addr_0x005145ef                          // 0x0051424b    0f849e030000
                         call              _jmp_addr_0x005553f0                          // 0x00514251    e89a110400
                         pop               edi                                           // 0x00514256    5f
                         pop               esi                                           // 0x00514257    5e
                         pop               ebp                                           // 0x00514258    5d
                         pop               ebx                                           // 0x00514259    5b
                         ret               0x0014                                        // 0x0051425a    c21400
                         {disp32} mov      edi, dword ptr [ecx + 0x00205a28]             // 0x0051425d    8bb9285a2000
                         {disp32} mov      edx, dword ptr [ecx + 0x00250304]             // 0x00514263    8b9104032500
                         {disp8} mov       eax, dword ptr [edx + 0x60]                   // 0x00514269    8b4260
                         {disp8} mov       eax, dword ptr [eax + 0x24]                   // 0x0051426c    8b4024
                         mov               edx, dword ptr [eax]                          // 0x0051426f    8b10
                         cmp               edi, 0x01                                     // 0x00514271    83ff01
                         sete              cl                                            // 0x00514274    0f94c1
                         push              ecx                                           // 0x00514277    51
                         mov.s             ecx, eax                                      // 0x00514278    8bc8
                         call              dword ptr [edx + 8]                           // 0x0051427a    ff5208
                         {disp32} mov      ecx, dword ptr [_global]                      // 0x0051427d    8b0d203bcd00
                         test              ecx, ecx                                      // 0x00514283    85c9
                         {disp32} mov      dword ptr [data_bytes + 0x3002b8], 0x00000000 // 0x00514285    c705b862cc0000000000
                         {disp8} je        _jmp_addr_0x005142a5                          // 0x0051428f    7414
                         call              _jmp_addr_0x00426d30                          // 0x00514291    e89a2af1ff
                         test              eax, eax                                      // 0x00514296    85c0
                         {disp8} je        _jmp_addr_0x005142a5                          // 0x00514298    740b
                         {disp32} mov      ecx, dword ptr [_global]                      // 0x0051429a    8b0d203bcd00
                         call              _jmp_addr_0x00428250                          // 0x005142a0    e8ab3ff1ff
_jmp_addr_0x005142a5:    {disp32} mov      ecx, dword ptr [_game]                        // 0x005142a5    8b0d5c19d000
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x005142ab    e8a0150400
                         mov               edx, dword ptr [eax]                          // 0x005142b0    8b10
                         mov.s             ecx, eax                                      // 0x005142b2    8bc8
                         call              dword ptr [edx + 0x40c]                       // 0x005142b4    ff920c040000
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x005142ba    8b0d5c19d000
                         {disp32} mov      edx, dword ptr [ecx + 0x00250304]             // 0x005142c0    8b9104032500
                         {disp8} mov       dword ptr [edx + 0x08], eax                   // 0x005142c6    894208
                         {disp32} mov      eax, dword ptr [_game]                        // 0x005142c9    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250304]             // 0x005142ce    8b8804032500
                         mov               edx, dword ptr [ecx]                          // 0x005142d4    8b11
                         call              dword ptr [edx + 0x20]                        // 0x005142d6    ff5220
                         pop               edi                                           // 0x005142d9    5f
                         pop               esi                                           // 0x005142da    5e
                         pop               ebp                                           // 0x005142db    5d
                         pop               ebx                                           // 0x005142dc    5b
                         ret               0x0014                                        // 0x005142dd    c21400
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250304]             // 0x005142e0    8b8904032500
                         call              _jmp_addr_0x005148b0                          // 0x005142e6    e8c5050000
                         {disp32} mov      ecx, dword ptr [_global]                      // 0x005142eb    8b0d203bcd00
                         test              ecx, ecx                                      // 0x005142f1    85c9
                         {disp32} je       _jmp_addr_0x005145ef                          // 0x005142f3    0f84f6020000
                         call              _jmp_addr_0x00426d30                          // 0x005142f9    e8322af1ff
                         test              eax, eax                                      // 0x005142fe    85c0
                         {disp32} je       _jmp_addr_0x005145ef                          // 0x00514300    0f84e9020000
                         {disp32} mov      ecx, dword ptr [_global]                      // 0x00514306    8b0d203bcd00
                         call              _jmp_addr_0x004282b0                          // 0x0051430c    e89f3ff1ff
                         pop               edi                                           // 0x00514311    5f
                         pop               esi                                           // 0x00514312    5e
                         pop               ebp                                           // 0x00514313    5d
                         pop               ebx                                           // 0x00514314    5b
                         ret               0x0014                                        // 0x00514315    c21400
                         {disp8} mov       eax, dword ptr [ebx + 0x18]                   // 0x00514318    8b4318
                         cmp               eax, 0x6b                                     // 0x0051431b    83f86b
                         {disp8} je        _jmp_addr_0x00514325                          // 0x0051431e    7405
                         cmp               eax, 0x6c                                     // 0x00514320    83f86c
                         {disp8} jne       _jmp_addr_0x00514348                          // 0x00514323    7523
_jmp_addr_0x00514325:    {disp32} mov      ecx, dword ptr [ecx + 0x00250304]             // 0x00514325    8b8904032500
                         call              _jmp_addr_0x00513ea0                          // 0x0051432b    e870fbffff
                         inc               eax                                           // 0x00514330    40
                         push              eax                                           // 0x00514331    50
                         {disp32} mov      eax, dword ptr [_game]                        // 0x00514332    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250304]             // 0x00514337    8b8804032500
                         call              _jmp_addr_0x00513e10                          // 0x0051433d    e8cefaffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00514342    8b0d5c19d000
_jmp_addr_0x00514348:    cmp               dword ptr [ebx + 0x18], 0x6d                  // 0x00514348    837b186d
                         {disp8} jne       _jmp_addr_0x00514372                          // 0x0051434c    7524
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250304]             // 0x0051434e    8b8904032500
                         call              _jmp_addr_0x00513ea0                          // 0x00514354    e847fbffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00514359    8b0d5c19d000
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250304]             // 0x0051435f    8b8904032500
                         dec               eax                                           // 0x00514365    48
                         push              eax                                           // 0x00514366    50
                         call              _jmp_addr_0x00513e10                          // 0x00514367    e8a4faffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0051436c    8b0d5c19d000
_jmp_addr_0x00514372:    {disp8} mov       eax, dword ptr [ebx + 0x18]                   // 0x00514372    8b4318
                         cmp               eax, 0x6e                                     // 0x00514375    83f86e
                         {disp8} je        _jmp_addr_0x0051437f                          // 0x00514378    7405
                         cmp               eax, 0x6f                                     // 0x0051437a    83f86f
                         {disp8} jne       _jmp_addr_0x005143a3                          // 0x0051437d    7524
_jmp_addr_0x0051437f:    {disp32} mov      ecx, dword ptr [ecx + 0x00250304]             // 0x0051437f    8b8904032500
                         call              _jmp_addr_0x00514010                          // 0x00514385    e886fcffff
                         {disp32} mov      edx, dword ptr [_game]                        // 0x0051438a    8b155c19d000
                         {disp32} mov      ecx, dword ptr [edx + 0x00250304]             // 0x00514390    8b8a04032500
                         inc               eax                                           // 0x00514396    40
                         push              eax                                           // 0x00514397    50
                         call              _jmp_addr_0x00513f90                          // 0x00514398    e8f3fbffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0051439d    8b0d5c19d000
_jmp_addr_0x005143a3:    cmp               dword ptr [ebx + 0x18], 0x70                  // 0x005143a3    837b1870
                         {disp8} jne       _jmp_addr_0x005143cc                          // 0x005143a7    7523
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250304]             // 0x005143a9    8b8904032500
                         call              _jmp_addr_0x00514010                          // 0x005143af    e85cfcffff
                         dec               eax                                           // 0x005143b4    48
                         push              eax                                           // 0x005143b5    50
                         {disp32} mov      eax, dword ptr [_game]                        // 0x005143b6    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250304]             // 0x005143bb    8b8804032500
                         call              _jmp_addr_0x00513f90                          // 0x005143c1    e8cafbffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x005143c6    8b0d5c19d000
_jmp_addr_0x005143cc:    {disp8} mov       eax, dword ptr [ebx + 0x18]                   // 0x005143cc    8b4318
                         cmp               eax, 0x66                                     // 0x005143cf    83f866
                         {disp8} je        _jmp_addr_0x005143d9                          // 0x005143d2    7405
                         cmp               eax, 0x67                                     // 0x005143d4    83f867
                         {disp8} jne       _jmp_addr_0x005143fd                          // 0x005143d7    7524
_jmp_addr_0x005143d9:    {disp32} mov      ecx, dword ptr [ecx + 0x00250304]             // 0x005143d9    8b8904032500
                         call              _jmp_addr_0x00513f80                          // 0x005143df    e89cfbffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x005143e4    8b0d5c19d000
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250304]             // 0x005143ea    8b8904032500
                         inc               eax                                           // 0x005143f0    40
                         push              eax                                           // 0x005143f1    50
                         call              _jmp_addr_0x00513eb0                          // 0x005143f2    e8b9faffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x005143f7    8b0d5c19d000
_jmp_addr_0x005143fd:    cmp               dword ptr [ebx + 0x18], 0x72                  // 0x005143fd    837b1872
                         {disp8} jne       _jmp_addr_0x00514427                          // 0x00514401    7524
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250304]             // 0x00514403    8b8904032500
                         call              _jmp_addr_0x005140b0                          // 0x00514409    e8a2fcffff
                         {disp32} mov      edx, dword ptr [_game]                        // 0x0051440e    8b155c19d000
                         {disp32} mov      ecx, dword ptr [edx + 0x00250304]             // 0x00514414    8b8a04032500
                         dec               eax                                           // 0x0051441a    48
                         push              eax                                           // 0x0051441b    50
                         call              _jmp_addr_0x00514020                          // 0x0051441c    e8fffbffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00514421    8b0d5c19d000
_jmp_addr_0x00514427:    {disp8} mov       eax, dword ptr [ebx + 0x18]                   // 0x00514427    8b4318
                         cmp               eax, 0x71                                     // 0x0051442a    83f871
                         {disp8} je        _jmp_addr_0x00514434                          // 0x0051442d    7405
                         cmp               eax, 0x73                                     // 0x0051442f    83f873
                         {disp8} jne       _jmp_addr_0x00514457                          // 0x00514432    7523
_jmp_addr_0x00514434:    {disp32} mov      ecx, dword ptr [ecx + 0x00250304]             // 0x00514434    8b8904032500
                         call              _jmp_addr_0x005140b0                          // 0x0051443a    e871fcffff
                         inc               eax                                           // 0x0051443f    40
                         push              eax                                           // 0x00514440    50
                         {disp32} mov      eax, dword ptr [_game]                        // 0x00514441    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250304]             // 0x00514446    8b8804032500
                         call              _jmp_addr_0x00514020                          // 0x0051444c    e8cffbffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00514451    8b0d5c19d000
_jmp_addr_0x00514457:    cmp               dword ptr [ebx + 0x18], 0x68                  // 0x00514457    837b1868
                         {disp8} jne       _jmp_addr_0x00514481                          // 0x0051445b    7524
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250304]             // 0x0051445d    8b8904032500
                         call              _jmp_addr_0x00513f80                          // 0x00514463    e818fbffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00514468    8b0d5c19d000
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250304]             // 0x0051446e    8b8904032500
                         dec               eax                                           // 0x00514474    48
                         push              eax                                           // 0x00514475    50
                         call              _jmp_addr_0x00513eb0                          // 0x00514476    e835faffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0051447b    8b0d5c19d000
_jmp_addr_0x00514481:    cmp               dword ptr [ebx + 0x18], 0x7b                  // 0x00514481    837b187b
                         {disp8} jne       _jmp_addr_0x005144d1                          // 0x00514485    754a
                         call              ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x00514487    e8f4ea0300
                         test              eax, eax                                      // 0x0051448c    85c0
                         {disp8} je        _jmp_addr_0x0051449d                          // 0x0051448e    740d
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00514490    8b0d5c19d000
                         call              _jmp_addr_0x005558d0                          // 0x00514496    e835140400
                         {disp8} jmp       _jmp_addr_0x005144cb                          // 0x0051449b    eb2e
_jmp_addr_0x0051449d:    cmp               dword ptr [data_bytes + 0x351cac], 0x00000dc7 // 0x0051449d    813dac7cd100c70d0000
                         {disp8} ja        _jmp_addr_0x005144b0                          // 0x005144a7    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x005144a9    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x005144bc                          // 0x005144ae    eb0c
_jmp_addr_0x005144b0:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x005144b0    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x0000a554]             // 0x005144b6    8d8254a50000
_jmp_addr_0x005144bc:    {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x005144bc    8b4008
                         push              0x1                                           // 0x005144bf    6a01
                         push              0x3                                           // 0x005144c1    6a03
                         push              eax                                           // 0x005144c3    50
                         mov.s             ecx, edi                                      // 0x005144c4    8bcf
                         call              @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x005144c6    e8c5ccefff
_jmp_addr_0x005144cb:    {disp32} mov      ecx, dword ptr [_game]                        // 0x005144cb    8b0d5c19d000
_jmp_addr_0x005144d1:    cmp               dword ptr [ebx + 0x18], 0x7a                  // 0x005144d1    837b187a
                         {disp8} jne       _jmp_addr_0x00514533                          // 0x005144d5    755c
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250304]             // 0x005144d7    8b8904032500
                         {disp8} mov       edx, dword ptr [ecx + 0x5c]                   // 0x005144dd    8b515c
                         cmp               edx, dword ptr [ecx + 0x54]                   // 0x005144e0    3b5154
                         {disp8} je        _jmp_addr_0x00514528                          // 0x005144e3    7443
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000dd0 // 0x005144e5    813dac7cd100d00d0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x005144ef    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x005144fb                          // 0x005144f4    7605
                         add               eax, 0x0000a5c0                               // 0x005144f6    05c0a50000
_jmp_addr_0x005144fb:    {disp8} mov       ecx, dword ptr [eax + 0x08]                   // 0x005144fb    8b4808
                         push              0x0                                           // 0x005144fe    6a00
                         push              0x0                                           // 0x00514500    6a00
                         push              ecx                                           // 0x00514502    51
                         mov.s             ecx, edi                                      // 0x00514503    8bcf
                         call              @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x00514505    e886ccefff
                         {disp32} mov      edx, dword ptr [_game]                        // 0x0051450a    8b155c19d000
                         {disp32} mov      eax, dword ptr [edx + 0x00250304]             // 0x00514510    8b8204032500
                         {disp8} mov       ecx, dword ptr [eax + 0x54]                   // 0x00514516    8b4854
                         {disp8} mov       dword ptr [eax + 0x5c], ecx                   // 0x00514519    89485c
                         {disp32} mov      dword ptr [data_bytes + 0x3002b8], 0x00000000 // 0x0051451c    c705b862cc0000000000
                         {disp8} jmp       _jmp_addr_0x0051452d                          // 0x00514526    eb05
_jmp_addr_0x00514528:    call              _jmp_addr_0x00513640                          // 0x00514528    e813f1ffff
_jmp_addr_0x0051452d:    {disp32} mov      ecx, dword ptr [_game]                        // 0x0051452d    8b0d5c19d000
_jmp_addr_0x00514533:    cmp               dword ptr [ebx + 0x18], 0x79                  // 0x00514533    837b1879
                         {disp8} jne       _jmp_addr_0x0051454a                          // 0x00514537    7511
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250308]             // 0x00514539    8b8908032500
                         mov               edx, dword ptr [ecx]                          // 0x0051453f    8b11
                         call              dword ptr [edx + 0xc]                         // 0x00514541    ff520c
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00514544    8b0d5c19d000
_jmp_addr_0x0051454a:    cmp               dword ptr [ebx + 0x18], 0x75                  // 0x0051454a    837b1875
                         {disp8} jne       _jmp_addr_0x00514574                          // 0x0051454e    7524
                         {disp8} lea       esi, dword ptr [ecx + 0x14]                   // 0x00514550    8d7114
                         push              0x75                                          // 0x00514553    6a75
                         mov.s             ecx, edi                                      // 0x00514555    8bcf
                         call              @FindControl__8SetupBoxFi@12                  // 0x00514557    e8043cefff
                         {disp32} mov      eax, dword ptr [eax + 0x00000248]             // 0x0051455c    8b8048020000
                         mov               ecx, dword ptr [esi]                          // 0x00514562    8b0e
                         and               eax, 0x01                                     // 0x00514564    83e001
                         shl               eax, 0x10                                     // 0x00514567    c1e010
                         and               ecx, 0xfffeffff                               // 0x0051456a    81e1fffffeff
                         or.s              eax, ecx                                      // 0x00514570    0bc1
                         mov               dword ptr [esi], eax                          // 0x00514572    8906
_jmp_addr_0x00514574:    cmp               dword ptr [ebx + 0x18], 0x76                  // 0x00514574    837b1876
                         {disp8} jne       _jmp_addr_0x005145ef                          // 0x00514578    7575
                         push              0x76                                          // 0x0051457a    6a76
                         mov.s             ecx, edi                                      // 0x0051457c    8bcf
                         call              @FindControl__8SetupBoxFi@12                  // 0x0051457e    e8dd3befff
                         {disp32} mov      edx, dword ptr [eax + 0x00000248]             // 0x00514583    8b9048020000
                         push              0x00d4bd38 /* _PlayerProfile_00d4bd38 */      // 0x00514589    6838bdd400
                         {disp32} mov      dword ptr [data_bytes + 0x386550], edx        // 0x0051458e    891550c5d400
                         call              _jmp_addr_0x0066bcd0                          // 0x00514594    e837771500
                         add               esp, 0x04                                     // 0x00514599    83c404
                         pop               edi                                           // 0x0051459c    5f
                         pop               esi                                           // 0x0051459d    5e
                         pop               ebp                                           // 0x0051459e    5d
                         pop               ebx                                           // 0x0051459f    5b
                         ret               0x0014                                        // 0x005145a0    c21400
                         {disp8} mov       eax, dword ptr [ebx + 0x18]                   // 0x005145a3    8b4318
                         sub               eax, 0x64                                     // 0x005145a6    83e864
                         {disp8} je        _jmp_addr_0x005145d2                          // 0x005145a9    7427
                         dec               eax                                           // 0x005145ab    48
                         {disp8} jne       _jmp_addr_0x005145ef                          // 0x005145ac    7541
                         {disp32} fld      dword ptr [ebx + 0x0000023c]                  // 0x005145ae    d9833c020000
                         {disp32} fmul     dword ptr [rdata_bytes + 0x1ba00]             // 0x005145b4    d80d004a8c00
                         call              _jmp_addr_0x007a1400                          // 0x005145ba    e841ce2800
                         {disp32} mov      ecx, dword ptr [_global]                      // 0x005145bf    8b0d203bcd00
                         push              eax                                           // 0x005145c5    50
                         call              _jmp_addr_0x00428660                          // 0x005145c6    e89540f1ff
                         pop               edi                                           // 0x005145cb    5f
                         pop               esi                                           // 0x005145cc    5e
                         pop               ebp                                           // 0x005145cd    5d
                         pop               ebx                                           // 0x005145ce    5b
                         ret               0x0014                                        // 0x005145cf    c21400
_jmp_addr_0x005145d2:    {disp32} fld      dword ptr [ebx + 0x0000023c]                  // 0x005145d2    d9833c020000
                         {disp32} fmul     dword ptr [rdata_bytes + 0x1ba00]             // 0x005145d8    d80d004a8c00
                         call              _jmp_addr_0x007a1400                          // 0x005145de    e81dce2800
                         {disp32} mov      ecx, dword ptr [_global]                      // 0x005145e3    8b0d203bcd00
                         push              eax                                           // 0x005145e9    50
                         call              _jmp_addr_0x00428600                          // 0x005145ea    e81140f1ff
_jmp_addr_0x005145ef:    pop               edi                                           // 0x005145ef    5f
                         pop               esi                                           // 0x005145f0    5e
                         pop               ebp                                           // 0x005145f1    5d
                         pop               ebx                                           // 0x005145f2    5b
                         ret               0x0014                                        // 0x005145f3    c21400

// Snippet: db, [0x005145f6, 0x005145f8)
.byte 0x8b, 0xff                  // 0x005145f6

// Snippet: jmptbl, [0x005145f8, 0x00514614)
.byte 0x18, 0x43, 0x51, 0x00      // 0x005145f8
.byte 0x8d, 0x41, 0x51, 0x00      // 0x005145fc
.byte 0x08, 0x42, 0x51, 0x00      // 0x00514600
.byte 0xa3, 0x45, 0x51, 0x00      // 0x00514604
.byte 0xef, 0x45, 0x51, 0x00      // 0x00514608
.byte 0x5d, 0x42, 0x51, 0x00      // 0x0051460c
.byte 0xe0, 0x42, 0x51, 0x00      // 0x00514610

// Snippet: db, [0x00514614, 0x00514620)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00514614
.byte 0x90, 0x90, 0x90, 0x90      // 0x00514618
.byte 0x90, 0x90, 0x90, 0x90      // 0x0051461c

