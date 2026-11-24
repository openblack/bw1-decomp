#include "CellSize.h"
#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include "GameYearConstants.h"
#include "TimerConstants.h"
#include "Belief.h"

#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LH3DIsland::GetAltitude */

#include <stdio.h> /* For sprintf */

#include <Lionhead/LH3DLib/development/LH3DText.h> /* For CHAR2WCHAR */

#include "BeliefInfo.h"
#ifdef VERSION_BW1W100
#include "StandardColourConstants.h"
#else
#include "ColourConstants.h"
#endif
#include "Game.h"
#include "GameStats.h"
#include "InfoArrays.h"
#include "Interface.h"
#include "LandBalance.h"
#include "InterfaceStatus.h"
#include "Player.h"
#include "ToolTips.h"
#include "Reaction.h"
#include "ReactionInfo.h"
#include "SoundGuidance.h"
#include "TownDesireInfo.h"
#include "Town.h"
#include "TownCentre.h"
#include "PSysGlobal.h"
#include "Utils.h"
#include "ValueSpinner.h"

#ifdef VERSION_BW1WCI
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) + ((line) < 200 ? 0 : 3))
#endif

static float spare;
static float Spare;
static float Reserved;

GBeliefInfo GBeliefInfo::Info;

void GBelief::Init(Town* town)
{
	for (int i = 0; i < _PLAYER_NAME_COUNT; i++)
	{
		BeliefInPlayer[i] = 0.0f;
		BeliefInPlayerMax[i] = BELIEF_DEFAULT_MAX;
		PendingBeliefGain[i] = 0.0f;
		PendingBeliefLoss[i] = 0.0f;
		LastBeliefGainTurn[i] = 0.0f;
	}
	GPlayer* neutralPlayer = GGame::g_game->GetNeutralPlayer();
	float    neutralBelief = town->GetBeliefInNeutralPlayer();
	BeliefInPlayer[neutralPlayer->GetPlayerNumber()] = neutralBelief;
	for (int j = 0; j < NUM_REACTION_FUNCTIONS; j++)
	{
		BoredomMultiplier[j] = 1.0f;
	}
	InitDesireAffectsBeliefAfter();
}

void GBelief::InitDesireAffectsBeliefAfter()
{
	for (uint32_t i = 0; i < TOWN_DESIRE_INFO_LAST; i++)
	{
		DesireAffectsBeliefAfter[i] = GTownDesireInfo::GetInfo()[i].DesireAffectsBeliefAfter;
	}
}

float GBelief::GetBeliefInPlayer(unsigned long player)
{
	return BeliefInPlayer[player];
}

#ifndef VERSION_BW1W100
float GBelief::GetBeliefGained(unsigned long player_number)
{
	return DisplayedBeliefGain[player_number];
}
#endif

float GBelief::GetBeliefInPlayer(GPlayer* player)
{
	return BeliefInPlayer[player->GetPlayerNumber()];
}

void GBelief::AddToBelief(GPlayer* player, float amount, GameThingWithPos* object, bool32_t show_popup,
                          GUIDANCE_ALIGNMENT alignment)
{
	unsigned long playerNumber = player->GetPlayerNumber();
	PendingBeliefGain[playerNumber] += amount;
	TotalBeliefGained[playerNumber] += amount;
	if (amount != 0.0f)
	{
		LastBeliefGainTurn[playerNumber] = GGame::g_game->data.GameTurn;
	}
	if (object != NULL)
	{
		if (show_popup)
		{
			DrawBelief(amount, object, player);
		}
		PlayBeliefSFX(player, object->Pos, alignment);
	}
}

void GBelief::PlayBeliefSFX(GPlayer* player, MapCoords& pos, GUIDANCE_ALIGNMENT alignment)
{
	float maxBelief = 0.0f;
	for (int i = 0; i < _PLAYER_NAME_COUNT; i++)
	{
		if (maxBelief < BeliefInPlayer[i])
		{
			maxBelief = BeliefInPlayer[i];
		}
	}
	float belief = BeliefInPlayer[player->GetPlayerNumber()];
	if (belief < maxBelief)
	{
		GGuidance::BeliefSFX(*GGame::g_game->MyInterfaceStatus(), pos,
		                     (belief + BELIEF_SFX_EPSILON) / (maxBelief + BELIEF_SFX_EPSILON), alignment);
	}
}

