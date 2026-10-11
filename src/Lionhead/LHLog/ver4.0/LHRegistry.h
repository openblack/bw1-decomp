#ifndef BW1_DECOMP_LH_REGISTRY_INCLUDED_H
#define BW1_DECOMP_LH_REGISTRY_INCLUDED_H

#include <wchar.h> /* For wchar_t */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */
#include "LHLogExport.h"

struct HKEY__;
struct _GUID;

enum LH_REG_KEY_TYPE
{
	LH_REG_KEY_TYPE_CURRENT_USER = 0,
	LH_REG_KEY_TYPE_USER = 1,
	LH_REG_KEY_TYPE_LOCAL_MACHINE = 2,
};

// BW1W120 10008d10 BW1M119 01171680 (LHCombined Release)
LH_LOG_API void LHRegistrySetCurrentKey(LH_REG_KEY_TYPE key_type);
// BW1W120 10008d40 BW1M119 01171620 (LHCombined Release)
LH_LOG_API LH_REG_KEY_TYPE LHRegistryGetCurrentKey();

// BW1W120 10008d60 BW1M119 01170d80 (LHCombined Release)
LH_LOG_API HKEY__* OpenRegistryKey(char* key);
// BW1W120 10008d90 BW1M119 01170ce0 (LHCombined Release)
LH_LOG_API bool32_t RegistryCheckKey(char* key);
// BW1W120 10008db0 BW1M119 01170c60 (LHCombined Release)
LH_LOG_API HKEY__* CreateRegistryKey(char* key);
// BW1W120 10008de0 BW1M119 01170b90 (LHCombined Release)
LH_LOG_API HKEY__* OpenOrCreateRegistryKey(char* key);

// BW1W120 10008e00 BW1M119 01170ec0 (LHCombined Release)
LH_LOG_API LH_RETURN RegistryRetrieveVal(char* key, char* value, unsigned char* data, unsigned long* val_size,
                                         unsigned long type);
// BW1W120 10009220 BW1M119 01170e00 (LHCombined Release)
LH_LOG_API LH_RETURN RegistrySetVal(char* key, char* value, unsigned char* data, unsigned long size,
                                    unsigned long type);

// BW1W120 100092a0 BW1M119 011715b0 (LHCombined Release)
LH_LOG_API LH_RETURN RegistryRetrieveULong(char* key, char* value, unsigned long* out);
// BW1W120 100092d0 BW1M119 01171550 (LHCombined Release)
LH_LOG_API LH_RETURN RegistrySetULong(char* key, char* value, unsigned long data);
// BW1W120 100092f0 BW1M119 01171410 (LHCombined Release)
LH_LOG_API LH_RETURN RegistryRetrieveDouble(char* key, char* value, double* out);
// BW1W120 10009320 BW1M119 011713b0 (LHCombined Release)
LH_LOG_API LH_RETURN RegistrySetDouble(char* key, char* value, double data);
// BW1W120 100092f0 BW1M119 011714e0 (LHCombined Release)
LH_LOG_API LH_RETURN RegistryRetrieveINT64(char* key, char* value, __int64* out);
// BW1W120 10009320 BW1M119 01171480 (LHCombined Release)
LH_LOG_API LH_RETURN RegistrySetINT64(char* key, char* value, __int64 data);
// BW1W120 10009340 BW1M119 01171350 (LHCombined Release)
LH_LOG_API LH_RETURN RegistryRetrieveString(char* key, char* value, char* out, unsigned long* size);
// BW1W120 10009360 BW1M119 011712b0 (LHCombined Release)
LH_LOG_API LH_RETURN RegistrySetString(char* key, char* value, char* data);
// BW1W120 100093a0 BW1M119 01171200 (LHCombined Release)
LH_LOG_API LH_RETURN RegistryRetrieveWString(char* key, char* value, wchar_t* out, unsigned long* size);
// BW1W120 100093e0 BW1M119 01171160 (LHCombined Release)
LH_LOG_API LH_RETURN RegistrySetWString(char* key, char* value, wchar_t* data);
// BW1W120 10009410 BW1M119 011710f0 (LHCombined Release)
LH_LOG_API LH_RETURN RegistryRetrieveGUID(char* key, char* value, _GUID* out);
// BW1W120 10009440 BW1M119 01171080 (LHCombined Release)
LH_LOG_API LH_RETURN RegistrySetGUID(char* key, char* value, _GUID* data);
// BW1W120 10009460 BW1M119 01171020 (LHCombined Release)
LH_LOG_API LH_RETURN RegistryRetrieveData(char* key, char* value, unsigned char* out, unsigned long* size);
// BW1W120 10009480 BW1M119 01170fc0 (LHCombined Release)
LH_LOG_API LH_RETURN RegistrySetData(char* key, char* value, unsigned char* data, unsigned long size);

#endif /* BW1_DECOMP_LH_REGISTRY_INCLUDED_H */
