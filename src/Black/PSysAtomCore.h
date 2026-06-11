#ifndef BW1_DECOMP_P_SYS_ATOM_CORE_INCLUDED_H
#define BW1_DECOMP_P_SYS_ATOM_CORE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "PSysBase.h" /* For struct PSysBase */
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

    // win1.41 00674ed0 mac 100773a0 AtomCollection::GetAge(void)
    float GetAge();
    // win1.41 00674880 mac 10423c00 AtomCollection::GetDebugText(void)
    char* GetDebugText();
    // win1.41 00674890 mac 103e1fb0 AtomCollection::_dt(void)
    void _dt(uint32_t param_1);
};

struct UR_GesturingRecognised
{
    uint8_t field_0x0[0x4];

    // Non-virtual methods

    // win1.41 006884f0 mac 1007c960 UR_GesturingRecognised::ModifyAtomCollection(AtomCollection *) const
    uint32_t ModifyAtomCollection(AtomCollection* collection);
    // win1.41 00688910 mac 10406f90 UR_GesturingRecognised::ModifySubCollection(AtomCollection *, UR_GesturingRecognised::AtomData *) const
    void ModifySubCollection(AtomCollection* collection, Q222UR_GesturingRecognised8AtomData* data);
};

class AtomCore: public PSysBase
{
public:

    // Override methods

    // win1.41 006739f0 mac 10091fd0 AtomCore::_dt(void)
    virtual ~AtomCore();
    // win1.41 00673c70 mac 103e41d0 AtomCore::GetRadius(void)
    virtual float GetRadius();
    // win1.41 006739e0 mac 10423c80 AtomCore::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00694840 mac 1041d1f0 AtomCore::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006cb3a0 mac 10484ec0 AtomCore::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 006739d0 mac 10423c40 AtomCore::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class UR_GesturingRecognised__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // win1.41 006881d0 mac inlined UR_GesturingRecognised::AtomData::_dt( (void))
    virtual ~UR_GesturingRecognised__AtomData();
};

class UR_Plasma__AtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // win1.41 0055f3e0 mac inlined UR_Plasma::AtomData::_dt( (void))
    virtual ~UR_Plasma__AtomData();
    // win1.41 0055f390 mac inlined UR_Plasma::AtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // win1.41 00696570 mac inlined UR_Plasma::AtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006cd0c0 mac inlined UR_Plasma::AtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055f380 mac inlined UR_Plasma::AtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_Plasma__SubCollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // win1.41 0055f3a0 mac inlined UR_Plasma::SubCollectionData::_dt( (void))
    virtual ~UR_Plasma__SubCollectionData();
    // win1.41 0055f340 mac inlined UR_Plasma::SubCollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // win1.41 006963e0 mac inlined UR_Plasma::SubCollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006ccf60 mac inlined UR_Plasma::SubCollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055f330 mac inlined UR_Plasma::SubCollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_P_SYS_ATOM_CORE_INCLUDED_H */
