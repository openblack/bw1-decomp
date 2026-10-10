#include "GameTimeConstants.h"
#include "Field.h"

#include "ColourConstants.h" /* For White */
#include "FieldTypeInfo.h"

GFieldTypeInfo GFieldTypeInfo::Infos[FIELD_INFO_TYPE_LAST];

uint32_t Field::GetSaveType()
{
	return GAME_THING_TYPE_FIELD;
}

bool Field::InteractsWithPhysicsObjects()
{
	return false;
}

bool32_t Field::CanBecomeAPhysicsObject()
{
	return false;
}
