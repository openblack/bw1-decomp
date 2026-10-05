#ifndef BW1_DECOMP_REACTION_FUNCTION_INCLUDED_H
#define BW1_DECOMP_REACTION_FUNCTION_INCLUDED_H

#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For NUM_REACTION_FUNCTIONS */

struct ReactionFunction
{
	char     Name[0x40];
	uint32_t field_0x40;
	uint8_t  field_0x44[0x7c];

	// Static data

	// BW1W120 00c09c80
	static ReactionFunction Functions[NUM_REACTION_FUNCTIONS];
};

#endif /* BW1_DECOMP_REACTION_FUNCTION_INCLUDED_H */
