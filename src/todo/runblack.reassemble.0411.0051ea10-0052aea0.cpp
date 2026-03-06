#include "EditorHug.h"
#include "EditorIconBase.h"
#include "EffectInfo.h"
#include "MagicEffectInfo.h"
#include "EffectValues.h"
#include "FeatureInfo.h"
#include "PlannedFeature.h"
#include "Feature.h"
#include "WorshipSiteUpgrade.h"
#include "FlowersInfo.h"
#include "Flowers.h"
#include "FieldInfo.h"
#include "FieldTypeInfo.h"
#include "Field.h"
#include "FireFly.h"

// win1.41 0051f180 mac inlined EditorHug::ProcessTurn(void)
int EditorHug::ProcessTurn()
{
    return 0;
}

// win1.41 0051f200 mac inlined EditorHug::Display(void)
void EditorHug::Display()
{
}

// win1.41 0051f3b0 mac inlined EditorHug::PrssMouse(MouseInput *)
void EditorHug::PrssMouse(MouseInput* param_1)
{
}

// win1.41 0051f5b0 mac inlined EditorHug::ClickFunction(int, int, int)
void EditorHug::ClickFunction(int param_1, int param_2, int param_3)
{
}

// win1.41 00520300 mac 102b6f80 EditorIconBase::GetTextColor(void)
LH3DColor* EditorIconBase::GetTextColor()
{
    return 0;
}

// win1.41 00520310 mac 102b6fc0 EditorIconBase::GetActiveColor(void)
LH3DColor* EditorIconBase::GetActiveColor()
{
    return 0;
}

// win1.41 00520320 mac 102b60b0 EditorIconBase::GetInactiveColor(void)
LH3DColor* EditorIconBase::GetInactiveColor()
{
    return 0;
}

// win1.41 005203e0 mac 102b72e0 EditorIconBase::GetText(void)
char* EditorIconBase::GetText()
{
    return 0;
}

// win1.41 00520b10 mac 102b8040 EditorIconBase::DrawBox(int)
void EditorIconBase::DrawBox(int param_1)
{
}

// win1.41 00520f00 mac 102b77f0 EditorIconBase::DrawTextString(LH3DColor *, LHRegion *)
uint32_t EditorIconBase::DrawTextString(LH3DColor* color, LHRegion* region)
{
    return 0;
}

// win1.41 00520f50 mac 102b7700 EditorIconBase::DrawBubbleBox(void)
void EditorIconBase::DrawBubbleBox()
{
}

// win1.41 00520fe0 mac 102b7380 EditorIconBase::DrawOutlineBox
// ERROR building signature: substring not found

// win1.41 00524d40 mac 100cc740 GEffectInfo::GEffectInfo(void)
GEffectInfo::GEffectInfo()
{
}

// win1.41 00524d70 mac 100ccc90 GEffectInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GEffectInfo::GetBaseInfo(uint32_t* param_1)
{
    return 0;
}

// win1.41 00524dd0 mac 100cc6a0 GEffectInfo::_dt(void)
GEffectInfo::~GEffectInfo()
{
}

// win1.41 00524e00 mac 100ccad0 GMagicEffectInfo::GMagicEffectInfo(void)
GMagicEffectInfo::GMagicEffectInfo()
{
}

// win1.41 00524e30 mac 100ccbe0 GMagicEffectInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GMagicEffectInfo::GetBaseInfo(uint32_t* param_1)
{
    return 0;
}

// win1.41 00524ea0 mac 100cca30 GMagicEffectInfo::_dt(void)
GMagicEffectInfo::~GMagicEffectInfo()
{
}

// win1.41 00524f40 mac 10412ff0 EffectValues::_dt(void)
EffectValues::~EffectValues()
{
}

// win1.41 00525040 mac 100cc350 EffectValues::EffectValues(EFFECT_TYPE, float, GameThing *, float, GPlayer *)
EffectValues::EffectValues(EFFECT_TYPE type, float value, GameThing* source, float param_4, GPlayer* player)
{
}

// win1.41 00527320 mac 100a6900 GFeatureInfo::_dt(void)
GFeatureInfo::~GFeatureInfo()
{
}

