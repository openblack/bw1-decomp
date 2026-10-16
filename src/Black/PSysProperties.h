#ifndef BW1_DECOMP_P_SYS_PROPERTIES_INCLUDED_H
#define BW1_DECOMP_P_SYS_PROPERTIES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "PSysBase.h"      /* For struct PSysBase */
#include "PSysModifiers.h" /* For struct BaseAtomModifierData, struct BaseCollectionModifierData */

// Forward Declares

class AtomCollectionModifier;
class Base;
class GameOSFile;
class GameThing;

class UR_Lightning_CollectionData : public BaseCollectionModifierData
{
public:
	uint8_t field_0x20[0xa0];

	// Override methods

	// BW1W120 0068ff20 BW1M119 inlined
	virtual ~UR_Lightning_CollectionData();
	// BW1W120 0068ff10 BW1M119 inlined
	virtual char* GetDebugText();
	// BW1W120 00697870 BW1M119 inlined
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006ce3b0 BW1M119 inlined
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0068ff00 BW1M119 inlined
	virtual uint32_t GetSaveType();

	// BW1W120 0068fe20 BW1M119 inlined
	UR_Lightning_CollectionData();

	// BW1W120 0068fe20 BW1M119 0141e000
	UR_Lightning_CollectionData(const AtomCollectionModifier* modifier);
};

class UR_PlasmaInf : public PSysBase
{
public:
	LHPoint Start;       /* 0x14 */
	LHPoint End;         /* 0x20 */
	LHPoint StartNormal; /* 0x2c */
	LHPoint EndNormal;   /* 0x38 */
	float   Width;       /* 0x44 */
	float   Speed;       /* 0x48 */
	uint8_t Alpha;       /* 0x4c */

	// Override methods

	// BW1W120 00466530 BW1M119 0142b7f0
	virtual char* GetDebugText() { return PSYS_DEBUG_TEXT; }
	// BW1W120 00696200 BW1M119 01424af0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006ccd60 BW1M119 0148b950
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 00466520 BW1M119 0142b7b0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_UR_PLASMA_INF; }

	// BW1W120 0055f2d0 BW1M119 inlined
	UR_PlasmaInf() {}
	// BW1W120 inlined BW1M119 inlined
	UR_PlasmaInf(const LHPoint& start, const LHPoint& end, const LHPoint& start_normal, const LHPoint& end_normal,
	             float width, float speed, uint8_t alpha)
		: Start(start), End(end), StartNormal(start_normal), EndNormal(end_normal), Width(width), Speed(speed),
		  Alpha(alpha)
	{
	}
};

static_assert(sizeof(UR_PlasmaInf) == 0x50, "Data type is of wrong size");

#endif /* BW1_DECOMP_P_SYS_PROPERTIES_INCLUDED_H */
