#ifndef BW1_DECOMP_LH_NET_UTILS_INCLUDED_H
#define BW1_DECOMP_LH_NET_UTILS_INCLUDED_H

#include <uchar.h> /* For char16_t */

#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include "LHMultiplayerExport.h"

class LHMail;
class LHTransportInfo;

// IAT 008a9434.
// BW1W120 1006272c
LH_MULTIPLAYER_API extern char CheckInternetConnectionOptions;

// IAT 008a9548 / 008a9430 / 008a95f8.
// BW1W120 10018ad0
LH_MULTIPLAYER_API void __cdecl LHNetUseProfile(unsigned short* profile);
// BW1W120 100196f0
LH_MULTIPLAYER_API bool __cdecl LHCheckForInternetConnection(char options);
// BW1W120 100139d0
LH_MULTIPLAYER_API LHMail* __cdecl LHLoadInGameEmailSystem(char* address_book);

// IAT 008a9638 / 008a9634.
// BW1W120 10018c60
LH_MULTIPLAYER_API LH_RETURN __cdecl LHNetGetCurrentProfileUlong(char* name, unsigned long* value);
// BW1W120 10018e90
LH_MULTIPLAYER_API LH_RETURN __cdecl LHNetSetCurrentProfileUlong(char* name, unsigned long value);
// BW1W120 10018db0
LH_MULTIPLAYER_API LH_RETURN __cdecl LHNetGetCurrentProfileDouble(char* name, double* value);
// BW1W120 10018fe0
LH_MULTIPLAYER_API LH_RETURN __cdecl LHNetSetCurrentProfileDouble(char* name, double value);

// Ushort * LHNetGetCurrentUsedProfile(void)
// BW1W120 100189d0
LH_MULTIPLAYER_API unsigned short* __cdecl LHNetGetCurrentUsedProfile(void);
// Ushort * LHNetGetCurrentProfileNameFromRegistry(void)
// BW1W120 10018b30
LH_MULTIPLAYER_API unsigned short* __cdecl LHNetGetCurrentProfileNameFromRegistry(void);

// BW1W120 10018e20
LH_MULTIPLAYER_API LH_RETURN __cdecl LHNetGetCurrentProfileData(char* name, unsigned char* data, unsigned long* size);
// BW1W120 10019050
LH_MULTIPLAYER_API LH_RETURN __cdecl LHNetSetCurrentProfileData(char* name, unsigned char* data, unsigned long size);
// BW1W120 100194a0
LH_MULTIPLAYER_API void __cdecl ICQinttoLHTransportInfo(unsigned long address, LHTransportInfo* transport_info);

#endif /* BW1_DECOMP_LH_NET_UTILS_INCLUDED_H */