// win1.41 00527480 mac 100d16a0 PlannedFeature::GetSaveType(void)
uint32_t PlannedFeature::GetSaveType()
{
    return 0;
}

// win1.41 00527490 mac 100d16e0 PlannedFeature::GetDebugText(void)
char* PlannedFeature::GetDebugText()
{
    return 0;
}

// win1.41 005274a0 mac 100d1600 PlannedFeature::_dt(void)
PlannedFeature::~PlannedFeature()
{
}

// win1.41 005274d0 mac 100d1080 PlannedFeature::CreatePlanned(float)
MultiMapFixed* PlannedFeature::CreatePlanned(float param_1)
{
    return 0;
}

// win1.41 00527550 mac 100d0ff0 PlannedFeature::Save(GameOSFile &)
bool PlannedFeature::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00527580 mac 100d0f60 PlannedFeature::Load(GameOSFile &)
bool PlannedFeature::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 005275b0 mac 100d0dc0 Feature::SaveObject(LHOSFile &, MapCoords const &)
uint32_t Feature::SaveObject(LHOSFile* param_1, const MapCoords* param_2)
{
    return 0;
}

// win1.41 005276c0 mac 10008370 Feature::GetScriptObjectType(void)
uint32_t Feature::GetScriptObjectType()
{
    return 0;
}

// win1.41 005276d0 mac 100d0c30 Feature::IsMushroom(Creature *)
uint32_t Feature::IsMushroom(Creature* param_1)
{
    return 0;
}

// win1.41 00527790 mac inlined WorshipSiteUpgrade::IsDrawBuilding(void)
bool WorshipSiteUpgrade::IsDrawBuilding()
{
    return 0;
}

// win1.41 005277d0 mac 100d0890 Feature::GetQueryFirstEnumText(void)
HELP_TEXT Feature::GetQueryFirstEnumText()
{
    return (HELP_TEXT)0;
}

// win1.41 00527820 mac 100d07b0 Feature::GetQueryLastEnumText(void)
HELP_TEXT Feature::GetQueryLastEnumText()
{
    return (HELP_TEXT)0;
}

// win1.41 005278b0 mac 100d15c0 GFlowersInfo::GetMesh( const(void))
uint32_t GFlowersInfo::GetMesh()
{
    return 0;
}

// win1.41 00527910 mac 100d06a0 GFlowersInfo::_dt(void)
GFlowersInfo::~GFlowersInfo()
{
}

// win1.41 00527980 mac 100d00c0 Flowers::Get3DType(void)
LH3DObject__ObjectType Flowers::Get3DType()
{
    return (LH3DObject__ObjectType)0;
}

// win1.41 00527990 mac 100d00f0 Flowers::GetSaveType(void)
uint32_t Flowers::GetSaveType()
{
    return 0;
}

// win1.41 005279a0 mac 100d0130 Flowers::GetDebugText(void)
char* Flowers::GetDebugText()
{
    return 0;
}

// win1.41 005279b0 mac 100d0030 Flowers::_dt(void)
Flowers::~Flowers()
{
}

// win1.41 00527a30 mac 100d0310 Flowers::CallVirtualFunctionsForCreation(MapCoords const &)
void Flowers::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 00527a80 mac 100d0170 Flowers::SaveObject(LHOSFile &, MapCoords const &)
uint32_t Flowers::SaveObject(LHOSFile* param_1, const MapCoords* param_2)
{
    return 0;
}

// win1.41 00527cc0 mac 100d5dc0 GFieldInfo::_dt(void)
GFieldInfo::~GFieldInfo()
{
}

// win1.41 00527d30 mac 100d18c0 GFieldTypeInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GFieldTypeInfo::GetBaseInfo(uint32_t* param_1)
{
    return 0;
}

// win1.41 00527da0 mac 100d1a40 GFieldTypeInfo::_dt(void)
GFieldTypeInfo::~GFieldTypeInfo()
{
}

// win1.41 00527dd0 mac 100d5910 Field::Field(MapCoords const &, GFieldTypeInfo const *, GAbodeInfo const *, Town *, float, float, int)
Field::Field(MapCoords* coords, GFieldTypeInfo* type_info, GAbodeInfo* abode_info, Town* town, float param_5, float param_6, int param_7)
{
}

