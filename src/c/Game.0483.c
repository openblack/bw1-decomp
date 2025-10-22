#include "Game.h"

void __stdcall KeyHandler__5GGameFUs6LH_KEYUsUsPv(struct GGame* this, unsigned short param_1, enum LH_KEY param_2, unsigned short param_3, unsigned short param_4, void* param_5)
{
    asm("{disp8} mov        ax, word ptr [esp + 0x04]");                      // 0x0054ff80    668b442404
    asm("cmp                ax, 0x0100");                                     // 0x0054ff85    663d0001
    asm("push               esi");                                            // 0x0054ff89    56
    asm("{disp8} je         _jmp_addr_0x0054ff92");                           // 0x0054ff8a    7406
    asm("cmp                ax, 0x0104");                                     // 0x0054ff8c    663d0401
    asm("{disp8} jne        _jmp_addr_0x0054ffd5");                           // 0x0054ff90    7543
    asm("_jmp_addr_0x0054ff92:");
    asm("{disp8} mov        esi, dword ptr [esp + 0x0c]");                    // 0x0054ff92    8b74240c
    asm("test               esi, esi");                                       // 0x0054ff96    85f6
    asm("{disp8} je         _jmp_addr_0x0054ffd5");                           // 0x0054ff98    743b
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x33b9c5]");           // 0x0054ff9a    a0c519d000
    asm("test               al, al");                                         // 0x0054ff9f    84c0
    asm("{disp8} je         _jmp_addr_0x0054ffab");                           // 0x0054ffa1    7408
    asm("{disp32} mov       dword ptr [data_bytes + 0x33b9c8], esi");         // 0x0054ffa3    8935c819d000
    asm("pop                esi");                                            // 0x0054ffa9    5e
    asm("ret");                                                               // 0x0054ffaa    c3
    asm("_jmp_addr_0x0054ffab:");
    asm("{disp32} mov       ecx, dword ptr [_game]");                         // 0x0054ffab    8b0d5c19d000
    asm("test               ecx, ecx");                                       // 0x0054ffb1    85c9
    asm("{disp8} je         _jmp_addr_0x0054ffd5");                           // 0x0054ffb3    7420
    asm("mov                eax, dword ptr [ecx]");                           // 0x0054ffb5    8b01
    asm("call               dword ptr [eax + 0x2c]");                         // 0x0054ffb7    ff502c
    asm("test               eax, eax");                                       // 0x0054ffba    85c0
    asm("{disp8} je         _jmp_addr_0x0054ffd5");                           // 0x0054ffbc    7417
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                    // 0x0054ffbe    8b4c2410
    asm("{disp32} mov       edx, dword ptr [_game]");                         // 0x0054ffc2    8b155c19d000
    asm("push               ecx");                                            // 0x0054ffc8    51
    asm("push               esi");                                            // 0x0054ffc9    56
    asm("{disp32} lea       ecx, dword ptr [edx + 0x002502a8]");              // 0x0054ffca    8d8aa8022500
    asm("call               _jmp_addr_0x005e1bf0");                           // 0x0054ffd0    e81b1c0900
    asm("_jmp_addr_0x0054ffd5:");
    asm("pop                esi");                                            // 0x0054ffd5    5e
    asm("ret");                                                               // 0x0054ffd6    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __stdcall MouseHandler__5GGameFPv19LH_MOUSE_EVENT_TYPEUlUl(struct GGame* this, void* param_1, enum LH_MOUSE_EVENT_TYPE param_2, unsigned long param_3, unsigned long param_4)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                    // 0x0054ffe0    8b442408
    asm("cmp                eax, 0x04");                                      // 0x0054ffe4    83f804
    asm("{disp8} je         _jmp_addr_0x00550007");                           // 0x0054ffe7    741e
    asm("test               eax, 0x000003bd");                                // 0x0054ffe9    a9bd030000
    asm("{disp32} jne       _jmp_addr_0x0055007b");                           // 0x0054ffee    0f8587000000
    asm("test               al, 0x02");                                       // 0x0054fff4    a802
    asm("{disp8} je         _jmp_addr_0x00550001");                           // 0x0054fff6    7409
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x4bf270]");         // 0x0054fff8    a17052e800
    asm("test               eax, eax");                                       // 0x0054fffd    85c0
    asm("{disp8} jne        _jmp_addr_0x0055007b");                           // 0x0054ffff    757a
    asm("_jmp_addr_0x00550001:");
    asm("mov                eax, 0x00000001");                                // 0x00550001    b801000000
    asm("ret");                                                               // 0x00550006    c3
    asm("_jmp_addr_0x00550007:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                    // 0x00550007    8b442410
    asm("test               eax, eax");                                       // 0x0055000b    85c0
    asm("{disp8} jle        _jmp_addr_0x00550001");                           // 0x0055000d    7ef2
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x33b9cc]");         // 0x0055000f    8b15cc19d000
    asm("{disp32} mov       ecx, dword ptr [_game]");                         // 0x00550015    8b0d5c19d000
    asm("add.s              edx, eax");                                       // 0x0055001b    03d0
    asm("{disp32} mov       dword ptr [data_bytes + 0x33b9cc], edx");         // 0x0055001d    8915cc19d000
    asm("call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ");       // 0x00550023    e828580000
    asm("test               eax, eax");                                       // 0x00550028    85c0
    asm("{disp8} je         _jmp_addr_0x0055007b");                           // 0x0055002a    744f
    asm("{disp32} mov       ecx, dword ptr [_game]");                         // 0x0055002c    8b0d5c19d000
    asm("push               0x0");                                            // 0x00550032    6a00
    asm("call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ");       // 0x00550034    e817580000
    asm("mov.s              ecx, eax");                                       // 0x00550039    8bc8
    asm("call               _jmp_addr_0x005db710");                           // 0x0055003b    e8d0b60800
    asm("test               eax, eax");                                       // 0x00550040    85c0
    asm("{disp8} jne        _jmp_addr_0x0055007b");                           // 0x00550042    7537
    asm("cmp                dword ptr [data_bytes + 0x33b9cc], 0x1c");        // 0x00550044    833dcc19d0001c
    asm("{disp8} jle        _jmp_addr_0x0055007b");                           // 0x0055004b    7e2e
    asm("{disp32} mov       ecx, dword ptr [_game]");                         // 0x0055004d    8b0d5c19d000
    asm("test               ecx, ecx");                                       // 0x00550053    85c9
    asm("{disp8} je         _jmp_addr_0x0055007b");                           // 0x00550055    7424
    asm("mov                eax, dword ptr [ecx]");                           // 0x00550057    8b01
    asm("call               dword ptr [eax + 0x2c]");                         // 0x00550059    ff502c
    asm("test               eax, eax");                                       // 0x0055005c    85c0
    asm("{disp8} je         _jmp_addr_0x0055007b");                           // 0x0055005e    741b
    asm("{disp32} mov       ecx, dword ptr [_game]");                         // 0x00550060    8b0d5c19d000
    asm("add                ecx, 0x002502b8");                                // 0x00550066    81c1b8022500
    asm("{disp32} mov       dword ptr [data_bytes + 0x33b9cc], 0x00000000");  // 0x0055006c    c705cc19d00000000000
    asm("call               ?ProcessPosition@CMouse@@QAEXXZ");                           // 0x00550076    e895a00c00
    asm("_jmp_addr_0x0055007b:");
    asm("xor.s              eax, eax");                                       // 0x0055007b    33c0
    asm("ret");                                                               // 0x0055007d    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall UnfinishInitialisation__5GGameFv(struct GGame* this)
{
    asm("push               esi");                                            // 0x00550080    56
    asm("mov.s              esi, ecx");                                       // 0x00550081    8bf1
    asm("{disp32} mov       ecx, dword ptr [_global]");                       // 0x00550083    8b0d203bcd00
    asm("push               edi");                                            // 0x00550089    57
    asm("call               ?ReleaseAtmosSoundBanks@GAudio@@QAEXXZ");         // 0x0055008a    e8018fedff
    asm("call               ?Close@Windmill@@QAEXXZ");                        // 0x0055008f    e83c59ebff
    asm("xor.s              edi, edi");                                       // 0x00550094    33ff
    asm("mov.s              ecx, esi");                                       // 0x00550096    8bce
    asm("{disp32} mov       dword ptr [data_bytes + 0x4bf208], edi");         // 0x00550098    893d0852e800
    asm("{disp32} mov       dword ptr [data_bytes + 0x4bf354], edi");         // 0x0055009e    893d5453e800
    asm("{disp32} mov       dword ptr [data_bytes + 0x4bf36c], edi");         // 0x005500a4    893d6c53e800
    asm("{disp32} mov       dword ptr [data_bytes + 0x4bf370], edi");         // 0x005500aa    893d7053e800
    asm("call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ");       // 0x005500b0    e89b570000
    asm("test               eax, eax");                                       // 0x005500b5    85c0
    asm("{disp8} je         _jmp_addr_0x00550109");                           // 0x005500b7    7450
    asm("push               ebx");                                            // 0x005500b9    53
    asm("mov.s              ecx, esi");                                       // 0x005500ba    8bce
    asm("call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ");       // 0x005500bc    e88f570000
    asm("mov.s              ebx, eax");                                       // 0x005500c1    8bd8
    asm("{disp32} mov       ecx, dword ptr [ebx + 0x00000438]");              // 0x005500c3    8b8b38040000
    asm("add                ebx, 0x00000430");                                // 0x005500c9    81c330040000
    asm("cmp.s              ecx, edi");                                       // 0x005500cf    3bcf
    asm("{disp8} je         _jmp_addr_0x00550105");                           // 0x005500d1    7432
    asm("{disp8} mov        eax, dword ptr [ecx + -0x04]");                   // 0x005500d3    8b41fc
    asm("push               ebp");                                            // 0x005500d6    55
    asm("{disp8} lea        ebp, dword ptr [ecx + -0x04]");                   // 0x005500d7    8d69fc
    asm("lea                edx, dword ptr [eax + eax * 0x2]");               // 0x005500da    8d1440
    asm("dec                eax");                                            // 0x005500dd    48
    asm("lea                edx, dword ptr [edx + edx * 0x4]");               // 0x005500de    8d1492
    asm("lea                ecx, dword ptr [ecx + edx * 0x4]");               // 0x005500e1    8d0c91
    asm("{disp8} js         _jmp_addr_0x005500fb");                           // 0x005500e4    7815
    asm("{disp8} lea        esi, dword ptr [ecx + 0x0c]");                    // 0x005500e6    8d710c
    asm("{disp8} lea        edi, dword ptr [eax + 0x01]");                    // 0x005500e9    8d7801
    asm("_jmp_addr_0x005500ec:");
    asm("sub                esi, 0x3c");                                      // 0x005500ec    83ee3c
    asm("mov.s              ecx, esi");                                       // 0x005500ef    8bce
    asm("call               _jmp_addr_0x00436960");                           // 0x005500f1    e86a68eeff
    asm("dec                edi");                                            // 0x005500f6    4f
    asm("{disp8} jne        _jmp_addr_0x005500ec");                           // 0x005500f7    75f3
    asm("xor.s              edi, edi");                                       // 0x005500f9    33ff
    asm("_jmp_addr_0x005500fb:");
    asm("push               ebp");                                            // 0x005500fb    55
    asm("call               ??3@YAXPAX@Z");                                   // 0x005500fc    e897ed2500
    asm("add                esp, 0x04");                                      // 0x00550101    83c404
    asm("pop                ebp");                                            // 0x00550104    5d
    asm("_jmp_addr_0x00550105:");
    asm("{disp8} mov        dword ptr [ebx + 0x08], edi");                    // 0x00550105    897b08
    asm("pop                ebx");                                            // 0x00550108    5b
    asm("_jmp_addr_0x00550109:");
    asm("pop                edi");                                            // 0x00550109    5f
    asm("pop                esi");                                            // 0x0055010a    5e
    asm("ret");                                                               // 0x0055010b    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall FinishInitialisation__5GGameFv(struct GGame* this)
{
    asm("push               esi");                                            // 0x00550110    56
    asm("mov.s              esi, ecx");                                       // 0x00550111    8bf1
    asm("call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ");       // 0x00550113    e838570000
    asm("test               eax, eax");                                       // 0x00550118    85c0
    asm("{disp8} je         _jmp_addr_0x00550130");                           // 0x0055011a    7414
    asm("mov.s              ecx, esi");                                       // 0x0055011c    8bce
    asm("call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ");       // 0x0055011e    e82d570000
    asm("push               0x40");                                           // 0x00550123    6a40
    asm("{disp32} lea       ecx, dword ptr [eax + 0x00000430]");              // 0x00550125    8d8830040000
    asm("call               ?Init@GInterfaceMessageBuffer@@QAEXG@Z");         // 0x0055012b    e8509d0800
    asm("_jmp_addr_0x00550130:");
    asm("xor.s              eax, eax");                                       // 0x00550130    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x4bf36c], 0x0054ff80");  // 0x00550132    c7056c53e80080ff5400
    asm("{disp32} mov       dword ptr [data_bytes + 0x4bf370], eax");         // 0x0055013c    a37053e800
    asm("{disp32} mov       dword ptr [data_bytes + 0x4bf208], 0x0054ffe0");  // 0x00550141    c7050852e800e0ff5400
    asm("{disp32} mov       dword ptr [data_bytes + 0x4bf354], eax");         // 0x0055014b    a35453e800
    asm("call               ?Open@Windmill@@QAEXXZ");                         // 0x00550150    e82b58ebff
    asm("{disp32} mov       ecx, dword ptr [_global]");                       // 0x00550155    8b0d203bcd00
    asm("call               ?InitAtmos@GAudio@@QAEXXZ");                      // 0x0055015b    e8908dedff
    asm("pop                esi");                                            // 0x00550160    5e
    asm("ret");                                                               // 0x00550161    c3
    __builtin_unreachable();
}

void __fastcall CreateMeshPack__5GGameFv(struct GGame* this)
{
    asm("{disp32} jmp       ?CreatePack@LH3DMesh@@SAXXZ");                    // 0x00550170    e9eb7a2b00
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __cdecl LoadAllAnimations__Fv(void)
{
    asm("sub                esp, 0x000000a0");                                // 0x00550180    81eca0000000
    asm("push               ebp");                                            // 0x00550186    55
    asm("push               esi");                                            // 0x00550187    56
    asm("push               edi");                                            // 0x00550188    57
    asm("call               ?CreatePack@LH3DAnim@@SAXXZ");                    // 0x00550189    e8a2a82e00
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x517508]");         // 0x0055018e    a108d5ed00
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000510]");              // 0x00550193    8b8010050000
    asm("and                dword ptr [eax + 0x50], 0xfffffeff");             // 0x00550199    816050fffeffff
    asm("xor.s              ebp, ebp");                                       // 0x005501a0    33ed
    asm("xor.s              edx, edx");                                       // 0x005501a2    33d2
    asm("mov                eax, 0x00000004");                                // 0x005501a4    b804000000
    asm("_jmp_addr_0x005501a9:");
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x517508]");         // 0x005501a9    8b0d08d5ed00
    asm("cmp                edx, dword ptr [ecx]");                           // 0x005501af    3b11
    asm("{disp8} jge        _jmp_addr_0x005501bd");                           // 0x005501b1    7d0a
    asm("cmp                eax, 0x04");                                      // 0x005501b3    83f804
    asm("{disp8} jl         _jmp_addr_0x005501bd");                           // 0x005501b6    7c05
    asm("mov                ecx, dword ptr [eax + ecx * 0x1]");               // 0x005501b8    8b0c08
    asm("{disp8} jmp        _jmp_addr_0x005501c0");                           // 0x005501bb    eb03
    asm("_jmp_addr_0x005501bd:");
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x04]");                    // 0x005501bd    8b4904
    asm("_jmp_addr_0x005501c0:");
    asm("add                eax, 0x04");                                      // 0x005501c0    83c004
    asm("inc                edx");                                            // 0x005501c3    42
    asm("cmp                eax, 0x000006e8");                                // 0x005501c4    3de8060000
    asm("{disp8} mov        dword ptr [ecx + 0x44], ebp");                    // 0x005501c9    896944
    asm("{disp8} jl         _jmp_addr_0x005501a9");                           // 0x005501cc    7cdb
    asm("push               0x009d976c");                                     // 0x005501ce    686c979d00
    asm("push               0x00bec860");                                     // 0x005501d3    6860c8be00
    asm("call               _fopen");                                         // 0x005501d8    e8406c2700
    asm("mov.s              edi, eax");                                       // 0x005501dd    8bf8
    asm("add                esp, 0x08");                                      // 0x005501df    83c408
    asm("cmp.s              edi, ebp");                                       // 0x005501e2    3bfd
    asm("{disp8} mov        dword ptr [esp + 0x0c], edi");                    // 0x005501e4    897c240c
    asm("{disp32} je        _jmp_addr_0x00550381");                           // 0x005501e8    0f8493010000
    asm("push               ebx");                                            // 0x005501ee    53
    asm("{disp8} lea        ecx, dword ptr [esp + 0x20]");                    // 0x005501ef    8d4c2420
    asm("push               ecx");                                            // 0x005501f3    51
    asm("push               0x009cda78");                                     // 0x005501f4    6878da9c00
    asm("push               edi");                                            // 0x005501f9    57
    asm("call               _fscanf");                                        // 0x005501fa    e8ab7b2700
    asm("add                esp, 0x0c");                                      // 0x005501ff    83c40c
    asm("_jmp_addr_0x00550202:");
    asm("{disp8} lea        edx, dword ptr [esp + 0x30]");                    // 0x00550202    8d542430
    asm("push               edx");                                            // 0x00550206    52
    asm("push               0x009c8c40");                                     // 0x00550207    68408c9c00
    asm("push               edi");                                            // 0x0055020c    57
    asm("call               _fscanf");                                        // 0x0055020d    e8987b2700
    asm("add                esp, 0x0c");                                      // 0x00550212    83c40c
    asm("mov                esi, 0x00bec85c");                                // 0x00550215    be5cc8be00
    asm("{disp8} lea        eax, dword ptr [esp + 0x30]");                    // 0x0055021a    8d442430
    asm("_jmp_addr_0x0055021e:");
    asm("mov                dl, byte ptr [eax]");                             // 0x0055021e    8a10
    asm("mov                bl, byte ptr [esi]");                             // 0x00550220    8a1e
    asm("mov.s              cl, dl");                                         // 0x00550222    8aca
    asm("cmp.s              dl, bl");                                         // 0x00550224    3ad3
    asm("{disp8} jne        _jmp_addr_0x00550246");                           // 0x00550226    751e
    asm("test               cl, cl");                                         // 0x00550228    84c9
    asm("{disp8} je         _jmp_addr_0x00550242");                           // 0x0055022a    7416
    asm("{disp8} mov        dl, byte ptr [eax + 0x01]");                      // 0x0055022c    8a5001
    asm("{disp8} mov        bl, byte ptr [esi + 0x01]");                      // 0x0055022f    8a5e01
    asm("mov.s              cl, dl");                                         // 0x00550232    8aca
    asm("cmp.s              dl, bl");                                         // 0x00550234    3ad3
    asm("{disp8} jne        _jmp_addr_0x00550246");                           // 0x00550236    750e
    asm("add                eax, 0x02");                                      // 0x00550238    83c002
    asm("add                esi, 0x02");                                      // 0x0055023b    83c602
    asm("test               cl, cl");                                         // 0x0055023e    84c9
    asm("{disp8} jne        _jmp_addr_0x0055021e");                           // 0x00550240    75dc
    asm("_jmp_addr_0x00550242:");
    asm("xor.s              eax, eax");                                       // 0x00550242    33c0
    asm("{disp8} jmp        _jmp_addr_0x0055024b");                           // 0x00550244    eb05
    asm("_jmp_addr_0x00550246:");
    asm("sbb.s              eax, eax");                                       // 0x00550246    1bc0
    asm("sbb                eax, -0x01");                                     // 0x00550248    83d8ff
    asm("_jmp_addr_0x0055024b:");
    asm("cmp.s              eax, ebp");                                       // 0x0055024b    3bc5
    asm("{disp32} je        _jmp_addr_0x00550377");                           // 0x0055024d    0f8424010000
    asm("{disp8} mov        eax, dword ptr [esp + 0x20]");                    // 0x00550253    8b442420
    asm("xor.s              ebx, ebx");                                       // 0x00550257    33db
    asm("cmp.s              eax, ebp");                                       // 0x00550259    3bc5
    asm("{disp8} mov        dword ptr [esp + 0x14], ebp");                    // 0x0055025b    896c2414
    asm("{disp8} jne        _jmp_addr_0x00550267");                           // 0x0055025f    7506
    asm("{disp8} mov        dword ptr [esp + 0x18], ebp");                    // 0x00550261    896c2418
    asm("{disp8} jmp        _jmp_addr_0x0055027a");                           // 0x00550265    eb13
    asm("_jmp_addr_0x00550267:");
    asm("{disp8} lea        eax, dword ptr [esp + 0x18]");                    // 0x00550267    8d442418
    asm("push               eax");                                            // 0x0055026b    50
    asm("push               0x009cda78");                                     // 0x0055026c    6878da9c00
    asm("push               edi");                                            // 0x00550271    57
    asm("call               _fscanf");                                        // 0x00550272    e8337b2700
    asm("add                esp, 0x0c");                                      // 0x00550277    83c40c
    asm("_jmp_addr_0x0055027a:");
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x517508]");         // 0x0055027a    a108d5ed00
    asm("mov                ebp, 0x00000004");                                // 0x0055027f    bd04000000
    asm("_jmp_addr_0x00550284:");
    asm("test               ebx, ebx");                                       // 0x00550284    85db
    asm("{disp8} jne        _jmp_addr_0x005502f6");                           // 0x00550286    756e
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                    // 0x00550288    8b4c2414
    asm("cmp                ecx, dword ptr [eax]");                           // 0x0055028c    3b08
    asm("{disp8} jge        _jmp_addr_0x0055029a");                           // 0x0055028e    7d0a
    asm("cmp                ebp, 0x04");                                      // 0x00550290    83fd04
    asm("{disp8} jl         _jmp_addr_0x0055029a");                           // 0x00550293    7c05
    asm("mov                edi, dword ptr [eax + ebp * 0x1]");               // 0x00550295    8b3c28
    asm("{disp8} jmp        _jmp_addr_0x0055029d");                           // 0x00550298    eb03
    asm("_jmp_addr_0x0055029a:");
    asm("{disp8} mov        edi, dword ptr [eax + 0x04]");                    // 0x0055029a    8b7804
    asm("_jmp_addr_0x0055029d:");
    asm("mov.s              esi, edi");                                       // 0x0055029d    8bf7
    asm("{disp8} lea        eax, dword ptr [esp + 0x30]");                    // 0x0055029f    8d442430
    asm("_jmp_addr_0x005502a3:");
    asm("mov                dl, byte ptr [eax]");                             // 0x005502a3    8a10
    asm("mov.s              cl, dl");                                         // 0x005502a5    8aca
    asm("cmp                dl, byte ptr [esi]");                             // 0x005502a7    3a16
    asm("{disp8} jne        _jmp_addr_0x005502c7");                           // 0x005502a9    751c
    asm("test               cl, cl");                                         // 0x005502ab    84c9
    asm("{disp8} je         _jmp_addr_0x005502c3");                           // 0x005502ad    7414
    asm("{disp8} mov        dl, byte ptr [eax + 0x01]");                      // 0x005502af    8a5001
    asm("mov.s              cl, dl");                                         // 0x005502b2    8aca
    asm("cmp                dl, byte ptr [esi + 0x01]");                      // 0x005502b4    3a5601
    asm("{disp8} jne        _jmp_addr_0x005502c7");                           // 0x005502b7    750e
    asm("add                eax, 0x02");                                      // 0x005502b9    83c002
    asm("add                esi, 0x02");                                      // 0x005502bc    83c602
    asm("test               cl, cl");                                         // 0x005502bf    84c9
    asm("{disp8} jne        _jmp_addr_0x005502a3");                           // 0x005502c1    75e0
    asm("_jmp_addr_0x005502c3:");
    asm("xor.s              eax, eax");                                       // 0x005502c3    33c0
    asm("{disp8} jmp        _jmp_addr_0x005502cc");                           // 0x005502c5    eb05
    asm("_jmp_addr_0x005502c7:");
    asm("sbb.s              eax, eax");                                       // 0x005502c7    1bc0
    asm("sbb                eax, -0x01");                                     // 0x005502c9    83d8ff
    asm("_jmp_addr_0x005502cc:");
    asm("test               eax, eax");                                       // 0x005502cc    85c0
    asm("{disp8} jne        _jmp_addr_0x005502d9");                           // 0x005502ce    7509
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                    // 0x005502d0    8b442418
    asm("mov.s              ebx, edi");                                       // 0x005502d4    8bdf
    asm("{disp8} mov        dword ptr [edi + 0x44], eax");                    // 0x005502d6    894744
    asm("_jmp_addr_0x005502d9:");
    asm("{disp8} mov        esi, dword ptr [esp + 0x14]");                    // 0x005502d9    8b742414
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x517508]");         // 0x005502dd    a108d5ed00
    asm("{disp8} mov        edi, dword ptr [esp + 0x10]");                    // 0x005502e2    8b7c2410
    asm("inc                esi");                                            // 0x005502e6    46
    asm("add                ebp, 0x04");                                      // 0x005502e7    83c504
    asm("cmp                ebp, 0x000006e8");                                // 0x005502ea    81fde8060000
    asm("{disp8} mov        dword ptr [esp + 0x14], esi");                    // 0x005502f0    89742414
    asm("{disp8} jl         _jmp_addr_0x00550284");                           // 0x005502f4    7c8e
    asm("_jmp_addr_0x005502f6:");
    asm("{disp8} mov        dword ptr [esp + 0x1c], 0x00000001");             // 0x005502f6    c744241c01000000
    asm("_jmp_addr_0x005502fe:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                    // 0x005502fe    8d4c241c
    asm("push               ecx");                                            // 0x00550302    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x30]");                    // 0x00550303    8d542430
    asm("push               edx");                                            // 0x00550307    52
    asm("{disp8} lea        eax, dword ptr [esp + 0x2c]");                    // 0x00550308    8d44242c
    asm("push               eax");                                            // 0x0055030c    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x34]");                    // 0x0055030d    8d4c2434
    asm("push               ecx");                                            // 0x00550311    51
    asm("push               0x00bec850");                                     // 0x00550312    6850c8be00
    asm("push               edi");                                            // 0x00550317    57
    asm("call               _fscanf");                                        // 0x00550318    e88d7a2700
    asm("add                esp, 0x18");                                      // 0x0055031d    83c418
    asm("test               ebx, ebx");                                       // 0x00550320    85db
    asm("{disp8} je         _jmp_addr_0x00550368");                           // 0x00550322    7444
    asm("push               0x00001311");                                     // 0x00550324    6811130000
    asm("push               0x00bec32c");                                     // 0x00550329    682cc3be00
    asm("push               0x14");                                           // 0x0055032e    6a14
    asm("call               ___nw__FUl");                                     // 0x00550330    e85bb42800
    asm("add                esp, 0x0c");                                      // 0x00550335    83c40c
    asm("test               eax, eax");                                       // 0x00550338    85c0
    asm("{disp8} je         _jmp_addr_0x00550363");                           // 0x0055033a    7427
    asm("{disp8} mov        edi, dword ptr [esp + 0x28]");                    // 0x0055033c    8b7c2428
    asm("{disp8} mov        ecx, dword ptr [ebx + 0x48]");                    // 0x00550340    8b4b48
    asm("{disp8} mov        edx, dword ptr [esp + 0x2c]");                    // 0x00550343    8b54242c
    asm("{disp8} mov        esi, dword ptr [esp + 0x24]");                    // 0x00550347    8b742424
    asm("{disp8} mov        dword ptr [eax + 0x04], edi");                    // 0x0055034b    897804
    asm("{disp8} mov        edi, dword ptr [esp + 0x10]");                    // 0x0055034e    8b7c2410
    asm("mov                dword ptr [eax], 0x00000000");                    // 0x00550352    c70000000000
    asm("{disp8} mov        dword ptr [eax + 0x08], esi");                    // 0x00550358    897008
    asm("{disp8} mov        dword ptr [eax + 0x0c], edx");                    // 0x0055035b    89500c
    asm("{disp8} mov        dword ptr [eax + 0x10], ecx");                    // 0x0055035e    894810
    asm("{disp8} jmp        _jmp_addr_0x00550365");                           // 0x00550361    eb02
    asm("_jmp_addr_0x00550363:");
    asm("xor.s              eax, eax");                                       // 0x00550363    33c0
    asm("_jmp_addr_0x00550365:");
    asm("{disp8} mov        dword ptr [ebx + 0x48], eax");                    // 0x00550365    894348
    asm("_jmp_addr_0x00550368:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x1c]");                    // 0x00550368    8b44241c
    asm("test               eax, eax");                                       // 0x0055036c    85c0
    asm("{disp8} jne        _jmp_addr_0x005502fe");                           // 0x0055036e    758e
    asm("xor.s              ebp, ebp");                                       // 0x00550370    33ed
    asm("{disp32} jmp       _jmp_addr_0x00550202");                           // 0x00550372    e98bfeffff
    asm("_jmp_addr_0x00550377:");
    asm("push               edi");                                            // 0x00550377    57
    asm("call               _fclose");                                        // 0x00550378    e8b36a2700
    asm("add                esp, 0x04");                                      // 0x0055037d    83c404
    asm("pop                ebx");                                            // 0x00550380    5b
    asm("_jmp_addr_0x00550381:");
    asm("pop                edi");                                            // 0x00550381    5f
    asm("pop                esi");                                            // 0x00550382    5e
    asm("pop                ebp");                                            // 0x00550383    5d
    asm("add                esp, 0x000000a0");                                // 0x00550384    81c4a0000000
    asm("ret");                                                               // 0x0055038a    c3
    asm("call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9");                           // 0x0055038b    e8e914ebff
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall LoadFiles__5GGameFv(struct GGame* this)
{
    asm("push               esi");                                            // 0x00550390    56
    asm("push               0x00bec8c8");                                     // 0x00550391    68c8c8be00
    asm("mov.s              esi, ecx");                                       // 0x00550396    8bf1
    asm("call               ?RenderLoadingFrame@@YAXPAD@Z");                  // 0x00550398    e8c3bdffff
    asm("call               ?LoadAllAnimations@@YAXXZ");                      // 0x0055039d    e8defdffff
    asm("push               0x00bec8b8");                                     // 0x005503a2    68b8c8be00
    asm("call               ?RenderLoadingFrame@@YAXPAD@Z");                  // 0x005503a7    e8b4bdffff
    asm("add                esp, 0x08");                                      // 0x005503ac    83c408
    asm("call               ?CreateMeshPack@GGame@@QAEXXZ");                  // 0x005503af    e8bcfdffff
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00250064]");              // 0x005503b4    8b8e64002500
    asm("push               0x00bec8a4");                                     // 0x005503ba    68a4c8be00
    asm("call               ?Load@GestureSystemDataList@@QAE_NPAD@Z");        // 0x005503bf    e82c970200
    asm("test               eax, eax");                                       // 0x005503c4    85c0
    asm("{disp8} jne        _jmp_addr_0x005503ca");                           // 0x005503c6    7502
    asm("pop                esi");                                            // 0x005503c8    5e
    asm("ret");                                                               // 0x005503c9    c3
    asm("_jmp_addr_0x005503ca:");
    asm("push               0x00bec88c");                                     // 0x005503ca    688cc8be00
    asm("call               ?RenderLoadingFrame@@YAXPAD@Z");                  // 0x005503cf    e88cbdffff
    asm("add                esp, 0x04");                                      // 0x005503d4    83c404
    asm("mov.s              ecx, esi");                                       // 0x005503d7    8bce
    asm("call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ");       // 0x005503d9    e872540000
    asm("mov.s              ecx, eax");                                       // 0x005503de    8bc8
    asm("call               _jmp_addr_0x005ceba0");                           // 0x005503e0    e8bbe70700
    asm("cmp                eax, 0x01");                                      // 0x005503e5    83f801
    asm("{disp8} je         _jmp_addr_0x005503ee");                           // 0x005503e8    7404
    asm("xor.s              eax, eax");                                       // 0x005503ea    33c0
    asm("pop                esi");                                            // 0x005503ec    5e
    asm("ret");                                                               // 0x005503ed    c3
    asm("_jmp_addr_0x005503ee:");
    asm("push               0x00bec878");                                     // 0x005503ee    6878c8be00
    asm("call               ?RenderLoadingFrame@@YAXPAD@Z");                  // 0x005503f3    e868bdffff
    asm("add                esp, 0x04");                                      // 0x005503f8    83c404
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00205a30]");              // 0x005503fb    8d8e305a2000
    asm("call               _jmp_addr_0x0050f960");                           // 0x00550401    e85af5fbff
    asm("mov                eax, 0x00000001");                                // 0x00550406    b801000000
    asm("pop                esi");                                            // 0x0055040b    5e
    asm("ret");                                                               // 0x0055040c    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall SetupPlayers__5GGameFv(struct GGame* this)
{
    asm("sub                esp, 0x000000f0");                                // 0x00550410    81ecf0000000
    asm("{disp32} mov       eax, dword ptr [rdata_bytes + 0x36610]");         // 0x00550416    a110f68d00
    asm("{disp32} mov       edx, dword ptr [rdata_bytes + 0x36608]");         // 0x0055041b    8b1508f68d00
    asm("push               ebx");                                            // 0x00550421    53
    asm("push               esi");                                            // 0x00550422    56
    asm("push               eax");                                            // 0x00550423    50
    asm("mov.s              esi, ecx");                                       // 0x00550424    8bf1
    asm("{disp32} mov       ecx, dword ptr [rdata_bytes + 0x3660c]");         // 0x00550426    8b0d0cf68d00
    asm("push               ecx");                                            // 0x0055042c    51
    asm("push               edx");                                            // 0x0055042d    52
    asm("{disp32} lea       eax, dword ptr [esi + 0x0025000c]");              // 0x0055042e    8d860c002500
    asm("xor.s              ebx, ebx");                                       // 0x00550434    33db
    asm("push               eax");                                            // 0x00550436    50
    asm("{disp8} mov        dword ptr [esp + 0x18], ebx");                    // 0x00550437    895c2418
    asm("call               _jmp_addr_0x0053b4a0");                           // 0x0055043b    e860b0feff
    asm("add                esp, 0x04");                                      // 0x00550440    83c404
    asm("push               eax");                                            // 0x00550443    50
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00205b70]");              // 0x00550444    8d8e705b2000
    asm("call               _jmp_addr_0x00634640");                           // 0x0055044a    e8f1410e00
    asm("cmp                eax, 0x03");                                      // 0x0055044f    83f803
    asm("{disp32} je        _jmp_addr_0x0055076b");                           // 0x00550452    0f8413030000
    asm("{disp32} mov       byte ptr [esi + 0x00205a5b], 0x07");              // 0x00550458    c6865b5a200007
    asm("cmp                dword ptr [data_bytes + 0x351cac], 0x00001a6c");  // 0x0055045f    813dac7cd1006c1a0000
    asm("{disp8} ja         _jmp_addr_0x00550472");                           // 0x00550469    7707
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]");         // 0x0055046b    a1a87cd100
    asm("{disp8} jmp        _jmp_addr_0x0055047e");                           // 0x00550470    eb0c
    asm("_jmp_addr_0x00550472:");
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]");         // 0x00550472    8b0da87cd100
    asm("{disp32} lea       eax, dword ptr [ecx + 0x00013d10]");              // 0x00550478    8d81103d0100
    asm("_jmp_addr_0x0055047e:");
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                    // 0x0055047e    8b5008
    asm("push               ebp");                                            // 0x00550481    55
    asm("push               edi");                                            // 0x00550482    57
    asm("push               0x7");                                            // 0x00550483    6a07
    asm("push               edx");                                            // 0x00550485    52
    asm("push               0x7");                                            // 0x00550486    6a07
    asm("push               0x3");                                            // 0x00550488    6a03
    asm("{disp32} lea       ecx, dword ptr [esi + 0x000048b8]");              // 0x0055048a    8d8eb8480000
    asm("call               @Init__7GPlayerF11PLAYER_TYPEUcPwUc@18");         // 0x00550490    e8fb8c0f00
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                    // 0x00550495    8b4c2410
    asm("{disp32} mov       eax, dword ptr [esi + 0x00205b80]");              // 0x00550499    8b86805b2000
    asm("push               ecx");                                            // 0x0055049f    51
    asm("{disp32} lea       ecx, dword ptr [eax + 0x00000090]");              // 0x005504a0    8d8890000000
    asm("{disp32} mov       byte ptr [esi + 0x00205a5c], bl");                // 0x005504a6    889e5c5a2000
    asm("call               _jmp_addr_0x00555cc0");                           // 0x005504ac    e80f580000
    asm("cmp.s              eax, ebx");                                       // 0x005504b1    3bc3
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                    // 0x005504b3    89442410
    asm("{disp32} je        _jmp_addr_0x0055056f");                           // 0x005504b7    0f84b2000000
    asm("mov                edi, 0x00000001");                                // 0x005504bd    bf01000000
    asm("_jmp_addr_0x005504c2:");
    asm("{disp32} inc       byte ptr [esi + 0x00205a5c]");                    // 0x005504c2    fe865c5a2000
    asm("{disp32} mov       ecx, dword ptr [_game]");                         // 0x005504c8    8b0d5c19d000
    asm("call               ?IsMultiplayerGame@GGame@@QBE_NXZ");              // 0x005504ce    e8ad2a0000
    asm("test               eax, eax");                                       // 0x005504d3    85c0
    asm("{disp8} jne        _jmp_addr_0x005504f2");                           // 0x005504d5    751b
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                    // 0x005504d7    8b442410
    asm("{disp32} mov       edx, dword ptr [eax + 0x00000174]");              // 0x005504db    8b9074010000
    asm("inc                edx");                                            // 0x005504e1    42
    asm("{disp32} mov       dword ptr [eax + 0x000001f8], edx");              // 0x005504e2    8990f8010000
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                    // 0x005504e8    8b442410
    asm("{disp32} mov       dword ptr [eax + 0x000001f4], edi");              // 0x005504ec    89b8f4010000
    asm("_jmp_addr_0x005504f2:");
    asm("{disp32} mov       edx, dword ptr [esi + 0x00205b80]");              // 0x005504f2    8b96805b2000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                    // 0x005504f8    8b4c2410
    asm("{disp32} mov       edx, dword ptr [edx + 0x00000088]");              // 0x005504fc    8b9288000000
    asm("{disp32} mov       eax, dword ptr [ecx + 0x00000178]");              // 0x00550502    8b8178010000
    asm("cmp                eax, dword ptr [edx]");                           // 0x00550508    3b02
    asm("{disp8} jne        _jmp_addr_0x0055054d");                           // 0x0055050a    7541
    asm("{disp32} mov       eax, dword ptr [ecx + 0x00000174]");              // 0x0055050c    8b8174010000
    asm("{disp32} mov       ecx, dword ptr [_game]");                         // 0x00550512    8b0d5c19d000
    asm("{disp32} mov       byte ptr [ecx + 0x00205a5a], al");                // 0x00550518    88815a5a2000
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                    // 0x0055051e    8b442410
    asm("cmp                dword ptr [eax + 0x000001f8], ebx");              // 0x00550522    3998f8010000
    asm("{disp8} jne        _jmp_addr_0x00550539");                           // 0x00550528    750f
    asm("{disp32} mov       edx, dword ptr [_game]");                         // 0x0055052a    8b155c19d000
    asm("{disp32} mov       byte ptr [edx + 0x00205a59], 0x06");              // 0x00550530    c682595a200006
    asm("{disp8} jmp        _jmp_addr_0x0055054d");                           // 0x00550537    eb14
    asm("_jmp_addr_0x00550539:");
    asm("{disp32} mov       al, byte ptr [eax + 0x000001f8]");                // 0x00550539    8a80f8010000
    asm("{disp32} mov       ecx, dword ptr [_game]");                         // 0x0055053f    8b0d5c19d000
    asm("dec                al");                                             // 0x00550545    fec8
    asm("{disp32} mov       byte ptr [ecx + 0x00205a59], al");                // 0x00550547    8881595a2000
    asm("_jmp_addr_0x0055054d:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x00205b80]");              // 0x0055054d    8b86805b2000
    asm("{disp8} mov        edx, dword ptr [esp + 0x10]");                    // 0x00550553    8b542410
    asm("push               edx");                                            // 0x00550557    52
    asm("{disp32} lea       ecx, dword ptr [eax + 0x00000090]");              // 0x00550558    8d8890000000
    asm("call               _jmp_addr_0x00555cc0");                           // 0x0055055e    e85d570000
    asm("cmp.s              eax, ebx");                                       // 0x00550563    3bc3
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                    // 0x00550565    89442410
    asm("{disp32} jne       _jmp_addr_0x005504c2");                           // 0x00550569    0f8553ffffff
    asm("_jmp_addr_0x0055056f:");
    asm("{disp8} mov        cl, byte ptr [esp + 0x17]");                      // 0x0055056f    8a4c2417
    asm("{disp8} mov        al, byte ptr [esp + 0x17]");                      // 0x00550573    8a442417
    asm("{disp8} mov        byte ptr [esp + 0x1d], cl");                      // 0x00550577    884c241d
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                    // 0x0055057b    8d4c241c
    asm("{disp8} mov        dword ptr [esp + 0x10], ebx");                    // 0x0055057f    895c2410
    asm("{disp8} mov        byte ptr [esp + 0x1c], al");                      // 0x00550583    8844241c
    asm("{disp8} mov        byte ptr [esp + 0x24], bl");                      // 0x00550587    885c2424
    asm("call               _jmp_addr_0x00556910");                           // 0x0055058b    e880630000
    asm("{disp32} mov       eax, dword ptr [esi + 0x00205b80]");              // 0x00550590    8b86805b2000
    asm("{disp8} mov        edx, dword ptr [esp + 0x10]");                    // 0x00550596    8b542410
    asm("push               edx");                                            // 0x0055059a    52
    asm("{disp32} lea       ecx, dword ptr [eax + 0x00000090]");              // 0x0055059b    8d8890000000
    asm("call               _jmp_addr_0x00555cc0");                           // 0x005505a1    e81a570000
    asm("cmp.s              eax, ebx");                                       // 0x005505a6    3bc3
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                    // 0x005505a8    89442410
    asm("{disp8} je         _jmp_addr_0x005505df");                           // 0x005505ac    7431
    asm("_jmp_addr_0x005505ae:");
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                    // 0x005505ae    8d442410
    asm("push               eax");                                            // 0x005505b2    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x34]");                    // 0x005505b3    8d4c2434
    asm("push               ecx");                                            // 0x005505b7    51
    asm("{disp8} lea        ecx, dword ptr [esp + 0x24]");                    // 0x005505b8    8d4c2424
    asm("call               _jmp_addr_0x00555f40");                           // 0x005505bc    e87f590000
    asm("{disp32} mov       eax, dword ptr [esi + 0x00205b80]");              // 0x005505c1    8b86805b2000
    asm("{disp8} mov        edx, dword ptr [esp + 0x10]");                    // 0x005505c7    8b542410
    asm("push               edx");                                            // 0x005505cb    52
    asm("{disp32} lea       ecx, dword ptr [eax + 0x00000090]");              // 0x005505cc    8d8890000000
    asm("call               _jmp_addr_0x00555cc0");                           // 0x005505d2    e8e9560000
    asm("cmp.s              eax, ebx");                                       // 0x005505d7    3bc3
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                    // 0x005505d9    89442410
    asm("{disp8} jne        _jmp_addr_0x005505ae");                           // 0x005505dd    75cf
    asm("_jmp_addr_0x005505df:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x20]");                    // 0x005505df    8b4c2420
    asm("mov                eax, dword ptr [ecx]");                           // 0x005505e3    8b01
    asm("cmp.s              eax, ecx");                                       // 0x005505e5    3bc1
    asm("{disp8} mov        dword ptr [esp + 0x2c], eax");                    // 0x005505e7    8944242c
    asm("{disp8} je         _jmp_addr_0x00550665");                           // 0x005505eb    7478
    asm("_jmp_addr_0x005505ed:");
    asm("{disp8} mov        eax, dword ptr [eax + 0x0c]");                    // 0x005505ed    8b400c
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                    // 0x005505f0    89442410
    asm("cmp                dword ptr [eax + 0x000001f8], ebx");              // 0x005505f4    3998f8010000
    asm("{disp8} jne        _jmp_addr_0x00550614");                           // 0x005505fa    7518
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000174]");              // 0x005505fc    8b8874010000
    asm("push               0x6");                                            // 0x00550602    6a06
    asm("{disp32} mov       byte ptr [ecx + 0x00bea9a0], 0x06");              // 0x00550604    c681a0a9be0006
    asm("push               eax");                                            // 0x0055060b    50
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00003e58]");              // 0x0055060c    8d8e583e0000
    asm("{disp8} jmp        _jmp_addr_0x0055064d");                           // 0x00550612    eb39
    asm("_jmp_addr_0x00550614:");
    asm("{disp32} mov       dl, byte ptr [eax + 0x000001f8]");                // 0x00550614    8a90f8010000
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000174]");              // 0x0055061a    8b8874010000
    asm("dec                dl");                                             // 0x00550620    feca
    asm("{disp32} mov       byte ptr [ecx + 0x00bea9a0], dl");                // 0x00550622    8891a0a9be00
    asm("xor.s              edx, edx");                                       // 0x00550628    33d2
    asm("{disp32} mov       dl, byte ptr [eax + 0x000001f8]");                // 0x0055062a    8a90f8010000
    asm("dec                dl");                                             // 0x00550630    feca
    asm("push               edx");                                            // 0x00550632    52
    asm("push               eax");                                            // 0x00550633    50
    asm("{disp32} mov       eax, dword ptr [eax + 0x000001f8]");              // 0x00550634    8b80f8010000
    asm("lea                ecx, dword ptr [eax + eax * 0x4]");               // 0x0055063a    8d0c80
    asm("lea                edx, dword ptr [eax + ecx * 0x8]");               // 0x0055063d    8d14c8
    asm("lea                eax, dword ptr [eax + edx * 0x2]");               // 0x00550640    8d0450
    asm("shl                eax, 5");                                         // 0x00550643    c1e005
    asm("{disp32} lea       ecx, dword ptr [eax + esi * 0x1 + -0x00000a48]"); // 0x00550646    8d8c30b8f5ffff
    asm("_jmp_addr_0x0055064d:");
    asm("call               _jmp_addr_0x00649110");                           // 0x0055064d    e8be8a0f00
    asm("{disp8} lea        ecx, dword ptr [esp + 0x2c]");                    // 0x00550652    8d4c242c
    asm("call               _jmp_addr_0x00556c10");                           // 0x00550656    e8b5650000
    asm("{disp8} mov        eax, dword ptr [esp + 0x2c]");                    // 0x0055065b    8b44242c
    asm("cmp                eax, dword ptr [esp + 0x20]");                    // 0x0055065f    3b442420
    asm("{disp8} jne        _jmp_addr_0x005505ed");                           // 0x00550663    7588
    asm("_jmp_addr_0x00550665:");
    asm("xor.s              edi, edi");                                       // 0x00550665    33ff
    asm("add                esi, 0x18");                                      // 0x00550667    83c618
    asm("_jmp_addr_0x0055066a:");
    asm("{disp8} lea        ebp, dword ptr [edi + 0x01]");                    // 0x0055066a    8d6f01
    asm("push               ebp");                                            // 0x0055066d    55
    asm("{disp8} lea        ecx, dword ptr [esp + 0x3c]");                    // 0x0055066e    8d4c243c
    asm("push               0x00bec8dc");                                     // 0x00550672    68dcc8be00
    asm("push               ecx");                                            // 0x00550677    51
    asm("call               _sprintf");                                       // 0x00550678    e855512700
    asm("add                esp, 0x0c");                                      // 0x0055067d    83c40c
    asm("push               ebx");                                            // 0x00550680    53
    asm("mov.s              ecx, esi");                                       // 0x00550681    8bce
    asm("call               ?GetNextInterfaceStatus@GPlayer@@QAEPAVGInterfaceStatus@@PAV2@@Z");                           // 0x00550683    e838a40f00
    asm("test               eax, eax");                                       // 0x00550688    85c0
    asm("{disp8} jne        _jmp_addr_0x005506a4");                           // 0x0055068a    7518
    asm("{disp8} lea        edx, dword ptr [esp + 0x38]");                    // 0x0055068c    8d542438
    asm("push               edi");                                            // 0x00550690    57
    asm("push               edx");                                            // 0x00550691    52
    asm("call               _CHAR2WCHAR__FPc");                               // 0x00550692    e809fa2d00
    asm("add                esp, 0x04");                                      // 0x00550697    83c404
    asm("push               eax");                                            // 0x0055069a    50
    asm("push               edi");                                            // 0x0055069b    57
    asm("push               ebx");                                            // 0x0055069c    53
    asm("mov.s              ecx, esi");                                       // 0x0055069d    8bce
    asm("call               @Init__7GPlayerF11PLAYER_TYPEUcPwUc@18");         // 0x0055069f    e8ec8a0f00
    asm("_jmp_addr_0x005506a4:");
    asm("mov.s              edi, ebp");                                       // 0x005506a4    8bfd
    asm("add                esi, 0x00000a60");                                // 0x005506a6    81c6600a0000
    asm("cmp                edi, 0x07");                                      // 0x005506ac    83ff07
    asm(".byte              0x72, 0xb9");// {disp8} jb _jmp_addr_0x0055066a   // 0x005506af    72b9
    asm("{disp8} mov        esi, dword ptr [esp + 0x20]");                    // 0x005506b1    8b742420
    asm("cmp                dword ptr [esp + 0x28], ebx");                    // 0x005506b5    395c2428
    asm("mov                eax, dword ptr [esi]");                           // 0x005506b9    8b06
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                    // 0x005506bb    89442418
    asm("{disp8} je         _jmp_addr_0x005506f4");                           // 0x005506bf    7433
    asm("mov.s              ecx, eax");                                       // 0x005506c1    8bc8
    asm("cmp.s              eax, ecx");                                       // 0x005506c3    3bc1
    asm("{disp8} jne        _jmp_addr_0x005506f4");                           // 0x005506c5    752d
    asm("{disp8} mov        eax, dword ptr [esi + 0x04]");                    // 0x005506c7    8b4604
    asm("push               eax");                                            // 0x005506ca    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x20]");                    // 0x005506cb    8d4c2420
    asm("call               _jmp_addr_0x005568d0");                           // 0x005506cf    e8fc610000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x20]");                    // 0x005506d4    8b4c2420
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x33b9e0]");         // 0x005506d8    8b15e019d000
    asm("{disp8} mov        dword ptr [ecx + 0x04], edx");                    // 0x005506de    895104
    asm("{disp8} mov        eax, dword ptr [esp + 0x20]");                    // 0x005506e1    8b442420
    asm("{disp8} mov        dword ptr [esp + 0x28], ebx");                    // 0x005506e5    895c2428
    asm("mov                dword ptr [eax], eax");                           // 0x005506e9    8900
    asm("{disp8} mov        eax, dword ptr [esp + 0x20]");                    // 0x005506eb    8b442420
    asm("{disp8} mov        dword ptr [eax + 0x08], eax");                    // 0x005506ef    894008
    asm("{disp8} jmp        _jmp_addr_0x0055071a");                           // 0x005506f2    eb26
    asm("_jmp_addr_0x005506f4:");
    asm("cmp.s              eax, esi");                                       // 0x005506f4    3bc6
    asm("{disp8} je         _jmp_addr_0x0055071a");                           // 0x005506f6    7422
    asm("_jmp_addr_0x005506f8:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                    // 0x005506f8    8d4c2418
    asm("mov.s              edi, eax");                                       // 0x005506fc    8bf8
    asm("call               _jmp_addr_0x00556c10");                           // 0x005506fe    e80d650000
    asm("push               edi");                                            // 0x00550703    57
    asm("{disp8} lea        eax, dword ptr [esp + 0x34]");                    // 0x00550704    8d442434
    asm("push               eax");                                            // 0x00550708    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x24]");                    // 0x00550709    8d4c2424
    asm("call               _jmp_addr_0x005564d0");                           // 0x0055070d    e8be5d0000
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                    // 0x00550712    8b442418
    asm("cmp.s              eax, esi");                                       // 0x00550716    3bc6
    asm("{disp8} jne        _jmp_addr_0x005506f8");                           // 0x00550718    75de
    asm("_jmp_addr_0x0055071a:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x20]");                    // 0x0055071a    8b4c2420
    asm("push               ecx");                                            // 0x0055071e    51
    asm("call               ??3@YAXPAX@Z");                                   // 0x0055071f    e874e72500
    asm("add                esp, 0x04");                                      // 0x00550724    83c404
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                    // 0x00550727    8d4c2418
    asm("{disp8} mov        dword ptr [esp + 0x20], ebx");                    // 0x0055072b    895c2420
    asm("{disp8} mov        dword ptr [esp + 0x28], ebx");                    // 0x0055072f    895c2428
    asm("xor.s              esi, esi");                                       // 0x00550733    33f6
    asm("call               ??0_Lockit@std@@QAE@XZ");                         // 0x00550735    e869e72500
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x33b9dc]");         // 0x0055073a    a1dc19d000
    asm("dec                eax");                                            // 0x0055073f    48
    asm("pop                edi");                                            // 0x00550740    5f
    asm("{disp32} mov       dword ptr [data_bytes + 0x33b9dc], eax");         // 0x00550741    a3dc19d000
    asm("pop                ebp");                                            // 0x00550746    5d
    asm("{disp8} jne        _jmp_addr_0x00550755");                           // 0x00550747    750c
    asm("{disp32} mov       esi, dword ptr [data_bytes + 0x33b9e0]");         // 0x00550749    8b35e019d000
    asm("{disp32} mov       dword ptr [data_bytes + 0x33b9e0], ebx");         // 0x0055074f    891de019d000
    asm("_jmp_addr_0x00550755:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                    // 0x00550755    8d4c2410
    asm("call               ??1_Lockit@std@@QAE@XZ");                         // 0x00550759    e8e1e72500
    asm("cmp.s              esi, ebx");                                       // 0x0055075e    3bf3
    asm("{disp8} je         _jmp_addr_0x0055076b");                           // 0x00550760    7409
    asm("push               esi");                                            // 0x00550762    56
    asm("call               ??3@YAXPAX@Z");                                   // 0x00550763    e830e72500
    asm("add                esp, 0x04");                                      // 0x00550768    83c404
    asm("_jmp_addr_0x0055076b:");
    asm("pop                esi");                                            // 0x0055076b    5e
    asm("pop                ebx");                                            // 0x0055076c    5b
    asm("add                esp, 0x000000f0");                                // 0x0055076d    81c4f0000000
    asm("ret");                                                               // 0x00550773    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall Dump__5GGameFv(struct Base* this)
{
    asm("push               esi");                                            // 0x00550780    56
    asm("push               edi");                                            // 0x00550781    57
    asm("mov.s              edi, ecx");                                       // 0x00550782    8bf9
    asm("xor.s              esi, esi");                                       // 0x00550784    33f6
    asm("_jmp_addr_0x00550786:");
    asm("push               esi");                                            // 0x00550786    56
    asm("mov.s              ecx, edi");                                       // 0x00550787    8bcf
    asm("call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z");           // 0x00550789    e822020000
    asm("mov                edx, dword ptr [eax]");                           // 0x0055078e    8b10
    asm("mov.s              ecx, eax");                                       // 0x00550790    8bc8
    asm("call               dword ptr [edx + 0x18]");                         // 0x00550792    ff5218
    asm("inc                esi");                                            // 0x00550795    46
    asm("cmp                esi, 0x08");                                      // 0x00550796    83fe08
    asm(".byte              0x72, 0xeb");// {disp8} jb _jmp_addr_0x00550786   // 0x00550799    72eb
    asm("{disp32} mov       eax, dword ptr [edi + 0x000059b8]");              // 0x0055079b    8b87b8590000
    asm("{disp32} lea       ecx, dword ptr [edi + 0x000059b8]");              // 0x005507a1    8d8fb8590000
    asm("call               dword ptr [eax + 0x18]");                         // 0x005507a7    ff5018
    asm("{disp32} mov       edx, dword ptr [edi + 0x00205ba4]");              // 0x005507aa    8b97a45b2000
    asm("{disp32} lea       ecx, dword ptr [edi + 0x00205ba4]");              // 0x005507b0    8d8fa45b2000
    asm("call               dword ptr [edx + 0x18]");                         // 0x005507b6    ff5218
    asm("pop                edi");                                            // 0x005507b9    5f
    asm("pop                esi");                                            // 0x005507ba    5e
    asm("ret");                                                               // 0x005507bb    c3
    asm("nop");                                                               // 0x005507bc    90
    asm("nop");                                                               // 0x005507bd    90
    asm("nop");                                                               // 0x005507be    90
    asm("nop");                                                               // 0x005507bf    90
    asm("ret");                                                               // 0x005507c0    c3
    __builtin_unreachable();
}

void __fastcall LoopThroughPlayers__5GGameFv(struct GGame* this)
{
    asm("push               esi");                                            // 0x005507d0    56
    asm("mov.s              esi, ecx");                                       // 0x005507d1    8bf1
    asm("push               0x0");                                            // 0x005507d3    6a00
    asm("call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z");   // 0x005507d5    e8c6000000
    asm("test               eax, eax");                                       // 0x005507da    85c0
    asm("{disp8} je         _jmp_addr_0x005507ea");                           // 0x005507dc    740c
    asm("_jmp_addr_0x005507de:");
    asm("push               eax");                                            // 0x005507de    50
    asm("mov.s              ecx, esi");                                       // 0x005507df    8bce
    asm("call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z");   // 0x005507e1    e8ba000000
    asm("test               eax, eax");                                       // 0x005507e6    85c0
    asm("{disp8} jne        _jmp_addr_0x005507de");                           // 0x005507e8    75f4
    asm("_jmp_addr_0x005507ea:");
    asm("pop                esi");                                            // 0x005507ea    5e
    asm("ret");                                                               // 0x005507eb    c3
    __builtin_unreachable();
}

void __fastcall Birthday__5GGameFv(struct GGame* this)
{
    asm("push               esi");                                            // 0x005507f0    56
    asm("push               edi");                                            // 0x005507f1    57
    asm("mov.s              edi, ecx");                                       // 0x005507f2    8bf9
    asm("push               0x0");                                            // 0x005507f4    6a00
    asm("call               ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z");  // 0x005507f6    e885010000
    asm("mov.s              esi, eax");                                       // 0x005507fb    8bf0
    asm("test               esi, esi");                                       // 0x005507fd    85f6
    asm("{disp8} je         _jmp_addr_0x00550816");                           // 0x005507ff    7415
    asm("_jmp_addr_0x00550801:");
    asm("mov.s              ecx, esi");                                       // 0x00550801    8bce
    asm("call               ?Birthday@GPlayer@@QAEXXZ");                        // 0x00550803    e8a89e0f00
    asm("push               esi");                                            // 0x00550808    56
    asm("mov.s              ecx, edi");                                       // 0x00550809    8bcf
    asm("call               ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z");  // 0x0055080b    e870010000
    asm("mov.s              esi, eax");                                       // 0x00550810    8bf0
    asm("test               esi, esi");                                       // 0x00550812    85f6
    asm("{disp8} jne        _jmp_addr_0x00550801");                           // 0x00550814    75eb
    asm("_jmp_addr_0x00550816:");
    asm("pop                edi");                                            // 0x00550816    5f
    asm("pop                esi");                                            // 0x00550817    5e
    asm("ret");                                                               // 0x00550818    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
int __fastcall MyPlayerID__5GGameFUl(struct GGame* this, const void* edx, unsigned long param_1)
{
    asm("push               ebx");                                            // 0x00550820    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x08]");                    // 0x00550821    8b5c2408
    asm("push               ebp");                                            // 0x00550825    55
    asm("push               esi");                                            // 0x00550826    56
    asm("push               edi");                                            // 0x00550827    57
    asm("xor.s              ebp, ebp");                                       // 0x00550828    33ed
    asm("{disp8} lea        edi, dword ptr [ecx + 0x18]");                    // 0x0055082a    8d7918
    asm("_jmp_addr_0x0055082d:");
    asm("push               0x0");                                            // 0x0055082d    6a00
    asm("mov.s              ecx, edi");                                       // 0x0055082f    8bcf
    asm("call               ?GetNextInterfaceStatus@GPlayer@@QAEPAVGInterfaceStatus@@PAV2@@Z");                           // 0x00550831    e88aa20f00
    asm("mov.s              esi, eax");                                       // 0x00550836    8bf0
    asm("test               esi, esi");                                       // 0x00550838    85f6
    asm("{disp8} je         _jmp_addr_0x00550870");                           // 0x0055083a    7434
    asm("_jmp_addr_0x0055083c:");
    asm("mov.s              ecx, esi");                                       // 0x0055083c    8bce
    asm("call               ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ");                           // 0x0055083e    e86dc00800
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000001bc]");              // 0x00550843    8b88bc010000
    asm("test               ecx, ecx");                                       // 0x00550849    85c9
    asm("{disp8} je         _jmp_addr_0x00550862");                           // 0x0055084b    7415
    asm("mov.s              ecx, esi");                                       // 0x0055084d    8bce
    asm("call               ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ");                           // 0x0055084f    e85cc00800
    asm("{disp32} mov       eax, dword ptr [eax + 0x000001bc]");              // 0x00550854    8b80bc010000
    asm("cmp                dword ptr [eax + 0x00000178], ebx");              // 0x0055085a    399878010000
    asm("{disp8} je         _jmp_addr_0x00550886");                           // 0x00550860    7424
    asm("_jmp_addr_0x00550862:");
    asm("push               esi");                                            // 0x00550862    56
    asm("mov.s              ecx, edi");                                       // 0x00550863    8bcf
    asm("call               ?GetNextInterfaceStatus@GPlayer@@QAEPAVGInterfaceStatus@@PAV2@@Z");                           // 0x00550865    e856a20f00
    asm("mov.s              esi, eax");                                       // 0x0055086a    8bf0
    asm("test               esi, esi");                                       // 0x0055086c    85f6
    asm("{disp8} jne        _jmp_addr_0x0055083c");                           // 0x0055086e    75cc
    asm("_jmp_addr_0x00550870:");
    asm("inc                ebp");                                            // 0x00550870    45
    asm("add                edi, 0x00000a60");                                // 0x00550871    81c7600a0000
    asm("cmp                ebp, 0x08");                                      // 0x00550877    83fd08
    asm(".byte              0x72, 0xb1");// {disp8} jb _jmp_addr_0x0055082d   // 0x0055087a    72b1
    asm("pop                edi");                                            // 0x0055087c    5f
    asm("pop                esi");                                            // 0x0055087d    5e
    asm("pop                ebp");                                            // 0x0055087e    5d
    asm("or                 eax, -0x1");                                      // 0x0055087f    83c8ff
    asm("pop                ebx");                                            // 0x00550882    5b
    asm("ret                0x0004");                                         // 0x00550883    c20400
    asm("_jmp_addr_0x00550886:");
    asm("mov.s              ecx, esi");                                       // 0x00550886    8bce
    asm("call               ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ");                           // 0x00550888    e823c00800
    asm("{disp32} mov       eax, dword ptr [eax + 0x000001bc]");              // 0x0055088d    8b80bc010000
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000174]");              // 0x00550893    8b8074010000
    asm("pop                edi");                                            // 0x00550899    5f
    asm("pop                esi");                                            // 0x0055089a    5e
    asm("pop                ebp");                                            // 0x0055089b    5d
    asm("pop                ebx");                                            // 0x0055089c    5b
    asm("ret                0x0004");                                         // 0x0055089d    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct GPlayer* __fastcall GetNextPlayer__5GGameFP7GPlayer(struct GGame* this, const void* edx, struct GPlayer* param_1)
{
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                    // 0x005508a0    8b542404
    asm("test               edx, edx");                                       // 0x005508a4    85d2
    asm("{disp8} jne        _jmp_addr_0x005508ba");                           // 0x005508a6    7512
    asm("{disp8} lea        edx, dword ptr [ecx + 0x18]");                    // 0x005508a8    8d5118
    asm("_jmp_addr_0x005508ab:");
    asm("add                ecx, 0x000048b8");                                // 0x005508ab    81c1b8480000
    asm("cmp.s              edx, ecx");                                       // 0x005508b1    3bd1
    asm("sbb.s              eax, eax");                                       // 0x005508b3    1bc0
    asm("and.s              eax, edx");                                       // 0x005508b5    23c2
    asm("ret                0x0004");                                         // 0x005508b7    c20400
    asm("_jmp_addr_0x005508ba:");
    asm("{disp32} mov       eax, dword ptr [edx + 0x00001340]");              // 0x005508ba    8b8240130000
    asm("add                edx, 0x00000a60");                                // 0x005508c0    81c2600a0000
    asm("cmp                eax, 0x03");                                      // 0x005508c6    83f803
    asm("{disp8} jne        _jmp_addr_0x005508ab");                           // 0x005508c9    75e0
    asm("xor.s              eax, eax");                                       // 0x005508cb    33c0
    asm("ret                0x0004");                                         // 0x005508cd    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct GPlayer* __fastcall GetNextActivePlayer__5GGameFP7GPlayer(struct GGame* this, const void* edx, struct GPlayer* param_1)
{
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                    // 0x005508d0    8b542404
    asm("test               edx, edx");                                       // 0x005508d4    85d2
    asm("{disp8} jne        _jmp_addr_0x00550910");                           // 0x005508d6    7538
    asm("{disp8} lea        edx, dword ptr [ecx + 0x18]");                    // 0x005508d8    8d5118
    asm("_jmp_addr_0x005508db:");
    asm("{disp32} mov       eax, dword ptr [edx + 0x000008e0]");              // 0x005508db    8b82e0080000
    asm("test               eax, eax");                                       // 0x005508e1    85c0
    asm("push               esi");                                            // 0x005508e3    56
    asm("{disp8} jne        _jmp_addr_0x00550900");                           // 0x005508e4    751a
    asm("{disp32} lea       eax, dword ptr [ecx + 0x000048b8]");              // 0x005508e6    8d81b8480000
    asm("_jmp_addr_0x005508ec:");
    asm("cmp.s              edx, eax");                                       // 0x005508ec    3bd0
    asm("{disp8} jae        _jmp_addr_0x00550900");                           // 0x005508ee    7310
    asm("{disp32} mov       esi, dword ptr [edx + 0x00001340]");              // 0x005508f0    8bb240130000
    asm("add                edx, 0x00000a60");                                // 0x005508f6    81c2600a0000
    asm("test               esi, esi");                                       // 0x005508fc    85f6
    asm("{disp8} je         _jmp_addr_0x005508ec");                           // 0x005508fe    74ec
    asm("_jmp_addr_0x00550900:");
    asm("add                ecx, 0x000048b8");                                // 0x00550900    81c1b8480000
    asm("cmp.s              edx, ecx");                                       // 0x00550906    3bd1
    asm("sbb.s              eax, eax");                                       // 0x00550908    1bc0
    asm("and.s              eax, edx");                                       // 0x0055090a    23c2
    asm("pop                esi");                                            // 0x0055090c    5e
    asm("ret                0x0004");                                         // 0x0055090d    c20400
    asm("_jmp_addr_0x00550910:");
    asm("{disp32} mov       eax, dword ptr [edx + 0x00001340]");              // 0x00550910    8b8240130000
    asm("add                edx, 0x00000a60");                                // 0x00550916    81c2600a0000
    asm("cmp                eax, 0x03");                                      // 0x0055091c    83f803
    asm("{disp8} jne        _jmp_addr_0x005508db");                           // 0x0055091f    75ba
    asm("xor.s              eax, eax");                                       // 0x00550921    33c0
    asm("ret                0x0004");                                         // 0x00550923    c20400
    __builtin_unreachable();
}

struct GPlayer* __fastcall GetNextActivePlayerAndNeutral__5GGameFP7GPlayer(struct GGame* this, const void* edx, struct GPlayer* player)
{
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                    // 0x00550930    8b542404
    asm("test               edx, edx");                                       // 0x00550934    85d2
    asm("{disp8} jne        _jmp_addr_0x0055093d");                           // 0x00550936    7505
    asm("{disp8} lea        edx, dword ptr [ecx + 0x18]");                    // 0x00550938    8d5118
    asm("{disp8} jmp        _jmp_addr_0x00550943");                           // 0x0055093b    eb06
    asm("_jmp_addr_0x0055093d:");
    asm("add                edx, 0x00000a60");                                // 0x0055093d    81c2600a0000
    asm("_jmp_addr_0x00550943:");
    asm("{disp32} mov       eax, dword ptr [edx + 0x000008e0]");              // 0x00550943    8b82e0080000
    asm("test               eax, eax");                                       // 0x00550949    85c0
    asm("push               esi");                                            // 0x0055094b    56
    asm("{disp8} jne        _jmp_addr_0x00550968");                           // 0x0055094c    751a
    asm("{disp32} lea       eax, dword ptr [ecx + 0x000048b8]");              // 0x0055094e    8d81b8480000
    asm("_jmp_addr_0x00550954:");
    asm("cmp.s              edx, eax");                                       // 0x00550954    3bd0
    asm("{disp8} jae        _jmp_addr_0x00550968");                           // 0x00550956    7310
    asm("{disp32} mov       esi, dword ptr [edx + 0x00001340]");              // 0x00550958    8bb240130000
    asm("add                edx, 0x00000a60");                                // 0x0055095e    81c2600a0000
    asm("test               esi, esi");                                       // 0x00550964    85f6
    asm("{disp8} je         _jmp_addr_0x00550954");                           // 0x00550966    74ec
    asm("_jmp_addr_0x00550968:");
    asm("add                ecx, 0x00005318");                                // 0x00550968    81c118530000
    asm("cmp.s              edx, ecx");                                       // 0x0055096e    3bd1
    asm("sbb.s              eax, eax");                                       // 0x00550970    1bc0
    asm("and.s              eax, edx");                                       // 0x00550972    23c2
    asm("pop                esi");                                            // 0x00550974    5e
    asm("ret                0x0004");                                         // 0x00550975    c20400
    __builtin_unreachable();
}

struct GPlayer* __fastcall GetNextPlayerAndNeutral__5GGameFP7GPlayer(struct GGame* this, const void* edx, struct GPlayer* player)
{
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                    // 0x00550980    8b542404
    asm("test               edx, edx");                                       // 0x00550984    85d2
    asm("{disp8} jne        _jmp_addr_0x0055099a");                           // 0x00550986    7512
    asm("{disp8} lea        edx, dword ptr [ecx + 0x18]");                    // 0x00550988    8d5118
    asm("add                ecx, 0x00005318");                                // 0x0055098b    81c118530000
    asm("cmp.s              edx, ecx");                                       // 0x00550991    3bd1
    asm("sbb.s              eax, eax");                                       // 0x00550993    1bc0
    asm("and.s              eax, edx");                                       // 0x00550995    23c2
    asm("ret                0x0004");                                         // 0x00550997    c20400
    asm("_jmp_addr_0x0055099a:");
    asm("add                edx, 0x00000a60");                                // 0x0055099a    81c2600a0000
    asm("add                ecx, 0x00005318");                                // 0x005509a0    81c118530000
    asm("cmp.s              edx, ecx");                                       // 0x005509a6    3bd1
    asm("sbb.s              eax, eax");                                       // 0x005509a8    1bc0
    asm("and.s              eax, edx");                                       // 0x005509aa    23c2
    asm("ret                0x0004");                                         // 0x005509ac    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct GPlayer* __fastcall GetPlayer__5GGameFUl(struct GGame* this, const void* edx, uint32_t param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                    // 0x005509b0    8b442404
    asm("cmp                eax, 0x08");                                      // 0x005509b4    83f808
    asm(".byte              0x72, 0x5");// {disp8} jb _jmp_addr_0x005509be    // 0x005509b7    7205
    asm("xor.s              eax, eax");                                       // 0x005509b9    33c0
    asm("ret                0x0004");                                         // 0x005509bb    c20400
    asm("_jmp_addr_0x005509be:");
    asm("lea                edx, dword ptr [eax + eax * 0x4]");               // 0x005509be    8d1480
    asm("lea                edx, dword ptr [eax + edx * 0x8]");               // 0x005509c1    8d14d0
    asm("lea                eax, dword ptr [eax + edx * 0x2]");               // 0x005509c4    8d0450
    asm("shl                eax, 5");                                         // 0x005509c7    c1e005
    asm("{disp8} lea        eax, dword ptr [eax + ecx * 0x1 + 0x18]");        // 0x005509ca    8d440818
    asm("ret                0x0004");                                         // 0x005509ce    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct GPlayer* __fastcall GetPlayerFromReal__5GGameFUl(struct GGame* this, const void* edx, unsigned long param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                    // 0x005509e0    8b442404
    asm("cmp                eax, 0x08");                                      // 0x005509e4    83f808
    asm(".byte              0x72, 0x5");// {disp8} jb _jmp_addr_0x005509ee    // 0x005509e7    7205
    asm("xor.s              eax, eax");                                       // 0x005509e9    33c0
    asm("ret                0x0004");                                         // 0x005509eb    c20400
    asm("_jmp_addr_0x005509ee:");
    asm("xor.s              edx, edx");                                       // 0x005509ee    33d2
    asm("{disp32} mov       dl, byte ptr [eax + 0x00bea9a0]");                // 0x005509f0    8a90a0a9be00
    asm("mov.s              eax, edx");                                       // 0x005509f6    8bc2
    asm("lea                edx, dword ptr [eax + eax * 0x4]");               // 0x005509f8    8d1480
    asm("lea                edx, dword ptr [eax + edx * 0x8]");               // 0x005509fb    8d14d0
    asm("lea                eax, dword ptr [eax + edx * 0x2]");               // 0x005509fe    8d0450
    asm("shl                eax, 5");                                         // 0x00550a01    c1e005
    asm("{disp8} lea        eax, dword ptr [eax + ecx * 0x1 + 0x18]");        // 0x00550a04    8d440818
    asm("ret                0x0004");                                         // 0x00550a08    c20400
    asm("call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9");                           // 0x00550a0b    e8690eebff
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct GInterface* __fastcall GetPlayerInterfaceFromReal__5GGameFUl(struct GGame* this, const void* edx, unsigned long param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                    // 0x00550a10    8b442404
    asm("cmp                eax, 0x08");                                      // 0x00550a14    83f808
    asm(".byte              0x72, 0x5");// {disp8} jb _jmp_addr_0x00550a1e    // 0x00550a17    7205
    asm("xor.s              eax, eax");                                       // 0x00550a19    33c0
    asm("ret                0x0004");                                         // 0x00550a1b    c20400
    asm("_jmp_addr_0x00550a1e:");
    asm("push               eax");                                            // 0x00550a1e    50
    asm("push               eax");                                            // 0x00550a1f    50
    asm("call               ?GetPlayerFromReal@GGame@@QAEPAVGPlayer@@K@Z");   // 0x00550a20    e8bbffffff
    asm("mov.s              ecx, eax");                                       // 0x00550a25    8bc8
    asm("call               @GetRealInterface__7GPlayerFUl@12");              // 0x00550a27    e8f4c60f00
    asm("ret                0x0004");                                         // 0x00550a2c    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct GPlayer* __fastcall GetNextPlayerWithNoCreature__5GGameFP7GPlayer(struct GGame* this, const void* edx, struct GPlayer* param_1)
{
    asm("push               esi");                                            // 0x00550a30    56
    asm("mov.s              esi, ecx");                                       // 0x00550a31    8bf1
    asm("push               0x0");                                            // 0x00550a33    6a00
    asm("call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z");   // 0x00550a35    e866feffff
    asm("test               eax, eax");                                       // 0x00550a3a    85c0
    asm("{disp8} je         _jmp_addr_0x00550a54");                           // 0x00550a3c    7416
    asm("_jmp_addr_0x00550a3e:");
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000a4c]");              // 0x00550a3e    8b884c0a0000
    asm("test               ecx, ecx");                                       // 0x00550a44    85c9
    asm("{disp8} je         _jmp_addr_0x00550a56");                           // 0x00550a46    740e
    asm("push               eax");                                            // 0x00550a48    50
    asm("mov.s              ecx, esi");                                       // 0x00550a49    8bce
    asm("call               ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z");   // 0x00550a4b    e850feffff
    asm("test               eax, eax");                                       // 0x00550a50    85c0
    asm("{disp8} jne        _jmp_addr_0x00550a3e");                           // 0x00550a52    75ea
    asm("_jmp_addr_0x00550a54:");
    asm("xor.s              eax, eax");                                       // 0x00550a54    33c0
    asm("_jmp_addr_0x00550a56:");
    asm("pop                esi");                                            // 0x00550a56    5e
    asm("ret");                                                               // 0x00550a57    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct GPlayer* __fastcall GetPlayer__5GGameF11PLAYER_NAME(struct GGame* this, const void* edx, enum PLAYER_NAME param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                    // 0x00550a60    8b442404
    asm("lea                edx, dword ptr [eax + eax * 0x4]");               // 0x00550a64    8d1480
    asm("lea                edx, dword ptr [eax + edx * 0x8]");               // 0x00550a67    8d14d0
    asm("lea                eax, dword ptr [eax + edx * 0x2]");               // 0x00550a6a    8d0450
    asm("shl                eax, 5");                                         // 0x00550a6d    c1e005
    asm("{disp8} lea        eax, dword ptr [eax + ecx * 0x1 + 0x18]");        // 0x00550a70    8d440818
    asm("ret                0x0004");                                         // 0x00550a74    c20400
    __builtin_unreachable();
}
