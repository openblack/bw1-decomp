#ifndef BW1_DECOMP_LH_NET_ERRORS_INCLUDED_H
#define BW1_DECOMP_LH_NET_ERRORS_INCLUDED_H

#include <Lionhead/LHLog/ver4.0/LHLogger.h>

// TODO: name fabricated; the table's symbol was not exported. Its layout and
// free-global linkage follow LHLog's own LH_DX_Errors and LH_WS_Errors tables.
// BW1W120 10061d78 BW1M119 null
extern LHErrorCode LH_NET_Errors[];

// fabricated: every connection-layer TU carries its own unreferenced copy of these two
// statics, the logging context its LHLogger calls would use. The Mac build has a per-TU
// SamsUtilities::UStatusTable (file name + error entries) in the same role.
static char*        LHLogLibraryName = "MultiplayerLib";
static LHErrorCode* LHLogErrorCodes = LH_NET_Errors;

#endif /* BW1_DECOMP_LH_NET_ERRORS_INCLUDED_H */
