#include "Abode.h"

__attribute__((XOR32rr_REV))
bool __fastcall GetNewEp__5AbodeF8ABODE_EPP7LHPoint(struct Abode* this, const void* edx, enum ABODE_EPP index, struct LHPoint* point)
{
    asm("sub                esp, 0x3c");                                     // 0x00403590    83ec3c
    asm("mov                eax, dword ptr [ecx]");                          // 0x00403593    8b01
    asm("push               ebx");                                           // 0x00403595    53
    asm("push               esi");                                           // 0x00403596    56
    asm("push               edi");                                           // 0x00403597    57
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                   // 0x00403598    894c2414
    asm("call               dword ptr [eax + 0x608]");                       // 0x0040359c    ff9008060000
    asm("{disp32} mov       ecx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]");        // 0x004035a2    8b0d34fee900
    asm("xor.s              edi, edi");                                      // 0x004035a8    33ff
    asm("cmp.s              eax, edi");                                      // 0x004035aa    3bc7
    asm("{disp8} jl         _jmp_addr_0x004035b2");                          // 0x004035ac    7c04
    asm("cmp                eax, dword ptr [ecx]");                          // 0x004035ae    3b01
    asm("{disp8} jl         _jmp_addr_0x004035b4");                          // 0x004035b0    7c02
    asm("_jmp_addr_0x004035b2:");
    asm("xor.s              eax, eax");                                      // 0x004035b2    33c0
    asm("_jmp_addr_0x004035b4:");
    asm("{disp8} mov        esi, dword ptr [ecx + eax * 0x4 + 0x04]");       // 0x004035b4    8b748104
    asm("cmp.s              esi, edi");                                      // 0x004035b8    3bf7
    asm("{disp32} je        _jmp_addr_0x0040367f");                          // 0x004035ba    0f84bf000000

    // IsContainsNewEP__8LH3DMeshFv
    asm("{disp8} mov        eax, dword ptr [esi + 0x04]");                   // 0x004035c0    8b4604
    asm("test               eax, 0x00800000"); /* LH3D_MESH_FLAGS_CONTAINS_NEW_EP */  // 0x004035c3    a900008000

    asm("{disp32} je        _jmp_addr_0x0040367f");                          // 0x004035c8    0f84b1000000
    asm("test               ah, -0x80"); /* LH3D_MESH_FLAGS_CONTAINS_LANDSCAPE_FEATURE */  // 0x004035ce    f6c480
    asm("{disp8} je         _jmp_addr_0x004035e3");                          // 0x004035d1    7410
    asm("mov.s              ecx, esi");                                      // 0x004035d3    8bce
    asm("call               ?GetSizeFootprintData@LH3DMesh@@QAEIXZ");        // 0x004035d5    e856010000
    asm("{disp8} mov        ecx, dword ptr [eax + 0x08]");                   // 0x004035da    8b4808
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x004035dd    894c2410
    asm("{disp8} jmp        _jmp_addr_0x004035e7");                          // 0x004035e1    eb04
    asm("_jmp_addr_0x004035e3:");
    asm("{disp8} mov        dword ptr [esp + 0x10], edi");                   // 0x004035e3    897c2410
    asm("_jmp_addr_0x004035e7:");
    asm("test               dword ptr [esi + 0x04], 0x00040000"); /* LH3D_MESH_FLAGS_CONTAINS_UV2 */  // 0x004035e7    f7460400000400
    asm("{disp8} je         _jmp_addr_0x004035ff");                          // 0x004035ee    740f
    asm("mov.s              ecx, esi");                                      // 0x004035f0    8bce
    asm("call               ?GetSizeUV2Data@LH3DMesh@@QAEIXZ");              // 0x004035f2    e849010000
    asm("mov                edx, dword ptr [eax]");                          // 0x004035f7    8b10
    asm("{disp8} mov        dword ptr [esp + 0x0c], edx");                   // 0x004035f9    8954240c
    asm("{disp8} jmp        _jmp_addr_0x00403603");                          // 0x004035fd    eb04
    asm("_jmp_addr_0x004035ff:");
    asm("{disp8} mov        dword ptr [esp + 0x0c], edi");                   // 0x004035ff    897c240c
    asm("_jmp_addr_0x00403603:");
    asm("test               dword ptr [esi + 0x04], 0x00080000"); /* LH3D_MESH_FLAGS_CONTAINS_NAME_DATA */            // 0x00403603    f7460400000800
    asm("push               ebp");                                           // 0x0040360a    55
    asm("{disp8} je         _jmp_addr_0x00403618");                          // 0x0040360b    740b
    asm("mov.s              ecx, esi");                                      // 0x0040360d    8bce
    asm("call               ?GetSizeNameData@LH3DMesh@@QAEIXZ");             // 0x0040360f    e85c010000
    asm("mov                ebp, dword ptr [eax]");                          // 0x00403614    8b28
    asm("{disp8} jmp        _jmp_addr_0x0040361a");                          // 0x00403616    eb02
    asm("_jmp_addr_0x00403618:");
    asm("xor.s              ebp, ebp");                                      // 0x00403618    33ed
    asm("_jmp_addr_0x0040361a:");
    asm("test               dword ptr [esi + 0x04], 0x00100000"); /* LH3D_MESH_FLAGS_CONTAINS_EXTRA_METRICS */  // 0x0040361a    f7460400001000
    asm("{disp8} je         _jmp_addr_0x0040362e");                          // 0x00403621    740b
    asm("mov.s              ecx, esi");                                      // 0x00403623    8bce
    asm("call               ?GetSizeEMetricsData@LH3DMesh@@QAEIXZ");         // 0x00403625    e8b6010000
    asm("mov                ebx, dword ptr [eax]");                          // 0x0040362a    8b18
    asm("{disp8} jmp        _jmp_addr_0x00403630");                          // 0x0040362c    eb02
    asm("_jmp_addr_0x0040362e:");
    asm("xor.s              ebx, ebx");                                      // 0x0040362e    33db
    asm("_jmp_addr_0x00403630:");
    asm("test               dword ptr [esi + 0x04], 0x00200000"); /* LH3D_MESH_FLAGS_CONTAINS_EBONE */  // 0x00403630    f7460400002000
    asm("{disp8} je         _jmp_addr_0x00403642");                          // 0x00403637    7409
    asm("mov.s              ecx, esi");                                      // 0x00403639    8bce
    asm("call               ?GetSizeEBone@LH3DMesh@@QAEIXZ");                // 0x0040363b    e8a0020000
    asm("mov                edi, dword ptr [eax]");                          // 0x00403640    8b38
    asm("_jmp_addr_0x00403642:");
    asm("mov.s              ecx, esi");                                      // 0x00403642    8bce
    asm("call               ?GetSizeTnLData@LH3DMesh@@QAEIXZ");              // 0x00403644    e8e7030000
    asm("{disp8} mov        edx, dword ptr [esi + 0x48]");                   // 0x00403649    8b5648
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x0040364c    8b4c2414
    asm("add.s              eax, edx");                                      // 0x00403650    03c2
    asm("{disp8} mov        edx, dword ptr [esp + 0x10]");                   // 0x00403652    8b542410
    asm("add.s              eax, edi");                                      // 0x00403656    03c7
    asm("add.s              eax, ebx");                                      // 0x00403658    03c3
    asm("add.s              eax, ebp");                                      // 0x0040365a    03c5
    asm("add.s              eax, edx");                                      // 0x0040365c    03c2
    asm("add.s              eax, ecx");                                      // 0x0040365e    03c1
    asm("pop                ebp");                                           // 0x00403660    5d
    asm("{disp8} je         _jmp_addr_0x0040367f");                          // 0x00403661    741c
    asm("{disp8} mov        esi, dword ptr [eax + 0x04]");                   // 0x00403663    8b7004
    asm("xor.s              ecx, ecx");                                      // 0x00403666    33c9
    asm("test               esi, esi");                                      // 0x00403668    85f6
    asm("{disp8} jle        _jmp_addr_0x0040367f");                          // 0x0040366a    7e13
    asm("{disp8} mov        edi, dword ptr [esp + 0x4c]");                   // 0x0040366c    8b7c244c
    asm("{disp8} lea        edx, dword ptr [eax + 0x3c]");                   // 0x00403670    8d503c
    asm("_jmp_addr_0x00403673:");
    asm("cmp                dword ptr [edx], edi");                          // 0x00403673    393a
    asm("{disp8} je         _jmp_addr_0x0040368a");                          // 0x00403675    7413
    asm("inc                ecx");                                           // 0x00403677    41
    asm("add                edx, 0x38");                                     // 0x00403678    83c238
    asm("cmp.s              ecx, esi");                                      // 0x0040367b    3bce
    asm("{disp8} jl         _jmp_addr_0x00403673");                          // 0x0040367d    7cf4
    asm("_jmp_addr_0x0040367f:");
    asm("pop                edi");                                           // 0x0040367f    5f
    asm("pop                esi");                                           // 0x00403680    5e
    asm("xor.s              eax, eax");                                      // 0x00403681    33c0
    asm("pop                ebx");                                           // 0x00403683    5b
    asm("add                esp, 0x3c");                                     // 0x00403684    83c43c
    asm("ret                0x0008");                                        // 0x00403687    c20800
    asm("_jmp_addr_0x0040368a:");
    asm("{disp8} mov        esi, dword ptr [esp + 0x50]");                   // 0x0040368a    8b742450
    asm("{disp32} lea       edx, dword ptr [ecx * 0x8 + 0x00000000]");       // 0x0040368e    8d14cd00000000
    asm("sub.s              edx, ecx");                                      // 0x00403695    2bd1
    asm("{disp8} lea        eax, dword ptr [eax + edx * 0x8 + 0x2c]");       // 0x00403697    8d44d02c
    asm("mov                edx, dword ptr [eax]");                          // 0x0040369b    8b10
    asm("mov.s              ecx, esi");                                      // 0x0040369d    8bce
    asm("mov                dword ptr [ecx], edx");                          // 0x0040369f    8911
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x004036a1    8b5004
    asm("{disp8} mov        dword ptr [ecx + 0x04], edx");                   // 0x004036a4    895104
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x004036a7    8b4008
    asm("{disp8} mov        dword ptr [ecx + 0x08], eax");                   // 0x004036aa    894108
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x004036ad    8b4c2414
    asm("mov                edx, dword ptr [ecx]");                          // 0x004036b1    8b11
    asm("{disp8} lea        eax, dword ptr [esp + 0x18]");                   // 0x004036b3    8d442418
    asm("push               eax");                                           // 0x004036b7    50
    asm("call               dword ptr [edx + 0x63c]");                       // 0x004036b8    ff923c060000
    asm("fld                dword ptr [esi]");                               // 0x004036be    d906
    asm("{disp8} fld        dword ptr [esi + 0x04]");                        // 0x004036c0    d94604
    asm("pop                edi");                                           // 0x004036c3    5f
    asm("{disp8} fld        dword ptr [esi + 0x08]");                        // 0x004036c4    d94608
    asm("mov                eax, 0x00000001");                               // 0x004036c7    b801000000
    asm("{disp8} fld        dword ptr [esp + 0x20]");                        // 0x004036cc    d9442420
    asm("fmul               st, st(2)");                                     // 0x004036d0    d8ca
    asm("{disp8} fld        dword ptr [esp + 0x2c]");                        // 0x004036d2    d944242c
    asm("fmul               st, st(2)");                                     // 0x004036d6    d8ca
    asm("faddp              st(1), st");                                     // 0x004036d8    dec1
    asm("{disp8} fld        dword ptr [esp + 0x14]");                        // 0x004036da    d9442414
    asm("fmul               st, st(4)");                                     // 0x004036de    d8cc
    asm("faddp              st(1), st");                                     // 0x004036e0    dec1
    asm("{disp8} fadd       dword ptr [esp + 0x38]");                        // 0x004036e2    d8442438
    asm("fstp               dword ptr [esi]");                               // 0x004036e6    d91e
    asm("{disp8} fld        dword ptr [esp + 0x30]");                        // 0x004036e8    d9442430
    asm("fmul               st, st(1)");                                     // 0x004036ec    d8c9
    asm("{disp8} fld        dword ptr [esp + 0x24]");                        // 0x004036ee    d9442424
    asm("fmul               st, st(3)");                                     // 0x004036f2    d8cb
    asm("faddp              st(1), st");                                     // 0x004036f4    dec1
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x004036f6    d9442418
    asm("fmul               st, st(4)");                                     // 0x004036fa    d8cc
    asm("faddp              st(1), st");                                     // 0x004036fc    dec1
    asm("{disp8} fadd       dword ptr [esp + 0x3c]");                        // 0x004036fe    d844243c
    asm("{disp8} fstp       dword ptr [esi + 0x04]");                        // 0x00403702    d95e04
    asm("{disp8} fld        dword ptr [esp + 0x34]");                        // 0x00403705    d9442434
    asm("fmul               st, st(1)");                                     // 0x00403709    d8c9
    asm("{disp8} fld        dword ptr [esp + 0x28]");                        // 0x0040370b    d9442428
    asm("fmul               st, st(3)");                                     // 0x0040370f    d8cb
    asm("faddp              st(1), st");                                     // 0x00403711    dec1
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                        // 0x00403713    d944241c
    asm("fmul               st, st(4)");                                     // 0x00403717    d8cc
    asm("faddp              st(1), st");                                     // 0x00403719    dec1
    asm("{disp8} fadd       dword ptr [esp + 0x40]");                        // 0x0040371b    d8442440
    asm("{disp8} fstp       dword ptr [esi + 0x08]");                        // 0x0040371f    d95e08
    asm("pop                esi");                                           // 0x00403722    5e
    asm("pop                ebx");                                           // 0x00403723    5b
    asm("fstp               st(0)");                                         // 0x00403724    ddd8
    asm("fstp               st(0)");                                         // 0x00403726    ddd8
    asm("fstp               st(0)");                                         // 0x00403728    ddd8
    asm("add                esp, 0x3c");                                     // 0x0040372a    83c43c
    asm("ret                0x0008");                                        // 0x0040372d    c20800
    __builtin_unreachable();
}
