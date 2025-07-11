#include "MultiMapFixed.h"

__attribute__((MOV32rr_REV))
struct MultiMapFixed* __fastcall AsMultiMapFixed__13MultiMapFixedFv(struct Object* this)
{
    return ((struct MultiMapFixed*)this);
}

__attribute__((XOR32rr_REV))
bool __fastcall IsPlaytimeStructure__13MultiMapFixedFv(struct MultiMapFixed* this)
{
    return false;
}

__attribute__((XOR32rr_REV))
bool __fastcall IsPlaytimeStarted__13MultiMapFixedFv(struct MultiMapFixed* this)
{
    return false;
}

__attribute__((XOR32rr_REV))
bool __fastcall AddPlaytimeVillager__13MultiMapFixedFP8Villager(struct MultiMapFixed* this, const void* edx, struct Villager* villager)
{
    return false;
}

void __fastcall GetResourceDropPosForComputerPlayer__13MultiMapFixedF13RESOURCE_TYPE(struct MultiMapFixed* this, const void* edx, struct MapCoords* drop_pos)
{
    asm(
        "{disp8} mov        eax, dword ptr [esp + 0x04]\n" // 0x004014d0    8b442404
        "add                ecx, 0x14                  \n" // 0x004014d4    83c114
        "push               esi                        \n" // 0x004014d7    56
        "mov                esi, dword ptr [ecx]       \n" // 0x004014d8    8b31
        "mov.s              edx, eax                   \n" // 0x004014da    8bd0
        "mov                dword ptr [edx], esi       \n" // 0x004014dc    8932
        "{disp8} mov        esi, dword ptr [ecx + 0x04]\n" // 0x004014de    8b7104
        "{disp8} mov        dword ptr [edx + 0x04], esi\n" // 0x004014e1    897204
        "{disp8} mov        ecx, dword ptr [ecx + 0x08]\n" // 0x004014e4    8b4908
        "{disp8} mov        dword ptr [edx + 0x08], ecx\n" // 0x004014e7    894a08
        "pop                esi                        \n" // 0x004014ea    5e
        "ret                0x0008                     \n" // 0x004014eb    c20800
    );
    __builtin_unreachable();
}

float __fastcall GetPercentBuilt__13MultiMapFixedFv(struct MultiMapFixed* this)
{
    return this->percent_built;
}

