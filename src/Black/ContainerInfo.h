#ifndef BW1_DECOMP_CONTAINER_INFO_INCLUDED_H
#define BW1_DECOMP_CONTAINER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GContainerInfo : public GBaseInfo
{
public:
	uint32_t field_0x10;
	uint8_t  field_0x14[0xfc];
	uint32_t field_0x110;
	uint8_t  field_0x114[0x2c];
	float    field_0x140;
	float    field_0x144;

	// Override methods

	// BW1W120 0046b880 BW1M100 100bfd60 GContainerInfo::_dt(void)
	virtual ~GContainerInfo();
	// BW1W120 0046b820 BW1M100 100bfe80 GContainerInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_CONTAINER_INFO_INCLUDED_H */
