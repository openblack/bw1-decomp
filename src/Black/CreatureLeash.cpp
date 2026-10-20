#include "GameTimeConstants.h"
#include "CreatureAttitudeConstants.h"

#include <stdio.h> /* For sprintf */

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For SquareRoot */

#include "ColourConstants.h" /* For White */

#include "Creature.h"
#include "Creature3D.h"
#include "CreatureInfo.h"
#include "CreatureLeashSettings.h"
#include "CreatureMental.h"
#include "CreatureMentalBelief.h"
#include "CreaturePhysical.h"
#include "Game.h"
#include "Global.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "Landscape.h"
#include "LeashStatus.h"
#include "MapCoords.h"
#include "Object.h"
#include "Packet.h"
#include "Player.h"
#include "ShowNeeds.h"
#include "ShowNeedsVisuals.h"
#include "TotemStatue.h"
#include "Town.h"
#include "TownCentre.h"
#include "Utils.h"
#include "WorshipTotem.h"

#define LEASH_DEBUG_CATEGORY                 4
#define WORSHIP_NEED_TO_GIVE_FOOD            0.6
#define TOWN_BELIEF_TO_IMPRESS_FRACTION      0.5f
#define LEASH_CHEAT_DESIRE_SECONDS           120.0f
#define LEASH_MOOD_SECONDS                   36000.0f
#define LEASHED_CREATURE_NICENESS            0.1f
#define LEASHED_CREATURE_ANGER_RANGE_HEIGHTS 8.0f
#define LEASHED_CREATURE_NICENESS_TURNS      600
#define LEASH_FORCE_RELEASED                 (-1.0f)
#define LEASH_TAUT_FORCE                     0.8f
#define LEASH_FULL_FORCE                     1.0f
#define LEASH_MIN_DISTANCE_FROM_HAND         10.0f
#define LEASH_MIN_DISTANCE_TO_OBJECT         0.0001f
#define LEASH_AGENDA_PRIORITY                0.1f
#define LEASH_CLOSER_TO_HAND_FRACTION        0.5f
#define LEASH_MIN_DISTANCE_TO_MOVE           1.0f
#define LEASH_PULL_SPEED                     1.0f
#define LEASH_STOPPED_SUPPRESS_SECONDS       30.0f
#define LEASH_STOPPED_AGENDA_PRIORITY        0.01f
#define LEASH_MAX_PHYSICAL_DESIRE_TO_OBEY    0.5f