float __fastcall GetPercentRepaired__13MultiMapFixedFv(struct MultiMapFixed* this)
{
    // clang crashes
    // return this->base.object_vftable->super.GetLife(this);

    asm("mov eax, dword ptr [ecx]");    // 0x00401500    8b01
    asm("jmp dword ptr [eax + 0x11c]"); // 0x00401502    ffa01c010000
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetBuildingSiteWood__13MultiMapFixedFPUl(struct MultiMapFixed* this, const void* edx, uint32_t* param_1)
{
    return 0;
}

__attribute__((MOV32rr_REV))
void* __fastcall GetBuildingObject__13MultiMapFixedFv(struct MultiMapFixed* this)
{
    return this;
}

bool32_t __fastcall IsSolidToNewAbode__13MultiMapFixedFv(struct Object* this)
{
    return true;
}

__attribute__((MOV32rr_REV))
struct MultiMapFixed* __fastcall CastMultiMapFixed__13MultiMapFixedFv(struct GameThing* this)
{
    return ((struct MultiMapFixed*)this);
}

void __fastcall SetPower__13MultiMapFixedFf(struct MultiMapFixed* this, const void* edx, float power)
{
}

struct MapCoords * __fastcall GetResourcePos__13MultiMapFixedF13RESOURCE_TYPEl(struct MultiMapFixed* this, const void* edx, enum RESOURCE_TYPE type, int32_t param_2)
{
    asm(
        "{disp8} mov        eax, dword ptr [esp + 0x04]\n" // 0x00401560    8b442404
        "add                ecx, 0x14                  \n" // 0x00401564    83c114
        "push               esi                        \n" // 0x00401567    56
        "mov                esi, dword ptr [ecx]       \n" // 0x00401568    8b31
        "mov.s              edx, eax                   \n" // 0x0040156a    8bd0
        "mov                dword ptr [edx], esi       \n" // 0x0040156c    8932
        "{disp8} mov        esi, dword ptr [ecx + 0x04]\n" // 0x0040156e    8b7104
        "{disp8} mov        dword ptr [edx + 0x04], esi\n" // 0x00401571    897204
        "{disp8} mov        ecx, dword ptr [ecx + 0x08]\n" // 0x00401574    8b4908
        "{disp8} mov        dword ptr [edx + 0x08], ecx\n" // 0x00401577    894a08
        "pop                esi                        \n" // 0x0040157a    5e
        "ret                0x000c                     \n" // 0x0040157b    c20c00
    );
    __builtin_unreachable();
}

bool __fastcall IsPoisonedResource__13MultiMapFixedF13RESOURCE_TYPE(struct MultiMapFixed* this)
{
    // clang does the 32 bit xor
    // return false;
    asm("xor.s              al, al\n"); // 0x00401580    32c0
    asm("ret                0x0004\n"); // 0x00401582    c20400
    __builtin_unreachable();
}

struct MapCoords* __fastcall GetResourceNearestEdge__13MultiMapFixedF13RESOURCE_TYPEP6Objecti(struct MultiMapFixed* this, const void* edx, struct MapCoords* coords, enum RESOURCE_TYPE type, struct Object* param_3, int param_4)
{
    // clang crashes
    //return this->base.multiMapFixed_vftable->GetResourcePos(this, edx, type, param_4);
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]"); // 0x00401590    8b542408
    asm("mov                eax, dword ptr [ecx]       "); // 0x00401594    8b01
    asm("push               esi                        "); // 0x00401596    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x08]"); // 0x00401597    8b742408
    asm("push               -0x1                       "); // 0x0040159b    6aff
    asm("push               edx                        "); // 0x0040159d    52
    asm("push               esi                        "); // 0x0040159e    56
    asm("call               dword ptr [eax + 0x8cc]    "); // 0x0040159f    ff90cc080000
    asm("mov.s              eax, esi                   "); // 0x004015a5    8bc6
    asm("pop                esi                        "); // 0x004015a7    5e
    asm("ret                0x0010                     "); // 0x004015a8    c21000
    asm("call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9"); // 0x004015ab    e8c9020000
    __builtin_unreachable();
}

void __fastcall AddToPlayer__13MultiMapFixedFv(struct MultiMapFixed* this)
{
}

void __fastcall RemoveFromPlayer__13MultiMapFixedFv(struct MultiMapFixed* this)
{
}

__attribute__((XOR32rr_REV))
int __fastcall CalulateAmountOverMaximum__13MultiMapFixedF13RESOURCE_TYPE(struct MultiMapFixed* this, const void* edx, enum RESOURCE_TYPE type)
{
    return 0;
}

bool32_t __fastcall IsBeingBuilt__13MultiMapFixedFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    asm("mov                eax, dword ptr [ecx]   "); // 0x004015e0    8b01
    asm("call               dword ptr [eax + 0x890]"); // 0x004015e2    ff9090080000
    asm("dec                eax                    "); // 0x004015e8    48
    asm("neg                eax                    "); // 0x004015e9    f7d8
    asm("sbb.s              eax, eax               "); // 0x004015eb    1bc0
    asm("neg                eax                    "); // 0x004015ed    f7d8
    asm("ret                0x0004                 "); // 0x004015ef    c20400
    __builtin_unreachable();
}

bool32_t __fastcall NeedsRepair__13MultiMapFixedFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* creature)
{
    asm("mov                eax, dword ptr [ecx]   "); // 0x00401600    8b01
    asm("call               dword ptr [eax + 0x88c]"); // 0x00401602    ff908c080000
    asm("neg                eax                    "); // 0x00401608    f7d8
    asm("sbb.s              eax, eax               "); // 0x0040160a    1bc0
    asm("inc                eax                    "); // 0x0040160c    40
    asm("ret                0x0004                 "); // 0x0040160d    c20400
    __builtin_unreachable();
}

bool32_t __fastcall IsFootpathLink__13MultiMapFixedFv(struct GameThing* this)
{
    return true;
}

struct GFootpathLink* __fastcall GetFootpathLink__13MultiMapFixedFv(struct GameThing* this)
{
    return ((struct MultiMapFixed*)this)->footpath_link;
}

struct NewCollide* __fastcall GetCollideData__13MultiMapFixedFv(const struct Object* this)
{
    return ((struct MultiMapFixed*)this)->collide_data;
}