// win1.41 00527f20 mac 100d5fa0 Field::GetCreatureBeliefType(void)
uint32_t Field::GetCreatureBeliefType()
{
    return 0;
}

// win1.41 00527f30 mac inlined Field::IsField_1(Creature *)
uint32_t Field::IsField_1(Creature* param_1)
{
    return 0;
}

// win1.41 00527f40 mac inlined Field::IsField_0(void)
uint32_t Field::IsField_0()
{
    return 0;
}

// win1.41 00527f50 mac 100d6050 Field::BenefitsFromHavingWaterSprinkledOnIt(Creature *)
uint32_t Field::BenefitsFromHavingWaterSprinkledOnIt(Creature* param_1)
{
    return 0;
}

// win1.41 00527f60 mac 100d60d0 Field::CanBePoodOn(Creature *)
uint32_t Field::CanBePoodOn(Creature* param_1)
{
    return 0;
}

// win1.41 00527f70 mac 100d6110 Field::CanBePickedUpByCreature(Creature *)
uint32_t Field::CanBePickedUpByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00527f80 mac 100d6160 Field::CanBeStompedOnByCreature(Creature *)
uint32_t Field::CanBeStompedOnByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00527f90 mac 100d61b0 Field::CanBeGivenToVillager(Creature *)
uint32_t Field::CanBeGivenToVillager(Creature* param_1)
{
    return 0;
}

// win1.41 00527fa0 mac 100d6200 Field::CanBePutInAStoragePit(Creature *)
uint32_t Field::CanBePutInAStoragePit(Creature* param_1)
{
    return 0;
}

// win1.41 00527fb0 mac 100d6250 Field::CanBeDestroyedByStoning(Creature *)
uint32_t Field::CanBeDestroyedByStoning(Creature* param_1)
{
    return 0;
}

// win1.41 00527fc0 mac 100d62a0 Field::CanBeExaminedByCreature(Creature *)
uint32_t Field::CanBeExaminedByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00527fd0 mac 100d62f0 Field::CanBeEatenByCreature(Creature *)
uint32_t Field::CanBeEatenByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00527fe0 mac 100d6340 Field::CanBeSleptNextToByCreature(Creature *)
uint32_t Field::CanBeSleptNextToByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 00527ff0 mac 100d6390 Field::IsBeingBuilt(Creature *)
uint32_t Field::IsBeingBuilt(Creature* param_1)
{
    return 0;
}

// win1.41 00528000 mac 100d63d0 Field::NeedsRepair(Creature *)
uint32_t Field::NeedsRepair(Creature* param_1)
{
    return 0;
}

// win1.41 00528010 mac 100d2c60 Field::GetResourceType(void)
RESOURCE_TYPE Field::GetResourceType()
{
    return (RESOURCE_TYPE)0;
}

// win1.41 00528020 mac 100d6410 Field::InteractsWithPhysicsObjects(void)
bool Field::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 00528030 mac 100d6450 Field::CanBecomeAPhysicsObject(void)
bool Field::CanBecomeAPhysicsObject()
{
    return 0;
}

// win1.41 00528040 mac 100d6490 Field::IsTuggable(void)
uint32_t Field::IsTuggable()
{
    return 0;
}

// win1.41 00528050 mac 100d64c0 Field::IsLockedInInteract(void)
bool Field::IsLockedInInteract()
{
    return 0;
}

// win1.41 00528070 mac 100d6540 Field::GetSaveType(void)
uint32_t Field::GetSaveType()
{
    return 0;
}

// win1.41 00528080 mac 100d6570 Field::GetDebugText(void)
char* Field::GetDebugText()
{
    return 0;
}

// win1.41 00528090 mac 100d5ed0 Field::_dt(void)
Field::~Field()
{
}

// win1.41 005280c0 mac 100d5880 Field::CreatureMustAvoid(Creature *)
bool Field::CreatureMustAvoid(Creature* param_1)
{
    return 0;
}