void Creature::UpdateLeash()
{
	GInterfaceStatus* status = GetInterfaceStatusLeashOn();
	if (status == NULL)
	{
		return;
	}
	GLeashStatus*     leash = status->LeashStatus;
	GameThingWithPos* attached = leash->ObjectAttachedTo;
	if (attached != NULL)
	{
		ConfinementCentre = leash->GetObjectAttachedTo()->Pos;
		ShowNeedsVisuals* visuals = dynamic_cast<ShowNeedsVisuals*>(attached);
		if (visuals != NULL && visuals->game_thing.Get() != NULL)
		{
			ShowNeeds* needs = dynamic_cast<ShowNeeds*>(visuals->game_thing.Get());
			if (needs != NULL && needs->thing.Get() != NULL)
			{
				WorshipTotem* totem = dynamic_cast<WorshipTotem*>(needs->thing.Get());
				if (totem != NULL && totem->Site.Get() != NULL &&
				    visuals->GetNeedPercentage() > WORSHIP_NEED_TO_GIVE_FOOD)
				{
					if (mind->agenda.ForcedActionFunction != &Creature::GiveFoodToWorshippers)
					{
						mind->agenda.ForcedActionFunction = &Creature::GiveFoodToWorshippers;
						mind->agenda.ForcedActionBelief = mind->AddBeliefAboutObject(this, visuals);
					}
				}
			}
		}
		GameThingWithPos* townCentre = dynamic_cast<TownCentre*>(attached);
		TotemStatue*      statue = dynamic_cast<TotemStatue*>(attached);
		if (statue != NULL)
		{
			townCentre = statue->town_centre.Get();
		}
		if (townCentre != NULL && leash->LeashType != LEASH_TYPE_EVIL &&
		    mind->desires.FindDominantDesire(INVALID_CREATURE_DESIRE) != CREATURE_DESIRE_TO_IMPRESS)
		{
			Town* town = townCentre->GetTown();
			if (town != NULL)
			{
				bool32_t wantsToImpress;
				if (GetPlayer() != NULL)
				{
					unsigned long player = GetPlayer()->player_number;
					float         belief = town->belief.GetBeliefInPlayer(player);
					wantsToImpress =
						belief <= town->belief.GetMaxBeliefMeNotIncluded(player) * TOWN_BELIEF_TO_IMPRESS_FRACTION ||
						GetPlayer() != town->GetPlayer();
				}
				else
				{
					wantsToImpress = GetPlayer() != town->GetPlayer();
				}
				if (wantsToImpress != false)
				{
					mind->SetCheatDominantDesire(CREATURE_DESIRE_TO_IMPRESS, LEASH_CHEAT_DESIRE_SECONDS, false);
				}
			}
		}
	}
	else
	{
		GLandscape::ConvertLandscapePointToMapCoord(status->ReportedHandPos, ConfinementCentre);
	}
	ConfinementRadius = leash->GetLeashLength();
	Creature* other = NULL;
	if (attached != NULL)
	{
		other = attached->CastCreature();
	}
	float niceness = 0.0f;
	switch (leash->LeashType)
	{
	case LEASH_TYPE_EVIL:
		mind->SetCheatDominantDesire(CREATURE_DESIRE_ANGER, LEASH_MOOD_SECONDS, false);
		if (other != NULL &&
		    other->mind->desires.FindDominantDesire(INVALID_CREATURE_DESIRE) != CREATURE_DESIRE_ANGER &&
		    GUtils::GetDistanceInMetres(other->Pos, Pos) < GetHeight() * LEASHED_CREATURE_ANGER_RANGE_HEIGHTS)
		{
			other->mind->SetCheatDominantDesire(CREATURE_DESIRE_ANGER, LEASH_MOOD_SECONDS, false);
		}
		niceness = -LEASHED_CREATURE_NICENESS;
		break;
	case LEASH_TYPE_GOOD:
		mind->SetCheatDominantDesire(CREATURE_DESIRE_COMPASSION, LEASH_MOOD_SECONDS, false);
		niceness = LEASHED_CREATURE_NICENESS;
		break;
	}
	if (other != NULL)
	{
		if (other->mind->learning.GameTurnNicenessLastUpdated == 0 ||
		    GGame::g_game->data.GetGameTurn() - other->mind->learning.GameTurnNicenessLastUpdated >
		        LEASHED_CREATURE_NICENESS_TURNS)
		{
			other->mind->learning.GameTurnNicenessLastUpdated = GGame::g_game->data.GetGameTurn();
			mind->UpdateHowNiceIsCreature(other, niceness);
			other->mind->UpdateHowNiceIsCreature(this, niceness);
		}
	}
}

void Creature::ApplyLeashForce(float force)
{
	LH3DCreature*     body = GetCreature3D();
	GInterfaceStatus* status = GetInterfaceStatusLeashOn();
	if (status != NULL)
	{
		if (force == LEASH_FORCE_RELEASED)
		{
			body->AnalyseLeashForcePacket(0.0f);
			status->LeashStatus->SetOn(this, false);
		}
		else
		{
			body->AnalyseLeashForcePacket(force);
		}
	}
	else if (force > LEASH_FORCE_RELEASED)
	{
		body->AnalyseLeashForcePacket(force);
	}
}

#ifndef VERSION_BW1W100
void Creature::LocalUpdateCreatureLeash(float force)
{
	if (GetPlayer() == NULL)
	{
		return;
	}
	float handDistance =
		SquareRoot((physical->Creature3d->position - GGame::g_game->MyInterfaceStatus()->ReportedHandPos).GetNorm());
	switch (LeashControl)
	{
	case LEASH_CONTROL_NONE:
		GGlobal::Global.debug.SetMessage(LEASH_DEBUG_CATEGORY, "Leash Control NONE");
		break;
	case LEASH_CONTROL_PULL:
		GGlobal::Global.debug.SetMessage(LEASH_DEBUG_CATEGORY, "Leash Control PULL");
		break;
	case LEASH_CONTROL_DIRECT:
		GGlobal::Global.debug.SetMessage(LEASH_DEBUG_CATEGORY, "Leash Control PULL");
		break;
	}
	GLeashStatus*     leash = GGame::g_game->MyInterfaceStatus()->LeashStatus;
	GameThingWithPos* attached = leash->ObjectAttachedTo;
	float             appliedForce = GGame::g_game->MyInterface()->GetLocalLeashAppliedForce();
	char              text[32];
	sprintf(text, "Leash sent force %.2f", appliedForce);
	leash->AppliedForce = appliedForce;
	unsigned long objectIndex;
	if (attached == NULL)
	{
		GInterface* gameInterface = GGame::g_game->MyInterface();
		if (gameInterface->interface_collide.object != NULL)
		{
			objectIndex = gameInterface->interface_collide.object->GetIndexOffset();
		}
		else
		{
			objectIndex = 0;
		}
	}
	else
	{
		Object* object = dynamic_cast<Object*>(attached);
		if (object != NULL)
		{
			objectIndex = object->GetIndexOffset();
		}
	}
	if (attached != NULL && LeashControl == LEASH_CONTROL_NONE)
	{
		GGame::g_game->SetPacket(PACKET_TYPE_LEASH, objectIndex, GetPlayer()->GetPlayerNumber(), appliedForce);
		GGlobal::Global.debug.SetMessage(LEASH_DEBUG_CATEGORY, "Leash is attached to object, so DIRECTING creature");
	}
	else if (force > LEASH_TAUT_FORCE && LeashControl != LEASH_CONTROL_DIRECT)
	{
		GGame::g_game->SetPacket(PACKET_TYPE_LEASH, objectIndex, GetPlayer()->GetPlayerNumber(), appliedForce);
		GGlobal::Global.debug.SetMessage(LEASH_DEBUG_CATEGORY, "Leash is TAUT, so PULLING creature");
	}
	else
	{
		GGlobal::Global.debug.SetMessage(LEASH_DEBUG_CATEGORY, "Leash is LOOSE");
	}
}
#endif // VERSION_BW1W100

