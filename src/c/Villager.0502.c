#include "Villager.h"

extern const char debug_text_Villager[10];

__attribute__((XOR32rr_REV))
struct Villager* __fastcall __ct__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                            // 0x0055c8a0    56
    asm("push               edi");                                            // 0x0055c8a1    57
    asm("mov.s              esi, ecx");                                       // 0x0055c8a2    8bf1
    asm("call               ??0MobileWallHug@@QAE@XZ");                       // 0x0055c8a4    e8e77ff1ff
    asm("{disp32} lea       ecx, dword ptr [esi + 0x0000008c]");              // 0x0055c8a9    8d8e8c000000
    asm("call               ??0LivingAction@@QAE@XZ");                        // 0x0055c8af    e8bc030900
    asm("xor.s              edi, edi");                                       // 0x0055c8b4    33ff
    asm("{disp32} mov       dword ptr [esi + 0x00000094], edi");              // 0x0055c8b6    89be94000000
    asm("{disp32} mov       dword ptr [esi + 0x00000098], edi");              // 0x0055c8bc    89be98000000
    asm("{disp32} mov       dword ptr [esi + 0x000000a4], edi");              // 0x0055c8c2    89bea4000000
    asm("{disp32} mov       dword ptr [esi + 0x000000b8], edi");              // 0x0055c8c8    89beb8000000
    asm("{disp32} mov       dword ptr [esi + 0x000000bc], edi");              // 0x0055c8ce    89bebc000000
    asm("{disp32} mov       dword ptr [esi + 0x000000d8], edi");              // 0x0055c8d4    89bed8000000
    asm("mov.s              ecx, esi");                                       // 0x0055c8da    8bce
    asm("mov                dword ptr [esi], 0x008cd394");                    // 0x0055c8dc    c70694d38c00
    asm("call               ?SetToZero@Living@@QAEXXZ");                      // 0x0055c8e2    e849f70800
    asm("{disp32} mov       dword ptr [esi + 0x000000e4], edi");              // 0x0055c8e7    89bee4000000
    asm("{disp32} mov       dword ptr [esi + 0x000000fc], edi");              // 0x0055c8ed    89befc000000
    asm("{disp32} mov       dword ptr [esi + 0x0000010c], edi");              // 0x0055c8f3    89be0c010000
    asm("{disp32} mov       dword ptr [esi + 0x00000110], edi");              // 0x0055c8f9    89be10010000
    asm("{disp32} mov       dword ptr [esi + 0x0000010c], edi");              // 0x0055c8ff    89be0c010000
    asm("{disp32} mov       dword ptr [esi + 0x00000110], edi");              // 0x0055c905    89be10010000
    asm("{disp32} mov       dword ptr [esi + 0x00000110], edi");              // 0x0055c90b    89be10010000
    asm("{disp32} mov       dword ptr [esi + 0x00000114], edi");              // 0x0055c911    89be14010000
    asm("{disp32} mov       dword ptr [esi + 0x0000010c], edi");              // 0x0055c917    89be0c010000
    asm("{disp32} mov       dword ptr [esi + 0x00000110], edi");              // 0x0055c91d    89be10010000
    asm("{disp32} mov       dword ptr [esi + 0x00000118], edi");              // 0x0055c923    89be18010000
    asm("{disp32} mov       dword ptr [esi + 0x0000011c], edi");              // 0x0055c929    89be1c010000
    asm("{disp32} mov       dword ptr [esi + 0x0000011c], edi");              // 0x0055c92f    89be1c010000
    asm("{disp32} mov       dword ptr [esi + 0x00000120], edi");              // 0x0055c935    89be20010000
    asm("{disp32} mov       dword ptr [esi + 0x00000118], edi");              // 0x0055c93b    89be18010000
    asm("{disp32} mov       dword ptr [esi + 0x0000011c], edi");              // 0x0055c941    89be1c010000
    asm("{disp32} mov       dword ptr [esi + 0x00000120], edi");              // 0x0055c947    89be20010000
    asm("{disp32} mov       dword ptr [esi + 0x00000124], edi");              // 0x0055c94d    89be24010000
    asm("{disp32} mov       dword ptr [esi + 0x0000011c], edi");              // 0x0055c953    89be1c010000
    asm("mov.s              ecx, esi");                                       // 0x0055c959    8bce
    asm("mov                dword ptr [esi], 0x008f7960");                    // 0x0055c95b    c70660798f00
    asm("call               ?SetToZero@Villager@@QAEXXZ");                    // 0x0055c961    e8ba311f00
    asm("pop                edi");                                            // 0x0055c966    5f
    asm("mov.s              eax, esi");                                       // 0x0055c967    8bc6
    asm("pop                esi");                                            // 0x0055c969    5e
    asm("ret");                                                               // 0x0055c96a    c3
    asm("call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9");                           // 0x0055c96b    e8094feaff
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsChild__8VillagerFv(struct Living* this)
{
    asm("xor.s              eax, eax");                                       // 0x0055c970    33c0
    asm("{disp32} mov       al, byte ptr [ecx + 0x000000e0]");                // 0x0055c972    8a81e0000000
    asm("shr                eax, 3");                                         // 0x0055c978    c1e803
    asm("and                eax, 0x01");                                      // 0x0055c97b    83e001
    asm("ret");                                                               // 0x0055c97e    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsFoodSpeedUp__8VillagerFv(struct Living* this)
{
    asm("{disp32} mov       dl, byte ptr [ecx + 0x000000f0]");                // 0x0055c980    8a91f0000000
    asm("xor.s              eax, eax");                                       // 0x0055c986    33c0
    asm("test               dl, dl");                                         // 0x0055c988    84d2
    asm("setne              al");                                             // 0x0055c98a    0f95c0
    asm("ret");                                                               // 0x0055c98d    c3
    __builtin_unreachable();
}

bool32_t __fastcall IsABeliever__8VillagerFv(struct Object* this)
{
    return true;
}

bool __fastcall IsTouching_3__8VillagerCFP6Objectf(const struct Object* this, const void* edx, struct Object* param_1, float param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                    // 0x0055c9a0    8b442408
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                    // 0x0055c9a4    8b542404
    asm("push               eax");                                            // 0x0055c9a8    50
    asm("push               edx");                                            // 0x0055c9a9    52
    asm("call               ?IsTouching@Object@@UAE_NPAV1@M@Z");              // 0x0055c9aa    e851b40d00
    asm("ret                0x0008");                                         // 0x0055c9af    c20800
    __builtin_unreachable();
}

int __fastcall GetMesh__8VillagerCFv(const struct Object* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                    // 0x0055c9c0    8b4128
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000214]");              // 0x0055c9c3    8b8014020000
    asm("ret");                                                               // 0x0055c9c9    c3
    asm("call               dword ptr [__imp__BinkService@4]");               // 0x0055c9ca    ff1534998a00
    __builtin_unreachable();
}

