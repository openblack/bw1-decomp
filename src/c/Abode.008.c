#include "Abode.h"

const float rdata_float_0_7 asm("__real@3f333333") = 0.7f;
const float rdata_float_0_3 asm("__real@3e999999") = 0.3f;
const float rdata_float_1400_0 asm("__real@44af0000") = 1400.0f;
const float rdata_float_0_2 asm("__real@3e4ccccd") = 0.2f;
const float rdata_float_2000_0 asm("__real@44fa0000") = 2000.0f;
const float rdata_float_1_5 asm("__real@3fc00000") = 1.5f;

enum ABODE_TYPE __fastcall GetAbodeType__5AbodeFv(struct MultiMapFixed* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                   // 0x004061f0    8b4128
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000120]");             // 0x004061f3    8b8020010000
    asm("ret");                                                              // 0x004061f9    c3
    asm("call               dword ptr [__imp__timeKillEvent@4]");            // 0x004061fa    ff1590988a00
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsFunctional__5AbodeFv(struct GameThing* this)
{
    asm("push               esi");                                           // 0x00406200    56
    asm("mov.s              esi, ecx");                                      // 0x00406201    8bf1
    asm("call               ?IsFunctional@MultiMapFixed@@UAE_NXZ");          // 0x00406203    e8688d1200
    asm("cmp                eax, 0x01");                                     // 0x00406208    83f801
    asm("{disp8} jne        _jmp_addr_0x00406222");                          // 0x0040620b    7515
    asm("mov                eax, dword ptr [esi]");                          // 0x0040620d    8b06
    asm("mov.s              ecx, esi");                                      // 0x0040620f    8bce
    asm("call               dword ptr [eax + 0x890]");                       // 0x00406211    ff9090080000
    asm("test               eax, eax");                                      // 0x00406217    85c0
    asm("{disp8} je         _jmp_addr_0x00406222");                          // 0x00406219    7407
    asm("mov                eax, 0x00000001");                               // 0x0040621b    b801000000
    asm("pop                esi");                                           // 0x00406220    5e
    asm("ret");                                                              // 0x00406221    c3
    asm("_jmp_addr_0x00406222:");
    asm("xor.s              eax, eax");                                      // 0x00406222    33c0
    asm("pop                esi");                                           // 0x00406224    5e
    asm("ret");                                                              // 0x00406225    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall ChecksVerticesVObjects__5AbodeFv(struct Object* this)
{
    asm("xor.s              al, al");                                        // 0x00406230    32c0
    asm("ret");                                                              // 0x00406232    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall ReactToPhysicsImpact__5AbodeFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2)
{
    asm("sub                esp, 0x34");                                     // 0x00406240    83ec34
    asm("push               ebx");                                           // 0x00406243    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x3c]");                   // 0x00406244    8b5c243c
    asm("push               ebp");                                           // 0x00406248    55
    asm("push               esi");                                           // 0x00406249    56
    asm("push               edi");                                           // 0x0040624a    57
    asm("{disp8} mov        edi, dword ptr [ebx + 0x20]");                   // 0x0040624b    8b7b20
    asm("test               edi, edi");                                      // 0x0040624e    85ff
    asm("mov.s              esi, ecx");                                      // 0x00406250    8bf1
    asm("{disp32} je        _jmp_addr_0x00406615");                          // 0x00406252    0f84bd030000
    asm("{disp8} mov        eax, dword ptr [edi + 0x18]");                   // 0x00406258    8b4718
    asm("mov.s              ecx, edi");                                      // 0x0040625b    8bcf
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x0040625d    89442410
    asm("call               _jmp_addr_0x00647460");                          // 0x00406261    e8fa112400
    asm("test               eax, eax");                                      // 0x00406266    85c0
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                   // 0x00406268    89442414
    asm("mov                ebp, 0x00000010");                               // 0x0040626c    bd10000000
    asm("{disp8} je         _jmp_addr_0x0040628b");                          // 0x00406271    7418
    asm("test               byte ptr [ebx + 0x000001d8], 0x04");             // 0x00406273    f683d801000004
    asm("{disp8} je         _jmp_addr_0x0040628b");                          // 0x0040627a    740f
    asm("{disp8} mov        ecx, dword ptr [edi + 0x24]");                   // 0x0040627c    8b4f24
    asm("push               0x0");                                           // 0x0040627f    6a00
    asm("push               esi");                                           // 0x00406281    56
    asm("push               ebp");                                           // 0x00406282    55
    asm("push               ecx");                                           // 0x00406283    51
    asm("mov.s              ecx, eax");                                      // 0x00406284    8bc8
    asm("call               _jmp_addr_0x004ea900");                          // 0x00406286    e875460e00
    asm("_jmp_addr_0x0040628b:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x0040628b    8b4c2410
    asm("mov                edx, dword ptr [ecx]");                          // 0x0040628f    8b11
    asm("call               dword ptr [edx + 0x7a8]");                       // 0x00406291    ff92a8070000
    asm("test               al, al");                                        // 0x00406297    84c0
    asm("{disp32} je        _jmp_addr_0x00406615");                          // 0x00406299    0f8476030000
    asm("{disp32} fld       dword ptr [edi + 0x00000104]");                  // 0x0040629f    d98704010000
    asm("{disp32} fld       dword ptr [edi + 0x00000108]");                  // 0x004062a5    d98708010000
    asm("{disp32} fld       dword ptr [edi + 0x0000010c]");                  // 0x004062ab    d9870c010000
    asm("fld                st(0)");                                         // 0x004062b1    d9c0
    asm("fmul               st, st(1)");                                     // 0x004062b3    d8c9
    asm("fld                st(2)");                                         // 0x004062b5    d9c2
    asm("fmul               st, st(3)");                                     // 0x004062b7    d8cb
    asm("faddp              st(1), st");                                     // 0x004062b9    dec1
    asm("fld                st(3)");                                         // 0x004062bb    d9c3
    asm("fmul               st, st(4)");                                     // 0x004062bd    d8cc
    asm("faddp              st(1), st");                                     // 0x004062bf    dec1
    asm("fsqrt");                                                            // 0x004062c1    d9fa
    asm("fstp               st(3)");                                         // 0x004062c3    dddb
    asm("fstp               st(0)");                                         // 0x004062c5    ddd8
    asm("fstp               st(0)");                                         // 0x004062c7    ddd8
    asm("{disp32} fmul      dword ptr [edi + 0x0000015c]");                  // 0x004062c9    d88f5c010000
    asm("{disp8} fst        dword ptr [esp + 0x48]");                        // 0x004062cf    d9542448
    asm("{disp32} fcomp     dword ptr [__real@44fa0000]");                   // 0x004062d3    d81d48b28a00
    asm("fnstsw             ax");                                            // 0x004062d9    dfe0
    asm("test               ah, 0x41");                                      // 0x004062db    f6c441
    asm("{disp32} jne       _jmp_addr_0x00406511");                          // 0x004062de    0f852d020000
    asm("mov                eax, dword ptr [esi]");                          // 0x004062e4    8b06
    asm("mov.s              ecx, esi");                                      // 0x004062e6    8bce
    asm("call               dword ptr [eax + 0x890]");                       // 0x004062e8    ff9090080000
    asm("test               eax, eax");                                      // 0x004062ee    85c0
    asm("{disp32} je        _jmp_addr_0x004064ba");                          // 0x004062f0    0f84c4010000
    asm("mov                edx, dword ptr [esi]");                          // 0x004062f6    8b16
    asm("mov.s              ecx, esi");                                      // 0x004062f8    8bce
    asm("call               dword ptr [edx + 0x898]");                       // 0x004062fa    ff9298080000
    asm("{disp32} mov       ebp, dword ptr [esi + 0x00000090]");             // 0x00406300    8bae90000000
    asm("test               ebp, ebp");                                      // 0x00406306    85ed
    asm("{disp32} je        _jmp_addr_0x0040638f");                          // 0x00406308    0f8481000000
    asm("{disp32} fcom      dword ptr [__real@3e4ccccd]");                   // 0x0040630e    d81544b28a00
    asm("fnstsw             ax");                                            // 0x00406314    dfe0
    asm("test               ah, 0x01");                                      // 0x00406316    f6c401
    asm("{disp8} jne        _jmp_addr_0x00406361");                          // 0x00406319    7546
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x0040631b    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x00406321    dfe0
    asm("test               ah, 0x40");                                      // 0x00406323    f6c440
    asm("{disp8} jne        _jmp_addr_0x00406363");                          // 0x00406326    753b
    asm("test               ebp, ebp");                                      // 0x00406328    85ed
    asm("{disp8} je         _jmp_addr_0x0040633c");                          // 0x0040632a    7410
    asm("mov.s              ecx, ebp");                                      // 0x0040632c    8bcd
    asm("call               ??1FragMesh@@QAE@XZ");                           // 0x0040632e    e8ad0d3f00
    asm("push               ebp");                                           // 0x00406333    55
    asm("call               ??3@YAXPAX@Z");                                  // 0x00406334    e85f8b3a00
    asm("add                esp, 0x04");                                     // 0x00406339    83c404
    asm("_jmp_addr_0x0040633c:");
    asm("push               0x00000778");                                    // 0x0040633c    6878070000
    asm("push               0x009c7fbc");                                    // 0x00406341    68bc7f9c00
    asm("push               0x28");                                          // 0x00406346    6a28
    asm("call               ___nw__FUl");                                    // 0x00406348    e843543d00
    asm("add                esp, 0x0c");                                     // 0x0040634d    83c40c
    asm("test               eax, eax");                                      // 0x00406350    85c0
    asm("{disp8} je         _jmp_addr_0x004063b6");                          // 0x00406352    7462
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                   // 0x00406354    8b4e40
    asm("push               ecx");                                           // 0x00406357    51
    asm("mov.s              ecx, eax");                                      // 0x00406358    8bc8
    asm("call               _jmp_addr_0x007f6f00");                          // 0x0040635a    e8a10b3f00
    asm("{disp8} jmp        _jmp_addr_0x004063b8");                          // 0x0040635f    eb57
    asm("_jmp_addr_0x00406361:");
    asm("fstp               st(0)");                                         // 0x00406361    ddd8
    asm("_jmp_addr_0x00406363:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00406363    8b4c2410
    asm("cmp                dword ptr [ebp + 0x00], ecx");                   // 0x00406367    394d00
    asm("{disp8} jne        _jmp_addr_0x0040638a");                          // 0x0040636a    751e
    asm("{disp8} fld        dword ptr [esp + 0x48]");                        // 0x0040636c    d9442448
    asm("{disp32} fcomp     dword ptr [__real@44af0000]");                   // 0x00406370    d81d40b28a00
    asm("fnstsw             ax");                                            // 0x00406376    dfe0
    asm("test               ah, 0x41");                                      // 0x00406378    f6c441
    asm("{disp8} jne        _jmp_addr_0x004063be");                          // 0x0040637b    7541
    asm("cmp                dword ptr [ebx + 0x18], esi");                   // 0x0040637d    397318
    asm("{disp8} jne        _jmp_addr_0x004063be");                          // 0x00406380    753c
    asm("{disp8} mov        dword ptr [ebx + 0x1c], ecx");                   // 0x00406382    894b1c
    asm("{disp8} mov        dword ptr [edi + 0x1c], esi");                   // 0x00406385    89771c
    asm("{disp8} jmp        _jmp_addr_0x004063be");                          // 0x00406388    eb34
    asm("_jmp_addr_0x0040638a:");
    asm("{disp8} mov        dword ptr [ebp + 0x00], ecx");                   // 0x0040638a    894d00
    asm("{disp8} jmp        _jmp_addr_0x004063be");                          // 0x0040638d    eb2f
    asm("_jmp_addr_0x0040638f:");
    asm("push               0x0000077d");                                    // 0x0040638f    687d070000
    asm("fstp               st(0)");                                         // 0x00406394    ddd8
    asm("push               0x009c7fbc");                                    // 0x00406396    68bc7f9c00
    asm("push               0x28");                                          // 0x0040639b    6a28
    asm("call               ___nw__FUl");                                    // 0x0040639d    e8ee533d00
    asm("add                esp, 0x0c");                                     // 0x004063a2    83c40c
    asm("test               eax, eax");                                      // 0x004063a5    85c0
    asm("{disp8} je         _jmp_addr_0x004063b6");                          // 0x004063a7    740d
    asm("{disp8} mov        edx, dword ptr [esi + 0x40]");                   // 0x004063a9    8b5640
    asm("push               edx");                                           // 0x004063ac    52
    asm("mov.s              ecx, eax");                                      // 0x004063ad    8bc8
    asm("call               _jmp_addr_0x007f6f00");                          // 0x004063af    e84c0b3f00
    asm("{disp8} jmp        _jmp_addr_0x004063b8");                          // 0x004063b4    eb02
    asm("_jmp_addr_0x004063b6:");
    asm("xor.s              eax, eax");                                      // 0x004063b6    33c0
    asm("_jmp_addr_0x004063b8:");
    asm("{disp32} mov       dword ptr [esi + 0x00000090], eax");             // 0x004063b8    898690000000
    asm("_jmp_addr_0x004063be:");
    asm("{disp32} fld       dword ptr [edi + 0x00000104]");                  // 0x004063be    d98704010000
    asm("{disp32} mov       eax, dword ptr [edi + 0x000000c8]");             // 0x004063c4    8b87c8000000
    asm("{disp32} fmul      dword ptr [__real@3e999999]");                   // 0x004063ca    d80d3cb28a00
    asm("{disp32} mov       ecx, dword ptr [edi + 0x000000cc]");             // 0x004063d0    8b8fcc000000
    asm("{disp32} mov       edx, dword ptr [edi + 0x000000d0]");             // 0x004063d6    8b97d0000000
    asm("{disp8} mov        dword ptr [esp + 0x24], eax");                   // 0x004063dc    89442424
    asm("{disp8} mov        al, byte ptr [esp + 0x4c]");                     // 0x004063e0    8a44244c
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x004063e4    d95c2418
    asm("test               al, al");                                        // 0x004063e8    84c0
    asm("{disp32} fld       dword ptr [edi + 0x00000108]");                  // 0x004063ea    d98708010000
    asm("{disp32} fmul      dword ptr [__real@3e999999]");                   // 0x004063f0    d80d3cb28a00
    asm("{disp8} mov        dword ptr [esp + 0x28], ecx");                   // 0x004063f6    894c2428
    asm("{disp8} mov        dword ptr [esp + 0x2c], edx");                   // 0x004063fa    8954242c
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x004063fe    d95c241c
    asm("{disp32} fld       dword ptr [edi + 0x0000010c]");                  // 0x00406402    d9870c010000
    asm("{disp32} fmul      dword ptr [__real@3e999999]");                   // 0x00406408    d80d3cb28a00
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                        // 0x0040640e    d95c2420
    asm("{disp8} je         _jmp_addr_0x0040644e");                          // 0x00406412    743a
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000090]");             // 0x00406414    8b8e90000000
    asm("push               0x00406620");                                    // 0x0040641a    6820664000
    asm("{disp8} lea        eax, dword ptr [esp + 0x28]");                   // 0x0040641f    8d442428
    asm("push               eax");                                           // 0x00406423    50
    asm("call               _jmp_addr_0x0076d4c0");                          // 0x00406424    e897703600
    asm("call               _jmp_addr_0x00464440");                          // 0x00406429    e812e00500
    asm("fld                st(0)");                                         // 0x0040642e    d9c0
    asm("{disp8} fmul       dword ptr [esp + 0x18]");                        // 0x00406430    d84c2418
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x00406434    d95c2418
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                        // 0x00406438    d944241c
    asm("fmul               st, st(1)");                                     // 0x0040643c    d8c9
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x0040643e    d95c241c
    asm("{disp8} fld        dword ptr [esp + 0x20]");                        // 0x00406442    d9442420
    asm("fmul               st, st(1)");                                     // 0x00406446    d8c9
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                        // 0x00406448    d95c2420
    asm("fstp               st(0)");                                         // 0x0040644c    ddd8
    asm("_jmp_addr_0x0040644e:");
    asm("{disp32} fld       dword ptr [edi + 0x00000178]");                  // 0x0040644e    d98778010000
    asm("push               esi");                                           // 0x00406454    56
    asm("{disp32} fadd      dword ptr [__real@3f333333]");                   // 0x00406455    d80538b28a00
    asm("push               ecx");                                           // 0x0040645b    51
    asm("{disp8} lea        ecx, dword ptr [esp + 0x20]");                   // 0x0040645c    8d4c2420
    asm("{disp8} lea        edx, dword ptr [esp + 0x2c]");                   // 0x00406460    8d54242c
    asm("fstp               dword ptr [esp]");                               // 0x00406464    d91c24
    asm("push               ecx");                                           // 0x00406467    51
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000090]");             // 0x00406468    8b8e90000000
    asm("push               edx");                                           // 0x0040646e    52
    asm("call               _jmp_addr_0x007f7d40");                          // 0x0040646f    e8cc183f00
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000090]");             // 0x00406474    8b8e90000000
    asm("call               _jmp_addr_0x007f7230");                          // 0x0040647a    e8b10d3f00
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x0040647f    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x00406485    dfe0
    asm("test               ah, 0x40");                                      // 0x00406487    f6c440
    asm("{disp8} je         _jmp_addr_0x004064ba");                          // 0x0040648a    742e
    asm("{disp32} mov       edi, dword ptr [esi + 0x00000090]");             // 0x0040648c    8bbe90000000
    asm("test               edi, edi");                                      // 0x00406492    85ff
    asm("{disp8} je         _jmp_addr_0x004064a6");                          // 0x00406494    7410
    asm("mov.s              ecx, edi");                                      // 0x00406496    8bcf
    asm("call               ??1FragMesh@@QAE@XZ");                           // 0x00406498    e8430c3f00
    asm("push               edi");                                           // 0x0040649d    57
    asm("call               ??3@YAXPAX@Z");                                  // 0x0040649e    e8f5893a00
    asm("add                esp, 0x04");                                     // 0x004064a3    83c404
    asm("_jmp_addr_0x004064a6:");
    asm("pop                edi");                                           // 0x004064a6    5f
    asm("{disp32} mov       dword ptr [esi + 0x00000090], 0x00000000");      // 0x004064a7    c7869000000000000000
    asm("pop                esi");                                           // 0x004064b1    5e
    asm("pop                ebp");                                           // 0x004064b2    5d
    asm("pop                ebx");                                           // 0x004064b3    5b
    asm("add                esp, 0x34");                                     // 0x004064b4    83c434
    asm("ret                0x0008");                                        // 0x004064b7    c20800
    asm("_jmp_addr_0x004064ba:");
    asm("{disp8} mov        eax, dword ptr [ebx + 0x1c]");                   // 0x004064ba    8b431c
    asm("test               eax, eax");                                      // 0x004064bd    85c0
    asm("{disp8} jne        _jmp_addr_0x004064cf");                          // 0x004064bf    750e
    asm("{disp8} mov        eax, dword ptr [ebx + 0x20]");                   // 0x004064c1    8b4320
    asm("test               eax, eax");                                      // 0x004064c4    85c0
    asm("{disp8} je         _jmp_addr_0x004064cd");                          // 0x004064c6    7405
    asm("{disp8} mov        eax, dword ptr [eax + 0x1c]");                   // 0x004064c8    8b401c
    asm("{disp8} jmp        _jmp_addr_0x004064cf");                          // 0x004064cb    eb02
    asm("_jmp_addr_0x004064cd:");
    asm("xor.s              eax, eax");                                      // 0x004064cd    33c0
    asm("_jmp_addr_0x004064cf:");
    asm("push               0x0");                                           // 0x004064cf    6a00
    asm("push               0x009c8060");                                    // 0x004064d1    6860809c00
    asm("push               0x009c7f50");                                    // 0x004064d6    68507f9c00
    asm("push               0x0");                                           // 0x004064db    6a00
    asm("push               eax");                                           // 0x004064dd    50
    asm("call               ___RTDynamicCast");                              // 0x004064de    e836f53b00
    asm("add                esp, 0x14");                                     // 0x004064e3    83c414
    asm("test               eax, eax");                                      // 0x004064e6    85c0
    asm("{disp8} je         _jmp_addr_0x004064ee");                          // 0x004064e8    7404
    asm("or                 byte ptr [esi + 0x7c], 0x20");                   // 0x004064ea    804e7c20
    asm("_jmp_addr_0x004064ee:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                   // 0x004064ee    8b442414
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x004064f2    8b4c2410
    asm("push               eax");                                           // 0x004064f6    50
    asm("push               ecx");                                           // 0x004064f7    51
    asm("mov.s              ecx, esi");                                      // 0x004064f8    8bce
    asm("call               ?ApplyEffectsDueToPhysicalDestruction@Abode@@QAEXPAVObject@@PAVGPlayer@@@Z");                          // 0x004064fa    e841010000
    asm("{disp8} mov        al, byte ptr [esi + 0x7c]");                     // 0x004064ff    8a467c
    asm("pop                edi");                                           // 0x00406502    5f
    asm("and                al, -0x21");                                     // 0x00406503    24df
    asm("{disp8} mov        byte ptr [esi + 0x7c], al");                     // 0x00406505    88467c
    asm("pop                esi");                                           // 0x00406508    5e
    asm("pop                ebp");                                           // 0x00406509    5d
    asm("pop                ebx");                                           // 0x0040650a    5b
    asm("add                esp, 0x34");                                     // 0x0040650b    83c434
    asm("ret                0x0008");                                        // 0x0040650e    c20800
    asm("_jmp_addr_0x00406511:");
    asm("{disp8} fld        dword ptr [esp + 0x48]");                        // 0x00406511    d9442448
    asm("{disp32} fcomp     dword ptr [__real@447a0000]");                   // 0x00406515    d81d28b28a00
    asm("fnstsw             ax");                                            // 0x0040651b    dfe0
    asm("test               ah, 0x41");                                      // 0x0040651d    f6c441
    asm("{disp8} jne        _jmp_addr_0x0040652c");                          // 0x00406520    750a
    asm("{disp8} mov        dword ptr [esp + 0x30], 0x00000002");            // 0x00406522    c744243002000000
    asm("{disp8} jmp        _jmp_addr_0x00406549");                          // 0x0040652a    eb1d
    asm("_jmp_addr_0x0040652c:");
    asm("{disp8} fld        dword ptr [esp + 0x48]");                        // 0x0040652c    d9442448
    asm("{disp32} fcomp     dword ptr [__real@43960000]");                   // 0x00406530    d81d34b28a00
    asm("fnstsw             ax");                                            // 0x00406536    dfe0
    asm("test               ah, 0x41");                                      // 0x00406538    f6c441
    asm("{disp32} jne       _jmp_addr_0x00406615");                          // 0x0040653b    0f85d4000000
    asm("{disp8} mov        dword ptr [esp + 0x30], 0x00000003");            // 0x00406541    c744243003000000
    asm("_jmp_addr_0x00406549:");
    asm("{disp8} lea        edx, dword ptr [esp + 0x18]");                   // 0x00406549    8d542418
    asm("push               edx");                                           // 0x0040654d    52
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x0040654e    8d4e14
    asm("{disp8} mov        dword ptr [esp + 0x3c], 0x00000016");            // 0x00406551    c744243c16000000
    asm("{disp8} mov        dword ptr [esp + 0x40], ebp");                   // 0x00406559    896c2440
    asm("call               @GetLHPoint__9MapCoordsCFv@12");                 // 0x0040655d    e8def61f00
    asm("mov                ecx, dword ptr [eax]");                          // 0x00406562    8b08
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x00406564    8b5004
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x00406567    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x24], ecx");                   // 0x0040656a    894c2424
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x0040656e    8b0d5c19d000
    asm("{disp8} mov        dword ptr [esp + 0x28], edx");                   // 0x00406574    89542428
    asm("{disp8} mov        dword ptr [esp + 0x2c], eax");                   // 0x00406578    8944242c
    asm("call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ");                        // 0x0040657c    e8ff5b1400
    asm("test               eax, eax");                                      // 0x00406581    85c0
    asm("{disp32} je        _jmp_addr_0x00406615");                          // 0x00406583    0f848c000000
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x00406589    8b0d5c19d000
    asm("call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ");                        // 0x0040658f    e8ec5b1400
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdb8]");        // 0x00406594    8b0db81dea00
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x4dbdbc]");        // 0x0040659a    8b15bc1dea00
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x4dbdc0]");        // 0x004065a0    a1c01dea00
    asm("{disp8} mov        dword ptr [esp + 0x18], ecx");                   // 0x004065a5    894c2418
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x004065a9    d9442418
    asm("{disp8} fsub       dword ptr [esp + 0x24]");                        // 0x004065ad    d8642424
    asm("{disp8} mov        dword ptr [esp + 0x1c], edx");                   // 0x004065b1    8954241c
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                        // 0x004065b5    d944241c
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                   // 0x004065b9    89442420
    asm("{disp8} fsub       dword ptr [esp + 0x28]");                        // 0x004065bd    d8642428
    asm("{disp32} mov       ecx, dword ptr [_global]");                      // 0x004065c1    8b0d203bcd00
    asm("{disp8} fld        dword ptr [esp + 0x20]");                        // 0x004065c7    d9442420
    asm("push               0x0");                                           // 0x004065cb    6a00
    asm("{disp8} fsub       dword ptr [esp + 0x30]");                        // 0x004065cd    d8642430
    asm("push               0x0");                                           // 0x004065d1    6a00
    asm("push               0x0");                                           // 0x004065d3    6a00
    asm("{disp8} mov        dword ptr [esp + 0x40], 0x00000000");            // 0x004065d5    c744244000000000
    asm("fld                st(0)");                                         // 0x004065dd    d9c0
    asm("{disp8} mov        dword ptr [esp + 0x4c], 0x0000004b");            // 0x004065df    c744244c4b000000
    asm("fmul               st, st(1)");                                     // 0x004065e7    d8c9
    asm("{disp32} mov       edx, dword ptr [ecx + 0x000003b0]");             // 0x004065e9    8b91b0030000
    asm("fld                st(2)");                                         // 0x004065ef    d9c2
    asm("push               edx");                                           // 0x004065f1    52
    asm("fmul               st, st(3)");                                     // 0x004065f2    d8cb
    asm("push               0x0");                                           // 0x004065f4    6a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x44]");                   // 0x004065f6    8d442444
    asm("faddp              st(1), st");                                     // 0x004065fa    dec1
    asm("fld                st(3)");                                         // 0x004065fc    d9c3
    asm("push               eax");                                           // 0x004065fe    50
    asm("fmul               st, st(4)");                                     // 0x004065ff    d8cc
    asm("push               ecx");                                           // 0x00406601    51
    asm("faddp              st(1), st");                                     // 0x00406602    dec1
    asm("fsqrt");                                                            // 0x00406604    d9fa
    asm("fstp               st(3)");                                         // 0x00406606    dddb
    asm("fstp               st(0)");                                         // 0x00406608    ddd8
    asm("fstp               st(0)");                                         // 0x0040660a    ddd8
    asm("fstp               dword ptr [esp]");                               // 0x0040660c    d91c24
    asm("push               esi");                                           // 0x0040660f    56
    asm("call               _jmp_addr_0x0042a4b0");                          // 0x00406610    e89b3e0200
    asm("_jmp_addr_0x00406615:");
    asm("pop                edi");                                           // 0x00406615    5f
    asm("pop                esi");                                           // 0x00406616    5e
    asm("pop                ebp");                                           // 0x00406617    5d
    asm("pop                ebx");                                           // 0x00406618    5b
    asm("add                esp, 0x34");                                     // 0x00406619    83c434
    asm("ret                0x0008");                                        // 0x0040661c    c20800
    asm("nop");                                                              // 0x0040661f    90
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00406620    8b442404
    asm("push               0x00000740");                                    // 0x00406624    6840070000
    asm("push               0x009c7fbc");                                    // 0x00406629    68bc7f9c00
    asm("push               eax");                                           // 0x0040662e    50
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                      // 0x0040662f    e8fc7e2d00
    asm("add                esp, 0x0c");                                     // 0x00406634    83c40c
    asm("ret");                                                              // 0x00406637    c3
    __builtin_unreachable();
}

