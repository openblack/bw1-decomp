#ifndef BW1_DECOMP_LH_AUDIO_LOG_INCLUDED_H
#define BW1_DECOMP_LH_AUDIO_LOG_INCLUDED_H

#include "LHAudioErrors.h"    /* For LHAudioErrors */
#include "LHAudioLogMacros.h" /* For LH_LOG_ERROR_CODE, LH_ASSERT */

static LHErrorCode* LHLogErrorCodes = LHAudioErrors;
static char*        LHLogLibraryName = "audio";

#endif /* BW1_DECOMP_LH_AUDIO_LOG_INCLUDED_H */
