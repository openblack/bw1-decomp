#include "GameThing.h"
#include "Pot.h"
#include "Animal.h"
#include "Tree.h"
#include "DeadTree.h"
#include "HelpSpritesGuidance.h"
#include "SoundInfo.h"
#include "SoundMap.h"
#include "SoundTag.h"
#include "SpecialVillagerInfo.h"
#include "SpecialVillager.h"
#include "Spell.h"
#include "SpellWithObjects.h"
#include "SpellCreature.h"
#include "SpellDispenser.h"
#include "SpellFlock.h"
#include "SpellFlockFlying.h"
#include "SpellFlockGround.h"
#include "SpellResource.h"
#include "SpellWater.h"
#include "SpellForest.h"
#include "SpellSeedGraphic.h"
#include "SpellIconInfo.h"
#include "SpellIcon.h"

// win1.41 0071bdd0 mac 1050fc90 GameThing::GetGuidanceResourceType(void)
uint32_t GameThing::GetGuidanceResourceType()
{
    return 0;
}

// win1.41 0071bde0 mac 1050fbf0 Pot::GetGuidanceResourceType(void)
uint32_t Pot::GetGuidanceResourceType()
{
    return 0;
}

// win1.41 0071be10 mac 1050fbb0 Animal::GetGuidanceResourceType(void)
uint32_t Animal::GetGuidanceResourceType()
{
    return 0;
}

// win1.41 0071be20 mac 1050fb70 Tree::GetGuidanceResourceType(void)
uint32_t Tree::GetGuidanceResourceType()
{
    return 0;
}

// win1.41 0071be30 mac 1050fb30 DeadTree::GetGuidanceResourceType(void)
uint32_t DeadTree::GetGuidanceResourceType()
{
    return 0;
}

// win1.41 0071d300 mac 1050d290 GHelpSpritesGuidance::GetRandomSample(void) const
uint32_t GHelpSpritesGuidance::GetRandomSample()
{
    return 0;
}

// win1.41 0071d660 mac 10513590 GSoundInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GSoundInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0071d6b0 mac 105135d0 GSoundInfo::_dt(void)
GSoundInfo::~GSoundInfo()
{
}

// win1.41 0071d990 mac 10068330 GSoundMap::Dump(void)
void GSoundMap::Dump()
{
}

// win1.41 0071e300 mac 10514c30 SoundTag::SoundTag(GameThingWithPos *, LHPoint const &, unsigned long, bool, unsigned long, unsigned long, int, int, AUDIO_SFX_BANK_TYPE, int)
SoundTag::SoundTag(GameThingWithPos* param_1, LHPoint* param_2, uint32_t param_3, bool param_4, uint32_t param_5, uint32_t param_6, int param_7, int param_8, AUDIO_SFX_BANK_TYPE param_9, int param_10)
{
}

// win1.41 0071e3c0 mac 10514730 SoundTag::_dt(void)
SoundTag::~SoundTag()
{
}

// win1.41 0071e4f0 mac 100a0490 SoundTag::Set(GameThingWithPos *, LHPoint const &, LHPoint const &, unsigned long, bool, unsigned long, unsigned long, int, int, unsigned long, int, int)
void SoundTag::Set(GameThingWithPos* param_1, LHPoint* param_2, LHPoint* param_3, uint32_t param_4, bool param_5, uint32_t param_6, uint32_t param_7, int param_8, int param_9, uint32_t param_10, int param_11, int param_12)
{
}

// win1.41 0071e840 mac 10513e30 SoundTag::Create(GameThingWithPos *, unsigned long, bool, unsigned long, unsigned long, int, int, AUDIO_SFX_BANK_TYPE, int)
SoundTag* SoundTag::Create(GameThingWithPos* param_1, uint32_t param_2, bool param_3, uint32_t param_4, uint32_t param_5, int param_6, int param_7, AUDIO_SFX_BANK_TYPE bank_type, int param_9)
{
    return 0;
}

// win1.41 0071ec90 mac 10513850 SoundTag::Get3DSoundPos(LHPoint *)
int SoundTag::Get3DSoundPos(LHPoint* param_1)
{
    return 0;
}

// win1.41 0071ecb0 mac 105137d0 SoundTag::ToBeDeleted(int)
void SoundTag::ToBeDeleted(int param_1)
{
}

// win1.41 0071ee80 mac 101463b0 GSpecialVillagerInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GSpecialVillagerInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0071f0c0 mac 101477e0 SpecialVillager::ToBeDeleted(int)
void SpecialVillager::ToBeDeleted(int param_1)
{
}