void __fastcall ApplyEffectsDueToPhysicalDestruction__5AbodeFP6ObjectP7GPlayer(struct Abode* this, const void* edx, struct Object* object, struct GPlayer* player)
{
    asm("sub                esp, 0x00000090");                               // 0x00406640    81ec90000000
    asm("push               esi");                                           // 0x00406646    56
    asm("mov.s              esi, ecx");                                      // 0x00406647    8bf1
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                   // 0x00406649    8d442408
    asm("push               eax");                                           // 0x0040664d    50
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x0040664e    8d4e14
    asm("call               @GetLHPoint__9MapCoordsCFv@12");                 // 0x00406651    e8eaf51f00
    asm("mov                ecx, dword ptr [eax]");                          // 0x00406656    8b08
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x00406658    8b5004
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x0040665b    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                   // 0x0040665e    894c2414
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x00406662    8b0d5c19d000
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x00406668    89542418
    asm("{disp8} mov        dword ptr [esp + 0x1c], eax");                   // 0x0040666c    8944241c
    asm("call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ");                        // 0x00406670    e80b5b1400
    asm("test               eax, eax");                                      // 0x00406675    85c0
    asm("{disp32} je        _jmp_addr_0x004067ef");                          // 0x00406677    0f8472010000
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x0040667d    8b0d5c19d000
    asm("push               edi");                                           // 0x00406683    57
    asm("call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ");                        // 0x00406684    e8f75a1400
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdb8]");        // 0x00406689    8b0db81dea00
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x4dbdbc]");        // 0x0040668f    8b15bc1dea00
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x4dbdc0]");        // 0x00406695    a1c01dea00
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                   // 0x0040669a    894c240c
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x0040669e    d944240c
    asm("{disp8} fsub       dword ptr [esp + 0x18]");                        // 0x004066a2    d8642418
    asm("{disp8} mov        dword ptr [esp + 0x10], edx");                   // 0x004066a6    89542410
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x004066aa    d9442410
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                   // 0x004066ae    89442414
    asm("{disp8} fsub       dword ptr [esp + 0x1c]");                        // 0x004066b2    d864241c
    asm("{disp32} mov       ecx, dword ptr [_global]");                      // 0x004066b6    8b0d203bcd00
    asm("{disp8} fld        dword ptr [esp + 0x14]");                        // 0x004066bc    d9442414
    asm("push               0x0");                                           // 0x004066c0    6a00
    asm("{disp8} fsub       dword ptr [esp + 0x24]");                        // 0x004066c2    d8642424
    asm("push               0x0");                                           // 0x004066c6    6a00
    asm("push               0x0");                                           // 0x004066c8    6a00
    asm("{disp8} mov        dword ptr [esp + 0x34], 0x00000001");            // 0x004066ca    c744243401000000
    asm("fld                st(0)");                                         // 0x004066d2    d9c0
    asm("{disp8} mov        dword ptr [esp + 0x38], 0x00000000");            // 0x004066d4    c744243800000000
    asm("fmul               st, st(1)");                                     // 0x004066dc    d8c9
    asm("{disp8} mov        dword ptr [esp + 0x3c], 0x00000016");            // 0x004066de    c744243c16000000
    asm("fld                st(2)");                                         // 0x004066e6    d9c2
    asm("{disp8} mov        dword ptr [esp + 0x40], 0x00000009");            // 0x004066e8    c744244009000000
    asm("fmul               st, st(3)");                                     // 0x004066f0    d8cb
    asm("{disp8} mov        dword ptr [esp + 0x44], 0x0000004b");            // 0x004066f2    c74424444b000000
    asm("{disp32} mov       edx, dword ptr [ecx + 0x000003b0]");             // 0x004066fa    8b91b0030000
    asm("faddp              st(1), st");                                     // 0x00406700    dec1
    asm("fld                st(3)");                                         // 0x00406702    d9c3
    asm("push               edx");                                           // 0x00406704    52
    asm("fmul               st, st(4)");                                     // 0x00406705    d8cc
    asm("push               0x0");                                           // 0x00406707    6a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x3c]");                   // 0x00406709    8d44243c
    asm("push               eax");                                           // 0x0040670d    50
    asm("faddp              st(1), st");                                     // 0x0040670e    dec1
    asm("push               ecx");                                           // 0x00406710    51
    asm("fsqrt");                                                            // 0x00406711    d9fa
    asm("fstp               st(3)");                                         // 0x00406713    dddb
    asm("fstp               st(0)");                                         // 0x00406715    ddd8
    asm("fstp               st(0)");                                         // 0x00406717    ddd8
    asm("fstp               dword ptr [esp]");                               // 0x00406719    d91c24
    asm("push               esi");                                           // 0x0040671c    56
    asm("call               _jmp_addr_0x0042a4b0");                          // 0x0040671d    e88e3d0200
    asm("{disp32} mov       edi, dword ptr [esp + 0x000000a0]");             // 0x00406722    8bbc24a0000000
    asm("{disp32} mov       ecx, dword ptr [esp + 0x0000009c]");             // 0x00406729    8b8c249c000000
    asm("push               edi");                                           // 0x00406730    57
    asm("push               ecx");                                           // 0x00406731    51
    asm("push               0x3");                                           // 0x00406732    6a03
    asm("{disp8} lea        ecx, dword ptr [esp + 0x48]");                   // 0x00406734    8d4c2448
    asm("call               _jmp_addr_0x00524fe0");                          // 0x00406738    e8a3e81100
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000090]");             // 0x0040673d    8b8690000000
    asm("test               eax, eax");                                      // 0x00406743    85c0
    asm("{disp32} je        _jmp_addr_0x004067d2");                          // 0x00406745    0f8487000000
    asm("{disp8} fld        dword ptr [eax + 0x18]");                        // 0x0040674b    d94018
    asm("push               ebx");                                           // 0x0040674e    53
    asm("{disp8} fst        dword ptr [esp + 0x28]");                        // 0x0040674f    d9542428
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0xd7188]");             // 0x00406753    d81d88019800
    asm("fnstsw             ax");                                            // 0x00406759    dfe0
    asm("test               ah, 0x01");                                      // 0x0040675b    f6c401
    asm("{disp8} je         _jmp_addr_0x00406786");                          // 0x0040675e    7426
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x00406760    8b0d5c19d000
    asm("call               _jmp_addr_0x00555880");                          // 0x00406766    e815f11400
    asm("test               edi, edi");                                      // 0x0040676b    85ff
    asm("mov.s              ebx, eax");                                      // 0x0040676d    8bd8
    asm("{disp8} je         _jmp_addr_0x00406786");                          // 0x0040676f    7415
    asm("push               ebx");                                           // 0x00406771    53
    asm("mov.s              ecx, edi");                                      // 0x00406772    8bcf
    asm("call               ?IsMemberOfThisPlayer@GPlayer@@QAE_NPAVGInterfaceStatus@@@Z");                          // 0x00406774    e8d76f2400
    asm("test               eax, eax");                                      // 0x00406779    85c0
    asm("{disp8} je         _jmp_addr_0x00406786");                          // 0x0040677b    7409
    asm("{disp8} mov        ecx, dword ptr [ebx + 0x30]");                   // 0x0040677d    8b4b30
    asm("push               esi");                                           // 0x00406780    56
    asm("call               _jmp_addr_0x0071d070");                          // 0x00406781    e8ea683100
    asm("_jmp_addr_0x00406786:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00406786    8b16
    asm("mov.s              ecx, esi");                                      // 0x00406788    8bce
    asm("call               dword ptr [edx + 0x11c]");                       // 0x0040678a    ff921c010000
    asm("{disp8} fsub       dword ptr [esp + 0x28]");                        // 0x00406790    d8642428
    asm("pop                ebx");                                           // 0x00406794    5b
    asm("{disp8} fst        dword ptr [esp + 0x08]");                        // 0x00406795    d9542408
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00406799    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x0040679f    dfe0
    asm("test               ah, 0x01");                                      // 0x004067a1    f6c401
    asm("{disp8} je         _jmp_addr_0x004067ae");                          // 0x004067a4    7408
    asm("{disp8} mov        dword ptr [esp + 0x08], 0x00000000");            // 0x004067a6    c744240800000000
    asm("_jmp_addr_0x004067ae:");
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                   // 0x004067ae    8d442408
    asm("push               eax");                                           // 0x004067b2    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x48]");                   // 0x004067b3    8d4c2448
    asm("call               _jmp_addr_0x00525720");                          // 0x004067b7    e864ef1100
    asm("{disp8} lea        ecx, dword ptr [esp + 0x7c]");                   // 0x004067bc    8d4c247c
    asm("push               ecx");                                           // 0x004067c0    51
    asm("mov.s              ecx, esi");                                      // 0x004067c1    8bce
    asm("call               _jmp_addr_0x00637930");                          // 0x004067c3    e868112300
    asm("push               eax");                                           // 0x004067c8    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x40]");                   // 0x004067c9    8d4c2440
    asm("call               _jmp_addr_0x00525950");                          // 0x004067cd    e87ef11100
    asm("_jmp_addr_0x004067d2:");
    asm("mov                edx, dword ptr [esi]");                          // 0x004067d2    8b16
    asm("push               0x0");                                           // 0x004067d4    6a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x40]");                   // 0x004067d6    8d442440
    asm("push               eax");                                           // 0x004067da    50
    asm("mov.s              ecx, esi");                                      // 0x004067db    8bce
    asm("call               dword ptr [edx + 0x5cc]");                       // 0x004067dd    ff92cc050000
    asm("fstp               st(0)");                                         // 0x004067e3    ddd8
    asm("{disp8} lea        ecx, dword ptr [esp + 0x3c]");                   // 0x004067e5    8d4c243c
    asm("call               _jmp_addr_0x00436960");                          // 0x004067e9    e872010300
    asm("pop                edi");                                           // 0x004067ee    5f
    asm("_jmp_addr_0x004067ef:");
    asm("pop                esi");                                           // 0x004067ef    5e
    asm("add                esp, 0x00000090");                               // 0x004067f0    81c490000000
    asm("ret                0x0008");                                        // 0x004067f6    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall CanBecomeAPhysicsObject__5AbodeFv(struct Object* this)
{
    return 0;
}

uint32_t __fastcall GetScriptObjectType__5AbodeFv(struct GameThingWithPos* this)
{
    return 2;
}

uint32_t __fastcall InterfaceValidToTap__5AbodeFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status)
{
    return 1;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall InterfaceTap__5AbodeFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* status)
{
    asm("sub                esp, 0x00000174");                               // 0x00406830    81ec74010000
    asm("push               esi");                                           // 0x00406836    56
    asm("push               edi");                                           // 0x00406837    57
    asm("mov.s              edi, ecx");                                      // 0x00406838    8bf9
    asm("mov                eax, dword ptr [edi]");                          // 0x0040683a    8b07
    asm("call               dword ptr [eax + 0x48]");                        // 0x0040683c    ff5048
    asm("{disp32} mov       dword ptr [_abode_town_00c4cc6c], eax");         // 0x0040683f    a36cccc400
    asm("call               _jmp_addr_0x00829690");                          // 0x00406844    e8472e4200
    asm("{disp32} mov       esi, dword ptr [edi + 0x000000a0]");             // 0x00406849    8bb7a0000000
    asm("test               esi, esi");                                      // 0x0040684f    85f6
    asm("{disp8} je         _jmp_addr_0x00406864");                          // 0x00406851    7411
    asm("_jmp_addr_0x00406853:");
    asm("mov.s              ecx, esi");                                      // 0x00406853    8bce
    asm("call               ?SetStateWhenTappedOnAbode@Villager@@QAE_NXZ");                          // 0x00406855    e826c33400
    asm("{disp32} mov       esi, dword ptr [esi + 0x000000e4]");             // 0x0040685a    8bb6e4000000
    asm("test               esi, esi");                                      // 0x00406860    85f6
    asm("{disp8} jne        _jmp_addr_0x00406853");                          // 0x00406862    75ef
    asm("_jmp_addr_0x00406864:");
    asm("mov                edx, dword ptr [edi]");                          // 0x00406864    8b17
    asm("mov.s              ecx, edi");                                      // 0x00406866    8bcf
    asm("call               dword ptr [edx + 0x8c4]");                       // 0x00406868    ff92c4080000
    asm("test               al, 0x02");                                      // 0x0040686e    a802
    asm("{disp32} je        _jmp_addr_0x00406959");                          // 0x00406870    0f84e3000000
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x00406876    8b0d5c19d000
    asm("call               _jmp_addr_0x00555880");                          // 0x0040687c    e8ffef1400
    asm("{disp32} mov       esi, dword ptr [esp + 0x00000180]");             // 0x00406881    8bb42480010000
    asm("cmp.s              esi, eax");                                      // 0x00406888    3bf0
    asm("{disp8} jne        _jmp_addr_0x004068c0");                          // 0x0040688a    7534
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x0040688c    8b0d5c19d000
    asm("xor.s              eax, eax");                                      // 0x00406892    33c0
    asm("{disp32} mov       al, byte ptr [ecx + 0x00205a59]");               // 0x00406894    8a81595a2000
    asm("lea                edx, dword ptr [eax + eax * 0x4]");              // 0x0040689a    8d1480
    asm("lea                edx, dword ptr [eax + edx * 0x8]");              // 0x0040689d    8d14d0
    asm("lea                eax, dword ptr [eax + edx * 0x2]");              // 0x004068a0    8d0450
    asm("shl                eax, 5");                                        // 0x004068a3    c1e005
    asm("{disp8} lea        ecx, dword ptr [eax + ecx * 0x1 + 0x18]");       // 0x004068a6    8d4c0818
    asm("call               _jmp_addr_0x0064ab20");                          // 0x004068aa    e871422400
    asm("test               eax, eax");                                      // 0x004068af    85c0
    asm("{disp8} je         _jmp_addr_0x004068c0");                          // 0x004068b1    740d
    asm("{disp8} lea        ecx, dword ptr [eax + 0x78]");                   // 0x004068b3    8d4878
    asm("push               0x39");                                          // 0x004068b6    6a39
    asm("push               ecx");                                           // 0x004068b8    51
    asm("mov.s              ecx, eax");                                      // 0x004068b9    8bc8
    asm("call               _jmp_addr_0x0046c050");                          // 0x004068bb    e890570600
    asm("_jmp_addr_0x004068c0:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000d0]");             // 0x004068c0    8b8ed0000000
    asm("{disp32} mov       edx, dword ptr [esi + 0x000000c8]");             // 0x004068c6    8b96c8000000
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000cc]");             // 0x004068cc    8b86cc000000
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x004068d2    894c2410
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x004068d6    8d4c2414
    asm("{disp8} mov        dword ptr [esp + 0x08], edx");                   // 0x004068da    89542408
    asm("{disp8} mov        dword ptr [esp + 0x0c], eax");                   // 0x004068de    8944240c
    asm("call               dword ptr [rdata_bytes + 0x75c]");               // 0x004068e2    ff155c978a00
    asm("{disp32} mov       ecx, dword ptr [_global]");                      // 0x004068e8    8b0d203bcd00
    asm("{disp32} mov       edx, dword ptr [ecx + 0x000003ac]");             // 0x004068ee    8b91ac030000
    asm("{disp32} mov       eax, dword ptr [_windmill_int_00c4cc7c]");       // 0x004068f4    a17cccc400
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x004068f9    89542418
    asm("{disp8} lea        edx, dword ptr [eax + 0x6e]");                   // 0x004068fd    8d506e
    asm("inc                eax");                                           // 0x00406900    40
    asm("cmp                eax, 0x09");                                     // 0x00406901    83f809
    asm("{disp8} mov        dword ptr [esp + 0x38], edx");                   // 0x00406904    89542438
    asm("{disp32} mov       dword ptr [_windmill_int_00c4cc7c], eax");       // 0x00406908    a37cccc400
    asm("{disp8} jne        _jmp_addr_0x00406919");                          // 0x0040690d    750a
    asm("{disp32} mov       dword ptr [_windmill_int_00c4cc7c], 0x00000000"); // 0x0040690f    c7057cccc40000000000
    asm("_jmp_addr_0x00406919:");
    asm("{disp8} mov        edx, dword ptr [esp + 0x0c]");                   // 0x00406919    8b54240c
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x0040691d    8b442408
    asm("{disp8} mov        dword ptr [esp + 0x48], edx");                   // 0x00406921    89542448
    asm("{disp8} mov        dword ptr [esp + 0x44], eax");                   // 0x00406925    89442444
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                   // 0x00406929    8b442410
    asm("{disp8} lea        edx, dword ptr [esp + 0x14]");                   // 0x0040692d    8d542414
    asm("push               edx");                                           // 0x00406931    52
    asm("{disp8} mov        dword ptr [esp + 0x38], edi");                   // 0x00406932    897c2438
    asm("{disp8} mov        dword ptr [esp + 0x20], 0x00000001");            // 0x00406936    c744242001000000
    asm("{disp8} mov        dword ptr [esp + 0x50], eax");                   // 0x0040693e    89442450
    asm("{disp8} mov        dword ptr [esp + 0x24], 0x00000000");            // 0x00406942    c744242400000000
    asm("call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12");                          // 0x0040694a    e8e1340200
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x0040694f    8d4c2414
    asm("call               dword ptr [rdata_bytes + 0x758]");               // 0x00406953    ff1558978a00
    asm("_jmp_addr_0x00406959:");
    asm("pop                edi");                                           // 0x00406959    5f
    asm("mov                eax, 0x00000001");                               // 0x0040695a    b801000000
    asm("pop                esi");                                           // 0x0040695f    5e
    asm("add                esp, 0x00000174");                               // 0x00406960    81c474010000
    asm("ret                0x0004");                                        // 0x00406966    c20400
    __builtin_unreachable();
}

