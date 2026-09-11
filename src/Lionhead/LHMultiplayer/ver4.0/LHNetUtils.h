#ifndef BW1_DECOMP_LH_NET_UTILS_INCLUDED_H
#define BW1_DECOMP_LH_NET_UTILS_INCLUDED_H

#include <uchar.h> /* For char16_t */

#include <Lionhead/LHLib/ver5.0/LHReturn.h>

// BW1W120 import slots 008a9638 / 008a9634; LHMultiplayerR 10018c60 / 10018e90.
__declspec(dllimport) LH_RETURN __cdecl LHNetGetCurrentProfileUlong(char* name, unsigned long* value);
__declspec(dllimport) LH_RETURN __cdecl LHNetSetCurrentProfileUlong(char* name, unsigned long value);

// BW1W120 100189d0 BW1M100 101058d0 ushort * LHNetGetCurrentUsedProfile(void)
char16_t* __cdecl LHNetGetCurrentUsedProfile__Fv(void);
// BW1W120 10018b30 BW1M100 101054f0 ushort * LHNetGetCurrentProfileNameFromRegistry(void)
char16_t* __cdecl LHNetGetCurrentProfileNameFromRegistry__Fv(void);

#endif /* BW1_DECOMP_LH_NET_UTILS_INCLUDED_H */
