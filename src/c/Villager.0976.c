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