// win1.41 005280f0 mac 100d5830 Field::ToBeDeleted(int)
void Field::ToBeDeleted(int param_1)
{
}

// win1.41 00528280 mac 100d5130 Field::Create(MapCoords const &, GFieldTypeInfo const *, Town *, float, float, int)
Field* Field::Create(MapCoords* coords, GFieldTypeInfo* type_info, Town* town, float param_4, float param_5, int param_6)
{
    return 0;
}

// win1.41 00528570 mac 100370e0 Field::Draw(void)
void Field::Draw()
{
}

// win1.41 005288d0 mac 100d4d30 Field::GetFireGPHXDrawn(bool *, bool *, bool *, bool *)
void Field::GetFireGPHXDrawn(bool* param_1, bool* param_2, bool* param_3, bool* param_4)
{
}

// win1.41 00528900 mac 100d4c80 Field::IsEffectReceiver(EffectValues *)
uint32_t Field::IsEffectReceiver(EffectValues* param_1)
{
    return 0;
}

// win1.41 00528940 mac 100d4bf0 Field::GetPlayer(void)
GPlayer* Field::GetPlayer()
{
    return 0;
}

// win1.41 00528960 mac 100560a0 Field::GetTown(void)
Town* Field::GetTown()
{
    return 0;
}

// win1.41 00528a30 mac 100d4a10 Field::GetMeshRadius( const(void))
float Field::GetMeshRadius()
{
    return 0;
}

// win1.41 00528a40 mac 100d47b0 Field::CallVirtualFunctionsForCreation(MapCoords const &)
void Field::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 00528c80 mac inlined Field::GetDoorPos(MapCoords *)
MapCoords* Field::GetDoorPos(MapCoords* param_1)
{
    return 0;
}

// win1.41 00528ce0 mac 100d4250 Field::SaveObject(LHOSFile &, MapCoords const &)
uint32_t Field::SaveObject(LHOSFile* param_1, const MapCoords* param_2)
{
    return 0;
}

// win1.41 00528e50 mac 100d4190 GFieldTypeInfo::IsOkToCreateAtPos( const(MapCoords const &, float, float))
bool GFieldTypeInfo::IsOkToCreateAtPos(const MapCoords* param_1, float param_2, float param_3)
{
    return 0;
}

// win1.41 00528e80 mac 100d4150 Field::Get2DRadius(void)
float Field::Get2DRadius()
{
    return 0;
}

// win1.41 00528ef0 mac 100d40d0 Field::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t Field::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00528f30 mac 100d3f10 Field::ApplyWaterSpell(SpellWater *)
float Field::ApplyWaterSpell(SpellWater* param_1)
{
    return 0;
}

// win1.41 00529020 mac 100533b0 Field::Process(void)
uint32_t Field::Process()
{
    return 0;
}

// win1.41 005291a0 mac 100d3e50 Field::PlantCrop(MapCoords const &)
bool32_t Field::PlantCrop(const MapCoords* param_1)
{
    return 0;
}

// win1.41 00529210 mac 100d3de0 Field::GetPlantCropPos(void)
bool32_t Field::GetPlantCropPos()
{
    return 0;
}

// win1.41 00529290 mac inlined Field::IsTouching_2( const(MapCoords *))
bool Field::IsTouching_2(MapCoords* param_1)
{
    return 0;
}

// win1.41 00529330 mac inlined Field::GetArrivePos(MapCoords *)
MapCoords* Field::GetArrivePos(MapCoords* param_1)
{
    return 0;
}

// win1.41 00529350 mac 10000690 Field::GetFieldActivity(int)
int Field::GetFieldActivity(int param_1)
{
    return 0;
}

// win1.41 00529500 mac 10000730 Field::GetPercentFull(void)
float Field::GetPercentFull()
{
    return 0;
}

// win1.41 00529520 mac 100d3560 Field::InterfaceSetInMagicHand(GInterfaceStatus *)
uint32_t Field::InterfaceSetInMagicHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 005295a0 mac 100d3370 Field::RemoveFood(float)
float Field::RemoveFood(float param_1)
{
    return 0;
}

