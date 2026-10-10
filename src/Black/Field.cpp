#include "GameTimeConstants.h"
#include "Field.h"

#include "ColourConstants.h" /* For White */
#include "FieldTypeInfo.h"

GFieldTypeInfo GFieldTypeInfo::Infos[FIELD_INFO_TYPE_LAST];

RESOURCE_TYPE Field::GetResourceType()
{
	return RESOURCE_TYPE_FOOD;
}
