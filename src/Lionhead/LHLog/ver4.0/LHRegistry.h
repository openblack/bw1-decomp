#ifndef BW1_DECOMP_LH_REGISTRY_INCLUDED_H
#define BW1_DECOMP_LH_REGISTRY_INCLUDED_H

#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */

enum LH_REG_KEY_TYPE
{
	LH_REG_KEY_TYPE_CURRENT_USER = 0,
	LH_REG_KEY_TYPE_LOCAL_MACHINE = 2,
};

// BW1W120 10008d10 BW1M119 01171680 (LHCombined Release)
__declspec(dllimport) void LHRegistrySetCurrentKey(LH_REG_KEY_TYPE key_type);
// BW1W120 10008d40 BW1M119 01171620 (LHCombined Release)
__declspec(dllimport) LH_REG_KEY_TYPE LHRegistryGetCurrentKey();
// BW1W120 100092a0 BW1M119 011715b0 (LHCombined Release)
__declspec(dllimport) LH_RETURN RegistryRetrieveULong(char* key, char* value, unsigned long* out);
// BW1W120 100092d0 BW1M119 01171550 (LHCombined Release)
__declspec(dllimport) LH_RETURN RegistrySetULong(char* key, char* value, unsigned long data);
// BW1W120 10009340 BW1M119 01171350 (LHCombined Release)
__declspec(dllimport) LH_RETURN RegistryRetrieveString(char* key, char* value, char* out, unsigned long* size);

#endif /* BW1_DECOMP_LH_REGISTRY_INCLUDED_H */
