#include "MaxFloat.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "ColourConstants.h" /* For White */

#include <chlasm/CreatureSpec.h> /* For C_INDIVIDUAL_HAPPY */

#include "Creature.h"
#include "CreatureActionInfo.h"
#include "CreatureAgenda.h"
#include "CreatureContext.h"
#include "CreatureInitialDesireInfo.h"
#include "CreatureMental.h"
#include "CreatureMentalBelief.h"
#include "CreatureMentalLearnAction.h"
#include "CreaturePhysical.h"
#include "GameInfo.h"
#include "Object.h"
#include "OneOffSpellSeed.h"
#include "Rand.h"
#include "SpellSeedInfo.h"
#include "SubArgument.h"
#include "Town.h"

#define HIGH_MOVE_RADIUS_SCALE    4.0f
#define DANCE_TO_MUSIC_MIN_LEVEL  8
#define MIN_OBJECT_IN_HAND_DESIRE 0.1f
#define MIN_GO_TO_POS_RADIUS      8.0f

void Creature::BeFrightened(CreatureBelief* belief, long argument)
{
	ForceActivityAndForceAction(CREATURE_DESIRE_FEAR, NULL,
	                            GAME_RAND(13, 3) ? CREATURE_BE_FRIGHTENED_ON_THE_SPOT : CREATURE_RUN_AWAY_FROM_PLAYER,
	                            belief, NULL, true, true);
}

void Creature::LookCurious(CreatureBelief* belief, long argument)
{
	ForceActivityAndForceAction(CREATURE_DESIRE_CURIOSITY, NULL, CREATURE_SCRATCH, belief, NULL, true, true);
}

void Creature::BeHappy(CreatureBelief* belief, long argument)
{
	ForceActivityAndForceAction(CREATURE_DESIRE_TO_MANIFEST_STATE, NULL, CREATURE_COMMUNICATE_STATE,
	                            mind->GetBeliefAboutObject(this), NULL, true, true);
	mind->agenda.SubActionAgenda.ClearSubActionAgenda();
	mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                          NEW(27) SubArgumentInteger(C_INDIVIDUAL_HAPPY), NULL, NULL);
}

void Creature::BeSad(CreatureBelief* belief, long argument)
{
	ForceActivityAndForceAction(CREATURE_DESIRE_TO_MANIFEST_STATE, NULL, CREATURE_COMMUNICATE_STATE,
	                            mind->GetBeliefAboutObject(this), NULL, true, true);
	mind->agenda.SubActionAgenda.ClearSubActionAgenda();
	switch (GAME_RAND(35, 4))
	{
	case 0:
		if (mind->desires.GetDesire(CREATURE_DESIRE_ANGER) > mind->desires.GetDesire(CREATURE_DESIRE_COMPASSION))
		{
			if (GAME_RAND(40, 2) == 0)
			{
				mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				                                          NEW(42) SubArgumentInteger(C_INDIVIDUAL_ANGRY), NULL, NULL);
			}
			else
			{
				mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				                                          NEW(46) SubArgumentInteger(C_MISC_FUCK_YOU), NULL, NULL);
			}
		}
		else
		{
			mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                                          NEW(51) SubArgumentInteger(C_INDIVIDUAL_FRIGHTENED), NULL, NULL);
		}
		break;
	case 1:
		mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                                          NEW(55) SubArgumentInteger(C_INDIVIDUAL_SAD), NULL, NULL);
		break;
	case 2:
		mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                                          NEW(58) SubArgumentInteger(C_MISC_CRY), NULL, NULL);
		break;
	case 3:
		mind->agenda.SubActionAgenda.AddMainSubAction(
			CREATURE_SUB_STATE_ACTIONS_LOOK_AT_CAMERA,
			NEW(61) SubArgumentInteger(
				GGameInfo::Info.ConvertRealWorldSecondsToGameTicks((GAME_FLOAT_RAND(61, 1.0f)) + 1.0f)),
			&Creature::LookStoned, &Creature::SetFaceForMoodSad);
		break;
	}
	mind->agenda.CommandState.Commanded = true;
}

