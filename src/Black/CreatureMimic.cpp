#include "MaxFloat.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "CreatureMimic.h"

#include "ColourConstants.h" /* For White */

#include "Animal.h"
#include "Citadel.h"
#include "Creature.h"
#include "CreatureContext.h"
#include "CreatureInitialDesireInfo.h"
#include "CreatureMental.h"
#include "CreatureMentalBelief.h"
#include "CreatureMentalLearnAction.h"
#include "CreatureMimicInfo.h"
#include "CreaturePhysical.h"
#include "CreaturePlan.h"
#include "Game.h"
#include "GameInfo.h"
#include "InterfaceStatus.h"
#include "LeashStatus.h"
#include "MagicEffectInfo.h"
#include "Object.h"
#include "Player.h"
#include "Rand.h"
#include "Reaction.h"
#include "ReactionInfo.h"
#include "Town.h"
#include "Utils.h"
#include "Villager.h"
#include "VillagerInfo.h"

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\CreatureMimic.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\CreatureMimic.cpp"
#elif defined(VERSION_BW1W130)
#define FILEPATH "D:\\Work\\Games\\dd\\Black\\CreatureMimic.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\CreatureMimic.cpp"
#endif

#define MIMIC_NEARBY_TOWN_DISTANCE           100.0f
#define MIMIC_OBJECT_NEAR_CITADEL_DISTANCE   80.0f
#define MIMIC_STAGE_TIMEOUT_SECONDS          180.0f
#define MIMIC_DESIRE_SECONDS                 120.0f
#define MIMIC_MAX_TURNS_WITHOUT_ACTION       40
#define MIMIC_FOLLOW_DESIRE_SUPPRESS_SECONDS 40.0f
#define MIMIC_LESSON_FEEDBACK                0.5f
#define MIMIC_DESIRE_SOURCE_CHANGE           0.1f
#define MIMIC_FOLLOW_SOURCE_CHANGE           0.3f

CreatureMimicInfo CreatureMimicInfo::Infos[DETECTED_PLAYER_ACTION_LAST];

CreatureMimicState::CreatureMimicState()
{
	Mimicking = false;
}

void CreatureMimicState::SetCreatureIntoStateOfMimicking(DETECTED_PLAYER_ACTION action, GameThingWithPos* object,
                                                         MAGIC_TYPE magic_type)
{
	Mimicking = true;
	ActionUnderway = false;
	DetectedPlayerAction = action;
	MagicType = magic_type;
	Object = object;
	if (Object != NULL)
	{
		ObjectPos = Object->Pos;
		MimicType = Object->GetCreatureMimicType();
	}
	Stage = MIMIC_STAGE_NOTICE;
	StageProgress = 0;
	uint32_t numActions = CreatureMimicInfo::GetInfo()[DetectedPlayerAction].NumActionsPerStage;
	StageLimit = numActions + GRand::GameRand(1, FILEPATH, 39);
	GameTurnStageStarted = GGame::g_game->data.GameTurn;
}

