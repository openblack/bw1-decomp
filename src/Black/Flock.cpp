#include "GameTimeConstants.h"
#include "Flock.h"

uint32_t Flock::GetSaveType()
{
	return GAME_THING_TYPE_FLOCK;
}

char* Flock::GetDebugText()
{
	return "Flock:";
}

Town* Flock::GetTown()
{
	return town;
}

void Flock::ToBeDeleted(bool32_t delete_now)
{
	DeleteDependancys();
	GameThingWithPos::ToBeDeleted(delete_now);
}

SCRIPT_OBJECT_TYPE Flock::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_FLOCK;
}

uint32_t Flock::GetCreatureBeliefType()
{
	return CREATURE_BELIEF_TYPE_FLOCK;
}

uint32_t Flock::GetCreatureBeliefListType()
{
	return 0;
}

bool32_t Flock::IsSuitableForCreatureActivity()
{
	return true;
}

bool32_t Flock::IsActivityObjectWhichAngerAppliesTo(Creature* creature)
{
	return true;
}

bool32_t Flock::IsActivityObjectWhichCompassionAppliesTo(Creature* creature)
{
	return false;
}

bool32_t Flock::IsActivityObjectWhichPlayfulnessAppliesTo(Creature* creature)
{
	return true;
}

bool32_t Flock::IsFlock() const
{
	return true;
}

bool32_t Flock::IsScriptContainer() const
{
	return true;
}

const char* Flock::GetText()
{
	return "Flock";
}

void Flock::ResetForIteration()
{
	Members.Current = Members.First;
}

Living* Flock::IterateToNext()
{
	Living* living = Members.Current != NULL ? Members.Current->Data : NULL;
	Members.MoveForward();
	return living;
}
