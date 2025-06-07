#include "Game.h"
#include <sys/cdefs.h>

struct GCamera* __fastcall GetCamera__5GGameFv(struct GGame* this) {
  return this->camera;
}

void __fastcall StartGame__5GGameFv(struct GGame* this) {
  __asm__(
    "                         {disp32} mov       eax, dword ptr [data_bytes + 0x33b95c]\n"        // 0x0054c190    a15c19d000
    "                         sub                esp, 0x10\n"                                     // 0x0054c195    83ec10
    "                         push               ebx\n"                                           // 0x0054c198    53
    "                         push               esi\n"                                           // 0x0054c199    56
    "                         xor.s              ebx, ebx\n"                                      // 0x0054c19a    33db
    "                         mov.s              esi, ecx\n"                                      // 0x0054c19c    8bf1
    "                         {disp32} mov       dword ptr [eax + 0x00250180], ebx\n"             // 0x0054c19e    899880012500
    "                         call               @Init__5GGameFv@4\n"                             // 0x0054c1a4    e807320000
    "                         cmp                eax, 0x01\n"                                     // 0x0054c1a9    83f801
    "                         {disp32} jne       _jmp_addr_0x0054c2d0\n"                          // 0x0054c1ac    0f851e010000
    "                         cmp                byte ptr [data_bytes + 0x380ac1], bl\n"          // 0x0054c1b2    381dc16ad400
    "                         {disp32} jne       _jmp_addr_0x0054c2d0\n"                          // 0x0054c1b8    0f8512010000
    "                         push               edi\n"                                           // 0x0054c1be    57
    "                         call               _stop_draw_sprite_to_screen__Fv\n"               // 0x0054c1bf    e82c580f00
    "                         {disp32} mov       edi, dword ptr [data_bytes + 0x30a6e8]\n"        // 0x0054c1c4    8b3de806cd00
    "                         cmp.s              edi, ebx\n"                                      // 0x0054c1ca    3bfb
    "                         {disp8} je         _jmp_addr_0x0054c1eb\n"                          // 0x0054c1cc    741d
    "                         {disp32} mov       ecx, dword ptr [edi + 0x0000e92c]\n"             // 0x0054c1ce    8b8f2ce90000
    "                         {disp8} mov        dword ptr [ecx + 0x08], ebx\n"                   // 0x0054c1d4    895908
    "                         {disp32} mov       ecx, dword ptr [edi + 0x0000e928]\n"             // 0x0054c1d7    8b8f28e90000
    "                         call               @Release__11LH3DTextureFv@4\n"                   // 0x0054c1dd    e85ebb2e00
    "                         push               edi\n"                                           // 0x0054c1e2    57
    "                         call               ___dl__FPv\n"                                    // 0x0054c1e3    e8b02c2600
    "                         add                esp, 0x04\n"                                     // 0x0054c1e8    83c404
    "_jmp_addr_0x0054c1eb:    {disp32} mov       edi, dword ptr [rdata_bytes + 0x1c4]\n"          // 0x0054c1eb    8b3dc4918a00
    "                         {disp32} mov       dword ptr [data_bytes + 0x30a6e8], ebx\n"        // 0x0054c1f1    891de806cd00
    "                         call               edi\n"                                           // 0x0054c1f7    ffd7
    "                         {disp32} fld       dword ptr [esi + 0x00205e70]\n"                  // 0x0054c1f9    d986705e2000
    "                         {disp32} fcomp     dword ptr [_rdata_float0p0]     \n"              // 0x0054c1ff    d81d98a38a00
    "                         {disp32} mov       dword ptr [esi + 0x00205e68], eax\n"             // 0x0054c205    8986685e2000
    "                         {disp32} mov       dword ptr [esi + 0x00205e6c], ebx\n"             // 0x0054c20b    899e6c5e2000
    "                         fnstsw             ax\n"                                            // 0x0054c211    dfe0
    "                         test               ah, 0x40\n"                                      // 0x0054c213    f6c440
    "                         {disp8} jne        _jmp_addr_0x0054c269\n"                          // 0x0054c216    7551
    "                         {disp32} mov       edx, dword ptr [esi + 0x00205e70]\n"             // 0x0054c218    8b96705e2000
    "                         {disp32} mov       dword ptr [esi + 0x00205e74], edx\n"             // 0x0054c21e    8996745e2000
    "                         call               edi\n"                                           // 0x0054c224    ffd7
    "                         sub                eax, dword ptr [esi + 0x00205e68]\n"             // 0x0054c226    2b86685e2000
    "                         {disp8} mov        dword ptr [esp + 0x0c], eax\n"                   // 0x0054c22c    8944240c
    "                         {disp32} mov       eax, dword ptr [esi + 0x00205e6c]\n"             // 0x0054c230    8b866c5e2000
    "                         {disp8} mov        dword ptr [esp + 0x10], ebx\n"                   // 0x0054c236    895c2410
    "                         {disp8} fild       qword ptr [esp + 0x0c]\n"                        // 0x0054c23a    df6c240c
    "                         {disp8} mov        dword ptr [esp + 0x0c], eax\n"                   // 0x0054c23e    8944240c
    "                         {disp8} mov        dword ptr [esp + 0x10], ebx\n"                   // 0x0054c242    895c2410
    "                         {disp32} fmul      dword ptr [esi + 0x00205e70]\n"                  // 0x0054c246    d88e705e2000
    "                         {disp8} fiadd      dword ptr [esp + 0x0c]\n"                        // 0x0054c24c    da44240c
    "                         call               _jmp_addr_0x007a1400\n"                          // 0x0054c250    e8ab512500
    "                         {disp32} mov       dword ptr [esi + 0x00205e6c], eax\n"             // 0x0054c255    89866c5e2000
    "                         call               edi\n"                                           // 0x0054c25b    ffd7
    "                         {disp32} mov       dword ptr [esi + 0x00205e68], eax\n"             // 0x0054c25d    8986685e2000
    "                         {disp32} mov       dword ptr [esi + 0x00205e70], ebx\n"             // 0x0054c263    899e705e2000
    "_jmp_addr_0x0054c269:    {disp32} mov       ecx, dword ptr [esi + 0x00205e74]\n"             // 0x0054c269    8b8e745e2000
    "                         {disp32} mov       dword ptr [esi + 0x00205e70], 0x3727c5ac\n"      // 0x0054c26f    c786705e2000acc52737
    "                         {disp8} mov        dword ptr [esp + 0x0c], ecx\n"                   // 0x0054c279    894c240c
    "                         call               edi\n"                                           // 0x0054c27d    ffd7
    "                         {disp32} mov       ecx, dword ptr [esi + 0x00205e68]\n"             // 0x0054c27f    8b8e685e2000
    "                         {disp32} mov       edx, dword ptr [esi + 0x00205e6c]\n"             // 0x0054c285    8b966c5e2000
    "                         sub.s              eax, ecx\n"                                      // 0x0054c28b    2bc1
    "                         {disp8} mov        dword ptr [esp + 0x14], eax\n"                   // 0x0054c28d    89442414
    "                         {disp8} mov        dword ptr [esp + 0x18], ebx\n"                   // 0x0054c291    895c2418
    "                         {disp8} fild       qword ptr [esp + 0x14]\n"                        // 0x0054c295    df6c2414
    "                         {disp8} mov        dword ptr [esp + 0x14], edx\n"                   // 0x0054c299    89542414
    "                         {disp8} mov        dword ptr [esp + 0x18], ebx\n"                   // 0x0054c29d    895c2418
    "                         {disp32} fmul      dword ptr [esi + 0x00205e70]\n"                  // 0x0054c2a1    d88e705e2000
    "                         {disp8} fiadd      dword ptr [esp + 0x14]\n"                        // 0x0054c2a7    da442414
    "                         call               _jmp_addr_0x007a1400\n"                          // 0x0054c2ab    e850512500
    "                         {disp32} mov       dword ptr [esi + 0x00205e6c], eax\n"             // 0x0054c2b0    89866c5e2000
    "                         call               edi\n"                                           // 0x0054c2b6    ffd7
    "                         {disp32} mov       dword ptr [esi + 0x00205e68], eax\n"             // 0x0054c2b8    8986685e2000
    "                         {disp8} mov        eax, dword ptr [esp + 0x0c]\n"                   // 0x0054c2be    8b44240c
    "                         mov.s              ecx, esi\n"                                      // 0x0054c2c2    8bce
    "                         {disp32} mov       dword ptr [esi + 0x00205e70], eax\n"             // 0x0054c2c4    8986705e2000
    "                         call               @Loop__5GGameFv@4\n"                             // 0x0054c2ca    e8510c0000
    "                         pop                edi\n"                                           // 0x0054c2cf    5f
    "_jmp_addr_0x0054c2d0:    pop                esi\n"                                           // 0x0054c2d0    5e
    "                         pop                ebx\n"                                           // 0x0054c2d1    5b
    "                         add                esp, 0x10\n"                                     // 0x0054c2d2    83c410
  );
}