float __fastcall GetDesireToBeRepaired__5AbodeFv(struct MultiMapFixed* this)
{
    asm("push               esi");                                           // 0x00406970    56
    asm("mov.s              esi, ecx");                                      // 0x00406971    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00406973    8b06
    asm("push               edi");                                           // 0x00406975    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x00406976    ff5048
    asm("mov                edx, dword ptr [esi]");                          // 0x00406979    8b16
    asm("{disp8} mov        edi, dword ptr [eax + 0x28]");                   // 0x0040697b    8b7828
    asm("mov.s              ecx, esi");                                      // 0x0040697e    8bce
    asm("call               dword ptr [edx + 0x884]");                       // 0x00406980    ff9284080000
    asm("{disp32} fcomp     dword ptr [edi + 0x0000010c]");                  // 0x00406986    d89f0c010000
    asm("fnstsw             ax");                                            // 0x0040698c    dfe0
    asm("test               ah, 0x41");                                      // 0x0040698e    f6c441
    asm("{disp8} je         _jmp_addr_0x004069b3");                          // 0x00406991    7420
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00406993    8b4628
    asm("test               byte ptr [eax + 0x00000120], 0x02");             // 0x00406996    f6802001000002
    asm("{disp8} je         _jmp_addr_0x004069a9");                          // 0x0040699d    740a
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000a4]");             // 0x0040699f    8b86a4000000
    asm("test               eax, eax");                                      // 0x004069a5    85c0
    asm("{disp8} je         _jmp_addr_0x004069b3");                          // 0x004069a7    740a
    asm("_jmp_addr_0x004069a9:");
    asm("mov.s              ecx, esi");                                      // 0x004069a9    8bce
    asm("call               ?GetDesireToBeRepaired@MultiMapFixed@@UAEMXZ");  // 0x004069ab    e830831200
    asm("pop                edi");                                           // 0x004069b0    5f
    asm("pop                esi");                                           // 0x004069b1    5e
    asm("ret");                                                              // 0x004069b2    c3
    asm("_jmp_addr_0x004069b3:");
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x004069b3    d90598a38a00
    asm("pop                edi");                                           // 0x004069b9    5f
    asm("pop                esi");                                           // 0x004069ba    5e
    asm("ret");                                                              // 0x004069bb    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct Villager* __fastcall FindVillager__5AbodeFPFP16GameThingWithPos18SCRIPT_OBJECT_TYPEUl_i18SCRIPT_OBJECT_TYPEUl(struct Abode* this, const void* edx, int (* param_1)(struct GameThingWithPos* param_1, enum SCRIPT_OBJECT_TYPE param_2, uint32_t param_3), enum SCRIPT_OBJECT_TYPE param_2, uint32_t param_3)
{
    asm("push               ebx");                                           // 0x004069c0    53
    asm("push               ebp");                                           // 0x004069c1    55
    asm("push               esi");                                           // 0x004069c2    56
    asm("{disp32} mov       esi, dword ptr [ecx + 0x000000a0]");             // 0x004069c3    8bb1a0000000
    asm("test               esi, esi");                                      // 0x004069c9    85f6
    asm("push               edi");                                           // 0x004069cb    57
    asm("{disp8} je         _jmp_addr_0x004069f0");                          // 0x004069cc    7422
    asm("{disp8} mov        edi, dword ptr [esp + 0x1c]");                   // 0x004069ce    8b7c241c
    asm("{disp8} mov        ebx, dword ptr [esp + 0x18]");                   // 0x004069d2    8b5c2418
    asm("{disp8} mov        ebp, dword ptr [esp + 0x14]");                   // 0x004069d6    8b6c2414
    asm("_jmp_addr_0x004069da:");
    asm("push               edi");                                           // 0x004069da    57
    asm("push               ebx");                                           // 0x004069db    53
    asm("push               esi");                                           // 0x004069dc    56
    asm("call               ebp");                                           // 0x004069dd    ffd5
    asm("add                esp, 0x0c");                                     // 0x004069df    83c40c
    asm("test               eax, eax");                                      // 0x004069e2    85c0
    asm("{disp8} jne        _jmp_addr_0x004069f9");                          // 0x004069e4    7513
    asm("{disp32} mov       esi, dword ptr [esi + 0x000000e4]");             // 0x004069e6    8bb6e4000000
    asm("test               esi, esi");                                      // 0x004069ec    85f6
    asm("{disp8} jne        _jmp_addr_0x004069da");                          // 0x004069ee    75ea
    asm("_jmp_addr_0x004069f0:");
    asm("pop                edi");                                           // 0x004069f0    5f
    asm("pop                esi");                                           // 0x004069f1    5e
    asm("pop                ebp");                                           // 0x004069f2    5d
    asm("xor.s              eax, eax");                                      // 0x004069f3    33c0
    asm("pop                ebx");                                           // 0x004069f5    5b
    asm("ret                0x000c");                                        // 0x004069f6    c20c00
    asm("_jmp_addr_0x004069f9:");
    asm("pop                edi");                                           // 0x004069f9    5f
    asm("mov.s              eax, esi");                                      // 0x004069fa    8bc6
    asm("pop                esi");                                           // 0x004069fc    5e
    asm("pop                ebp");                                           // 0x004069fd    5d
    asm("pop                ebx");                                           // 0x004069fe    5b
    asm("ret                0x000c");                                        // 0x004069ff    c20c00
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall Save__5AbodeFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file)
{
    asm("push               ecx");                                           // 0x00406a10    51
    asm("push               ebx");                                           // 0x00406a11    53
    asm("push               esi");                                           // 0x00406a12    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x10]");                   // 0x00406a13    8b742410
    asm("mov.s              ebx, ecx");                                      // 0x00406a17    8bd9
    asm("push               esi");                                           // 0x00406a19    56
    asm("call               ?Save@MultiMapFixed@@UAEIPAVGameOSFile@@@Z");    // 0x00406a1a    e831881200
    asm("test               eax, eax");                                      // 0x00406a1f    85c0
    asm("{disp32} je        _jmp_addr_0x00406d09");                          // 0x00406a21    0f84e2020000
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x226990]");        // 0x00406a27    a190c9be00
    asm("push               ebp");                                           // 0x00406a2c    55
    asm("xor.s              ebp, ebp");                                      // 0x00406a2d    33ed
    asm("cmp.s              eax, ebp");                                      // 0x00406a2f    3bc5
    asm("push               edi");                                           // 0x00406a31    57
    asm("{disp32} je        _jmp_addr_0x00406ad6");                          // 0x00406a32    0f849e000000
    asm("push               ebp");                                           // 0x00406a38    55
    asm("push               0x1");                                           // 0x00406a39    6a01
    asm("{disp8} lea        edi, dword ptr [ebx + 0x7c]");                   // 0x00406a3b    8d7b7c
    asm("push               edi");                                           // 0x00406a3e    57
    asm("mov.s              ecx, esi");                                      // 0x00406a3f    8bce
    asm("call               @Write__8LHOSFileFPvUlPUl@20");                  // 0x00406a41    e8da5e3b00
    asm("cmp                eax, 0x03");                                     // 0x00406a46    83f803
    asm("{disp8} jne        _jmp_addr_0x00406a51");                          // 0x00406a49    7506
    asm("{disp32} mov       dword ptr [data_bytes + 0x226990], ebp");        // 0x00406a4b    892d90c9be00
    asm("_jmp_addr_0x00406a51:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000214]");             // 0x00406a51    8b8e14020000
    asm("xor.s              eax, eax");                                      // 0x00406a57    33c0
    asm("mov                al, byte ptr [edi]");                            // 0x00406a59    8a07
    asm("inc                eax");                                           // 0x00406a5b    40
    asm("add.s              ecx, eax");                                      // 0x00406a5c    03c8
    asm("{disp32} mov       dword ptr [esi + 0x00000214], ecx");             // 0x00406a5e    898e14020000
    asm("cmp                dword ptr [data_bytes + 0x226990], ebp");        // 0x00406a64    392d90c9be00
    asm("{disp8} je         _jmp_addr_0x00406ad6");                          // 0x00406a6a    746a
    asm("push               ebp");                                           // 0x00406a6c    55
    asm("push               0xc");                                           // 0x00406a6d    6a0c
    asm("{disp32} lea       edi, dword ptr [ebx + 0x00000080]");             // 0x00406a6f    8dbb80000000
    asm("push               edi");                                           // 0x00406a75    57
    asm("mov.s              ecx, esi");                                      // 0x00406a76    8bce
    asm("call               @Write__8LHOSFileFPvUlPUl@20");                  // 0x00406a78    e8a35e3b00
    asm("cmp                eax, 0x03");                                     // 0x00406a7d    83f803
    asm("{disp8} jne        _jmp_addr_0x00406a88");                          // 0x00406a80    7506
    asm("{disp32} mov       dword ptr [data_bytes + 0x226990], ebp");        // 0x00406a82    892d90c9be00
    asm("_jmp_addr_0x00406a88:");
    asm("{disp32} mov       edx, dword ptr [esi + 0x00000214]");             // 0x00406a88    8b9614020000
    asm("xor.s              ecx, ecx");                                      // 0x00406a8e    33c9
    asm("mov                cl, byte ptr [edi]");                            // 0x00406a90    8a0f
    asm("add                ecx, 0xc");                                      // 0x00406a92    83c10c
    asm("add.s              edx, ecx");                                      // 0x00406a95    03d1
    asm("{disp32} mov       dword ptr [esi + 0x00000214], edx");             // 0x00406a97    899614020000
    asm("cmp                dword ptr [data_bytes + 0x226990], ebp");        // 0x00406a9d    392d90c9be00
    asm("{disp8} je         _jmp_addr_0x00406ad6");                          // 0x00406aa3    7431
    asm("push               ebp");                                           // 0x00406aa5    55
    asm("push               0x4");                                           // 0x00406aa6    6a04
    asm("{disp32} lea       edi, dword ptr [ebx + 0x00000094]");             // 0x00406aa8    8dbb94000000
    asm("push               edi");                                           // 0x00406aae    57
    asm("mov.s              ecx, esi");                                      // 0x00406aaf    8bce
    asm("call               @Write__8LHOSFileFPvUlPUl@20");                  // 0x00406ab1    e86a5e3b00
    asm("cmp                eax, 0x03");                                     // 0x00406ab6    83f803
    asm("{disp8} jne        _jmp_addr_0x00406ac1");                          // 0x00406ab9    7506
    asm("{disp32} mov       dword ptr [data_bytes + 0x226990], ebp");        // 0x00406abb    892d90c9be00
    asm("_jmp_addr_0x00406ac1:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000214]");             // 0x00406ac1    8b8614020000
    asm("xor.s              edx, edx");                                      // 0x00406ac7    33d2
    asm("mov                dl, byte ptr [edi]");                            // 0x00406ac9    8a17
    asm("add                edx, 0x04");                                     // 0x00406acb    83c204
    asm("add.s              eax, edx");                                      // 0x00406ace    03c2
    asm("{disp32} mov       dword ptr [esi + 0x00000214], eax");             // 0x00406ad0    898614020000
    asm("_jmp_addr_0x00406ad6:");
    asm("{disp32} mov       eax, dword ptr [ebx + 0x00000098]");             // 0x00406ad6    8b8398000000
    asm("push               eax");                                           // 0x00406adc    50
    asm("mov.s              ecx, esi");                                      // 0x00406add    8bce
    asm("call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z");                          // 0x00406adf    e82cb31500
    asm("cmp                dword ptr [data_bytes + 0x226990], ebp");        // 0x00406ae4    392d90c9be00
    asm("{disp32} je        _jmp_addr_0x00406c4b");                          // 0x00406aea    0f845b010000
    asm("{disp32} mov       ecx, dword ptr [ebx + 0x000000a4]");             // 0x00406af0    8b8ba4000000
    asm("{disp32} lea       eax, dword ptr [ebx + 0x000000a4]");             // 0x00406af6    8d83a4000000
    asm("{disp8} mov        dword ptr [esp + 0x18], ecx");                   // 0x00406afc    894c2418
    asm("push               eax");                                           // 0x00406b00    50
    asm("mov.s              ecx, esi");                                      // 0x00406b01    8bce
    asm("call               _WriteIt_u32___10GameOSFileFRUl);//??$WriteIt@I@GameOSFile@@QAEXAAI@Z");            // 0x00406b03    e8f80b0000
    asm("xor.s              edi, edi");                                      // 0x00406b08    33ff
    asm("_jmp_addr_0x00406b0a:");
    asm("test               edi, edi");                                      // 0x00406b0a    85ff
    asm("{disp8} jne        _jmp_addr_0x00406b16");                          // 0x00406b0c    7508
    asm("{disp32} mov       edi, dword ptr [ebx + 0x000000a0]");             // 0x00406b0e    8bbba0000000
    asm("{disp8} jmp        _jmp_addr_0x00406b1c");                          // 0x00406b14    eb06
    asm("_jmp_addr_0x00406b16:");
    asm("{disp32} mov       edi, dword ptr [edi + 0x000000e4]");             // 0x00406b16    8bbfe4000000
    asm("_jmp_addr_0x00406b1c:");
    asm("test               edi, edi");                                      // 0x00406b1c    85ff
    asm("{disp8} je         _jmp_addr_0x00406b4f");                          // 0x00406b1e    742f
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                   // 0x00406b20    8b442418
    asm("inc                ebp");                                           // 0x00406b24    45
    asm("cmp.s              ebp, eax");                                      // 0x00406b25    3be8
    asm("{disp8} jg         _jmp_addr_0x00406b40");                          // 0x00406b27    7f17
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x226990]");        // 0x00406b29    a190c9be00
    asm("test               eax, eax");                                      // 0x00406b2e    85c0
    asm("{disp32} je        _jmp_addr_0x00406c4b");                          // 0x00406b30    0f8415010000
    asm("push               edi");                                           // 0x00406b36    57
    asm("mov.s              ecx, esi");                                      // 0x00406b37    8bce
    asm("call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z");                          // 0x00406b39    e8d2b21500
    asm("{disp8} jmp        _jmp_addr_0x00406b0a");                          // 0x00406b3e    ebca
    asm("_jmp_addr_0x00406b40:");
    asm("{disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00406b40    c70590c9be0000000000
    asm("{disp32} jmp       _jmp_addr_0x00406c4b");                          // 0x00406b4a    e9fc000000
    asm("_jmp_addr_0x00406b4f:");
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x226990]");        // 0x00406b4f    a190c9be00
    asm("test               eax, eax");                                      // 0x00406b54    85c0
    asm("{disp32} je        _jmp_addr_0x00406c4b");                          // 0x00406b56    0f84ef000000
    asm("push               0x0");                                           // 0x00406b5c    6a00
    asm("push               0x1");                                           // 0x00406b5e    6a01
    asm("{disp32} lea       edi, dword ptr [ebx + 0x000000b4]");             // 0x00406b60    8dbbb4000000
    asm("push               edi");                                           // 0x00406b66    57
    asm("mov.s              ecx, esi");                                      // 0x00406b67    8bce
    asm("call               @Write__8LHOSFileFPvUlPUl@20");                  // 0x00406b69    e8b25d3b00
    asm("cmp                eax, 0x03");                                     // 0x00406b6e    83f803
    asm("{disp8} jne        _jmp_addr_0x00406b7d");                          // 0x00406b71    750a
    asm("{disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00406b73    c70590c9be0000000000
    asm("_jmp_addr_0x00406b7d:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000214]");             // 0x00406b7d    8b8e14020000
    asm("xor.s              edx, edx");                                      // 0x00406b83    33d2
    asm("mov                dl, byte ptr [edi]");                            // 0x00406b85    8a17
    asm("inc                edx");                                           // 0x00406b87    42
    asm("add.s              ecx, edx");                                      // 0x00406b88    03ca
    asm("{disp32} mov       dword ptr [esi + 0x00000214], ecx");             // 0x00406b8a    898e14020000
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x226990]");        // 0x00406b90    a190c9be00
    asm("test               eax, eax");                                      // 0x00406b95    85c0
    asm("{disp32} je        _jmp_addr_0x00406c4b");                          // 0x00406b97    0f84ae000000
    asm("push               0x0");                                           // 0x00406b9d    6a00
    asm("push               0x1");                                           // 0x00406b9f    6a01
    asm("{disp32} lea       edi, dword ptr [ebx + 0x000000b6]");             // 0x00406ba1    8dbbb6000000
    asm("push               edi");                                           // 0x00406ba7    57
    asm("mov.s              ecx, esi");                                      // 0x00406ba8    8bce
    asm("call               @Write__8LHOSFileFPvUlPUl@20");                  // 0x00406baa    e8715d3b00
    asm("cmp                eax, 0x03");                                     // 0x00406baf    83f803
    asm("{disp8} jne        _jmp_addr_0x00406bbe");                          // 0x00406bb2    750a
    asm("{disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00406bb4    c70590c9be0000000000
    asm("_jmp_addr_0x00406bbe:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000214]");             // 0x00406bbe    8b8e14020000
    asm("xor.s              eax, eax");                                      // 0x00406bc4    33c0
    asm("mov                al, byte ptr [edi]");                            // 0x00406bc6    8a07
    asm("inc                eax");                                           // 0x00406bc8    40
    asm("add.s              ecx, eax");                                      // 0x00406bc9    03c8
    asm("{disp32} mov       dword ptr [esi + 0x00000214], ecx");             // 0x00406bcb    898e14020000
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x226990]");        // 0x00406bd1    a190c9be00
    asm("test               eax, eax");                                      // 0x00406bd6    85c0
    asm("{disp8} je         _jmp_addr_0x00406c4b");                          // 0x00406bd8    7471
    asm("push               0x0");                                           // 0x00406bda    6a00
    asm("push               0x1");                                           // 0x00406bdc    6a01
    asm("{disp32} lea       edi, dword ptr [ebx + 0x000000b7]");             // 0x00406bde    8dbbb7000000
    asm("push               edi");                                           // 0x00406be4    57
    asm("mov.s              ecx, esi");                                      // 0x00406be5    8bce
    asm("call               @Write__8LHOSFileFPvUlPUl@20");                  // 0x00406be7    e8345d3b00
    asm("cmp                eax, 0x03");                                     // 0x00406bec    83f803
    asm("{disp8} jne        _jmp_addr_0x00406bfb");                          // 0x00406bef    750a
    asm("{disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00406bf1    c70590c9be0000000000
    asm("_jmp_addr_0x00406bfb:");
    asm("{disp32} mov       edx, dword ptr [esi + 0x00000214]");             // 0x00406bfb    8b9614020000
    asm("xor.s              ecx, ecx");                                      // 0x00406c01    33c9
    asm("mov                cl, byte ptr [edi]");                            // 0x00406c03    8a0f
    asm("inc                ecx");                                           // 0x00406c05    41
    asm("add.s              edx, ecx");                                      // 0x00406c06    03d1
    asm("{disp32} mov       dword ptr [esi + 0x00000214], edx");             // 0x00406c08    899614020000
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x226990]");        // 0x00406c0e    a190c9be00
    asm("test               eax, eax");                                      // 0x00406c13    85c0
    asm("{disp8} je         _jmp_addr_0x00406c4b");                          // 0x00406c15    7434
    asm("push               0x0");                                           // 0x00406c17    6a00
    asm("push               0x1");                                           // 0x00406c19    6a01
    asm("{disp32} lea       edi, dword ptr [ebx + 0x000000b8]");             // 0x00406c1b    8dbbb8000000
    asm("push               edi");                                           // 0x00406c21    57
    asm("mov.s              ecx, esi");                                      // 0x00406c22    8bce
    asm("call               @Write__8LHOSFileFPvUlPUl@20");                  // 0x00406c24    e8f75c3b00
    asm("cmp                eax, 0x03");                                     // 0x00406c29    83f803
    asm("{disp8} jne        _jmp_addr_0x00406c38");                          // 0x00406c2c    750a
    asm("{disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00406c2e    c70590c9be0000000000
    asm("_jmp_addr_0x00406c38:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000214]");             // 0x00406c38    8b8614020000
    asm("xor.s              edx, edx");                                      // 0x00406c3e    33d2
    asm("mov                dl, byte ptr [edi]");                            // 0x00406c40    8a17
    asm("inc                edx");                                           // 0x00406c42    42
    asm("add.s              eax, edx");                                      // 0x00406c43    03c2
    asm("{disp32} mov       dword ptr [esi + 0x00000214], eax");             // 0x00406c45    898614020000
    asm("_jmp_addr_0x00406c4b:");
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x226990]");        // 0x00406c4b    a190c9be00
    asm("test               eax, eax");                                      // 0x00406c50    85c0
    asm("{disp8} mov        dword ptr [esp + 0x18], 0x00000002");            // 0x00406c52    c744241802000000
    asm("{disp8} je         _jmp_addr_0x00406c95");                          // 0x00406c5a    7439
    asm("{disp8} lea        eax, dword ptr [esp + 0x18]");                   // 0x00406c5c    8d442418
    asm("push               eax");                                           // 0x00406c60    50
    asm("mov.s              ecx, esi");                                      // 0x00406c61    8bce
    asm("call               _WriteIt_u32___10GameOSFileFRUl);//??$WriteIt@I@GameOSFile@@QAEXAAI@Z");            // 0x00406c63    e8980a0000
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                   // 0x00406c68    8b442418
    asm("xor.s              ebp, ebp");                                      // 0x00406c6c    33ed
    asm("test               eax, eax");                                      // 0x00406c6e    85c0
    asm("{disp8} jbe        _jmp_addr_0x00406c95");                          // 0x00406c70    7623
    asm("{disp32} lea       edi, dword ptr [ebx + 0x000000bc]");             // 0x00406c72    8dbbbc000000
    asm("_jmp_addr_0x00406c78:");
    asm("push               edi");                                           // 0x00406c78    57
    asm("mov.s              ecx, esi");                                      // 0x00406c79    8bce
    asm("call               _WriteIt_u32___10GameOSFileFRUl);//??$WriteIt@I@GameOSFile@@QAEXAAI@Z");            // 0x00406c7b    e8800a0000
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x226990]");        // 0x00406c80    a190c9be00
    asm("test               eax, eax");                                      // 0x00406c85    85c0
    asm("{disp8} je         _jmp_addr_0x00406c95");                          // 0x00406c87    740c
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                   // 0x00406c89    8b442418
    asm("inc                ebp");                                           // 0x00406c8d    45
    asm("add                edi, 0x04");                                     // 0x00406c8e    83c704
    asm("cmp.s              ebp, eax");                                      // 0x00406c91    3be8
    asm(".byte              0x72, 0xe3");// {disp8} jb _jmp_addr_0x00406c78  // 0x00406c93    72e3
    asm("_jmp_addr_0x00406c95:");
    asm("{disp32} mov       edx, dword ptr [ebx + 0x00000090]");             // 0x00406c95    8b9390000000
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x226990]");        // 0x00406c9b    8b0d90c9be00
    asm("xor.s              eax, eax");                                      // 0x00406ca1    33c0
    asm("test               edx, edx");                                      // 0x00406ca3    85d2
    asm("setne              al");                                            // 0x00406ca5    0f95c0
    asm("test               ecx, ecx");                                      // 0x00406ca8    85c9
    asm("pop                edi");                                           // 0x00406caa    5f
    asm("pop                ebp");                                           // 0x00406cab    5d
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                   // 0x00406cac    89442408
    asm("{disp8} je         _jmp_addr_0x00406cee");                          // 0x00406cb0    743c
    asm("push               0x0");                                           // 0x00406cb2    6a00
    asm("push               0x4");                                           // 0x00406cb4    6a04
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x00406cb6    8d4c2410
    asm("push               ecx");                                           // 0x00406cba    51
    asm("mov.s              ecx, esi");                                      // 0x00406cbb    8bce
    asm("call               @Write__8LHOSFileFPvUlPUl@20");                  // 0x00406cbd    e85e5c3b00
    asm("cmp                eax, 0x03");                                     // 0x00406cc2    83f803
    asm("{disp8} jne        _jmp_addr_0x00406cd1");                          // 0x00406cc5    750a
    asm("{disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000"); // 0x00406cc7    c70590c9be0000000000
    asm("_jmp_addr_0x00406cd1:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x00406cd1    8b442408
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000214]");             // 0x00406cd5    8b8e14020000
    asm("mov.s              edx, eax");                                      // 0x00406cdb    8bd0
    asm("and                edx, 0x000000ff");                               // 0x00406cdd    81e2ff000000
    asm("add                edx, 0x04");                                     // 0x00406ce3    83c204
    asm("add.s              ecx, edx");                                      // 0x00406ce6    03ca
    asm("{disp32} mov       dword ptr [esi + 0x00000214], ecx");             // 0x00406ce8    898e14020000
    asm("_jmp_addr_0x00406cee:");
    asm("test               eax, eax");                                      // 0x00406cee    85c0
    asm("{disp8} je         _jmp_addr_0x00406cfe");                          // 0x00406cf0    740c
    asm("{disp32} mov       ecx, dword ptr [ebx + 0x00000090]");             // 0x00406cf2    8b8b90000000
    asm("push               esi");                                           // 0x00406cf8    56
    asm("call               _jmp_addr_0x0076d680");                          // 0x00406cf9    e882693600
    asm("_jmp_addr_0x00406cfe:");
    asm("pop                esi");                                           // 0x00406cfe    5e
    asm("mov                eax, 0x00000001");                               // 0x00406cff    b801000000
    asm("pop                ebx");                                           // 0x00406d04    5b
    asm("pop                ecx");                                           // 0x00406d05    59
    asm("ret                0x0004");                                        // 0x00406d06    c20400
    asm("_jmp_addr_0x00406d09:");
    asm("pop                esi");                                           // 0x00406d09    5e
    asm("xor.s              eax, eax");                                      // 0x00406d0a    33c0
    asm("pop                ebx");                                           // 0x00406d0c    5b
    asm("pop                ecx");                                           // 0x00406d0d    59
    asm("ret                0x0004");                                        // 0x00406d0e    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall Load__5AbodeFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file)
{
    asm("sub                esp, 0x08");                                     // 0x00406d20    83ec08
    asm("push               ebp");                                           // 0x00406d23    55
    asm("push               esi");                                           // 0x00406d24    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x14]");                   // 0x00406d25    8b742414
    asm("mov.s              ebp, ecx");                                      // 0x00406d29    8be9
    asm("push               esi");                                           // 0x00406d2b    56
    asm("call               @Load__13MultiMapFixedFR10GameOSFile@12");       // 0x00406d2c    e8df851200
    asm("test               eax, eax");                                      // 0x00406d31    85c0
    asm("{disp32} je        _jmp_addr_0x00407015");                          // 0x00406d33    0f84dc020000
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x226994]");        // 0x00406d39    a194c9be00
    asm("push               ebx");                                           // 0x00406d3e    53
    asm("xor.s              ebx, ebx");                                      // 0x00406d3f    33db
    asm("cmp.s              eax, ebx");                                      // 0x00406d41    3bc3
    asm("push               edi");                                           // 0x00406d43    57
    asm("{disp8} lea        edi, dword ptr [ebp + 0x7c]");                   // 0x00406d44    8d7d7c
    asm("{disp8} je         _jmp_addr_0x00406d72");                          // 0x00406d47    7429
    asm("push               ebx");                                           // 0x00406d49    53
    asm("push               0x1");                                           // 0x00406d4a    6a01
    asm("push               edi");                                           // 0x00406d4c    57
    asm("mov.s              ecx, esi");                                      // 0x00406d4d    8bce
    asm("call               @Read__8LHOSFileFPvUlPUl@20");                   // 0x00406d4f    e88c5b3b00
    asm("cmp                eax, 0x03");                                     // 0x00406d54    83f803
    asm("{disp8} jne        _jmp_addr_0x00406d5f");                          // 0x00406d57    7506
    asm("{disp32} mov       dword ptr [data_bytes + 0x226994], ebx");        // 0x00406d59    891d94c9be00
    asm("_jmp_addr_0x00406d5f:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000214]");             // 0x00406d5f    8b8e14020000
    asm("xor.s              eax, eax");                                      // 0x00406d65    33c0
    asm("mov                al, byte ptr [edi]");                            // 0x00406d67    8a07
    asm("inc                eax");                                           // 0x00406d69    40
    asm("add.s              ecx, eax");                                      // 0x00406d6a    03c8
    asm("{disp32} mov       dword ptr [esi + 0x00000214], ecx");             // 0x00406d6c    898e14020000
    asm("_jmp_addr_0x00406d72:");
    asm("cmp                dword ptr [data_bytes + 0x226994], ebx");        // 0x00406d72    391d94c9be00
    asm("{disp32} lea       edi, dword ptr [ebp + 0x00000080]");             // 0x00406d78    8dbd80000000
    asm("{disp8} je         _jmp_addr_0x00406dab");                          // 0x00406d7e    742b
    asm("push               ebx");                                           // 0x00406d80    53
    asm("push               0xc");                                           // 0x00406d81    6a0c
    asm("push               edi");                                           // 0x00406d83    57
    asm("mov.s              ecx, esi");                                      // 0x00406d84    8bce
    asm("call               @Read__8LHOSFileFPvUlPUl@20");                   // 0x00406d86    e8555b3b00
    asm("cmp                eax, 0x03");                                     // 0x00406d8b    83f803
    asm("{disp8} jne        _jmp_addr_0x00406d96");                          // 0x00406d8e    7506
    asm("{disp32} mov       dword ptr [data_bytes + 0x226994], ebx");        // 0x00406d90    891d94c9be00
    asm("_jmp_addr_0x00406d96:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000214]");             // 0x00406d96    8b8614020000
    asm("xor.s              ecx, ecx");                                      // 0x00406d9c    33c9
    asm("mov                cl, byte ptr [edi]");                            // 0x00406d9e    8a0f
    asm("add                ecx, 0xc");                                      // 0x00406da0    83c10c
    asm("add.s              eax, ecx");                                      // 0x00406da3    03c1
    asm("{disp32} mov       dword ptr [esi + 0x00000214], eax");             // 0x00406da5    898614020000
    asm("_jmp_addr_0x00406dab:");
    asm("cmp                dword ptr [data_bytes + 0x226994], ebx");        // 0x00406dab    391d94c9be00
    asm("{disp32} lea       edi, dword ptr [ebp + 0x00000094]");             // 0x00406db1    8dbd94000000
    asm("{disp8} je         _jmp_addr_0x00406de4");                          // 0x00406db7    742b
    asm("push               ebx");                                           // 0x00406db9    53
    asm("push               0x4");                                           // 0x00406dba    6a04
    asm("push               edi");                                           // 0x00406dbc    57
    asm("mov.s              ecx, esi");                                      // 0x00406dbd    8bce
    asm("call               @Read__8LHOSFileFPvUlPUl@20");                   // 0x00406dbf    e81c5b3b00
    asm("cmp                eax, 0x03");                                     // 0x00406dc4    83f803
    asm("{disp8} jne        _jmp_addr_0x00406dcf");                          // 0x00406dc7    7506
    asm("{disp32} mov       dword ptr [data_bytes + 0x226994], ebx");        // 0x00406dc9    891d94c9be00
    asm("_jmp_addr_0x00406dcf:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000214]");             // 0x00406dcf    8b8614020000
    asm("xor.s              edx, edx");                                      // 0x00406dd5    33d2
    asm("mov                dl, byte ptr [edi]");                            // 0x00406dd7    8a17
    asm("add                edx, 0x04");                                     // 0x00406dd9    83c204
    asm("add.s              eax, edx");                                      // 0x00406ddc    03c2
    asm("{disp32} mov       dword ptr [esi + 0x00000214], eax");             // 0x00406dde    898614020000
    asm("_jmp_addr_0x00406de4:");
    asm("{disp32} lea       eax, dword ptr [ebp + 0x00000098]");             // 0x00406de4    8d8598000000
    asm("push               eax");                                           // 0x00406dea    50
    asm("mov.s              ecx, esi");                                      // 0x00406deb    8bce
    asm("call               @ReadPtr__10GameOSFileFPP9GameThing@12");        // 0x00406ded    e88eb31500
    asm("cmp                dword ptr [data_bytes + 0x226994], ebx");        // 0x00406df2    391d94c9be00
    asm("{disp8} je         _jmp_addr_0x00406e41");                          // 0x00406df8    7447
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                   // 0x00406dfa    8d4c241c
    asm("push               ecx");                                           // 0x00406dfe    51
    asm("mov.s              ecx, esi");                                      // 0x00406dff    8bce
    asm("call               _ReadIt_i32___10GameOSFileFRl");                 // 0x00406e01    e84a090000
    asm("cmp                dword ptr [esp + 0x1c], ebx");                   // 0x00406e06    395c241c
    asm("{disp8} jle        _jmp_addr_0x00406e41");                          // 0x00406e0a    7e35
    asm("{disp32} lea       edi, dword ptr [ebp + 0x000000a0]");             // 0x00406e0c    8dbda0000000
    asm("_jmp_addr_0x00406e12:");
    asm("{disp8} lea        edx, dword ptr [esp + 0x10]");                   // 0x00406e12    8d542410
    asm("push               edx");                                           // 0x00406e16    52
    asm("mov.s              ecx, esi");                                      // 0x00406e17    8bce
    asm("call               @ReadPtr__10GameOSFileFPP9GameThing@12");        // 0x00406e19    e862b31500
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                   // 0x00406e1e    8b442410
    asm("{disp32} mov       dword ptr [eax + 0x000000e4], ebx");             // 0x00406e22    8998e4000000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00406e28    8b4c2410
    asm("push               ecx");                                           // 0x00406e2c    51
    asm("mov.s              ecx, edi");                                      // 0x00406e2d    8bcf
    asm("call               _AddToLast__21LHListHead_8Villager_FP8Villager");// 0x00406e2f    e8bc090000
    asm("{disp8} mov        eax, dword ptr [esp + 0x1c]");                   // 0x00406e34    8b44241c
    asm("dec                eax");                                           // 0x00406e38    48
    asm("cmp.s              eax, ebx");                                      // 0x00406e39    3bc3
    asm("{disp8} mov        dword ptr [esp + 0x1c], eax");                   // 0x00406e3b    8944241c
    asm("{disp8} jg         _jmp_addr_0x00406e12");                          // 0x00406e3f    7fd1
    asm("_jmp_addr_0x00406e41:");
    asm("{disp32} mov       dword ptr [ebp + 0x000000a8], ebx");             // 0x00406e41    899da8000000
    asm("{disp32} mov       dword ptr [ebp + 0x000000ac], ebx");             // 0x00406e47    899dac000000
    asm("cmp                dword ptr [data_bytes + 0x226994], ebx");        // 0x00406e4d    391d94c9be00
    asm("{disp32} lea       edi, dword ptr [ebp + 0x000000b4]");             // 0x00406e53    8dbdb4000000
    asm("{disp8} je         _jmp_addr_0x00406e84");                          // 0x00406e59    7429
    asm("push               ebx");                                           // 0x00406e5b    53
    asm("push               0x1");                                           // 0x00406e5c    6a01
    asm("push               edi");                                           // 0x00406e5e    57
    asm("mov.s              ecx, esi");                                      // 0x00406e5f    8bce
    asm("call               @Read__8LHOSFileFPvUlPUl@20");                   // 0x00406e61    e87a5a3b00
    asm("cmp                eax, 0x03");                                     // 0x00406e66    83f803
    asm("{disp8} jne        _jmp_addr_0x00406e71");                          // 0x00406e69    7506
    asm("{disp32} mov       dword ptr [data_bytes + 0x226994], ebx");        // 0x00406e6b    891d94c9be00
    asm("_jmp_addr_0x00406e71:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000214]");             // 0x00406e71    8b8614020000
    asm("xor.s              edx, edx");                                      // 0x00406e77    33d2
    asm("mov                dl, byte ptr [edi]");                            // 0x00406e79    8a17
    asm("inc                edx");                                           // 0x00406e7b    42
    asm("add.s              eax, edx");                                      // 0x00406e7c    03c2
    asm("{disp32} mov       dword ptr [esi + 0x00000214], eax");             // 0x00406e7e    898614020000
    asm("_jmp_addr_0x00406e84:");
    asm("cmp                dword ptr [data_bytes + 0x226994], ebx");        // 0x00406e84    391d94c9be00
    asm("{disp32} lea       edi, dword ptr [ebp + 0x000000b6]");             // 0x00406e8a    8dbdb6000000
    asm("{disp8} je         _jmp_addr_0x00406ebb");                          // 0x00406e90    7429
    asm("push               ebx");                                           // 0x00406e92    53
    asm("push               0x1");                                           // 0x00406e93    6a01
    asm("push               edi");                                           // 0x00406e95    57
    asm("mov.s              ecx, esi");                                      // 0x00406e96    8bce
    asm("call               @Read__8LHOSFileFPvUlPUl@20");                   // 0x00406e98    e8435a3b00
    asm("cmp                eax, 0x03");                                     // 0x00406e9d    83f803
    asm("{disp8} jne        _jmp_addr_0x00406ea8");                          // 0x00406ea0    7506
    asm("{disp32} mov       dword ptr [data_bytes + 0x226994], ebx");        // 0x00406ea2    891d94c9be00
    asm("_jmp_addr_0x00406ea8:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000214]");             // 0x00406ea8    8b8e14020000
    asm("xor.s              eax, eax");                                      // 0x00406eae    33c0
    asm("mov                al, byte ptr [edi]");                            // 0x00406eb0    8a07
    asm("inc                eax");                                           // 0x00406eb2    40
    asm("add.s              ecx, eax");                                      // 0x00406eb3    03c8
    asm("{disp32} mov       dword ptr [esi + 0x00000214], ecx");             // 0x00406eb5    898e14020000
    asm("_jmp_addr_0x00406ebb:");
    asm("cmp                dword ptr [data_bytes + 0x226994], ebx");        // 0x00406ebb    391d94c9be00
    asm("{disp32} lea       edi, dword ptr [ebp + 0x000000b7]");             // 0x00406ec1    8dbdb7000000
    asm("{disp8} je         _jmp_addr_0x00406ef2");                          // 0x00406ec7    7429
    asm("push               ebx");                                           // 0x00406ec9    53
    asm("push               0x1");                                           // 0x00406eca    6a01
    asm("push               edi");                                           // 0x00406ecc    57
    asm("mov.s              ecx, esi");                                      // 0x00406ecd    8bce
    asm("call               @Read__8LHOSFileFPvUlPUl@20");                   // 0x00406ecf    e80c5a3b00
    asm("cmp                eax, 0x03");                                     // 0x00406ed4    83f803
    asm("{disp8} jne        _jmp_addr_0x00406edf");                          // 0x00406ed7    7506
    asm("{disp32} mov       dword ptr [data_bytes + 0x226994], ebx");        // 0x00406ed9    891d94c9be00
    asm("_jmp_addr_0x00406edf:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000214]");             // 0x00406edf    8b8614020000
    asm("xor.s              ecx, ecx");                                      // 0x00406ee5    33c9
    asm("mov                cl, byte ptr [edi]");                            // 0x00406ee7    8a0f
    asm("inc                ecx");                                           // 0x00406ee9    41
    asm("add.s              eax, ecx");                                      // 0x00406eea    03c1
    asm("{disp32} mov       dword ptr [esi + 0x00000214], eax");             // 0x00406eec    898614020000
    asm("_jmp_addr_0x00406ef2:");
    asm("cmp                dword ptr [data_bytes + 0x226994], ebx");        // 0x00406ef2    391d94c9be00
    asm("{disp32} lea       edi, dword ptr [ebp + 0x000000b8]");             // 0x00406ef8    8dbdb8000000
    asm("{disp32} je        _jmp_addr_0x00406fa4");                          // 0x00406efe    0f84a0000000
    asm("push               ebx");                                           // 0x00406f04    53
    asm("push               0x1");                                           // 0x00406f05    6a01
    asm("push               edi");                                           // 0x00406f07    57
    asm("mov.s              ecx, esi");                                      // 0x00406f08    8bce
    asm("call               @Read__8LHOSFileFPvUlPUl@20");                   // 0x00406f0a    e8d1593b00
    asm("cmp                eax, 0x03");                                     // 0x00406f0f    83f803
    asm("{disp8} jne        _jmp_addr_0x00406f1a");                          // 0x00406f12    7506
    asm("{disp32} mov       dword ptr [data_bytes + 0x226994], ebx");        // 0x00406f14    891d94c9be00
    asm("_jmp_addr_0x00406f1a:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000214]");             // 0x00406f1a    8b8e14020000
    asm("xor.s              edx, edx");                                      // 0x00406f20    33d2
    asm("mov                dl, byte ptr [edi]");                            // 0x00406f22    8a17
    asm("inc                edx");                                           // 0x00406f24    42
    asm("add.s              ecx, edx");                                      // 0x00406f25    03ca
    asm("{disp32} mov       dword ptr [esi + 0x00000214], ecx");             // 0x00406f27    898e14020000
    asm("cmp                dword ptr [data_bytes + 0x226994], ebx");        // 0x00406f2d    391d94c9be00
    asm("{disp8} je         _jmp_addr_0x00406fa4");                          // 0x00406f33    746f
    asm("{disp8} lea        eax, dword ptr [esp + 0x1c]");                   // 0x00406f35    8d44241c
    asm("push               eax");                                           // 0x00406f39    50
    asm("mov.s              ecx, esi");                                      // 0x00406f3a    8bce
    asm("call               _ReadIt_u32___10GameOSFileFRUl");                // 0x00406f3c    e85f080000
    asm("{disp8} mov        eax, dword ptr [esp + 0x1c]");                   // 0x00406f41    8b44241c
    asm("xor.s              edi, edi");                                      // 0x00406f45    33ff
    asm("cmp.s              eax, ebx");                                      // 0x00406f47    3bc3
    asm("{disp8} jbe        _jmp_addr_0x00406f67");                          // 0x00406f49    761c
    asm("{disp32} lea       ebx, dword ptr [ebp + 0x000000bc]");             // 0x00406f4b    8d9dbc000000
    asm("_jmp_addr_0x00406f51:");
    asm("push               ebx");                                           // 0x00406f51    53
    asm("mov.s              ecx, esi");                                      // 0x00406f52    8bce
    asm("call               _ReadIt_u32___10GameOSFileFRUl");                // 0x00406f54    e847080000
    asm("{disp8} mov        eax, dword ptr [esp + 0x1c]");                   // 0x00406f59    8b44241c
    asm("inc                edi");                                           // 0x00406f5d    47
    asm("add                ebx, 0x04");                                     // 0x00406f5e    83c304
    asm("cmp.s              edi, eax");                                      // 0x00406f61    3bf8
    asm(".byte              0x72, 0xec");// {disp8} jb _jmp_addr_0x00406f51  // 0x00406f63    72ec
    asm("xor.s              ebx, ebx");                                      // 0x00406f65    33db
    asm("_jmp_addr_0x00406f67:");
    asm("cmp                dword ptr [data_bytes + 0x226994], ebx");        // 0x00406f67    391d94c9be00
    asm("{disp8} je         _jmp_addr_0x00406fa4");                          // 0x00406f6d    7435
    asm("push               ebx");                                           // 0x00406f6f    53
    asm("push               0x4");                                           // 0x00406f70    6a04
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                   // 0x00406f72    8d4c241c
    asm("push               ecx");                                           // 0x00406f76    51
    asm("mov.s              ecx, esi");                                      // 0x00406f77    8bce
    asm("call               @Read__8LHOSFileFPvUlPUl@20");                   // 0x00406f79    e862593b00
    asm("cmp                eax, 0x03");                                     // 0x00406f7e    83f803
    asm("{disp8} jne        _jmp_addr_0x00406f89");                          // 0x00406f81    7506
    asm("{disp32} mov       dword ptr [data_bytes + 0x226994], ebx");        // 0x00406f83    891d94c9be00
    asm("_jmp_addr_0x00406f89:");
    asm("{disp8} mov        edx, dword ptr [esp + 0x14]");                   // 0x00406f89    8b542414
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000214]");             // 0x00406f8d    8b8614020000
    asm("and                edx, 0x000000ff");                               // 0x00406f93    81e2ff000000
    asm("add                edx, 0x04");                                     // 0x00406f99    83c204
    asm("add.s              eax, edx");                                      // 0x00406f9c    03c2
    asm("{disp32} mov       dword ptr [esi + 0x00000214], eax");             // 0x00406f9e    898614020000
    asm("_jmp_addr_0x00406fa4:");
    asm("cmp                dword ptr [esp + 0x14], ebx");                   // 0x00406fa4    395c2414
    asm("{disp8} je         _jmp_addr_0x00407006");                          // 0x00406fa8    745c
    asm("push               0x000008a2");                                    // 0x00406faa    68a2080000
    asm("push               0x009c7fbc");                                    // 0x00406faf    68bc7f9c00
    asm("push               0x28");                                          // 0x00406fb4    6a28
    asm("call               ___nw__FUl");                                    // 0x00406fb6    e8d5473d00
    asm("mov.s              edi, eax");                                      // 0x00406fbb    8bf8
    asm("add                esp, 0x0c");                                     // 0x00406fbd    83c40c
    asm("cmp.s              edi, ebx");                                      // 0x00406fc0    3bfb
    asm("{disp8} je         _jmp_addr_0x00406ffe");                          // 0x00406fc2    743a
    asm("{disp8} mov        ecx, dword ptr [ebp + 0x28]");                   // 0x00406fc4    8b4d28
    asm("mov                eax, dword ptr [ecx]");                          // 0x00406fc7    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00406fc9    ff502c
    asm("cmp.s              eax, ebx");                                      // 0x00406fcc    3bc3
    asm("{disp32} mov       ecx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]");        // 0x00406fce    8b0d34fee900
    asm("{disp8} jl         _jmp_addr_0x00406fda");                          // 0x00406fd4    7c04
    asm("cmp                eax, dword ptr [ecx]");                          // 0x00406fd6    3b01
    asm("{disp8} jl         _jmp_addr_0x00406fdc");                          // 0x00406fd8    7c02
    asm("_jmp_addr_0x00406fda:");
    asm("xor.s              eax, eax");                                      // 0x00406fda    33c0
    asm("_jmp_addr_0x00406fdc:");
    asm("{disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x04]");       // 0x00406fdc    8b448104
    asm("push               eax");                                           // 0x00406fe0    50
    asm("push               esi");                                           // 0x00406fe1    56
    asm("mov.s              ecx, edi");                                      // 0x00406fe2    8bcf
    asm("call               @__ct__8FragMeshFR10GameOSFileP8LH3DMesh@16");   // 0x00406fe4    e837653600
    asm("pop                edi");                                           // 0x00406fe9    5f
    asm("pop                ebx");                                           // 0x00406fea    5b
    asm("{disp32} mov       dword ptr [ebp + 0x00000090], eax");             // 0x00406feb    898590000000
    asm("pop                esi");                                           // 0x00406ff1    5e
    asm("mov                eax, 0x00000001");                               // 0x00406ff2    b801000000
    asm("pop                ebp");                                           // 0x00406ff7    5d
    asm("add                esp, 0x08");                                     // 0x00406ff8    83c408
    asm("ret                0x0004");                                        // 0x00406ffb    c20400
    asm("_jmp_addr_0x00406ffe:");
    asm("xor.s              eax, eax");                                      // 0x00406ffe    33c0
    asm("{disp32} mov       dword ptr [ebp + 0x00000090], eax");             // 0x00407000    898590000000
    asm("_jmp_addr_0x00407006:");
    asm("pop                edi");                                           // 0x00407006    5f
    asm("pop                ebx");                                           // 0x00407007    5b
    asm("pop                esi");                                           // 0x00407008    5e
    asm("mov                eax, 0x00000001");                               // 0x00407009    b801000000
    asm("pop                ebp");                                           // 0x0040700e    5d
    asm("add                esp, 0x08");                                     // 0x0040700f    83c408
    asm("ret                0x0004");                                        // 0x00407012    c20400
    asm("_jmp_addr_0x00407015:");
    asm("pop                esi");                                           // 0x00407015    5e
    asm("xor.s              eax, eax");                                      // 0x00407016    33c0
    asm("pop                ebp");                                           // 0x00407018    5d
    asm("add                esp, 0x08");                                     // 0x00407019    83c408
    asm("ret                0x0004");                                        // 0x0040701c    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall FindNearestDrinkingWater__5AbodeFf(struct Abode* this, const void* edx, float max_dist)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00407020    8b442404
    asm("push               esi");                                           // 0x00407024    56
    asm("mov.s              esi, ecx");                                      // 0x00407025    8bf1
    asm("push               eax");                                           // 0x00407027    50
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00000080]");             // 0x00407028    8d8e80000000
    asm("push               ecx");                                           // 0x0040702e    51
    asm("{disp8} lea        edx, dword ptr [esi + 0x14]");                   // 0x0040702f    8d5614
    asm("push               edx");                                           // 0x00407032    52
    asm("call               ?FindNearestDrinkingWater@GUtils@@SA_NAAUMapCoords@@0M@Z  ");                          // 0x00407033    e868733400
    asm("{disp8} mov        cl, byte ptr [esi + 0x7c]");                     // 0x00407038    8a4e7c
    asm("mov.s              dl, cl");                                        // 0x0040703b    8ad1
    asm("xor.s              dl, al");                                        // 0x0040703d    32d0
    asm("and                dl, 0x01");                                      // 0x0040703f    80e201
    asm("xor.s              dl, cl");                                        // 0x00407042    32d1
    asm("add                esp, 0x0c");                                     // 0x00407044    83c40c
    asm("{disp8} mov        byte ptr [esi + 0x7c], dl");                     // 0x00407047    88567c
    asm("pop                esi");                                           // 0x0040704a    5e
    asm("ret                0x0004");                                        // 0x0040704b    c20400
    __builtin_unreachable();
}

