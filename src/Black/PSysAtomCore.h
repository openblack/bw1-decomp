#ifndef BW1_DECOMP_P_SYS_ATOM_CORE_INCLUDED_H
#define BW1_DECOMP_P_SYS_ATOM_CORE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "PSysBase.h"      /* For struct PSysBase */
#include "PSysModifiers.h" /* For struct BaseAtomModifierData, struct BaseCollectionModifierData */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class AtomCollection : public PSysBase
{
public:
	uint8_t field_0x14[0x40];

	// BW1W120 00674890 BW1M119 013eac80
	virtual ~AtomCollection();
	// BW1W120 00674880 BW1M119 0142cb40
	virtual char* GetDebugText();
	// BW1W120 00674870 BW1M119 0142cb00
	virtual uint32_t GetSaveType();

	// BW1W120 00674830 BW1M119 013eaf30
	AtomCollection();

	// Non-virtual methods

	// BW1W120 00674ed0 BW1M119 01079960
	float GetAge();
};

class AtomCore : public PSysBase
{
public:
	uint8_t field_0x14[0x11c];

	// Override methods

	// BW1W120 006739f0 BW1M119 010941f0
	virtual ~AtomCore();
	// BW1W120 00673c70 BW1M119 013ed030
	virtual float GetRadius();
	// BW1W120 006739e0 BW1M119 0142cbc0
	virtual char* GetDebugText();
	// BW1W120 00694840 BW1M119 01426200
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006cb3a0 BW1M119 0148d310
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 006739d0 BW1M119 0142cb80
	virtual uint32_t GetSaveType();

	// BW1W120 00673830 BW1M119 010807b0
	AtomCore();
};

#endif /* BW1_DECOMP_P_SYS_ATOM_CORE_INCLUDED_H */
