#ifndef BW1_DECOMP_LH_REGISTRY_INCLUDED_H
#define BW1_DECOMP_LH_REGISTRY_INCLUDED_H

#include <wchar.h> /* For wchar_t */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */

enum LH_REG_KEY_TYPE
{
	LH_REG_KEY_TYPE_CURRENT_USER = 0,
	LH_REG_KEY_TYPE_USER = 1,
	LH_REG_KEY_TYPE_LOCAL_MACHINE = 2,
};

// BW1W120 10008d10 BW1M119 01171680 (LHCombined Release)
__declspec(dllimport) void LHRegistrySetCurrentKey(LH_REG_KEY_TYPE key_type);
// BW1W120 10008d40 BW1M119 01171620 (LHCombined Release)
__declspec(dllimport) LH_REG_KEY_TYPE LHRegistryGetCurrentKey();
// BW1W120 10008d90 BW1M119 01170ce0 (LHCombined Release)
__declspec(dllimport) bool32_t RegistryCheckKey(char* key);
// BW1W120 100092a0 BW1M119 011715b0 (LHCombined Release)
__declspec(dllimport) LH_RETURN RegistryRetrieveULong(char* key, char* value, unsigned long* out);
// BW1W120 100092d0 BW1M119 01171550 (LHCombined Release)
__declspec(dllimport) LH_RETURN RegistrySetULong(char* key, char* value, unsigned long data);
// BW1W120 100092f0 BW1M119 01171410 (LHCombined Release)
__declspec(dllimport) LH_RETURN RegistryRetrieveDouble(char* key, char* value, double* out);
// BW1W120 10009320 BW1M119 011713b0 (LHCombined Release)
__declspec(dllimport) LH_RETURN RegistrySetDouble(char* key, char* value, double data);
// BW1W120 10009340 BW1M119 01171350 (LHCombined Release)
__declspec(dllimport) LH_RETURN RegistryRetrieveString(char* key, char* value, char* out, unsigned long* size);
// BW1W120 10009360 BW1M119 011712b0 (LHCombined Release)
__declspec(dllimport) LH_RETURN RegistrySetString(char* key, char* value, char* data);
// BW1W120 100093a0 BW1M119 01171200 (LHCombined Release)
__declspec(dllimport) LH_RETURN RegistryRetrieveWString(char* key, char* value, wchar_t* out, unsigned long* size);
// BW1W120 100093e0 BW1M119 01171160 (LHCombined Release)
__declspec(dllimport) LH_RETURN RegistrySetWString(char* key, char* value, wchar_t* data);
// BW1W120 10009460 BW1M119 01171020 (LHCombined Release)
__declspec(dllimport) LH_RETURN RegistryRetrieveData(char* key, char* value, unsigned char* out, unsigned long* size);
// BW1W120 10009480 BW1M119 01170fc0 (LHCombined Release)
__declspec(dllimport) LH_RETURN RegistrySetData(char* key, char* value, unsigned char* data, unsigned long size);

#endif /* BW1_DECOMP_LH_REGISTRY_INCLUDED_H */
