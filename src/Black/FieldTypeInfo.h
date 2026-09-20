#ifndef BW1_DECOMP_FIELD_TYPE_INFO_INCLUDED_H
#define BW1_DECOMP_FIELD_TYPE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

class Base;
class GBaseInfo;
struct MapCoords;

class GFieldTypeInfo : public GMultiMapFixedInfo
{
public:
	uint8_t field_0x20[0x34]; /* 0x120 */

	// Override methods

	// BW1W120 00527da0 BW1M100 100d1a40 GFieldTypeInfo::_dt(void)
	virtual ~GFieldTypeInfo();
	// BW1W120 00527d30 BW1M100 100d18c0 GFieldTypeInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
	// BW1W120 00528e50 BW1M100 100d4190 GFieldTypeInfo::IsOkToCreateAtPos( const(MapCoords const &, float, float))
	virtual bool IsOkToCreateAtPos(const MapCoords* param_1, float param_2, float param_3);
};

#endif /* BW1_DECOMP_FIELD_TYPE_INFO_INCLUDED_H */
