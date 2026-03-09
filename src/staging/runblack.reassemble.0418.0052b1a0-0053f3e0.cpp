#include "FireFly.h"
#include "FishFarmInfo.h"
#include "FishFarm.h"
#include "MultiMapFixed.h"
#include "SingleMapFixedInfo.h"
#include "MultiMapFixedInfo.h"
#include "Flock.h"
#include "FootballPositionInfo.h"
#include "Football.h"
#include "Villager.h"
#include "FootpathNode.h"
#include "Footpath.h"
#include "FootpathLink.h"
#include "FootpathLinkSave.h"
#include "FootpathFinder.h"
#include "ForestInfo.h"
#include "Forest.h"
#include "FrontEnd.h"
#include "NewProfileBox.h"
#include "TattooEditor.h"
#include "ProfileEditor.h"
#include "MainMenu.h"
#include "SkipBox.h"
#include "EndGameBox.h"
#include "Plasma.h"
#include "LoadingBox.h"
#include "EditingDebugBox.h"
#include "RegisterBox.h"

// win1.41 0052b870 mac 100d7020 FireFly::Save(GameOSFile &)
bool FireFly::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0052bbc0 mac 100d6850 FireFly::Load(GameOSFile &)
bool FireFly::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0052bf10 mac 100d6710 FireFly::SaveObject(LHOSFile &, MapCoords const &)
uint32_t FireFly::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 0052c2e0 mac 100da3d0 GFishFarmInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GFishFarmInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0052c330 mac 100da430 GFishFarmInfo::_dt(void)
GFishFarmInfo::~GFishFarmInfo()
{
}

// win1.41 0052c360 mac 100dd070 FishFarm::FishFarm(MapCoords const &, GFishFarmInfo const *, Town *)
FishFarm::FishFarm(MapCoords* coords, GFishFarmInfo* info, Town* town)
{
}

// win1.41 0052c450 mac 100dac20 FishFarm::GetTown(void)
Town* FishFarm::GetTown()
{
    return 0;
}

// win1.41 0052c460 mac 100dd3e0 FishFarm::CreatureMustAvoid(Creature *)
bool FishFarm::CreatureMustAvoid(Creature* param_1)
{
    return 0;
}

// win1.41 0052c470 mac 100dc730 FishFarm::Get2DRadius(void)
float FishFarm::Get2DRadius()
{
    return 0;
}

// win1.41 0052c480 mac 100dd430 FishFarm::GetMeshRadius( const(void))
float FishFarm::GetMeshRadius()
{
    return 0;
}

// win1.41 0052c490 mac inlined FishFarm::GetArrivePos(MapCoords *)
MapCoords* FishFarm::GetArrivePos(MapCoords* param_1)
{
    return 0;
}

// win1.41 0052c4b0 mac 100dd510 FishFarm::InteractsWithPhysicsObjects(void)
bool FishFarm::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 0052c4c0 mac 100dd560 FishFarm::ConvertToPlanned(void)
PlannedMultiMapFixed* FishFarm::ConvertToPlanned()
{
    return 0;
}

// win1.41 0052c4d0 mac 100dd5a0 FishFarm::GetCreatureBeliefType(void)
uint32_t FishFarm::GetCreatureBeliefType()
{
    return 0;
}

// win1.41 0052c4e0 mac 100dd5e0 FishFarm::CanBePoodOn(Creature *)
bool FishFarm::CanBePoodOn(Creature* param_1)
{
    return 0;
}

// win1.41 0052c4f0 mac 100dd620 FishFarm::CanBePickedUpByCreature(Creature *)
bool FishFarm::CanBePickedUpByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 0052c500 mac 100dd670 FishFarm::CanBeStompedOnByCreature(Creature *)
bool FishFarm::CanBeStompedOnByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 0052c510 mac 100dd6c0 FishFarm::CanBeGivenToVillager(Creature *)
bool FishFarm::CanBeGivenToVillager(Creature* param_1)
{
    return 0;
}

// win1.41 0052c520 mac 100dd710 FishFarm::CanBePutInAStoragePit(Creature *)
bool FishFarm::CanBePutInAStoragePit(Creature* param_1)
{
    return 0;
}

// win1.41 0052c530 mac 100dd760 FishFarm::CanBeDestroyedByStoning(Creature *)
bool FishFarm::CanBeDestroyedByStoning(Creature* param_1)
{
    return 0;
}

// win1.41 0052c540 mac 100dd7b0 FishFarm::CanBeExaminedByCreature(Creature *)
bool FishFarm::CanBeExaminedByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 0052c550 mac 100dd800 FishFarm::CanBeEatenByCreature(Creature *)
bool FishFarm::CanBeEatenByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 0052c560 mac 100dd850 FishFarm::CanBeSleptNextToByCreature(Creature *)
bool FishFarm::CanBeSleptNextToByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 0052c570 mac 100dd8a0 FishFarm::IsBeingBuilt(Creature *)
bool FishFarm::IsBeingBuilt(Creature* param_1)
{
    return 0;
}

// win1.41 0052c580 mac 100dd8e0 FishFarm::NeedsRepair(Creature *)
bool FishFarm::NeedsRepair(Creature* param_1)
{
    return 0;
}

// win1.41 0052c590 mac 100dd920 FishFarm::IsLockedInInteract(void)
bool FishFarm::IsLockedInInteract()
{
    return 0;
}

// win1.41 0052c5a0 mac 100dd960 FishFarm::GetSaveType(void)
uint32_t FishFarm::GetSaveType()
{
    return 0;
}

// win1.41 0052c5b0 mac 100dd9a0 FishFarm::GetDebugText(void)
char* FishFarm::GetDebugText()
{
    return 0;
}

