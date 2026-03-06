#include "GestureSystemData.h"
#include "GestureSystemDataList.h"
#include "Persistent.h"
#include "Global.h"
#include "GlobalGameLists.h"
#include "Graveyard.h"
#include "GroupBehaviour.h"
#include "DancePathInfo.h"

// win1.41 00579690 mac 1042dc90 GestureSystemData::_dt(void)
GestureSystemData::~GestureSystemData()
{
}

// win1.41 00579af0 mac 1032b530 GestureSystemDataList::Load(char *)
bool GestureSystemDataList::Load(char* param_1)
{
    return 0;
}

// win1.41 00580a10 mac 102cb7a0 Persistent::VirtualFunc(void)
void Persistent::VirtualFunc()
{
}

// win1.41 00580a20 mac 102cb7e0 Persistent::OnLoaded(void)
void Persistent::OnLoaded()
{
}

// win1.41 00580a30 mac 102cb810 Persistent::DefineProperties(PropertyList *)
void Persistent::DefineProperties(PropertyList* param_1)
{
}

// win1.41 00580a40 mac 102cbd80 Persistent::_dt(void)
Persistent::~Persistent()
{
}

// win1.41 005910f0 mac 1032d3a0 GGlobal::DisplayPlayerTextMessages(void)
void GGlobal::DisplayPlayerTextMessages()
{
}

// win1.41 00591370 mac 10059120 GlobalGameLists::Process(void)
void GlobalGameLists::Process()
{
}

// win1.41 005914d0 mac 10336280 GlobalGameLists::Dump(void)
void GlobalGameLists::Dump()
{
}

// win1.41 00595cb0 mac 100f4db0 Graveyard::ToBeDeleted(int)
void Graveyard::ToBeDeleted(int param_1)
{
}

// win1.41 00595cd0 mac 100f4d60 Graveyard::InteractsWithPhysicsObjects(void)
bool Graveyard::InteractsWithPhysicsObjects()
{
    return 0;
}

// win1.41 00595ce0 mac 100f4c10 Graveyard::DeleteDependancys(void)
void Graveyard::DeleteDependancys()
{
}

// win1.41 00595dd0 mac 100f4a40 Graveyard::CallVirtualFunctionsForCreation(MapCoords const &)
void Graveyard::CallVirtualFunctionsForCreation(const MapCoords* param_1)
{
}

// win1.41 00595e00 mac 100f4870 Graveyard::MakeFunctional(void)
void Graveyard::MakeFunctional()
{
}

// win1.41 00595ee0 mac 100f4670 Graveyard::Save(GameOSFile &)
bool Graveyard::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00595f50 mac 100f4590 Graveyard::Load(GameOSFile &)
bool Graveyard::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00596070 mac 100fad20 GroupBehaviour::GroupBehaviour(void)
GroupBehaviour::GroupBehaviour()
{
}

// win1.41 00596190 mac 100fa600 GroupBehaviour::_dt(void)
GroupBehaviour::~GroupBehaviour()
{
}

// win1.41 005961c0 mac 100fafe0 DancePathInfo::_dt(void)
DancePathInfo::~DancePathInfo()
{
}

// win1.41 00596320 mac 100fa080 GroupBehaviour::ToBeDeleted(int)
void GroupBehaviour::ToBeDeleted(int param_1)
{
}

// win1.41 005964a0 mac 106ffb98 GroupBehaviour::Process(void)
void GroupBehaviour::Process()
{
}

// win1.41 00596700 mac 100f90b0 GroupBehaviour::UpdateGroupBasedOnAction(DanceGroup *, DANCE_GROUP_ACTION_TYPE, DanceGroupActionArgument const &, unsigned long)
void GroupBehaviour::UpdateGroupBasedOnAction(DanceGroup* dance_group, DANCE_GROUP_ACTION_TYPE action_type, const DanceGroupActionArgument* argument, uint32_t param_4)
{
}
