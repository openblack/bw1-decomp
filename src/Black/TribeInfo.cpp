#include "TribeInfo.h"

char* GTribeInfo::TribeTextArray[TRIBE_TYPE_LAST + 1] = {
	"CELTIC", "AFRICAN", "AZTEC", "JAPANESE", "INDIAN", "EGYPTIAN", "GREEK", "NORSE", "TIBETAN", "LAST_ERROR",
};

GBaseInfo* GTribeInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = TRIBE_TYPE_LAST;
	return Infos;
}
