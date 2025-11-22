#include "AbodeInfo.h"

void __cdecl jmp_addr_0x00401050(void);
void __cdecl jmp_addr_0x00401080(void);
void __cdecl jmp_addr_0x00401130(void);

void __cdecl globl_ct_0x00401040(void)
{
    jmp_addr_0x00401050();
}

__attribute__((noinline))
void __cdecl jmp_addr_0x00401050(void)
{
    __asm__("{disp32} fld  dword ptr [_abode_info_seconds_in_day_0x008a99e4]");  // 0x00401050    d905e4998a00
    __asm__("{disp32} fmul dword ptr [_abode_info_num_days_in_year_0x008a99e0]");// 0x00401056    d80de0998a00
    __asm__("{disp32} fstp dword ptr [_abode_info_seconds_in_year_0x00c3c68c]"); // 0x0040105c    d91d8cc6c300
}

void __cdecl globl_ct_0x00401070(void)
{
    jmp_addr_0x00401080();
}

__attribute__((noinline))
void __cdecl jmp_addr_0x00401080(void)
{
    __asm__("{disp32} fld      dword ptr [_abode_info_float_0x008a99e8]");  // 0x00401050    d905e4998a00
    __asm__("{disp32} fmul     dword ptr [_abode_info_float_0x008a99f0]");  // 0x00401056    d80de0998a00
    __asm__("{disp32} fstp     dword ptr [_abode_info_float_0x00c3c688]");  // 0x0040105c    d91d8cc6c300
}

void __cdecl jmp_addr_0x004010a0(void)
{
    asm("push              ebx");                                           // 0x004010a0    53
    asm("{disp8} mov       bl, byte ptr [esp + 0x08]");                     // 0x004010a1    8a5c2408
    asm("test              bl, 0x02");                                      // 0x004010a5    f6c302
    asm("push              esi");                                           // 0x004010a8    56
    asm("mov.s             esi, ecx");                                      // 0x004010a9    8bf1
    asm("{disp8} je        _jmp_addr_0x004010f1");                          // 0x004010ab    7444
    asm("{disp8} mov       eax, dword ptr [esi + -0x04]");                  // 0x004010ad    8b46fc
    asm("push              edi");                                           // 0x004010b0    57
    asm("{disp8} lea       edi, dword ptr [esi + -0x04]");                  // 0x004010b1    8d7efc
    asm("lea               ecx, dword ptr [eax + eax * 0x2]");              // 0x004010b4    8d0c40
    asm("dec               eax");                                           // 0x004010b7    48
    asm("lea               ecx, dword ptr [esi + ecx * 0x4]");              // 0x004010b8    8d0c8e
    asm("{disp8} js        _jmp_addr_0x004010db");                          // 0x004010bb    781e
    asm("push              ebp");                                           // 0x004010bd    55
    asm("{disp8} lea       esi, dword ptr [ecx + 0x08]");                   // 0x004010be    8d7108
    asm("{disp8} lea       ebp, dword ptr [eax + 0x01]");                   // 0x004010c1    8d6801
    asm("_jmp_addr_0x004010c4:");
    asm("{disp8} mov       eax, dword ptr [esi + -0x0c]");                  // 0x004010c4    8b46f4
    asm("sub               esi, 0x0c");                                     // 0x004010c7    83ee0c
    asm("test              eax, eax");                                      // 0x004010ca    85c0
    asm("{disp8} je        _jmp_addr_0x004010d7");                          // 0x004010cc    7409
    asm("push              eax");                                           // 0x004010ce    50
    asm("call               ??3@YAXPAX@Z");                                   // 0x004010cf    e8c4dd3a00
    asm("add               esp, 0x04");                                     // 0x004010d4    83c404
    asm("_jmp_addr_0x004010d7:");
    asm("dec               ebp");                                           // 0x004010d7    4d
    asm("{disp8} jne       _jmp_addr_0x004010c4");                          // 0x004010d8    75ea
    asm("pop               ebp");                                           // 0x004010da    5d
    asm("_jmp_addr_0x004010db:");
    asm("test              bl, 0x01");                                      // 0x004010db    f6c301
    asm("{disp8} je        _jmp_addr_0x004010e9");                          // 0x004010de    7409
    asm("push              edi");                                           // 0x004010e0    57
    asm("call               ??3@YAXPAX@Z");                                   // 0x004010e1    e8b2dd3a00
    asm("add               esp, 0x04");                                     // 0x004010e6    83c404
    asm("_jmp_addr_0x004010e9:");
    asm("mov.s             eax, edi");                                      // 0x004010e9    8bc7
    asm("pop               edi");                                           // 0x004010eb    5f
    asm("pop               esi");                                           // 0x004010ec    5e
    asm("pop               ebx");                                           // 0x004010ed    5b
    asm("ret               0x0004");                                        // 0x004010ee    c20400
    asm("_jmp_addr_0x004010f1:");
    asm("{disp8} mov       eax, dword ptr [esi + 0x08]");                   // 0x004010f1    8b4608
    asm("test              eax, eax");                                      // 0x004010f4    85c0
    asm("{disp8} je        _jmp_addr_0x00401101");                          // 0x004010f6    7409
    asm("push              eax");                                           // 0x004010f8    50
    asm("call               ??3@YAXPAX@Z");                                   // 0x004010f9    e89add3a00
    asm("add               esp, 0x04");                                     // 0x004010fe    83c404
    asm("_jmp_addr_0x00401101:");
    asm("test              bl, 0x01");                                      // 0x00401101    f6c301
    asm("{disp8} je        _jmp_addr_0x0040110f");                          // 0x00401104    7409
    asm("push              esi");                                           // 0x00401106    56
    asm("call               ??3@YAXPAX@Z");                                   // 0x00401107    e88cdd3a00
    asm("add               esp, 0x04");                                     // 0x0040110c    83c404
    asm("_jmp_addr_0x0040110f:");
    asm("mov.s             eax, esi");                                      // 0x0040110f    8bc6
    asm("pop               esi");                                           // 0x00401111    5e
    asm("pop               ebx");                                           // 0x00401112    5b
    asm("ret               0x0004");                                        // 0x00401113    c20400
    __builtin_unreachable();
}

