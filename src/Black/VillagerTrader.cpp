#include "Villager.h"

// TODO: static-init cluster — the 44-byte atexit-registration fragment at 0x76b920 needs the
// original compiler frontend, and the initializer below is emitted under a compiler-generated
// name; not fully matchable from source.
const float VillagerTraderNumDaysInYear = 365.25f;
const float VillagerTraderSecondsInDay = 86400.0f;
// extern: an unreferenced internal-linkage const float is dropped from .rdata.
extern const float VillagerTraderFloat0p7 = 0.7f;

// BW1W120 0076b960 Villager::FUN_0076b960(void)
static float VillagerTraderSecondsPerYear = VillagerTraderNumDaysInYear * VillagerTraderSecondsInDay;

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
