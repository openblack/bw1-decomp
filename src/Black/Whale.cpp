#include "GameTimeConstants.h"
#include "Whale.h"

#include "ColourConstants.h" /* For White */

void Whale::ResolveLoad()
{
	Object::ResolveLoad();
}

bool32_t Whale::Load(GameOSFile& file)
{
	return MobileObject::Load(file) != false;
}

bool32_t Whale::Save(GameOSFile& file)
{
	return MobileObject::Save(file) != false;
}
