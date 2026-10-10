#include "GameTimeConstants.h"
#include "Field.h"

#include "Town.h"

#include "ColourConstants.h" /* For White */
#include "FieldTypeInfo.h"

GFieldTypeInfo GFieldTypeInfo::Infos[FIELD_INFO_TYPE_LAST];

uint32_t Field::GetSaveType()
{
	return GAME_THING_TYPE_FIELD;
}

bool Field::InteractsWithPhysicsObjects()
{
	return false;
}

bool32_t Field::CanBecomeAPhysicsObject()
{
	return false;
}

RESOURCE_TYPE Field::GetResourceType()
{
	return RESOURCE_TYPE_FOOD;
}

PlannedMultiMapFixed* Field::ConvertToPlanned()
{
	return NULL;
}

uint32_t Field::GetCreatureBeliefType()
{
	return 11;
}

bool32_t Field::CanBePoodOn(Creature* param_1)
{
	return false;
}

bool32_t Field::CanBePickedUpByCreature(Creature* param_1)
{
	return false;
}

bool32_t Field::CanBeStompedOnByCreature(Creature* param_1)
{
	return false;
}

bool32_t Field::CanBeGivenToVillager(Creature* param_1)
{
	return false;
}

bool32_t Field::CanBePutInAStoragePit(Creature* param_1)
{
	return false;
}

bool32_t Field::CanBeDestroyedByStoning(Creature* param_1)
{
	return false;
}

bool32_t Field::CanBeExaminedByCreature(Creature* param_1)
{
	return false;
}

bool32_t Field::CanBeEatenByCreature(Creature* param_1)
{
	return true;
}

bool32_t Field::CanBeSleptNextToByCreature(Creature* param_1)
{
	return false;
}

bool32_t Field::IsBeingBuilt(Creature* param_1)
{
	return false;
}

bool32_t Field::NeedsRepair(Creature* param_1)
{
	return false;
}

bool32_t Field::IsTuggable()
{
	return false;
}

bool32_t Field::IsLockedInInteract()
{
	return true;
}

bool32_t Field::CanBeHiddenIn()
{
	return false;
}

bool32_t Field::CanBeDestroyedBySpell(Spell* param_1)
{
	return false;
}

uint32_t Field::GetOverwriteInteractableToolTip()
{
	return 3699;
}


GPlayer* Field::GetPlayer()
{
	if (town.Get() != NULL)
	{
		return town.Get()->GetPlayer();
	}
	return NULL;
}