DETECTED_PLAYER_ACTION CreatureMimicState::ComputeDetectedAction(GameThingWithPos* object, MAGIC_TYPE magic_type,
                                                                 GPlayer* player)
{
	if (GMagicEffectInfo::GetInfo()[magic_type].PerceivedPlayerDesire != CREATURE_DESIRE_ANGER)
	{
		Town* town = object->Pos.GetNearestTown(MIMIC_NEARBY_TOWN_DISTANCE);
		if (town != NULL && town->GetPlayer() != player)
		{
			return DETECTED_PLAYER_ACTION_IMPRESS_WITH_MAGIC;
		}
	}

	switch (magic_type)
	{
	case MAGIC_TYPE_FIREBALL:
	case MAGIC_TYPE_FIREBALL_PU_ONE:
	case MAGIC_TYPE_FIREBALL_PU_TWO:
		return DETECTED_PLAYER_ACTION_DAMAGE_WITH_FIRE;
	case MAGIC_TYPE_FOOD:
	case MAGIC_TYPE_FOOD_PU_ONE:
		if (object->IsWorshipSite(NULL))
		{
			return DETECTED_PLAYER_ACTION_CAST_MAGIC_FOOD_IN_WORSHIP_SITE;
		}
		if (object->IsStoragePit(NULL))
		{
			return DETECTED_PLAYER_ACTION_CAST_MAGIC_FOOD_IN_STORAGE_PIT;
		}
		break;
	case MAGIC_TYPE_WOOD:
		if (object->IsStoragePit(NULL))
		{
			return DETECTED_PLAYER_ACTION_CAST_MAGIC_WOOD_IN_STORAGE_PIT;
		}
		if (object->IsBuildingWhichIsBeingBuilt(NULL))
		{
			return DETECTED_PLAYER_ACTION_CAST_MAGIC_WOOD_BY_BUILDING_SITE;
		}
		break;
	case MAGIC_TYPE_WATER:
	case MAGIC_TYPE_WATER_PU_ONE:
		if (object->IsField(NULL))
		{
			return DETECTED_PLAYER_ACTION_CAST_WATER_ON_CROPS;
		}
		return object->IsOnFire(NULL) ? DETECTED_PLAYER_ACTION_CAST_WATER_TO_PUT_OUT_FIRE
		                              : DETECTED_PLAYER_ACTION_CAST_WATER_ON_CROPS;
	case MAGIC_TYPE_HEAL:
	case MAGIC_TYPE_HEAL_PU_ONE:
		return DETECTED_PLAYER_ACTION_HEAL;
	case MAGIC_TYPE_LIGHTNING_BOLT:
	case MAGIC_TYPE_LIGHTNING_BOLT_PU_ONE:
	case MAGIC_TYPE_LIGHTNING_BOLT_PU_TWO:
	case MAGIC_TYPE_EXPLOSION_ONE:
	case MAGIC_TYPE_EXPLOSION_ONE_PU_ONE:
		return DETECTED_PLAYER_ACTION_DAMAGE_WITH_MAGIC;
	case MAGIC_TYPE_FLOCK_FLYING:
	case MAGIC_TYPE_FLOCK_GROUND:
		return DETECTED_PLAYER_ACTION_IMPRESS_WITH_MAGIC;
	}
	return DETECTED_PLAYER_ACTION_LAST;
}

void Creature::ProcessMimicState()
{
	CreatureMimicState* mimic = &mind->agenda.MimicState;
	if (mimic->StageProgress < mimic->StageLimit && (mimic->Stage != MIMIC_STAGE_NOTICE || mimic->StageProgress < 1) &&
	    GGame::g_game->data.GameTurn - mimic->GameTurnStageStarted <=
	        GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(MIMIC_STAGE_TIMEOUT_SECONDS))
	{
		switch (mimic->Stage)
		{
		case MIMIC_STAGE_NOTICE:
			MimicForceNoticingAction();
			break;
		case MIMIC_STAGE_COPY_ACTION:
			MimicForceCopyingAction();
			break;
		case MIMIC_STAGE_COPY_DESIRE:
			MimicForceDesire();
			break;
		}

		CreatureAgenda* agenda = &mind->agenda;
		if (agenda->plans[0].IsValid() && agenda->SubActionAgenda.IsValid())
		{
			mimic->ActionUnderway = true;
		}
		return;
	}

	mimic->Stage = (MIMIC_STAGE)(mimic->Stage + 1);
	if (mimic->Stage < MIMIC_STAGE_LAST && (mimic->Stage != MIMIC_STAGE_COPY_DESIRE ||
	                                        CreatureMimicInfo::GetInfo()[mimic->DetectedPlayerAction].CopiesDesire))
	{
		mimic->StageProgress = 0;
		uint32_t numActions = CreatureMimicInfo::GetInfo()[mimic->DetectedPlayerAction].NumActionsPerStage;
		mimic->StageLimit = numActions + GRand::GameRand(1, FILEPATH, 137);
		mimic->GameTurnStageStarted = GGame::g_game->data.GameTurn;
		return;
	}

	mimic->Mimicking = false;
}

