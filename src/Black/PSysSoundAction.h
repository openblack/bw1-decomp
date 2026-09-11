#ifndef BW1_DECOMP_P_SYS_SOUND_ACTION_INCLUDED_H
#define BW1_DECOMP_P_SYS_SOUND_ACTION_INCLUDED_H

#include <assert.h>
#include <stddef.h>
#include <stdint.h>

// PSysSound construction (BW1M100 104870b0) copies five words and one flag byte.
// SoundActionProperty::ReadProperty passes Action to FindEnumVal(long*).
// The other scalar meanings/types remain unknown; these are not opaque storage.
class PSysSoundAction
{
public:
	long     Action; /* 0x0 */
	uint32_t field_0x4;
	uint32_t field_0x8;
	uint32_t field_0xc;
	uint32_t field_0x10;
	uint8_t  Flags; /* 0x14: bit mask, not bool; StartSound at 006745d0 */
};

static_assert(offsetof(PSysSoundAction, Flags) == 0x14, "PSysSoundAction flags offset is incorrect");
static_assert(sizeof(PSysSoundAction) == 0x18, "PSysSoundAction size is incorrect");

#endif /* BW1_DECOMP_P_SYS_SOUND_ACTION_INCLUDED_H */
