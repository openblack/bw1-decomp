#ifndef BW1_DECOMP_CREATURE_FILE_NAME_INCLUDED_H
#define BW1_DECOMP_CREATURE_FILE_NAME_INCLUDED_H

#include <chlasm/CreatureEnum.h> /* For CREATURE_TYPE_LAST */

struct CreatureFileName
{
	const char* BinaryName; /* 0x0 */
	const char* Name;       /* 0x4 */

	// BW1W120 009cf730
	static CreatureFileName Table[CREATURE_TYPE_LAST];
};

#endif /* BW1_DECOMP_CREATURE_FILE_NAME_INCLUDED_H */