CREATURE_ACTION Creature::GetMimickingAction(DETECTED_PLAYER_ACTION action, unsigned long index, MAGIC_TYPE magic_type)
{
	if (action == DETECTED_PLAYER_ACTION_DAMAGE_WITH_MAGIC)
	{
		return CreatureMagicActionKnownAboutEntry::GetMagicActionKnownAboutInfo()[magic_type].MimickingAction;
	}
	return CreatureMimicInfo::GetInfo()[action].CopyingActions[index];
}

void Creature::MimicForceNoticingAction()
{
	CreatureMental* mental = mind;
	if (mental->agenda.MimicState.Object != NULL)
	{
		CreatureBelief* belief = mental->AddBeliefAboutObject(this, mental->agenda.MimicState.Object);
		if (belief != NULL)
		{
			ForceActivityAndForceAction(
				CREATURE_DESIRE_CURIOSITY, NULL,
				CreatureMimicInfo::GetInfo()[mental->agenda.MimicState.DetectedPlayerAction].NoticingAction, belief,
				NULL, true, true);
		}
	}
}

void Creature::MimicForceCopyingAction()
{
	CreatureMental*  mental = mind;
	CREATURE_DESIRES desire = CreatureMimicInfo::GetInfo()[mental->agenda.MimicState.DetectedPlayerAction].Desire;
	unsigned long    i;

	if (mental->agenda.MimicState.Object != NULL)
	{
		CreatureBelief* belief = mental->AddBeliefAboutObject(this, mental->agenda.MimicState.Object);
		if (belief != NULL)
		{
			if (belief->GetPointer() != NULL &&
			    (belief->GetPointer()->Flags & GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE) != 0)
			{
				mind->agenda.MimicState.Mimicking = false;
				return;
			}

			AddBeliefAboutAssociatedObject(belief);
			for (i = 0; i < MAX_NUM_MIMICKING_ACTIONS; i++)
			{
				CREATURE_ACTION action = GetMimickingAction(mental->agenda.MimicState.DetectedPlayerAction, i,
				                                            mental->agenda.MimicState.MagicType);
				if (action != FIRST_CREATURE_ACTION)
				{
					CreaturePlan plan(desire, action, NULL, belief, NULL, 1.0f);
					if (CanCreatureCurrentlyPerformAction(action, plan) &&
					    mind->agenda.IsObjectSuitableForAction(belief->GetPointer(), action))
					{
						plan.ActivityObject = AddBeliefAboutAssociatedObject(plan.ObjectToActOn);
						if (plan.ActivityObject == NULL && CreatureInitialDesireInfo::GetInfo()[desire].Social)
						{
							Town* town = Pos.GetNearestTown(MaxFloat);
							if (town != NULL)
							{
								plan.ActivityObject = mind->AddBeliefAboutObject(this, town);
							}
						}
						if (FindBestObjectToUseIfNecessary(plan) && plan.IsValid())
						{
							ForceActivityAndForceAction(plan, true, true);
							if (GRand::GameRand(2, FILEPATH, 237) == 0)
							{
								return;
							}
						}
					}
				}
			}
		}
	}

	for (i = 0; i < MAX_NUM_MIMICKING_ACTIONS; i++)
	{
		CREATURE_ACTION action =
			GetMimickingAction(mental->agenda.MimicState.DetectedPlayerAction, i, mental->agenda.MimicState.MagicType);
		if (action != FIRST_CREATURE_ACTION)
		{
			CreaturePlan plan(desire, action, NULL, NULL, NULL, 1.0f);
			FindBestObjectOfSameMimicTypeFromAction(plan);
			if (plan.ObjectToActOn != NULL && CanCreatureCurrentlyPerformAction(action, plan))
			{
				plan.ActivityObject = AddBeliefAboutAssociatedObject(plan.ObjectToActOn);
				if (plan.ActivityObject == NULL && CreatureInitialDesireInfo::GetInfo()[desire].Social)
				{
					Town* town = Pos.GetNearestTown(MaxFloat);
					if (town != NULL)
					{
						plan.ActivityObject = mind->AddBeliefAboutObject(this, town);
					}
				}
				if (FindBestObjectToUseIfNecessary(plan) && plan.IsValid())
				{
					ForceActivityAndForceAction(plan, true, true);
					if (GRand::GameRand(2, FILEPATH, 282) == 0)
					{
						return;
					}
				}
			}
		}
	}

	for (i = 0; i < MAX_NUM_MIMICKING_ACTIONS; i++)
	{
		CREATURE_ACTION action =
			GetMimickingAction(mental->agenda.MimicState.DetectedPlayerAction, i, mental->agenda.MimicState.MagicType);
		if (action != FIRST_CREATURE_ACTION)
		{
			CreaturePlan plan(desire, action, NULL, NULL, NULL, 1.0f);
			FindBestObjectToActOnFromAction(plan, CREATURE_BELIEF_TYPE_LAST);
			if (plan.ObjectToActOn != NULL && CanCreatureCurrentlyPerformAction(action, plan))
			{
				plan.ActivityObject = AddBeliefAboutAssociatedObject(plan.ObjectToActOn);
				if (plan.ActivityObject == NULL && CreatureInitialDesireInfo::GetInfo()[desire].Social)
				{
					Town* town = Pos.GetNearestTown(MaxFloat);
					if (town != NULL)
					{
						plan.ActivityObject = mind->AddBeliefAboutObject(this, town);
					}
				}
				if (FindBestObjectToUseIfNecessary(plan) && plan.IsValid())
				{
					ForceActivityAndForceAction(plan, true, true);
					if (GRand::GameRand(2, FILEPATH, 320) == 0)
					{
						return;
					}
				}
			}
		}
	}
}