// win1.41 0052c5c0 mac 100dcf40 FishFarm::_dt(void)
FishFarm::~FishFarm()
{
}

// win1.41 0052c690 mac 100dced0 FishFarm::ToBeDeleted(int)
void FishFarm::ToBeDeleted(int param_1)
{
}

// win1.41 0052c830 mac 10025a30 FishFarm::Draw(void)
void FishFarm::Draw()
{
}

// win1.41 0052c840 mac 100dc810 FishFarm::GetHeightForHandAboveInteractObject(void)
float FishFarm::GetHeightForHandAboveInteractObject()
{
    return 0;
}

// win1.41 0052c850 mac 100dc770 FishFarm::GetPlayer(void)
GPlayer* FishFarm::GetPlayer()
{
    return 0;
}

// win1.41 0052c980 mac 100dc470 FishFarm::IsObjectInMap(void)
bool FishFarm::IsObjectInMap()
{
    return 0;
}

// win1.41 0052ca10 mac 100dc3c0 FishFarm::InsertMapObject(void)
void FishFarm::InsertMapObject()
{
}

// win1.41 0052ca70 mac 100dc310 FishFarm::RemoveMapObject(void)
void FishFarm::RemoveMapObject()
{
}

// win1.41 0052cad0 mac 1009a360 FishFarm::GetMapChild(MapCell const &)
Object* FishFarm::GetMapChild(const MapCell* param_1)
{
    return 0;
}

// win1.41 0052cb70 mac 100dc1a0 FishFarm::SetMapChild(Object *, MapCell *)
void FishFarm::SetMapChild(Object* param_1, MapCell* param_2)
{
}

// win1.41 0052cc10 mac 100dbd10 FishFarm::CallVirtualFunctionsForCreation(MapCoords const &)
void FishFarm::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 0052cf20 mac 100dbc20 FishFarm::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t FishFarm::RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4)
{
    return 0;
}

// win1.41 0052cf40 mac inlined FishFarm::GetDoorPos(MapCoords *)
MapCoords* FishFarm::GetDoorPos(MapCoords* param_1)
{
    return 0;
}

// win1.41 0052cf90 mac 100db980 FishFarm::SaveObject(LHOSFile &, MapCoords const &)
uint32_t FishFarm::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 0052d100 mac 100db8c0 GFishFarmInfo::IsOkToCreateAtPos( const(MapCoords const &, float, float))
bool GFishFarmInfo::IsOkToCreateAtPos(const MapCoords* param_1, float param_2, float param_3)
{
    return 0;
}

// win1.41 0052d130 mac 1005f370 FishFarm::Process(void)
uint32_t FishFarm::Process()
{
    return 0;
}

// win1.41 0052d1e0 mac 100626c0 FishFarm::GetFoodValue(FOOD_TYPE)
float FishFarm::GetFoodValue(FOOD_TYPE param_1)
{
    return 0;
}

// win1.41 0052d3b0 mac 100db1a0 FishFarm::Save(GameOSFile &)
bool FishFarm::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0052d4f0 mac 100daf80 FishFarm::Load(GameOSFile &)
bool FishFarm::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0052d670 mac 100daed0 FishFarm::ValidForPlaceInHand(GInterfaceStatus *)
bool FishFarm::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 0052d6b0 mac 100dadc0 FishFarm::InterfaceSetInMagicHand(GInterfaceStatus *)
bool FishFarm::InterfaceSetInMagicHand(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 0052d720 mac 100dacf0 FishFarm::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t FishFarm::GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2)
{
    return 0;
}

// win1.41 0052d750 mac 100dac90 FishFarm::ValidForLockedSelectProcess(GInterfaceStatus *)
bool32_t FishFarm::ValidForLockedSelectProcess(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 0052d760 mac 100dac50 FishFarm::GetResourceType(void)
RESOURCE_TYPE FishFarm::GetResourceType()
{
    return (RESOURCE_TYPE)0;
}

// win1.41 0052d770 mac 100da990 FishFarm::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
bool32_t FishFarm::NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 0052d880 mac 100da930 FishFarm::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
bool FishFarm::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1)
{
    return 0;
}

// win1.41 0052d890 mac 100da8e0 FishFarm::NetworkUnfriendlyEndLockedSelect(void)
bool FishFarm::NetworkUnfriendlyEndLockedSelect()
{
    return 0;
}

