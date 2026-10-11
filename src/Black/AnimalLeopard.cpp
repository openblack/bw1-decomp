#include "GameTimeConstants.h"
#include "AnimalLeopard.h"
#include "AnimalLion.h"
#include "Game3DObject.h" /* For Game3DObject */

bool32_t Lion::CanBeFrighteningToCreature(Creature* creature)
{
	return true;
}

uint32_t Leopard::GetSaveType()
{
	return GAME_THING_TYPE_LEOPARD;
}

Leopard* Leopard::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long param_3)
{
	Leopard* leopard = new (ANIMAL_LEOPARD_FILE, 30) Leopard(coords, info, param_3);
	if (leopard != NULL)
	{
		leopard->CallVirtualFunctionsForCreation(coords);
		leopard->Game3dObject->SetHumanShadowed(1);
	}
	return leopard;
}
