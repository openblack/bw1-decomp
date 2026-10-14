#include "GameTimeConstants.h"
#include "SpellForest.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "Forest.h"

void SpellForest::SetToZero()
{
	TreeAdded = false;
}

bool32_t SpellForest::Load(GameOSFile& file)
{
	if (Spell::Load(file))
	{
		file.ReadIt(TreeAdded);
		file.ReadPtr((GameThing**)&MagicForest);
		file.ReadIt(MaxObjects);
		return true;
	}
	return false;
}

bool32_t SpellForest::Save(GameOSFile& file)
{
	if (Spell::Save(file))
	{
		file.WriteIt(TreeAdded);
		file.WritePtr(MagicForest.Get());
		file.WriteIt(MaxObjects);
		return true;
	}
	return false;
}
