#ifndef BW1_DECOMP_P_SYS_MODIFIERS_INCLUDED_H
#define BW1_DECOMP_P_SYS_MODIFIERS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class AtomCollectionModifier;
class Base;
class GameOSFile;
class GameThing;
struct LHPoint;

class BaseAtomModifierData : public PSysBase
{
public:
	BaseAtomModifierData*         Previous;
	BaseAtomModifierData*         Next;
	const AtomCollectionModifier* Modifier;

	// BW1W120 006939d0 BW1M119 0130d4d0
	BaseAtomModifierData(const AtomCollectionModifier* modifier) : Previous(NULL), Next(NULL), Modifier(modifier) {}

	// Override methods

	// BW1W120 0055f1f0 BW1M119 0140a5c0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_UNUSED_000; }
	// BW1W120 0055f200 BW1M119 0140a600
	virtual char* GetDebugText() { return PSYS_DEBUG_TEXT; }
	// BW1W120 0055f210 BW1M119 0130d430
	virtual ~BaseAtomModifierData() {}
	// BW1W120 006947e0 BW1M119 01426660
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006cb340 BW1M119 0148dcb0
	virtual bool32_t Save(GameOSFile& file);
};
static_assert(sizeof(BaseAtomModifierData) == 0x20, "Data type is of wrong size");

class BaseCollectionModifierData : public PSysBase
{
public:
	BaseCollectionModifierData*   Previous;
	BaseCollectionModifierData*   Next;
	const AtomCollectionModifier* Modifier;

	// BW1W120 00676950 BW1M119 0130d730
	BaseCollectionModifierData(const AtomCollectionModifier* modifier) : Previous(NULL), Next(NULL), Modifier(modifier)
	{
	}

	// Override methods

	// BW1W120 0055f280 BW1M119 0140a700
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_UNUSED_000; }
	// BW1W120 0055f290 BW1M119 0140a750
	virtual char* GetDebugText() { return PSYS_DEBUG_TEXT; }
	// BW1W120 0055f2a0 BW1M119 0130d690
	virtual ~BaseCollectionModifierData() {}
	// BW1W120 00694810 BW1M119 014265b0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006cb370 BW1M119 0148dc00
	virtual bool32_t Save(GameOSFile& file);
};
static_assert(sizeof(BaseCollectionModifierData) == 0x20, "Data type is of wrong size");

class DrawOffset : public PSysBase
{
public:
	// Override methods

	// BW1W120 006c7550 BW1M119 01486480
	virtual ~DrawOffset();
	// BW1W120 006c7540 BW1M119 0142cac0
	virtual char* GetDebugText();
	// BW1W120 00694d90 BW1M119 01425d80
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006cb8b0 BW1M119 0148cae0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 006c7530 BW1M119 0142ca80
	virtual uint32_t GetSaveType();

	// Virtual methods

	// BW1W120 purecall BW1M119 purecall
	virtual void GetOffset(LHPoint* offset) = 0;
	// BW1W120 006c7510 BW1M119 01486510
	virtual void SetRefPos(const LHPoint& pos, float amount);
};

class DrawOffsetDecay : public DrawOffset
{
public:
	uint8_t field_0x14[0x2c];

	// Override methods

	// BW1W120 006c7820 BW1M119 01485f20
	virtual ~DrawOffsetDecay();
	// BW1W120 006c7810 BW1M119 0142c930
	virtual char* GetDebugText();
	// BW1W120 00694ea0 BW1M119 01425c20
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006cb9c0 BW1M119 0148c980
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 006c7800 BW1M119 0142c8f0
	virtual uint32_t GetSaveType();
	// BW1W120 006c7960 BW1M119 01485ed0
	virtual void GetOffset(LHPoint* offset);

	// BW1W120 006c77d0 BW1M119 014860e0
	DrawOffsetDecay();
	// BW1W120 006c7840 BW1M119 01485fd0
	DrawOffsetDecay(const LHPoint& offset);
};

class DrawOffsetLT : public DrawOffset
{
public:
	uint8_t field_0x14[0x14];

	// Override methods

	// BW1W120 006c75e0 BW1M119 0142c970
	virtual ~DrawOffsetLT();
	// BW1W120 006c75d0 BW1M119 0142ca40
	virtual char* GetDebugText();
	// BW1W120 00694df0 BW1M119 01425ce0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006cb910 BW1M119 0148ca40
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 006c75c0 BW1M119 0142ca00
	virtual uint32_t GetSaveType();
	// BW1W120 006c7690 BW1M119 0102a850
	virtual void GetOffset(LHPoint* offset);
	// BW1W120 006c7600 BW1M119 0101bf60
	virtual void SetRefPos(const LHPoint& pos, float amount);

	// BW1W120 006c75a0 BW1M119 01486330
	DrawOffsetLT();
};

class GJAnimVolFX : public PSysBase
{
public:
	// Override methods

	// BW1W120 0069d2d0 BW1M119 inlined
	virtual ~GJAnimVolFX();
};

#endif /* BW1_DECOMP_P_SYS_MODIFIERS_INCLUDED_H */
