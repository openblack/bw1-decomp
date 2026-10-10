#include "GameTimeConstants.h"
#include "Field.h"

#include "ColourConstants.h" /* For White */
#include "FieldTypeInfo.h"

GFieldTypeInfo GFieldTypeInfo::Infos[FIELD_INFO_TYPE_LAST];

uint32_t Field::GetSaveType()
{
	return GAME_THING_TYPE_FIELD;
}

RESOURCE_TYPE Field::GetResourceType()
{
	return RESOURCE_TYPE_FOOD;
}
