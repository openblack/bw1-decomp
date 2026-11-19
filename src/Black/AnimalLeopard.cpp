#include "GameTimeConstants.h"
#include "AnimalLeopard.h"
#include "AnimalLion.h"
#include "Game3DObject.h" /* For Game3DObject */

Leopard* Leopard::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Leopard* leopard = NEW(30) Leopard(coords, info, age);
	if (leopard != NULL)
	{
		leopard->CallVirtualFunctionsForCreation(coords);
		leopard->Game3dObject->SetHumanShadowed(true);
	}
	return leopard;
}
