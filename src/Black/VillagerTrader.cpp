#include "Villager.h"

// extern: an unreferenced internal-linkage const float is dropped from .rdata.
extern const float VillagerTraderFloat0p7 = 0.7f;

// BW1W120 0076b960

// BW1W120 0076b980 BW1M119 015a37b0
bool32_t Villager::ArrivesInAbodeToPickUpExcess()
{
	return true;
}

// BW1W120 0076b990 BW1M119 015a3770
bool32_t Villager::ArrivesInAbodeToTrade()
{
	return true;
}

// BW1W120 0076b9a0 BW1M119 016ea334
void Villager::SetupFoodForWoodTrade(long param_1) {}

// BW1W120 0076b9b0 BW1M119 015a36f0
bool32_t Villager::ExcessFood()
{
	return true;
}

// BW1W120 0076b9c0 BW1M119 016ea344
void Villager::SetupWoodForFoodTrade(long param_1) {}

// BW1W120 0076b9d0 BW1M119 015a3670
bool32_t Villager::ExcessWood()
{
	return true;
}
