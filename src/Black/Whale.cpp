#include "GameTimeConstants.h"
#include "Whale.h"

#include "ColourConstants.h" /* For White */

void Whale::ResolveLoad()
{
	Object::ResolveLoad();
}

uint32_t Whale::Load(GameOSFile& file)
{
	if (MobileObject::Load(file))
	{
		return 1;
	}
	return 0;
}

uint32_t Whale::Save(GameOSFile& file)
{
	if (MobileObject::Save(file))
	{
		return 1;
	}
	return 0;
}