// win1.41 0052d8a0 mac 100da7c0 FishFarm::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
bool FishFarm::NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 0052d950 mac 100da4d0 FishFarm::ProcessInInteract(GInterfaceStatus *)
uint32_t FishFarm::ProcessInInteract(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 0052dbc0 mac 10038060 MultiMapFixed::CompareMultiChilds(void const *, void const *)
int MultiMapFixed::CompareMultiChilds(MultiChild* param_1, MultiChild* param_2)
{
    return 0;
}

// win1.41 0052dc10 mac inlined MultiMapFixed::SortChildren(void)
void MultiMapFixed::SortChildren()
{
}

// win1.41 0052dc30 mac 100380f0 MultiMapFixed::SortedMultiChildFind(MapCell const &)
MultiChild* MultiMapFixed::SortedMultiChildFind(const MapCell* cell)
{
    return 0;
}

// win1.41 0052dcd0 mac 100c3840 GSingleMapFixedInfo::GetMesh( const(void))
uint32_t GSingleMapFixedInfo::GetMesh() const
{
    return 0;
}

// win1.41 0052dce0 mac 100e3150 GSingleMapFixedInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GSingleMapFixedInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0052dd50 mac 100e2210 GSingleMapFixedInfo::_dt(void)
GSingleMapFixedInfo::~GSingleMapFixedInfo()
{
}

// win1.41 0052e1a0 mac 100e16a0 MultiMapFixed::MultiMapFixed(void)
MultiMapFixed::MultiMapFixed()
{
}

// win1.41 0052e1c0 mac 100e13a0 MultiMapFixed::_dt(void)
MultiMapFixed::~MultiMapFixed()
{
}

// win1.41 0052e1e0 mac 100e1460 MultiMapFixed::MultiMapFixed(MapCoords const &, GMultiMapFixedInfo const *, float, float, float, int)
MultiMapFixed::MultiMapFixed(const MapCoords& coords, const GMultiMapFixedInfo* info, float y_angle, float scale, float food, int wood)
{
}

// win1.41 0052e2b0 mac 100e1160 MultiMapFixed::ToBeDeleted(int)
void MultiMapFixed::ToBeDeleted(int param_1)
{
}

// win1.41 0052e370 mac 1002c2e0 MultiMapFixed::GetDoorPos(void)
MapCoords MultiMapFixed::GetDoorPos()
{
    return MapCoords();
}

// win1.41 0052e400 mac 10033c30 MultiMapFixed::GetMapChild(MapCell const &)
Object* MultiMapFixed::GetMapChild(const MapCell* cell)
{
    return 0;
}

// win1.41 0052e420 mac 100e0ec0 MultiMapFixed::SetMapChild(Object *, MapCell *)
void MultiMapFixed::SetMapChild(Object* child, MapCell* cell)
{
}

// win1.41 0052e480 mac 100e0e80 MultiMapFixed::IsObjectInMap(void)
bool MultiMapFixed::IsObjectInMap()
{
    return 0;
}

// win1.41 0052e490 mac 100e0d80 MultiMapFixed::IsObjectFullyInMap(void)
bool MultiMapFixed::IsObjectFullyInMap()
{
    return 0;
}

// win1.41 0052e4f0 mac 100e0cd0 MultiMapFixed::MoveMapObject(MapCoords const &)
int MultiMapFixed::MoveMapObject(const MapCoords* param_2)
{
    return 0;
}

// win1.41 0052e650 mac 100e0690 MultiMapFixed::InsertMapObject(void)
void MultiMapFixed::InsertMapObject()
{
}

// win1.41 0052e7b0 mac 100e0580 MultiMapFixed::RemoveMapObject(void)
void MultiMapFixed::RemoveMapObject()
{
}

// win1.41 0052e840 mac 100e04f0 MultiMapFixed::CheckMapObject(void)
void MultiMapFixed::CheckMapObject()
{
}

// win1.41 0052e890 mac 100e0240 MultiMapFixed::CallVirtualFunctionsForCreation(const MapCoords&)
void MultiMapFixed::CallVirtualFunctionsForCreation(const MapCoords* coords)
{
}

// win1.41 0052ea50 mac 100e0160 MultiMapFixed::AllocateMultiChild(void)
void MultiMapFixed::AllocateMultiChild()
{
}

// win1.41 0052eb60 mac 100dffe0 GMultiMapFixedInfo::IsOkToCreateAtPos(const MapCoords&, float, float) const
bool GMultiMapFixedInfo::IsOkToCreateAtPos(const MapCoords& pos, float param_2, float param_3)
{
    return 0;
}

// win1.41 0052ebb0 mac 100dfda0 MultiMapFixed::Built(void)
bool MultiMapFixed::Built()
{
    return 0;
}

// win1.41 0052ec60 mac 100dfd40 MultiMapFixed::StartOnFire(void)
void MultiMapFixed::StartOnFire()
{
}

// win1.41 0052ec70 mac 100dfca0 MultiMapFixed::Repaired(void)
bool MultiMapFixed::Repaired()
{
    return 0;
}

// win1.41 0052eca0 mac 1004af20 MultiMapFixed::GetInfluence(void)
float MultiMapFixed::GetInfluence()
{
    return 0;
}

// win1.41 0052ece0 mac 100df410 MultiMapFixed::GetDesireToBeRepaired(void)
float MultiMapFixed::GetDesireToBeRepaired()
{
    return 0;
}

// win1.41 0052ed40 mac 100df2d0 MultiMapFixed::BuildBy(float)
void MultiMapFixed::BuildBy(float param_1)
{
}

// win1.41 0052ee10 mac 100df0c0 MultiMapFixed::AddFootpath(GFootpath *)
uint32_t MultiMapFixed::AddFootpath(GFootpath* footpath)
{
    return 0;
}

// win1.41 0052ee80 mac 100df010 MultiMapFixed::RemoveFootpath(GFootpath *)
uint32_t MultiMapFixed::RemoveFootpath(GFootpath* param_1)
{
    return 0;
}

// win1.41 0052eeb0 mac 100defc0 MultiMapFixed::GetNearestPathTo(MapCoords const &, float, int)
uint32_t MultiMapFixed::GetNearestPathTo(const MapCoords* param_1, float param_2, int param_3)
{
    return 0;
}

// win1.41 0052eec0 mac 1009b530 MultiMapFixed::UseFootpathIfNecessary(Living *, MapCoords const &, unsigned char)
void MultiMapFixed::UseFootpathIfNecessary(Living* param_1, const MapCoords* param_2, unsigned char param_3)
{
}

// win1.41 0052ef10 mac 100dee90 MultiMapFixed::SaveObject(LHOSFile &, MapCoords const &)
size_t MultiMapFixed::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 0052ef70 mac 1005fb60 MultiMapFixed::IsFunctional(void)
bool MultiMapFixed::IsFunctional()
{
    return 0;
}

// win1.41 0052efc0 mac 100dedd0 MultiMapFixed::GetPercentRepairedForNonFunctional(void)
float MultiMapFixed::GetPercentRepairedForNonFunctional()
{
    return 0;
}

// win1.41 0052efd0 mac 100ded00 MultiMapFixed::GetPercentForDrawBuilding(void)
float MultiMapFixed::GetPercentForDrawBuilding()
{
    return 0;
}

// win1.41 0052f010 mac 100debc0 MultiMapFixed::GetPercentRepairedFromWhenDamaged(void)
float MultiMapFixed::GetPercentRepairedFromWhenDamaged()
{
    return 0;
}

// win1.41 0052f0c0 mac 10040f00 MultiMapFixed::IsDrawBuilding(void)
bool MultiMapFixed::IsDrawBuilding()
{
    return 0;
}

// win1.41 0052f0d0 mac 100de940 MultiMapFixed::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t MultiMapFixed::GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager)
{
    return 0;
}

// win1.41 0052f160 mac 100de8b0 MultiMapFixed::RemovePotFromStructure(PotStructure *)
void MultiMapFixed::RemovePotFromStructure(PotStructure* structure)
{
}

// win1.41 0052f180 mac 100de800 MultiMapFixed::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t MultiMapFixed::AddResource(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* coords, int param_6)
{
    return 0;
}

// win1.41 0052f1c0 mac 100de760 MultiMapFixed::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t MultiMapFixed::RemoveResource(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4)
{
    return 0;
}

// win1.41 0052f1f0 mac 100de6f0 MultiMapFixed::IsResourceStore(RESOURCE_TYPE)
bool MultiMapFixed::IsResourceStore(RESOURCE_TYPE type)
{
    return 0;
}

// win1.41 0052f210 mac 100de5e0 MultiMapFixed::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE, GInterfaceStatus &)
bool MultiMapFixed::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE type, GInterfaceStatus* status)
{
    return 0;
}