void GBelief::ReduceBelief(GPlayer* player, Town* town, float amount)
{
	unsigned long playerNumber = player->GetPlayerNumber();
	BeliefInPlayer[playerNumber] -= amount;
	if (town->GetTownCentre() != NULL)
	{
		PendingBeliefLoss[playerNumber] += amount;
		if (PendingBeliefLoss[playerNumber] > BELIEF_LOSS_DISPLAY_THRESHOLD)
		{
			DrawBelief(-PendingBeliefLoss[playerNumber], town->GetTownCentre(), GGame::g_game->GetPlayer(playerNumber));
			PendingBeliefLoss[playerNumber] = 0.0f;
		}
	}
}

float GBelief::GetDisplayedBeliefGain(unsigned long player_number)
{
	return DisplayedBeliefGain[player_number];
}

#ifndef VERSION_BW1W100
float GBelief::GetBeliefGainedFraction(unsigned long player_number)
{
	if (DisplayedBeliefGain[player_number] == 0.0f)
	{
		return 0.0f;
	}
	return DisplayedBeliefGain[player_number] / (BeliefInPlayer[player_number] * BELIEF_GAIN_FRACTION_SCALE);
}
#endif

void GBelief::ProcessOncePerTurn()
{
	if (GGame::g_game->data.GameTurn % BELIEF_TURNS_PER_PROCESS == 0)
	{
		unsigned long myPlayerNumber = GGame::g_game->players[GGame::g_game->PlayerIndex].player_number;
		float         myBelief = 0.0f;
		for (unsigned long i = 0; i < _PLAYER_NAME_COUNT; i++)
		{
			float totalBelief = 0.0f;
			for (LHLinkedNode<Town*>* node = GGame::g_game->GameLists.TownList.GetStart(); node != NULL;
			     node = node->next.Get())
			{
				Town* town = node->payload;
				float shownBelief = town->belief.GetDisplayedBeliefGain(i);
				if (i == myPlayerNumber && shownBelief > 0.0f)
				{
					myBelief += shownBelief;
				}
				town->belief.DisplayedBeliefGain[i] = 0.0f;
				totalBelief += town->belief.BeliefInPlayer[i];
			}
			GGame::g_game->GetPlayer(i)->GetStats()->CheckNewMaxMinTotalBelief(totalBelief);
		}
		if (myBelief > BELIEF_SPINNER_MIN_TOTAL)
		{
			myBelief *= BELIEF_SPINNER_VALUE_SCALE;
			ToolTips::ForceToolTips(HELP_TEXT_TOOLTIP_GOT_BELIEF, myBelief);
			ValueSpinner* spinner = NEW(173) ValueSpinner;
			char          text[0x10];
			sprintf(text, "%4.0f", myBelief);
			GInterface* gameInterface = GGame::g_game->MyInterface();
			MapCoords&  coords = gameInterface->interface_collide.pos;
			LHPoint     point;
			point.y = LH3DIsland::GetAltitude(coords) + coords.Altitude();
			point.x = coords.WholeX() * (MAP_COORDS_METRES_PER_CELL / MAP_COORDS_UNITS_PER_CELL);
			point.z = coords.WholeZ() * (MAP_COORDS_METRES_PER_CELL / MAP_COORDS_UNITS_PER_CELL);
			spinner->Init(point, CHAR2WCHAR(text), LH3DColor(0xff, 0xff, 0, 0xff));
		}
		CheckAlmostLostTowns(GGame::g_game->players[GGame::g_game->PlayerIndex]);
	}
}

void GBelief::CheckAlmostLostTowns(GPlayer& player)
{
	if (GGame::g_game->LandNumber == BELIEF_ALMOST_LOST_SKIPPED_LAND_NUMBER)
	{
		return;
	}
#ifdef VERSION_BW1WCI
	if (GGame::g_game->GetNoPlayers() <= 1)
	{
		return;
	}
#endif
	unsigned long playerNumber = player.GetPlayerNumber();
	for (Town* town = player.towns.head; town != NULL; town = town->next)
	{
		float belief = town->belief.BeliefInPlayer[playerNumber];
		for (unsigned long i = 0; i < _PLAYER_NAME_COUNT; i++)
		{
			if (i != playerNumber && town->belief.BeliefInPlayer[i] > belief - GBeliefInfo::Info.AlmostLostBeliefMargin)
			{
				GInterfaceStatus* status = GGame::g_game->MyInterfaceStatus();
				if (player.IsMemberOfThisPlayer(status))
				{
					status->guidance->HelpSpritesLosingBelief(*town);
				}
				return;
			}
		}
	}
}

