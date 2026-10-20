#include "CreatureDecisionConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"

#include "ColourConstants.h" /* For White */

#include "Creature.h"
#include "CreatureDesireTableEntry.h"
#include "CreatureForcedAction.h"
#include "CreatureInitialDesireInfo.h"
#include "CreatureMental.h"
#include "CreatureMentalBelief.h"
#include "CreaturePlan.h"
#include "InterfaceStatus.h"
#include "LeashStatus.h"
#include "Player.h"
#include "Utils.h"

#define LEASHED_FIGHT_REACH_IN_HEIGHTS 8.0f

void CreatureMental::ConsiderActivitiesWhichDontRequireAnObject(CreaturePlan& plan, CreatureDesiresTried& desires_tried,
                                                                CREATURE_DECISION_TYPE decision_type,
                                                                bool32_t               allow_no_object_to_act_on)
{
	for (int i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		CREATURE_DESIRES desire = (CREATURE_DESIRES)i;
		if (!desires.IsActivated(desire) || desires.IsSuppressed(desire))
		{
			continue;
		}
		if (CreatureDesireTableEntry::Table[desire].IsApplicable != NULL &&
		    !(creature.Get()->*CreatureDesireTableEntry::Table[desire].IsApplicable)())
		{
			continue;
		}
		if (CreatureInitialDesireInfo::GetInfo()[desire].Social)
		{
			continue;
		}
		if (desire == CREATURE_DESIRE_TO_IDLE_AROUND_WITH_PLAYER &&
		    (creature.Get()->GetPlayer() == NULL || creature.Get()->GetPlayer()->type == PLAYER_TYPE_0))
		{
			continue;
		}
		if (desires_tried.IsThisInStack(desire))
		{
			continue;
		}
		if (!allow_no_object_to_act_on && CreatureDesireTableEntry::Table[desire].IsValidObjectToActOn == NULL)
		{
			continue;
		}
		float priority = desires.GetDesire(desire) * NoObjectActivityPriorityScale;
		if (priority > plan.ActivityPriority)
		{
			plan.ActivityPriority = priority;
			plan.CreatureDesire = desire;
		}
	}
}

void CreatureMental::AssessParticularObject(CreatureBelief* belief, CreaturePlan& plan,
                                            CreatureDesiresTried& desires_tried, CREATURE_DECISION_TYPE decision_type)
{
	for (int i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		CREATURE_DESIRES desire = (CREATURE_DESIRES)i;
		if (!desires.IsActivated(desire) || desires.IsSuppressed(desire))
		{
			continue;
		}
		if (CreatureDesireTableEntry::Table[desire].IsApplicable != NULL &&
		    !(creature.Get()->*CreatureDesireTableEntry::Table[desire].IsApplicable)())
		{
			continue;
		}
		float distancePriority = CalculateDistancePriority(desire, belief);
		if (!CreatureInitialDesireInfo::GetInfo()[desire].Social)
		{
			continue;
		}
		if (!(belief->Pointer->*CreatureDesireTableEntry::Table[desire].IsValidActivityObject)(creature.Get()))
		{
			continue;
		}
		if (desires_tried.IsThisInStack(desire))
		{
			continue;
		}
		float usefulness = GetActivityObjectUsefulness(belief, desire) * distancePriority;
		float priority = desires.GetDesire(desire) * usefulness;
		if (desire == CREATURE_DESIRE_ANGER && AvoidOwnPlayersThingsWhenAngry &&
		    belief->Pointer->GetPlayer() == creature.Get()->GetPlayer())
		{
			priority = 0.0f;
		}
		if (priority > plan.ActivityPriority)
		{
			plan.CreatureDesire = desire;
			plan.ActivityObject = belief;
			plan.ActivityPriority = usefulness;
		}
	}
}

CREATURE_DESIRES CreatureMental::FindBestGoalForActivityObject(CreatureBelief*       belief,
                                                               CreatureDesiresTried& desires_tried)
{
	CreaturePlan plan;
	AssessParticularObject(belief, plan, desires_tried, CREATURE_DECISION_NORMAL);
	return plan.CreatureDesire;
}

bool32_t CreatureMental::FindSomethingToDoOnParticularObject(CreatureBelief* activity_object,
                                                             CreatureBelief* object_to_act_on, CreaturePlan& plan)
{
	GInterfaceStatus* status = creature.Get()->GetInterfaceStatusLeashOn();
	if (status != NULL && status->LeashStatus->LeashType == LEASH_TYPE_EVIL && object_to_act_on != NULL &&
	    object_to_act_on->Pointer->IsCreature())
	{
		float distance = GUtils::GetDistanceInMetres(&creature.Get()->Pos, &object_to_act_on->Pos);
		if (distance < creature.Get()->GetHeight() * LEASHED_FIGHT_REACH_IN_HEIGHTS)
		{
			CreatureForcedAction::InProgress = true;
			plan.ObjectToActOn = object_to_act_on;
			plan.ActivityObject = object_to_act_on;
			plan.CreatureDesire = CREATURE_DESIRE_ANGER;
			plan.creature_action = CREATURE_FIGHT;
			plan.AgendaPriority = 1.0f;
			return true;
		}
	}
	return FindSomethingToDoOnObjectUsingObject(activity_object, object_to_act_on, NULL, plan);
}

bool32_t CreatureMental::FindSomethingToDoOnObjectUsingObject(CreatureBelief* activity_object,
                                                              CreatureBelief* object_to_act_on,
                                                              CreatureBelief* object_to_use, CreaturePlan& plan)
{
	CreatureDesiresTried desires_tried;
	while (desires_tried.Size() < NUM_CREATURE_DESIRES)
	{
		plan.Clear();
		if (activity_object != NULL)
		{
			AssessParticularObject(activity_object, plan, desires_tried, CREATURE_DECISION_NORMAL);
		}
		ConsiderActivitiesWhichDontRequireAnObject(plan, desires_tried, CREATURE_DECISION_NORMAL, false);
		if (plan.IsActivityValid())
		{
			if (IsObjectSuitableForDesire(object_to_act_on, plan.CreatureDesire) &&
			    GetObjectToActOnUsefulness(object_to_act_on, plan.CreatureDesire) > 0.0f)
			{
				plan.ObjectToActOn = object_to_act_on;
				creature.Get()->FindBestActionFromObject(plan, NULL, object_to_act_on, true);
				if (plan.IsValid())
				{
					return true;
				}
			}
			else
			{
				CreatureBelief* associated = creature.Get()->AddBeliefAboutAssociatedObject(object_to_act_on);
				if (associated != NULL)
				{
					for (LHLinkedNode<CreatureBelief*>* node = associated->AssociatedBeliefs.GetStart(); node != NULL;
					     node = node->next.Get())
					{
						CreatureBelief* belief = node->payload;
						if (IsObjectSuitableForDesire(belief, plan.CreatureDesire) &&
						    GetObjectToActOnUsefulness(belief, plan.CreatureDesire) > 0.0f)
						{
							plan.ObjectToActOn = belief;
							creature.Get()->FindBestActionFromObject(plan, NULL, belief, true);
							if (plan.IsValid())
							{
								return true;
							}
						}
					}
				}
			}
		}
		desires_tried.Push(plan.CreatureDesire);
	}
	return false;
}
