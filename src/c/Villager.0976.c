#include "Villager.h"

char* __fastcall GetVillagerText__8VillagerFPc(struct Villager* this, const void* edx, char* param_1)
{
    asm("push               esi");                                           // 0x00751ab0    56
    asm("{disp8} mov        esi, dword ptr [ecx + 0x28]");                   // 0x00751ab1    8b7128
    asm("push               edi");                                           // 0x00751ab4    57
    asm("call               ?GetTribe@Villager@@QAEPAVGTribeInfo@@XZ");      // 0x00751ab5    e826040000
    asm("{disp8} mov        eax, dword ptr [eax + 0x10]");                   // 0x00751aba    8b4010
    asm("{disp32} mov       edi, dword ptr [eax * 0x4 + 0x00c22fdc]");       // 0x00751abd    8b3c85dc2fc200
    asm("mov.s              ecx, esi");                                      // 0x00751ac4    8bce
    asm("call               ?GetTribeTextArray@GTribeInfo@@QAEPADXZ");       // 0x00751ac6    e8d5ffffff
    asm("{disp8} mov        esi, dword ptr [esp + 0x0c]");                   // 0x00751acb    8b74240c
    asm("push               eax");                                           // 0x00751acf    50
    asm("push               edi");                                           // 0x00751ad0    57
    asm("push               0x009c8054");                                    // 0x00751ad1    6854809c00
    asm("push               esi");                                           // 0x00751ad6    56
    asm("call               _sprintf");                                      // 0x00751ad7    e8f63c0700
    asm("add                esp, 0x10");                                     // 0x00751adc    83c410
    asm("pop                edi");                                           // 0x00751adf    5f
    asm("mov.s              eax, esi");                                      // 0x00751ae0    8bc6
    asm("pop                esi");                                           // 0x00751ae2    5e
    asm("ret                0x0004");                                        // 0x00751ae3    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall SaveObject__8VillagerFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2)
{
    asm("sub                esp, 0x0000020c");                               // 0x00751af0    81ec0c020000
    asm("push               ebx");                                           // 0x00751af6    53
    asm("push               ebp");                                           // 0x00751af7    55
    asm("push               esi");                                           // 0x00751af8    56
    asm("push               edi");                                           // 0x00751af9    57
    asm("mov.s              esi, ecx");                                      // 0x00751afa    8bf1
    asm("call               ?CheckAndSetSaved@GameThing@@QAE_NXZ");          // 0x00751afc    e8efe3e1ff
    asm("mov.s              ebx, eax");                                      // 0x00751b01    8bd8
    asm("test               ebx, ebx");                                      // 0x00751b03    85db
    asm("{disp32} je        _jmp_addr_0x00751cdf");                          // 0x00751b05    0f84d4010000
    asm("{disp32} mov       ebp, dword ptr [esp + 0x00000224]");             // 0x00751b0b    8bac2424020000
    asm("test               ebp, ebp");                                      // 0x00751b12    85ed
    asm("{disp8} lea        edi, dword ptr [esi + 0x14]");                   // 0x00751b14    8d7e14
    asm("{disp8} je         _jmp_addr_0x00751b28");                          // 0x00751b17    740f
    asm("push               ebp");                                           // 0x00751b19    55
    asm("{disp8} lea        eax, dword ptr [esp + 0x20]");                   // 0x00751b1a    8d442420
    asm("push               eax");                                           // 0x00751b1e    50
    asm("mov.s              ecx, edi");                                      // 0x00751b1f    8bcf
    asm("call               _jmp_addr_0x006055c0");                          // 0x00751b21    e89a3aebff
    asm("{disp8} jmp        _jmp_addr_0x00751b2a");                          // 0x00751b26    eb02
    asm("_jmp_addr_0x00751b28:");
    asm("mov.s              eax, edi");                                      // 0x00751b28    8bc7
    asm("_jmp_addr_0x00751b2a:");
    asm("mov                ecx, dword ptr [eax]");                          // 0x00751b2a    8b08
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x00751b2c    894c2410
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x00751b30    8b5004
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x00751b33    8b4e28
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x00751b36    89542414
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x00751b3a    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x00751b3d    89442418
    asm("cmp                dword ptr [ecx + 0x000001f4], -0x01");           // 0x00751b41    83b9f4010000ff
    asm("{disp8} jne        _jmp_addr_0x00751ba9");                          // 0x00751b48    755f
    asm("mov                edx, dword ptr [esi]");                          // 0x00751b4a    8b16
    asm("mov.s              ecx, esi");                                      // 0x00751b4c    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00751b4e    ff5248
    asm("test               eax, eax");                                      // 0x00751b51    85c0
    asm("{disp8} je         _jmp_addr_0x00751b64");                          // 0x00751b53    740f
    asm("mov                eax, dword ptr [esi]");                          // 0x00751b55    8b06
    asm("mov.s              ecx, esi");                                      // 0x00751b57    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00751b59    ff5048
    asm("{disp32} mov       ebp, dword ptr [eax + 0x000005b4]");             // 0x00751b5c    8ba8b4050000
    asm("{disp8} jmp        _jmp_addr_0x00751b67");                          // 0x00751b62    eb03
    asm("_jmp_addr_0x00751b64:");
    asm("or                 ebp, 0xffffffff");                               // 0x00751b64    83cdff
    asm("_jmp_addr_0x00751b67:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00751b67    8b16
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x00751b69    8b7e28
    asm("mov.s              ecx, esi");                                      // 0x00751b6c    8bce
    asm("call               dword ptr [edx + 0x8d0]");                       // 0x00751b6e    ff92d0080000
    asm("push               eax");                                           // 0x00751b74    50
    asm("sub                edi, OFFSET _GVillagerInfo_ARRAY_00da6be8");     // 0x00751b75    81efe86bda00
    asm("mov                eax, 0x8ca29c05");                               // 0x00751b7b    b8059ca28c
    asm("imul               edi");                                           // 0x00751b80    f7ef
    asm("add.s              edx, edi");                                      // 0x00751b82    03d7
    asm("sar                edx, 9");                                        // 0x00751b84    c1fa09
    asm("mov.s              eax, edx");                                      // 0x00751b87    8bc2
    asm("shr                eax, 0x1f");                                     // 0x00751b89    c1e81f
    asm("add.s              edx, eax");                                      // 0x00751b8c    03d0
    asm("push               edx");                                           // 0x00751b8e    52
    asm("{disp32} lea       ecx, dword ptr [esp + 0x000000f8]");             // 0x00751b8f    8d8c24f8000000
    asm("push               ecx");                                           // 0x00751b96    51
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                   // 0x00751b97    8d4c241c
    asm("call               ?ConvertToText@MapCoords@@QAEPADPAD@Z");         // 0x00751b9b    e8e00cebff
    asm("push               eax");                                           // 0x00751ba0    50
    asm("push               ebp");                                           // 0x00751ba1    55
    asm("push               0x11");                                          // 0x00751ba2    6a11
    asm("{disp32} jmp       _jmp_addr_0x00751ca7");                          // 0x00751ba4    e9fe000000
    asm("_jmp_addr_0x00751ba9:");
    asm("mov.s              ecx, esi");                                      // 0x00751ba9    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00751bab    e8b0050000
    asm("test               eax, eax");                                      // 0x00751bb0    85c0
    asm("{disp32} je        _jmp_addr_0x00751c5a");                          // 0x00751bb2    0f84a2000000
    asm("test               ebp, ebp");                                      // 0x00751bb8    85ed
    asm("{disp32} jne       _jmp_addr_0x00751c5a");                          // 0x00751bba    0f859a000000
    asm("mov.s              ecx, esi");                                      // 0x00751bc0    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00751bc2    e899050000
    asm("mov                edx, dword ptr [eax]");                          // 0x00751bc7    8b10
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                   // 0x00751bc9    8d4c241c
    asm("push               ecx");                                           // 0x00751bcd    51
    asm("mov.s              ecx, eax");                                      // 0x00751bce    8bc8
    asm("call               dword ptr [edx + 0x864]");                       // 0x00751bd0    ff9264080000
    asm("mov                edx, dword ptr [eax]");                          // 0x00751bd6    8b10
    asm("{disp8} mov        dword ptr [esp + 0x10], edx");                   // 0x00751bd8    89542410
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                   // 0x00751bdc    8b4804
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                   // 0x00751bdf    894c2414
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                   // 0x00751be3    8b5008
    asm("mov                eax, dword ptr [esi]");                          // 0x00751be6    8b06
    asm("mov.s              ecx, esi");                                      // 0x00751be8    8bce
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x00751bea    89542418
    asm("call               dword ptr [eax + 0x8d0]");                       // 0x00751bee    ff90d0080000
    asm("push               eax");                                           // 0x00751bf4    50
    asm("{disp32} lea       ecx, dword ptr [esp + 0x00000158]");             // 0x00751bf5    8d8c2458010000
    asm("push               ecx");                                           // 0x00751bfc    51
    asm("mov.s              ecx, esi");                                      // 0x00751bfd    8bce
    asm("call               ?GetVillagerText@Villager@@QAEPADPAD@Z");        // 0x00751bff    e8acfeffff
    asm("push               eax");                                           // 0x00751c04    50
    asm("{disp32} lea       edx, dword ptr [esp + 0x000001c0]");             // 0x00751c05    8d9424c0010000
    asm("push               edx");                                           // 0x00751c0c    52
    asm("mov.s              ecx, edi");                                      // 0x00751c0d    8bcf
    asm("call               ?ConvertToText@MapCoords@@QAEPADPAD@Z");         // 0x00751c0f    e86c0cebff
    asm("push               eax");                                           // 0x00751c14    50
    asm("{disp32} lea       eax, dword ptr [esp + 0x000000fc]");             // 0x00751c15    8d8424fc000000
    asm("push               eax");                                           // 0x00751c1c    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x20]");                   // 0x00751c1d    8d4c2420
    asm("call               ?ConvertToText@MapCoords@@QAEPADPAD@Z");         // 0x00751c21    e85a0cebff
    asm("push               eax");                                           // 0x00751c26    50
    asm("push               0x12");                                          // 0x00751c27    6a12
    asm("call               ?GetCommandAsText@GSetup@@SAPADW4SCRIPT_FEATURE_COMMANDS@@@Z");                          // 0x00751c29    e80235fcff
    asm("add                esp, 0x04");                                     // 0x00751c2e    83c404
    asm("push               eax");                                           // 0x00751c31    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x3c]");                   // 0x00751c32    8d4c243c
    asm("push               ecx");                                           // 0x00751c36    51
    asm("call               _sprintf");                                      // 0x00751c37    e8963b0700
    asm("or                 ecx, 0xffffffff");                               // 0x00751c3c    83c9ff
    asm("xor.s              eax, eax");                                      // 0x00751c3f    33c0
    asm("{disp8} lea        edi, dword ptr [esp + 0x40]");                   // 0x00751c41    8d7c2440
    asm("repne scasb");                                                      // 0x00751c45    f2ae
    asm("{disp32} mov       eax, dword ptr [esp + 0x00000238]");             // 0x00751c47    8b842438020000
    asm("not                ecx");                                           // 0x00751c4e    f7d1
    asm("dec                ecx");                                           // 0x00751c50    49
    asm("push               ecx");                                           // 0x00751c51    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x44]");                   // 0x00751c52    8d542444
    asm("push               edx");                                           // 0x00751c56    52
    asm("push               eax");                                           // 0x00751c57    50
    asm("{disp8} jmp        _jmp_addr_0x00751cd6");                          // 0x00751c58    eb7c
    asm("_jmp_addr_0x00751c5a:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00751c5a    8b16
    asm("mov.s              ecx, esi");                                      // 0x00751c5c    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00751c5e    ff5248
    asm("test               eax, eax");                                      // 0x00751c61    85c0
    asm("{disp8} je         _jmp_addr_0x00751c74");                          // 0x00751c63    740f
    asm("mov                eax, dword ptr [esi]");                          // 0x00751c65    8b06
    asm("mov.s              ecx, esi");                                      // 0x00751c67    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00751c69    ff5048
    asm("{disp32} mov       edi, dword ptr [eax + 0x000005b4]");             // 0x00751c6c    8bb8b4050000
    asm("{disp8} jmp        _jmp_addr_0x00751c77");                          // 0x00751c72    eb03
    asm("_jmp_addr_0x00751c74:");
    asm("or                 edi, 0xffffffff");                               // 0x00751c74    83cfff
    asm("_jmp_addr_0x00751c77:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00751c77    8b16
    asm("mov.s              ecx, esi");                                      // 0x00751c79    8bce
    asm("call               dword ptr [edx + 0x8d0]");                       // 0x00751c7b    ff92d0080000
    asm("push               eax");                                           // 0x00751c81    50
    asm("{disp32} lea       eax, dword ptr [esp + 0x00000158]");             // 0x00751c82    8d842458010000
    asm("push               eax");                                           // 0x00751c89    50
    asm("mov.s              ecx, esi");                                      // 0x00751c8a    8bce
    asm("call               ?GetVillagerText@Villager@@QAEPADPAD@Z");        // 0x00751c8c    e81ffeffff
    asm("push               eax");                                           // 0x00751c91    50
    asm("{disp32} lea       ecx, dword ptr [esp + 0x000000f8]");             // 0x00751c92    8d8c24f8000000
    asm("push               ecx");                                           // 0x00751c99    51
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                   // 0x00751c9a    8d4c241c
    asm("call               ?ConvertToText@MapCoords@@QAEPADPAD@Z");         // 0x00751c9e    e8dd0bebff
    asm("push               eax");                                           // 0x00751ca3    50
    asm("push               edi");                                           // 0x00751ca4    57
    asm("push               0x10");                                          // 0x00751ca5    6a10
    asm("_jmp_addr_0x00751ca7:");
    asm("call               ?GetCommandAsText@GSetup@@SAPADW4SCRIPT_FEATURE_COMMANDS@@@Z");                          // 0x00751ca7    e88434fcff
    asm("add                esp, 0x04");                                     // 0x00751cac    83c404
    asm("push               eax");                                           // 0x00751caf    50
    asm("{disp8} lea        edx, dword ptr [esp + 0x3c]");                   // 0x00751cb0    8d54243c
    asm("push               edx");                                           // 0x00751cb4    52
    asm("call               _sprintf");                                      // 0x00751cb5    e8183b0700
    asm("or                 ecx, 0xffffffff");                               // 0x00751cba    83c9ff
    asm("xor.s              eax, eax");                                      // 0x00751cbd    33c0
    asm("{disp8} lea        edi, dword ptr [esp + 0x40]");                   // 0x00751cbf    8d7c2440
    asm("repne scasb");                                                      // 0x00751cc3    f2ae
    asm("not                ecx");                                           // 0x00751cc5    f7d1
    asm("dec                ecx");                                           // 0x00751cc7    49
    asm("push               ecx");                                           // 0x00751cc8    51
    asm("{disp32} mov       ecx, dword ptr [esp + 0x0000023c]");             // 0x00751cc9    8b8c243c020000
    asm("{disp8} lea        eax, dword ptr [esp + 0x44]");                   // 0x00751cd0    8d442444
    asm("push               eax");                                           // 0x00751cd4    50
    asm("push               ecx");                                           // 0x00751cd5    51
    asm("_jmp_addr_0x00751cd6:");
    asm("push               esi");                                           // 0x00751cd6    56
    asm("call               ?WriteToFile@GSetup@@SAIPAXAAVLHOSFile@@0K@Z");  // 0x00751cd7    e83479fcff
    asm("add                esp, 0x28");                                     // 0x00751cdc    83c428
    asm("_jmp_addr_0x00751cdf:");
    asm("pop                edi");                                           // 0x00751cdf    5f
    asm("pop                esi");                                           // 0x00751ce0    5e
    asm("pop                ebp");                                           // 0x00751ce1    5d
    asm("mov.s              eax, ebx");                                      // 0x00751ce2    8bc3
    asm("pop                ebx");                                           // 0x00751ce4    5b
    asm("add                esp, 0x0000020c");                               // 0x00751ce5    81c40c020000
    asm("ret                0x0008");                                        // 0x00751ceb    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsFunctional__8VillagerFv(struct GameThing* this)
{
    asm("push               esi");                                           // 0x00751cf0    56
    asm("mov.s              esi, ecx");                                      // 0x00751cf1    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00751cf3    8b06
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00751cf5    ff502c
    asm("cmp                eax, 0x01");                                     // 0x00751cf8    83f801
    asm("{disp8} jne        _jmp_addr_0x00751d12");                          // 0x00751cfb    7515
    asm("{disp32} mov       al, byte ptr [esi + 0x0000008c]");               // 0x00751cfd    8a868c000000
    asm("cmp                al, 0x0d");                                      // 0x00751d03    3c0d
    asm(".byte              0x72, 0x4");// {disp8} jb _jmp_addr_0x00751d0b   // 0x00751d05    7204
    asm("cmp                al, 0x0e");                                      // 0x00751d07    3c0e
    asm("{disp8} jbe        _jmp_addr_0x00751d12");                          // 0x00751d09    7607
    asm("_jmp_addr_0x00751d0b:");
    asm("mov                eax, 0x00000001");                               // 0x00751d0b    b801000000
    asm("pop                esi");                                           // 0x00751d10    5e
    asm("ret");                                                              // 0x00751d11    c3
    asm("_jmp_addr_0x00751d12:");
    asm("xor.s              eax, eax");                                      // 0x00751d12    33c0
    asm("pop                esi");                                           // 0x00751d14    5e
    asm("ret");                                                              // 0x00751d15    c3
    __builtin_unreachable();
}

struct GJobInfo* __fastcall GetJobInfo__8VillagerCFUc(const struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00751d20    8b442404
    asm("and                eax, 0x000000ff");                               // 0x00751d24    25ff000000
    asm("lea                ecx, dword ptr [eax + eax * 0x4]");              // 0x00751d29    8d0c80
    asm("lea                edx, dword ptr [eax + ecx * 0x2]");              // 0x00751d2c    8d1448
    asm("{disp32} lea       eax, dword ptr [edx * 0x8 + 0x00d19cc8]");       // 0x00751d2f    8d04d5c89cd100
    asm("ret                0x0004");                                        // 0x00751d36    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall FUN00751d40__8VillagerFv(struct Villager* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool __fastcall IsAvailable__8VillagerFv(struct GameThing* this)
{
    asm("test               byte ptr [ecx + 0x0a], 0x01");                   // 0x00751d50    f6410a01
    asm("{disp8} jne        _jmp_addr_0x00751d68");                          // 0x00751d54    7512
    asm("mov                eax, dword ptr [ecx]");                          // 0x00751d56    8b01
    asm("call               dword ptr [eax + 0xb04]");                       // 0x00751d58    ff90040b0000
    asm("cmp                al, 0x0e");                                      // 0x00751d5e    3c0e
    asm("{disp8} je         _jmp_addr_0x00751d68");                          // 0x00751d60    7406
    asm("mov                eax, 0x00000001");                               // 0x00751d62    b801000000
    asm("ret");                                                              // 0x00751d67    c3
    asm("_jmp_addr_0x00751d68:");
    asm("xor.s              eax, eax");                                      // 0x00751d68    33c0
    asm("ret");                                                              // 0x00751d6a    c3
    __builtin_unreachable();
}

uint32_t __fastcall IsEffectReceiver__8VillagerFP12EffectValues(struct Object* this, const void* edx, struct EffectValues* param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00751d70    8b442404
    asm("test               eax, eax");                                      // 0x00751d74    85c0
    asm("{disp8} je         _jmp_addr_0x00751d98");                          // 0x00751d76    7420
    asm("{disp8} fld        dword ptr [eax + 0x14]");                        // 0x00751d78    d94014
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00751d7b    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00751d81    dfe0
    asm("test               ah, 0x41");                                      // 0x00751d83    f6c441
    asm("{disp8} jne        _jmp_addr_0x00751d98");                          // 0x00751d86    7510
    asm("mov                eax, dword ptr [ecx]");                          // 0x00751d88    8b01
    asm("call               dword ptr [eax + 0xaf4]");                       // 0x00751d8a    ff90f40a0000
    asm("neg                eax");                                           // 0x00751d90    f7d8
    asm("sbb.s              eax, eax");                                      // 0x00751d92    1bc0
    asm("inc                eax");                                           // 0x00751d94    40
    asm("ret                0x0004");                                        // 0x00751d95    c20400
    asm("_jmp_addr_0x00751d98:");
    asm("mov                edx, dword ptr [ecx]");                          // 0x00751d98    8b11
    asm("call               dword ptr [edx + 0x530]");                       // 0x00751d9a    ff9230050000
    asm("ret                0x0004");                                        // 0x00751da0    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct Citadel* __fastcall GetCitadel__8VillagerFv(struct GameThingWithPos* this)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x00751db0    8b01
    asm("call               dword ptr [eax + 0x48]");                        // 0x00751db2    ff5048
    asm("test               eax, eax");                                      // 0x00751db5    85c0
    asm("{disp8} je         _jmp_addr_0x00751dc7");                          // 0x00751db7    740e
    asm("{disp8} mov        eax, dword ptr [eax + 0x2c]");                   // 0x00751db9    8b402c
    asm("test               eax, eax");                                      // 0x00751dbc    85c0
    asm("{disp8} je         _jmp_addr_0x00751dc7");                          // 0x00751dbe    7407
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000a48]");             // 0x00751dc0    8b80480a0000
    asm("ret");                                                              // 0x00751dc6    c3
    asm("_jmp_addr_0x00751dc7:");
    asm("xor.s              eax, eax");                                      // 0x00751dc7    33c0
    asm("ret");                                                              // 0x00751dc9    c3
    __builtin_unreachable();
}

enum VILLAGER_STATES __fastcall GetFinalState__8VillagerCFv(const struct Living* this)
{
    asm("push               ecx");                                           // 0x00751dd0    51
    asm("{disp32} mov       al, byte ptr [ecx + 0x0000008c]");               // 0x00751dd1    8a818c000000
    asm("{disp8} mov        byte ptr [esp + 0x00], al");                     // 0x00751dd7    88442400
    asm("{disp8} mov        edx, dword ptr [esp + 0x00]");                   // 0x00751ddb    8b542400
    asm("push               esi");                                           // 0x00751ddf    56
    asm("and                edx, 0x000000ff");                               // 0x00751de0    81e2ff000000
    asm("lea                esi, dword ptr [edx + edx * 0x2]");              // 0x00751de6    8d3452
    asm("shl                esi, 3");                                        // 0x00751de9    c1e603
    asm("sub.s              esi, edx");                                      // 0x00751dec    2bf2
    asm("lea                edx, dword ptr [esi + esi * 0x2]");              // 0x00751dee    8d1476
    asm("{disp32} mov       esi, dword ptr [edx * 0x4 + 0x00db9e84]");       // 0x00751df1    8b3495849edb00
    asm("test               esi, esi");                                      // 0x00751df8    85f6
    asm("pop                esi");                                           // 0x00751dfa    5e
    asm("{disp8} jne        _jmp_addr_0x00751e03");                          // 0x00751dfb    7506
    asm("{disp32} mov       al, byte ptr [ecx + 0x0000008d]");               // 0x00751dfd    8a818d000000
    asm("_jmp_addr_0x00751e03:");
    asm("pop                ecx");                                           // 0x00751e03    59
    asm("ret");                                                              // 0x00751e04    c3
    __builtin_unreachable();
}

void __fastcall ResetStateAfterReacting__8VillagerFv(struct Living* this)
{
    asm("push               esi");                                           // 0x00751e10    56
    asm("mov.s              esi, ecx");                                      // 0x00751e11    8bf1
    asm("call               ?PopFromPrevious@Villager@@QAEXXZ");             // 0x00751e13    e838000000
    asm("mov                eax, dword ptr [esi]");                          // 0x00751e18    8b06
    asm("mov.s              ecx, esi");                                      // 0x00751e1a    8bce
    asm("call               dword ptr [eax + 0xb04]");                       // 0x00751e1c    ff90040b0000
    asm("and                eax, 0x000000ff");                               // 0x00751e22    25ff000000
    asm("mov.s              ecx, eax");                                      // 0x00751e27    8bc8
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");              // 0x00751e29    8d0449
    asm("shl                eax, 3");                                        // 0x00751e2c    c1e003
    asm("sub.s              eax, ecx");                                      // 0x00751e2f    2bc1
    asm("lea                ecx, dword ptr [eax + eax * 0x2]");              // 0x00751e31    8d0c40
    asm("{disp32} mov       eax, dword ptr [ecx * 0x4 + 0x00db9f30]");       // 0x00751e34    8b048d309fdb00
    asm("test               eax, eax");                                      // 0x00751e3b    85c0
    asm("{disp8} je         _jmp_addr_0x00751e4e");                          // 0x00751e3d    740f
    asm("mov                edx, dword ptr [esi]");                          // 0x00751e3f    8b16
    asm("push               0x000000a3");                                    // 0x00751e41    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00751e46    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00751e48    ff92e8080000
    asm("_jmp_addr_0x00751e4e:");
    asm("pop                esi");                                           // 0x00751e4e    5e
    asm("ret");                                                              // 0x00751e4f    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall PopFromPrevious__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00751e50    56
    asm("mov.s              esi, ecx");                                      // 0x00751e51    8bf1
    asm("mov                edx, dword ptr [esi]");                          // 0x00751e53    8b16
    asm("xor.s              ecx, ecx");                                      // 0x00751e55    33c9
    asm("{disp32} mov       cl, byte ptr [esi + 0x0000008e]");               // 0x00751e57    8a8e8e000000
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");              // 0x00751e5d    8d0449
    asm("shl                eax, 3");                                        // 0x00751e60    c1e003
    asm("sub.s              eax, ecx");                                      // 0x00751e63    2bc1
    asm("lea                eax, dword ptr [eax + eax * 0x2]");              // 0x00751e65    8d0440
    asm("{disp32} mov       eax, dword ptr [eax * 0x4 + 0x00db9e98]");       // 0x00751e68    8b0485989edb00
    asm("push               eax");                                           // 0x00751e6f    50
    asm("mov.s              ecx, esi");                                      // 0x00751e70    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00751e72    ff92e8080000
    asm("cmp                eax, 0x2e");                                     // 0x00751e78    83f82e
    asm("{disp8} jne        _jmp_addr_0x00751e8f");                          // 0x00751e7b    7512
    asm("push               0x000000a3");                                    // 0x00751e7d    68a3000000
    asm("push               0x0");                                           // 0x00751e82    6a00
    asm("{disp32} lea       ecx, dword ptr [esi + 0x0000008c]");             // 0x00751e84    8d8e8c000000
    asm("call               @SetState__12LivingActionFUlUc@16");             // 0x00751e8a    e801aee9ff
    asm("_jmp_addr_0x00751e8f:");
    asm("push               0x0");                                           // 0x00751e8f    6a00
    asm("push               0x2");                                           // 0x00751e91    6a02
    asm("{disp32} lea       ecx, dword ptr [esi + 0x0000008c]");             // 0x00751e93    8d8e8c000000
    asm("call               @SetState__12LivingActionFUlUc@16");             // 0x00751e99    e8f2ade9ff
    asm("pop                esi");                                           // 0x00751e9e    5e
    asm("ret");                                                              // 0x00751e9f    c3
    __builtin_unreachable();
}

struct Football* __fastcall GetFootball__8VillagerFv(struct Villager* this)
{
    asm("{disp32} mov       eax, dword ptr [ecx + 0x0000011c]");             // 0x00751ea0    8b811c010000
    asm("ret");                                                              // 0x00751ea6    c3
    asm("nop");                                                              // 0x00751ea7    90
    asm("nop");                                                              // 0x00751ea8    90
    asm("nop");                                                              // 0x00751ea9    90
    asm("nop");                                                              // 0x00751eaa    90
    asm("nop");                                                              // 0x00751eab    90
    asm("nop");                                                              // 0x00751eac    90
    asm("nop");                                                              // 0x00751ead    90
    asm("nop");                                                              // 0x00751eae    90
    asm("nop");                                                              // 0x00751eaf    90
    asm("mov                eax, dword ptr [ecx]");                          // 0x00751eb0    8b01
    asm("push               0x0");                                           // 0x00751eb2    6a00
    asm("push               0x00bfed78");                                    // 0x00751eb4    6878edbf00
    asm("push               0x009c7f80");                                    // 0x00751eb9    68807f9c00
    asm("push               0x0");                                           // 0x00751ebe    6a00
    asm("push               0x3");                                           // 0x00751ec0    6a03
    asm("call               dword ptr [eax + 0x48]");                        // 0x00751ec2    ff5048
    asm("mov.s              ecx, eax");                                      // 0x00751ec5    8bc8
    asm("call               _jmp_addr_0x0073d7d0");                          // 0x00751ec7    e804b9feff
    asm("mov.s              ecx, eax");                                      // 0x00751ecc    8bc8
    asm("call               _jmp_addr_0x0066c9d0");                          // 0x00751ece    e8fdaaf1ff
    asm("push               eax");                                           // 0x00751ed3    50
    asm("call               ___RTDynamicCast");                              // 0x00751ed4    e8403b0700
    asm("add                esp, 0x14");                                     // 0x00751ed9    83c414
    asm("ret");                                                              // 0x00751edc    c3
    __builtin_unreachable();
}

struct GTribeInfo* __fastcall GetTribe__8VillagerFv(struct Villager* this)
{
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x28]");                   // 0x00751ee0    8b4928
    asm("{disp32} mov       eax, dword ptr [ecx + 0x000001f4]");             // 0x00751ee3    8b81f4010000
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x00751ee9    8b0d5c19d000
    asm("push               eax");                                           // 0x00751eef    50
    asm("call               ?GetTribe@GGame@@QAEPAVGTribeInfo@@W4TRIBE_TYPE@@@Z"); // 0x00751ef0    e82b07e0ff
    asm("ret");                                                              // 0x00751ef5    c3
    __builtin_unreachable();
}

struct Town* __fastcall GetTown__8VillagerFv(struct GameThing* this)
{
    asm("{disp32} mov       eax, dword ptr [ecx + 0x0000012c]");             // 0x00751f00    8b812c010000
    asm("ret");                                                              // 0x00751f06    c3
    __builtin_unreachable();
}

struct StoragePit* __fastcall GetStoragePit__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00751f10    56
    asm("mov.s              esi, ecx");                                      // 0x00751f11    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00751f13    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x00751f15    ff5048
    asm("test               eax, eax");                                      // 0x00751f18    85c0
    asm("{disp8} je         _jmp_addr_0x00751f2e");                          // 0x00751f1a    7412
    asm("mov                edx, dword ptr [esi]");                          // 0x00751f1c    8b16
    asm("mov.s              ecx, esi");                                      // 0x00751f1e    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00751f20    ff5248
    asm("mov.s              ecx, eax");                                      // 0x00751f23    8bc8
    asm("call               ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ");     // 0x00751f25    e88696feff
    asm("test               eax, eax");                                      // 0x00751f2a    85c0
    asm("{disp8} jne        _jmp_addr_0x00751f35");                          // 0x00751f2c    7507
    asm("_jmp_addr_0x00751f2e:");
    asm("mov.s              ecx, esi");                                      // 0x00751f2e    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00751f30    e82b020000
    asm("_jmp_addr_0x00751f35:");
    asm("pop                esi");                                           // 0x00751f35    5e
    asm("ret");                                                              // 0x00751f36    c3
    __builtin_unreachable();
}

enum VILLAGER_STATES __fastcall GetVillagerAvailableState__8VillagerFv(struct Villager* this)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x00751f40    8b01
    asm("call               dword ptr [eax + 0xb04]");                       // 0x00751f42    ff90040b0000
    asm("and                eax, 0x000000ff");                               // 0x00751f48    25ff000000
    asm("mov.s              ecx, eax");                                      // 0x00751f4d    8bc8
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");              // 0x00751f4f    8d0449
    asm("shl                eax, 3");                                        // 0x00751f52    c1e003
    asm("sub.s              eax, ecx");                                      // 0x00751f55    2bc1
    asm("lea                ecx, dword ptr [eax + eax * 0x2]");              // 0x00751f57    8d0c40
    asm("{disp32} mov       eax, dword ptr [ecx * 0x4 + 0x00db9f20]");       // 0x00751f5a    8b048d209fdb00
    asm("ret");                                                              // 0x00751f61    c3
    __builtin_unreachable();
}

enum VILLAGER_STATES __fastcall FUN_00751f70__8VillagerFv(struct Villager* this)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x00751f70    8b01
    asm("call               dword ptr [eax + 0xb04]");                       // 0x00751f72    ff90040b0000
    asm("and                eax, 0x000000ff");                               // 0x00751f78    25ff000000
    asm("mov.s              ecx, eax");                                      // 0x00751f7d    8bc8
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");              // 0x00751f7f    8d0449
    asm("shl                eax, 3");                                        // 0x00751f82    c1e003
    asm("sub.s              eax, ecx");                                      // 0x00751f85    2bc1
    asm("lea                ecx, dword ptr [eax + eax * 0x2]");              // 0x00751f87    8d0c40
    asm("{disp32} mov       eax, dword ptr [ecx * 0x4 + 0x00db9f28]");       // 0x00751f8a    8b048d289fdb00
    asm("ret");                                                              // 0x00751f91    c3
    __builtin_unreachable();
}

void __fastcall ArriveHome__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00751fa0    56
    asm("mov.s              esi, ecx");                                      // 0x00751fa1    8bf1
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00751fa3    e8b8010000
    asm("test               eax, eax");                                      // 0x00751fa8    85c0
    asm("{disp8} je         _jmp_addr_0x00751fc1");                          // 0x00751faa    7415
    asm("or                 byte ptr [esi + 0xe0], 4");                      // 0x00751fac    808ee000000004
    asm("mov.s              ecx, esi");                                      // 0x00751fb3    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00751fb5    e8a6010000
    asm("mov.s              ecx, eax");                                      // 0x00751fba    8bc8
    asm("call               ?ArriveHome@Abode@@QAEXXZ");                     // 0x00751fbc    e8df3fcbff
    asm("_jmp_addr_0x00751fc1:");
    asm("pop                esi");                                           // 0x00751fc1    5e
    asm("ret");                                                              // 0x00751fc2    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall LeaveHome__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00751fd0    56
    asm("mov.s              esi, ecx");                                      // 0x00751fd1    8bf1
    asm("xor.s              eax, eax");                                      // 0x00751fd3    33c0
    asm("{disp32} mov       ax, word ptr [esi + 0x000000e0]");               // 0x00751fd5    668b86e0000000
    asm("test               al, 0x04");                                      // 0x00751fdc    a804
    asm("{disp8} je         _jmp_addr_0x00752003");                          // 0x00751fde    7423
    asm("and                eax, 0x0000dffb");                               // 0x00751fe0    25fbdf0000
    asm("{disp32} mov       word ptr [esi + 0x000000e0], ax");               // 0x00751fe5    668986e0000000
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00751fec    e86f010000
    asm("test               eax, eax");                                      // 0x00751ff1    85c0
    asm("{disp8} je         _jmp_addr_0x00752003");                          // 0x00751ff3    740e
    asm("mov.s              ecx, esi");                                      // 0x00751ff5    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00751ff7    e864010000
    asm("mov.s              ecx, eax");                                      // 0x00751ffc    8bc8
    asm("call               ?LeaveHome@Abode@@QAEXXZ");                      // 0x00751ffe    e8ad3fcbff
    asm("_jmp_addr_0x00752003:");
    asm("pop                esi");                                           // 0x00752003    5e
    asm("ret");                                                              // 0x00752004    c3
    __builtin_unreachable();
}

