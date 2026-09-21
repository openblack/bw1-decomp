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
struct Q222UR_GesturingRecognised8AtomData;

struct AtomCollection
{
	uint8_t field_0x0[0x4];

	// Non-virtual methods

	// BW1W120 00674ed0 BW1M119 01079960
	float GetAge();
	// BW1W120 00674880 BW1M119 0142cb40
	char* GetDebugText();
	// BW1W120 00674890 BW1M119 013eac80
	void _dt(uint32_t param_1);
};

struct UR_GesturingRecognised
{
	uint8_t field_0x0[0x4];

	// Non-virtual methods

	// BW1W120 006884f0 BW1M119 0107ef00
	uint32_t ModifyAtomCollection(AtomCollection* collection) const;
	// BW1W120 00688910 BW1M119 014116b0
	void ModifySubCollection(AtomCollection* collection, Q222UR_GesturingRecognised8AtomData* data) const;
};

class AtomCore : public PSysBase
{
public:
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
};

class UR_GesturingRecognised__AtomData : public BaseAtomModifierData
{
public:
	// Override methods

	// BW1W120 006881d0 BW1M119 inlined
	virtual ~UR_GesturingRecognised__AtomData();
};

class UR_Plasma__AtomData : public BaseAtomModifierData
{
public:
	// Override methods

	// BW1W120 0055f3e0 BW1M119 inlined
	virtual ~UR_Plasma__AtomData();
	// BW1W120 0055f390 BW1M119 inlined
	virtual char* GetDebugText();
	// BW1W120 00696570 BW1M119 inlined
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006cd0c0 BW1M119 inlined
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055f380 BW1M119 inlined
	virtual uint32_t GetSaveType();
};

class UR_Plasma__SubCollectionData : public BaseCollectionModifierData
{
public:
	// Override methods

	// BW1W120 0055f3a0 BW1M119 inlined
	virtual ~UR_Plasma__SubCollectionData();
	// BW1W120 0055f340 BW1M119 inlined
	virtual char* GetDebugText();
	// BW1W120 006963e0 BW1M119 inlined
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006ccf60 BW1M119 inlined
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055f330 BW1M119 inlined
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_P_SYS_ATOM_CORE_INCLUDED_H */