void Creature::MimicForceDesire()
{
	float hunger = mind->desires.Levels[CREATURE_DESIRE_HUNGER];
	float tiredness = mind->desires.Levels[CREATURE_DESIRE_TIREDNESS];

	mind->SetCheatDominantDesire(CreatureMimicInfo::GetInfo()[mind->agenda.MimicState.DetectedPlayerAction].Desire,
	                             MIMIC_DESIRE_SECONDS, false);
	mind->desires.UnsuppressDesire(CREATURE_DESIRE_TO_FOLLOW_PLAYER_DESIRE);
	mind->agenda.MimicState.ActionUnderway = true;
	if (mind->agenda.NumTurnsWithoutAction > MIMIC_MAX_TURNS_WITHOUT_ACTION)
	{
		mind->agenda.MimicState.Mimicking = false;
		mind->desires.SuppressDesire(CREATURE_DESIRE_TO_FOLLOW_PLAYER_DESIRE, MIMIC_FOLLOW_DESIRE_SUPPRESS_SECONDS);
	}

	mind->desires.SetDesire(CREATURE_DESIRE_HUNGER, hunger);
	mind->desires.SetDesire(CREATURE_DESIRE_TIREDNESS, tiredness);
}

void Creature::MimicPlayer(DETECTED_PLAYER_ACTION action, GameThingWithPos* object, MAGIC_TYPE magic_type)
{
	if (magic_type != MAGIC_TYPE_NONE)
	{
		int   timesStillToSee = (int)(NumTimesMagicActionMustBeSeenBeforeItIsLearnt(magic_type) -
		                              mind->learning.NumTimesMagicActionSeen[magic_type]);
		float progress = min(1.0f, mind->learning.NumTimesMagicActionSeen[magic_type] /
		                               NumTimesMagicActionMustBeSeenBeforeItIsLearnt(magic_type));
		if (timesStillToSee > 0)
		{
			mind->ConsiderLearningAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC, magic_type);
			if (timesStillToSee > 1)
			{
				return;
			}
			if (GRand::GameRand(2, FILEPATH, 364) == 0)
			{
				return;
			}
		}
	}

	CreatureBelief*  belief = mind->AddBeliefAboutObject(this, object);
	CreatureBelief*  associatedBelief = AddBeliefAboutAssociatedObject(belief);
	unsigned long    lessonCount = 0;
	CREATURE_ACTION  mimickingAction = GetMimickingAction(action, 0, magic_type);
	CREATURE_DESIRES desire = CreatureMimicInfo::GetInfo()[action].Desire;
	CreaturePlan     plan(desire, mimickingAction, associatedBelief, belief, belief, 1.0f);
	CreatureContext  context(this, plan, INVALID_CREATURE_DESIRE_SOURCE, 0, mind->ContextBelief);
	for (int lessonType = LESSON_TYPE_ACTIVITY_OBJECT; lessonType <= LESSON_TYPE_ACTION_OBJECT; lessonType++)
	{
		mind->LearnParticularLessonFromFeedback(context, MIMIC_LESSON_FEEDBACK, (LESSON_TYPE)lessonType, 1,
		                                        &lessonCount, LESSON_ORIGIN_TYPE_DIRECT_PLAYER_FEEDBACK);
	}
	context.CleanUp();

	if (desire == CREATURE_DESIRE_ANGER && object != NULL && object->GetPlayer() == GetPlayer())
	{
		mind->AvoidOwnPlayersThingsWhenAngry = false;
	}

	FinishActionUnsuccessfully("mimicking", true, true);
	RecentTrees.Clear();
	mind->agenda.MimicState.SetCreatureIntoStateOfMimicking(action, object, magic_type);
	mind->AttitudeToPlayer.ObservedAction.Action = action;
	mind->AttitudeToPlayer.ObservedAction.Object = object;
	mind->AttitudeToPlayer.ObservedAction.MagicType = magic_type;
	if (associatedBelief != NULL)
	{
		mind->AttitudeToPlayer.ObservedAction.AssociatedObject = associatedBelief->GetPointer();
	}
	mind->desires.ChangeSource(CreatureInitialDesireInfo::GetInfo()[desire].Sources[0], MIMIC_DESIRE_SOURCE_CHANGE);
	mind->desires.ChangeSource(TO_FOLLOW_PLAYER_DESIRE, MIMIC_FOLLOW_SOURCE_CHANGE);
	if (magic_type != MAGIC_TYPE_NONE)
	{
		mind->ActionsKnownAbout.AddActionLearnt(this, CREATURE_ACTION_LEARNING_TYPE_MAGIC, magic_type, true);
	}
}

