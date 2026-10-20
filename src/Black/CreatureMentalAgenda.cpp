#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "CreatureAgenda.h"

#include "ColourConstants.h" /* For White */

#include "Creature.h"
#include "CreatureMental.h"

CreatureAgenda::CreatureAgenda(Creature* creature, const CreatureInfo* info) : SubActionAgenda(creature)
{
	this->creature = creature;
	CreatedObject = NULL;
	ObjectToThrowInPile = NULL;
	ForcedActionBelief = NULL;
	ForcedActionPos.SetNull();
	ForcedActionArgument = 0;
	ForcedActionFunction = NULL;
	SwapMindTargetHeight = 0.0f;
	SwapMindTargetAlignment = 0.0f;
	Clear();
	for (int action = 0; action < NUM_CREATURE_ACTIONS; action++)
	{
		ActionUnavailableWhenConfined[action] = false;
	}
	GameTurnLastPlanDecided = 0;
}

bool32_t CreatureAgenda::ConstructSubActionsFromActionAgenda(CREATURE_ACTION action)
{
	SubActionAgenda.ClearSubActionAgenda();
	bool32_t failed = (this->*ActionTable[action].ConstructSubActions)(ActionTable[action].MagicType);
	if (!creature->GoingBackToConfinedArea && SubActionAgenda.GoesOutsideConfinedArea)
	{
		creature->FinishActionUnsuccessfully("outside area", true, true);
		SubActionAgenda.ClearSubActionAgenda();
		ActionUnavailableWhenConfined[action] = true;
		return false;
	}
	if (SubActionAgenda.MainSubAction == CREATURE_SUB_ACTION_NO_MAIN)
	{
		if (SubActionAgenda.NumSubActions == 0)
		{
			SubActionAgenda.MainSubAction = 0;
		}
		else
		{
			SubActionAgenda.MainSubAction = SubActionAgenda.NumSubActions - 1;
		}
	}
	return !failed;
}

void CreatureAgenda::Clear()
{
	if (creature->mind != NULL)
	{
		PlanState.Initialise(creature->mind);
		CurrentPlan.Clear();
	}
	StartActionAgain = false;
	CommandState.Commanded = false;
	CommandState.ForcedByPlayerAction = false;
	CommandState.Destination.SetToZero();
	field_0x1ae4 = 0;
	NumTurnsWithoutAction = 0;
	NumTurnsPerformingAction = 0;
	MinSecondsPerformingActionToLearn = 0.0f;
	belief = NULL;
	DanceStage = 0;
	PlayerHasBeenTold = false;
	SpellSeedTown = NULL;
}

void CreatureAgenda::Process()
{
	NumTurnsPerformingAction++;
}

bool32_t CreatureMental::IsActionSufficientlyCompletedToBePerceived()
{
	if (agenda.SubActionAgenda.MainSubAction >= agenda.SubActionAgenda.NumSubActions)
	{
		if (agenda.SubActionAgenda.NumSubActions == 0)
		{
			return false;
		}
		agenda.SubActionAgenda.MainSubAction = agenda.SubActionAgenda.NumSubActions - 1;
	}
	return agenda.SubActionAgenda.CurrentSubAction >= agenda.SubActionAgenda.MainSubAction || agenda.PlayerHasBeenTold;
}
