#include "SpellSeed.h"
#include "OneOffSpellSeed.h"
#include "SpellSystemInfo.h"
#include "SpellSeedInfo.h"
#include "SpellShield.h"
#include "MagicShield.h"
#include "PhysicalShield.h"
#include "MapShieldInfo.h"
#include "MapShield.h"
#include "SpellHeal.h"
#include "SpellStormAndTornado.h"
#include "SpookyVoiceInfo.h"
#include "SpookyVoices.h"

// win1.41 00729c90 mac 10528780 SpellSeed::GetScriptObjectType(void)
uint32_t SpellSeed::GetScriptObjectType()
{
    return 0;
}

// win1.41 00729ca0 mac 10528230 SpellSeed::Save(GameOSFile &)
bool SpellSeed::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00729fb0 mac 10527d30 SpellSeed::Load(GameOSFile &)
bool SpellSeed::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0072a2d0 mac 10527cc0 SpellSeed::GetInHandImmersionTexture(void)
IMMERSION_EFFECT_TYPE SpellSeed::GetInHandImmersionTexture()
{
    return (IMMERSION_EFFECT_TYPE)0;
}

// win1.41 0072a420 mac 105278e0 OneOffSpellSeed::ToBeDeleted(int)
void OneOffSpellSeed::ToBeDeleted(int param_1)
{
}

// win1.41 0072a450 mac 105276e0 OneOffSpellSeed::CallVirtualFunctionsForCreation(MapCoords const &)
void OneOffSpellSeed::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 0072a520 mac 10527690 OneOffSpellSeed::IsEffectReceiver(EffectValues *)
bool OneOffSpellSeed::IsEffectReceiver(EffectValues* param_1)
{
    return 0;
}

