#include "GameTimeConstants.h"
#include "AnimalTiger.h"
#include "Game3DObject.h" /* For Game3DObject */

#if defined(VERSION_BW1W100)
#define ANIMAL_TIGER_FILE "C:\\dev\\black\\AnimalTiger.cpp"
#elif defined(VERSION_BW1W110)
#define ANIMAL_TIGER_FILE "C:\\dev\\Black\\AnimalTiger.cpp"
#else
#define ANIMAL_TIGER_FILE "C:\\dev\\MP\\Black\\AnimalTiger.cpp"
#endif

uint32_t Tiger::GetSaveType()
{
	return GAME_THING_TYPE_TIGER;
}

Tiger* Tiger::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Tiger* tiger = new (ANIMAL_TIGER_FILE, 26) Tiger(coords, info, age);
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
