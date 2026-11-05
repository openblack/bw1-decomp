#include "GameTimeConstants.h"
#include "SpellForest.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "Forest.h"

void SpellForest::SetToZero()
{
	TreeAdded = false;
}

int SpellForest::InitWithPos(GameThing* game_thing, const MapCoords& coords, SpellCastData* cast_data,
                             const PSysProcessInfo& process_info)
{
	return Spell::InitWithPos(game_thing, coords, cast_data, process_info);
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
