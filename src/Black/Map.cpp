#include "GameTimeConstants.h"
#include "Map.h"
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

void MapCell::SetFirstObjectFixed(Object* object)
{
	FirstObjectFixed = object;
}
