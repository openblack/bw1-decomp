#include "GameThingWithPos.h"

const float rdata_float0p0 = 0.0f;                                 // [0x1398] 0x008a9000 + 0x1398 = 0x008aa398
const float rdata_float0p0005 = 0.0005f;                           // [0x139c] 0x008a9000 + 0x139c = 0x008aa39c
const float rdata_float1p05 = 1.05;                                // [0x13a0] 0x008a9000 + 0x13a0 = 0x008aa3a0
const float rdata_float_coord_to_point = 10.0f / ((float)0x10000); // [0x13a4] 0x008a9000 + 0x13a4 = 0x008aa3a4
const float rdata_floatn0p8 = -0.8;                                // [0x13a8] 0x008a9000 + 0x13a8 = 0x008aa3a8
const float rdata_float0p2 = 0.2;                                  // [0x13ac] 0x008a9000 + 0x13ac = 0x008aa3ac
const float rdata_float0p001 = 0.001;                              // [0x13b0] 0x008a9000 + 0x13b0 = 0x008aa3b0
const float rdata_float0p5 = 0.5;                                  // [0x13b4] 0x008a9000 + 0x13b4 = 0x008aa3b4

__attribute__((aligned(8)))
struct RTTITypeDescriptor __RTTITypeDescriptor__16GameThingWithPos = {
    .pVFTable = &__vt__9type_info,
    .spare = 0,
    .name = ".?AVGameThingWithPos@@",
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16GameThingWithPos = {
    .pTypeDescriptor = &__RTTITypeDescriptor__16GameThingWithPos,
    .numContainedBases = 0x00000002,
    .where = {
        .mdisp = 0x00000000,
        .pdisp = 0xFFFFFFFF,
        .vdisp = 0x00000000,
    },
    .attributes = 0x0000000,
};

void __fastcall SetPos__16GameThingWithPosFRC9MapCoords(struct GameThingWithPos* this, const void* edx, const struct MapCoords* param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]           ");  // 0x00401940    8b442404
    asm("mov                edx, dword ptr [eax]                  ");  // 0x00401944    8b10
    asm("add                ecx, 0x14                             ");  // 0x00401946    83c114
    asm("mov                dword ptr [ecx], edx                  ");  // 0x00401949    8911
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]           ");  // 0x0040194b    8b5004
    asm("{disp8} mov        dword ptr [ecx + 0x04], edx           ");  // 0x0040194e    895104
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]           ");  // 0x00401951    8b4008
    asm("{disp8} mov        dword ptr [ecx + 0x08], eax           ");  // 0x00401954    894108
    asm("ret                0x0004                                ");  // 0x00401957    c20400
    asm("call               dword ptr [__imp__BinkCopyToBuffer@28]");  // 0x0040195a    ff1564998a00
    __builtin_unreachable();
}

struct MapCoords* __fastcall GetPos__16GameThingWithPosFv(const struct GameThingWithPos* this, const void* edx, struct MapCoords* param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");              // 0x00401960    8b442404
    asm("add                ecx, 0x14");                                // 0x00401964    83c114
    asm("push               esi");                                      // 0x00401967    56
    asm("mov                esi, dword ptr [ecx]");                     // 0x00401968    8b31
    asm("mov.s              edx, eax");                                 // 0x0040196a    8bd0
    asm("mov                dword ptr [edx], esi");                     // 0x0040196c    8932
    asm("{disp8} mov        esi, dword ptr [ecx + 0x04]");              // 0x0040196e    8b7104
    asm("{disp8} mov        dword ptr [edx + 0x04], esi");              // 0x00401971    897204
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x08]");              // 0x00401974    8b4908
    asm("{disp8} mov        dword ptr [edx + 0x08], ecx");              // 0x00401977    894a08
    asm("pop                esi");                                      // 0x0040197a    5e
    asm("ret                0x0004");                                   // 0x0040197b    c20400
    __builtin_unreachable();
}

