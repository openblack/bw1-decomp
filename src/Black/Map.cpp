#include "GameTimeConstants.h"
#include "Map.h"

void MapCell::SetFirstObjectMobile(Object* object)
{
	FirstObjectMobile = object;
}

void MapCell::SetFirstObjectFixed(Object* object)
{
	FirstObjectFixed = object;
}
