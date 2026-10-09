#ifndef BW1_DECOMP_LH_NET_UTILS_INCLUDED_H
#define BW1_DECOMP_LH_NET_UTILS_INCLUDED_H

#include <wchar.h> /* For wchar_t */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include "LHMultiplayerExport.h"

class LHMail;
class LHNetEvent;
class LHTransportInfo;
struct LHNetMessageFormatDescriptor;
struct LH_USER_ID;
template <typename T> class LHLinkedList;
enum LH_NET_LOG_ERROR_LIST;

// BW1W120 100626f8
LH_MULTIPLAYER_API extern const char* LH_NET_REGISTRY_KEY;
// BW1W120 100626fc
LH_MULTIPLAYER_API extern const char* LH_NET_PROFILES_KEY;
// BW1W120 10062700
LH_MULTIPLAYER_API extern const char* LH_NET_MACHINE_DEFAULT_BROWSER;
// BW1W120 10062704
LH_MULTIPLAYER_API extern const char* LH_NET_BW_CURRENT_VERSION;
// BW1W120 10062708
LH_MULTIPLAYER_API extern const char* LH_NET_PROFILE;
// BW1W120 1006270c
LH_MULTIPLAYER_API extern const char* LH_NET_PROFILE_FILE_NAME;
// BW1W120 10062710
LH_MULTIPLAYER_API extern const char* LH_NET_PROFILE_LOGIN_NAME;
// BW1W120 10062714
LH_MULTIPLAYER_API extern const char* LH_NET_REGISTRY_LOBBY;
// BW1W120 10062718
LH_MULTIPLAYER_API extern const char* LH_NET_REGISTRY_LOGIN_SERVER;
// BW1W120 1006272c
LH_MULTIPLAYER_API extern char CheckInternetConnectionOptions;

// BW1W120 100139d0
LH_MULTIPLAYER_API LHMail* LHLoadInGameEmailSystem(char* address_book);

// BW1W120 10018420 BW1M119 011060f0 (LHCombined Release)
LH_MULTIPLAYER_API bool32_t LHNetIsDisconnectionStatus(LH_NET_LOG_ERROR_LIST status);
// BW1W120 10018440 BW1M119 01106010 (LHCombined Release)
LH_MULTIPLAYER_API unsigned long LHNetGetEncodedStringListLength(LHLinkedList<char*>* list);
// BW1W120 10018480 BW1M119 01105ec0 (LHCombined Release)
LH_MULTIPLAYER_API unsigned char* LHNetEncodeStringList(unsigned char* buffer, LHLinkedList<char*>* list);
// BW1W120 10018500 BW1M119 01105d00 (LHCombined Release)
LH_MULTIPLAYER_API unsigned char* LHNetDecodeStringList(unsigned char* buffer, LHLinkedList<char*>* list);
// BW1W120 100185c0 BW1M119 01105c60 (LHCombined Release)
LH_MULTIPLAYER_API char* LHNetGetFormatDescriptor(long type, LHNetMessageFormatDescriptor* descriptors);
// BW1W120 10018600 BW1M119 01105bd0 (LHCombined Release)
bool32_t LHNetStringMatch(char* pattern, char* string);
// BW1W120 10018640 BW1M119 01105ab0 (LHCombined Release)
LH_MULTIPLAYER_API unsigned long LHNetGetEncodedFileLength(char* file_name);
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

