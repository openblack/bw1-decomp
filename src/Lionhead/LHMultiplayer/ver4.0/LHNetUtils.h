#ifndef BW1_DECOMP_LH_NET_UTILS_INCLUDED_H
#define BW1_DECOMP_LH_NET_UTILS_INCLUDED_H

#include <uchar.h> /* For char16_t */

#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include "LHMultiplayerExport.h"

class LHMail;
class LHTransportInfo;

// BW1W120 IAT 008a9434, DLL data export 1006272c.
LH_MULTIPLAYER_API extern char CheckInternetConnectionOptions;

// BW1W120 imports 008a9548 / 008a9430 / 008a95f8.
LH_MULTIPLAYER_API void __cdecl    LHNetUseProfile(unsigned short* profile);
LH_MULTIPLAYER_API bool __cdecl    LHCheckForInternetConnection(char options);
LH_MULTIPLAYER_API LHMail* __cdecl LHLoadInGameEmailSystem(char* address_book);

// BW1W120 import slots 008a9638 / 008a9634; LHMultiplayerR 10018c60 / 10018e90.
LH_MULTIPLAYER_API LH_RETURN __cdecl LHNetGetCurrentProfileUlong(char* name, unsigned long* value);
LH_MULTIPLAYER_API LH_RETURN __cdecl LHNetSetCurrentProfileUlong(char* name, unsigned long value);

// BW1W120 imports 008a947c / 008a9478; LHMultiplayerR 10018e20 / 10019050.
LH_MULTIPLAYER_API LH_RETURN __cdecl LHNetGetCurrentProfileData(char* name, unsigned char* data, unsigned long* size);
LH_MULTIPLAYER_API LH_RETURN __cdecl LHNetSetCurrentProfileData(char* name, unsigned char* data, unsigned long size);
// BW1W120 import 008a9488; LHMultiplayerR 100194a0.
LH_MULTIPLAYER_API void __cdecl ICQinttoLHTransportInfo(unsigned long address, LHTransportInfo* transport);

// BW1W120 100189d0 BW1M100 101058d0 ushort * LHNetGetCurrentUsedProfile(void)
LH_MULTIPLAYER_API unsigned short* __cdecl LHNetGetCurrentUsedProfile(void);
// BW1W120 10018b30 BW1M100 101054f0 ushort * LHNetGetCurrentProfileNameFromRegistry(void)
LH_MULTIPLAYER_API unsigned short* __cdecl LHNetGetCurrentProfileNameFromRegistry(void);

#endif /* BW1_DECOMP_LH_NET_UTILS_INCLUDED_H */
