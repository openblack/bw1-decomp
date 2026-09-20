#include "Town.h"

#include "ColourConstants.h" /* For White */
#include "Game.h"
#include "Player.h"
#include "TribeInfo.h"
#include "Utils.h"

// BW1W120 0073b170 BW1M100 10554ef0 Town::GetNearestTownToPos(MapCoords const &, TRIBE_TYPE, ABODE_TYPE, float)
Town* Town::GetNearestTownToPos(const MapCoords& coords, TRIBE_TYPE tribe_type, ABODE_TYPE abode_type,
                                float max_distance)
{
	float bestDist = max_distance;
	Town* bestTown = NULL;
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		FOREACH_LH_LIST_HEAD(Town, town, player->towns)
		{
			float dist = GUtils::GetDistanceInMetres(coords, town->Pos);
			if (dist < bestDist)
			{
				if (tribe_type == town->GetTribe()->type || tribe_type == TRIBE_TYPE_NONE)
				{
					if (abode_type == ABODE_TYPE_ANY || town->IsAbodeTypeInTown(abode_type) == 0)
					{
						bestTown = town;
						bestDist = dist;
					}
				}
			}
		}
	}
	return bestTown;
}