int __fastcall GetDetailMesh__8VillagerFi(struct Object* this, const void* edx, int param_1)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                    // 0x0055c9d0    8b4128
    asm("{disp8} mov        ecx, dword ptr [esp + 0x04]");                    // 0x0055c9d3    8b4c2404
    asm("{disp32} mov       eax, dword ptr [eax + ecx * 0x4 + 0x00000210]");  // 0x0055c9d7    8b848810020000
    asm("ret                0x0004");                                         // 0x0055c9de    c20400
    __builtin_unreachable();
}

bool __fastcall IsScriptState__8VillagerCF15VILLAGER_STATES(const struct Living* this, const void* edx, enum VILLAGER_STATES param_1)
{
    asm("{disp8} mov        ecx, dword ptr [esp + 0x04]");                    // 0x0055c9f0    8b4c2404
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");               // 0x0055c9f4    8d0449
    asm("shl                eax, 3");                                         // 0x0055c9f7    c1e003
    asm("sub.s              eax, ecx");                                       // 0x0055c9fa    2bc1
    asm("lea                eax, dword ptr [eax + eax * 0x2]");               // 0x0055c9fc    8d0440
    asm("{disp32} mov       eax, dword ptr [eax * 0x4 + 0x00db9e90]");        // 0x0055c9ff    8b0485909edb00
    asm("ret                0x0004");                                         // 0x0055ca06    c20400
    __builtin_unreachable();
}

