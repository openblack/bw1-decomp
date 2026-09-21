#ifndef BW1_DECOMP_LH_NET_UTILS_INCLUDED_H
#define BW1_DECOMP_LH_NET_UTILS_INCLUDED_H

#include <uchar.h> /* For char16_t */

#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include "LHMultiplayerExport.h"

class LHMail;
class LHTransportInfo;

// BW1W120 IAT 008a9434, DLL data export 1006272c.
LH_MULTIPLAYER_API extern char CheckInternetConnectionOptions;

// BW1W120 10018ad0 BW1M100 101055f0 LHNetUseProfile(wchar_t*)
LH_MULTIPLAYER_API void __cdecl LHNetUseProfile(unsigned short* profile);
// BW1W120 100196f0 BW1M100 10103f50 LHCheckForInternetConnection(char)
LH_MULTIPLAYER_API bool __cdecl LHCheckForInternetConnection(char options);
// BW1W120 100139d0 BW1M100 100f8b30 LHLoadInGameEmailSystem(char*)
LH_MULTIPLAYER_API LHMail* __cdecl LHLoadInGameEmailSystem(char* address_book);

// BW1W120 10018c60 BW1M100 101052c0 LHNetGetCurrentProfileUlong(char*, unsigned long*)
LH_MULTIPLAYER_API LH_RETURN __cdecl LHNetGetCurrentProfileUlong(char* name, unsigned long* value);
// BW1W120 10018e90 BW1M100 10104ed0 LHNetSetCurrentProfileUlong(char*, unsigned long)
LH_MULTIPLAYER_API LH_RETURN __cdecl LHNetSetCurrentProfileUlong(char* name, unsigned long value);

// BW1W120 10018e20 BW1M100 10104f90 LHNetGetCurrentProfileData(char*, unsigned char*, unsigned long*)
LH_MULTIPLAYER_API LH_RETURN __cdecl LHNetGetCurrentProfileData(char* name, unsigned char* data, unsigned long* size);
// BW1W120 10019050 BW1M100 10104bc0 LHNetSetCurrentProfileData(char*, unsigned char*, unsigned long)
LH_MULTIPLAYER_API LH_RETURN __cdecl LHNetSetCurrentProfileData(char* name, unsigned char* data, unsigned long size);
// BW1W120 100194a0 BW1M100 10104280 ICQinttoLHTransportInfo(unsigned long, LHTransportInfo*)
LH_MULTIPLAYER_API void __cdecl ICQinttoLHTransportInfo(unsigned long address, LHTransportInfo* transport);

// BW1W120 100189d0 BW1M100 101058d0 LHNetGetCurrentUsedProfile(void)
LH_MULTIPLAYER_API unsigned short* __cdecl LHNetGetCurrentUsedProfile(void);
// BW1W120 10018b30 BW1M100 101054f0 LHNetGetCurrentProfileNameFromRegistry(void)
LH_MULTIPLAYER_API unsigned short* __cdecl LHNetGetCurrentProfileNameFromRegistry(void);

#endif /* BW1_DECOMP_LH_NET_UTILS_INCLUDED_H */