int __fastcall SetTopState__8VillagerFUc(struct Living* this, const void* edx, enum VILLAGER_STATES state)
{
    asm("push               esi");                                           // 0x00752010    56
    asm("push               edi");                                           // 0x00752011    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x00752012    8b7c240c
    asm("mov.s              esi, ecx");                                      // 0x00752016    8bf1
    asm("push               edi");                                           // 0x00752018    57
    asm("call               ?CanPauseForASecond@Villager@@QAEIE@Z");         // 0x00752019    e802010000
    asm("test               eax, eax");                                      // 0x0075201e    85c0
    asm("{disp32} je        _jmp_addr_0x007520b5");                          // 0x00752020    0f848f000000
    asm("mov                eax, dword ptr [esi]");                          // 0x00752026    8b06
    asm("mov.s              ecx, esi");                                      // 0x00752028    8bce
    asm("call               dword ptr [eax + 0x11c]");                       // 0x0075202a    ff901c010000
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x00752030    d95c240c
    asm("mov                edx, dword ptr [esi]");                          // 0x00752034    8b16
    asm("mov.s              ecx, esi");                                      // 0x00752036    8bce
    asm("call               dword ptr [edx + 0x4a4]");                       // 0x00752038    ff92a4040000
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x0075203e    d944240c
    asm("test               al, al");                                        // 0x00752042    84c0
    asm("{disp8} je         _jmp_addr_0x0075204c");                          // 0x00752044    7406
    asm("{disp32} fmul      dword ptr [_rdata_float0p5]");                   // 0x00752046    d80db4a38a00
    asm("_jmp_addr_0x0075204c:");
    asm("{disp32} fsubr     dword ptr [_rdata_float1p0]");                   // 0x0075204c    d82d90a38a00
    asm("mov                eax, 0x00000002");                               // 0x00752052    b802000000
    asm("fld                st(0)");                                         // 0x00752057    d9c0
    asm("_jmp_addr_0x00752059:");
    asm("dec                eax");                                           // 0x00752059    48
    asm("fmul               st, st(1)");                                     // 0x0075205a    d8c9
    asm("{disp8} jne        _jmp_addr_0x00752059");                          // 0x0075205c    75fb
    asm("push               0x0000076b");                                    // 0x0075205e    686b070000
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00752063    d95c2410
    asm("push               0x00c235dc");                                    // 0x00752067    68dc35c200
    asm("push               0x3f800000");                                    // 0x0075206c    680000803f
    asm("fstp               st(0)");                                         // 0x00752071    ddd8
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00752073    e8b8c4f8ff
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x00752078    d9442418
    asm("{disp32} fmul      dword ptr [_rdata_float0p5]");                   // 0x0075207c    d80db4a38a00
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00752082    8b4628
    asm("add                esp, 0x0c");                                     // 0x00752085    83c40c
    asm("fsubp              st(1), st");                                     // 0x00752088    dee9
    asm("{disp32} fcomp     dword ptr [eax + 0x00000368]");                  // 0x0075208a    d89868030000
    asm("fnstsw             ax");                                            // 0x00752090    dfe0
    asm("test               ah, 0x01");                                      // 0x00752092    f6c401
    asm("{disp8} je         _jmp_addr_0x007520b5");                          // 0x00752095    741e
    asm("mov.s              ecx, edi");                                      // 0x00752097    8bcf
    asm("and                ecx, 0x000000ff");                               // 0x00752099    81e1ff000000
    asm("push               ecx");                                           // 0x0075209f    51
    asm("mov.s              ecx, esi");                                      // 0x007520a0    8bce
    asm("call               ?SetupPauseForASecond@Villager@@QAEIW4VILLAGER_STATES@@@Z"); // 0x007520a2    e8e98f0100
    asm("test               eax, eax");                                      // 0x007520a7    85c0
    asm("{disp8} je         _jmp_addr_0x007520b5");                          // 0x007520a9    740a
    asm("pop                edi");                                           // 0x007520ab    5f
    asm("mov                eax, 0x00000001");                               // 0x007520ac    b801000000
    asm("pop                esi");                                           // 0x007520b1    5e
    asm("ret                0x0004");                                        // 0x007520b2    c20400
    asm("_jmp_addr_0x007520b5:");
    asm("push               edi");                                           // 0x007520b5    57
    asm("mov.s              ecx, esi");                                      // 0x007520b6    8bce
    asm("call               @SetTopState__6LivingFUc@12");                   // 0x007520b8    e82308eaff
    asm("mov.s              edi, eax");                                      // 0x007520bd    8bf8
    asm("cmp                edi, 0x2f");                                     // 0x007520bf    83ff2f
    asm("{disp8} jne        _jmp_addr_0x007520d3");                          // 0x007520c2    750f
    asm("mov                edx, dword ptr [esi]");                          // 0x007520c4    8b16
    asm("push               0x000000a3");                                    // 0x007520c6    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x007520cb    8bce
    asm("call               dword ptr [edx + 0x90c]");                       // 0x007520cd    ff920c090000
    asm("_jmp_addr_0x007520d3:");
    asm("mov.s              eax, edi");                                      // 0x007520d3    8bc7
    asm("pop                edi");                                           // 0x007520d5    5f
    asm("pop                esi");                                           // 0x007520d6    5e
    asm("ret                0x0004");                                        // 0x007520d7    c20400
    __builtin_unreachable();
}

