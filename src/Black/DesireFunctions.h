#ifndef BW1_DECOMP_DESIRE_FUNCTIONS_INCLUDED_H
#define BW1_DECOMP_DESIRE_FUNCTIONS_INCLUDED_H

#include <stdint.h> /* For uint8_t */

#include <chlasm/Enum.h> /* For TOWN_DESIRE_INFO_LAST */

class DesireFunctions
{
public:
	char*   Name;
	uint8_t field_0x4[0x64];

	// Static data

	// BW1W120 00da32c8
	static DesireFunctions Infos[TOWN_DESIRE_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 0105ffe0
	static DesireFunctions* GetInfo() { return Infos; }
};

#endif /* BW1_DECOMP_DESIRE_FUNCTIONS_INCLUDED_H */
