#include "Workshop.h"
#include "WorshipSiteInfo.h"
#include "WorshipSite.h"
#include "PlannedWorshipSite.h"

// win1.41 007792b0 mac 101647d0 Workshop::Get3DType(void)
LH3DObject::ObjectType Workshop::Get3DType()
{
    return (LH3DObject::ObjectType)0;
}

// win1.41 007792c0 mac inlined Workshop::IsWorkshop_0(void)
bool Workshop::IsWorkshop()
{
    return 0;
}

// win1.41 007792d0 mac inlined Workshop::IsWorkshop_1(Creature *)
bool Workshop::IsWorkshop(Creature* param_1)
{
    return 0;
}

// win1.41 007792e0 mac 10164890 Workshop::CanActAsAContainer(Creature *)
bool Workshop::CanActAsAContainer(Creature* param_1)
{
    return 0;
}

// win1.41 007792f0 mac 101648e0 Workshop::IsStoragePit(Creature *)
bool Workshop::IsStoragePit(Creature* param_1)
{
    return 0;
}

// win1.41 00779300 mac 10164920 Workshop::GetSaveType(void)
uint32_t Workshop::GetSaveType()
{
    return 0;
}

// win1.41 00779310 mac 10164960 Workshop::GetDebugText(void)
char* Workshop::GetDebugText()
{
    return 0;
}

// win1.41 00779320 mac 101644f0 Workshop::_dt(void)
Workshop::~Workshop()
{
}

// win1.41 007793e0 mac 101643c0 Workshop::CallVirtualFunctionsForCreation(MapCoords const &)
void Workshop::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 00779480 mac 101642d0 Workshop::ToBeDeleted(int)
void Workshop::ToBeDeleted(int param_1)
{
}

// win1.41 007797f0 mac 10163a50 Workshop::Process(void)
uint32_t Workshop::Process()
{
    return 0;
}

// win1.41 00779af0 mac 10163550 Workshop::GetSpaceInStore(void)
int Workshop::GetSpaceInStore()
{
    return 0;
}

// win1.41 00779b60 mac 101633e0 Workshop::GetDesireToBeSupplied(void)
float Workshop::GetDesireToBeSupplied()
{
    return 0;
}

// win1.41 00779b90 mac 101632f0 Workshop::GetVisualWoodDesire(void)
float Workshop::GetVisualWoodDesire()
{
    return 0;
}

// win1.41 00779e00 mac 10162ee0 Workshop::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t Workshop::AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* param_5, int param_6)
{
    return 0;
}

// win1.41 00779ec0 mac 10162dc0 Workshop::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t Workshop::RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4)
{
    return 0;
}

// win1.41 00779f20 mac 10162d40 Workshop::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
bool Workshop::DeleteObjectAndTakeResource(Object* param_1, GInterfaceStatus* param_2)
{
    return 0;
}

// win1.41 00779f40 mac 101629d0 Workshop::Save(GameOSFile &)
bool Workshop::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0077a130 mac 101625f0 Workshop::Load(GameOSFile &)
bool Workshop::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0077a330 mac 101625a0 Workshop::ResolveLoad(void)
void Workshop::ResolveLoad()
{
}

// win1.41 0077a340 mac 10162470 Workshop::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t Workshop::GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2)
{
    return 0;
}

// win1.41 0077a610 mac 10161f90 Workshop::ScaffoldMoved(Scaffold *)
void Workshop::ScaffoldMoved(Scaffold* param_1)
{
}

// win1.41 0077a630 mac 10161f20 Workshop::GetShowNeedsPos(unsigned long, MapCoords *)
uint32_t Workshop::GetShowNeedsPos(uint32_t param_1, MapCoords* param_2)
{
    return 0;
}

// win1.41 0077a650 mac 10161e90 Workshop::IsResourceStore(RESOURCE_TYPE)
bool Workshop::IsResourceStore(RESOURCE_TYPE param_1)
{
    return 0;
}

// win1.41 0077a680 mac 10161d90 Workshop::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE, GInterfaceStatus &)
bool Workshop::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE param_1, GInterfaceStatus* param_2)
{
    return 0;
}

// win1.41 0077a6d0 mac 10161cd0 Workshop::CreateBuildingSite(void)
bool Workshop::CreateBuildingSite()
{
    return 0;
}

// win1.41 0077a8b0 mac 105b3c70 GWorshipSiteInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GWorshipSiteInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0077a920 mac 105b0900 GWorshipSiteInfo::_dt(void)
GWorshipSiteInfo::~GWorshipSiteInfo()
{
}

// win1.41 0077aa60 mac 105b32c0 WorshipSite::ToBeDeleted(int)
void WorshipSite::ToBeDeleted(int param_1)
{
}

// win1.41 0077ac10 mac 105b3210 WorshipSite::Built(void)
bool WorshipSite::Built()
{
    return 0;
}

// win1.41 0077ae10 mac 105b2d80 WorshipSite::RemovePotFromStructure(PotStructure *)
void WorshipSite::RemovePotFromStructure(PotStructure* param_1)
{
}

// win1.41 0077ae30 mac 105b2cf0 WorshipSite::GetInspectObjectPos(Villager *, MapCoords *)
bool WorshipSite::GetInspectObjectPos(Villager* param_1, MapCoords* param_2)
{
    return 0;
}

// win1.41 0077afc0 mac 105b28e0 WorshipSite::GetSpellIconPosFromSlot(unsigned long, float)
MapCoords* WorshipSite::GetSpellIconPosFromSlot(MapCoords* coords, uint32_t slot, float angle)
{
    return 0;
}

