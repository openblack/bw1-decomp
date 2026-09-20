#ifndef BW1_DECOMP_MAGIC_TELEPORT_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_TELEPORT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

class Base;

class GMagicTeleportInfo : public GMagicInfo
{
public:
	// Override methods

	// BW1W120 004356c0 BW1M100 103b2190 GMagicTeleportInfo::_dt(void)
	virtual ~GMagicTeleportInfo();
};

#endif /* BW1_DECOMP_MAGIC_TELEPORT_INFO_INCLUDED_H */
