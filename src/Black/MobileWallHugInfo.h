#ifndef BW1_DECOMP_MOBILE_WALL_HUG_INFO_INCLUDED_H
#define BW1_DECOMP_MOBILE_WALL_HUG_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint8_t */

#include "MobileInfo.h" /* For struct GMobileInfo */

class GMobileWallHugInfo : public GMobileInfo
{
public:
	int32_t speed; /* 0x104 */
	uint8_t field_0x108[0x4];
	int32_t field_0x10c; /* speed threshold */
	uint8_t field_0x110[0x4];
	float   field_0x114;
	float   field_0x118;
	float   field_0x11c;
};

#endif /* BW1_DECOMP_MOBILE_WALL_HUG_INFO_INCLUDED_H */
