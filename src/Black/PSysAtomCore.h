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

	// BW1W120 00674ed0 BW1M100 100773a0 AtomCollection::GetAge(void)
	float GetAge();
	// BW1W120 00674880 BW1M100 10423c00 AtomCollection::GetDebugText(void)
	char* GetDebugText();
	// BW1W120 00674890 BW1M100 103e1fb0 AtomCollection::_dt(void)
	void _dt(uint32_t param_1);
};

struct UR_GesturingRecognised
{
	uint8_t field_0x0[0x4];

	// Non-virtual methods

	// BW1W120 006884f0 BW1M100 1007c960 UR_GesturingRecognised::ModifyAtomCollection(AtomCollection *) const
	uint32_t ModifyAtomCollection(AtomCollection* collection);
	// BW1W120 00688910 BW1M100 10406f90 UR_GesturingRecognised::ModifySubCollection(AtomCollection *, UR_GesturingRecognised::AtomData *) const
	void ModifySubCollection(AtomCollection* collection, Q222UR_GesturingRecognised8AtomData* data);
};

class AtomCore : public PSysBase
{
public:
	// Override methods

	// BW1W120 006739f0 BW1M100 10091fd0 AtomCore::_dt(void)
	virtual ~AtomCore();
	// BW1W120 00673c70 BW1M100 103e41d0 AtomCore::GetRadius(void)
	virtual float GetRadius();
	// BW1W120 006739e0 BW1M100 10423c80 AtomCore::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 00694840 BW1M100 1041d1f0 AtomCore::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006cb3a0 BW1M100 10484ec0 AtomCore::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 006739d0 BW1M100 10423c40 AtomCore::GetSaveType(void)
	virtual uint32_t GetSaveType();
};

class UR_GesturingRecognised__AtomData : public BaseAtomModifierData
{
public:
	// Override methods

	// BW1W120 006881d0 BW1M100 inlined UR_GesturingRecognised::AtomData::_dt( (void))
	virtual ~UR_GesturingRecognised__AtomData();
};

class UR_Plasma__AtomData : public BaseAtomModifierData
{
public:
	// Override methods

	// BW1W120 0055f3e0 BW1M100 inlined UR_Plasma::AtomData::_dt( (void))
	virtual ~UR_Plasma__AtomData();
	// BW1W120 0055f390 BW1M100 inlined UR_Plasma::AtomData::GetDebugText( (void))
	virtual char* GetDebugText();
	// BW1W120 00696570 BW1M100 inlined UR_Plasma::AtomData::Load( (GameOSFile &))
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006cd0c0 BW1M100 inlined UR_Plasma::AtomData::Save( (GameOSFile &))
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055f380 BW1M100 inlined UR_Plasma::AtomData::GetSaveType( (void))
	virtual uint32_t GetSaveType();
};

class UR_Plasma__SubCollectionData : public BaseCollectionModifierData
{
public:
	// Override methods

	// BW1W120 0055f3a0 BW1M100 inlined UR_Plasma::SubCollectionData::_dt( (void))
	virtual ~UR_Plasma__SubCollectionData();
	// BW1W120 0055f340 BW1M100 inlined UR_Plasma::SubCollectionData::GetDebugText( (void))
	virtual char* GetDebugText();
	// BW1W120 006963e0 BW1M100 inlined UR_Plasma::SubCollectionData::Load( (GameOSFile &))
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006ccf60 BW1M100 inlined UR_Plasma::SubCollectionData::Save( (GameOSFile &))
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055f330 BW1M100 inlined UR_Plasma::SubCollectionData::GetSaveType( (void))
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_P_SYS_ATOM_CORE_INCLUDED_H */
