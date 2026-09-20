#ifndef BW1_DECOMP_MOBILE_INFO_INCLUDED_H
#define BW1_DECOMP_MOBILE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ObjectInfo.h" /* For struct GObjectInfo */

class GMobileInfo : public GObjectInfo
{
public:
	uint32_t field_0x100;
};

#endif /* BW1_DECOMP_MOBILE_INFO_INCLUDED_H */