// win1.41 0071f1a0 mac 10147420 SpecialVillager::Create(MapCoords const &, GVillagerInfo const *, unsigned long, int, GSpecialVillagerInfo *)
SpecialVillager* SpecialVillager::Create(const MapCoords* coords, const GVillagerInfo* villager_info, uint32_t age, bool skeleton, GSpecialVillagerInfo* info)
{
    return 0;
}

// win1.41 0071f240 mac 10068e20 SpecialVillager::DrawVillagerInfo(void)
uint32_t SpecialVillager::DrawVillagerInfo()
{
    return 0;
}

// win1.41 0071f3d0 mac 1002d450 SpecialVillager::Draw(void)
void SpecialVillager::Draw()
{
}

// win1.41 0071f470 mac 101470a0 SpecialVillager::CanShowName(void)
bool SpecialVillager::CanShowName()
{
    return 0;
}

// win1.41 0071f490 mac 10147040 SpecialVillager::GetVillagerName(void)
const char* SpecialVillager::GetVillagerName()
{
    return 0;
}

// win1.41 0071f560 mac 10146e00 SpecialVillager::Save(GameOSFile &)
bool SpecialVillager::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0071f5d0 mac 10146d20 SpecialVillager::Load(GameOSFile &)
bool SpecialVillager::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0071f880 mac 10146650 GSpecialVillagerInfo::_dt(void)
GSpecialVillagerInfo::~GSpecialVillagerInfo()
{
}

// win1.41 0071fa30 mac 10519bb0 Spell::Spell(void)
Spell::Spell()
{
}

// win1.41 0071faf0 mac 10514e40 Spell::GetSaveType(void)
uint32_t Spell::GetSaveType()
{
    return 0;
}

// win1.41 0071fb00 mac 10514e70 Spell::GetDebugText(void)
char* Spell::GetDebugText()
{
    return 0;
}

// win1.41 0071fb10 mac 1030e5c0 Spell::_dt(void)
Spell::~Spell()
{
}

// win1.41 0071fb40 mac 105198a0 Spell::Spell(MAGIC_TYPE, GameThing *)
Spell::Spell(MAGIC_TYPE type, GameThing* creator)
{
}

// win1.41 0071fd90 mac 105195a0 Spell::ToBeDeleted(int)
void Spell::ToBeDeleted(int param_1)
{
}

// win1.41 0071fe50 mac 10519200 Spell::InitWithPos(GameThing *, MapCoords const &, SpellCastData *, PSysProcessInfo const &)
int Spell::InitWithPos(GameThing* param_1, const MapCoords& param_2, SpellCastData* param_3, const PSysProcessInfo& param_4)
{
    return 0;
}

// win1.41 007200e0 mac 10519120 Spell::InitWithObject(GameThing *, Object *, SpellCastData *, PSysProcessInfo const &)
int Spell::InitWithObject(GameThing* param_1, Object* param_2, SpellCastData* param_3, const PSysProcessInfo& param_4)
{
    return 0;
}

// win1.41 00720130 mac 105190d0 Spell::GetParticleType(void)
void Spell::GetParticleType()
{
}

// win1.41 00720240 mac 10518ca0 Spell::GetWorshipSite(void)
WorshipSite* Spell::GetWorshipSite()
{
    return 0;
}

// win1.41 007202b0 mac 10518bd0 Spell::GetImpressiveType(void)
IMPRESSIVE_TYPE Spell::GetImpressiveType()
{
    return (IMPRESSIVE_TYPE)0;
}

// win1.41 007203e0 mac 105188d0 Spell::DebugDraw(void)
void Spell::DebugDraw()
{
}

// win1.41 00720430 mac 105187e0 Spell::Draw(void)
void Spell::Draw()
{
}

// win1.41 00720710 mac 10518300 Spell::Process(void)
uint32_t Spell::Process()
{
    return 0;
}

// win1.41 00720810 mac 10518100 Spell::CalculateCostToMaintain(void)
float Spell::CalculateCostToMaintain()
{
    return 0;
}

// win1.41 00720f40 mac 105172a0 Spell::SpellEvent(SpellEventInfo const &)
void Spell::SpellEvent(const SpellEventInfo& param_1)
{
}

// win1.41 00720fd0 mac 10517170 SpellWithObjects::ToBeDeleted(int)
void SpellWithObjects::ToBeDeleted(int param_1)
{
}

// win1.41 007210f0 mac 10516ed0 SpellWithObjects::Load(GameOSFile &)
bool SpellWithObjects::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 007211d0 mac 10516d00 SpellWithObjects::Save(GameOSFile &)
bool SpellWithObjects::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00721290 mac 10516c70 SpellWithObjects::Process(void)
uint32_t SpellWithObjects::Process()
{
    return 0;
}