// win1.41 0052f250 mac 100de470 MultiMapFixed::Save(GameOSFile &)
bool MultiMapFixed::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0052f310 mac 100de310 MultiMapFixed::Load(GameOSFile &)
bool MultiMapFixed::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0052f3d0 mac 100de230 MultiMapFixed::InteractsWithPhysicsObjects(void)
bool MultiMapFixed::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 0052f460 mac 100de000 MultiMapFixed::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
bool MultiMapFixed::DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2)
{
    return 0;
}

// win1.41 0052f490 mac 100dded0 MultiMapFixed::CreatureMustAvoid(Creature *)
bool MultiMapFixed::CreatureMustAvoid(Creature* param_1)
{
    return 0;
}

// win1.41 0052f550 mac 100ddd70 MultiMapFixed::CreateCollideData(void)
void MultiMapFixed::CreateCollideData()
{
}

// win1.41 0052f590 mac 100ddc50 MultiMapFixed::CreateBuildingSite(void)
bool32_t MultiMapFixed::CreateBuildingSite()
{
    return 0;
}

// win1.41 0052f5e0 mac 10099940 MultiMapFixed::ReduceLife(float, GPlayer *)
void MultiMapFixed::ReduceLife(float value, GPlayer* player)
{
}

// win1.41 0052f6d0 mac 100ddab0 MultiMapFixed::ReleaseCollideData(void)
void MultiMapFixed::ReleaseCollideData()
{
}

// win1.41 0052f700 mac 10050020 MultiMapFixed::Process(void)
uint32_t MultiMapFixed::Process()
{
    return 0;
}

// win1.41 0052f780 mac 100e6ec0 Flock::Flock(MapCoords const &, GFlockInfo const *, GPlayer *, unsigned long)
Flock::Flock(MapCoords* coords, GFlockInfo* info, GPlayer* player, uint32_t param_4)
{
}

// win1.41 0052f860 mac 100e34b0 Flock::IsFlock( const(void))
bool Flock::IsFlock()
{
    return 0;
}

// win1.41 0052f870 mac 100e34e0 Flock::GetTown(void)
Town* Flock::GetTown()
{
    return 0;
}

// win1.41 0052f880 mac 100e3510 Flock::IsScriptContainer( const(void))
bool Flock::IsScriptContainer()
{
    return 0;
}

// win1.41 0052f890 mac 100e3550 Flock::GetText(void)
const char* Flock::GetText()
{
    return 0;
}

// win1.41 0052f8a0 mac 100e3580 Flock::GetCreatureBeliefType(void)
uint32_t Flock::GetCreatureBeliefType()
{
    return 0;
}

// win1.41 0052f8b0 mac 100e35c0 Flock::GetCreatureBeliefListType(void)
uint32_t Flock::GetCreatureBeliefListType()
{
    return 0;
}

// win1.41 0052f8c0 mac 100e3600 Flock::IsSuitableForCreatureActivity(void)
bool Flock::IsSuitableForCreatureActivity()
{
    return 0;
}

// win1.41 0052f8d0 mac 100e3650 Flock::IsActivityObjectWhichAngerAppliesTo(Creature *)
bool Flock::IsActivityObjectWhichAngerAppliesTo(Creature* param_1)
{
    return 0;
}

// win1.41 0052f8e0 mac 100e36b0 Flock::IsActivityObjectWhichCompassionAppliesTo(Creature *)
bool Flock::IsActivityObjectWhichCompassionAppliesTo(Creature* param_1)
{
    return 0;
}

// win1.41 0052f8f0 mac 100e3710 Flock::IsActivityObjectWhichPlayfulnessAppliesTo(Creature *)
bool Flock::IsActivityObjectWhichPlayfulnessAppliesTo(Creature* param_1)
{
    return 0;
}

