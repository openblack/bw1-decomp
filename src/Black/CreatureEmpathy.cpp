#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For SquareRoot */
#include <re_common.h>                             /* For CLAMP */

#include "ColourConstants.h" /* For White */

#include "Creature.h"
#include "CreatureAttitudeToPlayer.h"
#include "CreatureMental.h"
#include "CreatureMentalDesire.h"
#include "GJUtils.h"
#include "Game.h"
#include "InterfaceStatus.h"
#include "Object.h"
#include "Player.h"

#define PERCEIVED_PLAYER_DESIRE_DECAY       0.9995f
#define PERCEIVED_PLAYER_DESIRE_STORE_TURNS 2
#define MAX_HAND_MOVEMENT                   60.0f
#define HAND_MOVEMENT_DECAY                 0.98f
#define MAX_INTERESTING_OBJECT_SIZE         30.0f
#define INTEREST_FALL_RATE                  0.5f

CreatureObservedPlayerAction::CreatureObservedPlayerAction()
{
	Action = DETECTED_PLAYER_ACTION_LAST;
	AssociatedObject = NULL;
	Object = NULL;
	MagicType = MAGIC_TYPE_NONE;
}

CreaturePerceivedPlayerDesires::CreaturePerceivedPlayerDesires()
{
	int i;
	for (i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		Desires[i] = 0.0f;
	}
	for (i = 0; i < TOWN_DESIRE_INFO_LAST; i++)
	{
		TownDesires[i] = 0.0f;
	}
}

void CreaturePerceivedPlayerDesires::Process()
{
	DecayDesires();
	StorePreviousValues();
}

CREATURE_DESIRES CreaturePerceivedPlayerDesires::GetDominantDesire(Creature* creature)
{
	CREATURE_DESIRES dominant = INVALID_CREATURE_DESIRE;
	float            dominantLevel = 0.0f;
	for (uint32_t i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		if (creature->mind->desires.IsActivated((CREATURE_DESIRES)i) != false && Desires[i] > dominantLevel)
		{
			Desires[i] = dominantLevel;
			dominant = (CREATURE_DESIRES)i;
		}
	}
	return dominant;
}

void CreaturePerceivedPlayerDesires::DecayDesires()
{
	int i;
	for (i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		Desires[i] *= PERCEIVED_PLAYER_DESIRE_DECAY;
	}
	for (i = 0; i < TOWN_DESIRE_INFO_LAST; i++)
	{
		TownDesires[i] *= PERCEIVED_PLAYER_DESIRE_DECAY;
	}
}

void CreaturePerceivedPlayerDesires::StorePreviousValues()
{
	if (GGame::g_game->data.GameTurn % PERCEIVED_PLAYER_DESIRE_STORE_TURNS != 0)
	{
		return;
	}
	int i;
	for (i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		PreviousDesires[i].Push(Desires[i]);
	}
	for (i = 0; i < TOWN_DESIRE_INFO_LAST; i++)
	{
		PreviousTownDesires[i].Push(TownDesires[i]);
	}
}

void CreaturePerceivedPlayerDesires::IncreaseDesire(CREATURE_DESIRES desire, float amount)
{
	if (desire >= NUM_CREATURE_DESIRES)
	{
		return;
	}
	Desires[desire] += amount;
	CLAMP(Desires[desire], 0.0f, 1.0f);
}

void CreaturePerceivedPlayerDesires::IncreaseTownDesire(TOWN_DESIRE_INFO desire, float amount)
{
	if (desire <= TOWN_DESIRE_INFO_NONE || desire >= TOWN_DESIRE_INFO_LAST)
	{
		return;
	}
	TownDesires[desire] += amount;
	CLAMP(TownDesires[desire], 0.0f, 1.0f);
}

void GPlayer::MakeCreatureEmpathiseWithPlayer(CREATURE_DESIRES desire, float amount, const MapCoords& pos)
{
	Creature* creature = GetCreature();
	if (creature != NULL && creature->CanSeePos(pos))
	{
		creature->mind->AttitudeToPlayer.PerceivedPlayerDesires.IncreaseDesire(desire, amount);
	}
}

void GPlayer::MakeCreatureEmpathiseWithPlayerTownDesire(TOWN_DESIRE_INFO desire, float amount, const MapCoords& pos)
{
	Creature* creature = GetCreature();
	if (creature != NULL && creature->CanSeePos(pos))
	{
		creature->mind->AttitudeToPlayer.PerceivedPlayerDesires.IncreaseTownDesire(desire, amount);
	}
}

CreatureAttitudeToPlayer::CreatureAttitudeToPlayer()
{
	TicksSinceInteraction = 0;
	TicksSinceAttention = 0;
	TotalNumGameTicksPlayerHasBeenWatchingMe = 0;
	NumGameTicksPlayerHasBeenCurrentlyWatchingMe = 0;
	HowNicePlayerHasBeenToMe = 0.0f;
	MostRecentPlayerFeedbackValue = 0.0f;
	GameTurnOfMostRecentPlayerFeedback = GGame::g_game->data.GameTurn;
	ImpressedByPlayer = 0.0f;
	Interest = 1.0f;
	HandMovement = 0.0f;
	HandPosNeedsInitialising = true;
}

void CreatureAttitudeToPlayer::UpdatePlayerFeedback(float feedback)
{
	MostRecentPlayerFeedbackValue = feedback;
	GameTurnOfMostRecentPlayerFeedback = GGame::g_game->data.GameTurn;
}

void Creature::ProcessPlayerInterestingness()
{
	float current = ComputeCurrentPlayerInterestingness();
	if (current > mind->AttitudeToPlayer.Interest)
	{
		mind->AttitudeToPlayer.Interest = current;
	}
	else
	{
		mind->AttitudeToPlayer.Interest =
			GJUtils::Linterp(mind->AttitudeToPlayer.Interest, current, INTEREST_FALL_RATE);
	}
}

float Creature::ComputeCurrentPlayerInterestingness()
{
	if (GetPlayer() != NULL)
	{
		GInterfaceStatus* status = GetNearestCameraInterfaceStatus();
		if (mind->AttitudeToPlayer.HandPosNeedsInitialising != false)
		{
			mind->AttitudeToPlayer.PreviousHandPos = status->GetHandPos();
			mind->AttitudeToPlayer.HandPosNeedsInitialising = false;
		}
		LHPoint handMove = status->ReportedHandPos - mind->AttitudeToPlayer.PreviousHandPos;
		mind->AttitudeToPlayer.HandMovement += SquareRoot(handMove * handMove);
		CLAMP(mind->AttitudeToPlayer.HandMovement, 0.0f, MAX_HAND_MOVEMENT);
		mind->AttitudeToPlayer.HandMovement *= HAND_MOVEMENT_DECAY;
		mind->AttitudeToPlayer.PreviousHandPos = status->GetHandPos();
		float handInterest = mind->AttitudeToPlayer.HandMovement / MAX_HAND_MOVEMENT;
		float objectInterest = 0.0f;
		if (status->GetFirstObjectInCurrentHand() != NULL)
		{
			float size = status->GetFirstObjectInCurrentHand()->Get2DRadius();
			CLAMP(size, 0.0f, MAX_INTERESTING_OBJECT_SIZE);
			objectInterest = size / MAX_INTERESTING_OBJECT_SIZE;
		}
		float interest = handInterest + objectInterest;
		CLAMP(interest, 0.0f, 1.0f);
		return interest;
	}
	return 0.0f;
}
