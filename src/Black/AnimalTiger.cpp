#include "GameTimeConstants.h"
#include "AnimalTiger.h"

#include "Flock.h"        /* For Flock */
#include "Forest.h"       /* For Forest */
#include "Game.h"         /* For GGame */
#include "Game3DObject.h" /* For Game3DObject */
#include "Utils.h"        /* For GUtils */

Tiger* Tiger::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Tiger* tiger = NEW(26) Tiger(coords, info, age);
	if (tiger != NULL)
	{
		tiger->CallVirtualFunctionsForCreation(coords);
		tiger->Game3dObject->SetHumanShadowed(true);
	}
	return tiger;
}

void Tiger::CalculeLairPos()
{
	if (flock->Members.GetLast() == this)
	{
		float     bestDesire = 0.0f;
		MapCoords water;
		Forest*   bestForest = NULL;
		long      bestWaterDistance = 0;
		long      waterDistance;
		for (Forest* forest = GGame::g_game->GameLists.forests.Get(); forest != NULL; forest = forest->next.Get())
		{
			if (!GUtils::FindNearestDrinkingWater(Pos, water, TIGER_LAIR_WATER_MAX_DISTANCE))
			{
				if (bestWaterDistance != 0)
				{
					continue;
				}
			}
			else
			{
				waterDistance = GUtils::GetDistance(Pos, water) + 1;
			}
			if (bestForest == NULL)
			{
				bestForest = forest;
			}
			else
			{
				float desire = forest->GetDesireDistanceModifierForLair(
					(unsigned long)GUtils::GetDistance(Pos, forest->Pos), TIGER_LAIR_FOREST_MAX_DISTANCE);
				if (bestDesire < desire)
				{
					bestDesire = desire;
					bestForest = forest;
					bestWaterDistance = waterDistance;
				}
			}
		}
		if (bestForest != NULL && bestForest->Trees0.GetHead() != NULL)
		{
			flock->SetDomainCentrePos(((Tree*)bestForest->Trees0.GetHead()->GetData())->Pos);
		}
		else
		{
			flock->SetDomainCentrePos(Pos);
		}
	}
}
