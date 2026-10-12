#include "GameTimeConstants.h"
#include "Animal.h"
#include "PhysicsConstantsType.h" /* For enum PHYSICS_CONSTANTS_TYPE */
#include "Villager.h"

uint32_t Villager::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_VILLAGER;
}

uint32_t Animal::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_ANIMAL;
}