// win1.41 0052f900 mac 100e3770 Flock::GetSaveType(void)
uint32_t Flock::GetSaveType()
{
    return 0;
}

// win1.41 0052f910 mac 100e37a0 Flock::GetDebugText(void)
char* Flock::GetDebugText()
{
    return 0;
}

// win1.41 0052f920 mac 100e3420 Flock::_dt(void)
Flock::~Flock()
{
}

// win1.41 0052fc20 mac 100e6220 Flock::SetDomainCentrePos(MapCoords const &)
void Flock::SetDomainCentrePos(const MapCoords* param_1)
{
}

// win1.41 0052ffb0 mac 100e5630 Flock::ToBeDeleted(int)
void Flock::ToBeDeleted(int param_1)
{
}

// win1.41 00530490 mac 100e4a70 Flock::GetScriptObjectType(void)
uint32_t Flock::GetScriptObjectType()
{
    return 0;
}

// win1.41 00530570 mac 100684b0 Flock::GetFlockPos(void)
MapCoords* Flock::GetFlockPos()
{
    return 0;
}

// win1.41 005305a0 mac 100e40b0 Flock::Save(GameOSFile &)
bool Flock::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00530930 mac 100e3880 Flock::Load(GameOSFile &)
bool Flock::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00530f00 mac 102bd7f0 GFootballPositionInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GFootballPositionInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 00530f60 mac 102bcb80 GFootballPositionInfo::_dt(void)
GFootballPositionInfo::~GFootballPositionInfo()
{
}

// win1.41 00530f80 mac 102bd510 Football::CallVirtualFunctionsForCreation(MapCoords const &)
void Football::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 00531180 mac 102bd4d0 Football::GetCreatureBeliefType(void)
uint32_t Football::GetCreatureBeliefType()
{
    return 0;
}

// win1.41 00531280 mac 102b8610 Football::IsFootball(void)
bool Football::IsFootball()
{
    return 0;
}

// win1.41 00531290 mac 102b8650 Football::IsRepaired(void)
bool Football::IsRepaired()
{
    return 0;
}

// win1.41 005312b0 mac 102b86c0 Football::IsBuilt(void)
bool Football::IsBuilt()
{
    return 0;
}

// win1.41 005312e0 mac 102b8760 Football::Get3DType(void)
LH3DObject::ObjectType Football::Get3DType()
{
    return (LH3DObject::ObjectType)0;
}

// win1.41 005312f0 mac 102b87a0 Football::CreatureMustAvoid(Creature *)
bool Football::CreatureMustAvoid(Creature* param_1)
{
    return 0;
}

// win1.41 00531310 mac 102b8830 Football::GetSaveType(void)
uint32_t Football::GetSaveType()
{
    return 0;
}

// win1.41 00531320 mac 102b8870 Football::GetDebugText(void)
char* Football::GetDebugText()
{
    return 0;
}

// win1.41 00531330 mac 102b8570 Football::_dt(void)
Football::~Football()
{
}

// win1.41 00531360 mac 102bd250 Football::ToBeDeleted(int)
void Football::ToBeDeleted(int param_1)
{
}

// win1.41 00531410 mac 102bd040 Football::GetBall(void)
void* Football::GetBall()
{
    return 0;
}

// win1.41 00531610 mac 102bccb0 Football::Draw(void)
void Football::Draw()
{
}

// win1.41 00531930 mac 102bcad0 Football::InteractsWithPhysicsObjects(void)
bool Football::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 00531e40 mac 102bc020 Football::ReduceLife(float, GPlayer *)
void Football::ReduceLife(float param_1, GPlayer* param_2)
{
}

// win1.41 00532190 mac 102bb9b0 Football::SetVillagerActivity(Villager *)
uint32_t Football::SetVillagerActivity(Villager* param_1)
{
    return 0;
}

// win1.41 00532220 mac 102bb880 Football::GetVillagerActivityDesire(Villager *)
float Football::GetVillagerActivityDesire(Villager* param_1)
{
    return 0;
}

// win1.41 00532960 mac 102baa80 Football::IsPlayerOnHomeTeam(Villager *)
bool Football::IsPlayerOnHomeTeam(Villager* param_1)
{
    return 0;
}

// win1.41 00532c80 mac 102ba570 Football::GetGoalPosition(unsigned long)
void Football::GetGoalPosition(unsigned long param_1)
{
}

// win1.41 00532db0 mac 102ba4d0 Villager::IsPlayingFootball(Creature *)
bool Villager::IsPlayingFootball(Creature* param_1)
{
    return 0;
}

// win1.41 00532e00 mac 102ba3f0 Villager::IsPlayingFootballAndMySideHasJustScored(Creature *)
bool Villager::IsPlayingFootballAndMySideHasJustScored(Creature* param_1)
{
    return 0;
}

// win1.41 00532e50 mac 102ba300 Villager::IsPlayingFootballAndOtherSideHasJustScored(Creature *)
bool Villager::IsPlayingFootballAndOtherSideHasJustScored(Creature* param_1)
{
    return 0;
}

// win1.41 005332a0 mac 102b9230 Football::Save(GameOSFile &)
bool Football::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 005336e0 mac 102b89e0 Football::Load(GameOSFile &)
bool Football::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00533b30 mac inlined Football::GetDoorPos(MapCoords *)
MapCoords* Football::GetDoorPos(MapCoords* param_1)
{
    return 0;
}

// win1.41 00533e40 mac 102be320 Football::Process(void)
uint32_t Football::Process()
{
    return 0;
}

