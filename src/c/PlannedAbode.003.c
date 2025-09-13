#include "PlannedAbode.h"

__attribute__((XOR32rr_REV))
bool __fastcall IsCivic__12PlannedAbodeFv(struct PlannedMultiMapFixed* this)
{
    asm("call             ?GetInfo@PlannedAbode@@SAPAVGPlannedAbodeInfo@@XZ");              // 0x004060c0    e80bf6ffff
    asm("{disp32} mov     eax, dword ptr [eax + 0x00000120]"); // 0x004060c5    8b8020010000
    asm("cmp              eax, 0x00000100");                   // 0x004060cb    3d00010000
    asm("{disp8} jg       _jmp_addr_0x004060eb");              // 0x004060d0    7f19
    asm("{disp8} je       _jmp_addr_0x0040610f");              // 0x004060d2    743b
    asm("add              eax, -0x14");                        // 0x004060d4    83c0ec
    asm("cmp              eax, 0x70");                         // 0x004060d7    83f870
    asm("{disp8} ja       _jmp_addr_0x0040610c");              // 0x004060da    7730
    asm("xor.s            ecx, ecx");                          // 0x004060dc    33c9
    asm("{disp32} mov     cl, byte ptr [eax + 0x00406120]");   // 0x004060de    8a8820614000
    asm("jmp              dword ptr [ecx*4 + 0x406118]");      // 0x004060e4    ff248d18614000
    asm("_jmp_addr_0x004060eb:");
    asm("cmp              eax, 0x00001004");                   // 0x004060eb    3d04100000
    asm("{disp8} jg       _jmp_addr_0x00406105");              // 0x004060f0    7f13
    asm("{disp8} je       _jmp_addr_0x0040610f");              // 0x004060f2    741b
    asm("cmp              eax, 0x00000204");                   // 0x004060f4    3d04020000
    asm("{disp8} je       _jmp_addr_0x0040610f");              // 0x004060f9    7414
    asm("cmp              eax, 0x00000404");                   // 0x004060fb    3d04040000
    asm("{disp8} je       _jmp_addr_0x0040610f");              // 0x00406100    740d
    asm("xor.s            eax, eax");                          // 0x00406102    33c0
    asm("ret");                                                // 0x00406104    c3
    asm("_jmp_addr_0x00406105:");
    asm("cmp              eax, 0x00002004");                   // 0x00406105    3d04200000
    asm("{disp8} je       _jmp_addr_0x0040610f");              // 0x0040610a    7403
    asm("_jmp_addr_0x0040610c:");
    asm("xor.s            eax, eax");                          // 0x0040610c    33c0
    asm("ret");                                                // 0x0040610e    c3
    asm("_jmp_addr_0x0040610f:");
    asm("mov              eax, 0x00000001");                   // 0x0040610f    b801000000
    asm("ret");                                                // 0x00406114    c3
    // Snippet: db, [0x00406115, 0x00406118)
    asm(".byte 0x8d, 0x49, 0x00");            // 0x00406115
    // Snippet: jmptbl, [0x00406118, 0x00406120)
    asm(".byte 0x0f, 0x61, 0x40, 0x00");      // 0x00406118
    asm(".byte 0x0c, 0x61, 0x40, 0x00");      // 0x0040611c
    // Snippet: ijmptbl, [0x00406120, 0x00406191)
    asm(".byte 0x00, 0x01, 0x01, 0x01");      // 0x00406120
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406124
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406128
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x0040612c
    asm(".byte 0x00, 0x01, 0x01, 0x01");      // 0x00406130
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406134
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406138
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x0040613c
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406140
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406144
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406148
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x0040614c
    asm(".byte 0x00, 0x01, 0x01, 0x01");      // 0x00406150
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406154
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406158
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x0040615c
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406160
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406164
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406168
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x0040616c
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406170
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406174
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406178
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x0040617c
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406180
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406184
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406188
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x0040618c
    asm(".byte 0x00");                        // 0x00406190
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsWonder__12PlannedAbodeFv(struct GameThingWithPos* this)
{
    asm("call               ?GetInfo@PlannedAbode@@SAPAVGPlannedAbodeInfo@@XZ");                          // 0x004061a0    e82bf5ffff
    asm("{disp32} mov       edx, dword ptr [eax + 0x00000120]");             // 0x004061a5    8b9020010000
    asm("xor.s              ecx, ecx");                                      // 0x004061ab    33c9
    asm("cmp                edx, 0x00000100");                               // 0x004061ad    81fa00010000
    asm("sete               cl");                                            // 0x004061b3    0f94c1
    asm("mov.s              eax, ecx");                                      // 0x004061b6    8bc1
    asm("ret");                                                              // 0x004061b8    c3
    __builtin_unreachable();
}