void Creature::DanceToMusic(CreatureBelief* belief, long argument)
{
	if (mind->agenda.ForcedActionArgument > DANCE_TO_MUSIC_MIN_LEVEL && GAME_RAND(70, 8) == 0)
	{
		CreaturePlan plan(CREATURE_DESIRE_TO_IMPRESS, CREATURE_DANCE_WITH_VILLAGERS, NULL, NULL, NULL, 1.0f);
		FindBestObjectToActOnFromAction(plan, CREATURE_BELIEF_TYPE_LAST);
		if (plan.ObjectToActOn != NULL)
		{
			plan.ActivityObject = AddBeliefAboutAssociatedObject(plan.ObjectToActOn);
			ForceActivityAndForceAction(plan, true, true);
			return;
		}
	}
	ForceActivityAndForceAction(CREATURE_DESIRE_TO_IDLE_AROUND_WITH_PLAYER, NULL, CREATURE_PRACTICE_DANCE, belief, NULL,
	                            true, true);
}

void Creature::BecomeHigh(CreatureBelief* belief, long argument)
{
	ForceActivityAndForceAction(CREATURE_DESIRE_TO_GET_HIGH, NULL, CREATURE_GET_HIGH, mind->GetBeliefAboutObject(this),
	                            NULL, true, true);
	mind->agenda.SubActionAgenda.ClearSubActionAgenda();
	mind->agenda.SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_LOOK_AT_CAMERA,
		NEW(91) SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(3.0f)), &Creature::LookAtCamera,
		&Creature::SetFaceForActionAmazed);
	mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TALK, NULL,
	                                          &Creature::LookAtObjectFlutteringEyelids, NULL);
	mind->agenda.SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_LOOK_AT_CAMERA,
		NEW(93) SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(2.0f)), &Creature::LookStoned,
		&Creature::SetFaceForActionSmile);
	mind->agenda.SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_WAIT,
		NEW(94) SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(3.1f)), &Creature::LookAtCamera,
		&Creature::SetFaceForActionSmile);
	mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                          NEW(95) SubArgumentInteger(C_MISC_LAUGH), &Creature::LookStoned, NULL);
	if (GAME_RAND(96, 2) == 0)
	{
		mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                                          NEW(98) SubArgumentInteger(C_INDIVIDUAL_HAPPY), &Creature::LookStoned,
		                                          NULL);
	}
	mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                          NEW(100) SubArgumentInteger(C_INDIVIDUAL_CONFUSED), &Creature::LookStoned,
	                                          &Creature::SetFaceForActionAmazed);
	mind->agenda.SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_WAIT,
		NEW(101) SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.1f)), &Creature::LookAtCamera,
		&Creature::SetFaceForActionSmile);
	if (GAME_RAND(102, 2) == 0)
	{
		mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                                          NEW(104) SubArgumentInteger(C_MISC_AHA), &Creature::LookStoned,
		                                          &Creature::SetFaceForActionAmazed);
	}
	mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                          NEW(106) SubArgumentInteger(C_INDIVIDUAL_CONFUSED), &Creature::LookStoned,
	                                          &Creature::SetFaceForActionAmazed);
	if (GAME_RAND(107, 2) == 0)
	{
		MapCoords pos = Pos;
		float     radius = Get2DRadius() * HIGH_MOVE_RADIUS_SCALE;
		if (FindClearArea(&pos, radius, false))
		{
			mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                                          NEW(114)
			                                              SubArgumentPointAndFloat(pos.GetLHPoint(), Get2DRadius()),
			                                          &Creature::LookWhileGoingTowardsPoint, NULL);
			mind->agenda.SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
				NEW(115) SubArgumentIntegerAndFloat(C_STATIC_SIT, GAME_FLOAT_RAND(115, 5.0f) + 10.0f),
				&Creature::LookStoned, &Creature::SetFaceForMoodSad);
		}
		mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                                          NEW(117) SubArgumentInteger(C_INDIVIDUAL_SAD), &Creature::LookStoned,
		                                          NULL);
		mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                                          NEW(118) SubArgumentInteger(C_INDIVIDUAL_FRIGHTENED),
		                                          &Creature::LookFrightened, &Creature::SetFaceForMoodFrightened);
		if (GAME_RAND(119, 2) == 0)
		{
			mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                                          NEW(121) SubArgumentInteger(C_INDIVIDUAL_SAD), NULL, NULL);
		}
		else
		{
			mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                                          NEW(125) SubArgumentInteger(C_MISC_CRY), NULL, NULL);
		}
	}
	mind->agenda.SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_LOOK_AT_CAMERA,
		NEW(128) SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(3.0f)), &Creature::LookAtCamera,
		&Creature::SetFaceForActionAmazed);
	mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TALK, NULL, &Creature::LookStoned, NULL);
	mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                          NEW(130) SubArgumentInteger(C_MISC_LAUGH), &Creature::LookStoned, NULL);
}