// win1.41 00534cf0 mac 100eed50 GFootpathNode::GFootpathNode(MapCoords const &, int, int)
GFootpathNode::GFootpathNode(MapCoords* coords, int param_2, int param_3)
{
}

// win1.41 00534d50 mac 100eeff0 GFootpathNode::GetSaveType(void)
uint32_t GFootpathNode::GetSaveType()
{
    return 0;
}

// win1.41 00534d60 mac 100ef030 GFootpathNode::GetDebugText(void)
char* GFootpathNode::GetDebugText()
{
    return 0;
}

// win1.41 00534d70 mac 100eef60 GFootpathNode::_dt(void)
GFootpathNode::~GFootpathNode()
{
}

// win1.41 00534dc0 mac 100eecb0 GFootpath::GFootpath(void)
GFootpath::GFootpath()
{
}

// win1.41 00534de0 mac 100ef210 GFootpath::GetSaveType(void)
uint32_t GFootpath::GetSaveType()
{
    return 0;
}

// win1.41 00534df0 mac 100ef250 GFootpath::GetDebugText(void)
char* GFootpath::GetDebugText()
{
    return 0;
}

// win1.41 00534e00 mac 100eeb80 GFootpath::_dt(void)
GFootpath::~GFootpath()
{
}

// win1.41 00534eb0 mac 100ee9b0 GFootpath::GFootpath(GameThingWithPos *, GameThingWithPos *)
GFootpath::GFootpath(GameThingWithPos* param_2, GameThingWithPos* param_3)
{
}

// win1.41 00534f00 mac 100ee7a0 GFootpath::ToBeDeleted(int)
void GFootpath::ToBeDeleted(int param_1)
{
}

// win1.41 00534fc0 mac 100ee4c0 GFootpath::AddPos(MapCoords const &)
void GFootpath::AddPos(MapCoords* coords)
{
}

// win1.41 005351a0 mac 100ee290 GFootpath::GetNextNode(GFootpathNode *, int)
GFootpathNode* GFootpath::GetNextNode(GFootpathNode* node, int backwards)
{
    return 0;
}

// win1.41 005351f0 mac 100ee190 GFootpath::GetNextPos(MapCoords const &, GFootpathNode *&, MapCoords &, int, float)
uint32_t GFootpath::GetNextPos(MapCoords* current_pos, GFootpathNode** next_node, MapCoords* next_pos, int backwards, float max_t)
{
    return 0;
}

// win1.41 00535270 mac 100ee0d0 GFootpath::GetNextPos(GFootpathNode *&, MapCoords &, int)
uint32_t GFootpath::GetNextPos(GFootpathNode** next_node, MapCoords* next_pos, int backwards)
{
    return 0;
}

// win1.41 005352c0 mac 100edfa0 GFootpath::GetNearestPos(MapCoords const &, int)
GFootpathNode* GFootpath::GetNearestPos(const MapCoords* coords, int param_3)
{
    return 0;
}

// win1.41 00535a80 mac inlined GFootpath::FUN_00535a80(Point2D *, MultiMapFixed *, float, float)
void GFootpath::FUN_00535a80(Point2D* param_1, MultiMapFixed* param_2, float point_x, float point_y)
{
}

// win1.41 00535e00 mac 100ece10 GFootpath::Save(GameOSFile &)
bool GFootpath::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00535f10 mac 100ecb10 GFootpath::Load(GameOSFile &)
bool GFootpath::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00536010 mac 100ec980 GFootpathLink::ToBeDeleted(int)
void GFootpathLink::ToBeDeleted(int param_1)
{
}

// win1.41 00536070 mac 100ec840 GFootpathLink::AddFootpath(GFootpath *)
uint32_t GFootpathLink::AddFootpath(GFootpath* param_1)
{
    return 0;
}

// win1.41 005360b0 mac 100ec730 GFootpathLink::RemoveFootpath(GFootpath *)
uint32_t GFootpathLink::RemoveFootpath(GFootpath* param_1)
{
    return 0;
}

// win1.41 00536110 mac 100ec590 GFootpathLink::GetNearestPathTo(MapCoords const &, MapCoords const &, float, int &, GFootpathNode **)
GFootpath* GFootpathLink::GetNearestPathTo(const MapCoords* param_1, const MapCoords* param_2, float param_3, int* param_4, GFootpathNode** param_5)
{
    return 0;
}

// win1.41 005361f0 mac 100ec3e0 GFootpathLink::GetNearestPathToQuick(MapCoords const &, MapCoords const &, float, int &, GFootpathNode **)
GFootpath* GFootpathLink::GetNearestPathToQuick(const MapCoords* param_1, const MapCoords* param_2, float param_3, int* param_4, GFootpathNode** param_5)
{
    return 0;
}

// win1.41 005362e0 mac 100ebe90 GFootpathLink::UseFootpathIfNecessary(Living *, MapCoords const &, unsigned char, GameThingWithPos *)
uint32_t GFootpathLink::UseFootpathIfNecessary(Living* living, const MapCoords* coord, uint32_t param_4, GameThingWithPos* game_thing_with_pos)
{
    return 0;
}

// win1.41 005364f0 mac 100ebc00 GFootpathLink::Save(GameOSFile &)
bool GFootpathLink::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 005365a0 mac 100eb8e0 GFootpathLink::Load(GameOSFile &)
bool GFootpathLink::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00536fa0 mac inlined GFootpathLinkSave::FUN_00536fa0(void)
void GFootpathLinkSave::FUN_00536fa0()
{
}

// win1.41 005370a0 mac 100eb5c0 GFootpathLinkSave::Load(GameOSFile &)
bool GFootpathLinkSave::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 005371e0 mac 100ef0b0 GFootpathLinkSave::GetDebugText(void)
char* GFootpathLinkSave::GetDebugText()
{
    return 0;
}

