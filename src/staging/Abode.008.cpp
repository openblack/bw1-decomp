#include "Abode.h"

// win1.41 004061f0 mac 10089cd0 Abode::GetAbodeType(void)
ABODE_TYPE Abode::GetAbodeType()
{
    return ABODE_TYPE_LAST;
}

// win1.41 00406200 mac 1005ff20 Abode::IsFunctional(void)
bool Abode::IsFunctional()
{
    return false;
}

// win1.41 00406230 mac 1014cfd0 Abode::ChecksVerticesVObjects(void)
bool Abode::ChecksVerticesVObjects()
{
    return false;
}

// win1.41 00406240 mac 104a8350 Abode::ReactToPhysicsImpact(PhysicsObject *, bool)
void Abode::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 00406640 mac 10172a50 Abode::ApplyEffectsDueToPhysicalDestruction(Object *, GPlayer *)
void Abode::ApplyEffectsDueToPhysicalDestruction(Object* object, GPlayer* player)
{
}

// win1.41 00406800 mac 1010ab50 Abode::CanBecomeAPhysicsObject(void)
bool Abode::CanBecomeAPhysicsObject()
{
    return 0;
}

// win1.41 00406810 mac 1001b380 Abode::GetScriptObjectType(void)
uint32_t Abode::GetScriptObjectType()
{
    return 2;
}

// win1.41 00406820 mac 1049b920 Abode::InterfaceValidToTap(GInterfaceStatus *)
uint32_t Abode::InterfaceValidToTap(GInterfaceStatus* status)
{
    return 1;
}

// win1.41 00406830 mac 102fed90 Abode::InterfaceTap(GInterfaceStatus *)
uint32_t Abode::InterfaceTap(GInterfaceStatus* status)
{
    return false;
}

// win1.41 00406970 mac 1004c590 Abode::GetDesireToBeRepaired(void)
float Abode::GetDesireToBeRepaired()
{
    return 0.0f;
}

// win1.41 004069c0 mac 1036ee00 Abode::FindVillager( int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong)
Villager* Abode::FindVillager(int (__cdecl* param_1)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, uint32_t), SCRIPT_OBJECT_TYPE param_2, uint32_t param_3)
{
    return NULL;
}

// win1.41 00406a10 mac 103bd750 Abode::Save(GameOSFile &)
bool Abode::Save(GameOSFile& file)
{
    return false;
}

// win1.41 00406d20 mac 101a2920 Abode::Load(GameOSFile &)
bool Abode::Load(GameOSFile& file)
{
    return false;
}

// win1.41 00407020 mac inlined Abode::FindNearestDrinkingWater(float)
void Abode::FindNearestDrinkingWater(float max_dist)
{
}

// win1.41 00407050 mac 1004d310 Abode::GetPercentAbodeFullWithAdults(void)
float Abode::GetPercentAbodeFullWithAdults()
{
    return 0.0f;
}

// win1.41 00407090 mac 10058a60 Abode::GetPercentAbodeFullWithChildren(void)
float Abode::GetPercentAbodeFullWithChildren()
{
    return 0.0f;
}

// win1.41 004070d0 mac 104ed230 Abode::GetNumAdultsInAbode(void)
uint8_t Abode::GetNumAdultsInAbode()
{
    return false;
}

// win1.41 004070f0 mac 101b8780 Abode::DrawPercentFull(int)
void Abode::DrawPercentFull(int param_1)
{
}

// win1.41 00407170 mac 1034ec40 Abode::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t Abode::GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager)
{
    return false;
}

// win1.41 00407200 mac 1008a7b0 Abode::IsInteractable(void)
bool Abode::IsInteractable()
{
    return false;
}

// win1.41 00407230 mac inlined Abode::FUN_00407230(bool)
MapCoords* Abode::FUN_00407230(MapCoords* coords, bool param_2)
{
    return NULL;
}

// win1.41 00407280 mac 100dcdb0 Abode::CanBeHiddenIn(void)
bool Abode::CanBeHiddenIn()
{
    return false;
}

// win1.41 00407290 mac 10064f30 Abode::GetPercentRepairedForNonFunctional(void)
float Abode::GetPercentRepairedForNonFunctional()
{
    return 0.0f;
}

// win1.41 004072a0 mac 10053220 Abode::GetInfluence(void)
float Abode::GetInfluence()
{
    return 0.0f;
}

// win1.41 004072e0 mac 1000cd50 Abode::GetPosOutside(float, float, float)
MapCoords* Abode::GetPosOutside(MapCoords* coords, float param_2, float param_3, float param_4)
{
    return NULL;
}

// win1.41 004073c0 mac 103b5600 Abode::StopBeingFunctional(GPlayer *)
void Abode::StopBeingFunctional(GPlayer* param_1)
{
}

// win1.41 004073f0 mac inlined Abode::FUN_004073f0(GPlayer *)
void Abode::FUN_004073f0(GPlayer* param_1)
{
}

// win1.41 00407420 mac 10351de0 Abode::DiscipleInHandNear(Villager &, GInterfaceStatus &)
void Abode::DiscipleInHandNear(Villager* param_1, GInterfaceStatus* status)
{
}

// win1.41 004074a0 mac 100e7ac0 Abode::CalculateDesireToGainMale(void)
float Abode::CalculateDesireToGainMale()
{
    return 0.0f;
}

// win1.41 00407540 mac 100af0d0 Abode::CalculateDesireToGainVillager(void)
float Abode::CalculateDesireToGainVillager()
{
    return 0.0f;
}

// win1.41 004075b0 mac 10518900 Abode::TakeVillagerFrom(Abode&, int)
bool Abode::TakeVillagerFrom(Abode* other, int param_2)
{
    return false;
}

// win1.41 00407620 mac 10516470 Abode::SwapMaleForFemaleFrom(Abode&)
bool Abode::SwapMaleForFemaleFrom(Abode* other)
{
    return false;
}

// win1.41 004076c0 mac 105a17d0 Abode::GetVillagerHealthTotal(void)
float Abode::GetVillagerHealthTotal()
{
    return 0.0f;
}