void Creature::MessUpGeneric(CreatureBelief* belief, long argument)
{
	ForceActivityAndForceAction(CREATURE_DESIRE_TO_MANIFEST_STATE, NULL, CREATURE_COMMUNICATE_STATE, belief, NULL, true,
	                            true);
	mind->agenda.SubActionAgenda.ClearSubActionAgenda();
	mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                          NEW(139) SubArgumentInteger(C_INDIVIDUAL_EMBARRASSED), NULL, NULL);
	if (GAME_RAND(140, 2) == 0)
	{
		mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                                          NEW(142) SubArgumentInteger(C_INDIVIDUAL_SAD), NULL, NULL);
		mind->desires.ChangeSource(SADNESS, (GAME_FLOAT_RAND(143, 0.3f)));
	}
}

void Creature::MessUpGenericWithHelpText(CreatureBelief* belief, long argument)
{
	CreatureBelief* self = mind->GetBeliefAboutObject(this);
	ForceActivityAndForceAction(CREATURE_DESIRE_TO_MANIFEST_STATE, NULL, CREATURE_COMMUNICATE_STATE, self, NULL, true,
	                            true);
	mind->agenda.SubActionAgenda.ClearSubActionAgenda();
	mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                          NEW(154) SubArgumentInteger(C_INDIVIDUAL_EMBARRASSED), NULL, NULL);
	if (GAME_RAND(155, 2) == 0)
	{
		mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                                          NEW(157) SubArgumentInteger(C_INDIVIDUAL_SAD), NULL, NULL);
		mind->desires.ChangeSource(SADNESS, (GAME_FLOAT_RAND(158, 0.3f)));
	}
	SendCandidateHelpScript(CREATURE_HELP_TYPE_ACTION_MESSED_UP, mind->agenda.ForcedActionArgument, NULL, NULL, 0);
}

void Creature::MessUpCastSpellOnObject(CreatureBelief* belief, long argument)
{
	MessUpGeneric(belief, argument);
}

void Creature::MessUpCastSpellAtPoint(CreatureBelief* belief, long argument)
{
	MessUpGeneric(belief, argument);
}

void Creature::RepeatLastAction(CreatureBelief* belief, long argument)
{
	CreatureContext context;
	mind->GetBestContextToLearnFrom(context);
	if (context.plan.IsValid() && context.plan.ObjectToActOn != NULL &&
	    context.plan.ObjectToActOn->GetPointer() != NULL && context.plan.ObjectToActOn->GetPointer() != this &&
	    !mind->agenda.MimicState.Mimicking)
	{
		CreaturePlan plan(context.plan.CreatureDesire, context.plan.creature_action, NULL, NULL, NULL, 1.0f);
		if (plan.creature_action == CREATURE_EAT_OBJECT_IN_HAND)
		{
			plan.creature_action = CREATURE_EAT_ALIVE;
		}
		FindBestObjectToActOnFromAction(plan, (CREATURE_BELIEF_TYPE)context.plan.ObjectToActOn->GetType());
		if (plan.ObjectToActOn != NULL && CanCreatureCurrentlyPerformAction(plan.creature_action, plan))
		{
			plan.ActivityObject = AddBeliefAboutAssociatedObject(plan.ObjectToActOn);
			if (plan.ActivityObject == NULL && CreatureInitialDesireInfo::GetInfo()[plan.CreatureDesire].Social)
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
				mind->agenda.CommandState.Commanded = true;
			}
		}
	}
}

