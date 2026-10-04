#ifndef BW1_DECOMP_LH_REGISTRY_INCLUDED_H
#define BW1_DECOMP_LH_REGISTRY_INCLUDED_H

#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */

enum LH_REG_KEY_TYPE
{
	LH_REG_KEY_TYPE_0x00 = 0x0,
};

// BW1W120 10008d10 BW1M119 01171680 (LHCombined Release)
__declspec(dllimport) void LHRegistrySetCurrentKey(LH_REG_KEY_TYPE key_type);
// BW1W120 100092a0 BW1M119 011715b0 (LHCombined Release)
__declspec(dllimport) LH_RETURN RegistryRetrieveULong(char* key, char* value, unsigned long* out);

#endif /* BW1_DECOMP_LH_REGISTRY_INCLUDED_H */
