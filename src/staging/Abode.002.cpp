#include "Abode.h"
#include <cstddef>

// win1.41 00402bc0 mac inlined Abode::SetToZero(void)
void Abode::SetToZero()
{
}

// win1.41 00402c10 mac 1033b510 Abode::Delete(void)
void Abode::Delete()
{
}

// win1.41 00402c60 mac 100c6f40 Abode::ToBeDeleted(int)
void Abode::ToBeDeleted(int param_1)
{
}

// win1.41 00402cb0 mac 10570ad0 Abode::DestroyedByBeam(void)
void Abode::DestroyedByBeam()
{
}

// win1.41 00402cd0 mac 100c7020 Abode::GetInspectObjectPos(Villager *, MapCoords *)
bool Abode::GetInspectObjectPos(Villager* param_1, MapCoords* pos)
{
    return false;
}

// win1.41 00402cf0 mac 101c66a0 Abode::GetPSysFireLocalRndFlamePos(LHPoint *, long *)
bool Abode::GetPSysFireLocalRndFlamePos(LHPoint* point, int32_t* param_2)
{
    return false;
}

// win1.41 00402dc0 mac 103bf040 Abode::GetPhysicsConstantsType(void)
uint32_t Abode::GetPhysicsConstantsType()
{
    return 0;
}

// win1.41 00402dd0 mac 103bf110 Abode::SetUpPhysOb(PhysOb *)
void Abode::SetUpPhysOb(PhysOb* param_1)
{
}

// win1.41 00402e20 mac 103bf260 Abode::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float, unsigned long, unsigned long, float, int, int)
Abode* Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, uint32_t param_6, uint32_t param_7, float food, int wood, int param_10)
{
    return NULL;
}

// win1.41 00403130 mac 1033b920 Abode::Init(int, unsigned long, unsigned long)
void Abode::Init(int param_1, uint32_t food_amount, uint32_t wood_amount)
{
}

// win1.41 00403190 mac 10589610 Abode::CreateWithoutSpecial(MapCoords const &, GAbodeInfo const *, Town *, float, float, unsigned long, unsigned long, float, int, int)
Abode* CreateWithoutSpecial(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food, int wood)
{
    return NULL;
}

// win1.41 00403200 mac 10576c70 Abode::CallVirtualFunctionsForCreation(const MapCoords&)
void Abode::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
}
