#include "GameTimeConstants.h"
#include "BigForest.h"

bool BigForest::InteractsWithPhysicsObjects()
{
	return false;
}

LH3DObject::ObjectType BigForest::Get3DType()
{
	return LH3DObject::MORPHABLE;
}
