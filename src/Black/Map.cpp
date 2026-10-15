#include "GameTimeConstants.h"
#include "Map.h"
#include <string> /* For the std::basic_string instantiations */

void MapCell::SetFirstObjectFixed(Object* object)
{
	FirstObjectFixed = object;
}
