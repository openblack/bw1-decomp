#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"

#include "ColourConstants.h" /* For White */

#include "Creature.h"
#include "Creature3D.h"
#include "CreatureInfo.h"
#include "CreatureMental.h"
#include "CreatureMentalBelief.h"
#include "CreaturePhysical.h"

bool32_t CreatureMental::DebugDrawConfinement = false;
bool32_t CreatureMental::DebugDrawLine = false;
bool32_t CreatureMental::DebugDrawMarker = false;
bool32_t CreatureMental::DebugDrawPath = false;
bool32_t CreatureMental::DebugDrawObjectToActOn = false;

static uint32_t UnusedStatic = 0;

#ifdef VERSION_BW1WCI
CreatureMental::CreatureMental(Creature* creature, const CreatureInfo* info, const MapCoords& pos, GPlayer* player,
                               bool32_t param_5)
	: desires(creature, info), agenda(creature, info), beliefs(param_5), ActionOpinions(info), learning(creature),
#else
CreatureMental::CreatureMental(Creature* creature, const CreatureInfo* info, const MapCoords& pos, GPlayer* player)
	: desires(creature, info), agenda(creature, info), ActionOpinions(info), learning(creature),
#endif // VERSION_BW1WCI
	  ActionsKnownAbout(info), InnatePersonality(info), ExplorationMap(pos), LookState(info)
{
	debug.IsProcessing = true;
	IsDemobilised = false;
	this->creature.Set(creature);
	agenda.Clear();
#ifndef VERSION_BW1WCI
	ClearActionsConsidered();
#endif // VERSION_BW1WCI
	AvoidOwnPlayersThingsWhenAngry = true;
	agenda.CommandState.ControlledByTeleport = false;
	TownDesireToHelp = TOWN_DESIRE_INFO_NONE;
	TownDesireToHelpIndex = 0;
	CanChooseTownDesireToHelp = true;
	TownDesireToHelpLevel = 0.0f;
	NumTimesTownDesireHelped = 0;
	GameTurnLastReactedToFlyingObject = GameTurnLastReactedToObjectCrushed = 0;
#ifdef VERSION_BW1WCI
	ci_field_0xd068 = param_5;
#endif // VERSION_BW1WCI
}

CreatureMental::~CreatureMental()
{
	AttitudesToCreatures.DeleteAll();
}

#ifndef VERSION_BW1WCI
void CreatureMental::ClearActionsConsidered()
{
	for (int desire = 0; desire < NUM_CREATURE_DESIRES; desire++)
	{
		for (int i = 0; i < MAX_NUM_ACTIONS_FOR_EACH_DESIRE; i++)
		{
			ActionsConsidered[desire][i].Priority = 0.0f;
			ActionsConsidered[desire][i].NoveltyModification = 0.0f;
			ActionsConsidered[desire][i].Possible = 0.0f;
		}
	}
}
#endif // VERSION_BW1WCI

bool32_t CreatureMental::IsReadyToFinishAction()
{
	if (agenda.SubActionAgenda.SubActionState != 0)
	{
		LH3DCreature* body = creature.Get()->physical->Creature3d;
		if (!body->IsMovingOrStanding())
		{
			return false;
		}
	}
	return true;
}

void CreatureMental::CheckIfIHaveSeenTheMostImportantObjects()
{
	CheckIfIHaveSeenAnImportantObject(agenda.CurrentPlan.ObjectToActOn, VisionState.LookedAtPosOfObjectToActOn,
	                                  VisionState.SeenObjectToActOn);
	CheckIfIHaveSeenAnImportantObject(agenda.CurrentPlan.ObjectToUse, VisionState.LookedAtPosOfObjectToUse,
	                                  VisionState.SeenObjectToUse);
}

void CreatureMental::CheckIfIHaveSeenAnImportantObject(CreatureBelief* belief, bool32_t looked_at_pos, bool32_t seen)
{
	if (belief != NULL && looked_at_pos == true && seen == false && IsReadyToFinishAction() &&
	    belief->GetPointer()->IsObjectInMap())
	{
		for (CreatureBelief* other = beliefs.lists[CREATURE_BELIEF_LIST_TYPE_OBJECT].Head; other != NULL;
		     other = other->Next)
		{
			if (other->GetPointer() == belief->GetPointer() && other->GetPointer() != NULL)
			{
				other->Pos = other->GetPointer()->Pos;
				return;
			}
		}
	}
}

void CreatureMental::EmpathiseWithPlayer(CREATURE_DESIRE_SOURCE source)
{
	CREATURE_DESIRES desire = CreatureDesireSourceTable::Table[source].Desire;
	if (desires.IsActivated(desire))
	{
		desires.ChangeSource(source, creature.Get()->GetInfo()->EmpathySourceIncrease);
		creature.Get()->SendCandidateHelpScript(CREATURE_HELP_TYPE_SHOW_LESSON_INCREASE_SOURCE, source, NULL, NULL, 0);
	}
}

uint32_t CreatureMental::UnreferencedFunction()
{
	return 0;
}
