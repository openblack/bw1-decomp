#include "SpellIcon.h"
#include "SpellSeedGraphic.h"
#include "SpellSeed.h"

// win1.41 00726360 mac 10524cb0 SpellIcon::GetSpellSeedType(void)
SPELL_SEED_TYPE SpellIcon::GetSpellSeedType()
{
    return (SPELL_SEED_TYPE)0;
}

// win1.41 007263c0 mac 10524b00 SpellIcon::InterfaceValidToTap(GInterfaceStatus *)
uint32_t SpellIcon::InterfaceValidToTap(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00726420 mac 10524aa0 SpellIcon::GetOverwriteTapToolTip(void)
uint32_t SpellIcon::GetOverwriteTapToolTip()
{
    return 0;
}

// win1.41 00726430 mac 105249c0 SpellIcon::InterfaceTap(GInterfaceStatus *)
uint32_t SpellIcon::InterfaceTap(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00726540 mac 10524800 SpellIcon::GetPlayer(void)
GPlayer* SpellIcon::GetPlayer()
{
    return 0;
}

// win1.41 00726570 mac 10524770 SpellIcon::SetPlayer(GPlayer *)
void SpellIcon::SetPlayer(GPlayer* param_1)
{
}

// win1.41 007265c0 mac 10524740 SpellIcon::Process(void)
uint32_t SpellIcon::Process()
{
    return 0;
}

// win1.41 007265d0 mac 10524600 SpellIcon::MoveMapObject(MapCoords const &)
int SpellIcon::MoveMapObject(const MapCoords* param_1)
{
    return 0;
}

// win1.41 00726690 mac 10524570 SpellIcon::TChargingData::TChargingData(void)
SpellIcon::TChargingData::TChargingData()
{
}

// win1.41 00726e20 mac 10521520 SpellSeedGraphic::GetText(void)
const char* SpellSeedGraphic::GetText()
{
    return 0;
}

// win1.41 00726e30 mac 10521560 SpellSeedGraphic::GetSaveType(void)
uint32_t SpellSeedGraphic::GetSaveType()
{
    return 0;
}

// win1.41 00726e40 mac 105215a0 SpellSeedGraphic::GetDebugText(void)
char* SpellSeedGraphic::GetDebugText()
{
    return 0;
}

// win1.41 00726e50 mac 10521480 SpellSeedGraphic::_dt(void)
SpellSeedGraphic::~SpellSeedGraphic()
{
}

// win1.41 00726f60 mac 10523670 SpellSeedGraphic::Create(MapCoords const &, SPELL_SEED_TYPE, GPlayer *, float, POWER_UP_TYPE)
SpellSeedGraphic* SpellSeedGraphic::Create(const MapCoords* coords, SPELL_SEED_TYPE type, GPlayer* player, float param_4, POWER_UP_TYPE effect)
{
    return 0;
}

// win1.41 00726fe0 mac 10523290 SpellSeedGraphic::ToBeDeleted(int)
void SpellSeedGraphic::ToBeDeleted(int param_1)
{
}

// win1.41 00727060 mac 10523210 SpellSeedGraphic::SetPowerUpType(POWER_UP_TYPE)
void SpellSeedGraphic::SetPowerUpType(POWER_UP_TYPE type)
{
}

// win1.41 00727080 mac 10523130 SpellSeedGraphic::CreatePUBand(void)
void SpellSeedGraphic::CreatePUBand()
{
}

// win1.41 00727340 mac 10522ce0 SpellSeedGraphic::GetScale(void)
float SpellSeedGraphic::GetScale()
{
    return 0;
}

// win1.41 007276a0 mac 10522450 SpellSeedGraphic::GetPlayer(void)
GPlayer* SpellSeedGraphic::GetPlayer()
{
    return 0;
}

// win1.41 007276b0 mac 105223a0 SpellSeedGraphic::SetPlayer(GPlayer *)
void SpellSeedGraphic::SetPlayer(GPlayer* param_1)
{
}

// win1.41 007277b0 mac 10522020 SpellSeedGraphic::ForDrawFXGetNumVertices(void)
int SpellSeedGraphic::ForDrawFXGetNumVertices()
{
    return 0;
}

// win1.41 00727800 mac 10521e20 SpellSeedGraphic::ForDrawFXGetVertexPos(long, LHPoint *)
void SpellSeedGraphic::ForDrawFXGetVertexPos(int param_1, LHPoint* param_2)
{
}

// win1.41 00727940 mac 10521ce0 SpellIcon::Save(GameOSFile &)
bool SpellIcon::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00727a00 mac 10521bb0 SpellIcon::Load(GameOSFile &)
bool SpellIcon::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00727ac0 mac 10521910 SpellSeedGraphic::Load(GameOSFile &)
bool SpellSeedGraphic::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00727c70 mac 10521650 SpellSeedGraphic::Save(GameOSFile &)
bool SpellSeedGraphic::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00727e30 mac 105215f0 SpellSeedGraphic::ResolveLoad(void)
void SpellSeedGraphic::ResolveLoad()
{
}

// win1.41 00727f50 mac 1052cc60 SpellSeed::IsSpellSeed(void)
bool SpellSeed::IsSpellSeed()
{
    return 0;
}

// win1.41 00727f60 mac 1052cc90 SpellSeed::HandShouldFeelWithMeshIntersect(void)
bool SpellSeed::HandShouldFeelWithMeshIntersect()
{
    return 0;
}

// win1.41 00727f70 mac 1052cce0 SpellSeed::GetCreatureBeliefType(void)
uint32_t SpellSeed::GetCreatureBeliefType()
{
    return 0;
}

// win1.41 00727f80 mac 1052cd20 SpellSeed::GetOrigin(void)
uint32_t SpellSeed::GetOrigin()
{
    return 0;
}

// win1.41 00727f90 mac 1052cd60 SpellSeed::SaveObject(LHOSFile &, MapCoords const &)
uint32_t SpellSeed::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 00727fa0 mac 1052cdb0 SpellSeed::GetSaveType(void)
uint32_t SpellSeed::GetSaveType()
{
    return 0;
}

// win1.41 00727fb0 mac 1052cdf0 SpellSeed::GetDebugText(void)
char* SpellSeed::GetDebugText()
{
    return 0;
}

// win1.41 00727fc0 mac 1052cbd0 SpellSeed::_dt(void)
SpellSeed::~SpellSeed()
{
}

// win1.41 00728280 mac 1052c390 SpellSeed::ToBeDeleted(int)
void SpellSeed::ToBeDeleted(int param_1)
{
}

// win1.41 00728360 mac 1052bef0 SpellSeed::CallVirtualFunctionsForCreation(MapCoords const &)
void SpellSeed::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}