void Creature::LeashMakesCreatureMoveToHand(Object* object)
{
	if (Trapped != false || GoingBackToConfinedArea != false)
	{
		return;
	}
#ifdef VERSION_BW1WCI
	if (Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)
	{
		return;
	}
#else
	if ((Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) && CreatureLeashSettings::LeashOverridesScript == false)
	{
		return;
	}
#endif // VERSION_BW1WCI
	TouchedByLeash = true;
	if (mind->agenda.CommandState.TakingFromHand != false)
	{
		return;
	}
	if (object != NULL && object->IsInteractable() == false)
	{
		object = NULL;
	}
	if (LeashControl == LEASH_CONTROL_NONE)
	{
		LeashMakesCreatureStop();
	}
	if (GetPlayer() == NULL)
	{
		return;
	}
	GInterfaceStatus* status = GetInterfaceStatusLeashOn();
	if (status == NULL)
	{
		return;
	}
	if (LeashControl != LEASH_CONTROL_NONE && mind->agenda.CurrentPlan.IsValid() != false &&
	    mind->agenda.CurrentPlan.ObjectToActOn->Pointer != this)
	{
		if (status->LeashStatus->ObjectAttachedTo != NULL)
		{
			return;
		}
		if (SquareRoot((GetCreature3D()->position - status->ReportedHandPos).GetNorm()) < LEASH_MIN_DISTANCE_FROM_HAND)
		{
			return;
		}
	}
	float speedRange = 2.0f * GetInfo()->RunSpeed - GetInfo()->WalkSpeed;
	float speed = GetInfo()->WalkSpeed + speedRange * GetCreature3D()->GetLeashForce();
	GetCreature3D()->SetRequiredSpeed(speed);
	if (object != NULL)
	{
		CreatureBelief* target = mind->agenda.CurrentPlan.ObjectToActOn;
		if (target == NULL)
		{
			return;
		}
		float distance = GUtils::GetDistanceInMetres(mind->agenda.CommandState.Destination, object->Pos);
		if (target->Pointer == object || object == this || distance <= LEASH_MIN_DISTANCE_TO_OBJECT)
		{
			return;
		}
		if (status->LeashStatus->ObjectAttachedTo != NULL)
		{
			LeashForceCreatureToActOnAttachedObject(object);
		}
		mind->agenda.CurrentPlan.AgendaPriority = LEASH_AGENDA_PRIORITY;
		if ((Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) == 0)
		{
			DirectedByLeash = true;
		}
		return;
	}
	MapCoords handPos(status->ReportedHandPos);
	if (LeashControl != LEASH_CONTROL_NONE)
	{
		LHPoint   destinationPoint = *GetCreature3D()->GetDestination();
		MapCoords destination(destinationPoint);
		float     destinationToHand = GUtils::GetDistanceInMetres(destination, handPos);
		float     destinationToCreature = GUtils::GetDistanceInMetres(destination, Pos);
		if (destinationToCreature > 0.0 && destinationToHand / destinationToCreature < LEASH_CLOSER_TO_HAND_FRACTION)
		{
			return;
		}
	}
	if (GUtils::GetDistanceInMetres(mind->agenda.Destination, handPos) <= LEASH_MIN_DISTANCE_TO_MOVE)
	{
		return;
	}
#ifdef VERSION_BW1WCI
	ForceGoToMapCoords(handPos, LEASH_PULL_SPEED);
#else
	ForceGoToMapCoords(handPos);
#endif // VERSION_BW1WCI
	GetCreature3D()->AnalyseLeashForcePacket(LEASH_FULL_FORCE);
	status->LeashStatus->AppliedForce = LEASH_FULL_FORCE;
	mind->agenda.CommandState.Commanded = true;
	LeashControl = LEASH_CONTROL_PULL;
}

