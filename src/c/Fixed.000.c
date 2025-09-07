#include "Fixed.h"

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBeFrighteningToCreature__11FixedObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return false;
}

bool32_t __fastcall CanBeSleptNextToByCreature__11FixedObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return true;
}

bool32_t __fastcall CanBeDestroyedByStoning__11FixedObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return true;
}

bool32_t __fastcall CanBeSetOnFire__11FixedObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    asm(
        "xor.s       eax, eax                 \n" // 0x00401430    33c0
        "{disp8} mov al, byte ptr [ecx + 0x0a]\n" // 0x00401432    8a410a
        "not         al                       \n" // 0x00401435    f6d0
        "shr         eax, 3                   \n" // 0x00401437    c1e803
        "and         eax, 0x01                \n" // 0x0040143a    83e001
        "ret         0x0004                   \n" // 0x0040143d    c20400
    );
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CanBePickedUpByCreature__11FixedObjectFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    return false;
}

bool32_t __fastcall CanBeCrushed__11FixedObjectFv(struct Object* this)
{
    return true;
}

bool32_t __fastcall VillagerMustAvoid__11FixedObjectFP8Villager(struct Object* this, const void* edx, struct Villager* param_1)
{
    return true;
}

struct GameThing* __fastcall GetTownArtifact__11FixedObjectFv(struct Object* this)
{
    return ((struct Fixed*)this)->town_artifact;
}

bool32_t __fastcall IsTownArtifact__11FixedObjectFv(struct Object* this)
{
    asm(
        "{disp8} mov edx, dword ptr [ecx + 0x54]\n"  // 0x00401480    8b5154
        "xor.s       eax, eax                   \n"  // 0x00401483    33c0
        "test        edx, edx                   \n"  // 0x00401485    85d2
        "setne       al                         \n"  // 0x00401487    0f95c0
        "ret                                    \n"  // 0x0040148a    c3
    );
    // return ((struct FixedObject*)this)->town_artifact != NULL;

    // SEH?
    asm("call ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9");  // 0x0040148b    e8e9030000

    __builtin_unreachable();
}
