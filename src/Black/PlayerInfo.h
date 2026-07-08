#ifndef BW1_DECOMP_PLAYER_INFO_INCLUDED_H
#define BW1_DECOMP_PLAYER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

enum PLAYER_TYPE
{
	PLAYER_TYPE_0 = 0x0,
	_PLAYER_TYPE_COUNT = 0x1
};

// Forward Declares

class Base;

class CPDesireNodeInfo
{
public:
	// Override methods

	// BW1W120 00655b70 BW1M100 104ab970 CPDesireNodeInfo::GetNumChildren(void)
	virtual int GetNumChildren();
};

class GPlayerInfo : public GBaseInfo
{
public:
	float    field_0x10;
	float    field_0x14;
	float    field_0x18;
	float    field_0x1c;
	uint32_t field_0x20;
	float    field_0x24;
	float    field_0x28;
	float    field_0x2c;
	float    field_0x30;
	float    field_0x34;
	float    field_0x38;
	float    field_0x3c;
	float    field_0x40;
	uint32_t field_0x44;
	float    field_0x48;
	float    field_0x4c;
	uint8_t  field_0x50[0x40];

	// Override methods

	// BW1W120 0054be50 BW1M100 104e7bd0 GPlayerInfo::_dt(void)
	virtual ~GPlayerInfo();
	// BW1W120 0054b830 BW1M100 1058eb00 GPlayerInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

struct PlayerInfo
{
	uint8_t field_0x0[0x8];

	// Constructors

	// BW1W120 00648d50 BW1M100 10375150 PlayerInfo::PlayerInfo(void)
	PlayerInfo();
};

#endif /* BW1_DECOMP_PLAYER_INFO_INCLUDED_H */