int __fastcall SetCurrentAndDestinationState__8VillagerFUcUc(struct Living* this, const void* edx, enum VILLAGER_STATES current, enum VILLAGER_STATES destination)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x007520e0    8b442408
    asm("push               esi");                                           // 0x007520e4    56
    asm("push               edi");                                           // 0x007520e5    57
    asm("mov.s              esi, ecx");                                      // 0x007520e6    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x0c]");                   // 0x007520e8    8b4c240c
    asm("push               eax");                                           // 0x007520ec    50
    asm("push               ecx");                                           // 0x007520ed    51
    asm("mov.s              ecx, esi");                                      // 0x007520ee    8bce
    asm("call               @SetCurrentAndDestinationState__6LivingFUcUc@16");                          // 0x007520f0    e88b08eaff
    asm("mov.s              edi, eax");                                      // 0x007520f5    8bf8
    asm("cmp                edi, 0x2f");                                     // 0x007520f7    83ff2f
    asm("{disp8} jne        _jmp_addr_0x0075210b");                          // 0x007520fa    750f
    asm("mov                edx, dword ptr [esi]");                          // 0x007520fc    8b16
    asm("push               0x000000a3");                                    // 0x007520fe    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00752103    8bce
    asm("call               dword ptr [edx + 0x90c]");                       // 0x00752105    ff920c090000
    asm("_jmp_addr_0x0075210b:");
    asm("mov.s              eax, edi");                                      // 0x0075210b    8bc7
    asm("pop                edi");                                           // 0x0075210d    5f
    asm("pop                esi");                                           // 0x0075210e    5e
    asm("ret                0x0008");                                        // 0x0075210f    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall CanPauseForASecond__8VillagerFUc(struct Villager* this, const void* edx, enum VILLAGER_STATES state)
{
    asm("cmp                byte ptr [ecx + 0x0000008c], -0x11");            // 0x00752120    80b98c000000ef
    asm("{disp8} je         _jmp_addr_0x00752156");                          // 0x00752127    742d
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00752129    8b442404
    asm("and                eax, 0x000000ff");                               // 0x0075212d    25ff000000
    asm("lea                edx, dword ptr [eax + eax * 0x2]");              // 0x00752132    8d1440
    asm("shl                edx, 3");                                        // 0x00752135    c1e203
    asm("sub.s              edx, eax");                                      // 0x00752138    2bd0
    asm("lea                eax, dword ptr [edx + edx * 0x2]");              // 0x0075213a    8d0452
    asm("{disp32} mov       edx, dword ptr [eax * 0x4 + 0x00db9f3c]");       // 0x0075213d    8b14853c9fdb00
    asm("test               edx, edx");                                      // 0x00752144    85d2
    asm("{disp8} je         _jmp_addr_0x00752156");                          // 0x00752146    740e
    asm("test               byte ptr [ecx + 0x25], 0x04");                   // 0x00752148    f6412504
    asm("{disp8} jne        _jmp_addr_0x00752156");                          // 0x0075214c    7508
    asm("mov                eax, 0x00000001");                               // 0x0075214e    b801000000
    asm("ret                0x0004");                                        // 0x00752153    c20400
    asm("_jmp_addr_0x00752156:");
    asm("xor.s              eax, eax");                                      // 0x00752156    33c0
    asm("ret                0x0004");                                        // 0x00752158    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct Abode* __fastcall GetAbode__8VillagerFv(const struct Villager* this)
{
    asm("{disp32} mov       eax, dword ptr [ecx + 0x00000128]");             // 0x00752160    8b8128010000
    asm("ret");                                                              // 0x00752166    c3
    asm("nop");                                                              // 0x00752167    90
    asm("nop");                                                              // 0x00752168    90
    asm("nop");                                                              // 0x00752169    90
    asm("nop");                                                              // 0x0075216a    90
    asm("nop");                                                              // 0x0075216b    90
    asm("nop");                                                              // 0x0075216c    90
    asm("nop");                                                              // 0x0075216d    90
    asm("nop");                                                              // 0x0075216e    90
    asm("nop");                                                              // 0x0075216f    90
    asm("push               esi");                                           // 0x00752170    56
    asm("mov.s              esi, ecx");                                      // 0x00752171    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00752173    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x00752175    ff5048
    asm("{disp8} mov        cx, word ptr [esi + 0x16]");                     // 0x00752178    668b4e16
    asm("cmp                cx, word ptr [eax + 0x0000072a]");               // 0x0075217c    663b882a070000
    asm(".byte              0x72, 0x26");// {disp8} jb _jmp_addr_0x007521ab  // 0x00752183    7226
    asm("{disp8} mov        si, word ptr [esi + 0x1a]");                     // 0x00752185    668b761a
    asm("cmp                si, word ptr [eax + 0x0000072e]");               // 0x00752189    663bb02e070000
    asm(".byte              0x72, 0x19");// {disp8} jb _jmp_addr_0x007521ab  // 0x00752190    7219
    asm("cmp                cx, word ptr [eax + 0x00000736]");               // 0x00752192    663b8836070000
    asm("{disp8} ja         _jmp_addr_0x007521ab");                          // 0x00752199    7710
    asm("cmp                si, word ptr [eax + 0x0000073a]");               // 0x0075219b    663bb03a070000
    asm("{disp8} ja         _jmp_addr_0x007521ab");                          // 0x007521a2    7707
    asm("mov                eax, 0x00000001");                               // 0x007521a4    b801000000
    asm("pop                esi");                                           // 0x007521a9    5e
    asm("ret");                                                              // 0x007521aa    c3
    asm("_jmp_addr_0x007521ab:");
    asm("xor.s              eax, eax");                                      // 0x007521ab    33c0
    asm("pop                esi");                                           // 0x007521ad    5e
    asm("ret");                                                              // 0x007521ae    c3
    __builtin_unreachable();
}

void __fastcall ToBeDeleted__8VillagerFi(struct Base* this, const void* edx, int param_1)
{
    asm("push               esi");                                           // 0x007521b0    56
    asm("mov.s              esi, ecx");                                      // 0x007521b1    8bf1
    asm("call               ?DeleteDependancys@Villager@@QAEXXZ");           // 0x007521b3    e8a8dbffff
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x007521b8    8b442408
    asm("push               eax");                                           // 0x007521bc    50
    asm("mov.s              ecx, esi");                                      // 0x007521bd    8bce
    asm("call               @ToBeDeleted__6LivingFi@12");                    // 0x007521bf    e8dc9ee9ff
    asm("pop                esi");                                           // 0x007521c4    5e
    asm("ret                0x0004");                                        // 0x007521c5    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall CallState__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x10");                                     // 0x007521d0    83ec10
    asm("xor.s              eax, eax");                                      // 0x007521d3    33c0
    asm("{disp32} mov       al, byte ptr [ecx + 0x0000008c]");               // 0x007521d5    8a818c000000
    asm("push               esi");                                           // 0x007521db    56
    asm("push               edi");                                           // 0x007521dc    57
    asm("lea                eax, dword ptr [eax + eax * 0x8]");              // 0x007521dd    8d04c0
    asm("shl                eax, 4");                                        // 0x007521e0    c1e004
    asm("add                eax, 0x00d09198 /* _VillagerStateTable */");     // 0x007521e3    059891d000
    asm("mov.s              esi, eax");                                      // 0x007521e8    8bf0
    asm("mov                eax, dword ptr [esi]");                          // 0x007521ea    8b06
    asm("{disp8} mov        edx, dword ptr [esi + 0x04]");                   // 0x007521ec    8b5604
    asm("{disp8} mov        edi, dword ptr [esi + 0x08]");                   // 0x007521ef    8b7e08
    asm("{disp8} mov        esi, dword ptr [esi + 0x0c]");                   // 0x007521f2    8b760c
    asm("add.s              ecx, edx");                                      // 0x007521f5    03ca
    asm("{disp8} mov        dword ptr [esp + 0x10], edi");                   // 0x007521f7    897c2410
    asm("{disp8} mov        dword ptr [esp + 0x14], esi");                   // 0x007521fb    89742414
    asm("call               eax");                                           // 0x007521ff    ffd0
    asm("pop                edi");                                           // 0x00752201    5f
    asm("pop                esi");                                           // 0x00752202    5e
    asm("add                esp, 0x10");                                     // 0x00752203    83c410
    asm("ret");                                                              // 0x00752206    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsPregnant__8VillagerFv(struct Villager* this)
{
    asm("{disp8} mov        edx, dword ptr [ecx + 0x28]");                   // 0x00752210    8b5128
    asm("push               esi");                                           // 0x00752213    56
    asm("{disp32} mov       esi, dword ptr [edx + 0x000001f8]");             // 0x00752214    8bb2f8010000
    asm("mov                eax, 0x00000001");                               // 0x0075221a    b801000000
    asm("cmp.s              esi, eax");                                      // 0x0075221f    3bf0
    asm("pop                esi");                                           // 0x00752221    5e
    asm("{disp8} jne        _jmp_addr_0x0075222e");                          // 0x00752222    750a
    asm("cmp                word ptr [ecx + 0x000000f8], 0x00");             // 0x00752224    6683b9f800000000
    asm("{disp8} jne        _jmp_addr_0x00752230");                          // 0x0075222c    7502
    asm("_jmp_addr_0x0075222e:");
    asm("xor.s              eax, eax");                                      // 0x0075222e    33c0
    asm("_jmp_addr_0x00752230:");
    asm("ret");                                                              // 0x00752230    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall WomanSpecial__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00752240    56
    asm("mov.s              esi, ecx");                                      // 0x00752241    8bf1
    asm("call               ?IsPregnant@Villager@@QAE_NXZ");                 // 0x00752243    e8c8ffffff
    asm("test               eax, eax");                                      // 0x00752248    85c0
    asm("{disp8} je         _jmp_addr_0x0075227d");                          // 0x0075224a    7431
    asm("xor.s              eax, eax");                                      // 0x0075224c    33c0
    asm("{disp8} mov        ax, word ptr [esi + 0x24]");                     // 0x0075224e    668b4624
    asm("not                ax");                                            // 0x00752252    66f7d0
    asm("shr                eax, 0xa");                                      // 0x00752255    c1e80a
    asm("test               al, 0x01");                                      // 0x00752258    a801
    asm("{disp8} je         _jmp_addr_0x0075227d");                          // 0x0075225a    7421
    asm("mov.s              ecx, esi");                                      // 0x0075225c    8bce
    asm("call               ?GetGameTurnsSinceLastChecked@Villager@@QAEIXZ");// 0x0075225e    e80de4ffff
    asm("sub                word ptr [esi + 0x000000f8], ax");               // 0x00752263    662986f8000000
    asm("cmp                word ptr [esi + 0x000000f8], 0x00");             // 0x0075226a    6683bef800000000
    asm("{disp8} jg         _jmp_addr_0x0075227d");                          // 0x00752272    7f09
    asm("mov.s              ecx, esi");                                      // 0x00752274    8bce
    asm("call               ?HousewifeStartsGivingBirth@Villager@@QAEIXZ");                          // 0x00752276    e825ff0000
    asm("pop                esi");                                           // 0x0075227b    5e
    asm("ret");                                                              // 0x0075227c    c3
    asm("_jmp_addr_0x0075227d:");
    asm("xor.s              eax, eax");                                      // 0x0075227d    33c0
    asm("pop                esi");                                           // 0x0075227f    5e
    asm("ret");                                                              // 0x00752280    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsVillagerAvailable__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00752290    56
    asm("mov.s              esi, ecx");                                      // 0x00752291    8bf1
    asm("test               byte ptr [esi + 0x25], 0x04");                   // 0x00752293    f6462504
    asm("{disp8} jne        _jmp_addr_0x007522b1");                          // 0x00752297    7518
    asm("mov                eax, dword ptr [esi]");                          // 0x00752299    8b06
    asm("call               dword ptr [eax + 0x18c]");                       // 0x0075229b    ff908c010000
    asm("test               eax, eax");                                      // 0x007522a1    85c0
    asm("{disp8} je         _jmp_addr_0x007522b1");                          // 0x007522a3    740c
    asm("mov.s              ecx, esi");                                      // 0x007522a5    8bce
    asm("call               ?GetVillagerAvailableState@Villager@@QAE?AW4VILLAGER_STATES@@XZ");     // 0x007522a7    e894fcffff
    asm("and                eax, 0x01");                                     // 0x007522ac    83e001
    asm("pop                esi");                                           // 0x007522af    5e
    asm("ret");                                                              // 0x007522b0    c3
    asm("_jmp_addr_0x007522b1:");
    asm("xor.s              eax, eax");                                      // 0x007522b1    33c0
    asm("pop                esi");                                           // 0x007522b3    5e
    asm("ret");                                                              // 0x007522b4    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsAvailableToBeSummonedByCreature__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x007522c0    56
    asm("mov.s              esi, ecx");                                      // 0x007522c1    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x007522c3    8b06
    asm("call               dword ptr [eax + 0x978]");                       // 0x007522c5    ff9078090000
    asm("test               eax, eax");                                      // 0x007522cb    85c0
    asm("{disp8} jne        _jmp_addr_0x0075230e");                          // 0x007522cd    753f
    asm("mov                edx, dword ptr [esi]");                          // 0x007522cf    8b16
    asm("mov.s              ecx, esi");                                      // 0x007522d1    8bce
    asm("call               dword ptr [edx + 0xaf8]");                       // 0x007522d3    ff92f80a0000
    asm("test               eax, eax");                                      // 0x007522d9    85c0
    asm("{disp8} jne        _jmp_addr_0x0075230e");                          // 0x007522db    7531
    asm("{disp32} mov       ax, word ptr [esi + 0x000000e0]");               // 0x007522dd    668b86e0000000
    asm("shr                eax, 9");                                        // 0x007522e4    c1e809
    asm("test               al, 0x01");                                      // 0x007522e7    a801
    asm("{disp8} jne        _jmp_addr_0x0075230e");                          // 0x007522e9    7523
    asm("mov                edx, dword ptr [esi]");                          // 0x007522eb    8b16
    asm("push               edi");                                           // 0x007522ed    57
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x007522ee    8b7e28
    asm("mov.s              ecx, esi");                                      // 0x007522f1    8bce
    asm("call               dword ptr [edx + 0x11c]");                       // 0x007522f3    ff921c010000
    asm("{disp32} fcomp     dword ptr [edi + 0x0000035c]");                  // 0x007522f9    d89f5c030000
    asm("pop                edi");                                           // 0x007522ff    5f
    asm("fnstsw             ax");                                            // 0x00752300    dfe0
    asm("test               ah, 0x41");                                      // 0x00752302    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075230e");                          // 0x00752305    7507
    asm("mov                eax, 0x00000001");                               // 0x00752307    b801000000
    asm("pop                esi");                                           // 0x0075230c    5e
    asm("ret");                                                              // 0x0075230d    c3
    asm("_jmp_addr_0x0075230e:");
    asm("xor.s              eax, eax");                                      // 0x0075230e    33c0
    asm("pop                esi");                                           // 0x00752310    5e
    asm("ret");                                                              // 0x00752311    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall CallExitStateFunction__8VillagerF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1)
{
    asm("sub                esp, 0x08");                                     // 0x00752320    83ec08
    asm("push               ebx");                                           // 0x00752323    53
    asm("push               ebp");                                           // 0x00752324    55
    asm("push               esi");                                           // 0x00752325    56
    asm("mov.s              esi, ecx");                                      // 0x00752326    8bf1
    asm("{disp32} mov       bl, byte ptr [esi + 0x0000008c]");               // 0x00752328    8a9e8c000000
    asm("mov                eax, dword ptr [esi]");                          // 0x0075232e    8b06
    asm("push               edi");                                           // 0x00752330    57
    asm("{disp8} mov        byte ptr [esp + 0x14], bl");                     // 0x00752331    885c2414
    asm("call               dword ptr [eax + 0xb04]");                       // 0x00752335    ff90040b0000
    asm("{disp8} mov        byte ptr [esp + 0x10], al");                     // 0x0075233b    88442410
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                   // 0x0075233f    8b442414
    asm("and                eax, 0x000000ff");                               // 0x00752343    25ff000000
    asm("lea                eax, dword ptr [eax + eax * 0x8]");              // 0x00752348    8d04c0
    asm("shl                eax, 4");                                        // 0x0075234b    c1e004
    asm("{disp32} mov       edx, dword ptr [eax + 0x00d091b8]");             // 0x0075234e    8b90b891d000
    asm("test               edx, edx");                                      // 0x00752354    85d2
    asm("mov                edi, 0x00000001");                               // 0x00752356    bf01000000
    asm("mov.s              ebp, edi");                                      // 0x0075235b    8bef
    asm("{disp8} je         _jmp_addr_0x00752370");                          // 0x0075235d    7411
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");                   // 0x0075235f    8b4c241c
    asm("push               ecx");                                           // 0x00752363    51
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00d091bc]");             // 0x00752364    8b88bc91d000
    asm("add.s              ecx, esi");                                      // 0x0075236a    03ce
    asm("call               edx");                                           // 0x0075236c    ffd2
    asm("mov.s              edi, eax");                                      // 0x0075236e    8bf8
    asm("_jmp_addr_0x00752370:");
    asm("cmp                bl, byte ptr [esp + 0x10]");                     // 0x00752370    3a5c2410
    asm("{disp8} je         _jmp_addr_0x007523a0");                          // 0x00752374    742a
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                   // 0x00752376    8b442410
    asm("and                eax, 0x000000ff");                               // 0x0075237a    25ff000000
    asm("lea                eax, dword ptr [eax + eax * 0x8]");              // 0x0075237f    8d04c0
    asm("shl                eax, 4");                                        // 0x00752382    c1e004
    asm("{disp32} mov       edx, dword ptr [eax + 0x00d091b8]");             // 0x00752385    8b90b891d000
    asm("test               edx, edx");                                      // 0x0075238b    85d2
    asm("{disp8} je         _jmp_addr_0x007523a0");                          // 0x0075238d    7411
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");                   // 0x0075238f    8b4c241c
    asm("push               ecx");                                           // 0x00752393    51
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00d091bc]");             // 0x00752394    8b88bc91d000
    asm("add.s              ecx, esi");                                      // 0x0075239a    03ce
    asm("call               edx");                                           // 0x0075239c    ffd2
    asm("mov.s              ebp, eax");                                      // 0x0075239e    8be8
    asm("_jmp_addr_0x007523a0:");
    asm("cmp                edi, 0x01");                                     // 0x007523a0    83ff01
    asm("{disp8} jne        _jmp_addr_0x007523b5");                          // 0x007523a3    7510
    asm("cmp.s              ebp, edi");                                      // 0x007523a5    3bef
    asm("{disp8} jne        _jmp_addr_0x007523b5");                          // 0x007523a7    750c
    asm("mov.s              eax, edi");                                      // 0x007523a9    8bc7
    asm("pop                edi");                                           // 0x007523ab    5f
    asm("pop                esi");                                           // 0x007523ac    5e
    asm("pop                ebp");                                           // 0x007523ad    5d
    asm("pop                ebx");                                           // 0x007523ae    5b
    asm("add                esp, 0x08");                                     // 0x007523af    83c408
    asm("ret                0x0004");                                        // 0x007523b2    c20400
    asm("_jmp_addr_0x007523b5:");
    asm("pop                edi");                                           // 0x007523b5    5f
    asm("pop                esi");                                           // 0x007523b6    5e
    asm("pop                ebp");                                           // 0x007523b7    5d
    asm("xor.s              eax, eax");                                      // 0x007523b8    33c0
    asm("pop                ebx");                                           // 0x007523ba    5b
    asm("add                esp, 0x08");                                     // 0x007523bb    83c408
    asm("ret                0x0004");                                        // 0x007523be    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall CallEntryStateFunction__Uc__8VillagerFUc(struct Living* this, const void* edx, enum VILLAGER_STATES state)
{
    asm("push               ecx");                                           // 0x007523d0    51
    asm("push               esi");                                           // 0x007523d1    56
    asm("mov.s              esi, ecx");                                      // 0x007523d2    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x007523d4    8b06
    asm("push               edi");                                           // 0x007523d6    57
    asm("call               dword ptr [eax + 0xb04]");                       // 0x007523d7    ff90040b0000
    asm("{disp8} mov        edi, dword ptr [esp + 0x10]");                   // 0x007523dd    8b7c2410
    asm("{disp8} mov        byte ptr [esp + 0x08], al");                     // 0x007523e1    88442408
    asm("mov.s              eax, edi");                                      // 0x007523e5    8bc7
    asm("and                eax, 0x000000ff");                               // 0x007523e7    25ff000000
    asm("lea                eax, dword ptr [eax + eax * 0x8]");              // 0x007523ec    8d04c0
    asm("shl                eax, 4");                                        // 0x007523ef    c1e004
    asm("{disp32} mov       edx, dword ptr [eax + 0x00d091a8]");             // 0x007523f2    8b90a891d000
    asm("test               edx, edx");                                      // 0x007523f8    85d2
    asm("{disp8} je         _jmp_addr_0x00752411");                          // 0x007523fa    7415
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x007523fc    8b4c2408
    asm("push               edi");                                           // 0x00752400    57
    asm("push               ecx");                                           // 0x00752401    51
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00d091ac]");             // 0x00752402    8b88ac91d000
    asm("add.s              ecx, esi");                                      // 0x00752408    03ce
    asm("call               edx");                                           // 0x0075240a    ffd2
    asm("cmp                eax, 0x01");                                     // 0x0075240c    83f801
    asm("{disp8} jne        _jmp_addr_0x00752429");                          // 0x0075240f    7518
    asm("_jmp_addr_0x00752411:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00752411    8b16
    asm("push               edi");                                           // 0x00752413    57
    asm("push               0x0");                                           // 0x00752414    6a00
    asm("mov.s              ecx, esi");                                      // 0x00752416    8bce
    asm("call               dword ptr [edx + 0x938]");                       // 0x00752418    ff9238090000
    asm("pop                edi");                                           // 0x0075241e    5f
    asm("mov                eax, 0x00000001");                               // 0x0075241f    b801000000
    asm("pop                esi");                                           // 0x00752424    5e
    asm("pop                ecx");                                           // 0x00752425    59
    asm("ret                0x0004");                                        // 0x00752426    c20400
    asm("_jmp_addr_0x00752429:");
    asm("xor.s              ecx, ecx");                                      // 0x00752429    33c9
    asm("cmp                eax, 0x23");                                     // 0x0075242b    83f823
    asm("sete               cl");                                            // 0x0075242e    0f94c1
    asm("pop                edi");                                           // 0x00752431    5f
    asm("pop                esi");                                           // 0x00752432    5e
    asm("mov.s              eax, ecx");                                      // 0x00752433    8bc1
    asm("pop                ecx");                                           // 0x00752435    59
    asm("ret                0x0004");                                        // 0x00752436    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall CallEntryStateFunction__UcUc__8VillagerFUcUc(struct Living* this, const void* edx, enum VILLAGER_STATES current, enum VILLAGER_STATES destination)
{
    asm("push               ecx");                                           // 0x00752440    51
    asm("push               esi");                                           // 0x00752441    56
    asm("mov.s              esi, ecx");                                      // 0x00752442    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00752444    8b06
    asm("push               edi");                                           // 0x00752446    57
    asm("call               dword ptr [eax + 0xb04]");                       // 0x00752447    ff90040b0000
    asm("mov                edx, dword ptr [esi]");                          // 0x0075244d    8b16
    asm("{disp8} mov        byte ptr [esp + 0x08], al");                     // 0x0075244f    88442408
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                   // 0x00752453    8b442410
    asm("push               eax");                                           // 0x00752457    50
    asm("mov.s              ecx, esi");                                      // 0x00752458    8bce
    asm("call               dword ptr [edx + 0x90c]");                       // 0x0075245a    ff920c090000
    asm("test               eax, eax");                                      // 0x00752460    85c0
    asm("{disp8} je         _jmp_addr_0x007524bc");                          // 0x00752462    7458
    asm("{disp8} mov        edi, dword ptr [esp + 0x14]");                   // 0x00752464    8b7c2414
    asm("mov.s              eax, edi");                                      // 0x00752468    8bc7
    asm("and                eax, 0x000000ff");                               // 0x0075246a    25ff000000
    asm("lea                eax, dword ptr [eax + eax * 0x8]");              // 0x0075246f    8d04c0
    asm("shl                eax, 4");                                        // 0x00752472    c1e004
    asm("{disp32} mov       edx, dword ptr [eax + 0x00d091a8]");             // 0x00752475    8b90a891d000
    asm("test               edx, edx");                                      // 0x0075247b    85d2
    asm("{disp8} je         _jmp_addr_0x00752494");                          // 0x0075247d    7415
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x0075247f    8b4c2408
    asm("push               edi");                                           // 0x00752483    57
    asm("push               ecx");                                           // 0x00752484    51
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00d091ac]");             // 0x00752485    8b88ac91d000
    asm("add.s              ecx, esi");                                      // 0x0075248b    03ce
    asm("call               edx");                                           // 0x0075248d    ffd2
    asm("cmp                eax, 0x01");                                     // 0x0075248f    83f801
    asm("{disp8} jne        _jmp_addr_0x007524ac");                          // 0x00752492    7518
    asm("_jmp_addr_0x00752494:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00752494    8b16
    asm("push               edi");                                           // 0x00752496    57
    asm("push               0x1");                                           // 0x00752497    6a01
    asm("mov.s              ecx, esi");                                      // 0x00752499    8bce
    asm("call               dword ptr [edx + 0x938]");                       // 0x0075249b    ff9238090000
    asm("pop                edi");                                           // 0x007524a1    5f
    asm("mov                eax, 0x00000001");                               // 0x007524a2    b801000000
    asm("pop                esi");                                           // 0x007524a7    5e
    asm("pop                ecx");                                           // 0x007524a8    59
    asm("ret                0x0008");                                        // 0x007524a9    c20800
    asm("_jmp_addr_0x007524ac:");
    asm("cmp                eax, 0x23");                                     // 0x007524ac    83f823
    asm("{disp8} jne        _jmp_addr_0x007524bc");                          // 0x007524af    750b
    asm("pop                edi");                                           // 0x007524b1    5f
    asm("mov                eax, 0x00000001");                               // 0x007524b2    b801000000
    asm("pop                esi");                                           // 0x007524b7    5e
    asm("pop                ecx");                                           // 0x007524b8    59
    asm("ret                0x0008");                                        // 0x007524b9    c20800
    asm("_jmp_addr_0x007524bc:");
    asm("pop                edi");                                           // 0x007524bc    5f
    asm("xor.s              eax, eax");                                      // 0x007524bd    33c0
    asm("pop                esi");                                           // 0x007524bf    5e
    asm("pop                ecx");                                           // 0x007524c0    59
    asm("ret                0x0008");                                        // 0x007524c1    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsStateEntryFunctionSameAs__8VillagerCFUlUl(const struct Villager* this, const void* edx, unsigned long param_1, unsigned long param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x007524d0    8b442404
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x007524d4    8b4c2408
    asm("lea                eax, dword ptr [eax + eax * 0x8]");              // 0x007524d8    8d04c0
    asm("lea                ecx, dword ptr [ecx + ecx * 0x8]");              // 0x007524db    8d0cc9
    asm("shl                eax, 4");                                        // 0x007524de    c1e004
    asm("{disp32} mov       edx, dword ptr [eax + 0x00d091a8]");             // 0x007524e1    8b90a891d000
    asm("shl                ecx, 4");                                        // 0x007524e7    c1e104
    asm("cmp                edx, dword ptr [ecx + 0x00d091a8]");             // 0x007524ea    3b91a891d000
    asm("{disp8} jne        _jmp_addr_0x00752528");                          // 0x007524f0    7536
    asm("test               edx, edx");                                      // 0x007524f2    85d2
    asm("{disp8} je         _jmp_addr_0x00752520");                          // 0x007524f4    742a
    asm("{disp32} mov       edx, dword ptr [eax + 0x00d091ac]");             // 0x007524f6    8b90ac91d000
    asm("cmp                edx, dword ptr [ecx + 0x00d091ac]");             // 0x007524fc    3b91ac91d000
    asm("{disp8} jne        _jmp_addr_0x00752528");                          // 0x00752502    7524
    asm("{disp32} mov       edx, dword ptr [eax + 0x00d091b0]");             // 0x00752504    8b90b091d000
    asm("cmp                edx, dword ptr [ecx + 0x00d091b0]");             // 0x0075250a    3b91b091d000
    asm("{disp8} jne        _jmp_addr_0x00752528");                          // 0x00752510    7516
    asm("{disp32} mov       eax, dword ptr [eax + 0x00d091b4]");             // 0x00752512    8b80b491d000
    asm("cmp                eax, dword ptr [ecx + 0x00d091b4]");             // 0x00752518    3b81b491d000
    asm("{disp8} jne        _jmp_addr_0x00752528");                          // 0x0075251e    7508
    asm("_jmp_addr_0x00752520:");
    asm("mov                eax, 0x00000001");                               // 0x00752520    b801000000
    asm("ret                0x0008");                                        // 0x00752525    c20800
    asm("_jmp_addr_0x00752528:");
    asm("xor.s              eax, eax");                                      // 0x00752528    33c0
    asm("ret                0x0008");                                        // 0x0075252a    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsStateExitFunctionSameAs__8VillagerCF15VILLAGER_STATES(const struct Living* this, const void* edx, enum VILLAGER_STATES param_1)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x00752530    8b01
    asm("push               ebx");                                           // 0x00752532    53
    asm("push               esi");                                           // 0x00752533    56
    asm("push               edi");                                           // 0x00752534    57
    asm("call               dword ptr [eax + 0xb04]");                       // 0x00752535    ff90040b0000
    asm("and                eax, 0x000000ff");                               // 0x0075253b    25ff000000
    asm("lea                ecx, dword ptr [eax + eax * 0x8]");              // 0x00752540    8d0cc0
    asm("shl                ecx, 4");                                        // 0x00752543    c1e104
    asm("add                ecx, 0x00d091b8");                               // 0x00752546    81c1b891d000
    asm("mov                edx, dword ptr [ecx]");                          // 0x0075254c    8b11
    asm("{disp8} mov        esi, dword ptr [ecx + 0x04]");                   // 0x0075254e    8b7104
    asm("{disp8} mov        edi, dword ptr [ecx + 0x08]");                   // 0x00752551    8b7908
    asm("{disp8} mov        ebx, dword ptr [ecx + 0x0c]");                   // 0x00752554    8b590c
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00752557    8b4c2410
    asm("lea                eax, dword ptr [ecx + ecx * 0x8]");              // 0x0075255b    8d04c9
    asm("shl                eax, 4");                                        // 0x0075255e    c1e004
    asm("cmp                edx, dword ptr [eax + 0x00d091b8]");             // 0x00752561    3b90b891d000
    asm("{disp8} jne        _jmp_addr_0x00752585");                          // 0x00752567    751c
    asm("test               edx, edx");                                      // 0x00752569    85d2
    asm("{disp8} je         _jmp_addr_0x007525a3");                          // 0x0075256b    7436
    asm("cmp                esi, dword ptr [eax + 0x00d091bc]");             // 0x0075256d    3bb0bc91d000
    asm("{disp8} jne        _jmp_addr_0x00752585");                          // 0x00752573    7510
    asm("cmp                edi, dword ptr [eax + 0x00d091c0]");             // 0x00752575    3bb8c091d000
    asm("{disp8} jne        _jmp_addr_0x00752585");                          // 0x0075257b    7508
    asm("cmp                ebx, dword ptr [eax + 0x00d091c4]");             // 0x0075257d    3b98c491d000
    asm("{disp8} je         _jmp_addr_0x007525a3");                          // 0x00752583    741e
    asm("_jmp_addr_0x00752585:");
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");              // 0x00752585    8d0449
    asm("shl                eax, 3");                                        // 0x00752588    c1e003
    asm("sub.s              eax, ecx");                                      // 0x0075258b    2bc1
    asm("lea                edx, dword ptr [eax + eax * 0x2]");              // 0x0075258d    8d1440
    asm("{disp32} mov       eax, dword ptr [edx * 0x4 + 0x00db9e84]");       // 0x00752590    8b0495849edb00
    asm("test               eax, eax");                                      // 0x00752597    85c0
    asm("{disp8} je         _jmp_addr_0x007525a3");                          // 0x00752599    7408
    asm("pop                edi");                                           // 0x0075259b    5f
    asm("pop                esi");                                           // 0x0075259c    5e
    asm("xor.s              eax, eax");                                      // 0x0075259d    33c0
    asm("pop                ebx");                                           // 0x0075259f    5b
    asm("ret                0x0004");                                        // 0x007525a0    c20400
    asm("_jmp_addr_0x007525a3:");
    asm("pop                edi");                                           // 0x007525a3    5f
    asm("pop                esi");                                           // 0x007525a4    5e
    asm("mov                eax, 0x00000001");                               // 0x007525a5    b801000000
    asm("pop                ebx");                                           // 0x007525aa    5b
    asm("ret                0x0004");                                        // 0x007525ab    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsReactiveState__8VillagerFUl(struct Villager* this, const void* edx, unsigned long param_1)
{
    asm("{disp8} mov        ecx, dword ptr [esp + 0x04]");                   // 0x007525b0    8b4c2404
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");              // 0x007525b4    8d0449
    asm("shl                eax, 3");                                        // 0x007525b7    c1e003
    asm("sub.s              eax, ecx");                                      // 0x007525ba    2bc1
    asm("lea                eax, dword ptr [eax + eax * 0x2]");              // 0x007525bc    8d0440
    asm("{disp32} mov       edx, dword ptr [eax * 0x4 + 0x00db9f30]");       // 0x007525bf    8b1485309fdb00
    asm("xor.s              ecx, ecx");                                      // 0x007525c6    33c9
    asm("test               edx, edx");                                      // 0x007525c8    85d2
    asm("setne              cl");                                            // 0x007525ca    0f95c1
    asm("mov.s              eax, ecx");                                      // 0x007525cd    8bc1
    asm("ret");                                                              // 0x007525cf    c3
    asm("mov                eax, dword ptr [ecx]");                          // 0x007525d0    8b01
    asm("call               dword ptr [eax + 0xb04]");                       // 0x007525d2    ff90040b0000
    asm("and                eax, 0x000000ff");                               // 0x007525d8    25ff000000
    asm("mov.s              ecx, eax");                                      // 0x007525dd    8bc8
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");              // 0x007525df    8d0449
    asm("shl                eax, 3");                                        // 0x007525e2    c1e003
    asm("sub.s              eax, ecx");                                      // 0x007525e5    2bc1
    asm("lea                ecx, dword ptr [eax + eax * 0x2]");              // 0x007525e7    8d0c40
    asm("{disp32} lea       eax, dword ptr [ecx * 0x4 + 0x00db9ea0]");       // 0x007525ea    8d048da09edb00
    asm("ret");                                                              // 0x007525f1    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsHungry__8VillagerFv(struct Villager* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                   // 0x00752600    8b4128
    asm("{disp32} fld       dword ptr [ecx + 0x000000e8]");                  // 0x00752603    d981e8000000
    asm("{disp32} fcomp     dword ptr [eax + 0x000002c0]");                  // 0x00752609    d898c0020000
    asm("fnstsw             ax");                                            // 0x0075260f    dfe0
    asm("test               ah, 0x41");                                      // 0x00752611    f6c441
    asm("{disp8} je         _jmp_addr_0x0075261c");                          // 0x00752614    7406
    asm("mov                eax, 0x00000001");                               // 0x00752616    b801000000
    asm("ret");                                                              // 0x0075261b    c3
    asm("_jmp_addr_0x0075261c:");
    asm("xor.s              eax, eax");                                      // 0x0075261c    33c0
    asm("ret");                                                              // 0x0075261e    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsWoman__8VillagerFv(struct Villager* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                   // 0x00752620    8b4128
    asm("cmp                dword ptr [eax + 0x000001f8], 0x01");            // 0x00752623    83b8f801000001
    asm("{disp8} jne        _jmp_addr_0x0075263e");                          // 0x0075262a    7512
    asm("mov                edx, dword ptr [ecx]");                          // 0x0075262c    8b11
    asm("call               dword ptr [edx + 0xaf8]");                       // 0x0075262e    ff92f80a0000
    asm("test               eax, eax");                                      // 0x00752634    85c0
    asm("{disp8} jne        _jmp_addr_0x0075263e");                          // 0x00752636    7506
    asm("mov                eax, 0x00000001");                               // 0x00752638    b801000000
    asm("ret");                                                              // 0x0075263d    c3
    asm("_jmp_addr_0x0075263e:");
    asm("xor.s              eax, eax");                                      // 0x0075263e    33c0
    asm("ret");                                                              // 0x00752640    c3
    __builtin_unreachable();
}
