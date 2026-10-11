#include "MagicInfo.h"

GMagicInfo* GMagicInfo::Infos[MAGIC_TYPE_LAST];

const GMagicCreatureSpellInfo* GMagicInfo::AsMagicCreatureSpellInfo() const
{
	return NULL;
}

GMagicCreatureSpellInfo* GMagicInfo::AsMagicCreatureSpellInfo()
{
	return NULL;
}