void GPlayer::ConsiderMakingCreatureMimicPlayer(GInterfaceStatus* status, DETECTED_PLAYER_ACTION action,
                                                GameThingWithPos* thing, MAGIC_TYPE magic)
{
	Creature* creature = GetCreature();
	if (creature == NULL)
	{
		return;
	}
	if ((creature->Flags & GAME_THING_WITH_POS_FLAG_INTERACTING) != 0)
	{
		return;
	}
	GInterfaceStatus* leashStatus = creature->GetInterfaceStatusLeashOn();
	if (leashStatus != NULL && !leashStatus->LeashStatus->LeashWorks)
	{
		return;
	}
	if (creature->GetPlayer() == NULL || creature->GetPlayer()->type == PLAYER_TYPE_COMPUTER)
	{
		return;
	}
	if (creature->DevelopmentPhase < DEVELOPMENT_PHASE_LEASH_PULL_AND_PICKUP)
	{
		return;
	}
	if (!(creature->GetInterfaceStatusLeashOn() != NULL &&
	      creature->GetInterfaceStatusLeashOn()->LeashStatus->LeashType == LEASH_TYPE_ROPE &&
	      creature->GetInterfaceStatusLeashOn()->LeashStatus->ObjectAttachedTo == NULL &&
	      creature->GetInterfaceStatusLeashOn() == status) &&
	    CreatureMimicInfo::GetInfo()[action].MimickedOnlyOnLeash)
	{
		return;
	}
	if (creature->reaction.Get() != NULL &&
	    creature->reaction.Get()->GetInfo()->priority >= CREATURE_MIMICKING_MIN_REACTION_PRIORITY)
	{
		return;
	}
	if (!creature->CanSeePos(thing->Pos))
	{
		return;
	}
	if (GUtils::GetDistanceInMetres(thing->Pos, creature->Pos) >= creature->physical->GetVisionRange())
	{
		return;
	}

	CreatureMental* mind = creature->mind;
	float           priority = CreatureMimicInfo::GetInfo()[action].Priority;
	if (!mind->agenda.MimicState.Mimicking)
	{
		if (priority <= 0.0f)
		{
			return;
		}
	}
	else if (mind->agenda.MimicState.Stage != MIMIC_STAGE_COPY_DESIRE)
	{
		float currentPriority = CreatureMimicInfo::GetInfo()[mind->agenda.MimicState.DetectedPlayerAction].Priority;
		if (priority < currentPriority)
		{
			return;
		}
		if (action == mind->agenda.MimicState.DetectedPlayerAction)
		{
			return;
		}
	}
	creature->MimicPlayer(action, thing, magic);
}