void Creature::LeashMakesCreatureStop()
{
	CREATURE_DESIRES desire = mind->agenda.CurrentPlan.CreatureDesire;
	if (desire < NUM_CREATURE_DESIRES && mind->agenda.CommandState.Commanded == false)
	{
		mind->desires.NumTimesStoppedByLeash[desire]++;
		if (mind->desires.NumTimesStoppedByLeash[desire] > 1)
		{
			mind->desires.SuppressDesire(desire,
			                             mind->desires.NumTimesStoppedByLeash[desire] * LEASH_STOPPED_SUPPRESS_SECONDS);
			mind->desires.NumTimesStoppedByLeash[desire] = 0;
		}
		SendCandidateHelpScript(CREATURE_HELP_TYPE_FAILURE_EXPLANATION,
		                        CREATURE_FAILURE_EXPLANATION_LEASH_STOPPED_CREATURE, NULL, NULL, 0);
	}
	FinishActionUnsuccessfully("Pulled by leash man", false, false);
	CreaturePlan plan;
	plan.CreatureDesire = CREATURE_DESIRE_TO_OBEY_PLAYER;
	plan.ActivityObject = NULL;
	plan.creature_action = CREATURE_GO_TO_HAND;
	plan.ObjectToActOn = mind->GetBeliefAboutObject(this);
	plan.ObjectToUse = NULL;
	plan.AgendaPriority = LEASH_STOPPED_AGENDA_PRIORITY;
	ConstructCurrentPlanFromPlan(plan, true);
}

void Creature::LeashForceCreatureToActOnHandObject(Object* object)
{
#ifdef VERSION_BW1WCI
	if (Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)
	{
		return;
	}
#else
	if ((Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) && CreatureLeashSettings::LeashOverridesScript == false)
	{
		return;
	}
#endif // VERSION_BW1WCI
	GetCreature3D()->AnalyseLeashForcePacket(LEASH_FULL_FORCE);
	GInterfaceStatus* status = GetInterfaceStatusLeashOn();
	if (status == NULL)
	{
		return;
	}
	status->LeashStatus->AppliedForce = LEASH_FULL_FORCE;
	if (object->GetTown() != NULL &&
	    mind->desires.FindStrongestPhysicalDesireValue() < LEASH_MAX_PHYSICAL_DESIRE_TO_OBEY)
	{
		mind->agenda.Clear();
		FinishActionUnsuccessfully(NULL, true, true);
		GetCreature3D()->EndAnyAnimsRapidly();
		CreatureBelief* belief = AddBeliefAboutAssociatedObject(mind->AddBeliefAboutObject(this, object));
		if (belief != NULL)
		{
			CREATURE_DESIRES desire = FindBestDesireForActivityObject(belief);
			if (desire != INVALID_CREATURE_DESIRE)
			{
				ForceActivityAndDecideAction(desire, belief);
				mind->agenda.CommandState.Destination = object->Pos;
				if (mind->agenda.CurrentPlan.IsValid() != false)
				{
					if (mind->agenda.CurrentPlan.IsValid() != false)
					{
						SendCandidateHelpScript(
							CREATURE_HELP_TYPE_CURRENT_DESIRE, mind->agenda.CurrentPlan.CreatureDesire,
							mind->agenda.CurrentPlan.ObjectToActOn->Pointer, &mind->agenda.Destination, 0);
						mind->agenda.CommandState.Commanded = true;
					}
					return;
				}
			}
		}
	}
	ForceActOnObject(object);
}

void Creature::LeashForceCreatureToActOnAttachedObject(Object* object)
{
	object->TellCreatureWhatToDoWhenAttachedToMe(this);
}