// win1.41 00529700 mac 100d3310 Field::GetFoodValue(void)
float Field::GetFoodValue()
{
    return 0;
}

// win1.41 00529730 mac 100d3050 Field::ProcessInInteract(GInterfaceStatus *)
uint32_t Field::ProcessInInteract(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00529900 mac 100d2ac0 Field::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
bool32_t Field::NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 005299e0 mac 100d2a40 Field::ValidForLockedSelectProcess(GInterfaceStatus *)
bool32_t Field::ValidForLockedSelectProcess(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00529a20 mac 100d29b0 Field::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
uint32_t Field::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1)
{
    return 0;
}

// win1.41 00529a60 mac 100d28b0 Field::NetworkUnfriendlyEndLockedSelect(void)
uint32_t Field::NetworkUnfriendlyEndLockedSelect()
{
    return 0;
}

// win1.41 00529af0 mac 100d2830 Field::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
uint32_t Field::NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 00529b10 mac 100d23a0 Field::Save(GameOSFile &)
bool Field::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00529d60 mac 100d1eb0 Field::Load(GameOSFile &)
bool Field::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00529fb0 mac 100d1db0 Field::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t Field::GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2)
{
    return 0;
}

// win1.41 00529ff0 mac inlined Field::CanBeDestroyedBySpell_1(Spell *)
uint32_t Field::CanBeDestroyedBySpell_1(Spell* param_1)
{
    return 0;
}

// win1.41 0052a000 mac 100d1d20 Field::GetOverwriteInteractableToolTip(void)
uint32_t Field::GetOverwriteInteractableToolTip()
{
    return 0;
}

// win1.41 0052a010 mac 100d1c70 Field::DestroyedByEffect(GPlayer *, float)
uint32_t Field::DestroyedByEffect(GPlayer* param_1, float param_2)
{
    return 0;
}

// win1.41 0052a050 mac 100d1c00 Field::ReduceLifeDueToBurning(float, GPlayer *)
void Field::ReduceLifeDueToBurning(float param_1, GPlayer* param_2)
{
}

// win1.41 0052a0a0 mac 100d1b50 Field::ReduceLife(float, GPlayer *)
void Field::ReduceLife(float param_1, GPlayer* param_2)
{
}

// win1.41 0052a1a0 mac 100da240 FireFly::InteractsWithPhysicsObjects(void)
bool FireFly::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 0052a1b0 mac 100da1f0 FireFly::ReactToPhysicsImpact(PhysicsObject *, bool)
void FireFly::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2)
{
}

// win1.41 0052a1c0 mac 100da1b0 FireFly::CanBecomeAPhysicsObject(void)
bool FireFly::CanBecomeAPhysicsObject()
{
    return 0;
}

// win1.41 0052a1d0 mac 100da180 FireFly::IsMoving( const(void))
bool FireFly::IsMoving()
{
    return 0;
}

// win1.41 0052a200 mac 100d9f20 FireFly::Create(MapCoords const &)
FireFly* FireFly::Create(MapCoords* coord)
{
    return 0;
}

// win1.41 0052a280 mac 100d9e20 FireFly::FireFly(const MapCoords&)
FireFly::FireFly(MapCoords* coords)
{
}

// win1.41 0052a2f0 mac 100d6690 FireFly::GetSaveType(void)
uint32_t FireFly::GetSaveType()
{
    return 0;
}

// win1.41 0052a300 mac 100d66d0 FireFly::GetDebugText(void)
char* FireFly::GetDebugText()
{
    return 0;
}

// win1.41 0052a310 mac 100d9be0 FireFly::_dt(void)
FireFly::~FireFly()
{
}

// win1.41 0052a340 mac 100d9e04 FireFly::FireFly(void)
FireFly::FireFly()
{
}

// win1.41 0052a4c0 mac 100d9ab0 FireFly::ToBeDeleted(int)
void FireFly::ToBeDeleted(int param_1)
{
}

// win1.41 0052a510 mac 100d9950 FireFly::CallVirtualFunctionsForCreation(MapCoords const &)
void FireFly::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 0052aa90 mac 100d9130 FireFly::Draw(void)
void FireFly::Draw()
{
}
