#include "Abode.h"

// win1.41 00401640 mac 105602b0 Abode::CastAbode(void)
Abode* Abode::CastAbode()
{
    return NULL;
}

// win1.41 00401650 mac 10565230 Abode::GetShouldNotBeAddedToPlanned(void)
bool Abode::GetShouldNotBeAddedToPlanned()
{
    return false;
}

// win1.41 00401660 mac 1031a9a0 Abode::SetShouldNotBeAddedToPlanned(int)
void Abode::SetShouldNotBeAddedToPlanned(bool value)
{
}

// win1.41 00401680 mac 10371be0 Abode::RestartBeingFunctional(void)
void Abode::RestartBeingFunctional()
{
}

// win1.41 00401690 mac 1037f370 Abode::SetTown(Town *)
void Abode::SetTown(Town* town)
{
    this->town = town;
}

// win1.41 004016a0 mac 10066b80 Abode::IsRepaired(void)
bool Abode::IsRepaired()
{
    return false;
}

// win1.41 004016c0 mac 10055bb0 Abode::IsBuilt(void)
bool Abode::IsBuilt()
{
    return false;
}

// win1.41 004016f0 mac 101cbc80 Abode::CausesTownEmergencyIfDamaged(void)
bool Abode::CausesTownEmergencyIfDamaged()
{
    return false;
}

// win1.41 00401700 mac 105756c0 Abode::GetDestructionMesh(void)
LH3DMesh* Abode::GetDestructionMesh()
{
    return destruction_mesh;
}

// win1.41 00401710 mac 100970f0 Abode::IsAbode(void)
bool32_t Abode::IsAbode()
{
    return true;
}

// win1.41 00401720 mac 10435a10 Abode::IsCastShadowAtNight(void)
bool32_t Abode::IsCastShadowAtNight()
{
    return true;
}

// win1.41 00401730 mac 1004fe30 Abode::GetTown(void)
Town* Abode::GetTown()
{
    return town;
}

// win1.41 00401740 mac 1040f9d0 Abode::GetCreatureBeliefType(void)
uint32_t Abode::GetCreatureBeliefType()
{
    return 3;
}

// win1.41 00401750 mac 100a48c0 Abode::GetCreatureMimicType(void)
uint32_t Abode::GetCreatureMimicType()
{
    return 5;
}

// win1.41 00401760 mac 10110c50 Abode::GetOrigin(void)
uint32_t Abode::GetOrigin()
{
    return 1;
}

// win1.41 00401770 mac 1000c2b0 Abode::GetArrivePos(void)
MapCoords* Abode::GetArrivePos(MapCoords* coords)
{
    return NULL;
}

// win1.41 00401790 mac 10134300 Abode::IsHouse(void)
bool32_t Abode::IsHouse()
{
    return true;
}

// win1.41 004017a0 mac 103e1790 Abode::GetSaveType(void)
uint32_t Abode::GetSaveType()
{
    return 7;
}

// win1.41 004017b0 mac 10434340 Abode::GetDebugText(void)
char* Abode::GetDebugText()
{
    return NULL;
}

// win1.41 00402b60 mac inlined Abode::_dt(void)
Abode::~Abode()
{
}