// win1.41 005371f0 mac 100eb6b0 GFootpathLinkSave::_dt(void)
GFootpathLinkSave::~GFootpathLinkSave()
{
}

// win1.41 00537290 mac 100ea6f0 GFootpath::SendFootpathsAroundObsticle(float, MapCoords const &)
void GFootpath::SendFootpathsAroundObsticle(float radius, MapCoords* coords)
{
}

// win1.41 00538340 mac 100e95b0 GFootpath::ConvertCreaturePlanToFootpath(RPHolder &, RPlan &, GFootpathNode *, GFootpathNode *, MapCoords const &)
void GFootpath::ConvertCreaturePlanToFootpath(RPHolder* holder, RPlan* plan, GFootpathNode* start, GFootpathNode* end, MapCoords* coord)
{
}

// win1.41 005387d0 mac 100e93a0 GFootpath::AttemptRerenderFootpathWithCreatureRP(GFootpathNode *, GFootpathNode *, MapCoords const &)
uint32_t GFootpath::AttemptRerenderFootpathWithCreatureRP(GFootpathNode* start, GFootpathNode* end, MapCoords* coord)
{
    return 0;
}

// win1.41 00538970 mac 100e91f0 GFootpathNode::ToBeDeleted(int)
void GFootpathNode::ToBeDeleted(int param_1)
{
}

// win1.41 005389d0 mac 100e90a0 GFootpathNode::PurgeFollowerList(void)
void GFootpathNode::PurgeFollowerList()
{
}

// win1.41 00538b10 mac 100e8d10 GFootpathNode::ClearFromPreviousNode(void)
void GFootpathNode::ClearFromPreviousNode()
{
}

// win1.41 00538c10 mac 100e86f0 GFootpathNode::Load(GameOSFile &)
bool GFootpathNode::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00538d70 mac 100e83f0 GFootpathNode::Save(GameOSFile &)
bool GFootpathNode::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00538ea0 mac 100e83b0 GFootpathNode::ResolveLoad(void)
void GFootpathNode::ResolveLoad()
{
}

// win1.41 00538fd0 mac 100e70d0 GFootpathFinder::GetSaveType(void)
uint32_t GFootpathFinder::GetSaveType()
{
    return 0;
}

// win1.41 00538fe0 mac 100e7110 GFootpathFinder::GetDebugText(void)
char* GFootpathFinder::GetDebugText()
{
    return 0;
}

// win1.41 00538ff0 mac 100e7f30 GFootpathFinder::_dt(void)
GFootpathFinder::~GFootpathFinder()
{
}

// win1.41 00539040 mac 100e7dc0 GFootpathFinder::GameTurnProcess(void)
void GFootpathFinder::GameTurnProcess()
{
}

// win1.41 005390e0 mac 100e7ce0 GFootpathFinder::Load(GameOSFile &)
bool GFootpathFinder::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00539150 mac 100e7c00 GFootpathFinder::Save(GameOSFile &)
bool GFootpathFinder::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 005391c0 mac 100e78e0 GFootpathFinder::ToBeDeleted(int)
void GFootpathFinder::ToBeDeleted(int param_1)
{
}

// win1.41 00539240 mac 100e7760 GFootpathFinder::Done(void)
void GFootpathFinder::Done()
{
}

// win1.41 005392f0 mac 100e7150 GFootpathFinder::Init(void)
void GFootpathFinder::Init()
{
}

// win1.41 005399c0 mac 100f2980 GForestInfo::_dt(void)
GForestInfo::~GForestInfo()
{
}

// win1.41 00539a60 mac 100ef4a0 Forest::IsFunctional(void)
bool Forest::IsFunctional()
{
    return 0;
}

// win1.41 00539a80 mac 100ef580 Forest::GetCreatureBeliefType(void)
uint32_t Forest::GetCreatureBeliefType()
{
    return 0;
}

// win1.41 00539a90 mac 100ef5c0 Forest::GetCreatureBeliefListType(void)
uint32_t Forest::GetCreatureBeliefListType()
{
    return 0;
}

// win1.41 00539aa0 mac 100ef600 Forest::IsSuitableForCreatureActivity(void)
bool Forest::IsSuitableForCreatureActivity()
{
    return 0;
}

// win1.41 00539ab0 mac 100ef650 Forest::IsActivityObjectWhichAngerAppliesTo(Creature *)
bool Forest::IsActivityObjectWhichAngerAppliesTo(Creature* param_1)
{
    return 0;
}

// win1.41 00539ac0 mac 100ef6b0 Forest::GetText(void)
const char* Forest::GetText()
{
    return 0;
}

// win1.41 00539ad0 mac 100ef6e0 Forest::IsForest(void)
bool Forest::IsForest()
{
    return 0;
}

// win1.41 00539ae0 mac 100ef710 Forest::IsFootpathLink(void)
bool Forest::IsFootpathLink()
{
    return 0;
}

// win1.41 00539af0 mac 100ef750 Forest::GetFootpathLink(void)
GFootpathLink* Forest::GetFootpathLink()
{
    return 0;
}

// win1.41 00539b00 mac 100ef790 Forest::GetSaveType(void)
uint32_t Forest::GetSaveType()
{
    return 0;
}

// win1.41 00539b10 mac 100ef7d0 Forest::GetDebugText(void)
char* Forest::GetDebugText()
{
    return 0;
}

// win1.41 00539b20 mac 100ef2f0 Forest::_dt(void)
Forest::~Forest()
{
}

// win1.41 00539bd0 mac 100f2620 Forest::Forest(MapCoords const&, unsigned long)
Forest::Forest(const MapCoords* coords, uint32_t param_2)
{
}