void Creature::ActOnObjectInHand(CreatureBelief* belief, long argument)
{
	Object* object = physical->ObjectCarried;
	if (object == NULL)
	{
		return;
	}

	OneOffSpellSeed* seed = object->CastOneOffSpellSeed();
	if (seed != NULL && DevelopmentPhase >= DEVELOPMENT_PHASE_GUIDE_TEACHES_SPELLS)
	{
		unsigned long    magicType = seed->GetSeedInfo()->GetFirstMagicType();
		CREATURE_DESIRES desire = CreatureMagicActionKnownAboutEntry::MagicActionKnownAboutInfo[magicType].Desire;
		CREATURE_ACTION  action;
		CreatureBelief*  activityObject;
		CreatureBelief*  objectToActOn;
		if (magicType >= MAGIC_TYPE_CREATURE_SPELL_FREEZE)
		{
			if (desire == CREATURE_DESIRE_COMPASSION)
			{
				action = CREATURE_CAST_ONE_OFF_SPELL_IN_HAND_COMPASSIONATE;
				activityObject = mind->GetBeliefAboutObject(this);
				objectToActOn = activityObject;
			}
			else
			{
				action = CREATURE_CAST_ONE_OFF_SPELL_IN_HAND_AGGRESSIVE;
				activityObject = GetNearbyObject(&GameThingWithPos::IsCreature, mind->GetBeliefAboutObject(this), NULL);
				objectToActOn = activityObject;
			}
		}
		else if (desire == CREATURE_DESIRE_COMPASSION)
		{
			action = CREATURE_CAST_ONE_OFF_SPELL_IN_HAND_COMPASSIONATE;
			CreaturePlan target(desire, action, NULL, NULL, NULL, 1.0f);
			FindBestObjectToActOnFromAction(target, CREATURE_BELIEF_TYPE_LAST);
			objectToActOn = target.ObjectToActOn;
			activityObject = AddBeliefAboutAssociatedObject(objectToActOn);
		}
		else
		{
			action = CREATURE_CAST_ONE_OFF_SPELL_IN_HAND_AGGRESSIVE;
			CreaturePlan target(desire, action, NULL, NULL, NULL, 1.0f);
			FindBestObjectToActOnFromAction(target, CREATURE_BELIEF_TYPE_LAST);
			objectToActOn = target.ObjectToActOn;
			activityObject = AddBeliefAboutAssociatedObject(objectToActOn);
		}
		CreaturePlan plan(desire, action, activityObject, objectToActOn, NULL, 1.0f);
		if (plan.IsValid())
		{
			mind->ConsiderLearningAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC, magicType);
			ForceActivityAndForceAction(plan, true, true);
			mind->agenda.CommandState.Commanded = true;
			return;
		}
	}

	CreatureBelief* objectBelief = mind->AddBeliefAboutObject(this, object);
	if (mind->agenda.PreviousPlan.IsValid())
	{
		CREATURE_ACTION action = mind->agenda.PreviousPlan.creature_action;
		if (CreatureActionInfo::GetInfo()[action].NeedsObjectToActOn)
		{
			if (mind->IsObjectSuitableForAction(object, action))
			{
				mind->agenda.PreviousPlan.ObjectToActOn = objectBelief;
				ForceActivityAndForceAction(mind->agenda.PreviousPlan, true, true);
				return;
			}
			if (CreatureAgenda::ActionTable[action].NeedsObjectToUse &&
			    mind->IsObjectSuitableToUse(objectBelief, action))
			{
				mind->agenda.PreviousPlan.ObjectToUse = objectBelief;
				ForceActivityAndForceAction(mind->agenda.PreviousPlan, true, true);
				return;
			}
		}
	}

	CREATURE_DESIRES desires[4] = {CREATURE_DESIRE_CURIOSITY, CREATURE_DESIRE_HUNGER, CREATURE_DESIRE_COMPASSION,
	                               CREATURE_DESIRE_TO_PLAY_WITH_PLAYER};
	int              best = -1;
	float            bestValue = 0.0f;
	float            maxLevel = 0.0f;
	for (uint32_t i = 0; i < ARRAY_SIZE(desires); i++)
	{
		if (i == 2)
		{
			continue;
		}
		CREATURE_DESIRES desire = desires[i];
		float            level = mind->desires.Levels[desire];
		float            value = mind->GetObjectToActOnUsefulness(objectBelief, desire) * level;
		if (level > maxLevel)
		{
			maxLevel = level;
		}
		if (value > bestValue &&
		    !(desire == CREATURE_DESIRE_HUNGER && mind->learning.ObjectEatenNoFoodCounts[object->info->type] > 0))
		{
			bestValue = value;
			best = i;
		}
	}
	if (best == -1 || maxLevel < MIN_OBJECT_IN_HAND_DESIRE)
	{
		if (mind->learning.HeldObjectActionCounts[object->info->type] == 0)
		{
			mind->learning.HeldObjectActionCounts[object->info->type] = 1;
			best = 0;
		}
		else
		{
			ForceActOnObject(object);
			return;
		}
	}
	CREATURE_ACTION actions[4] = {CREATURE_EXAMINE_OBJECT_IN_HAND, CREATURE_EAT_OBJECT_IN_HAND,
	                              CREATURE_STROKE_OBJECT_IN_HAND, CREATURE_THROW_OBJECT_IN_HAND};
	CreatureBelief* activityObject = AddBeliefAboutAssociatedObject(objectBelief);
	ForceActivityAndForceAction(desires[best], activityObject, actions[best], objectBelief, NULL, true, true);
}