void GBelief::Update(Town* town)
{
	GPlayer*      owner = town->GetPlayer();
	unsigned long strongestPlayer = town->GetPlayer()->GetPlayerNumber();
	for (unsigned long i = 0; i < _PLAYER_NAME_COUNT; i++)
	{
		float beliefScale = town->BalanceBeliefScale;
		float gained = PendingBeliefGain[i] * beliefScale;
		if (gained != 0.0f)
		{
			DisplayedBeliefGain[i] += gained;
			TownCentre* townCentre = town->GetTownCentre();
			if (townCentre != NULL)
			{
				PSysGlobal::CreateBeliefSprite(townCentre, townCentre->Pos.GetLHPoint(),
				                               (int)(gained * BELIEF_SPRITE_VALUE_SCALE),
				                               GGame::g_game->GetPlayer(i)->GetPlayerColour());
			}
			InitDesireAffectsBeliefAfter();
			SetBelief(GGame::g_game->GetPlayer(i)->GetPlayerNumber(), gained + BeliefInPlayer[i]);
			PendingBeliefGain[i] = 0.0f;
		}
	}
	for (uint32_t j = 0; j < NUM_REACTION_FUNCTIONS; j++)
	{
		float value = GLandBalance::LostTownScale * GInfoArrays::ReactionInfos[j].AdditionToTownBoredomMultipliers +
		              BoredomMultiplier[j];
		if (value < BELIEF_BOREDOM_MULTIPLIER_MAX)
		{
			BoredomMultiplier[j] = value;
		}
	}
	if (owner != GGame::g_game->GetNeutralPlayer())
	{
		for (uint32_t i = 0; i < TOWN_DESIRE_INFO_LAST; i++)
		{
			float desire = town->desire.GetTotalDesire(i);
			if (desire > DesireAffectsBeliefAfter[i])
			{
				float reduction = (desire - DesireAffectsBeliefAfter[i]) * town->desire.GetInfo(i)->DesireToBeliefScale;
				ReduceBelief(owner, town, reduction);
			}
			if (DesireAffectsBeliefAfter[i] > GBeliefInfo::Info.MinDesireAffectsBeliefAfter)
			{
				DesireAffectsBeliefAfter[i] -= town->desire.GetInfo(i)->DesireToBeliefThresholdDecay;
			}
		}
	}
	SetBelief(GGame::g_game->GetNeutralPlayer()->GetPlayerNumber(), town->GetBeliefInNeutralPlayer());
	float maxBelief = BeliefInPlayer[strongestPlayer];
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		unsigned long playerNumber = player->GetPlayerNumber();
		if (BeliefInPlayer[playerNumber] >= maxBelief)
		{
			maxBelief = BeliefInPlayer[playerNumber];
			strongestPlayer = playerNumber;
		}
		TotalBeliefGained[playerNumber] *= player->info->BeliefGainScale;
	}
	if (strongestPlayer != town->GetPlayer()->GetPlayerNumber())
	{
		SetBelief(strongestPlayer, GBeliefInfo::Info.ConquerorBeliefScale * BeliefInPlayer[strongestPlayer]);
		if (owner != GGame::g_game->GetNeutralPlayer())
		{
			for (Town* ownerTown = owner->towns.head; ownerTown != NULL; ownerTown = ownerTown->next)
			{
				float belief = GBeliefInfo::Info.LostTownBeliefScale *
				               ownerTown->belief.BeliefInPlayer[owner->GetPlayerNumber()] * GLandBalance::LostTownScale;
				ownerTown->belief.SetBelief(owner->GetPlayerNumber(), belief);
			}
		}
		GPlayer*          newOwner = GGame::g_game->GetPlayer(strongestPlayer);
		GInterfaceStatus* status = GGame::g_game->MyInterfaceStatus();
		if (owner->IsMemberOfThisPlayer(status))
		{
			status->guidance->HelpSpritesGeneralBad(town->Pos);
		}
		else if (newOwner->IsMemberOfThisPlayer(status))
		{
			status->guidance->HelpSpritesGeneralGood(town->Pos);
		}
		newOwner->ClaimTown(town);
	}
}

float GBelief::DistanceChangeToBelief(float distance, float range)
{
	return GUtils::SigmoidThreshold(BELIEF_DISTANCE_SIGMOID_THRESHOLD, -distance / range);
}

void GBelief::AddToBoredomMultiplier(Reaction* reaction, float multiplier)
{
	REACTION type = reaction->type;
	float    value = BoredomMultiplier[type] + multiplier;
	if (value >= 0.0f)
	{
		BoredomMultiplier[type] = value;
	}
	else
	{
		BoredomMultiplier[type] = 0.0f;
	}
}

