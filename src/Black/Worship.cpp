#include "PlannedWorshipSite.h"
#include "WorshipSite.h"
#include "WorshipSiteInfo.h"

GWorshipSiteInfo GWorshipSiteInfo::Infos[WORSHIP_SITE_INFO_LAST];

SCRIPT_OBJECT_TYPE WorshipSite::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_WORSHIP_SITE;
}

char* PlannedWorshipSite::GetDebugText()
{
	return "PlannedWorshipSite:";
}
