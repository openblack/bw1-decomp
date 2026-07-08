#ifndef BW1_DECOMP_MAGIC_LIVING_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_LIVING_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LivingInfo.h" /* For struct GLivingInfo */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

class GMagicLivingInfo : public GLivingInfo
{
public:
	// Override methods

	// BW1W120 005fb980 BW1M100 inlined GMagicLivingInfo::_dt(void)
	virtual ~GMagicLivingInfo();
	// BW1W120 005fb910 BW1M100 inlined GMagicLivingInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
	// BW1W120 005fb900 BW1M100 inlined GMagicLivingInfo::GetMesh( const(void))
	virtual uint32_t GetMesh();
};

#endif /* BW1_DECOMP_MAGIC_LIVING_INFO_INCLUDED_H */
