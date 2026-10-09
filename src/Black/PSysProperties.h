#ifndef BW1_DECOMP_P_SYS_PROPERTIES_INCLUDED_H
#define BW1_DECOMP_P_SYS_PROPERTIES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

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
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006ce3b0 BW1M119 inlined
	virtual uint32_t Save(GameOSFile& file);
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
	uint8_t field_0x14[0x3c];

	// Override methods

	// BW1W120 00466540 BW1M119 inlined
	virtual ~UR_PlasmaInf();
	// BW1W120 00466530 BW1M119 inlined
	virtual char* GetDebugText();
	// BW1W120 00696200 BW1M119 inlined
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006ccd60 BW1M119 inlined
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00466520 BW1M119 inlined
	virtual uint32_t GetSaveType();

	// BW1W120 0055f2d0 BW1M119 inlined
	UR_PlasmaInf() {}
};

#endif /* BW1_DECOMP_P_SYS_PROPERTIES_INCLUDED_H */