bool __fastcall IsScriptInterruptableState__8VillagerCF15VILLAGER_STATES(const struct Living* this, const void* edx, enum VILLAGER_STATES param_1)
{
    asm("{disp8} mov        ecx, dword ptr [esp + 0x04]");                    // 0x0055ca10    8b4c2404
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");               // 0x0055ca14    8d0449
    asm("shl                eax, 3");                                         // 0x0055ca17    c1e003
    asm("sub.s              eax, ecx");                                       // 0x0055ca1a    2bc1
    asm("lea                eax, dword ptr [eax + eax * 0x2]");               // 0x0055ca1c    8d0440
    asm("{disp32} mov       eax, dword ptr [eax * 0x4 + 0x00db9e94]");        // 0x0055ca1f    8b0485949edb00
    asm("ret                0x0004");                                         // 0x0055ca26    c20400
    __builtin_unreachable();
}

uint32_t __fastcall GetTastiness__8VillagerFv(struct Object* this)
{
    return 2;
}

__attribute__((XOR32rr_REV))
const char* __fastcall GetVillagerName__8VillagerFv(struct Villager* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool __fastcall CanBePickedUp__8VillagerFv(struct Object* this)
{
    asm("test               byte ptr [ecx + 0x000000e0], 0x04");              // 0x0055ca50    f681e000000004
    asm("{disp8} je         _jmp_addr_0x0055ca5c");                           // 0x0055ca57    7403
    asm("xor.s              eax, eax");                                       // 0x0055ca59    33c0
    asm("ret");                                                               // 0x0055ca5b    c3
    asm("_jmp_addr_0x0055ca5c:");
    asm("xor.s              eax, eax");                                       // 0x0055ca5c    33c0
    asm("{disp8} mov        ax, word ptr [ecx + 0x24]");                      // 0x0055ca5e    668b4124
    asm("not                ax");                                             // 0x0055ca62    66f7d0
    asm("shr                eax, 0xd");                                       // 0x0055ca65    c1e80d
    asm("and                eax, 0x01");                                      // 0x0055ca68    83e001
    asm("ret");                                                               // 0x0055ca6b    c3
    __builtin_unreachable();
}

uint32_t __fastcall GetCreatureBeliefType__8VillagerFv(struct GameThingWithPos* this)
{
    return 6;
}

uint32_t __fastcall CanBeImpressedByCreature__8VillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1)
{
    asm("mov                eax, dword ptr [ecx]");                           // 0x0055ca80    8b01
    asm("call               dword ptr [eax + 0x978]");                        // 0x0055ca82    ff9078090000
    asm("neg                eax");                                            // 0x0055ca88    f7d8
    asm("sbb.s              eax, eax");                                       // 0x0055ca8a    1bc0
    asm("inc                eax");                                            // 0x0055ca8c    40
    asm("ret                0x0004");                                         // 0x0055ca8d    c20400
    __builtin_unreachable();
}

uint32_t __fastcall CanReceiveGifts__8VillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1)
{
    return 1;
}

uint32_t __fastcall CanBeHelpedByCreature__8VillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1)
{
    asm("mov                eax, dword ptr [ecx]");                           // 0x0055caa0    8b01
    asm("call               dword ptr [eax + 0x628]");                        // 0x0055caa2    ff9028060000
    asm("ret                0x0004");                                         // 0x0055caa8    c20400
    asm("call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9");                           // 0x0055caab    e8c94deaff
    __builtin_unreachable();
}