void __cdecl globl_ct_0x00401120(void)
{
    jmp_addr_0x00401130();
}

__attribute__((naked))
void __cdecl jmp_addr_0x00401130(void)
{
    __asm__(
        ".extern _abode_info_float_0x00c3c684\n"
        "{disp32} mov      dword ptr [_abode_info_float_0x00c3c684], 0xffffffff\n" // 0x00401130    c70584c6c300ffffffff
        "ret\n"                                                                    // 0x0040113a    c3
        // SEH Code path ??
        "call              ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9\n"                                 // 0x0040113b    e839070000
    );
}

void __cdecl jmp_addr_0x00401140(void)
{
    __asm__(
        "{disp8} mov       eax, dword ptr [esp + 0x0c]\n"                   // 0x00401140    8b44240c
        "dec               eax\n"                                           // 0x00401144    48
        "{disp8} js        _jmp_addr_0x00401167\n"                          // 0x00401145    7820
        "push              ebx\n"                                           // 0x00401147    53
        "{disp8} mov       ebx, dword ptr [esp + 0x14]\n"                   // 0x00401148    8b5c2414
        "push              ebp\n"                                           // 0x0040114c    55
        "{disp8} mov       ebp, dword ptr [esp + 0x10]\n"                   // 0x0040114d    8b6c2410
        "push              esi\n"                                           // 0x00401151    56
        "{disp8} mov       esi, dword ptr [esp + 0x10]\n"                   // 0x00401152    8b742410
        "push              edi\n"                                           // 0x00401156    57
        "{disp8} lea       edi, dword ptr [eax + 0x01]\n"                   // 0x00401157    8d7801
        "_jmp_addr_0x0040115a:\n"
        "mov.s             ecx, esi\n"                                      // 0x0040115a    8bce
        "call              ebx\n"                                           // 0x0040115c    ffd3
        "add.s             esi, ebp\n"                                      // 0x0040115e    03f5
        "dec               edi\n"                                           // 0x00401160    4f
        "{disp8} jne       _jmp_addr_0x0040115a\n"                          // 0x00401161    75f7
        "pop               edi\n"                                           // 0x00401163    5f
        "pop               esi\n"                                           // 0x00401164    5e
        "pop               ebp\n"                                           // 0x00401165    5d
        "pop               ebx\n"                                           // 0x00401166    5b
        // SEH?
        "_jmp_addr_0x00401167:\n"
        "ret               0x0010\n"                                        // 0x00401167    c21000
        "call              dword ptr [__imp__waveInClose@4]\n"              // 0x0040116a    ff15a8988a00
    );
    __builtin_unreachable();
}