void Object::TellCreatureWhatToDoWhenAttachedToMe(Creature* creature)
{
	if (GetTown() != NULL &&
	    creature->mind->desires.FindStrongestPhysicalDesireValue() < LEASH_MAX_PHYSICAL_DESIRE_TO_OBEY)
	{
		creature->mind->agenda.Clear();
		creature->FinishActionUnsuccessfully(NULL, true, true);
		creature->GetCreature3D()->EndAnyAnimsRapidly();
		CreatureBelief* belief =
			creature->AddBeliefAboutAssociatedObject(creature->mind->AddBeliefAboutObject(creature, this));
		if (belief != NULL)
		{
			CREATURE_DESIRES desire = creature->FindBestDesireForActivityObject(belief);
			if (desire != INVALID_CREATURE_DESIRE)
			{
				creature->ForceActivityAndDecideAction(desire, belief);
				creature->mind->agenda.CommandState.Destination = Pos;
				if (creature->mind->agenda.CurrentPlan.IsValid() != false)
				{
					if (creature->mind->agenda.CurrentPlan.IsValid() != false)
					{
						creature->SendCandidateHelpScript(CREATURE_HELP_TYPE_CURRENT_DESIRE,
						                                  creature->mind->agenda.CurrentPlan.CreatureDesire,
						                                  creature->mind->agenda.CurrentPlan.ObjectToActOn->Pointer,
						                                  &creature->mind->agenda.Destination, 0);
						creature->mind->agenda.CommandState.Commanded = true;
					}
					return;
				}
			}
		}
	}
	creature->ForceActOnObject(this);
}

void Creature::DrawLeashInfo() {}

void Creature::UpdateMoodsFromLeash(LEASH_TYPE type)
{
	if (GetInterfaceStatusLeashOn() == NULL)
	{
		return;
	}
	switch (type)
	{
	case LEASH_TYPE_EVIL:
		mind->SetCheatDominantDesire(CREATURE_DESIRE_ANGER, LEASH_MOOD_SECONDS, false);
		break;
	case LEASH_TYPE_ROPE:
		mind->ClearCheatDominantDesire();
		break;
	case LEASH_TYPE_GOOD:
		mind->SetCheatDominantDesire(CREATURE_DESIRE_COMPASSION, LEASH_MOOD_SECONDS, false);
		break;
	}
}

bool32_t Creature::IsMatureEnoughForLeash()
{
	return DevelopmentPhase >= DEVELOPMENT_PHASE_LEASH_PULL_AND_PICKUP;
}

bool32_t Creature::IsMatureEnoughForAdvancedLeash()
{
	return DevelopmentPhase >= DEVELOPMENT_PHASE_LEASH_ATTACH_TO_HOUSE;
}

int Creature::GetNumLeashesKnowsAbout()
{
	int count = 0;
	for (int type = LEASH_TYPE_EVIL; type <= LEASH_TYPE_LAST; type++)
	{
		if (LeashEnabled[type] != false)
		{
			count++;
		}
	}
	return count;
}

GInterfaceStatus* Creature::GetInterfaceStatusLeashOn()
{
	GPlayer* player = GetPlayer();
	if (player == NULL)
	{
		return NULL;
	}
	for (GInterfaceStatus* status = player->GetNextInterfaceStatus(NULL); status != NULL;
	     status = player->GetNextInterfaceStatus(status))
	{
		if (status->LeashStatus != NULL && status->LeashStatus->Activated != false)
		{
			return status;
		}
	}
	return NULL;
}

GInterfaceStatus* Creature::IsLeashWorking()
{
	GPlayer* player = GetPlayer();
	if (player == NULL)
	{
		return NULL;
	}
	for (GInterfaceStatus* status = player->GetNextInterfaceStatus(NULL); status != NULL;
	     status = player->GetNextInterfaceStatus(status))
	{
		if (status->LeashStatus != NULL && status->LeashStatus->LeashWorks != false)
		{
			return status;
		}
	}
	return NULL;
}

GInterfaceStatus* Creature::IsLeashAttachedToObject()
{
	GPlayer* player = GetPlayer();
	if (player == NULL)
	{
		return NULL;
	}
	for (GInterfaceStatus* status = player->GetNextInterfaceStatus(NULL); status != NULL;
	     status = player->GetNextInterfaceStatus(status))
	{
		if (status->LeashStatus != NULL && status->LeashStatus->ObjectAttachedTo != NULL)
		{
			return status;
		}
	}
	return NULL;
}

GameThingWithPos* Creature::GetObjectWhichLeashIsAttachedTo()
{
	GPlayer* player = GetPlayer();
	if (player == NULL)
	{
		return NULL;
	}
	for (GInterfaceStatus* status = player->GetNextInterfaceStatus(NULL); status != NULL;
	     status = player->GetNextInterfaceStatus(status))
	{
		if (status->LeashStatus != NULL && status->LeashStatus->ObjectAttachedTo != NULL)
		{
			return status->LeashStatus->GetObjectAttachedTo();
		}
	}
	return NULL;
}
