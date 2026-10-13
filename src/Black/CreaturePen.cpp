#include "GameTimeConstants.h"
#include "CreaturePen.h"

#include "ColourConstants.h" /* For White */
#include "CreaturePenInfo.h"
#include "PlannedCreaturePen.h"

GBaseInfo* GCreaturePenInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = ARRAY_SIZE(Infos);
	return Infos;
}

const char* PlannedCreaturePen::GetText()
{
	return "Planned Pen";
}
