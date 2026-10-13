#include "GameTimeConstants.h"
#include "HelpSystem.h"

#include "ColourConstants.h" /* For White */
#include "HelpSystemInfo.h"

uint32_t HelpSystem::StopRunningScripts()
{
	return HelpSystem::StopHelpScriptsForNewHelp();
}

GBaseInfo* HelpSystemInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = 1;
	return &Info;
}