void __fastcall PhysicsEditorCreate__16GameThingWithPosFi(struct GameThingWithPos* this, const void* edx, int param_1)
{
    asm("{disp8} mov        dword ptr [ecx + 0x1c], 0x00000000");       // 0x00401980    c7411c00000000
    asm("ret                0x0004");                                   // 0x00401987    c20400
    asm("call               dword ptr [__imp__GetOpenFileNameA@4]");    // 0x0040198a    ff1570998a00
    __builtin_unreachable();
}

uint32_t __fastcall GetCreatureBeliefListType__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 1;
}

__attribute__((XOR32rr_REV))
struct Citadel* __fastcall GetCitadel__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

void __fastcall SetHeight__16GameThingWithPosFf(struct GameThingWithPos* this, const void* edx, float height)
{
    return;
}

void __fastcall SetMaxHeight__16GameThingWithPosFf(struct GameThingWithPos* this, const void* edx, float height)
{
    return;
}

float __fastcall GetMaxHeight__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");              // 0x004019d0    d90598a38a00
    asm("ret");                                                         // 0x004019d6    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsAnimate__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

void __fastcall GetInteractPos__16GameThingWithPosFv(struct GameThingWithPos* this, const void* edx, struct LHPoint* pos)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");              // 0x004019f0    8b442404
    asm("add                ecx, 0x14");                                // 0x004019f4    83c114
    asm("push               esi");                                      // 0x004019f7    56
    asm("mov                esi, dword ptr [ecx]");                     // 0x004019f8    8b31
    asm("mov.s              edx, eax");                                 // 0x004019fa    8bd0
    asm("mov                dword ptr [edx], esi");                     // 0x004019fc    8932
    asm("{disp8} mov        esi, dword ptr [ecx + 0x04]");              // 0x004019fe    8b7104
    asm("{disp8} mov        dword ptr [edx + 0x04], esi");              // 0x00401a01    897204
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x08]");              // 0x00401a04    8b4908
    asm("{disp8} mov        dword ptr [edx + 0x08], ecx");              // 0x00401a07    894a08
    asm("pop                esi");                                      // 0x00401a0a    5e
    asm("ret                0x0004");                                   // 0x00401a0b    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsCannotBePickedUp__16GameThingWithPosCFv(const struct GameThingWithPos* this)
{
    asm("xor.s              eax, eax");                                 // 0x00401a10    33c0
    asm("{disp8} mov        ax, word ptr [ecx + 0x24]");                // 0x00401a12    668b4124
    asm("shr                eax, 0xd");                                 // 0x00401a16    c1e80d
    asm("and                eax, 0x01");                                // 0x00401a19    83e001
    asm("ret");                                                         // 0x00401a1c    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsStompable__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool __fastcall IsAvailableForStateChange__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    asm("xor.s              eax, eax");                                 // 0x00401a30    33c0
    asm("{disp8} mov        al, byte ptr [ecx + 0x24]");                // 0x00401a32    8a4124
    asm("not                al");                                       // 0x00401a35    f6d0
    asm("shr                eax, 2");                                   // 0x00401a37    c1e802
    asm("and                eax, 0x01");                                // 0x00401a3a    83e001
    asm("ret");                                                         // 0x00401a3d    c3
    __builtin_unreachable();
}

