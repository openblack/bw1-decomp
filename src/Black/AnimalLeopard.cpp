#include "GameTimeConstants.h"
#include "AnimalLeopard.h"
#include "AnimalLion.h"

bool32_t Lion::CanBeFrighteningToCreature(Creature* creature)
{
	return true;
}

uint32_t Leopard::GetSaveType()
{
	return GAME_THING_TYPE_LEOPARD;
}