void GBelief::SetBelief(unsigned long index, float value)
{
	BeliefInPlayer[index] = BeliefInPlayerMax[index] < value ? BeliefInPlayerMax[index] : value;
}

void GBelief::DrawBelief(float scale, GameThingWithPos* thing, GPlayer* player)
{
	int value = (int)(scale * BELIEF_SPRITE_VALUE_SCALE);
	if (value > 0)
	{
		LHPoint point;
		if (thing != NULL)
		{
			MapCoords& coords = thing->Pos;
			point.y = LH3DIsland::GetAltitude(coords) + coords.Altitude();
			point.x = coords.WholeX() * (MAP_COORDS_METRES_PER_CELL / MAP_COORDS_UNITS_PER_CELL);
			point.z = coords.WholeZ() * (MAP_COORDS_METRES_PER_CELL / MAP_COORDS_UNITS_PER_CELL);
			point.y += thing->GetHeight();
		}
		if (GGame::g_game->ShowBeliefValues)
		{
			ValueSpinner* spinner = NEW(347) ValueSpinner;
			spinner->Init(point, value, (ValueSpinner::TEXTTYPE_ENUM)0);
			if (player != NULL)
			{
				spinner->color = player->GetPlayer3DColor();
			}
		}
		PSysGlobal::CreateBeliefSprite(thing, point, value, player != NULL ? player->GetPlayerColour() : -1);
	}
}

float GBelief::GetBeliefNeededToConvert(GPlayer* player, Town* town)
{
	if (town->GetPlayer() == player)
	{
		float lowestDifference = BELIEF_NEEDED_TO_CONVERT_UNSET;
		float neededBelief = 0.0f;
		for (unsigned long i = 0; i < _PLAYER_NAME_COUNT; i++)
		{
			if (player->GetPlayerNumber() != i)
			{
				float difference = GetBeliefInPlayer(i) - GetBeliefInPlayer(player);
				if (difference > lowestDifference)
				{
					lowestDifference = difference;
					neededBelief = GetBeliefInPlayer(i);
				}
			}
		}
		return neededBelief;
	}
	return GetBeliefInPlayer(town->GetPlayer());
}

float GBelief::GetMaxBeliefMeNotIncluded(unsigned long player_number)
{
	float maxBelief = 0.0f;
	for (unsigned long i = 0; i < _PLAYER_NAME_COUNT; i++)
	{
		if (player_number != i && GetBeliefInPlayer(i) > maxBelief)
		{
			maxBelief = GetBeliefInPlayer(i);
		}
	}
	return maxBelief;
}

void GBelief::SetBeliefInPlayerCap(GPlayer* player, float cap)
{
	BeliefInPlayerMax[player->GetPlayerNumber()] = cap;
}

float GBelief::GetBeliefInPlayerCap(GPlayer* player)
{
	return BeliefInPlayerMax[player->GetPlayerNumber()];
}

float GBelief::GetBeliefChangeInPlayerDesire(GPlayer* player)
{
	unsigned long playerNumber = player->GetPlayerNumber();
	unsigned long strongestPlayer = 0;
	float         maxGain = BELIEF_MIN_GAIN_FOR_DESIRE;
	for (unsigned long i = 0; i < PLAYER_NAME_PLAYER_SEVEN; i++)
	{
		if (playerNumber != i && !player->IsAllied(GGame::g_game->GetPlayer(i)) && TotalBeliefGained[i] > maxGain)
		{
			maxGain = TotalBeliefGained[i];
			strongestPlayer = i;
		}
	}
	if (maxGain > BELIEF_MIN_GAIN_FOR_DESIRE && BeliefInPlayer[playerNumber] != 0.0f)
	{
		if (POWER(2.0f * (BeliefInPlayer[strongestPlayer] / BeliefInPlayer[playerNumber]), 2) < 1.0f)
		{
			return POWER(2.0f * (BeliefInPlayer[strongestPlayer] / BeliefInPlayer[playerNumber]), 2);
		}
		return 1.0f;
	}
	return 0.0f;
}

float GBelief::GetPercentCloseOtherPlayer(GPlayer* player)
{
	float maxBelief = 0.0f;
	for (GPlayer* other = GGame::g_game->GetNextActivePlayer(NULL); other != NULL;
	     other = GGame::g_game->GetNextActivePlayer(other))
	{
		if (player != other && !player->IsAllied(other))
		{
			float belief = GetBeliefInPlayer(other);
			if (belief > maxBelief)
			{
				maxBelief = belief;
			}
		}
	}
	float own = GetBeliefInPlayer(player);
	if (own != 0.0f)
	{
		return maxBelief / own;
	}
	return 0.0f;
}
