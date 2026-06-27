#ifndef BW1_DECOMP_LH_NET_UTILS_INCLUDED_H
#define BW1_DECOMP_LH_NET_UTILS_INCLUDED_H

#include <uchar.h> /* For char16_t */

// BW1W120 100189d0 BW1M100 101058d0 ushort * LHNetGetCurrentUsedProfile(void)
char16_t* __cdecl LHNetGetCurrentUsedProfile__Fv(void);
// BW1W120 10018b30 BW1M100 101054f0 ushort * LHNetGetCurrentProfileNameFromRegistry(void)
char16_t* __cdecl LHNetGetCurrentProfileNameFromRegistry__Fv(void);

#endif /* BW1_DECOMP_LH_NET_UTILS_INCLUDED_H */
