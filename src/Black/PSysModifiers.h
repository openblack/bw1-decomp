#ifndef BW1_DECOMP_P_SYS_MODIFIERS_INCLUDED_H
#define BW1_DECOMP_P_SYS_MODIFIERS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class BaseAtomModifierData: public PSysBase
{
public:

    // Override methods

    // win1.41 0055f210 mac 1030ac30 BaseAtomModifierData::_dt(void)
    virtual ~BaseAtomModifierData();
    // win1.41 0055f200 mac 103ffe50 BaseAtomModifierData::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 006947e0 mac 1041d650 BaseAtomModifierData::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006cb340 mac 10485830 BaseAtomModifierData::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055f1f0 mac 103ffe10 BaseAtomModifierData::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class BaseCollectionModifierData: public PSysBase
{
public:

    // Override methods

    // win1.41 0055f2a0 mac 1030ae90 BaseCollectionModifierData::_dt(void)
    virtual ~BaseCollectionModifierData();
    // win1.41 0055f290 mac 103fffa0 BaseCollectionModifierData::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00694810 mac 1041d5a0 BaseCollectionModifierData::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006cb370 mac 10485780 BaseCollectionModifierData::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055f280 mac 103fff50 BaseCollectionModifierData::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class DrawOffset: public PSysBase
{
public:

    // Override methods

    // win1.41 006c7550 mac 1047e1d0 DrawOffset::_dt(void)
    virtual ~DrawOffset();
    // win1.41 006c7540 mac 10423b80 DrawOffset::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00694d90 mac 1041cd70 DrawOffset::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006cb8b0 mac 10484460 DrawOffset::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 006c7530 mac 10423b40 DrawOffset::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class DrawOffsetDecay: public DrawOffset
{
public:

    // Override methods

    // win1.41 006c7820 mac 1047dcd0 DrawOffsetDecay::_dt(void)
    virtual ~DrawOffsetDecay();
    // win1.41 006c7810 mac 104239f0 DrawOffsetDecay::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00694ea0 mac 1041cc10 DrawOffsetDecay::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006cb9c0 mac 10484300 DrawOffsetDecay::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 006c7800 mac 104239b0 DrawOffsetDecay::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class DrawOffsetLT: public DrawOffset
{
public:

    // Override methods

    // win1.41 006c75e0 mac 10423a30 DrawOffsetLT::_dt(void)
    virtual ~DrawOffsetLT();
    // win1.41 006c75d0 mac 10423b00 DrawOffsetLT::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00694df0 mac 1041ccd0 DrawOffsetLT::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006cb910 mac 104843c0 DrawOffsetLT::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 006c75c0 mac 10423ac0 DrawOffsetLT::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class GJAnimVolFX: public PSysBase
{
public:

    // Override methods

    // win1.41 0069d2d0 mac inlined GJAnimVolFX::_dt(void)
    virtual ~GJAnimVolFX();
};

#endif /* BW1_DECOMP_P_SYS_MODIFIERS_INCLUDED_H */
