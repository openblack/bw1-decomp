#ifndef BW1_DECOMP_PLAYER_INFO_INCLUDED_H
#define BW1_DECOMP_PLAYER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <uchar.h>

#include "BaseInfo.h" /* For struct GBaseInfo */

enum PLAYER_TYPE
{
	PLAYER_TYPE_0 = 0x0,
	// Descriptive enumerator names; values established by InitReal/ToggleComputerPlayer/SetupPlayers.
	PLAYER_TYPE_HUMAN = 0x1,
	PLAYER_TYPE_COMPUTER = 0x2,
	PLAYER_TYPE_NEUTRAL = 0x3,
	_PLAYER_TYPE_COUNT = 0x4
};

// Forward Declares

class Base;

class CPDesireNodeInfo
{
public:
	// Override methods

	// BW1W120 00655b70 BW1M119 014b2f20
	virtual int GetNumChildren();
};

class GPlayerInfo : public GBaseInfo
{
public:
	float    MaxAlignmentChangePerGameTurn;
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
	char16_t NetworkName[32]; /* 0x50; passed to WCHAR2CHAR by SetupPlayers. */

	// BW1W120 00d47988
	static GPlayerInfo Info;

	// Override methods

	// BW1W120 0054b830 BW1M119 014ef3b0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static methods

	// BW1W120 inlined BW1M119 0149f140
	static GPlayerInfo* GetInfo() { return &Info; }
};

#endif /* BW1_DECOMP_PLAYER_INFO_INCLUDED_H */
