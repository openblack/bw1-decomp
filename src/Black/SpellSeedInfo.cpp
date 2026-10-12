#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include "SpellSeedInfo.h"
#include "SpellSystemInfo.h"

GBaseInfo* GSpellSystemInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = SPELL_SYSTEM_INFO_LAST;
	return Infos;
}
