#include "GameTimeConstants.h"
#include "AnimalLeopard.h"
#include "AnimalLion.h"

bool32_t Lion::CanBeFrighteningToCreature(Creature* param_1)
{
	return true;
}

uint32_t Leopard::GetSaveType()
{
	return GAME_THING_TYPE_LEOPARD;
}
