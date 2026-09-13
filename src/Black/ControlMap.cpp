#include "ControlMap.h"

#include "ColourConstants.h" /* For White */

#include <string.h>

// BW1W120 0046f6c0
ControlMap::ControlMap()
{
	Field70x6528 = 250;
	memset(BindableActionStates, 0, sizeof(BindableActionStates));
	Field40x6518 = 0;
	Field50x651c = 0;
	Field20x6510 = 0;
	Field30x6514 = 0;
	Field70x6524 = 0;
	Field60x6520 = 0;
	Field90x652c = 1;
	Field100x6530 = 1;
}