float __fastcall GetPercentAbodeFullWithAdults__5AbodeFv(struct MultiMapFixed* this)
{
    asm("sub                esp, 0x08");                                     // 0x00407050    83ec08
    asm("push               esi");                                           // 0x00407053    56
    asm("{disp8} mov        esi, dword ptr [ecx + 0x28]");                   // 0x00407054    8b7128
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000174]");             // 0x00407057    8b8674010000
    asm("test               eax, eax");                                      // 0x0040705d    85c0
    asm("{disp8} je         _jmp_addr_0x00407081");                          // 0x0040705f    7420
    asm("call               ?GetNumAdultsInAbode@Abode@@QAEEXZ");            // 0x00407061    e86a000000
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000174]");             // 0x00407066    8b8674010000
    asm("{disp8} mov        dword ptr [esp + 0x04], eax");                   // 0x0040706c    89442404
    asm("{disp8} mov        dword ptr [esp + 0x08], 0x00000000");            // 0x00407070    c744240800000000
    asm("{disp8} fidiv      dword ptr [esp + 0x04]");                        // 0x00407078    da742404
    asm("pop                esi");                                           // 0x0040707c    5e
    asm("add                esp, 0x08");                                     // 0x0040707d    83c408
    asm("ret");                                                              // 0x00407080    c3
    asm("_jmp_addr_0x00407081:");
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x00407081    d90590a38a00
    asm("pop                esi");                                           // 0x00407087    5e
    asm("add                esp, 0x08");                                     // 0x00407088    83c408
    asm("ret");                                                              // 0x0040708b    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
