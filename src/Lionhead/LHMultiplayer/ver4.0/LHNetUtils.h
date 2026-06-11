#ifndef BW1_DECOMP_LH_NET_UTILS_INCLUDED_H
#define BW1_DECOMP_LH_NET_UTILS_INCLUDED_H

#include <uchar.h> /* For char16_t */

// win1.41 100189d0 mac 101058d0 ushort * LHNetGetCurrentUsedProfile(void)
char16_t* __cdecl LHNetGetCurrentUsedProfile__Fv(void);
// win1.41 10018b30 mac 101054f0 ushort * LHNetGetCurrentProfileNameFromRegistry(void)
char16_t* __cdecl LHNetGetCurrentProfileNameFromRegistry__Fv(void);

#endif /* BW1_DECOMP_LH_NET_UTILS_INCLUDED_H */
