#ifndef BW1_DECOMP_P_SYS_SOUND_ACTION_INCLUDED_H
#define BW1_DECOMP_P_SYS_SOUND_ACTION_INCLUDED_H

#include <assert.h>
#include <stddef.h>
#include <stdint.h>

class PSysSoundAction
{
public:
	PSysSoundAction() : Action(-1), field_0x4(1), field_0x8(2), field_0xc(2), field_0x10(0)
	{
		Flag0 = 0;
		Flag1 = 0;
		Flag2 = 0;
		Flag3 = 0;
		Flag4 = 0;
		Flag5 = 0;
	}

	long     Action; /* 0x0 */
	uint32_t field_0x4;
	uint32_t field_0x8;
	uint32_t field_0xc;
	uint32_t field_0x10;
	uint8_t  Flag0 : 1;
	uint8_t  Flag1 : 1;
	uint8_t  Flag2 : 1;
	uint8_t  Flag3 : 1;
	uint8_t  Flag4 : 1;
	uint8_t  Flag5 : 1;
};

static_assert(sizeof(PSysSoundAction) == 0x18, "PSysSoundAction size is incorrect");

#endif /* BW1_DECOMP_P_SYS_SOUND_ACTION_INCLUDED_H */
