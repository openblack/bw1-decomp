#include "GameTimeConstants.h"
#include "StoragePit.h"

StoragePit::~StoragePit() {}

void StoragePit::ReactToPhysicsImpact(PhysicsObject* physics_object, bool transferred_damage)
{
	Abode::ReactToPhysicsImpact(physics_object, transferred_damage);
}
