#ifndef BW1_DECOMP_LH_RETURN_INCLUDED_H
#define BW1_DECOMP_LH_RETURN_INCLUDED_H

// Generic Lionhead status code, returned throughout LHLib and LHMultiplayer.
// TODO: value 1 is unnamed (never observed); header filename is fabricated.
enum LH_RETURN
{
	LH_OK = 0x0,
	LH_FAIL = 0x2,
	LH_ERROR = 0x3,
	LH_NO_MEMORY = 0x4,
};

#endif /* BW1_DECOMP_LH_RETURN_INCLUDED_H */