// win1.41 0077b080 mac 105b26e0 WorshipSite::GetSpellIconPos(short &)
MapCoords* WorshipSite::GetSpellIconPos(MapCoords* coords, int16_t* slot)
{
    return 0;
}

// win1.41 0077b1d0 mac 105b2440 WorshipSite::Process(void)
uint32_t WorshipSite::Process()
{
    return 0;
}

// win1.41 0077b9d0 mac 105b16a0 WorshipSite::CallVirtualFunctionsForCreation(MapCoords const &)
void WorshipSite::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 0077bd80 mac 105b1220 WorshipSite::GetResource(RESOURCE_TYPE)
uint32_t WorshipSite::GetResource(RESOURCE_TYPE param_1)
{
    return 0;
}

// win1.41 0077bdd0 mac 105b10a0 WorshipSite::IsBuilt(void)
bool WorshipSite::IsBuilt()
{
    return 0;
}

// win1.41 0077bef0 mac 105ab110 PlannedWorshipSite::GetSaveType(void)
uint32_t PlannedWorshipSite::GetSaveType()
{
    return 0;
}

// win1.41 0077bf00 mac 105ab150 PlannedWorshipSite::GetDebugText(void)
char* PlannedWorshipSite::GetDebugText()
{
    return 0;
}

// win1.41 0077bf10 mac 105ab030 PlannedWorshipSite::_dt(void)
PlannedWorshipSite::~PlannedWorshipSite()
{
}

// win1.41 0077bf30 mac 105b0ea0 PlannedWorshipSite::Save(GameOSFile &)
bool PlannedWorshipSite::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 0077bf90 mac 105b0dc0 PlannedWorshipSite::Load(GameOSFile &)
bool PlannedWorshipSite::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0077c120 mac 105b0620 WorshipSite::SaveObject(LHOSFile &, MapCoords const &)
uint32_t WorshipSite::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 0077c310 mac 105b0430 WorshipSite::CalculateDesireForFood(void)
float WorshipSite::CalculateDesireForFood()
{
    return 0;
}

// win1.41 0077c390 mac 105b0370 WorshipSite::CalculateDesireForRest(void)
float WorshipSite::CalculateDesireForRest()
{
    return 0;
}

// win1.41 0077c3d0 mac 105b0290 WorshipSite::CalculatePeopleHidingIndicator(void)
float WorshipSite::CalculatePeopleHidingIndicator()
{
    return 0;
}

// win1.41 0077c430 mac 105b01e0 WorshipSite::AddSpellIcon(WorshipSpellIcon *)
void WorshipSite::AddSpellIcon(WorshipSpellIcon* icon)
{
}

// win1.41 0077c5d0 mac 105afeb0 WorshipSite::GetResourcePos(RESOURCE_TYPE, long)
MapCoords* WorshipSite::GetResourcePos(RESOURCE_TYPE param_1, int param_2)
{
    return 0;
}

// win1.41 0077c5f0 mac 105afd80 WorshipSite::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t WorshipSite::AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* param_5, int param_6)
{
    return 0;
}

// win1.41 0077c670 mac 105afca0 WorshipSite::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t WorshipSite::RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4)
{
    return 0;
}

// win1.41 0077c6d0 mac 105afb90 WorshipSite::GetResourceNearestEdge(RESOURCE_TYPE, Object *, int)
MapCoords* WorshipSite::GetResourceNearestEdge(MapCoords* param_1, RESOURCE_TYPE param_2, Object* param_3, int param_4)
{
    return 0;
}

// win1.41 0077c910 mac 105af7f0 WorshipSite::AddTownSpells(Town *)
void WorshipSite::AddTownSpells(Town* town)
{
}

// win1.41 0077c9e0 mac 105af540 WorshipSite::AddSpellIconIfNecessary(SPELL_SEED_TYPE)
void WorshipSite::AddSpellIconIfNecessary(SPELL_SEED_TYPE seed_type)
{
}

// win1.41 0077cc90 mac 105aefc0 WorshipSite::GetSpecialPos(unsigned long, MapCoords *)
bool WorshipSite::GetSpecialPos(uint32_t param_1, MapCoords* param_2)
{
    return 0;
}

// win1.41 0077cd70 mac 105aef50 WorshipSite::GetShowNeedsPos(unsigned long, MapCoords *)
uint32_t WorshipSite::GetShowNeedsPos(uint32_t param_1, MapCoords* param_2)
{
    return 0;
}

// win1.41 0077ced0 mac inlined WorshipSite::GetArrivePos(MapCoords *)
MapCoords* WorshipSite::GetArrivePos(MapCoords* param_1)
{
    return 0;
}

// win1.41 0077cf30 mac 105aeaa0 WorshipSite::GetTotemPos(void)
MapCoords* WorshipSite::GetTotemPos(MapCoords* coords)
{
    return 0;
}

// win1.41 0077d000 mac 105ae860 WorshipSite::GetObjectCollide(void)
uint32_t WorshipSite::GetObjectCollide()
{
    return 0;
}

// win1.41 0077d030 mac 105ae820 WorshipSite::UpdateFrom3DPosition(void)
void WorshipSite::UpdateFrom3DPosition()
{
}

// win1.41 0077d0a0 mac 105ae5c0 WorshipSite::RemoveVillagerFromWorshipCount(Villager *)
void WorshipSite::RemoveVillagerFromWorshipCount(Villager* param_1)
{
}