float __fastcall GetImpressiveIntensity__16GameThingWithPosF15IMPRESSIVE_TYPE(struct GameThingWithPos* this, const void* edx, enum IMPRESSIVE_TYPE type)
{
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                       // 0x00401a40    d90590a38a00
    asm("ret                0x0004");                                   // 0x00401a46    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsTown__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool __fastcall IsActivityObjectWhichAngerAppliesTo__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool __fastcall IsActivityObjectWhichCompassionAppliesTo__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool __fastcall IsActivityObjectWhichPlayfulnessAppliesTo__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool __fastcall IsTownBelongingToAnotherPlayer__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1)
{
    return 0;
}

bool32_t __fastcall TrueFunction__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 1;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall FalseFunction__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

bool32_t __fastcall IsNotLiving__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 1;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsSuitableForCreatureActivity__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool __fastcall IsTown__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsTownCentre__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsTotemStatue__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsTownDesireFlag__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsRock__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsSpellDispenser__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsMist__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsQueryIcon__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsStreetLight__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsStreetLantern__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsField__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsMagicFireBall__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsCitadelHeart__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsDamaged__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    asm("mov                eax, dword ptr [ecx]");                     // 0x00401bb0    8b01
    asm("call               dword ptr [eax + 0x11c]");                  // 0x00401bb2    ff901c010000
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                       // 0x00401bb8    d81d90a38a00
    asm("fnstsw             ax");                                       // 0x00401bbe    dfe0
    asm("test               ah, 0x01");                                 // 0x00401bc0    f6c401
    asm("{disp8} je         _jmp_addr_0x00401bcb");                     // 0x00401bc3    7406
    asm("mov                eax, 0x00000001");                          // 0x00401bc5    b801000000
    asm("ret");                                                         // 0x00401bca    c3
    asm("_jmp_addr_0x00401bcb:");
    asm("xor.s              eax, eax");                                 // 0x00401bcb    33c0
    asm("ret");                                                         // 0x00401bcd    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeHealedByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeBefriendedByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeKissedByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeGivenToVillager__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeStonedAndEatenByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    asm("push               esi");                                      // 0x00401c10    56
    asm("push               edi");                                      // 0x00401c11    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");              // 0x00401c12    8b7c240c
    asm("mov.s              esi, ecx");                                 // 0x00401c16    8bf1
    asm("mov                eax, dword ptr [esi]");                     // 0x00401c18    8b06
    asm("push               edi");                                      // 0x00401c1a    57
    asm("call               dword ptr [eax + 0x258]");                  // 0x00401c1b    ff9058020000
    asm("test               eax, eax");                                 // 0x00401c21    85c0
    asm("{disp8} je         _jmp_addr_0x00401c3e");                     // 0x00401c23    7419
    asm("mov                edx, dword ptr [esi]");                     // 0x00401c25    8b16
    asm("push               edi");                                      // 0x00401c27    57
    asm("mov.s              ecx, esi");                                 // 0x00401c28    8bce
    asm("call               dword ptr [edx + 0x278]");                  // 0x00401c2a    ff9278020000
    asm("test               eax, eax");                                 // 0x00401c30    85c0
    asm("{disp8} je         _jmp_addr_0x00401c3e");                     // 0x00401c32    740a
    asm("pop                edi");                                      // 0x00401c34    5f
    asm("mov                eax, 0x00000001");                          // 0x00401c35    b801000000
    asm("pop                esi");                                      // 0x00401c3a    5e
    asm("ret                0x0004");                                   // 0x00401c3b    c20400
    asm("_jmp_addr_0x00401c3e:");
    asm("pop                edi");                                      // 0x00401c3e    5f
    asm("xor.s              eax, eax");                                 // 0x00401c3f    33c0
    asm("pop                esi");                                      // 0x00401c41    5e
    asm("ret                0x0004");                                   // 0x00401c42    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeFoughtByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanReceiveGifts__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanActAsAContainer__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

bool32_t __fastcall IsNotOnFire__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");              // 0x00401c80    8b542404
    asm("mov                eax, dword ptr [ecx]");                     // 0x00401c84    8b01
    asm("push               edx");                                      // 0x00401c86    52
    asm("call               dword ptr [eax + 0x298]");                  // 0x00401c87    ff9098020000
    asm("neg                eax");                                      // 0x00401c8d    f7d8
    asm("sbb.s              eax, eax");                                 // 0x00401c8f    1bc0
    asm("inc                eax");                                      // 0x00401c91    40
    asm("ret                0x0004");                                   // 0x00401c92    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeUsedForBuilding__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsMushroom__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeUsedForRepair__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeGivenToTown__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeUsedToHoldWater__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanHaveMagicFoodCastOnMe__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanHaveMagicWoodCastOnMe__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsVillager__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsVillagerFarFromHome__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsVillagerInTownWithoutManyBreeders__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsVillagerNotWorshipping__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsVillagerBelongingToOtherPlayer__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsCow__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsVillagerWhoHasNotBeenImpressedRecently__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsVillagerWhoHasNotBeenDancedWithRecently__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall DoesVillagerBelongToATownWhichIsAlreadyImpressed__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall DoesTotemBelongToATownWhichIsVeryImpressedIndeed__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsDominantCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeDancedWith__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsAggressive__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsStoragePit__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsWorshipSite__16GameThingWithPosFv(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsWorshipSite__16GameThingWithPosFP8Creature(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
struct WorshipSite* __fastcall GetWorshipSite__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsWorkshop__16GameThingWithPosFv(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsStoragePitWithFoodInIt__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsField__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsFieldWhichNeedsWatering__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsFieldWithFoodInIt__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsFieldBelongingToAnotherPlayer__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsStoragePitBelongingToAnotherPlayer__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsStoragePitBelongingToMyPlayer__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall BenefitsFromHavingWaterSprinkledOnIt__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsTree__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsTreeNotTooNearPlannedForest__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsTreeBigEnoughForCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsAFoodPileOutsideStoragePit__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsAWoodPileOutsideStoragePit__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsDoingSomethingInteresting__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeUsedForBuildingHomeByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    asm("push               esi");                                      // 0x00401f10    56
    asm("mov.s              esi, ecx");                                 // 0x00401f11    8bf1
    asm("mov                eax, dword ptr [esi]");                     // 0x00401f13    8b06
    asm("push               edi");                                      // 0x00401f15    57
    asm("call               dword ptr [eax + 0x1f0]");                  // 0x00401f16    ff90f0010000
    asm("test               eax, eax");                                 // 0x00401f1c    85c0
    asm("{disp8} je         _jmp_addr_0x00401f49");                     // 0x00401f1e    7429
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");              // 0x00401f20    8b7c240c
    asm("mov                edx, dword ptr [esi]");                     // 0x00401f24    8b16
    asm("push               edi");                                      // 0x00401f26    57
    asm("mov.s              ecx, esi");                                 // 0x00401f27    8bce
    asm("call               dword ptr [edx + 0x2a0]");                  // 0x00401f29    ff92a0020000
    asm("test               eax, eax");                                 // 0x00401f2f    85c0
    asm("{disp8} je         _jmp_addr_0x00401f49");                     // 0x00401f31    7416
    asm("push               edi");                                      // 0x00401f33    57
    asm("mov.s              ecx, esi");                                 // 0x00401f34    8bce
    asm("call               _jmp_addr_0x004e3ee0");                     // 0x00401f36    e8a51f0e00
    asm("test               eax, eax");                                 // 0x00401f3b    85c0
    asm("{disp8} jne        _jmp_addr_0x00401f49");                     // 0x00401f3d    750a
    asm("pop                edi");                                      // 0x00401f3f    5f
    asm("mov                eax, 0x00000001");                          // 0x00401f40    b801000000
    asm("pop                esi");                                      // 0x00401f45    5e
    asm("ret                0x0004");                                   // 0x00401f46    c20400
    asm("_jmp_addr_0x00401f49:");
    asm("pop                edi");                                      // 0x00401f49    5f
    asm("xor.s              eax, eax");                                 // 0x00401f4a    33c0
    asm("pop                esi");                                      // 0x00401f4c    5e
    asm("ret                0x0004");                                   // 0x00401f4d    c20400
    __builtin_unreachable();
}

bool32_t __fastcall IsRock__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    asm("mov                eax, dword ptr [ecx]");                     // 0x00401f50    8b01
    asm("call               dword ptr [eax + 0x1f0]");                  // 0x00401f52    ff90f0010000
    asm("ret                0x0004");                                   // 0x00401f58    c20400
    asm("call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9");                     // 0x00401f5b    e819f9ffff
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsPickupableRock__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    asm("push               esi");                                      // 0x00401f60    56
    asm("mov.s              esi, ecx");                                 // 0x00401f61    8bf1
    asm("mov                eax, dword ptr [esi]");                     // 0x00401f63    8b06
    asm("call               dword ptr [eax + 0x1f0]");                  // 0x00401f65    ff90f0010000
    asm("test               eax, eax");                                 // 0x00401f6b    85c0
    asm("{disp8} je         _jmp_addr_0x00401f8b");                     // 0x00401f6d    741c
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");              // 0x00401f6f    8b442408
    asm("mov                edx, dword ptr [esi]");                     // 0x00401f73    8b16
    asm("push               eax");                                      // 0x00401f75    50
    asm("mov.s              ecx, esi");                                 // 0x00401f76    8bce
    asm("call               dword ptr [edx + 0x258]");                  // 0x00401f78    ff9258020000
    asm("test               eax, eax");                                 // 0x00401f7e    85c0
    asm("{disp8} je         _jmp_addr_0x00401f8b");                     // 0x00401f80    7409
    asm("mov                eax, 0x00000001");                          // 0x00401f82    b801000000
    asm("pop                esi");                                      // 0x00401f87    5e
    asm("ret                0x0004");                                   // 0x00401f88    c20400
    asm("_jmp_addr_0x00401f8b:");
    asm("xor.s              eax, eax");                                 // 0x00401f8b    33c0
    asm("pop                esi");                                      // 0x00401f8d    5e
    asm("ret                0x0004");                                   // 0x00401f8e    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsCitadelPart__16GameThingWithPosFv(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsPlayingFootball__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsPlayingFootballAndMySideHasJustScored__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsPlayingFootballAndOtherSideHasJustScored__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsAnimalBelongingToOtherPlayer__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsOneOffSpellBelongingToOtherPlayer__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsOneOffSpellAggressive__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsOneOffSpellCompassionate__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsOneOffSpellPlayful__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsOneOffSpellToRestoreHealth__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeStolenByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsStealableSpell__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsStealableScaffold__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsTownBelongingToOtherPlayer__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsTotemWithStealableSpell__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsCreatureAvailableForJointActivity__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsCreatureNotAvailableForJointActivity__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsToyAwayFromHome__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsToy__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsToyBall__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsToyDie__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsToyCuddly__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

bool32_t __fastcall IsLiving__16GameThingWithPosFP8Creature(const struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    asm("mov                eax, dword ptr [ecx]");                     // 0x00402100    8b01
    asm("call               dword ptr [eax + 0x3c4]");                  // 0x00402102    ff90c4030000
    asm("ret                0x0004");                                   // 0x00402108    c20400
    asm("call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9");                     // 0x0040210b    e869f7ffff
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsFence__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsSpellIcon__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeUsedForThrowingDamageByCreature__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsCreatureWhoSeemsFriendly__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeThrownInTheSeaPlayfully__16GameThingWithPosFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsFlock__16GameThingWithPosCFv(const struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsDance__16GameThingWithPosCFv(const struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsReward__16GameThingWithPosCFv(const struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsScriptContainer__16GameThingWithPosCFv(const struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsWeather__16GameThingWithPosCFv(const struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsSpell__16GameThingWithPosCFv(const struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsDeletedWhenReleasedFromScript__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsMobileWallHug__16GameThingWithPosCFv(const struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsActive__16GameThingWithPosCFv(const struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsObjectTurningTooFastForCameraToFollowSmoothly__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

float __fastcall CalculateDesireForFood__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");              // 0x00402200    d90598a38a00
    asm("ret");                                                         // 0x00402206    c3
    __builtin_unreachable();
}

float __fastcall CalculateDesireForRest__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");              // 0x00402210    d90598a38a00
    asm("ret");                                                         // 0x00402216    c3
    __builtin_unreachable();
}

float __fastcall CalculatePeopleHidingIndicator__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");              // 0x00402220    d90598a38a00
    asm("ret");                                                         // 0x00402226    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsReadyForNewScriptAction__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
void __fastcall SetControlledByScript__16GameThingWithPosFi(struct GameThingWithPos* this, const void* edx, int32_t param_1)
{
    asm("xor.s              eax, eax");                                 // 0x00402240    33c0
    asm("{disp8} mov        al, byte ptr [esp + 0x04]");                // 0x00402242    8a442404
    asm("xor.s              edx, edx");                                 // 0x00402246    33d2
    asm("{disp8} mov        dx, word ptr [ecx + 0x24]");                // 0x00402248    668b5124
    asm("and                eax, 0x01");                                // 0x0040224c    83e001
    asm("shl                eax, 0xa");                                 // 0x0040224f    c1e00a
    asm("and                edx, 0x0000fbff");                          // 0x00402252    81e2fffb0000
    asm("or.s               eax, edx");                                 // 0x00402258    0bc2
    asm("{disp8} mov        word ptr [ecx + 0x24], ax");                // 0x0040225a    66894124
    asm("ret                0x0004");                                   // 0x0040225e    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
enum DEATH_REASON __fastcall GetDeathReason__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsInScript__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    asm("xor.s              eax, eax");                                 // 0x00402280    33c0
    asm("{disp8} mov        ax, word ptr [ecx + 0x24]");                // 0x00402282    668b4124
    asm("shr                eax, 9");                                   // 0x00402286    c1e809
    asm("and                eax, 0x01");                                // 0x00402289    83e001
    asm("ret");                                                         // 0x0040228c    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsMaleVillager__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsFemaleVillager__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsAnimal__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsAChild__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsFootball__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsCitadel__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsForest__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsMobileObject__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsMobileStatic__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsTree__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsAnyKindOfTree__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsDeadTree__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsLiving__16GameThingWithPosFv(const struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsCitadelPart__16GameThingWithPosFP8Creature(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsPileFood__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsFeature__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsScriptMarker__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsScriptHighlight__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsWorkshop__16GameThingWithPosFP8Creature(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsInfluenceRing__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsPuzzleGame__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsScaffold__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsSkeleton__16GameThingWithPosCFv(const struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsPoisoned__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    asm("xor.s              al, al");                                   // 0x00402400    32c0
    asm("ret");                                                         // 0x00402402    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsSpeedUp__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    asm("xor.s              al, al");                                   // 0x00402410    32c0
    asm("ret");                                                         // 0x00402412    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsParticleContainer__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsSacrificeAltar__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsPot__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsComputerPlayer__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

void __fastcall SetSkeleton__16GameThingWithPosFi(struct GameThingWithPos* this, const void* edx, int index)
{
    return;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsSpellSeed__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsSpellShield__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsPileResource__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsScriptTimer__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 0;
}

float __fastcall GetFacingDirection__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");              // 0x004024b0    d90598a38a00
    asm("ret");                                                         // 0x004024b6    c3
    __builtin_unreachable();
}

void __fastcall SetAffectedByWind__16GameThingWithPosFi(struct GameThingWithPos* this, const void* edx, int param_1)
{
    return;
}

float __fastcall GetReactionPower__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");              // 0x004024d0    d90590a38a00
    asm("ret");                                                         // 0x004024d6    c3
    __builtin_unreachable();
}

void __fastcall CleanUpBeforeReset__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return;
}