// win1.41 007212f0 mac 10516c10 SpellWithObjects::ProcessSpellSeed(void)
void SpellWithObjects::ProcessSpellSeed()
{
}

// win1.41 00721300 mac 10516b50 SpellWithObjects::CloseDown(void)
void SpellWithObjects::CloseDown()
{
}

// win1.41 00721340 mac 10516b00 Spell::GetMovementDirection(LHPoint *)
void Spell::GetMovementDirection(LHPoint* param_1)
{
}

// win1.41 00721360 mac 10516aa0 Spell::DrawSpellSeed(void)
void Spell::DrawSpellSeed()
{
}

// win1.41 00721370 mac 10516a00 Spell::ProcessSpellSeed(void)
void Spell::ProcessSpellSeed()
{
}

// win1.41 007214c0 mac 105166c0 Spell::NeedsContinualPackets(GInterfaceStatus *)
bool Spell::NeedsContinualPackets(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00721630 mac 10516340 Spell::GetImpressiveValue(Living *, Reaction *)
float Spell::GetImpressiveValue(Living* param_1, Reaction* param_2)
{
    return 0;
}

// win1.41 007216d0 mac 105162d0 Spell::GetUpdateOfBoredomValue(Reaction *, GameThingWithPos *)
float Spell::GetUpdateOfBoredomValue(Reaction* param_1, GameThingWithPos* param_2)
{
    return 0;
}

// win1.41 007218a0 mac 10515fb0 Spell::GetQueryFirstEnumText(void)
HELP_TEXT Spell::GetQueryFirstEnumText()
{
    return (HELP_TEXT)0;
}

// win1.41 007218b0 mac 10515f40 Spell::GetQueryLastEnumText(void)
HELP_TEXT Spell::GetQueryLastEnumText()
{
    return (HELP_TEXT)0;
}

// win1.41 007218c0 mac 10515ed0 Spell::GetFOVHelpMessageSet(void)
uint32_t Spell::GetFOVHelpMessageSet()
{
    return 0;
}

// win1.41 007218d0 mac 10515e60 Spell::GetFOVHelpCondition(void)
uint32_t Spell::GetFOVHelpCondition()
{
    return 0;
}

// win1.41 00721930 mac 105155b0 Spell::Save(GameOSFile &)
bool Spell::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00721cd0 mac 10514eb0 Spell::Load(GameOSFile &)
bool Spell::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00722220 mac 10519f70 SpellCreature::GetSaveType(void)
uint32_t SpellCreature::GetSaveType()
{
    return 0;
}

// win1.41 00722230 mac 10519fb0 SpellCreature::GetDebugText(void)
char* SpellCreature::GetDebugText()
{
    return 0;
}

// win1.41 00722240 mac 10519e90 SpellCreature::_dt(void)
SpellCreature::~SpellCreature()
{
}

// win1.41 007222c0 mac 1051a7a0 SpellCreature::GetCreatureCastOn(void)
uint32_t SpellCreature::GetCreatureCastOn()
{
    return 0;
}

// win1.41 007222d0 mac 1051a5f0 SpellCreature::InitWithObject(GameThing *, Object *, SpellCastData *, PSysProcessInfo const &)
int SpellCreature::InitWithObject(GameThing* param_1, Object* param_2, SpellCastData* param_3, const PSysProcessInfo* param_4)
{
    return 0;
}

// win1.41 00722380 mac 1051a4c0 SpellCreature::Process(void)
uint32_t SpellCreature::Process()
{
    return 0;
}

// win1.41 00722490 mac 1051a2e0 SpellCreature::ProcessSpellSeed(void)
void SpellCreature::ProcessSpellSeed()
{
}

// win1.41 007224f0 mac 1051a290 SpellCreature::CloseDown(void)
void SpellCreature::CloseDown()
{
}

// win1.41 00722520 mac 1051a0e0 SpellCreature::Load(GameOSFile &)
bool SpellCreature::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00722590 mac 10519ff0 SpellCreature::Save(GameOSFile &)
bool SpellCreature::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 007226c0 mac 1051a970 SpellDispenser::IsActive( const(void))
bool SpellDispenser::IsActive() const
{
    return 0;
}

// win1.41 007226d0 mac 1051a9b0 SpellDispenser::IsSpellDispenser(void)
bool SpellDispenser::IsSpellDispenser()
{
    return 0;
}

// win1.41 007226e0 mac 1051a9f0 SpellDispenser::IsSpellSeedReturnPoint( const(void))
bool SpellDispenser::IsSpellSeedReturnPoint()
{
    return 0;
}

// win1.41 007226f0 mac 1051aa40 SpellDispenser::GetSaveType(void)
uint32_t SpellDispenser::GetSaveType()
{
    return 0;
}

// win1.41 00722700 mac 1051a8e0 SpellDispenser::_dt(void)
SpellDispenser::~SpellDispenser()
{
}

// win1.41 007227d0 mac 1051ba80 SpellDispenser::CallVirtualFunctionsForCreation(MapCoords const &)
void SpellDispenser::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 007228a0 mac 1051b9e0 SpellDispenser::ToBeDeleted(int)
void SpellDispenser::ToBeDeleted(int param_1)
{
}

// win1.41 00722940 mac 1051b6d0 SpellDispenser::Draw(void)
void SpellDispenser::Draw()
{
}

// win1.41 00722a70 mac 1051b590 SpellDispenser::Process(void)
uint32_t SpellDispenser::Process()
{
    return 0;
}

// win1.41 00722d50 mac 1051aeb0 SpellDispenser::Save(GameOSFile &)
bool SpellDispenser::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00722e80 mac 1051acf0 SpellDispenser::Load(GameOSFile &)
bool SpellDispenser::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00722fa0 mac 1051ac90 SpellDispenser::GetDebugText(void)
char* SpellDispenser::GetDebugText()
{
    return 0;
}

// win1.41 00722fb0 mac 1051ac40 SpellDispenser::GetScriptObjectType(void)
uint32_t SpellDispenser::GetScriptObjectType()
{
    return 0;
}

// win1.41 00723240 mac 1051e7b0 SpellFlock::CalculateCostToMaintain(void)
float SpellFlock::CalculateCostToMaintain()
{
    return 0;
}

// win1.41 00723270 mac 1051e760 SpellFlock::CloseDown(void)
void SpellFlock::CloseDown()
{
}

// win1.41 00723280 mac 1051e660 SpellFlock::NeedsContinualPackets(GInterfaceStatus *)
bool SpellFlock::NeedsContinualPackets(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 007232d0 mac 1051e4a0 SpellFlock::InitWithPos(GameThing *, MapCoords const &, SpellCastData *, PSysProcessInfo const &)
int SpellFlock::InitWithPos(GameThing* param_1, const MapCoords* param_2, SpellCastData* param_3, const PSysProcessInfo* param_4)
{
    return 0;
}

// win1.41 007233d0 mac 1051e2b0 SpellFlock::Process(void)
uint32_t SpellFlock::Process()
{
    return 0;
}

// win1.41 00723a30 mac 1051d940 SpellFlockFlying::GetParticleType(void)
void SpellFlockFlying::GetParticleType()
{
}

// win1.41 00723bc0 mac 1051d040 SpellFlockFlying::Process(void)
uint32_t SpellFlockFlying::Process()
{
    return 0;
}

// win1.41 00724100 mac 1051cea0 SpellFlockFlying::Draw(void)
void SpellFlockFlying::Draw()
{
}

// win1.41 00724290 mac 1051ccf0 SpellFlockGround::GetParticleType(void)
void SpellFlockGround::GetParticleType()
{
}

// win1.41 007242a0 mac 1051c720 SpellFlockGround::Process(void)
uint32_t SpellFlockGround::Process()
{
    return 0;
}

// win1.41 00724780 mac 1051c560 SpellFlock::Load(GameOSFile &)
bool SpellFlock::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 007248a0 mac 1051c390 SpellFlock::Save(GameOSFile &)
bool SpellFlock::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 007249d0 mac 1051c220 SpellFlockFlying::Load(GameOSFile &)
bool SpellFlockFlying::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00724ac0 mac 1051c0a0 SpellFlockFlying::Save(GameOSFile &)
bool SpellFlockFlying::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00724bb0 mac 1051c030 SpellFlockGround::Load(GameOSFile &)
bool SpellFlockGround::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00724bd0 mac 1051bfc0 SpellFlockGround::Save(GameOSFile &)
bool SpellFlockGround::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00724c90 mac 1051fc70 SpellResource::HasEnoughChantsAndLifeForRecast(void)
void SpellResource::HasEnoughChantsAndLifeForRecast()
{
}

// win1.41 00724d80 mac 1051f9d0 SpellResource::SpellEvent(SpellEventInfo const &)
void SpellResource::SpellEvent(const SpellEventInfo* param_1)
{
}

// win1.41 00724ed0 mac 1051f310 SpellWater::Process(void)
uint32_t SpellWater::Process()
{
    return 0;
}

// win1.41 007252f0 mac 1051f230 SpellResource::Load(GameOSFile &)
bool SpellResource::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00725350 mac 1051f150 SpellResource::Save(GameOSFile &)
bool SpellResource::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 007253b0 mac 1051f070 SpellWater::Load(GameOSFile &)
bool SpellWater::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00725420 mac 1051ef90 SpellWater::Save(GameOSFile &)
bool SpellWater::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00725500 mac 10521390 SpellForest::ToBeDeleted(int)
void SpellForest::ToBeDeleted(int param_1)
{
}

// win1.41 00725540 mac 10521300 SpellForest::InitWithPos(GameThing *, MapCoords const &, SpellCastData *, PSysProcessInfo const &)
int SpellForest::InitWithPos(GameThing* param_1, const MapCoords* param_2, SpellCastData* param_3, const PSysProcessInfo* param_4)
{
    return 0;
}

// win1.41 007256c0 mac 10520ee0 SpellForest::SetMaxObjectsToCreate(long)
void SpellForest::SetMaxObjectsToCreate(int param_1)
{
}

// win1.41 007256f0 mac 10520e00 SpellForest::GetMaxObjectsToCreate(void)
int SpellForest::GetMaxObjectsToCreate()
{
    return 0;
}

// win1.41 00725730 mac 10520d80 SpellForest::HasEnoughChantsAndLifeForRecast(void)
void SpellForest::HasEnoughChantsAndLifeForRecast()
{
}

// win1.41 00725750 mac 10520cc0 SpellForest::AdjustSpellSeedPos(MapCoords *)
void SpellForest::AdjustSpellSeedPos(MapCoords* param_1)
{
}

// win1.41 00725830 mac 10520880 SpellForest::SpellEvent(SpellEventInfo const &)
void SpellForest::SpellEvent(const SpellEventInfo* param_1)
{
}

// win1.41 007259c0 mac 10520820 SpellForest::Process(void)
uint32_t SpellForest::Process()
{
    return 0;
}

// win1.41 007259e0 mac 10520730 SpellForest::CalculateCostToMaintain(void)
float SpellForest::CalculateCostToMaintain()
{
    return 0;
}

// win1.41 00725c90 mac 10520200 SpellForest::Save(GameOSFile &)
bool SpellForest::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00725d50 mac 105200d0 SpellForest::Load(GameOSFile &)
bool SpellForest::Load(GameOSFile& file)
{
    return 0;
}

// // win1.41 00725ea0 mac 10101da0 SpellSeedGraphic::operator new(unsigned long)
// SpellSeedGraphic* SpellSeedGraphic::operator new(uint32_t size)
// {
//     return 0;
// }

// win1.41 00725f30 mac 10524c10 GSpellIconInfo::GetMesh( const(void))
uint32_t GSpellIconInfo::GetMesh() const
{
    return 0;
}

// win1.41 00725f40 mac 10525c70 GSpellIconInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GSpellIconInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 00725fb0 mac 10525b60 GSpellIconInfo::_dt(void)
GSpellIconInfo::~GSpellIconInfo()
{
}

// win1.41 00725ff0 mac 105257f0 SpellIcon::SpellIcon(const MapCoords &, const GSpellIconInfo *, const GSpellSeedInfo *, float, float, float, int)
SpellIcon::SpellIcon(const MapCoords* coords, const GSpellIconInfo* icon_info, const GSpellSeedInfo* seed_info, float y_angle, float scale, float param_6, int param_7)
{
}

// win1.41 007260a0 mac 10525680 SpellIcon::ToBeDeleted(int)
void SpellIcon::ToBeDeleted(int param_1)
{
}

// win1.41 007260e0 mac 10525630 SpellIcon::InteractsWithPhysicsObjects(void)
bool SpellIcon::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 007260f0 mac 10525590 SpellIcon::SetToZero(void)
void SpellIcon::SetToZero()
{
}

// win1.41 00726160 mac 105253c0 SpellIcon::CallVirtualFunctionsForCreation(const MapCoords &)
void SpellIcon::CallVirtualFunctionsForCreation(const MapCoords* coords)
{
}

// win1.41 007261a0 mac 105252a0 SpellIcon::Create3DObject(void)
void SpellIcon::Create3DObject()
{
}

// win1.41 00726310 mac 10524d40 SpellIcon::IsSpellSeed(SPELL_SEED_TYPE)
bool32_t SpellIcon::IsSpellSeed(SPELL_SEED_TYPE type)
{
    return 0;
}
