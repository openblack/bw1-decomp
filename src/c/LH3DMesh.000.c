#include "libs/lionhead/lh3dlib/development/LH3DMesh.h"

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetSizeFootprintData__8LH3DMeshFv(struct LH3DMesh* param_1)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x04]");                   // 0x00403730    8b4104
    asm("test               ah, -0x80");                                     // 0x00403733    f6c480
    asm("{disp8} je         _jmp_addr_0x0040373c");                          // 0x00403736    7404
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403738    8b4148
    asm("ret");                                                              // 0x0040373b    c3
    asm("_jmp_addr_0x0040373c:");
    asm("xor.s              eax, eax");                                      // 0x0040373c    33c0
    asm("ret");                                                              // 0x0040373e    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetSizeUV2Data__8LH3DMeshFv(struct LH3DMesh* param_1)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x04]");                   // 0x00403740    8b4104
    asm("test               eax, 0x00040000");                               // 0x00403743    a900000400
    asm("{disp8} jne        _jmp_addr_0x0040374d");                          // 0x00403748    7503
    asm("xor.s              eax, eax");                                      // 0x0040374a    33c0
    asm("ret");                                                              // 0x0040374c    c3
    asm("_jmp_addr_0x0040374d:");
    asm("test               ah, -0x80");                                     // 0x0040374d    f6c480
    asm("{disp8} je         _jmp_addr_0x0040375b");                          // 0x00403750    7409
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403752    8b4148
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                   // 0x00403755    8b5008
    asm("add.s              eax, edx");                                      // 0x00403758    03c2
    asm("ret");                                                              // 0x0040375a    c3
    asm("_jmp_addr_0x0040375b:");
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x0040375b    8b4148
    asm("xor.s              edx, edx");                                      // 0x0040375e    33d2
    asm("add.s              eax, edx");                                      // 0x00403760    03c2
    asm("ret");                                                              // 0x00403762    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetSizeNameData__8LH3DMeshFv(struct LH3DMesh* param_1)
{
    asm("{disp8} mov        edx, dword ptr [ecx + 0x04]");                   // 0x00403770    8b5104
    asm("test               edx, 0x00080000");                               // 0x00403773    f7c200000800
    asm("{disp8} jne        _jmp_addr_0x0040377e");                          // 0x00403779    7503
    asm("xor.s              eax, eax");                                      // 0x0040377b    33c0
    asm("ret");                                                              // 0x0040377d    c3
    asm("_jmp_addr_0x0040377e:");
    asm("push               esi");                                           // 0x0040377e    56
    asm("mov.s              esi, edx");                                      // 0x0040377f    8bf2
    asm("and                esi, 0x00008000");                               // 0x00403781    81e600800000
    asm("push               edi");                                           // 0x00403787    57
    asm("{disp8} je         _jmp_addr_0x00403792");                          // 0x00403788    7408
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x0040378a    8b4148
    asm("{disp8} mov        edi, dword ptr [eax + 0x08]");                   // 0x0040378d    8b7808
    asm("{disp8} jmp        _jmp_addr_0x00403794");                          // 0x00403790    eb02
    asm("_jmp_addr_0x00403792:");
    asm("xor.s              edi, edi");                                      // 0x00403792    33ff
    asm("_jmp_addr_0x00403794:");
    asm("test               edx, 0x00040000");                               // 0x00403794    f7c200000400
    asm("{disp8} je         _jmp_addr_0x004037c7");                          // 0x0040379a    742b
    asm("test               esi, esi");                                      // 0x0040379c    85f6
    asm("{disp8} je         _jmp_addr_0x004037b4");                          // 0x0040379e    7414
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x004037a0    8b4148
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                   // 0x004037a3    8b5008
    asm("add.s              eax, edx");                                      // 0x004037a6    03c2
    asm("mov                edx, dword ptr [eax]");                          // 0x004037a8    8b10
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x004037aa    8b4148
    asm("add.s              eax, edx");                                      // 0x004037ad    03c2
    asm("add.s              eax, edi");                                      // 0x004037af    03c7
    asm("pop                edi");                                           // 0x004037b1    5f
    asm("pop                esi");                                           // 0x004037b2    5e
    asm("ret");                                                              // 0x004037b3    c3
    asm("_jmp_addr_0x004037b4:");
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x004037b4    8b4148
    asm("xor.s              edx, edx");                                      // 0x004037b7    33d2
    asm("add.s              eax, edx");                                      // 0x004037b9    03c2
    asm("mov                edx, dword ptr [eax]");                          // 0x004037bb    8b10
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x004037bd    8b4148
    asm("add.s              eax, edx");                                      // 0x004037c0    03c2
    asm("add.s              eax, edi");                                      // 0x004037c2    03c7
    asm("pop                edi");                                           // 0x004037c4    5f
    asm("pop                esi");                                           // 0x004037c5    5e
    asm("ret");                                                              // 0x004037c6    c3
    asm("_jmp_addr_0x004037c7:");
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x004037c7    8b4148
    asm("xor.s              edx, edx");                                      // 0x004037ca    33d2
    asm("add.s              eax, edx");                                      // 0x004037cc    03c2
    asm("add.s              eax, edi");                                      // 0x004037ce    03c7
    asm("pop                edi");                                           // 0x004037d0    5f
    asm("pop                esi");                                           // 0x004037d1    5e
    asm("ret");                                                              // 0x004037d2    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetSizeEMetricsData__8LH3DMeshFv(struct LH3DMesh* param_1)
{
    asm("push               ecx");                                           // 0x004037e0    51
    asm("push               esi");                                           // 0x004037e1    56
    asm("{disp8} mov        esi, dword ptr [ecx + 0x04]");                   // 0x004037e2    8b7104
    asm("test               esi, 0x00100000");                               // 0x004037e5    f7c600001000
    asm("{disp8} jne        _jmp_addr_0x004037f2");                          // 0x004037eb    7505
    asm("xor.s              eax, eax");                                      // 0x004037ed    33c0
    asm("pop                esi");                                           // 0x004037ef    5e
    asm("pop                ecx");                                           // 0x004037f0    59
    asm("ret");                                                              // 0x004037f1    c3
    asm("_jmp_addr_0x004037f2:");
    asm("push               ebx");                                           // 0x004037f2    53
    asm("push               ebp");                                           // 0x004037f3    55
    asm("push               edi");                                           // 0x004037f4    57
    asm("mov.s              edi, esi");                                      // 0x004037f5    8bfe
    asm("and                edi, 0x00008000");                               // 0x004037f7    81e700800000
    asm("{disp8} je         _jmp_addr_0x0040380b");                          // 0x004037fd    740c
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x004037ff    8b4148
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x00403802    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x00403805    89442410
    asm("{disp8} jmp        _jmp_addr_0x00403813");                          // 0x00403809    eb08
    asm("_jmp_addr_0x0040380b:");
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x0040380b    c744241000000000
    asm("_jmp_addr_0x00403813:");
    asm("mov.s              ebx, esi");                                      // 0x00403813    8bde
    asm("and                ebx, 0x00040000");                               // 0x00403815    81e300000400
    asm("{disp8} je         _jmp_addr_0x0040383a");                          // 0x0040381b    741d
    asm("test               edi, edi");                                      // 0x0040381d    85ff
    asm("{disp8} je         _jmp_addr_0x0040382e");                          // 0x0040381f    740d
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403821    8b4148
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                   // 0x00403824    8b5008
    asm("mov                ebp, dword ptr [eax + edx * 0x1]");              // 0x00403827    8b2c10
    asm("add.s              eax, edx");                                      // 0x0040382a    03c2
    asm("{disp8} jmp        _jmp_addr_0x0040383c");                          // 0x0040382c    eb0e
    asm("_jmp_addr_0x0040382e:");
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x0040382e    8b4148
    asm("xor.s              edx, edx");                                      // 0x00403831    33d2
    asm("mov                ebp, dword ptr [eax + edx * 0x1]");              // 0x00403833    8b2c10
    asm("add.s              eax, edx");                                      // 0x00403836    03c2
    asm("{disp8} jmp        _jmp_addr_0x0040383c");                          // 0x00403838    eb02
    asm("_jmp_addr_0x0040383a:");
    asm("xor.s              ebp, ebp");                                      // 0x0040383a    33ed
    asm("_jmp_addr_0x0040383c:");
    asm("test               esi, 0x00080000");                               // 0x0040383c    f7c600000800
    asm("{disp32} je        _jmp_addr_0x004038ca");                          // 0x00403842    0f8482000000
    asm("test               edi, edi");                                      // 0x00403848    85ff
    asm("{disp8} je         _jmp_addr_0x00403854");                          // 0x0040384a    7408
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x0040384c    8b4148
    asm("{disp8} mov        esi, dword ptr [eax + 0x08]");                   // 0x0040384f    8b7008
    asm("{disp8} jmp        _jmp_addr_0x00403856");                          // 0x00403852    eb02
    asm("_jmp_addr_0x00403854:");
    asm("xor.s              esi, esi");                                      // 0x00403854    33f6
    asm("_jmp_addr_0x00403856:");
    asm("test               ebx, ebx");                                      // 0x00403856    85db
    asm("{disp8} je         _jmp_addr_0x004038ab");                          // 0x00403858    7451
    asm("test               edi, edi");                                      // 0x0040385a    85ff
    asm("{disp8} je         _jmp_addr_0x00403885");                          // 0x0040385c    7427
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x0040385e    8b4148
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                   // 0x00403861    8b5008
    asm("add.s              eax, edx");                                      // 0x00403864    03c2
    asm("mov                edx, dword ptr [eax]");                          // 0x00403866    8b10
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403868    8b4148
    asm("add.s              eax, edx");                                      // 0x0040386b    03c2
    asm("mov                edx, dword ptr [eax + esi * 0x1]");              // 0x0040386d    8b1430
    asm("add.s              eax, esi");                                      // 0x00403870    03c6
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403872    8b4148
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00403875    8b4c2410
    asm("add.s              eax, edx");                                      // 0x00403879    03c2
    asm("pop                edi");                                           // 0x0040387b    5f
    asm("add.s              eax, ebp");                                      // 0x0040387c    03c5
    asm("pop                ebp");                                           // 0x0040387e    5d
    asm("pop                ebx");                                           // 0x0040387f    5b
    asm("add.s              eax, ecx");                                      // 0x00403880    03c1
    asm("pop                esi");                                           // 0x00403882    5e
    asm("pop                ecx");                                           // 0x00403883    59
    asm("ret");                                                              // 0x00403884    c3
    asm("_jmp_addr_0x00403885:");
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403885    8b4148
    asm("xor.s              edx, edx");                                      // 0x00403888    33d2
    asm("add.s              eax, edx");                                      // 0x0040388a    03c2
    asm("mov                edx, dword ptr [eax]");                          // 0x0040388c    8b10
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x0040388e    8b4148
    asm("add.s              eax, edx");                                      // 0x00403891    03c2
    asm("mov                edx, dword ptr [eax + esi * 0x1]");              // 0x00403893    8b1430
    asm("add.s              eax, esi");                                      // 0x00403896    03c6
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403898    8b4148
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x0040389b    8b4c2410
    asm("add.s              eax, edx");                                      // 0x0040389f    03c2
    asm("pop                edi");                                           // 0x004038a1    5f
    asm("add.s              eax, ebp");                                      // 0x004038a2    03c5
    asm("pop                ebp");                                           // 0x004038a4    5d
    asm("pop                ebx");                                           // 0x004038a5    5b
    asm("add.s              eax, ecx");                                      // 0x004038a6    03c1
    asm("pop                esi");                                           // 0x004038a8    5e
    asm("pop                ecx");                                           // 0x004038a9    59
    asm("ret");                                                              // 0x004038aa    c3
    asm("_jmp_addr_0x004038ab:");
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x004038ab    8b4148
    asm("xor.s              edx, edx");                                      // 0x004038ae    33d2
    asm("add.s              eax, edx");                                      // 0x004038b0    03c2
    asm("mov                edx, dword ptr [eax + esi * 0x1]");              // 0x004038b2    8b1430
    asm("add.s              eax, esi");                                      // 0x004038b5    03c6
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x004038b7    8b4148
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x004038ba    8b4c2410
    asm("add.s              eax, edx");                                      // 0x004038be    03c2
    asm("pop                edi");                                           // 0x004038c0    5f
    asm("add.s              eax, ebp");                                      // 0x004038c1    03c5
    asm("pop                ebp");                                           // 0x004038c3    5d
    asm("pop                ebx");                                           // 0x004038c4    5b
    asm("add.s              eax, ecx");                                      // 0x004038c5    03c1
    asm("pop                esi");                                           // 0x004038c7    5e
    asm("pop                ecx");                                           // 0x004038c8    59
    asm("ret");                                                              // 0x004038c9    c3
    asm("_jmp_addr_0x004038ca:");
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x004038ca    8b4148
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x004038cd    8b4c2410
    asm("xor.s              edx, edx");                                      // 0x004038d1    33d2
    asm("add.s              eax, edx");                                      // 0x004038d3    03c2
    asm("pop                edi");                                           // 0x004038d5    5f
    asm("add.s              eax, ebp");                                      // 0x004038d6    03c5
    asm("pop                ebp");                                           // 0x004038d8    5d
    asm("pop                ebx");                                           // 0x004038d9    5b
    asm("add.s              eax, ecx");                                      // 0x004038da    03c1
    asm("pop                esi");                                           // 0x004038dc    5e
    asm("pop                ecx");                                           // 0x004038dd    59
    asm("ret");                                                              // 0x004038de    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetSizeEBone__8LH3DMeshFv(struct LH3DMesh* param_1)
{
    asm("sub                esp, 0x08");                                     // 0x004038e0    83ec08
    asm("push               esi");                                           // 0x004038e3    56
    asm("mov.s              esi, ecx");                                      // 0x004038e4    8bf1
    asm("{disp8} mov        edx, dword ptr [esi + 0x04]");                   // 0x004038e6    8b5604
    asm("test               edx, 0x00200000");                               // 0x004038e9    f7c200002000
    asm("{disp8} jne        _jmp_addr_0x004038f8");                          // 0x004038ef    7507
    asm("xor.s              eax, eax");                                      // 0x004038f1    33c0
    asm("pop                esi");                                           // 0x004038f3    5e
    asm("add                esp, 0x08");                                     // 0x004038f4    83c408
    asm("ret");                                                              // 0x004038f7    c3
    asm("_jmp_addr_0x004038f8:");
    asm("push               ebx");                                           // 0x004038f8    53
    asm("mov.s              ebx, edx");                                      // 0x004038f9    8bda
    asm("and                ebx, 0x00008000");                               // 0x004038fb    81e300800000
    asm("push               ebp");                                           // 0x00403901    55
    asm("push               edi");                                           // 0x00403902    57
    asm("{disp8} je         _jmp_addr_0x00403911");                          // 0x00403903    740c
    asm("{disp8} mov        eax, dword ptr [esi + 0x48]");                   // 0x00403905    8b4648
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x00403908    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                   // 0x0040390b    89442414
    asm("{disp8} jmp        _jmp_addr_0x00403919");                          // 0x0040390f    eb08
    asm("_jmp_addr_0x00403911:");
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x00403911    c744241400000000
    asm("_jmp_addr_0x00403919:");
    asm("mov.s              ebp, edx");                                      // 0x00403919    8bea
    asm("and                ebp, 0x00040000");                               // 0x0040391b    81e500000400
    asm("{disp8} je         _jmp_addr_0x00403946");                          // 0x00403921    7423
    asm("test               ebx, ebx");                                      // 0x00403923    85db
    asm("{disp8} je         _jmp_addr_0x00403937");                          // 0x00403925    7410
    asm("{disp8} mov        eax, dword ptr [esi + 0x48]");                   // 0x00403927    8b4648
    asm("{disp8} mov        ecx, dword ptr [eax + 0x08]");                   // 0x0040392a    8b4808
    asm("add.s              eax, ecx");                                      // 0x0040392d    03c1
    asm("mov                ecx, dword ptr [eax]");                          // 0x0040392f    8b08
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x00403931    894c2410
    asm("{disp8} jmp        _jmp_addr_0x0040394e");                          // 0x00403935    eb17
    asm("_jmp_addr_0x00403937:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x48]");                   // 0x00403937    8b4648
    asm("xor.s              ecx, ecx");                                      // 0x0040393a    33c9
    asm("add.s              eax, ecx");                                      // 0x0040393c    03c1
    asm("mov                ecx, dword ptr [eax]");                          // 0x0040393e    8b08
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x00403940    894c2410
    asm("{disp8} jmp        _jmp_addr_0x0040394e");                          // 0x00403944    eb08
    asm("_jmp_addr_0x00403946:");
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x00403946    c744241000000000
    asm("_jmp_addr_0x0040394e:");
    asm("test               edx, 0x00080000");                               // 0x0040394e    f7c200000800
    asm("{disp8} je         _jmp_addr_0x004039ac");                          // 0x00403954    7456
    asm("test               ebx, ebx");                                      // 0x00403956    85db
    asm("{disp8} je         _jmp_addr_0x00403962");                          // 0x00403958    7408
    asm("{disp8} mov        eax, dword ptr [esi + 0x48]");                   // 0x0040395a    8b4648
    asm("{disp8} mov        edi, dword ptr [eax + 0x08]");                   // 0x0040395d    8b7808
    asm("{disp8} jmp        _jmp_addr_0x00403964");                          // 0x00403960    eb02
    asm("_jmp_addr_0x00403962:");
    asm("xor.s              edi, edi");                                      // 0x00403962    33ff
    asm("_jmp_addr_0x00403964:");
    asm("test               ebp, ebp");                                      // 0x00403964    85ed
    asm("{disp8} je         _jmp_addr_0x0040399e");                          // 0x00403966    7436
    asm("test               ebx, ebx");                                      // 0x00403968    85db
    asm("{disp8} je         _jmp_addr_0x00403989");                          // 0x0040396a    741d
    asm("mov.s              ecx, esi");                                      // 0x0040396c    8bce
    asm("call               ?GetSizeFootprintData@LH3DMesh@@QAEIXZ");        // 0x0040396e    e8bdfdffff
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x00403973    8b4008
    asm("{disp8} mov        ecx, dword ptr [esi + 0x48]");                   // 0x00403976    8b4e48
    asm("add.s              ecx, eax");                                      // 0x00403979    03c8
    asm("mov                ecx, dword ptr [ecx]");                          // 0x0040397b    8b09
    asm("{disp8} mov        eax, dword ptr [esi + 0x48]");                   // 0x0040397d    8b4648
    asm("add.s              eax, ecx");                                      // 0x00403980    03c1
    asm("mov                ebp, dword ptr [eax + edi * 0x1]");              // 0x00403982    8b2c38
    asm("add.s              eax, edi");                                      // 0x00403985    03c7
    asm("{disp8} jmp        _jmp_addr_0x004039ae");                          // 0x00403987    eb25
    asm("_jmp_addr_0x00403989:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x48]");                   // 0x00403989    8b4e48
    asm("xor.s              eax, eax");                                      // 0x0040398c    33c0
    asm("add.s              ecx, eax");                                      // 0x0040398e    03c8
    asm("mov                ecx, dword ptr [ecx]");                          // 0x00403990    8b09
    asm("{disp8} mov        eax, dword ptr [esi + 0x48]");                   // 0x00403992    8b4648
    asm("add.s              eax, ecx");                                      // 0x00403995    03c1
    asm("mov                ebp, dword ptr [eax + edi * 0x1]");              // 0x00403997    8b2c38
    asm("add.s              eax, edi");                                      // 0x0040399a    03c7
    asm("{disp8} jmp        _jmp_addr_0x004039ae");                          // 0x0040399c    eb10
    asm("_jmp_addr_0x0040399e:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x48]");                   // 0x0040399e    8b4648
    asm("xor.s              ecx, ecx");                                      // 0x004039a1    33c9
    asm("add.s              eax, ecx");                                      // 0x004039a3    03c1
    asm("mov                ebp, dword ptr [eax + edi * 0x1]");              // 0x004039a5    8b2c38
    asm("add.s              eax, edi");                                      // 0x004039a8    03c7
    asm("{disp8} jmp        _jmp_addr_0x004039ae");                          // 0x004039aa    eb02
    asm("_jmp_addr_0x004039ac:");
    asm("xor.s              ebp, ebp");                                      // 0x004039ac    33ed
    asm("_jmp_addr_0x004039ae:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x04]");                   // 0x004039ae    8b4e04
    asm("test               ecx, 0x00100000");                               // 0x004039b1    f7c100001000
    asm("{disp8} je         _jmp_addr_0x00403a0b");                          // 0x004039b7    7452
    asm("test               ch, -0x80");                                     // 0x004039b9    f6c580
    asm("{disp8} je         _jmp_addr_0x004039c6");                          // 0x004039bc    7408
    asm("{disp8} mov        eax, dword ptr [esi + 0x48]");                   // 0x004039be    8b4648
    asm("{disp8} mov        ebx, dword ptr [eax + 0x08]");                   // 0x004039c1    8b5808
    asm("{disp8} jmp        _jmp_addr_0x004039c8");                          // 0x004039c4    eb02
    asm("_jmp_addr_0x004039c6:");
    asm("xor.s              ebx, ebx");                                      // 0x004039c6    33db
    asm("_jmp_addr_0x004039c8:");
    asm("test               ecx, 0x00040000");                               // 0x004039c8    f7c100000400
    asm("{disp8} je         _jmp_addr_0x004039db");                          // 0x004039ce    740b
    asm("mov.s              ecx, esi");                                      // 0x004039d0    8bce
    asm("call               ?GetSizeUV2Data@LH3DMesh@@QAEIXZ");              // 0x004039d2    e869fdffff
    asm("mov                edi, dword ptr [eax]");                          // 0x004039d7    8b38
    asm("{disp8} jmp        _jmp_addr_0x004039dd");                          // 0x004039d9    eb02
    asm("_jmp_addr_0x004039db:");
    asm("xor.s              edi, edi");                                      // 0x004039db    33ff
    asm("_jmp_addr_0x004039dd:");
    asm("test               dword ptr [esi + 0x04], 0x00080000");            // 0x004039dd    f7460400000800
    asm("{disp8} je         _jmp_addr_0x004039fc");                          // 0x004039e4    7416
    asm("mov.s              ecx, esi");                                      // 0x004039e6    8bce
    asm("call               ?GetSizeNameData@LH3DMesh@@QAEIXZ");             // 0x004039e8    e883fdffff
    asm("mov                eax, dword ptr [eax]");                          // 0x004039ed    8b00
    asm("{disp8} mov        ecx, dword ptr [esi + 0x48]");                   // 0x004039ef    8b4e48
    asm("add.s              ecx, eax");                                      // 0x004039f2    03c8
    asm("add.s              ecx, edi");                                      // 0x004039f4    03cf
    asm("add.s              ecx, ebx");                                      // 0x004039f6    03cb
    asm("mov                ecx, dword ptr [ecx]");                          // 0x004039f8    8b09
    asm("{disp8} jmp        _jmp_addr_0x00403a0d");                          // 0x004039fa    eb11
    asm("_jmp_addr_0x004039fc:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x48]");                   // 0x004039fc    8b4e48
    asm("xor.s              eax, eax");                                      // 0x004039ff    33c0
    asm("add.s              ecx, eax");                                      // 0x00403a01    03c8
    asm("add.s              ecx, edi");                                      // 0x00403a03    03cf
    asm("add.s              ecx, ebx");                                      // 0x00403a05    03cb
    asm("mov                ecx, dword ptr [ecx]");                          // 0x00403a07    8b09
    asm("{disp8} jmp        _jmp_addr_0x00403a0d");                          // 0x00403a09    eb02
    asm("_jmp_addr_0x00403a0b:");
    asm("xor.s              ecx, ecx");                                      // 0x00403a0b    33c9
    asm("_jmp_addr_0x00403a0d:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x48]");                   // 0x00403a0d    8b4648
    asm("{disp8} mov        edx, dword ptr [esp + 0x10]");                   // 0x00403a10    8b542410
    asm("add.s              eax, ecx");                                      // 0x00403a14    03c1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x00403a16    8b4c2414
    asm("pop                edi");                                           // 0x00403a1a    5f
    asm("add.s              eax, ebp");                                      // 0x00403a1b    03c5
    asm("pop                ebp");                                           // 0x00403a1d    5d
    asm("add.s              eax, edx");                                      // 0x00403a1e    03c2
    asm("pop                ebx");                                           // 0x00403a20    5b
    asm("add.s              eax, ecx");                                      // 0x00403a21    03c1
    asm("pop                esi");                                           // 0x00403a23    5e
    asm("add                esp, 0x08");                                     // 0x00403a24    83c408
    asm("ret");                                                              // 0x00403a27    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetSizeTnLData__8LH3DMeshFv(struct LH3DMesh* param_1)
{
    asm("sub                esp, 0x08");                                     // 0x00403a30    83ec08
    asm("push               esi");                                           // 0x00403a33    56
    asm("mov.s              esi, ecx");                                      // 0x00403a34    8bf1
    asm("push               edi");                                           // 0x00403a36    57
    asm("{disp8} mov        edi, dword ptr [esi + 0x04]");                   // 0x00403a37    8b7e04
    asm("test               edi, 0x00400000");                               // 0x00403a3a    f7c700004000
    asm("{disp32} je        _jmp_addr_0x00403b7d");                          // 0x00403a40    0f8437010000
    asm("mov.s              edx, edi");                                      // 0x00403a46    8bd7
    asm("and                edx, 0x00008000");                               // 0x00403a48    81e200800000
    asm("{disp8} je         _jmp_addr_0x00403a5c");                          // 0x00403a4e    740c
    asm("{disp8} mov        eax, dword ptr [esi + 0x48]");                   // 0x00403a50    8b4648
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x00403a53    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x0c], eax");                   // 0x00403a56    8944240c
    asm("{disp8} jmp        _jmp_addr_0x00403a64");                          // 0x00403a5a    eb08
    asm("_jmp_addr_0x00403a5c:");
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");            // 0x00403a5c    c744240c00000000
    asm("_jmp_addr_0x00403a64:");
    asm("test               edi, 0x00040000");                               // 0x00403a64    f7c700000400
    asm("{disp8} je         _jmp_addr_0x00403a8f");                          // 0x00403a6a    7423
    asm("test               edx, edx");                                      // 0x00403a6c    85d2
    asm("{disp8} je         _jmp_addr_0x00403a80");                          // 0x00403a6e    7410
    asm("{disp8} mov        eax, dword ptr [esi + 0x48]");                   // 0x00403a70    8b4648
    asm("{disp8} mov        ecx, dword ptr [eax + 0x08]");                   // 0x00403a73    8b4808
    asm("add.s              eax, ecx");                                      // 0x00403a76    03c1
    asm("mov                ecx, dword ptr [eax]");                          // 0x00403a78    8b08
    asm("{disp8} mov        dword ptr [esp + 0x08], ecx");                   // 0x00403a7a    894c2408
    asm("{disp8} jmp        _jmp_addr_0x00403a97");                          // 0x00403a7e    eb17
    asm("_jmp_addr_0x00403a80:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x48]");                   // 0x00403a80    8b4648
    asm("xor.s              ecx, ecx");                                      // 0x00403a83    33c9
    asm("add.s              eax, ecx");                                      // 0x00403a85    03c1
    asm("mov                ecx, dword ptr [eax]");                          // 0x00403a87    8b08
    asm("{disp8} mov        dword ptr [esp + 0x08], ecx");                   // 0x00403a89    894c2408
    asm("{disp8} jmp        _jmp_addr_0x00403a97");                          // 0x00403a8d    eb08
    asm("_jmp_addr_0x00403a8f:");
    asm("{disp8} mov        dword ptr [esp + 0x08], 0x00000000");            // 0x00403a8f    c744240800000000
    asm("_jmp_addr_0x00403a97:");
    asm("test               edi, 0x00080000");                               // 0x00403a97    f7c700000800
    asm("push               ebx");                                           // 0x00403a9d    53
    asm("push               ebp");                                           // 0x00403a9e    55
    asm("{disp8} je         _jmp_addr_0x00403adf");                          // 0x00403a9f    743e
    asm("test               edx, edx");                                      // 0x00403aa1    85d2
    asm("{disp8} je         _jmp_addr_0x00403ab1");                          // 0x00403aa3    740c
    asm("mov.s              ecx, esi");                                      // 0x00403aa5    8bce
    asm("call               ?GetSizeFootprintData@LH3DMesh@@QAEIXZ");        // 0x00403aa7    e884fcffff
    asm("{disp8} mov        edi, dword ptr [eax + 0x08]");                   // 0x00403aac    8b7808
    asm("{disp8} jmp        _jmp_addr_0x00403ab3");                          // 0x00403aaf    eb02
    asm("_jmp_addr_0x00403ab1:");
    asm("xor.s              edi, edi");                                      // 0x00403ab1    33ff
    asm("_jmp_addr_0x00403ab3:");
    asm("test               dword ptr [esi + 0x04], 0x00040000");            // 0x00403ab3    f7460400000400
    asm("{disp8} je         _jmp_addr_0x00403ad1");                          // 0x00403aba    7415
    asm("mov.s              ecx, esi");                                      // 0x00403abc    8bce
    asm("call               ?GetSizeUV2Data@LH3DMesh@@QAEIXZ");              // 0x00403abe    e87dfcffff
    asm("mov                eax, dword ptr [eax]");                          // 0x00403ac3    8b00
    asm("{disp8} mov        ecx, dword ptr [esi + 0x48]");                   // 0x00403ac5    8b4e48
    asm("add.s              ecx, eax");                                      // 0x00403ac8    03c8
    asm("mov                ebp, dword ptr [ecx + edi * 0x1]");              // 0x00403aca    8b2c39
    asm("add.s              ecx, edi");                                      // 0x00403acd    03cf
    asm("{disp8} jmp        _jmp_addr_0x00403ae1");                          // 0x00403acf    eb10
    asm("_jmp_addr_0x00403ad1:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x48]");                   // 0x00403ad1    8b4e48
    asm("xor.s              eax, eax");                                      // 0x00403ad4    33c0
    asm("add.s              ecx, eax");                                      // 0x00403ad6    03c8
    asm("mov                ebp, dword ptr [ecx + edi * 0x1]");              // 0x00403ad8    8b2c39
    asm("add.s              ecx, edi");                                      // 0x00403adb    03cf
    asm("{disp8} jmp        _jmp_addr_0x00403ae1");                          // 0x00403add    eb02
    asm("_jmp_addr_0x00403adf:");
    asm("xor.s              ebp, ebp");                                      // 0x00403adf    33ed
    asm("_jmp_addr_0x00403ae1:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x04]");                   // 0x00403ae1    8b4604
    asm("test               eax, 0x00100000");                               // 0x00403ae4    a900001000
    asm("{disp8} je         _jmp_addr_0x00403b26");                          // 0x00403ae9    743b
    asm("test               ah, -0x80");                                     // 0x00403aeb    f6c480
    asm("{disp8} je         _jmp_addr_0x00403afc");                          // 0x00403aee    740c
    asm("mov.s              ecx, esi");                                      // 0x00403af0    8bce
    asm("call               ?GetSizeFootprintData@LH3DMesh@@QAEIXZ");        // 0x00403af2    e839fcffff
    asm("{disp8} mov        ebx, dword ptr [eax + 0x08]");                   // 0x00403af7    8b5808
    asm("{disp8} jmp        _jmp_addr_0x00403afe");                          // 0x00403afa    eb02
    asm("_jmp_addr_0x00403afc:");
    asm("xor.s              ebx, ebx");                                      // 0x00403afc    33db
    asm("_jmp_addr_0x00403afe:");
    asm("test               dword ptr [esi + 0x04], 0x00040000");            // 0x00403afe    f7460400000400
    asm("{disp8} je         _jmp_addr_0x00403b12");                          // 0x00403b05    740b
    asm("mov.s              ecx, esi");                                      // 0x00403b07    8bce
    asm("call               ?GetSizeUV2Data@LH3DMesh@@QAEIXZ");              // 0x00403b09    e832fcffff
    asm("mov                edi, dword ptr [eax]");                          // 0x00403b0e    8b38
    asm("{disp8} jmp        _jmp_addr_0x00403b14");                          // 0x00403b10    eb02
    asm("_jmp_addr_0x00403b12:");
    asm("xor.s              edi, edi");                                      // 0x00403b12    33ff
    asm("_jmp_addr_0x00403b14:");
    asm("mov.s              ecx, esi");                                      // 0x00403b14    8bce
    asm("call               ?GetSizeNameData_dup1@LH3DMesh@@QAEIXZ");        // 0x00403b16    e8c5000000
    asm("add                eax, dword ptr [esi + 0x48]");                   // 0x00403b1b    034648
    asm("add.s              eax, edi");                                      // 0x00403b1e    03c7
    asm("add.s              eax, ebx");                                      // 0x00403b20    03c3
    asm("mov                ebx, dword ptr [eax]");                          // 0x00403b22    8b18
    asm("{disp8} jmp        _jmp_addr_0x00403b28");                          // 0x00403b24    eb02
    asm("_jmp_addr_0x00403b26:");
    asm("xor.s              ebx, ebx");                                      // 0x00403b26    33db
    asm("_jmp_addr_0x00403b28:");
    asm("test               dword ptr [esi + 0x04], 0x00200000");            // 0x00403b28    f7460400002000
    asm("{disp8} je         _jmp_addr_0x00403b5c");                          // 0x00403b2f    742b
    asm("mov.s              ecx, esi");                                      // 0x00403b31    8bce
    asm("call               ?GetSizeEMetricsData_dup1@LH3DMesh@@QAEIXZ");    // 0x00403b33    e818010000
    asm("mov.s              ecx, esi");                                      // 0x00403b38    8bce
    asm("mov.s              edi, eax");                                      // 0x00403b3a    8bf8
    asm("call               ?GetSizeNameData_dup1@LH3DMesh@@QAEIXZ");        // 0x00403b3c    e89f000000
    asm("mov.s              ecx, esi");                                      // 0x00403b41    8bce
    asm("add.s              edi, eax");                                      // 0x00403b43    03f8
    asm("call               ?GetSizeUV2Data_dup1@LH3DMesh@@QAEIXZ");         // 0x00403b45    e866000000
    asm("mov.s              ecx, esi");                                      // 0x00403b4a    8bce
    asm("add.s              edi, eax");                                      // 0x00403b4c    03f8
    asm("call               ?GetSizeFootprintData_dup1@LH3DMesh@@QAEIXZ");   // 0x00403b4e    e83d000000
    asm("add.s              edi, eax");                                      // 0x00403b53    03f8
    asm("add                edi, dword ptr [esi + 0x48]");                   // 0x00403b55    037e48
    asm("mov                edi, dword ptr [edi]");                          // 0x00403b58    8b3f
    asm("{disp8} jmp        _jmp_addr_0x00403b5e");                          // 0x00403b5a    eb02
    asm("_jmp_addr_0x00403b5c:");
    asm("xor.s              edi, edi");                                      // 0x00403b5c    33ff
    asm("_jmp_addr_0x00403b5e:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x48]");                   // 0x00403b5e    8b4648
    asm("{disp8} mov        edx, dword ptr [esp + 0x10]");                   // 0x00403b61    8b542410
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x00403b65    8b4c2414
    asm("add.s              eax, edi");                                      // 0x00403b69    03c7
    asm("add.s              eax, ebx");                                      // 0x00403b6b    03c3
    asm("add.s              eax, ebp");                                      // 0x00403b6d    03c5
    asm("pop                ebp");                                           // 0x00403b6f    5d
    asm("add.s              eax, edx");                                      // 0x00403b70    03c2
    asm("pop                ebx");                                           // 0x00403b72    5b
    asm("add.s              eax, ecx");                                      // 0x00403b73    03c1
    asm("mov                eax, dword ptr [eax]");                          // 0x00403b75    8b00
    asm("pop                edi");                                           // 0x00403b77    5f
    asm("pop                esi");                                           // 0x00403b78    5e
    asm("add                esp, 0x08");                                     // 0x00403b79    83c408
    asm("ret");                                                              // 0x00403b7c    c3
    asm("_jmp_addr_0x00403b7d:");
    asm("pop                edi");                                           // 0x00403b7d    5f
    asm("xor.s              eax, eax");                                      // 0x00403b7e    33c0
    asm("pop                esi");                                           // 0x00403b80    5e
    asm("add                esp, 0x08");                                     // 0x00403b81    83c408
    asm("ret");                                                              // 0x00403b84    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetSizeFootprintData_dup1__8LH3DMeshFv(struct LH3DMesh* param_1)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x04]");                   // 0x00403b90    8b4104
    asm("test               ah, -0x80");                                     // 0x00403b93    f6c480
    asm("{disp8} je         _jmp_addr_0x00403b9f");                          // 0x00403b96    7407
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403b98    8b4148
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x00403b9b    8b4008
    asm("ret");                                                              // 0x00403b9e    c3
    asm("_jmp_addr_0x00403b9f:");
    asm("xor.s              eax, eax");                                      // 0x00403b9f    33c0
    asm("ret");                                                              // 0x00403ba1    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetSizeUV2Data_dup1__8LH3DMeshFv(struct LH3DMesh* param_1)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x04]");                   // 0x00403bb0    8b4104
    asm("test               eax, 0x00040000");                               // 0x00403bb3    a900000400
    asm("{disp8} je         _jmp_addr_0x00403bd4");                          // 0x00403bb8    741a
    asm("test               ah, -0x80");                                     // 0x00403bba    f6c480
    asm("{disp8} je         _jmp_addr_0x00403bca");                          // 0x00403bbd    740b
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403bbf    8b4148
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                   // 0x00403bc2    8b5008
    asm("add.s              eax, edx");                                      // 0x00403bc5    03c2
    asm("mov                eax, dword ptr [eax]");                          // 0x00403bc7    8b00
    asm("ret");                                                              // 0x00403bc9    c3
    asm("_jmp_addr_0x00403bca:");
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403bca    8b4148
    asm("xor.s              edx, edx");                                      // 0x00403bcd    33d2
    asm("add.s              eax, edx");                                      // 0x00403bcf    03c2
    asm("mov                eax, dword ptr [eax]");                          // 0x00403bd1    8b00
    asm("ret");                                                              // 0x00403bd3    c3
    asm("_jmp_addr_0x00403bd4:");
    asm("xor.s              eax, eax");                                      // 0x00403bd4    33c0
    asm("ret");                                                              // 0x00403bd6    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetSizeNameData_dup1__8LH3DMeshFv(struct LH3DMesh* param_1)
{
    asm("{disp8} mov        edx, dword ptr [ecx + 0x04]");                   // 0x00403be0    8b5104
    asm("test               edx, 0x00080000");                               // 0x00403be3    f7c200000800
    asm("{disp8} je         _jmp_addr_0x00403c46");                          // 0x00403be9    745b
    asm("push               esi");                                           // 0x00403beb    56
    asm("mov.s              esi, edx");                                      // 0x00403bec    8bf2
    asm("and                esi, 0x00008000");                               // 0x00403bee    81e600800000
    asm("push               edi");                                           // 0x00403bf4    57
    asm("{disp8} je         _jmp_addr_0x00403bff");                          // 0x00403bf5    7408
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403bf7    8b4148
    asm("{disp8} mov        edi, dword ptr [eax + 0x08]");                   // 0x00403bfa    8b7808
    asm("{disp8} jmp        _jmp_addr_0x00403c01");                          // 0x00403bfd    eb02
    asm("_jmp_addr_0x00403bff:");
    asm("xor.s              edi, edi");                                      // 0x00403bff    33ff
    asm("_jmp_addr_0x00403c01:");
    asm("test               edx, 0x00040000");                               // 0x00403c01    f7c200000400
    asm("{disp8} je         _jmp_addr_0x00403c38");                          // 0x00403c07    742f
    asm("test               esi, esi");                                      // 0x00403c09    85f6
    asm("{disp8} je         _jmp_addr_0x00403c23");                          // 0x00403c0b    7416
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403c0d    8b4148
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                   // 0x00403c10    8b5008
    asm("add.s              eax, edx");                                      // 0x00403c13    03c2
    asm("mov                edx, dword ptr [eax]");                          // 0x00403c15    8b10
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403c17    8b4148
    asm("add.s              eax, edx");                                      // 0x00403c1a    03c2
    asm("add.s              eax, edi");                                      // 0x00403c1c    03c7
    asm("mov                eax, dword ptr [eax]");                          // 0x00403c1e    8b00
    asm("pop                edi");                                           // 0x00403c20    5f
    asm("pop                esi");                                           // 0x00403c21    5e
    asm("ret");                                                              // 0x00403c22    c3
    asm("_jmp_addr_0x00403c23:");
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403c23    8b4148
    asm("xor.s              edx, edx");                                      // 0x00403c26    33d2
    asm("add.s              eax, edx");                                      // 0x00403c28    03c2
    asm("mov                edx, dword ptr [eax]");                          // 0x00403c2a    8b10
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403c2c    8b4148
    asm("add.s              eax, edx");                                      // 0x00403c2f    03c2
    asm("add.s              eax, edi");                                      // 0x00403c31    03c7
    asm("mov                eax, dword ptr [eax]");                          // 0x00403c33    8b00
    asm("pop                edi");                                           // 0x00403c35    5f
    asm("pop                esi");                                           // 0x00403c36    5e
    asm("ret");                                                              // 0x00403c37    c3
    asm("_jmp_addr_0x00403c38:");
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403c38    8b4148
    asm("xor.s              edx, edx");                                      // 0x00403c3b    33d2
    asm("add.s              eax, edx");                                      // 0x00403c3d    03c2
    asm("add.s              eax, edi");                                      // 0x00403c3f    03c7
    asm("mov                eax, dword ptr [eax]");                          // 0x00403c41    8b00
    asm("pop                edi");                                           // 0x00403c43    5f
    asm("pop                esi");                                           // 0x00403c44    5e
    asm("ret");                                                              // 0x00403c45    c3
    asm("_jmp_addr_0x00403c46:");
    asm("xor.s              eax, eax");                                      // 0x00403c46    33c0
    asm("ret");                                                              // 0x00403c48    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetSizeEMetricsData_dup1__8LH3DMeshFv(struct LH3DMesh* param_1)
{
    asm("push               ecx");                                           // 0x00403c50    51
    asm("push               esi");                                           // 0x00403c51    56
    asm("{disp8} mov        esi, dword ptr [ecx + 0x04]");                   // 0x00403c52    8b7104
    asm("test               esi, 0x00100000");                               // 0x00403c55    f7c600001000
    asm("{disp32} je        _jmp_addr_0x00403d19");                          // 0x00403c5b    0f84b8000000
    asm("push               ebx");                                           // 0x00403c61    53
    asm("push               ebp");                                           // 0x00403c62    55
    asm("push               edi");                                           // 0x00403c63    57
    asm("mov.s              edi, esi");                                      // 0x00403c64    8bfe
    asm("and                edi, 0x00008000");                               // 0x00403c66    81e700800000
    asm("{disp8} je         _jmp_addr_0x00403c7a");                          // 0x00403c6c    740c
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403c6e    8b4148
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x00403c71    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x00403c74    89442410
    asm("{disp8} jmp        _jmp_addr_0x00403c82");                          // 0x00403c78    eb08
    asm("_jmp_addr_0x00403c7a:");
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x00403c7a    c744241000000000
    asm("_jmp_addr_0x00403c82:");
    asm("mov.s              ebp, esi");                                      // 0x00403c82    8bee
    asm("and                ebp, 0x00040000");                               // 0x00403c84    81e500000400
    asm("{disp8} je         _jmp_addr_0x00403ca9");                          // 0x00403c8a    741d
    asm("test               edi, edi");                                      // 0x00403c8c    85ff
    asm("{disp8} je         _jmp_addr_0x00403c9d");                          // 0x00403c8e    740d
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403c90    8b4148
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                   // 0x00403c93    8b5008
    asm("mov                ebx, dword ptr [eax + edx * 0x1]");              // 0x00403c96    8b1c10
    asm("add.s              eax, edx");                                      // 0x00403c99    03c2
    asm("{disp8} jmp        _jmp_addr_0x00403cab");                          // 0x00403c9b    eb0e
    asm("_jmp_addr_0x00403c9d:");
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403c9d    8b4148
    asm("xor.s              edx, edx");                                      // 0x00403ca0    33d2
    asm("mov                ebx, dword ptr [eax + edx * 0x1]");              // 0x00403ca2    8b1c10
    asm("add.s              eax, edx");                                      // 0x00403ca5    03c2
    asm("{disp8} jmp        _jmp_addr_0x00403cab");                          // 0x00403ca7    eb02
    asm("_jmp_addr_0x00403ca9:");
    asm("xor.s              ebx, ebx");                                      // 0x00403ca9    33db
    asm("_jmp_addr_0x00403cab:");
    asm("test               esi, 0x00080000");                               // 0x00403cab    f7c600000800
    asm("{disp8} je         _jmp_addr_0x00403d02");                          // 0x00403cb1    744f
    asm("test               edi, edi");                                      // 0x00403cb3    85ff
    asm("{disp8} je         _jmp_addr_0x00403cbf");                          // 0x00403cb5    7408
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403cb7    8b4148
    asm("{disp8} mov        esi, dword ptr [eax + 0x08]");                   // 0x00403cba    8b7008
    asm("{disp8} jmp        _jmp_addr_0x00403cc1");                          // 0x00403cbd    eb02
    asm("_jmp_addr_0x00403cbf:");
    asm("xor.s              esi, esi");                                      // 0x00403cbf    33f6
    asm("_jmp_addr_0x00403cc1:");
    asm("test               ebp, ebp");                                      // 0x00403cc1    85ed
    asm("{disp8} je         _jmp_addr_0x00403cf4");                          // 0x00403cc3    742f
    asm("test               edi, edi");                                      // 0x00403cc5    85ff
    asm("{disp8} je         _jmp_addr_0x00403cdf");                          // 0x00403cc7    7416
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403cc9    8b4148
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                   // 0x00403ccc    8b5008
    asm("add.s              eax, edx");                                      // 0x00403ccf    03c2
    asm("mov                edx, dword ptr [eax]");                          // 0x00403cd1    8b10
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403cd3    8b4148
    asm("add.s              eax, edx");                                      // 0x00403cd6    03c2
    asm("mov                edx, dword ptr [eax + esi * 0x1]");              // 0x00403cd8    8b1430
    asm("add.s              eax, esi");                                      // 0x00403cdb    03c6
    asm("{disp8} jmp        _jmp_addr_0x00403d04");                          // 0x00403cdd    eb25
    asm("_jmp_addr_0x00403cdf:");
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403cdf    8b4148
    asm("xor.s              edx, edx");                                      // 0x00403ce2    33d2
    asm("add.s              eax, edx");                                      // 0x00403ce4    03c2
    asm("mov                edx, dword ptr [eax]");                          // 0x00403ce6    8b10
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403ce8    8b4148
    asm("add.s              eax, edx");                                      // 0x00403ceb    03c2
    asm("mov                edx, dword ptr [eax + esi * 0x1]");              // 0x00403ced    8b1430
    asm("add.s              eax, esi");                                      // 0x00403cf0    03c6
    asm("{disp8} jmp        _jmp_addr_0x00403d04");                          // 0x00403cf2    eb10
    asm("_jmp_addr_0x00403cf4:");
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403cf4    8b4148
    asm("xor.s              edx, edx");                                      // 0x00403cf7    33d2
    asm("add.s              eax, edx");                                      // 0x00403cf9    03c2
    asm("mov                edx, dword ptr [eax + esi * 0x1]");              // 0x00403cfb    8b1430
    asm("add.s              eax, esi");                                      // 0x00403cfe    03c6
    asm("{disp8} jmp        _jmp_addr_0x00403d04");                          // 0x00403d00    eb02
    asm("_jmp_addr_0x00403d02:");
    asm("xor.s              edx, edx");                                      // 0x00403d02    33d2
    asm("_jmp_addr_0x00403d04:");
    asm("{disp8} mov        eax, dword ptr [ecx + 0x48]");                   // 0x00403d04    8b4148
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00403d07    8b4c2410
    asm("add.s              eax, edx");                                      // 0x00403d0b    03c2
    asm("pop                edi");                                           // 0x00403d0d    5f
    asm("add.s              eax, ebx");                                      // 0x00403d0e    03c3
    asm("pop                ebp");                                           // 0x00403d10    5d
    asm("add.s              eax, ecx");                                      // 0x00403d11    03c1
    asm("mov                eax, dword ptr [eax]");                          // 0x00403d13    8b00
    asm("pop                ebx");                                           // 0x00403d15    5b
    asm("pop                esi");                                           // 0x00403d16    5e
    asm("pop                ecx");                                           // 0x00403d17    59
    asm("ret");                                                              // 0x00403d18    c3
    asm("_jmp_addr_0x00403d19:");
    asm("xor.s              eax, eax");                                      // 0x00403d19    33c0
    asm("pop                esi");                                           // 0x00403d1b    5e
    asm("pop                ecx");                                           // 0x00403d1c    59
    asm("ret");                                                              // 0x00403d1d    c3
    __builtin_unreachable();
}
