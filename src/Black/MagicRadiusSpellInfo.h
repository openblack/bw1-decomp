#ifndef BW1_DECOMP_MAGIC_RADIUS_SPELL_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_RADIUS_SPELL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

class Base;

class GMagicRadiusSpellInfo : public GMagicInfo
{
public:
	// Override methods

	// BW1W120 00435850 BW1M100 10190190 GMagicRadiusSpellInfo::_dt(void)
	virtual ~GMagicRadiusSpellInfo();
};

#endif /* BW1_DECOMP_MAGIC_RADIUS_SPELL_INFO_INCLUDED_H */