float __fastcall GetPercentAbodeFullWithChildren__5AbodeFv(struct MultiMapFixed* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                   // 0x00407090    8b4128
    asm("sub                esp, 0x08");                                     // 0x00407093    83ec08
    asm("push               esi");                                           // 0x00407096    56
    asm("{disp32} mov       esi, dword ptr [eax + 0x00000178]");             // 0x00407097    8bb078010000
    asm("test               esi, esi");                                      // 0x0040709d    85f6
    asm("{disp8} je         _jmp_addr_0x004070c2");                          // 0x0040709f    7421
    asm("xor.s              eax, eax");                                      // 0x004070a1    33c0
    asm("{disp32} mov       al, byte ptr [ecx + 0x000000b7]");               // 0x004070a3    8a81b7000000
    asm("xor.s              edx, edx");                                      // 0x004070a9    33d2
    asm("{disp8} mov        dword ptr [esp + 0x08], 0x00000000");            // 0x004070ab    c744240800000000
    asm("div                esi");                                           // 0x004070b3    f7f6
    asm("pop                esi");                                           // 0x004070b5    5e
    asm("{disp8} mov        dword ptr [esp + 0x00], eax");                   // 0x004070b6    89442400
    asm("{disp8} fild       qword ptr [esp + 0x00]");                        // 0x004070ba    df6c2400
    asm("add                esp, 0x08");                                     // 0x004070be    83c408
    asm("ret");                                                              // 0x004070c1    c3
    asm("_jmp_addr_0x004070c2:");
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x004070c2    d90590a38a00
    asm("pop                esi");                                           // 0x004070c8    5e
    asm("add                esp, 0x08");                                     // 0x004070c9    83c408
    asm("ret");                                                              // 0x004070cc    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint8_t __fastcall GetNumAdultsInAbode__5AbodeFv(struct Abode* this)
{
    asm("push               ecx");                                           // 0x004070d0    51
    asm("xor.s              eax, eax");                                      // 0x004070d1    33c0
    asm("{disp32} mov       al, byte ptr [ecx + 0x000000b4]");               // 0x004070d3    8a81b4000000
    asm("{disp8} mov        dword ptr [esp + 0x00], eax");                   // 0x004070d9    89442400
    asm("{disp8} fild       dword ptr [esp + 0x00]");                        // 0x004070dd    db442400
    asm("pop                ecx");                                           // 0x004070e1    59
    asm("ret");                                                              // 0x004070e2    c3
    __builtin_unreachable();
}

void __fastcall DrawPercentFull__5AbodeFi(struct Abode* this, const void* edx, int param_1)
{
    asm("sub                esp, 0x0c");                                     // 0x004070f0    83ec0c
    asm("push               esi");                                           // 0x004070f3    56
    asm("mov.s              esi, ecx");                                      // 0x004070f4    8bf1
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                   // 0x004070f6    8b4e40
    asm("{disp8} mov        eax, dword ptr [ecx + 0x38]");                   // 0x004070f9    8b4138
    asm("{disp8} mov        dword ptr [esp + 0x04], eax");                   // 0x004070fc    89442404
    asm("{disp8} mov        edx, dword ptr [ecx + 0x3c]");                   // 0x00407100    8b513c
    asm("{disp8} mov        dword ptr [esp + 0x08], edx");                   // 0x00407103    89542408
    asm("{disp8} mov        eax, dword ptr [ecx + 0x40]");                   // 0x00407107    8b4140
    asm("{disp8} mov        dword ptr [esp + 0x0c], eax");                   // 0x0040710a    8944240c
    asm("mov                edx, dword ptr [ecx]");                          // 0x0040710e    8b11
    asm("push               edi");                                           // 0x00407110    57
    asm("call               dword ptr [edx + 0xf8]");                        // 0x00407111    ff92f8000000
    asm("{disp8} fld        dword ptr [eax + 0x28]");                        // 0x00407117    d94028
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x0040711a    8b4628
    asm("fadd.s             st(0), st(0)");                                  // 0x0040711d    dcc0
    asm("mov.s              ecx, esi");                                      // 0x0040711f    8bce
    asm("{disp8} fadd       dword ptr [esp + 0x0c]");                        // 0x00407121    d844240c
    asm("{disp32} fadd      dword ptr [__real@3fc00000]");                   // 0x00407125    d8054cb28a00
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x0040712b    d95c240c
    asm("{disp32} mov       edi, dword ptr [eax + 0x00000174]");             // 0x0040712f    8bb874010000
    asm("call               ?GetNumAdultsInAbode@Abode@@QAEEXZ");            // 0x00407135    e896ffffff
    asm("call               _jmp_addr_0x007a1400");                          // 0x0040713a    e8c1a23900
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");                   // 0x0040713f    8b4c2418
    asm("test               ecx, ecx");                                      // 0x00407143    85c9
    asm("{disp8} je         _jmp_addr_0x0040714f");                          // 0x00407145    7408
    asm("mov                edi, 0x00000001");                               // 0x00407147    bf01000000
    asm("or                 eax, -0x1");                                     // 0x0040714c    83c8ff
    asm("_jmp_addr_0x0040714f:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x0040714f    8d4c2408
    asm("push               ecx");                                           // 0x00407153    51
    asm("push               eax");                                           // 0x00407154    50
    asm("push               edi");                                           // 0x00407155    57
    asm("call               _jmp_addr_0x00829780");                          // 0x00407156    e825264200
    asm("add                esp, 0x0c");                                     // 0x0040715b    83c40c
    asm("pop                edi");                                           // 0x0040715e    5f
    asm("pop                esi");                                           // 0x0040715f    5e
    asm("add                esp, 0x0c");                                     // 0x00407160    83c40c
    asm("ret                0x0004");                                        // 0x00407163    c20400
    __builtin_unreachable();
}

uint32_t __fastcall GetDiscipleStateIfInteractedWith__5AbodeFP16GInterfaceStatusP8Villager(struct Object* this, const void* edx, struct GInterfaceStatus* status, struct Villager* villager)
{
    asm("push               ebx");                                           // 0x00407170    53
    asm("push               ebp");                                           // 0x00407171    55
    asm("{disp8} mov        ebp, dword ptr [esp + 0x10]");                   // 0x00407172    8b6c2410
    asm("push               esi");                                           // 0x00407176    56
    asm("push               edi");                                           // 0x00407177    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x14]");                   // 0x00407178    8b7c2414
    asm("push               ebp");                                           // 0x0040717c    55
    asm("mov.s              esi, ecx");                                      // 0x0040717d    8bf1
    asm("push               edi");                                           // 0x0040717f    57
    asm("call               ?GetDiscipleStateIfInteractedWith@MultiMapFixed@@UAEIPAVGInterfaceStatus@@PAVVillager@@@Z");                          // 0x00407180    e84b7f1200
    asm("mov.s              ebx, eax");                                      // 0x00407185    8bd8
    asm("test               ebx, ebx");                                      // 0x00407187    85db
    asm("{disp8} jne        _jmp_addr_0x004071f0");                          // 0x00407189    7565
    asm("mov                eax, dword ptr [esi]");                          // 0x0040718b    8b06
    asm("mov.s              ecx, esi");                                      // 0x0040718d    8bce
    asm("call               dword ptr [eax + 0xd4]");                        // 0x0040718f    ff90d4000000
    asm("test               eax, eax");                                      // 0x00407195    85c0
    asm("{disp8} je         _jmp_addr_0x004071f0");                          // 0x00407197    7457
    asm("mov                edx, dword ptr [edi]");                          // 0x00407199    8b17
    asm("mov.s              ecx, edi");                                      // 0x0040719b    8bcf
    asm("call               dword ptr [edx + 0x1c]");                        // 0x0040719d    ff521c
    asm("mov.s              edi, eax");                                      // 0x004071a0    8bf8
    asm("mov                eax, dword ptr [esi]");                          // 0x004071a2    8b06
    asm("mov.s              ecx, esi");                                      // 0x004071a4    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x004071a6    ff501c
    asm("cmp.s              eax, edi");                                      // 0x004071a9    3bc7
    asm("{disp8} jne        _jmp_addr_0x004071f0");                          // 0x004071ab    7543
    asm("mov                edx, dword ptr [esi]");                          // 0x004071ad    8b16
    asm("mov.s              ecx, esi");                                      // 0x004071af    8bce
    asm("call               dword ptr [edx + 0x89c]");                       // 0x004071b1    ff929c080000
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x004071b7    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x004071bd    dfe0
    asm("test               ah, 0x01");                                      // 0x004071bf    f6c401
    asm("{disp8} je         _jmp_addr_0x004071f0");                          // 0x004071c2    742c
    asm("mov.s              ecx, ebp");                                      // 0x004071c4    8bcd
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");                      // 0x004071c6    e895af3400
    asm("cmp.s              eax, esi");                                      // 0x004071cb    3bc6
    asm("{disp8} je         _jmp_addr_0x004071f0");                          // 0x004071cd    7421
    asm("mov                eax, dword ptr [esi]");                          // 0x004071cf    8b06
    asm("mov.s              ecx, esi");                                      // 0x004071d1    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x004071d3    ff5048
    asm("test               eax, eax");                                      // 0x004071d6    85c0
    asm("{disp8} je         _jmp_addr_0x004071f0");                          // 0x004071d8    7416
    asm("mov                edx, dword ptr [esi]");                          // 0x004071da    8b16
    asm("mov.s              ecx, esi");                                      // 0x004071dc    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x004071de    ff5248
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000005f4]");             // 0x004071e1    8b88f4050000
    asm("test               ecx, ecx");                                      // 0x004071e7    85c9
    asm("mov                eax, 0x0000000a");                               // 0x004071e9    b80a000000
    asm("{disp8} je         _jmp_addr_0x004071f2");                          // 0x004071ee    7402
    asm("_jmp_addr_0x004071f0:");
    asm("mov.s              eax, ebx");                                      // 0x004071f0    8bc3
    asm("_jmp_addr_0x004071f2:");
    asm("pop                edi");                                           // 0x004071f2    5f
    asm("pop                esi");                                           // 0x004071f3    5e
    asm("pop                ebp");                                           // 0x004071f4    5d
    asm("pop                ebx");                                           // 0x004071f5    5b
    asm("ret                0x0008");                                        // 0x004071f6    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsInteractable__5AbodeFv(struct GameThingWithPos* this)
{
    asm("push               esi");                                           // 0x00407200    56
    asm("mov.s              esi, ecx");                                      // 0x00407201    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00407203    8b06
    asm("call               dword ptr [eax + 0x880]");                       // 0x00407205    ff9080080000
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0040720b    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00407211    dfe0
    asm("test               ah, 0x40");                                      // 0x00407213    f6c440
    asm("{disp8} je         _jmp_addr_0x0040721c");                          // 0x00407216    7404
    asm("xor.s              eax, eax");                                      // 0x00407218    33c0
    asm("pop                esi");                                           // 0x0040721a    5e
    asm("ret");                                                              // 0x0040721b    c3
    asm("_jmp_addr_0x0040721c:");
    asm("mov.s              ecx, esi");                                      // 0x0040721c    8bce
    asm("call               ?IsInteractable@GameThingWithPos@@UAE_NXZ");     // 0x0040721e    e88d8f1600
    asm("pop                esi");                                           // 0x00407223    5e
    asm("ret");                                                              // 0x00407224    c3
    __builtin_unreachable();
}

struct MapCoords* __fastcall FUN_00407230__5AbodeFb(struct Abode* this, const void* edx, struct MapCoords* coords, bool param_2)
{
    asm("cmp                dword ptr [esp + 0x08], 0x01");                  // 0x00407230    837c240801
    asm("push               esi");                                           // 0x00407235    56
    asm("{disp8} jne        _jmp_addr_0x0040725a");                          // 0x00407236    7522
    asm("{disp8} mov        eax, dword ptr [ecx + 0x74]");                   // 0x00407238    8b4174
    asm("test               eax, eax");                                      // 0x0040723b    85c0
    asm("{disp8} je         _jmp_addr_0x0040725a");                          // 0x0040723d    741b
    asm("{disp8} mov        esi, dword ptr [esp + 0x08]");                   // 0x0040723f    8b742408
    asm("mov                edx, dword ptr [eax]");                          // 0x00407243    8b10
    asm("push               0x0");                                           // 0x00407245    6a00
    asm("push               0x0");                                           // 0x00407247    6a00
    asm("push               0x1");                                           // 0x00407249    6a01
    asm("push               esi");                                           // 0x0040724b    56
    asm("mov.s              ecx, eax");                                      // 0x0040724c    8bc8
    asm("call               dword ptr [edx + 0x114]");                       // 0x0040724e    ff9214010000
    asm("mov.s              eax, esi");                                      // 0x00407254    8bc6
    asm("pop                esi");                                           // 0x00407256    5e
    asm("ret                0x000c");                                        // 0x00407257    c20c00
    asm("_jmp_addr_0x0040725a:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x0040725a    8b442408
    asm("add                ecx, 0x14");                                     // 0x0040725e    83c114
    asm("mov                esi, dword ptr [ecx]");                          // 0x00407261    8b31
    asm("mov.s              edx, eax");                                      // 0x00407263    8bd0
    asm("mov                dword ptr [edx], esi");                          // 0x00407265    8932
    asm("{disp8} mov        esi, dword ptr [ecx + 0x04]");                   // 0x00407267    8b7104
    asm("{disp8} mov        dword ptr [edx + 0x04], esi");                   // 0x0040726a    897204
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x08]");                   // 0x0040726d    8b4908
    asm("{disp8} mov        dword ptr [edx + 0x08], ecx");                   // 0x00407270    894a08
    asm("pop                esi");                                           // 0x00407273    5e
    asm("ret                0x000c");                                        // 0x00407274    c20c00
    __builtin_unreachable();
}

bool __fastcall CanBeHiddenIn__5AbodeFv(struct Abode* this)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x00407280    8b01
    asm("jmp                dword ptr [eax + 0xd4]");                        // 0x00407282    ffa0d4000000
    __builtin_unreachable();
}

float __fastcall GetPercentRepairedForNonFunctional__5AbodeFv(struct MultiMapFixed* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                   // 0x00407290    8b4128
    asm("{disp32} fld       dword ptr [eax + 0x000001b8]");                  // 0x00407293    d980b8010000
    asm("ret");                                                              // 0x00407299    c3
    asm("call               dword ptr [__imp__bind@4]");                     // 0x0040729a    ff15dc988a00
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
float __fastcall GetInfluence__5AbodeFv(struct MultiMapFixed* this)
{
    asm("sub                esp, 0x08");                                     // 0x004072a0    83ec08
    asm("push               esi");                                           // 0x004072a3    56
    asm("mov.s              esi, ecx");                                      // 0x004072a4    8bf1
    asm("call               ?GetInfluence@MultiMapFixed@@UAEMXZ");           // 0x004072a6    e8f5791200
    asm("{disp8} fstp       dword ptr [esp + 0x08]");                        // 0x004072ab    d95c2408
    asm("mov.s              ecx, esi");                                      // 0x004072af    8bce
    asm("call               ?GetNumAdultsInAbode@Abode@@QAEEXZ");            // 0x004072b1    e81afeffff
    asm("xor.s              eax, eax");                                      // 0x004072b6    33c0
    asm("{disp32} mov       al, byte ptr [esi + 0x000000b7]");               // 0x004072b8    8a86b7000000
    asm("pop                esi");                                           // 0x004072be    5e
    asm("{disp8} mov        dword ptr [esp + 0x00], eax");                   // 0x004072bf    89442400
    asm("{disp8} fiadd      dword ptr [esp + 0x00]");                        // 0x004072c3    da442400
    asm("{disp32} fadd      dword ptr [_rdata_float1p0]");                   // 0x004072c7    d80590a38a00
    asm("{disp8} fmul       dword ptr [esp + 0x04]");                        // 0x004072cd    d84c2404
    asm("add                esp, 0x08");                                     // 0x004072d1    83c408
    asm("ret");                                                              // 0x004072d4    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct MapCoords* __fastcall GetPosOutside__5AbodeFfff(struct Abode* this, const void* edx, struct MapCoords* coords, float param_2, float param_3, float param_4)
{
    asm("sub                esp, 0x1c");                                     // 0x004072e0    83ec1c
    asm("push               esi");                                           // 0x004072e3    56
    asm("mov.s              esi, ecx");                                      // 0x004072e4    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x004072e6    8b06
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x004072e8    8d4c2414
    asm("push               ecx");                                           // 0x004072ec    51
    asm("mov.s              ecx, esi");                                      // 0x004072ed    8bce
    asm("call               dword ptr [eax + 0x104]");                       // 0x004072ef    ff9004010000
    asm("xor.s              ecx, ecx");                                      // 0x004072f5    33c9
    asm("{disp8} mov        dword ptr [esp + 0x08], ecx");                   // 0x004072f7    894c2408
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                   // 0x004072fb    894c240c
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x004072ff    894c2410
    asm("mov                edx, dword ptr [eax]");                          // 0x00407303    8b10
    asm("{disp8} mov        dword ptr [esp + 0x08], edx");                   // 0x00407305    89542408
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                   // 0x00407309    8b4804
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                   // 0x0040730c    894c240c
    asm("{disp8} fld        dword ptr [eax + 0x08]");                        // 0x00407310    d94008
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00407313    d95c2410
    asm("{disp32} fld       dword ptr [__real@40c90fdb]");              // 0x00407317    d90510b28a00
    asm("push               0x0000094a");                                    // 0x0040731d    684a090000
    asm("{disp8} fdiv       dword ptr [esp + 0x2c]");                        // 0x00407322    d874242c
    asm("push               0x009c7fbc");                                    // 0x00407326    68bc7f9c00
    asm("push               ecx");                                           // 0x0040732b    51
    asm("fstp               dword ptr [esp]");                               // 0x0040732c    d91c24
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                      // 0x0040732f    e8fc712d00
    asm("{disp8} fld        dword ptr [esp + 0x34]");                        // 0x00407334    d9442434
    asm("fadd.s             st(0), st(0)");                                  // 0x00407338    dcc0
    asm("{disp8} lea        edx, dword ptr [esp + 0x14]");                   // 0x0040733a    8d542414
    asm("push               edx");                                           // 0x0040733e    52
    asm("add                esi, 0x14");                                     // 0x0040733f    83c614
    asm("{disp32} fdivr     dword ptr [__real@40c90fdb]");                   // 0x00407342    d83d10b28a00
    asm("push               esi");                                           // 0x00407348    56
    asm("fsubp              st(1), st");                                     // 0x00407349    dee9
    asm("{disp8} fstp       dword ptr [esp + 0x3c]");                        // 0x0040734b    d95c243c
    asm("call               ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z     ");                          // 0x0040734f    e81c5f3400
    asm("{disp8} fadd       dword ptr [esp + 0x3c]");                        // 0x00407354    d844243c
    asm("{disp8} mov        eax, dword ptr [esp + 0x44]");                   // 0x00407358    8b442444
    asm("push               0x0000094b");                                    // 0x0040735c    684b090000
    asm("push               0x009c7fbc");                                    // 0x00407361    68bc7f9c00
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                        // 0x00407366    d95c2420
    asm("push               eax");                                           // 0x0040736a    50
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                      // 0x0040736b    e8c0712d00
    asm("{disp8} mov        edx, dword ptr [esp + 0x24]");                   // 0x00407370    8b542424
    asm("{disp8} fadd       dword ptr [esp + 0x4c]");                        // 0x00407374    d844244c
    asm("{disp8} lea        eax, dword ptr [esp + 0x34]");                   // 0x00407378    8d442434
    asm("{disp8} fstp       dword ptr [esp + 0x48]");                        // 0x0040737c    d95c2448
    asm("{disp8} mov        ecx, dword ptr [esp + 0x48]");                   // 0x00407380    8b4c2448
    asm("push               ecx");                                           // 0x00407384    51
    asm("push               edx");                                           // 0x00407385    52
    asm("push               eax");                                           // 0x00407386    50
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z");                  // 0x00407387    e8f4613400
    asm("add                esp, 0x2c");                                     // 0x0040738c    83c42c
    asm("push               eax");                                           // 0x0040738f    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x00407390    8d4c240c
    asm("call               @__apl__9MapCoordsFRC9MapCoords@12");            // 0x00407394    e877e01f00
    asm("{disp8} mov        eax, dword ptr [esp + 0x24]");                   // 0x00407399    8b442424
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                   // 0x0040739d    8b542408
    asm("mov.s              ecx, eax");                                      // 0x004073a1    8bc8
    asm("mov                dword ptr [ecx], edx");                          // 0x004073a3    8911
    asm("{disp8} mov        edx, dword ptr [esp + 0x0c]");                   // 0x004073a5    8b54240c
    asm("{disp8} mov        dword ptr [ecx + 0x04], edx");                   // 0x004073a9    895104
    asm("{disp8} mov        edx, dword ptr [esp + 0x10]");                   // 0x004073ac    8b542410
    asm("{disp8} mov        dword ptr [ecx + 0x08], edx");                   // 0x004073b0    895108
    asm("pop                esi");                                           // 0x004073b3    5e
    asm("add                esp, 0x1c");                                     // 0x004073b4    83c41c
    asm("ret                0x0010");                                        // 0x004073b7    c21000
    asm("call               dword ptr [rdata_bytes + 0x3dc]");               // 0x004073ba    ff15dc938a00
    __builtin_unreachable();
}

void __fastcall StopBeingFunctional__5AbodeFP7GPlayer(struct Abode* this, const void* edx, struct GPlayer* param_1)
{
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                   // 0x004073c0    8b542404
    asm("test               edx, edx");                                      // 0x004073c4    85d2
    asm("{disp8} je         _jmp_addr_0x004073ec");                          // 0x004073c6    7424
    asm("cmp                byte ptr [ecx + 0x000000b9], -0x38");            // 0x004073c8    80b9b9000000c8
    asm(".byte              0x72, 0x1b");// {disp8} jb _jmp_addr_0x004073ec  // 0x004073cf    721b
    asm("{disp32} mov       eax, dword ptr [edx + 0x00000a44]");             // 0x004073d1    8b82440a0000
    asm("push               esi");                                           // 0x004073d7    56
    asm("{disp32} mov       esi, dword ptr [eax + 0x00001080]");             // 0x004073d8    8bb080100000
    asm("inc                esi");                                           // 0x004073de    46
    asm("push               edx");                                           // 0x004073df    52
    asm("{disp32} mov       dword ptr [eax + 0x00001080], esi");             // 0x004073e0    89b080100000
    asm("call               ?FUN_004073f0@Abode@@UAEXPAVGPlayer@@@Z");       // 0x004073e6    e805000000
    asm("pop                esi");                                           // 0x004073eb    5e
    asm("_jmp_addr_0x004073ec:");
    asm("ret                0x0004");                                        // 0x004073ec    c20400
    __builtin_unreachable();
}

void __fastcall FUN_004073f0__5AbodeFP7GPlayer(struct Abode* this, const void* edx, struct GPlayer* param_1)
{
    asm("{disp8} mov        al, byte ptr [ecx + 0x7c]");                     // 0x004073f0    8a417c
    asm("test               al, 0x40");                                      // 0x004073f3    a840
    asm("{disp8} jne        _jmp_addr_0x00407416");                          // 0x004073f5    751f
    asm("test               al, 0x20");                                      // 0x004073f7    a820
    asm("push               0x1");                                           // 0x004073f9    6a01
    asm("{disp8} jne        _jmp_addr_0x0040740b");                          // 0x004073fb    750e
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x004073fd    8b4c2408
    asm("push               0x9");                                           // 0x00407401    6a09
    asm("call               _jmp_addr_0x0064da80");                          // 0x00407403    e878662400
    asm("ret                0x0004");                                        // 0x00407408    c20400
    asm("_jmp_addr_0x0040740b:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x0040740b    8b4c2408
    asm("push               0xa");                                           // 0x0040740f    6a0a
    asm("call               _jmp_addr_0x0064da80");                          // 0x00407411    e86a662400
    asm("_jmp_addr_0x00407416:");
    asm("ret                0x0004");                                        // 0x00407416    c20400
    __builtin_unreachable();
}

void __fastcall DiscipleInHandNear__5AbodeFR8VillagerR16GInterfaceStatus(struct Object* this, const void* edx, struct Villager* param_1, struct GInterfaceStatus* status)
{
    asm("push               esi");                                           // 0x00407420    56
    asm("mov.s              esi, ecx");                                      // 0x00407421    8bf1
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00407423    8b4628
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000174]");             // 0x00407426    8b8874010000
    asm("test               ecx, ecx");                                      // 0x0040742c    85c9
    asm("{disp8} jbe        _jmp_addr_0x00407490");                          // 0x0040742e    7660
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x00407430    8b4c2408
    asm("add                ecx, 0x14");                                     // 0x00407434    83c114
    asm("push               ecx");                                           // 0x00407437    51
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x00407438    8d4e14
    asm("call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2");                          // 0x0040743b    e890e81f00
    asm("{disp8} fstp       dword ptr [esp + 0x08]");                        // 0x00407440    d95c2408
    asm("mov                edx, dword ptr [esi]");                          // 0x00407444    8b16
    asm("mov.s              ecx, esi");                                      // 0x00407446    8bce
    asm("call               dword ptr [edx + 0x64]");                        // 0x00407448    ff5264
    asm("{disp8} fcomp      dword ptr [esp + 0x08]");                        // 0x0040744b    d85c2408
    asm("fnstsw             ax");                                            // 0x0040744f    dfe0
    asm("test               ah, 0x41");                                      // 0x00407451    f6c441
    asm("{disp8} jne        _jmp_addr_0x00407490");                          // 0x00407454    753a
    asm("mov                eax, dword ptr [esi]");                          // 0x00407456    8b06
    asm("mov.s              ecx, esi");                                      // 0x00407458    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x0040745a    ff5048
    asm("mov.s              esi, eax");                                      // 0x0040745d    8bf0
    asm("test               esi, esi");                                      // 0x0040745f    85f6
    asm("{disp8} je         _jmp_addr_0x00407490");                          // 0x00407461    742d
    asm("{disp32} mov       eax, dword ptr [esi + 0x000005f4]");             // 0x00407463    8b86f4050000
    asm("test               eax, eax");                                      // 0x00407469    85c0
    asm("{disp8} jne        _jmp_addr_0x00407490");                          // 0x0040746b    7523
    asm("mov                edx, dword ptr [esi]");                          // 0x0040746d    8b16
    asm("push               edi");                                           // 0x0040746f    57
    asm("mov.s              ecx, esi");                                      // 0x00407470    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x00407472    ff521c
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00407475    8b4c2410
    asm("mov.s              edi, eax");                                      // 0x00407479    8bf8
    asm("mov                eax, dword ptr [ecx]");                          // 0x0040747b    8b01
    asm("call               dword ptr [eax + 0x1c]");                        // 0x0040747d    ff501c
    asm("cmp.s              edi, eax");                                      // 0x00407480    3bf8
    asm("pop                edi");                                           // 0x00407482    5f
    asm("{disp8} jne        _jmp_addr_0x00407490");                          // 0x00407483    750b
    asm("{disp32} mov       dword ptr [_abode_town_00c4cc6c], esi");         // 0x00407485    89356cccc400
    asm("call               _jmp_addr_0x00829690");                          // 0x0040748b    e800224200
    asm("_jmp_addr_0x00407490:");
    asm("pop                esi");                                           // 0x00407490    5e
    asm("ret                0x0008");                                        // 0x00407491    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
float __fastcall CalculateDesireToGainMale__5AbodeFv(struct Abode* this)
{
    asm("sub                esp, 0x0c");                                     // 0x004074a0    83ec0c
    asm("push               esi");                                           // 0x004074a3    56
    asm("mov.s              esi, ecx");                                      // 0x004074a4    8bf1
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x004074a6    8b4628
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000174]");             // 0x004074a9    8b8874010000
    asm("test               ecx, ecx");                                      // 0x004074af    85c9
    asm("{disp8} mov        dword ptr [esp + 0x04], 0x00000000");            // 0x004074b1    c744240400000000
    asm("{disp8} je         _jmp_addr_0x00407537");                          // 0x004074b9    747c
    asm("mov                edx, dword ptr [esi]");                          // 0x004074bb    8b16
    asm("mov.s              ecx, esi");                                      // 0x004074bd    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x004074bf    ff5248
    asm("test               eax, eax");                                      // 0x004074c2    85c0
    asm("{disp8} je         _jmp_addr_0x00407537");                          // 0x004074c4    7471
    asm("{disp32} mov       edx, dword ptr [eax + 0x00000664]");             // 0x004074c6    8b9064060000
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000668]");             // 0x004074cc    8b8068060000
    asm("{disp8} mov        dword ptr [esp + 0x08], edx");                   // 0x004074d2    89542408
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");            // 0x004074d6    c744240c00000000
    asm("{disp8} fild       qword ptr [esp + 0x08]");                        // 0x004074de    df6c2408
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                   // 0x004074e2    89442408
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");            // 0x004074e6    c744240c00000000
    asm("xor.s              ecx, ecx");                                      // 0x004074ee    33c9
    asm("{disp32} fadd      dword ptr [_rdata_float0p001]");                 // 0x004074f0    d805b0a38a00
    asm("{disp32} mov       cl, byte ptr [esi + 0x000000b5]");               // 0x004074f6    8a8eb5000000
    asm("{disp8} fild       qword ptr [esp + 0x08]");                        // 0x004074fc    df6c2408
    asm("xor.s              edx, edx");                                      // 0x00407500    33d2
    asm("{disp32} mov       dl, byte ptr [esi + 0x000000b4]");               // 0x00407502    8a96b4000000
    asm("{disp32} fadd      dword ptr [_rdata_float0p001]");                 // 0x00407508    d805b0a38a00
    asm("pop                esi");                                           // 0x0040750e    5e
    asm("fdivp              st(1), st");                                     // 0x0040750f    def9
    asm("{disp8} mov        dword ptr [esp + 0x00], ecx");                   // 0x00407511    894c2400
    asm("sub.s              edx, ecx");                                      // 0x00407515    2bd1
    asm("{disp8} fild       dword ptr [esp + 0x00]");                        // 0x00407517    db442400
    asm("{disp8} mov        dword ptr [esp + 0x00], edx");                   // 0x0040751b    89542400
    asm("{disp32} fadd      dword ptr [_rdata_float0p001]");                 // 0x0040751f    d805b0a38a00
    asm("{disp8} fild       dword ptr [esp + 0x00]");                        // 0x00407525    db442400
    asm("{disp32} fadd      dword ptr [_rdata_float0p001]");                 // 0x00407529    d805b0a38a00
    asm("fdivp              st(1), st");                                     // 0x0040752f    def9
    asm("fsubp              st(1), st");                                     // 0x00407531    dee9
    asm("add                esp, 0x0c");                                     // 0x00407533    83c40c
    asm("ret");                                                              // 0x00407536    c3
    asm("_jmp_addr_0x00407537:");
    asm("{disp8} fld        dword ptr [esp + 0x04]");                        // 0x00407537    d9442404
    asm("pop                esi");                                           // 0x0040753b    5e
    asm("add                esp, 0x0c");                                     // 0x0040753c    83c40c
    asm("ret");                                                              // 0x0040753f    c3
    __builtin_unreachable();
}

float __fastcall CalculateDesireToGainVillager__5AbodeFv(struct Abode* this)
{
    asm("sub                esp, 0x08");                                     // 0x00407540    83ec08
    asm("push               esi");                                           // 0x00407543    56
    asm("mov.s              esi, ecx");                                      // 0x00407544    8bf1
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00407546    8b4628
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000174]");             // 0x00407549    8b8874010000
    asm("test               ecx, ecx");                                      // 0x0040754f    85c9
    asm("{disp8} mov        dword ptr [esp + 0x04], 0x00000000");            // 0x00407551    c744240400000000
    asm("{disp8} je         _jmp_addr_0x004075a7");                          // 0x00407559    744c
    asm("mov                edx, dword ptr [esi]");                          // 0x0040755b    8b16
    asm("mov.s              ecx, esi");                                      // 0x0040755d    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x0040755f    ff5248
    asm("test               eax, eax");                                      // 0x00407562    85c0
    asm("{disp8} je         _jmp_addr_0x004075a7");                          // 0x00407564    7441
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000618]");             // 0x00407566    8b8818060000
    asm("{disp8} mov        dword ptr [esp + 0x04], ecx");                   // 0x0040756c    894c2404
    asm("{disp8} mov        dword ptr [esp + 0x08], 0x00000000");            // 0x00407570    c744240800000000
    asm("{disp8} fild       qword ptr [esp + 0x04]");                        // 0x00407578    df6c2404
    asm("mov                edx, dword ptr [esi]");                          // 0x0040757c    8b16
    asm("mov.s              ecx, esi");                                      // 0x0040757e    8bce
    asm("{disp32} fadd      dword ptr [_rdata_float0p001]");                 // 0x00407580    d805b0a38a00
    asm("{disp32} fild      dword ptr [eax + 0x00000644]");                  // 0x00407586    db8044060000
    asm("{disp32} fadd      dword ptr [_rdata_float0p001]");                 // 0x0040758c    d805b0a38a00
    asm("fdivp              st(1), st");                                     // 0x00407592    def9
    asm("{disp8} fstp       dword ptr [esp + 0x04]");                        // 0x00407594    d95c2404
    asm("call               dword ptr [edx + 0x89c]");                       // 0x00407598    ff929c080000
    asm("{disp8} fsubr      dword ptr [esp + 0x04]");                        // 0x0040759e    d86c2404
    asm("pop                esi");                                           // 0x004075a2    5e
    asm("add                esp, 0x08");                                     // 0x004075a3    83c408
    asm("ret");                                                              // 0x004075a6    c3
    asm("_jmp_addr_0x004075a7:");
    asm("{disp8} fld        dword ptr [esp + 0x04]");                        // 0x004075a7    d9442404
    asm("pop                esi");                                           // 0x004075ab    5e
    asm("add                esp, 0x08");                                     // 0x004075ac    83c408
    asm("ret");                                                              // 0x004075af    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall TakeVillagerFrom__5AbodeFR5Abodei(struct Abode* this, const void* edx, struct Abode* other, int param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x004075b0    8b442404
    asm("push               ebp");                                           // 0x004075b4    55
    asm("push               esi");                                           // 0x004075b5    56
    asm("{disp32} mov       esi, dword ptr [eax + 0x000000a0]");             // 0x004075b6    8bb0a0000000
    asm("test               esi, esi");                                      // 0x004075bc    85f6
    asm("push               edi");                                           // 0x004075be    57
    asm("mov.s              ebp, ecx");                                      // 0x004075bf    8be9
    asm("{disp8} je         _jmp_addr_0x004075f8");                          // 0x004075c1    7435
    asm("{disp8} mov        edi, dword ptr [esp + 0x14]");                   // 0x004075c3    8b7c2414
    asm("_jmp_addr_0x004075c7:");
    asm("test               edi, edi");                                      // 0x004075c7    85ff
    asm("{disp8} je         _jmp_addr_0x004075d7");                          // 0x004075c9    740c
    asm("mov                edx, dword ptr [esi]");                          // 0x004075cb    8b16
    asm("mov.s              ecx, esi");                                      // 0x004075cd    8bce
    asm("call               dword ptr [edx + 0x44c]");                       // 0x004075cf    ff924c040000
    asm("{disp8} jmp        _jmp_addr_0x004075e1");                          // 0x004075d5    eb0a
    asm("_jmp_addr_0x004075d7:");
    asm("mov                eax, dword ptr [esi]");                          // 0x004075d7    8b06
    asm("mov.s              ecx, esi");                                      // 0x004075d9    8bce
    asm("call               dword ptr [eax + 0x450]");                       // 0x004075db    ff9050040000
    asm("_jmp_addr_0x004075e1:");
    asm("test               eax, eax");                                      // 0x004075e1    85c0
    asm("{disp8} je         _jmp_addr_0x004075ee");                          // 0x004075e3    7409
    asm("test               byte ptr [esi + 0x000000e0], 0x04");             // 0x004075e5    f686e000000004
    asm("{disp8} je         _jmp_addr_0x00407600");                          // 0x004075ec    7412
    asm("_jmp_addr_0x004075ee:");
    asm("{disp32} mov       esi, dword ptr [esi + 0x000000e4]");             // 0x004075ee    8bb6e4000000
    asm("test               esi, esi");                                      // 0x004075f4    85f6
    asm("{disp8} jne        _jmp_addr_0x004075c7");                          // 0x004075f6    75cf
    asm("_jmp_addr_0x004075f8:");
    asm("pop                edi");                                           // 0x004075f8    5f
    asm("pop                esi");                                           // 0x004075f9    5e
    asm("xor.s              eax, eax");                                      // 0x004075fa    33c0
    asm("pop                ebp");                                           // 0x004075fc    5d
    asm("ret                0x0008");                                        // 0x004075fd    c20800
    asm("_jmp_addr_0x00407600:");
    asm("push               ebp");                                           // 0x00407600    55
    asm("mov.s              ecx, esi");                                      // 0x00407601    8bce
    asm("call               ?ForceMoveVillagerToAbode@Villager@@QAEXPAVAbode@@@Z");  // 0x00407603    e838ec3400
    asm("pop                edi");                                           // 0x00407608    5f
    asm("pop                esi");                                           // 0x00407609    5e
    asm("mov                eax, 0x00000001");                               // 0x0040760a    b801000000
    asm("pop                ebp");                                           // 0x0040760f    5d
    asm("ret                0x0008");                                        // 0x00407610    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall SwapMaleForFemaleFrom__5AbodeFR5Abode(struct Abode* this, const void* edx, struct Abode* other)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00407620    8b442404
    asm("push               ebx");                                           // 0x00407624    53
    asm("push               ebp");                                           // 0x00407625    55
    asm("push               esi");                                           // 0x00407626    56
    asm("push               edi");                                           // 0x00407627    57
    asm("{disp32} mov       edi, dword ptr [eax + 0x000000a0]");             // 0x00407628    8bb8a0000000
    asm("test               edi, edi");                                      // 0x0040762e    85ff
    asm("mov.s              ebp, ecx");                                      // 0x00407630    8be9
    asm("{disp8} je         _jmp_addr_0x00407656");                          // 0x00407632    7422
    asm("mov                bl, 0x04");                                      // 0x00407634    b304
    asm("_jmp_addr_0x00407636:");
    asm("mov                edx, dword ptr [edi]");                          // 0x00407636    8b17
    asm("mov.s              ecx, edi");                                      // 0x00407638    8bcf
    asm("call               dword ptr [edx + 0x44c]");                       // 0x0040763a    ff924c040000
    asm("test               eax, eax");                                      // 0x00407640    85c0
    asm("{disp8} je         _jmp_addr_0x0040764c");                          // 0x00407642    7408
    asm("test               byte ptr [edi + 0x000000e0], bl");               // 0x00407644    849fe0000000
    asm("{disp8} je         _jmp_addr_0x0040765f");                          // 0x0040764a    7413
    asm("_jmp_addr_0x0040764c:");
    asm("{disp32} mov       edi, dword ptr [edi + 0x000000e4]");             // 0x0040764c    8bbfe4000000
    asm("test               edi, edi");                                      // 0x00407652    85ff
    asm("{disp8} jne        _jmp_addr_0x00407636");                          // 0x00407654    75e0
    asm("_jmp_addr_0x00407656:");
    asm("pop                edi");                                           // 0x00407656    5f
    asm("pop                esi");                                           // 0x00407657    5e
    asm("pop                ebp");                                           // 0x00407658    5d
    asm("xor.s              eax, eax");                                      // 0x00407659    33c0
    asm("pop                ebx");                                           // 0x0040765b    5b
    asm("ret                0x0004");                                        // 0x0040765c    c20400
    asm("_jmp_addr_0x0040765f:");
    asm("test               edi, edi");                                      // 0x0040765f    85ff
    asm("{disp8} je         _jmp_addr_0x00407656");                          // 0x00407661    74f3
    asm("{disp32} mov       esi, dword ptr [ebp + 0x000000a0]");             // 0x00407663    8bb5a0000000
    asm("test               esi, esi");                                      // 0x00407669    85f6
    asm("{disp8} je         _jmp_addr_0x00407656");                          // 0x0040766b    74e9
    asm("_jmp_addr_0x0040766d:");
    asm("mov                eax, dword ptr [esi]");                          // 0x0040766d    8b06
    asm("mov.s              ecx, esi");                                      // 0x0040766f    8bce
    asm("call               dword ptr [eax + 0x450]");                       // 0x00407671    ff9050040000
    asm("test               eax, eax");                                      // 0x00407677    85c0
    asm("{disp8} je         _jmp_addr_0x00407683");                          // 0x00407679    7408
    asm("test               byte ptr [esi + 0x000000e0], bl");               // 0x0040767b    849ee0000000
    asm("{disp8} je         _jmp_addr_0x00407696");                          // 0x00407681    7413
    asm("_jmp_addr_0x00407683:");
    asm("{disp32} mov       esi, dword ptr [esi + 0x000000e4]");             // 0x00407683    8bb6e4000000
    asm("test               esi, esi");                                      // 0x00407689    85f6
    asm("{disp8} jne        _jmp_addr_0x0040766d");                          // 0x0040768b    75e0
    asm("pop                edi");                                           // 0x0040768d    5f
    asm("pop                esi");                                           // 0x0040768e    5e
    asm("pop                ebp");                                           // 0x0040768f    5d
    asm("xor.s              eax, eax");                                      // 0x00407690    33c0
    asm("pop                ebx");                                           // 0x00407692    5b
    asm("ret                0x0004");                                        // 0x00407693    c20400
    asm("_jmp_addr_0x00407696:");
    asm("push               ebp");                                           // 0x00407696    55
    asm("mov.s              ecx, edi");                                      // 0x00407697    8bcf
    asm("call               ?ForceMoveVillagerToAbode@Villager@@QAEXPAVAbode@@@Z");  // 0x00407699    e8a2eb3400
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x0040769e    8b4c2414
    asm("push               ecx");                                           // 0x004076a2    51
    asm("mov.s              ecx, esi");                                      // 0x004076a3    8bce
    asm("call               ?ForceMoveVillagerToAbode@Villager@@QAEXPAVAbode@@@Z");  // 0x004076a5    e896eb3400
    asm("pop                edi");                                           // 0x004076aa    5f
    asm("pop                esi");                                           // 0x004076ab    5e
    asm("pop                ebp");                                           // 0x004076ac    5d
    asm("mov                eax, 0x00000001");                               // 0x004076ad    b801000000
    asm("pop                ebx");                                           // 0x004076b2    5b
    asm("ret                0x0004");                                        // 0x004076b3    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
float __fastcall GetVillagerHealthTotal__5AbodeFv(struct Abode* this)
{
    asm("push               ecx");                                           // 0x004076c0    51
    asm("push               esi");                                           // 0x004076c1    56
    asm("{disp32} mov       esi, dword ptr [ecx + 0x000000a0]");             // 0x004076c2    8bb1a0000000
    asm("test               esi, esi");                                      // 0x004076c8    85f6
    asm("{disp8} mov        dword ptr [esp + 0x04], 0x00000000");            // 0x004076ca    c744240400000000
    asm("{disp8} je         _jmp_addr_0x004076f0");                          // 0x004076d2    741c
    asm("_jmp_addr_0x004076d4:");
    asm("mov                eax, dword ptr [esi]");                          // 0x004076d4    8b06
    asm("mov.s              ecx, esi");                                      // 0x004076d6    8bce
    asm("call               dword ptr [eax + 0x11c]");                       // 0x004076d8    ff901c010000
    asm("{disp8} fadd       dword ptr [esp + 0x04]");                        // 0x004076de    d8442404
    asm("{disp32} mov       esi, dword ptr [esi + 0x000000e4]");             // 0x004076e2    8bb6e4000000
    asm("test               esi, esi");                                      // 0x004076e8    85f6
    asm("{disp8} fstp       dword ptr [esp + 0x04]");                        // 0x004076ea    d95c2404
    asm("{disp8} jne        _jmp_addr_0x004076d4");                          // 0x004076ee    75e4
    asm("_jmp_addr_0x004076f0:");
    asm("{disp8} fld        dword ptr [esp + 0x04]");                        // 0x004076f0    d9442404
    asm("pop                esi");                                           // 0x004076f4    5e
    asm("pop                ecx");                                           // 0x004076f5    59
    asm("ret");                                                              // 0x004076f6    c3
    __builtin_unreachable();
}