void Object::ConsiderCreatureMimickingWhenObjectLands()
{
	GInterfaceStatus* status = GetInterfaceStatusWhoLastDroppedMe();
	if (status == NULL)
	{
		return;
	}

	GPlayer* player = status->GetPlayer();
	Town*    nearestTown = Pos.GetNearestTown(MaxFloat);
	Citadel* citadel = player->GetCitadel();
	Town*    town = GetTown();
	if (citadel != NULL && GUtils::GetDistanceInMetres(citadel->Pos, Pos) < MIMIC_OBJECT_NEAR_CITADEL_DISTANCE)
	{
		if (town != NULL && town->GetPlayer() != player)
		{
			player->ConsiderMakingCreatureMimicPlayer(status, DETECTED_PLAYER_ACTION_STEAL_OBJECT_AND_PUT_BY_CITADEL,
			                                          this, MAGIC_TYPE_NONE);
			return;
		}
		player->ConsiderMakingCreatureMimicPlayer(status, DETECTED_PLAYER_ACTION_TAKE_OBJECT_HOME, this,
		                                          MAGIC_TYPE_NONE);
		return;
	}

	if (town != NULL && town->GetPlayer() != player && nearestTown != NULL && nearestTown->GetPlayer() != NULL &&
	    nearestTown->GetPlayer() == player)
	{
		player->ConsiderMakingCreatureMimicPlayer(status, DETECTED_PLAYER_ACTION_STEAL_OBJECT_AND_PUT_IN_TOWN, this,
		                                          MAGIC_TYPE_NONE);
	}
}

uint32_t Villager::GetCreatureMimicType()
{
	if (IsChild())
	{
		return CREATURE_MIMIC_TYPE_CHILD;
	}
	return GetInfo()->sex != SEX_MALE ? CREATURE_MIMIC_TYPE_FEMALE_VILLAGER : CREATURE_MIMIC_TYPE_MALE_VILLAGER;
}

uint32_t Animal::GetCreatureMimicType()
{
	return info->AlignmentType == ALIGNMENT_TYPE_ANIMAL_NASTY ? CREATURE_MIMIC_TYPE_NASTY_ANIMAL
	                                                          : CREATURE_MIMIC_TYPE_NICE_ANIMAL;
}
