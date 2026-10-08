#ifndef BW1_DECOMP_LH_NET_UTILS_INCLUDED_H
#define BW1_DECOMP_LH_NET_UTILS_INCLUDED_H

#include <uchar.h> /* For char16_t */

#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include "LHMultiplayerExport.h"

class LHMail;
class LHNetEvent;
class LHTransportInfo;
struct LHNetMessageFormatDescriptor;
struct LH_USER_ID;
template <typename T> class LHLinkedList;

// BW1W120 1006272c
LH_MULTIPLAYER_API extern char CheckInternetConnectionOptions;

// BW1W120 10018ad0
LH_MULTIPLAYER_API void __cdecl LHNetUseProfile(unsigned short* profile);
// BW1W120 100196f0
LH_MULTIPLAYER_API bool __cdecl LHCheckForInternetConnection(char options);
// BW1W120 100139d0
LH_MULTIPLAYER_API LHMail* __cdecl LHLoadInGameEmailSystem(char* address_book);

// BW1W120 10018c60
LH_MULTIPLAYER_API LH_RETURN __cdecl LHNetGetCurrentProfileUlong(char* name, unsigned long* value);
// BW1W120 10018e90
LH_MULTIPLAYER_API LH_RETURN __cdecl LHNetSetCurrentProfileUlong(char* name, unsigned long value);
// BW1W120 10018db0
LH_MULTIPLAYER_API LH_RETURN __cdecl LHNetGetCurrentProfileDouble(char* name, double* value);
// BW1W120 10018fe0
LH_MULTIPLAYER_API LH_RETURN __cdecl LHNetSetCurrentProfileDouble(char* name, double value);

// BW1W120 100189d0
LH_MULTIPLAYER_API unsigned short* __cdecl LHNetGetCurrentUsedProfile(void);
// BW1W120 10018b30
LH_MULTIPLAYER_API unsigned short* __cdecl LHNetGetCurrentProfileNameFromRegistry(void);

// BW1W120 10018e20
LH_MULTIPLAYER_API LH_RETURN __cdecl LHNetGetCurrentProfileData(char* name, unsigned char* data, unsigned long* size);
// BW1W120 10019050
LH_MULTIPLAYER_API LH_RETURN __cdecl LHNetSetCurrentProfileData(char* name, unsigned char* data, unsigned long size);
// BW1W120 100194a0
LH_MULTIPLAYER_API void __cdecl ICQinttoLHTransportInfo(unsigned long address, LHTransportInfo* transport_info);

// BW1W120 10018440 BW1M119 01106010 (LHCombined Release)
unsigned long LHNetGetEncodedStringListLength(LHLinkedList<char*>* list);
// BW1W120 10018480 BW1M119 01105ec0 (LHCombined Release)
unsigned char* LHNetEncodeStringList(unsigned char* buffer, LHLinkedList<char*>* list);
// BW1W120 10018500 BW1M119 01105d00 (LHCombined Release)
unsigned char* LHNetDecodeStringList(unsigned char* buffer, LHLinkedList<char*>* list);
// BW1W120 100185c0 BW1M119 01105c60 (LHCombined Release)
char* LHNetGetFormatDescriptor(long type, LHNetMessageFormatDescriptor* descriptors);
// BW1W120 10018640 BW1M119 01105ab0 (LHCombined Release)
unsigned long LHNetGetEncodedFileLength(char* file_name);
// BW1W120 100186d0 BW1M119 011057f0 (LHCombined Release)
LH_MULTIPLAYER_API unsigned char* LHNetEncodeFile(unsigned char* buffer, LH_USER_ID user_id, char* file_name);
// BW1W120 10018840 BW1M119 01105780 (LHCombined Release)
LH_MULTIPLAYER_API unsigned long LHNetGetNetEventLength(LHNetEvent* net_event);
// BW1W120 10018860 BW1M119 011056f0 (LHCombined Release)
LH_MULTIPLAYER_API unsigned char* LHNetDecodeNetEvent(unsigned char* buffer, LHNetEvent** net_event);
// BW1W120 10018890 BW1M119 011055f0 (LHCombined Release)
LH_MULTIPLAYER_API unsigned char* LHNetEncodeNetEvent(unsigned char* buffer, LHNetEvent* net_event);
// BW1W120 100188d0 BW1M119 01105360 (LHCombined Release)
LH_MULTIPLAYER_API unsigned char* LHNetDecodeFile(unsigned char* buffer, char** file_name, LH_USER_ID* user_id);

// BW1W120 100195e0 BW1M119 01103a80 (LHCombined Release)
wchar_t* LIBCHAR2WCHAR(char* string);
// BW1W120 10019610 BW1M119 011039f0 (LHCombined Release)
char* LIBWCHAR2CHAR(wchar_t* text);

#endif /* BW1_DECOMP_LH_NET_UTILS_INCLUDED_H */
