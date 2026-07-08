#include "Citadel.h"

WorshipSite* Citadel::FindOrCreateWorshipSite(const GTribeInfo* tribe_info)
{
	WorshipSite* result = FindTribeWorshipSite(tribe_info);
	if (result == NULL)
	{
		result = RequestANewWorshipSite(tribe_info);
	}
	return result;
}
