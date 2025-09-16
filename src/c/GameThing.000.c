#include "GameThing.h"

const float maxAlignmentChangePerGameTurn asm("?maxAlignmentChangePerGameTurn@GameThing@@2MB");
// [0x1390] 0x008a9000 + 0x1390 = 0x008aa390
const float rdata_float1p0 = 1.0f;
// [0x1394] 0x008a9000 + 0x1394 = 0x008aa394
const float maxAlignmentChangePerGameTurn = 1.0f / (60 * 60 * 10);

__attribute__((aligned(8)))
struct RTTITypeDescriptor __RTTITypeDescriptor__9GameThing = {
    .pVFTable = &__vt__9type_info,
    .spare = 0,
    .name = ".?AVGameThing@@",
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9GameThing = {
    .pTypeDescriptor = &__RTTITypeDescriptor__9GameThing,
    .numContainedBases = 0x00000001,
    .where = {
        .mdisp = 0x00000000,
        .pdisp = 0xFFFFFFFF,
        .vdisp = 0x00000000,
    },
    .attributes = 0x0000000,
};

float __fastcall CalculateInfluence__9GameThingFRC9MapCoords(struct GameThing* this, const void* edx, const struct MapCoords* param_1)
{
    asm(
        "{disp32} fld       dword ptr [_rdata_float1p0]\n"  // 0x004017f0    d90590a38a00
        "ret                0x0004                     \n"  // 0x004017f6    c20400

        // SEH code path?
        "push               ecx                                                         \n"  // 0x004017f9    51
        "push               eax                                                         \n"  // 0x004017fa    50
        "call               ?GetAlignmentType@GObjectInfo@@UBE?AW4ALIGNMENT_TYPE@@XZ + 4\n"  // 0x004017fb    e8a4faffff
    );
    __builtin_unreachable();
}

void __fastcall RemoveDance__9GameThingFv(struct GameThing* this)
{
}

bool __fastcall IsAvailable__9GameThingFv(struct GameThing* this)
{
    asm(
        "xor.s       eax, eax                                                     \n"  // 0x00401810    33c0
        "{disp8} mov al, byte ptr [ecx + 0x0a]                                    \n"  // 0x00401812    8a410a
        "not         al                                                           \n"  // 0x00401815    f6d0
        "and         eax, 0x01                                                    \n"  // 0x00401817    83e001
        "ret                                                                      \n"  // 0x0040181a    c3
        "call        ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9\n"  // 0x0040181b    e859000000
    );
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsCreature__9GameThingFv(struct GameThing* this)
{
    return false;
}

__attribute__((XOR32rr_REV))
bool __fastcall IsCreature__9GameThingFP8Creature(struct GameThing* this, const void* edx, struct Creature* param_1)
{
    return false;
}

__attribute__((XOR32rr_REV))
bool __fastcall IsCreatureNotTooNear__9GameThingFP8Creature(struct GameThing* this, const void* edx, struct Creature* param_1)
{
    return false;
}

float __fastcall GetMaxAlignmentChangePerGameTurn__9GameThingFv(struct GameThing* this)
{
    asm(
        "{disp32} fld       dword ptr [?maxAlignmentChangePerGameTurn@GameThing@@2MB]\n"  // 0x00401850    d90594a38a00
        "ret                                                                         \n"  // 0x00401856    c3
    );
    __builtin_unreachable();

}

__attribute__((XOR32rr_REV))
bool __fastcall GetComputerSeen__9GameThingFv(struct GameThing* this)
{
    return false;
}

float __fastcall GetVillagerActivityDesire__9GameThingFP8Villager(struct GameThing* this, const void* edx, struct Villager* param_1)
{
    asm(
        "{disp32} fld dword ptr [_rdata_float0p0]                       \n"  // 0x00401870    d90598a38a00
        "ret          0x0004                                            \n"  // 0x00401876    c20400
        // SEH Code path?
        "push         ecx                                               \n"  // 0x00401879    51
        "push         eax                                               \n"  // 0x0040187a    50
        "call         ?GetFoodType@GObjectInfo@@UBE?AW4FOOD_TYPE@@XZ + 4\n"  // 0x0040187b    e834faffff
    );
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall SetVillagerActivity__9GameThingFP8Villager(struct GameThing* this, const void* edx, struct Villager* param_1)
{
    return 0;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall UpdateVillagerActivityEffect__9GameThingFP8Villager(struct GameThing* this, const void* edx, struct Villager* param_1)
{
    return 0;
}

__attribute__((XOR32rr_REV))
struct GPlayer* __fastcall GetPlayerWhoLastPickedMeUp__9GameThingFv(struct GameThing* this)
{
    return NULL;
}

__attribute__((XOR32rr_REV))
struct GPlayer* __fastcall GetPlayerWhoLastDroppedMe__9GameThingFv(struct GameThing* this)
{
    return NULL;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall AddFootpathLink__9GameThingFP9GFootpath(struct GameThing* this, const void* edx, struct GFootpath* param_1)
{
    return 0;
}

__attribute__((XOR32rr_REV))
struct Creature* __fastcall CastCreature__9GameThingFv(struct GameThing* this)
{
    return NULL;
}

__attribute__((XOR32rr_REV))
struct GPlayer* __fastcall CastPlayer__9GameThingFv(struct GameThing* this)
{
    return NULL;
}

__attribute__((XOR32rr_REV))
struct SpellSeed* __fastcall CastOneOffSpellSeed__9GameThingFv(struct GameThing* this)
{
    return NULL;
}

__attribute__((XOR32rr_REV))
struct SpellIcon* __fastcall CastSpellIcon__9GameThingFv(struct GameThing* this)
{
    return NULL;
}

__attribute__((XOR32rr_REV))
struct Tree* __fastcall CastTree__9GameThingFv(struct GameThing* this)
{
    return NULL;
}

bool32_t __fastcall IsDeletedOnNewMap__9GameThingFv(struct GameThing* this)
{
    return true;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetShowNeedsPos__9GameThingFUlP9MapCoords(struct GameThing* this, const void* edx, uint32_t param_1, struct MapCoords* param_2)
{
    return 0;
}
