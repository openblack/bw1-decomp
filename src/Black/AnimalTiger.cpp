#include "GameTimeConstants.h"
#include "AnimalTiger.h"
#include "Game3DObject.h" /* For Game3DObject */

uint32_t Tiger::GetSaveType()
{
	return GAME_THING_TYPE_TIGER;
}

Tiger* Tiger::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Tiger* tiger = new (__FILE__, 26) Tiger(coords, info, age);
	if (tiger != NULL)
	{
		tiger->CallVirtualFunctionsForCreation(coords);
		tiger->Game3dObject->SetHumanShadowed(true);
	}
	return tiger;
}

char* Tiger::GetDebugText()
{
	return "Animal: Tiger";
}
