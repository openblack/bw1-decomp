#ifndef BW1_DECOMP_CHAIN_INCLUDED_H
#define BW1_DECOMP_CHAIN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ChainJoint.h"  /* For class ChainJoint */
#include "GJBaseUtils.h" /* For class GJArray */
#include "PSysBase.h"    /* For struct PSysBase */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class Persistent;

class Chain : public PSysBase
{
public:
	Persistent*         field_0x14;
	long                field_0x18;
	long                field_0x1c;
	float               field_0x20;
	float               field_0x24;
	float               field_0x28;
	float               field_0x2c;
	float               field_0x30;
	float               field_0x34;
	uint8_t             field_0x38;
	uint32_t            field_0x3c;
	uint8_t             field_0x40;
	GJArray<ChainJoint> Joints;
	float               field_0x4c;

	// Override methods

	// BW1W120 006c8810 BW1M119 01483af0
	virtual ~Chain();
	// BW1W120 006c8800 BW1M119 0142bb00
	virtual char* GetDebugText();
	// BW1W120 00695c10 BW1M119 01424db0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006cc780 BW1M119 0148bc10
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 006c87f0 BW1M119 0142bad0
	virtual uint32_t GetSaveType();

	// BW1W120 006c87d0 BW1M119 01483d30
	Chain();
};
static_assert(sizeof(Chain) == 0x50, "Data type is of wrong size");

#endif /* BW1_DECOMP_CHAIN_INCLUDED_H */
