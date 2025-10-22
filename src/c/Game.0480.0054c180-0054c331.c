#include "Game.h"
#include <sys/cdefs.h>

struct GCamera* __fastcall GetCamera__5GGameFv(struct GGame* this)
{
    return this->camera;
}

void __fastcall StartGame__5GGameFv(struct GGame* this)
{
    asm("                         {disp32} mov       eax, dword ptr [_game]");                        // 0x0054c190    a15c19d000
    asm("                         sub                esp, 0x10");                                     // 0x0054c195    83ec10
    asm("                         push               ebx");                                           // 0x0054c198    53
    asm("                         push               esi");                                           // 0x0054c199    56
    asm("                         xor.s              ebx, ebx");                                      // 0x0054c19a    33db
    asm("                         mov.s              esi, ecx");                                      // 0x0054c19c    8bf1
    asm("                         {disp32} mov       dword ptr [eax + 0x00250180], ebx");             // 0x0054c19e    899880012500
    asm("                         call               ?Init@GGame@@QAE_NXZ");                          // 0x0054c1a4    e807320000
    asm("                         cmp                eax, 0x01");                                     // 0x0054c1a9    83f801
    asm("                         {disp32} jne       _jmp_addr_0x0054c2d0");                          // 0x0054c1ac    0f851e010000
    asm("                         cmp                byte ptr [_ARGS_CONVERT], bl");                  // 0x0054c1b2    381dc16ad400
    asm("                         {disp32} jne       _jmp_addr_0x0054c2d0");                          // 0x0054c1b8    0f8512010000
    asm("                         push               edi");                                           // 0x0054c1be    57
    asm("                         call               _stop_draw_sprite_to_screen__Fv");               // 0x0054c1bf    e82c580f00
    asm("                         {disp32} mov       edi, dword ptr [data_bytes + 0x30a6e8]");        // 0x0054c1c4    8b3de806cd00
    asm("                         cmp.s              edi, ebx");                                      // 0x0054c1ca    3bfb
    asm("                         {disp8} je         _jmp_addr_0x0054c1eb");                          // 0x0054c1cc    741d
    asm("                         {disp32} mov       ecx, dword ptr [edi + 0x0000e92c]");             // 0x0054c1ce    8b8f2ce90000
    asm("                         {disp8} mov        dword ptr [ecx + 0x08], ebx");                   // 0x0054c1d4    895908
    asm("                         {disp32} mov       ecx, dword ptr [edi + 0x0000e928]");             // 0x0054c1d7    8b8f28e90000
    asm("                         call               ?Release@LH3DTexture@@QAEXXZ");                   // 0x0054c1dd    e85ebb2e00
    asm("                         push               edi");                                           // 0x0054c1e2    57
    asm("                         call               ??3@YAXPAX@Z");                                    // 0x0054c1e3    e8b02c2600
    asm("                         add                esp, 0x04");                                     // 0x0054c1e8    83c404
    asm("_jmp_addr_0x0054c1eb:    {disp32} mov       edi, dword ptr [rdata_bytes + 0x1c4]");          // 0x0054c1eb    8b3dc4918a00
    asm("                         {disp32} mov       dword ptr [data_bytes + 0x30a6e8], ebx");        // 0x0054c1f1    891de806cd00
    asm("                         call               edi");                                           // 0x0054c1f7    ffd7
    asm("                         {disp32} fld       dword ptr [esi + 0x00205e70]");                  // 0x0054c1f9    d986705e2000
    asm("                         {disp32} fcomp     dword ptr [_rdata_float0p0]     ");              // 0x0054c1ff    d81d98a38a00
    asm("                         {disp32} mov       dword ptr [esi + 0x00205e68], eax");             // 0x0054c205    8986685e2000
    asm("                         {disp32} mov       dword ptr [esi + 0x00205e6c], ebx");             // 0x0054c20b    899e6c5e2000
    asm("                         fnstsw             ax");                                            // 0x0054c211    dfe0
    asm("                         test               ah, 0x40");                                      // 0x0054c213    f6c440
    asm("                         {disp8} jne        _jmp_addr_0x0054c269");                          // 0x0054c216    7551
    asm("                         {disp32} mov       edx, dword ptr [esi + 0x00205e70]");             // 0x0054c218    8b96705e2000
    asm("                         {disp32} mov       dword ptr [esi + 0x00205e74], edx");             // 0x0054c21e    8996745e2000
    asm("                         call               edi");                                           // 0x0054c224    ffd7
    asm("                         sub                eax, dword ptr [esi + 0x00205e68]");             // 0x0054c226    2b86685e2000
    asm("                         {disp8} mov        dword ptr [esp + 0x0c], eax");                   // 0x0054c22c    8944240c
    asm("                         {disp32} mov       eax, dword ptr [esi + 0x00205e6c]");             // 0x0054c230    8b866c5e2000
    asm("                         {disp8} mov        dword ptr [esp + 0x10], ebx");                   // 0x0054c236    895c2410
    asm("                         {disp8} fild       qword ptr [esp + 0x0c]");                        // 0x0054c23a    df6c240c
    asm("                         {disp8} mov        dword ptr [esp + 0x0c], eax");                   // 0x0054c23e    8944240c
    asm("                         {disp8} mov        dword ptr [esp + 0x10], ebx");                   // 0x0054c242    895c2410
    asm("                         {disp32} fmul      dword ptr [esi + 0x00205e70]");                  // 0x0054c246    d88e705e2000
    asm("                         {disp8} fiadd      dword ptr [esp + 0x0c]");                        // 0x0054c24c    da44240c
    asm("                         call               _jmp_addr_0x007a1400");                          // 0x0054c250    e8ab512500
    asm("                         {disp32} mov       dword ptr [esi + 0x00205e6c], eax");             // 0x0054c255    89866c5e2000
    asm("                         call               edi");                                           // 0x0054c25b    ffd7
    asm("                         {disp32} mov       dword ptr [esi + 0x00205e68], eax");             // 0x0054c25d    8986685e2000
    asm("                         {disp32} mov       dword ptr [esi + 0x00205e70], ebx");             // 0x0054c263    899e705e2000
    asm("_jmp_addr_0x0054c269:    {disp32} mov       ecx, dword ptr [esi + 0x00205e74]");             // 0x0054c269    8b8e745e2000
    asm("                         {disp32} mov       dword ptr [esi + 0x00205e70], 0x3727c5ac");      // 0x0054c26f    c786705e2000acc52737
    asm("                         {disp8} mov        dword ptr [esp + 0x0c], ecx");                   // 0x0054c279    894c240c
    asm("                         call               edi");                                           // 0x0054c27d    ffd7
    asm("                         {disp32} mov       ecx, dword ptr [esi + 0x00205e68]");             // 0x0054c27f    8b8e685e2000
    asm("                         {disp32} mov       edx, dword ptr [esi + 0x00205e6c]");             // 0x0054c285    8b966c5e2000
    asm("                         sub.s              eax, ecx");                                      // 0x0054c28b    2bc1
    asm("                         {disp8} mov        dword ptr [esp + 0x14], eax");                   // 0x0054c28d    89442414
    asm("                         {disp8} mov        dword ptr [esp + 0x18], ebx");                   // 0x0054c291    895c2418
    asm("                         {disp8} fild       qword ptr [esp + 0x14]");                        // 0x0054c295    df6c2414
    asm("                         {disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x0054c299    89542414
    asm("                         {disp8} mov        dword ptr [esp + 0x18], ebx");                   // 0x0054c29d    895c2418
    asm("                         {disp32} fmul      dword ptr [esi + 0x00205e70]");                  // 0x0054c2a1    d88e705e2000
    asm("                         {disp8} fiadd      dword ptr [esp + 0x14]");                        // 0x0054c2a7    da442414
    asm("                         call               _jmp_addr_0x007a1400");                          // 0x0054c2ab    e850512500
    asm("                         {disp32} mov       dword ptr [esi + 0x00205e6c], eax");             // 0x0054c2b0    89866c5e2000
    asm("                         call               edi");                                           // 0x0054c2b6    ffd7
    asm("                         {disp32} mov       dword ptr [esi + 0x00205e68], eax");             // 0x0054c2b8    8986685e2000
    asm("                         {disp8} mov        eax, dword ptr [esp + 0x0c]");                   // 0x0054c2be    8b44240c
    asm("                         mov.s              ecx, esi");                                      // 0x0054c2c2    8bce
    asm("                         {disp32} mov       dword ptr [esi + 0x00205e70], eax");             // 0x0054c2c4    8986705e2000
    asm("                         call               ?Loop@GGame@@QAEIXZ");                             // 0x0054c2ca    e8510c0000
    asm("                         pop                edi");                                           // 0x0054c2cf    5f
    asm("_jmp_addr_0x0054c2d0:    pop                esi");                                           // 0x0054c2d0    5e
    asm("                         pop                ebx");                                           // 0x0054c2d1    5b
    asm("                         add                esp, 0x10");                                     // 0x0054c2d2    83c410
}

void __fastcall FUN_0054c2e0(struct GGame* this)
{
    asm("sub                esp, 0x08");                                     // 0x0054c2e0    83ec08
    asm("push               esi");                                           // 0x0054c2e3    56
    asm("mov.s              esi, ecx");                                      // 0x0054c2e4    8bf1
    asm("call               dword ptr [rdata_bytes + 0x1c4]");               // 0x0054c2e6    ff15c4918a00
    asm("sub                eax, dword ptr [data_bytes + 0x30dc24]");        // 0x0054c2ec    2b05243ccd00
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x30dc28]");        // 0x0054c2f2    8b0d283ccd00
    asm("{disp8} mov        dword ptr [esp + 0x04], eax");                   // 0x0054c2f8    89442404
    asm("xor.s              eax, eax");                                      // 0x0054c2fc    33c0
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                   // 0x0054c2fe    89442408
    asm("{disp8} fild       qword ptr [esp + 0x04]");                        // 0x0054c302    df6c2404
    asm("{disp8} mov        dword ptr [esp + 0x04], ecx");                   // 0x0054c306    894c2404
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                   // 0x0054c30a    89442408
    asm("{disp32} fmul      dword ptr [data_bytes + 0x30dc2c]");             // 0x0054c30e    d80d2c3ccd00
    asm("{disp8} fiadd      dword ptr [esp + 0x04]");                        // 0x0054c314    da442404
    asm("call               _jmp_addr_0x007a1400");                          // 0x0054c318    e8e3502500
    asm("{disp32} mov       dword ptr [esi + 0x00205d3c], eax");             // 0x0054c31d    89863c5d2000
    asm("pop                esi");                                           // 0x0054c323    5e
    asm("add                esp, 0x08");                                     // 0x0054c324    83c408
}

void __fastcall Delete__5GGameFv(struct Base* this)
{
}
