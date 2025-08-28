#include "GameThingWithPos.h"


struct MapCoords* __fastcall GetArrivePos__16GameThingWithPosFv(struct GameThingWithPos* this, const void* edx, struct MapCoords* param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00405260    8b442404
    asm("add                ecx, 0x14");                                     // 0x00405264    83c114
    asm("push               esi");                                           // 0x00405267    56
    asm("mov                esi, dword ptr [ecx]");                          // 0x00405268    8b31
    asm("mov.s              edx, eax");                                      // 0x0040526a    8bd0
    asm("mov                dword ptr [edx], esi");                          // 0x0040526c    8932
    asm("{disp8} mov        esi, dword ptr [ecx + 0x04]");                   // 0x0040526e    8b7104
    asm("{disp8} mov        dword ptr [edx + 0x04], esi");                   // 0x00405271    897204
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x08]");                   // 0x00405274    8b4908
    asm("{disp8} mov        dword ptr [edx + 0x08], ecx");                   // 0x00405277    894a08
    asm("pop                esi");                                           // 0x0040527a    5e
    asm("ret                0x0004");                                        // 0x0040527b    c20400
    __builtin_unreachable();
}

uint32_t __fastcall GetCreatureBeliefType__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0x15;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetOrigin__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

float __fastcall GetLife__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x004052a0    d90590a38a00
    asm("ret");                                                              // 0x004052a6    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsMoving__16GameThingWithPosCFv(const struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool __fastcall IsObjectInMap__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    asm("xor.s              eax, eax");                                      // 0x004052c0    33c0
    asm("{disp8} mov        al, byte ptr [ecx + 0x24]");                     // 0x004052c2    8a4124
    asm("and                eax, 0x01");                                     // 0x004052c5    83e001
    asm("ret");                                                              // 0x004052c8    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsDrowning__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsCastShadowAtNight__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

void __fastcall CleanupWhenDeleted__16GameThingWithPosFi(struct GameThingWithPos* this, const void* edx, int param_1)
{
    return;
}

float __fastcall GetImpressiveValue__16GameThingWithPosFP6LivingP8Reaction(struct GameThingWithPos* this, const void* edx, struct Living* param_1, struct Reaction* param_2)
{
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x00405300    d90598a38a00
    asm("ret                0x0008");                                        // 0x00405306    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsAbode__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsBuildingMaterial__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsSuitableForCreatureAction__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeEatenByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeAttackedByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeFrighteningToCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeHelpedByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBePlayedWithByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeImpressedByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeInspectedByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBePoodUponByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeSleptNextToByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBePickedUpByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeStrokedByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeSetOnFire__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeStompedOnByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeThrownByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBePutInAStoragePit__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeDestroyedByStoning__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeExaminedByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsBeingBuilt__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall NeedsRepair__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsOnFire__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBePutInFoodPile__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBePutInWoodPile__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeBroughtBackToCitadel__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBePoodOn__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsBuildingWhichIsBeingBuilt__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeKickedByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

uint32_t __fastcall GetCreatureMimicType__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0xa;
}

float __fastcall GetHowMuchCreatureWantsToLookAtMe__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x004054f0    d90598a38a00
    asm("ret");                                                              // 0x004054f6    c3
    __builtin_unreachable();
}

float __fastcall GetHeight__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x00405500    d90598a38a00
    asm("ret");                                                              // 0x00405506    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall SetInScript__16GameThingWithPosFi(struct GameThingWithPos* this, const void* edx, int32_t param_1)
{
    asm("xor.s              eax, eax");                                      // 0x00405510    33c0
    asm("{disp8} mov        al, byte ptr [esp + 0x04]");                     // 0x00405512    8a442404
    asm("xor.s              edx, edx");                                      // 0x00405516    33d2
    asm("{disp8} mov        dx, word ptr [ecx + 0x24]");                     // 0x00405518    668b5124
    asm("and                eax, 0x01");                                     // 0x0040551c    83e001
    asm("shl                eax, 9");                                        // 0x0040551f    c1e009
    asm("and                edx, 0x0000fdff");                               // 0x00405522    81e2fffd0000
    asm("or.s               eax, edx");                                      // 0x00405528    0bc2
    asm("{disp8} mov        word ptr [ecx + 0x24], ax");                     // 0x0040552a    66894124
    asm("ret                0x0004");                                        // 0x0040552e    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsHouse__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsObject__16GameThingWithPosCFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
enum HELP_TEXT __fastcall GetQueryFirstEnumText__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
enum HELP_TEXT __fastcall GetQueryLastEnumText__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}
