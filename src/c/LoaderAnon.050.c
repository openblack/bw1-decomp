#include "LoaderAnon.h"

void LoadIt__FP10LoaderAnonPcP23GVillagerStateTableInfoUlbP6LHFile(struct LoaderAnon* loader, char* info_str, struct GVillagerStateTableInfo* info_array, size_t count, bool write, struct LHFile* file)
{
    asm("push               ecx                                     ");  // 0x00433f00    51
    asm("{disp8} mov        al, byte ptr [esp + 0x18]               ");  // 0x00433f01    8a442418
    asm("test               al, al                                  ");  // 0x00433f05    84c0
    asm("push               ebx                                     ");  // 0x00433f07    53
    asm("push               ebp                                     ");  // 0x00433f08    55
    asm("push               esi                                     ");  // 0x00433f09    56
    asm("push               edi                                     ");  // 0x00433f0a    57
    asm("{disp8} je         _jmp_addr_0x00433f7b                    ");  // 0x00433f0b    746e
    asm("{disp8} mov        eax, dword ptr [esp + 0x24]             ");  // 0x00433f0d    8b442424
    asm("test               eax, eax                                ");  // 0x00433f11    85c0
    asm("{disp32} jbe       _jmp_addr_0x00434036                    ");  // 0x00433f13    0f861d010000
    asm("{disp8} mov        ebp, dword ptr [esp + 0x20]             ");  // 0x00433f19    8b6c2420
    asm("{disp8} mov        dword ptr [esp + 0x28], eax             ");  // 0x00433f1d    89442428
    asm("_jmp_addr_0x00433f21:                                      ");
    asm("push               0x17                                    ");  // 0x00433f21    6a17
    asm("push               0x009cce48                              ");  // 0x00433f23    6848ce9c00
    asm("push               0x00000104                              ");  // 0x00433f28    6804010000
    asm("call               ___nw__FUl                              ");  // 0x00433f2d    e85e783a00
    asm("{disp8} mov        ecx, dword ptr [esp + 0x38]             ");  // 0x00433f32    8b4c2438
    asm("add                esp, 0x0c                               ");  // 0x00433f36    83c40c
    asm("push               -0x1                                    ");  // 0x00433f39    6aff
    asm("mov.s              ebx, eax                                ");  // 0x00433f3b    8bd8
    asm("push               0x00000104                              ");  // 0x00433f3d    6804010000
    asm("push               ebx                                     ");  // 0x00433f42    53
    asm("call               @GetSegmentData__6LHFileFPvUll@20       ");  // 0x00433f43    e8f8a03800
    asm("mov                ecx, 0x00000041                         ");  // 0x00433f48    b941000000
    asm("mov.s              esi, ebx                                ");  // 0x00433f4d    8bf3
    asm("{disp8} lea        edi, dword ptr [ebp + 0x10]             ");  // 0x00433f4f    8d7d10
    asm("push               ebx                                     ");  // 0x00433f52    53
    asm("rep movsd          es:[edi], dword ptr ds:[esi]            ");  // 0x00433f53    f3a5
    asm("call               ??3@YAXPAX@Z                            ");  // 0x00433f55    e83eaf3700
    asm("add                esp, 0x04                               ");  // 0x00433f5a    83c404
    asm("mov.s              ecx, ebp                                ");  // 0x00433f5d    8bcd
    asm("call               ?SetInfoID@GBaseInfo@@QAEXXZ            ");  // 0x00433f5f    e86c2c0000
    asm("{disp8} mov        eax, dword ptr [esp + 0x28]             ");  // 0x00433f64    8b442428
    asm("add                ebp, 0x00000114                         ");  // 0x00433f68    81c514010000
    asm("dec                eax                                     ");  // 0x00433f6e    48
    asm("{disp8} mov        dword ptr [esp + 0x28], eax             ");  // 0x00433f6f    89442428
    asm("{disp8} jne        _jmp_addr_0x00433f21                    ");  // 0x00433f73    75ac
    asm("pop                edi                                     ");  // 0x00433f75    5f
    asm("pop                esi                                     ");  // 0x00433f76    5e
    asm("pop                ebp                                     ");  // 0x00433f77    5d
    asm("pop                ebx                                     ");  // 0x00433f78    5b
    asm("pop                ecx                                     ");  // 0x00433f79    59
    asm("ret                                                        ");  // 0x00433f7a    c3
    asm("_jmp_addr_0x00433f7b:                                      ");
    asm("{disp8} mov        eax, dword ptr [esp + 0x24]             ");  // 0x00433f7b    8b442424
    asm("test               eax, eax                                ");  // 0x00433f7f    85c0
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000      ");  // 0x00433f81    c744241000000000
    asm("{disp32} jbe       _jmp_addr_0x00434036                    ");  // 0x00433f89    0f86a7000000
    asm("{disp8} mov        eax, dword ptr [esp + 0x20]             ");  // 0x00433f8f    8b442420
    asm("{disp8} mov        ebx, dword ptr [esp + 0x18]             ");  // 0x00433f93    8b5c2418
    asm("{disp8} mov        dword ptr [esp + 0x28], eax             ");  // 0x00433f97    89442428
    asm("_jmp_addr_0x00433f9b:                                      ");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]             ");  // 0x00433f9b    8b4c2410
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]             ");  // 0x00433f9f    8b54241c
    asm("{disp32} lea       eax, dword ptr [ebx + 0x00000118]       ");  // 0x00433fa3    8d8318010000
    asm("push               eax                                     ");  // 0x00433fa9    50
    asm("push               ecx                                     ");  // 0x00433faa    51
    asm("push               edx                                     ");  // 0x00433fab    52
    asm("mov.s              ecx, ebx                                ");  // 0x00433fac    8bcb
    asm("{disp32} mov       dword ptr [ebx + 0x00002118], eax       ");  // 0x00433fae    898318210000
    asm("call               _jmp_addr_0x005f3120                    ");  // 0x00433fb4    e867f11b00
    asm("mov.s              ebp, eax                                ");  // 0x00433fb9    8be8
    asm("test               ebp, ebp                                ");  // 0x00433fbb    85ed
    asm("{disp8} je         _jmp_addr_0x00434030                    ");  // 0x00433fbd    7471
    asm("{disp32} mov       eax, dword ptr [ebx + 0x00002118]       ");  // 0x00433fbf    8b8318210000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x2c]             ");  // 0x00433fc5    8b4c242c
    asm("push               0x00000104                              ");  // 0x00433fc9    6804010000
    asm("push               eax                                     ");  // 0x00433fce    50
    asm("call               _jmp_addr_0x007bdfc0                    ");  // 0x00433fcf    e8ec9f3800
    asm("{disp8} mov        edx, dword ptr [esp + 0x28]             ");  // 0x00433fd4    8b542428
    asm("{disp32} mov       esi, dword ptr [ebx + 0x00002118]       ");  // 0x00433fd8    8bb318210000
    asm("{disp8} lea        edi, dword ptr [edx + 0x10]             ");  // 0x00433fde    8d7a10
    asm("mov                ecx, 0x00000041                         ");  // 0x00433fe1    b941000000
    asm("rep movsd          es:[edi], dword ptr ds:[esi]            ");  // 0x00433fe6    f3a5
    asm("add                dword ptr [ebx + 0x00002118], 0x00000104");  // 0x00433fe8    81831821000004010000
    asm("mov.s              ecx, edx                                ");  // 0x00433ff2    8bca
    asm("call               ?SetInfoID@GBaseInfo@@QAEXXZ            ");  // 0x00433ff4    e8d72b0000
    asm("cmp                ebp, 0x00000104                         ");  // 0x00433ff9    81fd04010000
    asm("{disp8} je         _jmp_addr_0x00434007                    ");  // 0x00433fff    7406
    asm("{disp32} inc       dword ptr [ebx + 0x0000211c]            ");  // 0x00434001    ff831c210000
    asm("_jmp_addr_0x00434007:                                      ");
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]             ");  // 0x00434007    8b442410
    asm("{disp8} mov        edx, dword ptr [esp + 0x28]             ");  // 0x0043400b    8b542428
    asm("{disp8} mov        ecx, dword ptr [esp + 0x24]             ");  // 0x0043400f    8b4c2424
    asm("inc                eax                                     ");  // 0x00434013    40
    asm("add                edx, 0x00000114                         ");  // 0x00434014    81c214010000
    asm("cmp.s              eax, ecx                                ");  // 0x0043401a    3bc1
    asm("{disp8} mov        dword ptr [esp + 0x10], eax             ");  // 0x0043401c    89442410
    asm("{disp8} mov        dword ptr [esp + 0x28], edx             ");  // 0x00434020    89542428
    asm("{disp32} jb        _jmp_addr_0x00433f9b                    ");  // 0x00434024    0f8271ffffff
    asm("pop                edi                                     ");  // 0x0043402a    5f
    asm("pop                esi                                     ");  // 0x0043402b    5e
    asm("pop                ebp                                     ");  // 0x0043402c    5d
    asm("pop                ebx                                     ");  // 0x0043402d    5b
    asm("pop                ecx                                     ");  // 0x0043402e    59
    asm("ret                                                        ");  // 0x0043402f    c3
    asm("_jmp_addr_0x00434030:                                      ");
    asm("{disp32} inc       dword ptr [ebx + 0x0000211c]            ");  // 0x00434030    ff831c210000
    asm("_jmp_addr_0x00434036:                                      ");
    asm("pop                edi                                     ");  // 0x00434036    5f
    asm("pop                esi                                     ");  // 0x00434037    5e
    asm("pop                ebp                                     ");  // 0x00434038    5d
    asm("pop                ebx                                     ");  // 0x00434039    5b
    asm("pop                ecx                                     ");  // 0x0043403a    59
}
