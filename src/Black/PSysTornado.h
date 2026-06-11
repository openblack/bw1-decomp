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

    // win1.41 00560a40 mac inlined UR_Tornado::CollectionData::_dt( (void))
    virtual ~UR_Tornado__CollectionData();
    // win1.41 00560940 mac inlined UR_Tornado::CollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // win1.41 00699150 mac inlined UR_Tornado::CollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006cfc40 mac inlined UR_Tornado::CollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00560930 mac inlined UR_Tornado::CollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_Tornado__DebrisCollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // win1.41 00560a60 mac inlined UR_Tornado::DebrisCollectionData::_dt( (void))
    virtual ~UR_Tornado__DebrisCollectionData();
    // win1.41 00560990 mac inlined UR_Tornado::DebrisCollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // win1.41 00698f10 mac inlined UR_Tornado::DebrisCollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006cf9f0 mac inlined UR_Tornado::DebrisCollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00560980 mac inlined UR_Tornado::DebrisCollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_Tornado__FlyingAtomData: public BaseAtomModifierData
{
public:

    // Override methods

    // win1.41 00560ac0 mac inlined UR_Tornado::FlyingAtomData::_dt( (void))
    virtual ~UR_Tornado__FlyingAtomData();
    // win1.41 00560a30 mac inlined UR_Tornado::FlyingAtomData::GetDebugText( (void))
    virtual char* GetDebugText();
    // win1.41 00699070 mac inlined UR_Tornado::FlyingAtomData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006cfb50 mac inlined UR_Tornado::FlyingAtomData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00560a20 mac inlined UR_Tornado::FlyingAtomData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

class UR_Tornado__FlyingCollectionData: public BaseCollectionModifierData
{
public:

    // Override methods

    // win1.41 00560a90 mac inlined UR_Tornado::FlyingCollectionData::_dt( (void))
    virtual ~UR_Tornado__FlyingCollectionData();
    // win1.41 005609e0 mac inlined UR_Tornado::FlyingCollectionData::GetDebugText( (void))
    virtual char* GetDebugText();
    // win1.41 00698fc0 mac inlined UR_Tornado::FlyingCollectionData::Load( (GameOSFile &))
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006cfaa0 mac inlined UR_Tornado::FlyingCollectionData::Save( (GameOSFile &))
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 005609d0 mac inlined UR_Tornado::FlyingCollectionData::GetSaveType( (void))
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_P_SYS_TORNADO_INCLUDED_H */
