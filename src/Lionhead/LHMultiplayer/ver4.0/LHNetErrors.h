#ifndef BW1_DECOMP_LH_NET_ERRORS_INCLUDED_H
#define BW1_DECOMP_LH_NET_ERRORS_INCLUDED_H

#include <Lionhead/LHLog/ver4.0/LHLogger.h>

// BW1W120 10061d78 BW1M119 null
extern LHErrorCode LH_NET_Errors[];

static char*        LHLogLibraryName = "MultiplayerLib";
static LHErrorCode* LHLogErrorCodes = LH_NET_Errors;

#endif /* BW1_DECOMP_LH_NET_ERRORS_INCLUDED_H */
