#include "GameTimeConstants.h"
#include "SpellForest.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "Forest.h"

void SpellForest::SetToZero()
{
	TreeAdded = false;
}

uint32_t SpellForest::Load(GameOSFile& file)
{
	if (Spell::Load(file))
	{
		file.ReadIt(TreeAdded);
		file.ReadPtr((GameThing**)&MagicForest);
		file.ReadIt(MaxObjects);
		return 1;
	}
	return 0;
}

uint32_t SpellForest::Save(GameOSFile& file)
{
	if (Spell::Save(file))
	{
		file.WriteIt(TreeAdded);
		file.WritePtr(MagicForest.Get());
		file.WriteIt(MaxObjects);
		return 1;
	}
	return 0;
}
