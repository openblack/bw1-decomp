#ifndef BW1_DECOMP_LH_VERSION_INCLUDED_H
#define BW1_DECOMP_LH_VERSION_INCLUDED_H

#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */

class LHVersion
{
public:
	// Static methods

	// BW1W120 10008760 BW1M119 0116ebb0 (LHCombined Release)
	__declspec(dllimport) static LH_RETURN GetMajorMinor(char* module, unsigned long* major, unsigned long* minor);
	// BW1W120 10002750 BW1M119 null
	__declspec(dllimport) static unsigned long GetModuleChecksum() { return ModuleChecksum; }

private:
	__declspec(dllimport) static unsigned long ModuleChecksum;
};

#endif /* BW1_DECOMP_LH_VERSION_INCLUDED_H */
