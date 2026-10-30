#include <Lionhead/LHLog/ver4.0/LHVersion.h>

#if defined(VERSION_BW1W130)
LH_VERSION_INFO("Black", "1", "30", "Igor Borysov", "18/12/02", LH_VERSION_NONE, LH_VERSION_NONE);
#elif defined(VERSION_BW1WCI)
LH_VERSION_INFO("Black", "0", "$Revision: 32 $", "$Author: Ddeptford $", "$Date: 2/10/01 15:48 $", LH_VERSION_NONE,
                LH_VERSION_NONE);
#else
LH_VERSION_INFO("Black", "0", "$Revision: 30 $", "$Author: Ddeptford $", "$Date: 19/12/00 17:54 $", LH_VERSION_NONE,
                LH_VERSION_NONE);
#endif
