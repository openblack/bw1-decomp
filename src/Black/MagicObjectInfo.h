#ifndef BW1_DECOMP_MAGIC_OBJECT_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_OBJECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

class Base;

class GMagicObjectInfo : public GMagicInfo
{
public:
	// Override methods

	// BW1W120 00435830 BW1M100 1018fa30 GMagicObjectInfo::_dt(void)
	virtual ~GMagicObjectInfo();
};

#endif /* BW1_DECOMP_MAGIC_OBJECT_INFO_INCLUDED_H */