void Creature::GiveFoodToWorshippers(CreatureBelief* belief, long argument)
{
	CREATURE_ACTION action = NO_ACTION_SPECIFIED;
	CreatureMental* mental = mind;
	if (mental->ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_NORMAL, CREATURE_ACTION_KNOWN_ABOUT_FISH))
	{
		action = CREATURE_PUT_FISH_BY_WORSHIP_SITE;
	}
	mental = mind;
	if (mental->ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC, MAGIC_TYPE_FOOD))
	{
		action = CREATURE_CAST_MAGIC_FOOD_BY_WORSHIP_SITE;
	}
	if (action != NO_ACTION_SPECIFIED)
	{
		ForceActivityAndForceAction(CREATURE_DESIRE_TO_OBEY_PLAYER, NULL, action, belief, NULL, true, true);
		mind->agenda.CommandState.Commanded = true;
	}
}

void Creature::GoToLastSpecifiedPos(CreatureBelief* belief, long argument)
{
	float radius = GetHeight();
	if (MIN_GO_TO_POS_RADIUS > radius)
	{
		radius = MIN_GO_TO_POS_RADIUS;
	}
	CreatureBelief* self = mind->GetBeliefAboutObject(this);
	ForceActivityAndForceAction(CREATURE_DESIRE_TO_OBEY_PLAYER, NULL, CREATURE_MOVE_TO_POS, self, NULL, true, true);
	mind->agenda.SubActionAgenda.ClearSubActionAgenda();
	mind->agenda.SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                                          NEW(393) SubArgumentPointAndFloat(mind->agenda.ForcedActionPos, radius),
	                                          &Creature::LookWhileGoingTowardsPoint, NULL);
	mind->agenda.CommandState.Commanded = true;
}
