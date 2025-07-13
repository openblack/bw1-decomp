#include "libs/lionhead/lh3dlib/development/LHMatrix.h"

__attribute__((XOR32rr_REV))
void __fastcall SetIdentity__8LHMatrixFv(struct LHMatrix* this)
{
    asm("xor.s              eax, eax");                                      // 0x00403500    33c0
    asm("{disp8} mov        dword ptr [ecx + 0x2c], eax");                   // 0x00403502    89412c
    asm("{disp8} mov        dword ptr [ecx + 0x28], eax");                   // 0x00403505    894128
    asm("{disp8} mov        dword ptr [ecx + 0x24], eax");                   // 0x00403508    894124
    asm("{disp8} mov        dword ptr [ecx + 0x1c], eax");                   // 0x0040350b    89411c
    asm("{disp8} mov        dword ptr [ecx + 0x18], eax");                   // 0x0040350e    894118
    asm("{disp8} mov        dword ptr [ecx + 0x14], eax");                   // 0x00403511    894114
    asm("{disp8} mov        dword ptr [ecx + 0x0c], eax");                   // 0x00403514    89410c
    asm("{disp8} mov        dword ptr [ecx + 0x08], eax");                   // 0x00403517    894108
    asm("{disp8} mov        dword ptr [ecx + 0x04], eax");                   // 0x0040351a    894104
    asm("mov                eax, 0x3f800000");                               // 0x0040351d    b80000803f
    asm("{disp8} mov        dword ptr [ecx + 0x20], eax");                   // 0x00403522    894120
    asm("{disp8} mov        dword ptr [ecx + 0x10], eax");                   // 0x00403525    894110
    asm("mov                dword ptr [ecx], eax");                          // 0x00403528    8901
    asm("ret");                                                              // 0x0040352a    c3
    asm("call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9");                          // 0x0040352b    e849e3ffff
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall Translation__8LHMatrixFv(struct LHMatrix* this, const struct LHPoint* translation)
{
    asm("xor.s              eax, eax");                                      // 0x00403530    33c0
    asm("{disp8} mov        dword ptr [ecx + 0x2c], eax");                   // 0x00403532    89412c
    asm("{disp8} mov        dword ptr [ecx + 0x28], eax");                   // 0x00403535    894128
    asm("{disp8} mov        dword ptr [ecx + 0x24], eax");                   // 0x00403538    894124
    asm("{disp8} mov        dword ptr [ecx + 0x1c], eax");                   // 0x0040353b    89411c
    asm("{disp8} mov        dword ptr [ecx + 0x18], eax");                   // 0x0040353e    894118
    asm("{disp8} mov        dword ptr [ecx + 0x14], eax");                   // 0x00403541    894114
    asm("{disp8} mov        dword ptr [ecx + 0x0c], eax");                   // 0x00403544    89410c
    asm("{disp8} mov        dword ptr [ecx + 0x08], eax");                   // 0x00403547    894108
    asm("{disp8} mov        dword ptr [ecx + 0x04], eax");                   // 0x0040354a    894104
    asm("mov                eax, 0x3f800000");                               // 0x0040354d    b80000803f
    asm("{disp8} mov        dword ptr [ecx + 0x20], eax");                   // 0x00403552    894120
    asm("{disp8} mov        dword ptr [ecx + 0x10], eax");                   // 0x00403555    894110
    asm("mov                dword ptr [ecx], eax");                          // 0x00403558    8901
    asm("mov                eax, dword ptr [edx]");                          // 0x0040355a    8b02
    asm("{disp8} mov        dword ptr [ecx + 0x24], eax");                   // 0x0040355c    894124
    asm("{disp8} mov        eax, dword ptr [edx + 0x04]");                   // 0x0040355f    8b4204
    asm("{disp8} mov        dword ptr [ecx + 0x28], eax");                   // 0x00403562    894128
    asm("{disp8} mov        edx, dword ptr [edx + 0x08]");                   // 0x00403565    8b5208
    asm("{disp8} mov        dword ptr [ecx + 0x2c], edx");                   // 0x00403568    89512c
    asm("ret");                                                              // 0x0040356b    c3
    __builtin_unreachable();
}

void __fastcall PostTranslation__8LHMatrixFRC7LHPoint(struct LHMatrix* this, struct LHPoint* translation)
{
    asm("fld                dword ptr [edx]");                               // 0x00403570    d902
    asm("{disp8} fadd       dword ptr [ecx + 0x24]");                        // 0x00403572    d84124
    asm("{disp8} fstp       dword ptr [ecx + 0x24]");                        // 0x00403575    d95924
    asm("{disp8} fld        dword ptr [edx + 0x04]");                        // 0x00403578    d94204
    asm("{disp8} fadd       dword ptr [ecx + 0x28]");                        // 0x0040357b    d84128
    asm("{disp8} fstp       dword ptr [ecx + 0x28]");                        // 0x0040357e    d95928
    asm("{disp8} fld        dword ptr [edx + 0x08]");                        // 0x00403581    d94208
    asm("{disp8} fadd       dword ptr [ecx + 0x2c]");                        // 0x00403584    d8412c
    asm("{disp8} fstp       dword ptr [ecx + 0x2c]");                        // 0x00403587    d9592c
    asm("ret");                                                              // 0x0040358a    c3
    asm("call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9");                          // 0x0040358b    e8e9e2ffff
    __builtin_unreachable();
}
