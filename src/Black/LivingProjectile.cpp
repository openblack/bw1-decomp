#include "GameTimeConstants.h"
#include "Animal.h"
#include "PhysicsConstantsType.h" /* For enum PHYSICS_CONSTANTS_TYPE */
#include "Villager.h"

PHYSICS_CONSTANTS_TYPE Villager::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_VILLAGER;
}

PHYSICS_CONSTANTS_TYPE Animal::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_ANIMAL;
}