// BW1W120 100189d0 BW1M119 01105320 (LHCombined Release)
LH_MULTIPLAYER_API wchar_t* LHNetGetCurrentUsedProfile();
// BW1W120 100189e0 BW1M119 01105090 (LHCombined Release)
LH_MULTIPLAYER_API wchar_t* LHNetCreateDefaultProfile(wchar_t* profile);
// BW1W120 10018ad0 BW1M119 01105000 (LHCombined Release)
LH_MULTIPLAYER_API void LHNetUseProfile(wchar_t* profile);
// BW1W120 10018b30 BW1M119 01104f00 (LHCombined Release)
LH_MULTIPLAYER_API wchar_t* LHNetGetCurrentProfileNameFromRegistry();
// BW1W120 10018bb0 BW1M119 01104e50 (LHCombined Release)
LH_MULTIPLAYER_API LH_RETURN LHNetSaveDefaultProfileNameInRegistry(wchar_t* profile);
// BW1W120 10018bf0 BW1M119 01104d80 (LHCombined Release)
LH_MULTIPLAYER_API bool32_t LHNetCheckProfileExists(wchar_t* profile);
// BW1W120 10018c60 BW1M119 01104cb0 (LHCombined Release)
LH_MULTIPLAYER_API LH_RETURN LHNetGetCurrentProfileUlong(char* name, unsigned long* value);
// BW1W120 10018cd0 BW1M119 01104bd0 (LHCombined Release)
LH_MULTIPLAYER_API LH_RETURN LHNetGetCurrentProfileString(char* name, char* value, unsigned long* size);
// BW1W120 10018d40 BW1M119 01104af0 (LHCombined Release)
LH_MULTIPLAYER_API LH_RETURN LHNetGetCurrentProfileWString(char* name, wchar_t* value, unsigned long* size);
// BW1W120 10018db0 BW1M119 01104a20 (LHCombined Release)
LH_MULTIPLAYER_API LH_RETURN LHNetGetCurrentProfileDouble(char* name, double* value);
// BW1W120 10018e20 BW1M119 01104940 (LHCombined Release)
LH_MULTIPLAYER_API LH_RETURN LHNetGetCurrentProfileData(char* name, unsigned char* data, unsigned long* size);
// BW1W120 10018e90 BW1M119 01104870 (LHCombined Release)
LH_MULTIPLAYER_API LH_RETURN LHNetSetCurrentProfileUlong(char* name, unsigned long value);
// BW1W120 10018f00 BW1M119 011047a0 (LHCombined Release)
LH_MULTIPLAYER_API LH_RETURN LHNetSetCurrentProfileString(char* name, char* value);
// BW1W120 10018f70 BW1M119 011046d0 (LHCombined Release)
LH_MULTIPLAYER_API LH_RETURN LHNetSetCurrentProfileWString(char* name, wchar_t* value);
// BW1W120 10018fe0 BW1M119 01104600 (LHCombined Release)
LH_MULTIPLAYER_API LH_RETURN LHNetSetCurrentProfileDouble(char* name, double value);
// BW1W120 10019050 BW1M119 01104520 (LHCombined Release)
LH_MULTIPLAYER_API LH_RETURN LHNetSetCurrentProfileData(char* name, unsigned char* data, unsigned long size);
// BW1W120 100190c0 BW1M119 011042e0 (LHCombined Release)
LH_MULTIPLAYER_API LH_RETURN LHNetGetProfileList(LHLinkedList<wchar_t*>* list);
// BW1W120 100191a0 BW1M119 011040f0 (LHCombined Release)
LH_MULTIPLAYER_API LH_RETURN LHNetFreeProfileList(LHLinkedList<wchar_t*>* list);
// BW1W120 10019200 BW1M119 01104040 (LHCombined Release)
LH_MULTIPLAYER_API LH_RETURN LHNetDeleteProfile(wchar_t* profile);
// BW1W120 10019370 BW1M119 01103ce0 (LHCombined Release)
LH_MULTIPLAYER_API wchar_t* KeyToProfileName(char* key);

// BW1W120 100194a0 BW1M119 01103bd0 (LHCombined Release)
LH_MULTIPLAYER_API void ICQinttoLHTransportInfo(unsigned long address, LHTransportInfo* transport_info);
// BW1W120 10019570 BW1M119 01103b00 (LHCombined Release)
LH_MULTIPLAYER_API unsigned long LHTransportInfotoICQint(LHTransportInfo* transport_info);
// BW1W120 100195e0 BW1M119 01103a80 (LHCombined Release)
LH_MULTIPLAYER_API wchar_t* LIBCHAR2WCHAR(char* string);
// BW1W120 10019610 BW1M119 011039f0 (LHCombined Release)
LH_MULTIPLAYER_API char* LIBWCHAR2CHAR(wchar_t* string);
// BW1W120 10019640 BW1M119 011038f0 (LHCombined Release)
LH_MULTIPLAYER_API LH_RETURN LHGetInstalledBWVersion(unsigned long* version, char* country);
// BW1W120 100196f0 BW1M119 01103800 (LHCombined Release)
LH_MULTIPLAYER_API bool LHCheckForInternetConnection(char options);

#endif /* BW1_DECOMP_LH_NET_UTILS_INCLUDED_H */