void __fastcall FUN_0054c2e0(struct GGame* this) {
  __asm__(
    "sub                esp, 0x08\n"                                     // 0x0054c2e0    83ec08
    "push               esi\n"                                           // 0x0054c2e3    56
    "mov.s              esi, ecx\n"                                      // 0x0054c2e4    8bf1
    "call               dword ptr [rdata_bytes + 0x1c4]\n"               // 0x0054c2e6    ff15c4918a00
    "sub                eax, dword ptr [data_bytes + 0x30dc24]\n"        // 0x0054c2ec    2b05243ccd00
    "{disp32} mov       ecx, dword ptr [data_bytes + 0x30dc28]\n"        // 0x0054c2f2    8b0d283ccd00
    "{disp8} mov        dword ptr [esp + 0x04], eax\n"                   // 0x0054c2f8    89442404
    "xor.s              eax, eax\n"                                      // 0x0054c2fc    33c0
    "{disp8} mov        dword ptr [esp + 0x08], eax\n"                   // 0x0054c2fe    89442408
    "{disp8} fild       qword ptr [esp + 0x04]\n"                        // 0x0054c302    df6c2404
    "{disp8} mov        dword ptr [esp + 0x04], ecx\n"                   // 0x0054c306    894c2404
    "{disp8} mov        dword ptr [esp + 0x08], eax\n"                   // 0x0054c30a    89442408
    "{disp32} fmul      dword ptr [data_bytes + 0x30dc2c]\n"             // 0x0054c30e    d80d2c3ccd00
    "{disp8} fiadd      dword ptr [esp + 0x04]\n"                        // 0x0054c314    da442404
    "call               _jmp_addr_0x007a1400\n"                          // 0x0054c318    e8e3502500
    "{disp32} mov       dword ptr [esi + 0x00205d3c], eax\n"             // 0x0054c31d    89863c5d2000
    "pop                esi\n"                                           // 0x0054c323    5e
    "add                esp, 0x08\n"                                     // 0x0054c324    83c408
  );
}

void __fastcall Delete__5GGameFv(struct GGame* this) {
}