#include "GameTimeConstants.h"
#include "SpellIcon.h"
#include "SpellSeedGraphic.h"
#include "SpellIconInfo.h"

uint32_t SpellSeedGraphic::GetSaveType()
{
	return GAME_THING_TYPE_SPELL_SEED_GRAPHIC;
}

char* SpellSeedGraphic::GetDebugText()
{
	return "SpellSeedGraphic:";
}

const char* SpellSeedGraphic::GetText()
{
	return "Seed Graphics";
}

bool SpellIcon::InteractsWithPhysicsObjects()
{
	return false;
}

uint32_t SpellIcon::Process()
{
	return 1;
}

int SpellIcon::GetSpellIconPlacementIndex()
{
	return 0;
}

GBaseInfo* GSpellIconInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = SPELL_ICON_INFO_LAST;
	return Infos;
}