uint32_t __fastcall IsVillager__8VillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1)
{
    return 1;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall IsMaleVillager__8VillagerFv(struct GameThingWithPos* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                    // 0x0055cac0    8b4128
    asm("{disp32} mov       edx, dword ptr [eax + 0x000001f8]");              // 0x0055cac3    8b90f8010000
    asm("xor.s              ecx, ecx");                                       // 0x0055cac9    33c9
    asm("test               edx, edx");                                       // 0x0055cacb    85d2
    asm("sete               cl");                                             // 0x0055cacd    0f94c1
    asm("mov.s              eax, ecx");                                       // 0x0055cad0    8bc1
    asm("ret");                                                               // 0x0055cad2    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall IsFemaleVillager__8VillagerFv(struct GameThingWithPos* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                    // 0x0055cae0    8b4128
    asm("{disp32} mov       edx, dword ptr [eax + 0x000001f8]");              // 0x0055cae3    8b90f8010000
    asm("xor.s              ecx, ecx");                                       // 0x0055cae9    33c9
    asm("cmp                edx, 0x01");                                      // 0x0055caeb    83fa01
    asm("sete               cl");                                             // 0x0055caee    0f94c1
    asm("mov.s              eax, ecx");                                       // 0x0055caf1    8bc1
    asm("ret");                                                               // 0x0055caf3    c3
    __builtin_unreachable();
}

uint32_t __fastcall IsAChild__8VillagerFv(struct GameThingWithPos* this)
{
    asm("mov                eax, dword ptr [ecx]");                           // 0x0055cb00    8b01
    asm("call               dword ptr [eax + 0xaf8]");                        // 0x0055cb02    ff90f80a0000
    asm("dec                eax");                                            // 0x0055cb08    48
    asm("neg                eax");                                            // 0x0055cb09    f7d8
    asm("sbb.s              eax, eax");                                       // 0x0055cb0b    1bc0
    asm("inc                eax");                                            // 0x0055cb0d    40
    asm("ret");                                                               // 0x0055cb0e    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
enum DEATH_REASON __fastcall GetDeathReason__8VillagerFv(struct GameThingWithPos* this)
{
    asm("xor.s              eax, eax");                                       // 0x0055cb10    33c0
    asm("{disp32} mov       al, byte ptr [ecx + 0x00000118]");                // 0x0055cb12    8a8118010000
    asm("ret");                                                               // 0x0055cb18    c3
    __builtin_unreachable();
}

uint32_t __fastcall GetSaveType__8VillagerFv(struct GameThing* this)
{
    return 6;
}

char* __fastcall GetDebugText__8VillagerFv(struct GameThing* this)
{
    // return (char*)debug_text_Villager;
    asm("mov  eax, 0x00bed194");                                              // 0x0055cb30    b894d1be00
    asm("ret");                                                               // 0x0055cb35    c3
    __builtin_unreachable();
}

void __fastcall __dt__8VillagerFUi(struct Base* this, const void* edx, uint32_t param_1)
{
    asm("push               esi");                                            // 0x0055cb40    56
    asm("mov.s              esi, ecx");                                       // 0x0055cb41    8bf1
    asm("call               ??1Villager@@UAE@XZ");                            // 0x0055cb43    e878301f00
    asm("test               byte ptr [esp + 0x08], 0x01");                    // 0x0055cb48    f644240801
    asm("{disp8} je         _jmp_addr_0x0055cb5d");                           // 0x0055cb4d    740e
    asm("push               0x00000130");                                     // 0x0055cb4f    6830010000
    asm("push               esi");                                            // 0x0055cb54    56
    asm("call               ??3Base@@SAXPAXK@Z");                           // 0x0055cb55    e8169eedff
    asm("add                esp, 0x08");                                      // 0x0055cb5a    83c408
    asm("_jmp_addr_0x0055cb5d:");
    asm("mov.s              eax, esi");                                       // 0x0055cb5d    8bc6
    asm("pop                esi");                                            // 0x0055cb5f    5e
    asm("ret                0x0004");                                         // 0x0055cb60    c20400
    __builtin_unreachable();
}
