#ifndef BW1_DECOMP_P_SYS_TORNADO_INCLUDED_H
#define BW1_DECOMP_P_SYS_TORNADO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysModifiers.h" /* For struct BaseAtomModifierData, struct BaseCollectionModifierData */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class UR_Tornado__CollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 00560a40 BW1M100 inlined UR_Tornado::CollectionData::_dt( (void))
    virtual ~UR_Tornado__CollectionData();
    // BW1W120 00560940 BW1M100 inlined UR_Tornado::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00699150 BW1M100 inlined UR_Tornado::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 006cfc40 BW1M100 inlined UR_Tornado::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 00560930 BW1M100 inlined UR_Tornado::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_Tornado__DebrisCollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 00560a60 BW1M100 inlined UR_Tornado::DebrisCollectionData::_dt( (void))
    virtual ~UR_Tornado__DebrisCollectionData();
    // BW1W120 00560990 BW1M100 inlined UR_Tornado::DebrisCollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00698f10 BW1M100 inlined UR_Tornado::DebrisCollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 006cf9f0 BW1M100 inlined UR_Tornado::DebrisCollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 00560980 BW1M100 inlined UR_Tornado::DebrisCollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_Tornado__FlyingAtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // BW1W120 00560ac0 BW1M100 inlined UR_Tornado::FlyingAtomData::_dt( (void))
    virtual ~UR_Tornado__FlyingAtomData();
    // BW1W120 00560a30 BW1M100 inlined UR_Tornado::FlyingAtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00699070 BW1M100 inlined UR_Tornado::FlyingAtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 006cfb50 BW1M100 inlined UR_Tornado::FlyingAtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 00560a20 BW1M100 inlined UR_Tornado::FlyingAtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_Tornado__FlyingCollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // BW1W120 00560a90 BW1M100 inlined UR_Tornado::FlyingCollectionData::_dt( (void))
    virtual ~UR_Tornado__FlyingCollectionData();
    // BW1W120 005609e0 BW1M100 inlined UR_Tornado::FlyingCollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // BW1W120 00698fc0 BW1M100 inlined UR_Tornado::FlyingCollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 006cfaa0 BW1M100 inlined UR_Tornado::FlyingCollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 005609d0 BW1M100 inlined UR_Tornado::FlyingCollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_P_SYS_TORNADO_INCLUDED_H */
