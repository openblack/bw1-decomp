#include "Villager.h"

// extern: an unreferenced internal-linkage const float is dropped from .rdata.
extern const float VillagerTraderFloat0p7 = 0.7f;

// BW1W120 0076b960 Villager::FUN_0076b960(void)

// BW1W120 0076b980 BW1M100 1059c830 Villager::ArrivesInAbodeToPickUpExcess(void)
bool32_t Villager::ArrivesInAbodeToPickUpExcess()
{
	return true;
}

// BW1W120 0076b990 BW1M100 1059c7f0 Villager::ArrivesInAbodeToTrade(void)
bool32_t Villager::ArrivesInAbodeToTrade()
{
	return true;
}

// BW1W120 0076b9a0 BW1M100 1059c7b0 Villager::SetupFoodForWoodTrade(long)
void Villager::SetupFoodForWoodTrade(long param_1) {}

// BW1W120 0076b9b0 BW1M100 1059c770 Villager::ExcessFood(void)
bool32_t Villager::ExcessFood()
{
	return true;
}

// BW1W120 0076b9c0 BW1M100 1059c730 Villager::SetupWoodForFoodTrade(long)
void Villager::SetupWoodForFoodTrade(long param_1) {}

// BW1W120 0076b9d0 BW1M100 1059c6f0 Villager::ExcessWood(void)
bool32_t Villager::ExcessWood()
{
	return true;
}
