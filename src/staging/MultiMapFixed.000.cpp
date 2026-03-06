#include "MultiMapFixed.h"

// win1.41 00401490 mac 1056ea60 MultiMapFixed::AsMultiMapFixed(void)
MultiMapFixed* MultiMapFixed::AsMultiMapFixed()
{
    return this;
}

// win1.41 004014a0 mac 103dc840 MultiMapFixed::IsPlaytimeStructure(void)
bool MultiMapFixed::IsPlaytimeStructure()
{
    return false;
}

// win1.41 004014b0 mac 103e2190 MultiMapFixed::IsPlaytimeStarted(void)
bool MultiMapFixed::IsPlaytimeStarted()
{
    return false;
}

// win1.41 004014c0 mac 1037fbf0 MultiMapFixed::AddPlaytimeVillager(Villager *)
bool MultiMapFixed::AddPlaytimeVillager(Villager* villager)
{
    return false;
}

// win1.41 004014d0 mac 1016ecd0 MultiMapFixed::GetResourceDropPosForComputerPlayer(RESOURCE_TYPE)
void MultiMapFixed::GetResourceDropPosForComputerPlayer(MapCoords* drop_pos)
{
}

// win1.41 004014f0 mac 100531e0 MultiMapFixed::GetPercentBuilt(void)
float MultiMapFixed::GetPercentBuilt()
{
    return percent_built;
}

// win1.41 00401500 mac 1004b0a0 MultiMapFixed::GetPercentRepaired(void)
float MultiMapFixed::GetPercentRepaired()
{
    return GetLife();
}

// win1.41 00401510 mac 100ddc00 MultiMapFixed::GetBuildingSiteWood(unsigned long *)
uint32_t MultiMapFixed::GetBuildingSiteWood(uint32_t* param_1)
{
    return 0;
}

// win1.41 00401520 mac 1005fe80 MultiMapFixed::GetBuildingObject(void)
void* MultiMapFixed::GetBuildingObject()
{
    return this;
}

// win1.41 00401530 mac 100a0e40 MultiMapFixed::IsSolidToNewAbode(void)
bool MultiMapFixed::IsSolidToNewAbode()
{
    return true;
}

// win1.41 00401540 mac 10569bb0 MultiMapFixed::CastMultiMapFixed(void)
MultiMapFixed* MultiMapFixed::CastMultiMapFixed()
{
    return this;
}

// win1.41 00401550 mac 102ff050 MultiMapFixed::SetPower(float)
void MultiMapFixed::SetPower(float power)
{
}

// win1.41 00401560 mac 10369300 MultiMapFixed::GetResourcePos(RESOURCE_TYPE, long)
MapCoords* MultiMapFixed::GetResourcePos(RESOURCE_TYPE type, int32_t param_2)
{
    return NULL;
}

// win1.41 00401580 mac 1035b520 MultiMapFixed::IsPoisonedResource(RESOURCE_TYPE)
bool MultiMapFixed::IsPoisonedResource()
{
    return false;
}

// win1.41 00401590 mac 10368ea0 MultiMapFixed::GetResourceNearestEdge(RESOURCE_TYPE, Object *, int)
MapCoords* MultiMapFixed::GetResourceNearestEdge(MapCoords* coords, RESOURCE_TYPE type, Object* param_3, int param_4)
{
    return GetResourcePos(type, param_4);
}

// win1.41 004015b0 mac 101a93f0 MultiMapFixed::AddToPlayer(void)
void MultiMapFixed::AddToPlayer()
{
}

// win1.41 004015c0 mac 1019fe20 MultiMapFixed::RemoveFromPlayer(void)
void MultiMapFixed::RemoveFromPlayer()
{
}

// win1.41 004015d0 mac 101aa2d0 MultiMapFixed::CalulateAmountOverMaximum(RESOURCE_TYPE)
int MultiMapFixed::CalulateAmountOverMaximum(RESOURCE_TYPE type)
{
    return 0;
}

// win1.41 004015e0 mac 10570a50 MultiMapFixed::IsBeingBuilt(Creature *)
bool MultiMapFixed::IsBeingBuilt(Creature* creature)
{
    return false;
}

// win1.41 00401600 mac 100dc2a0 MultiMapFixed::NeedsRepair(Creature *)
bool MultiMapFixed::NeedsRepair(Creature* creature)
{
    return false;
}

// win1.41 00401610 mac 101481c0 MultiMapFixed::IsFootpathLink(void)
bool MultiMapFixed::IsFootpathLink()
{
    return true;
}

// win1.41 00401620 mac 1009b630 MultiMapFixed::GetFootpathLink(void)
GFootpathLink* MultiMapFixed::GetFootpathLink()
{
    return footpath_link;
}

// win1.41 00401630 mac inlined MultiMapFixed::GetCollideData(void)
NewCollide* MultiMapFixed::GetCollideData() const
{
    return collide_data;
}
