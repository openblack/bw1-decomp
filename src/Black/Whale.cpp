#include "GameTimeConstants.h"
#include "Whale.h"

#include "ColourConstants.h" /* For White */

void Whale::ResolveLoad()
{
	Object::ResolveLoad();
}

bool32_t Whale::Load(GameOSFile& file)
{
	if (MobileObject::Load(file))
	{
		return true;
	}
	return false;
}

bool32_t Whale::Save(GameOSFile& file)
{
	if (MobileObject::Save(file))
	{
		return true;
	}
	return false;
}
