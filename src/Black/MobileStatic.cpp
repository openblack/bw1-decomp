#include "MobileStatic.h"
#include "MobileStaticInfo.h"

GMobileStaticInfo GMobileStaticInfo::Infos[MOBILE_STATIC_INFO_LAST];

SCRIPT_OBJECT_TYPE MobileStatic::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_MOBILE_STATIC;
}