// win1.41 0072a530 mac 105275c0 OneOffSpellSeed::InterfaceSetInMagicHand(GInterfaceStatus *)
bool OneOffSpellSeed::InterfaceSetInMagicHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 0072a630 mac 10527330 OneOffSpellSeed::InterfaceValidToTap(GInterfaceStatus *)
uint32_t OneOffSpellSeed::InterfaceValidToTap(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 0072a640 mac 105271d0 OneOffSpellSeed::InterfaceTap(GInterfaceStatus *)
uint32_t OneOffSpellSeed::InterfaceTap(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 0072a910 mac 10526db0 OneOffSpellSeed::GetMesh( const(void))
int OneOffSpellSeed::GetMesh() const
{
    return 0;
}

// win1.41 0072a920 mac 10526d60 OneOffSpellSeed::GetPhysicsConstantsType(void)
uint32_t OneOffSpellSeed::GetPhysicsConstantsType()
{
    return 0;
}

// win1.41 0072a930 mac 10526be0 OneOffSpellSeed::Save(GameOSFile &)
bool OneOffSpellSeed::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0072aa20 mac 10526a70 OneOffSpellSeed::Load(GameOSFile &)
bool OneOffSpellSeed::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0072ab00 mac 105269e0 OneOffSpellSeed::IsOneOffSpellAggressive(Creature *)
bool OneOffSpellSeed::IsOneOffSpellAggressive(Creature* param_1)
{
    return 0;
}

// win1.41 0072ab20 mac 10526950 OneOffSpellSeed::IsOneOffSpellCompassionate(Creature *)
bool OneOffSpellSeed::IsOneOffSpellCompassionate(Creature* param_1)
{
    return 0;
}

// win1.41 0072ab40 mac 105268c0 OneOffSpellSeed::IsOneOffSpellPlayful(Creature *)
bool OneOffSpellSeed::IsOneOffSpellPlayful(Creature* param_1)
{
    return 0;
}

// win1.41 0072ab60 mac 10526820 OneOffSpellSeed::IsOneOffSpellToRestoreHealth(Creature *)
bool OneOffSpellSeed::IsOneOffSpellToRestoreHealth(Creature* param_1)
{
    return 0;
}

// win1.41 0072ab80 mac 105266e0 OneOffSpellSeed::SaveObject(LHOSFile &, MapCoords const &)
uint32_t OneOffSpellSeed::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 0072ac50 mac 10526640 OneOffSpellSeed::GetOverwritePickUpToolTip(void)
uint32_t OneOffSpellSeed::GetOverwritePickUpToolTip()
{
    return 0;
}

// win1.41 0072ac80 mac 105265f0 OneOffSpellSeed::GetOverwriteTapToolTip(void)
uint32_t OneOffSpellSeed::GetOverwriteTapToolTip()
{
    return 0;
}

// win1.41 0072ac90 mac 10526550 OneOffSpellSeed::GetQueryFirstEnumText(void)
HELP_TEXT OneOffSpellSeed::GetQueryFirstEnumText()
{
    return (HELP_TEXT)0;
}

// win1.41 0072acb0 mac 105264c0 OneOffSpellSeed::GetQueryLastEnumText(void)
HELP_TEXT OneOffSpellSeed::GetQueryLastEnumText()
{
    return (HELP_TEXT)0;
}

// win1.41 0072acd0 mac 10526410 SpellSeed::ThrowObjectFromHand(GInterfaceStatus *, int)
uint32_t SpellSeed::ThrowObjectFromHand(GInterfaceStatus* param_1, int param_2)
{
    return 0;
}

// win1.41 0072adb0 mac 1052dea0 GSpellSystemInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GSpellSystemInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0072ae00 mac 1052de00 GSpellSystemInfo::_dt(void)
GSpellSystemInfo::~GSpellSystemInfo()
{
}

// win1.41 0072ae60 mac 1052df00 GSpellSeedInfo::GetMesh( const(void))
uint32_t GSpellSeedInfo::GetMesh() const
{
    return 0;
}

// win1.41 0072ae70 mac 1052df40 GSpellSeedInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GSpellSeedInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0072aee0 mac 1052d120 GSpellSeedInfo::_dt(void)
GSpellSeedInfo::~GSpellSeedInfo()
{
}

// win1.41 0072af70 mac 1052dac0 GSpellSeedInfo::GetPowerUpFromMagicType(MAGIC_TYPE) const
POWER_UP_TYPE GSpellSeedInfo::GetPowerUpFromMagicType(MAGIC_TYPE magic_type)
{
    return (POWER_UP_TYPE)0;
}

// win1.41 0072afc0 mac 1052d9d0 GSpellSeedInfo::GetMagicTypeFromPULevel(POWER_UP_TYPE) const
MAGIC_TYPE GSpellSeedInfo::GetMagicTypeFromPULevel(POWER_UP_TYPE power_type)
{
    return (MAGIC_TYPE)0;
}

// win1.41 0072b060 mac inlined GSpellSeedInfo::SpellSeedIsOfMagicType(MAGIC_TYPE) const
bool GSpellSeedInfo::SpellSeedIsOfMagicType(MAGIC_TYPE type)
{
    return 0;
}

// win1.41 0072b090 mac 1052d6f0 GSpellSeedInfo::GetFirstSpellSeedForMagicType(MAGIC_TYPE)
SPELL_SEED_TYPE GSpellSeedInfo::GetFirstSpellSeedForMagicType(MAGIC_TYPE magic_type)
{
    return (SPELL_SEED_TYPE)0;
}

// win1.41 0072b430 mac 10534300 SpellShield::IsSpellShield(void)
bool SpellShield::IsSpellShield()
{
    return 0;
}

// win1.41 0072b440 mac 10532220 SpellShield::Get2DRadius(void)
float SpellShield::Get2DRadius()
{
    return 0;
}

// win1.41 0072b450 mac 105321c0 SpellShield::GetRadius(void)
float SpellShield::GetRadius()
{
    return 0;
}

// win1.41 0072b460 mac 10534340 SpellShield::GetSaveType(void)
uint32_t SpellShield::GetSaveType()
{
    return 0;
}

// win1.41 0072b470 mac 10534380 SpellShield::GetDebugText(void)
char* SpellShield::GetDebugText()
{
    return 0;
}

// win1.41 0072b480 mac 10534250 SpellShield::_dt(void)
SpellShield::~SpellShield()
{
}

// win1.41 0072b500 mac 105334e0 SpellShield::ToBeDeleted(int)
void SpellShield::ToBeDeleted(int param_1)
{
}

// win1.41 0072b5f0 mac 10533230 SpellShield::InitWithPos(GameThing *, MapCoords const &, SpellCastData *, PSysProcessInfo const &)
int SpellShield::InitWithPos(GameThing* param_1, const MapCoords* param_2, SpellCastData* param_3, const PSysProcessInfo* param_4)
{
    return 0;
}

// win1.41 0072b750 mac 105331a0 SpellShield::Process(void)
uint32_t SpellShield::Process()
{
    return 0;
}

// win1.41 0072b780 mac 105330f0 SpellShield::UpdateStruckReaction(void)
void SpellShield::UpdateStruckReaction()
{
}

// win1.41 0072b7c0 mac 10533050 SpellShield::SetUpDestroyedReaction(void)
void SpellShield::SetUpDestroyedReaction()
{
}

// win1.41 0072b7f0 mac 10532fb0 SpellShield::CalculateCostToMaintain(void)
float SpellShield::CalculateCostToMaintain()
{
    return 0;
}

// win1.41 0072b820 mac 10532f60 SpellShield::GetMagicInfo(void) const
GMagicInfo* SpellShield::GetMagicInfo()
{
    return 0;
}

// win1.41 0072b840 mac 10532f10 SpellShield::CloseDown(void)
void SpellShield::CloseDown()
{
}

// win1.41 0072b850 mac 10532df0 MagicShield::IsPointDefinietlyWithinShieldVolume(MapCoords const &)
bool MagicShield::IsPointDefinietlyWithinShieldVolume(const MapCoords* param_1)
{
    return 0;
}

// win1.41 0072b8e0 mac 10532c50 PhysicalShield::IsPointDefinietlyWithinShieldVolume(MapCoords const &)
bool PhysicalShield::IsPointDefinietlyWithinShieldVolume(const MapCoords* param_1)
{
    return 0;
}

// win1.41 0072ba80 mac 10532920 SpellShield::GetImpressiveValue(Living *, Reaction *)
float SpellShield::GetImpressiveValue(Living* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 0072bb40 mac 105324f0 SpellShield::Load(GameOSFile &)
bool SpellShield::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0072bc40 mac 10532270 SpellShield::Save(GameOSFile &)
bool SpellShield::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0072bdf0 mac 10531f60 GMapShieldInfo::_dt(void)
GMapShieldInfo::~GMapShieldInfo()
{
}

// win1.41 0072c000 mac 10533fc0 MapShield::ValidForPlaceInHand(GInterfaceStatus *)
bool MapShield::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 0072c010 mac 10534010 MapShield::HandShouldFeelWithMeshIntersect(void)
bool MapShield::HandShouldFeelWithMeshIntersect()
{
    return 0;
}

// win1.41 0072c020 mac 10534060 MapShield::SaveObject(LHOSFile &, MapCoords const &)
uint32_t MapShield::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 0072c030 mac 105341d0 MapShield::GetSaveType(void)
uint32_t MapShield::GetSaveType()
{
    return 0;
}

// win1.41 0072c040 mac 10534210 MapShield::GetDebugText(void)
char* MapShield::GetDebugText()
{
    return 0;
}

// win1.41 0072c050 mac 105304c0 MapShield::_dt(void)
MapShield::~MapShield()
{
}

// win1.41 0072c070 mac 10531a30 MapShield::__ct(MapCoords const &, GMapShieldInfo *, SpellShield *)
MapShield::MapShield(MapCoords* coords, GMapShieldInfo* info, SpellShield* spell)
{
}

// win1.41 0072c0f0 mac 10531870 MapShield::ToBeDeleted(int)
void MapShield::ToBeDeleted(int param_1)
{
}

// win1.41 0072c150 mac 10531800 MapShield::GetPlayer(void)
GPlayer* MapShield::GetPlayer()
{
    return 0;
}

// win1.41 0072c170 mac 10531740 MapShield::CreatureMustAvoid(Creature *)
bool MapShield::CreatureMustAvoid(Creature* param_1)
{
    return 0;
}

// win1.41 0072c1b0 mac 10531700 MapShield::GetMesh( const(void))
int MapShield::GetMesh() const
{
    return 0;
}

// win1.41 0072c1c0 mac 105316c0 MapShield::GetTopPos(void)
float MapShield::GetTopPos()
{
    return 0;
}

// win1.41 0072c1d0 mac 10531680 MapShield::CanBecomeAPhysicsObject(void)
bool MapShield::CanBecomeAPhysicsObject()
{
    return 0;
}

// win1.41 0072c1e0 mac 10531620 MapShield::ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object *)
void MapShield::ShouldPhysicsRaiseObjectUntilNotIntersectingThis(Object* param_1)
{
}

// win1.41 0072c210 mac 10534150 MagicShield::GetSaveType(void)
uint32_t MagicShield::GetSaveType()
{
    return 0;
}

// win1.41 0072c220 mac 10534190 MagicShield::GetDebugText(void)
char* MagicShield::GetDebugText()
{
    return 0;
}

// win1.41 0072c230 mac 105340b0 MagicShield::_dt(void)
MagicShield::~MagicShield()
{
}

// win1.41 0072c2a0 mac 10531420 MagicShield::CallVirtualFunctionsForCreation(MapCoords const &)
void MagicShield::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 0072c2e0 mac 105313e0 MagicShield::ProcessShield(void)
void MagicShield::ProcessShield()
{
}

// win1.41 0072c2f0 mac 105313a0 MagicShield::DrawShield(void)
void MagicShield::DrawShield()
{
}

// win1.41 0072c300 mac 10531370 MagicShield::Draw(void)
void MagicShield::Draw()
{
}

// win1.41 0072c310 mac 10531320 MagicShield::IsEffectReceiver(EffectValues *)
bool MagicShield::IsEffectReceiver(EffectValues* param_1)
{
    return 0;
}

// win1.41 0072c320 mac 105312c0 MagicShield::SetDying(void)
bool MagicShield::SetDying()
{
    return 0;
}

// win1.41 0072c330 mac 10531270 MagicShield::InteractsWithPhysicsObjects(void)
bool MagicShield::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 0072c340 mac 10531220 MagicShield::Get3DType(void)
LH3DObject::ObjectType MagicShield::Get3DType()
{
    return (LH3DObject::ObjectType)0;
}

// win1.41 0072c350 mac 10531180 MapShield::Load(GameOSFile &)
bool MapShield::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0072c390 mac 105310e0 MapShield::Save(GameOSFile &)
bool MapShield::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0072c3d0 mac 10531080 MagicShield::Load(GameOSFile &)
bool MagicShield::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0072c3f0 mac 10531020 MagicShield::Save(GameOSFile &)
bool MagicShield::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0072c410 mac 10530bd0 PhysicalShield::Load(GameOSFile &)
bool PhysicalShield::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0072c700 mac 10530750 PhysicalShield::Save(GameOSFile &)
bool PhysicalShield::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0072caf0 mac 10533ee0 PhysicalShield::GetAlwaysRemainsInPhysicsInternalSystem(void)
bool PhysicalShield::GetAlwaysRemainsInPhysicsInternalSystem()
{
    return 0;
}

// win1.41 0072cb00 mac 10533f40 PhysicalShield::GetSaveType(void)
uint32_t PhysicalShield::GetSaveType()
{
    return 0;
}

// win1.41 0072cb10 mac 10533f80 PhysicalShield::GetDebugText(void)
char* PhysicalShield::GetDebugText()
{
    return 0;
}

// win1.41 0072cb20 mac 10533e40 PhysicalShield::_dt(void)
PhysicalShield::~PhysicalShield()
{
}

// win1.41 0072cc50 mac 105302e0 PhysicalShield::ToBeDeleted(int)
void PhysicalShield::ToBeDeleted(int param_1)
{
}

// win1.41 0072cc80 mac 10530260 PhysicalShield::IsEffectReceiver(EffectValues *)
bool PhysicalShield::IsEffectReceiver(EffectValues* param_1)
{
    return 0;
}

// win1.41 0072ccb0 mac 10530110 PhysicalShield::CallVirtualFunctionsForCreation(MapCoords const &)
void PhysicalShield::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 0072ce50 mac 1052fe80 PhysicalShield::Get3DType(void)
LH3DObject::ObjectType PhysicalShield::Get3DType()
{
    return (LH3DObject::ObjectType)0;
}

// win1.41 0072ce60 mac 1052fe10 PhysicalShield::ApplyEffect(EffectValues &, int)
void PhysicalShield::ApplyEffect(EffectValues* param_1, int param_2)
{
}

// win1.41 0072ce80 mac 1052fda0 PhysicalShield::DestroyedByEffect(GPlayer *, float)
bool PhysicalShield::DestroyedByEffect(GPlayer* param_1, float param_2)
{
    return 0;
}

// win1.41 0072cea0 mac 1052fd70 PhysicalShield::Draw(void)
void PhysicalShield::Draw()
{
}

// win1.41 0072ceb0 mac 1052fce0 PhysicalShield::SetUpPhysOb(PhysOb *)
void PhysicalShield::SetUpPhysOb(PhysOb* param_1)
{
}

// win1.41 0072ced0 mac 1052f980 PhysicalShield::DrawShield(void)
void PhysicalShield::DrawShield()
{
}

// win1.41 0072d170 mac 1052f8a0 PhysicalShield::SetDying(void)
bool PhysicalShield::SetDying()
{
    return 0;
}

// win1.41 0072d190 mac 1052f310 PhysicalShield::ProcessShield(void)
void PhysicalShield::ProcessShield()
{
}

// win1.41 0072d600 mac 1052f2c0 PhysicalShield::InteractsWithPhysicsObjects(void)
bool PhysicalShield::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 0072d610 mac 1052efa0 PhysicalShield::ReactToPhysicsImpact(PhysicsObject *, bool)
void PhysicalShield::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 0072d7e0 mac 1052ef50 PhysicalShield::GetPhysicsConstantsType(void)
uint32_t PhysicalShield::GetPhysicsConstantsType()
{
    return 0;
}

// win1.41 0072d7f0 mac 1052ee20 PhysicalShield::GetImpressiveValue(Living *, Reaction *)
float PhysicalShield::GetImpressiveValue(Living* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 0072d870 mac 1052ed50 SpellHeal::InitWithPos(GameThing *, MapCoords const &, SpellCastData *, PSysProcessInfo const &)
int SpellHeal::InitWithPos(GameThing* param_1, const MapCoords* param_2, SpellCastData* param_3, const PSysProcessInfo* param_4)
{
    return 0;
}

// win1.41 0072d950 mac 1052e0e0 SpellStormAndTornado::Get2DRadius(void)
float SpellStormAndTornado::Get2DRadius()
{
    return 0;
}

// win1.41 0072d960 mac 1052e140 SpellStormAndTornado::GetRadius(void)
float SpellStormAndTornado::GetRadius()
{
    return 0;
}

// win1.41 0072d970 mac 1052e1b0 SpellStormAndTornado::GetSaveType(void)
uint32_t SpellStormAndTornado::GetSaveType()
{
    return 0;
}

// win1.41 0072d980 mac 1052e1f0 SpellStormAndTornado::GetDebugText(void)
char* SpellStormAndTornado::GetDebugText()
{
    return 0;
}

// win1.41 0072d990 mac 1052dff0 SpellStormAndTornado::_dt(void)
SpellStormAndTornado::~SpellStormAndTornado()
{
}

// win1.41 0072da20 mac 1052e7f0 SpellStormAndTornado::ToBeDeleted(int)
void SpellStormAndTornado::ToBeDeleted(int param_1)
{
}

// win1.41 0072e1c0 mac 10149130 GSpookyVoiceInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GSpookyVoiceInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0072e220 mac 10149010 GSpookyVoiceInfo::_dt(void)
GSpookyVoiceInfo::~GSpookyVoiceInfo()
{
}

// win1.41 0072e250 mac 10148e30 GSpookyVoices::_dt(void)
GSpookyVoices::~GSpookyVoices()
{
}