// win1.41 00539c60 mac 100f2300 Forest::ToBeDeleted(int)
void Forest::ToBeDeleted(int param_1)
{
}

// win1.41 0053a310 mac 100f16f0 Forest::AddTree(Tree*)
void Forest::AddTree(Tree* tree)
{
}

// win1.41 0053abf0 mac 100f0a00 Forest::GetForestCentreTree(void)
Tree* Forest::GetForestCentreTree()
{
    return 0;
}

// win1.41 0053ac50 mac 100f08e0 Forest::AddFootpath(GFootpath *)
uint32_t Forest::AddFootpath(GFootpath* param_1)
{
    return 0;
}

// win1.41 0053acc0 mac 100f0830 Forest::RemoveFootpath(GFootpath *)
uint32_t Forest::RemoveFootpath(GFootpath* param_1)
{
    return 0;
}

// win1.41 0053acf0 mac 100f07e0 Forest::GetNearestPathTo(MapCoords const &, float, int)
uint32_t Forest::GetNearestPathTo(const MapCoords& param_1, float param_2, int param_3)
{
    return 0;
}

// win1.41 0053ad60 mac 100f05a0 Forest::UseFootpathIfNecessary(Living *, MapCoords const &, unsigned char)
void Forest::UseFootpathIfNecessary(Living* param_1, const MapCoords& param_2, unsigned char param_3)
{
}

// win1.41 0053ae40 mac 100efda0 Forest::Save(GameOSFile &)
bool Forest::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0053b070 mac 100ef950 Forest::Load(GameOSFile &)
bool Forest::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0053b4d0 mac 105c4d10 FrontEnd::Init(void)
void FrontEnd::Init()
{
}

// win1.41 0053bd10 mac 105c5f90 NewProfileBox::CanESCOut(void)
bool NewProfileBox::CanESCOut()
{
    return 0;
}

// win1.41 0053bd20 mac 105c5eb0 TattooEditor::CanESCOut(void)
bool TattooEditor::CanESCOut()
{
    return 0;
}

// win1.41 0053bd30 mac 105c5f30 ProfileEditor::CanESCOut(void)
bool ProfileEditor::CanESCOut()
{
    return 0;
}

// win1.41 0053bd50 mac 105c5ef0 MainMenu::CanESCOut(void)
bool MainMenu::CanESCOut()
{
    return 0;
}

// win1.41 0053bd60 mac 105c5e80 SkipBox::CanESCOut(void)
bool SkipBox::CanESCOut()
{
    return 0;
}

// win1.41 0053be30 mac 1031ba50 EndGameBox::CanESCOut(void)
bool EndGameBox::CanESCOut()
{
    return 0;
}

// win1.41 0053c450 mac 105c47d0 FrontEnd::SetCursorOn(void)
void FrontEnd::SetCursorOn()
{
}

// win1.41 0053c640 mac 105c4040 Plasma::Init(void)
void Plasma::Init()
{
}

// win1.41 0053c840 mac 105c3d50 Plasma::Render(int)
void Plasma::Render(int param_1)
{
}

// win1.41 0053ce70 mac 105c3cf0 FrontEnd::JustDoNewProfileBox(void)
void FrontEnd::JustDoNewProfileBox(FrontEnd* box)
{
}

// win1.41 0053ce80 mac 105c3a30 NewProfileBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void NewProfileBox::Init(uint32_t param_1, uint32_t param_2, DialogBoxInitCallback param_3)
{
}

// win1.41 0053d150 mac 105c39d0 NewProfileBox::Destroy(void)
void NewProfileBox::Destroy()
{
}

// win1.41 0053d160 mac 105c3890 NewProfileBox::InitControls(void)
void NewProfileBox::InitControls()
{
}

// win1.41 0053d4c0 mac 105c34f0 LoadingBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void LoadingBox::Init(uint32_t param_1, uint32_t param_2, DialogBoxInitCallback param_3)
{
}

// win1.41 0053d4f0 mac 105c3490 LoadingBox::Destroy(void)
void LoadingBox::Destroy()
{
}

// win1.41 0053d500 mac 105c3450 LoadingBox::InitControls(void)
void LoadingBox::InitControls()
{
}

// win1.41 0053d520 mac 105c3250 EditingDebugBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void EditingDebugBox::Init(uint32_t param_1, uint32_t param_2, DialogBoxInitCallback param_3)
{
}

// win1.41 0053d6f0 mac 105c31f0 EditingDebugBox::Destroy(void)
void EditingDebugBox::Destroy()
{
}

// win1.41 0053d700 mac 105c3130 EditingDebugBox::InitControls(void)
void EditingDebugBox::InitControls()
{
}

// win1.41 0053d7d0 mac 105c2d30 RegisterBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void RegisterBox::Init(uint32_t param_1, uint32_t param_2, DialogBoxInitCallback param_3)
{
}

// win1.41 0053db00 mac 105c2cd0 RegisterBox::Destroy(void)
void RegisterBox::Destroy()
{
}

// win1.41 0053db10 mac 105c2bd0 RegisterBox::InitControls(void)
void RegisterBox::InitControls()
{
}

// win1.41 0053dd30 mac 105c2560 ProfileEditor::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void ProfileEditor::Init(uint32_t param_1, uint32_t param_2, DialogBoxInitCallback param_3)
{
}

// win1.41 0053e210 mac 105c2500 ProfileEditor::Destroy(void)
void ProfileEditor::Destroy()
{
}

// win1.41 0053e380 mac 105c2140 ProfileEditor::InitControls(void)
void ProfileEditor::InitControls()
{
}
