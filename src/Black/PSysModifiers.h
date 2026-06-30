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

    // BW1W120 0055f210 BW1M100 1030ac30 BaseAtomModifierData::_dt(void)
    virtual ~BaseAtomModifierData();
    // BW1W120 0055f200 BW1M100 103ffe50 BaseAtomModifierData::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 006947e0 BW1M100 1041d650 BaseAtomModifierData::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cb340 BW1M100 10485830 BaseAtomModifierData::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055f1f0 BW1M100 103ffe10 BaseAtomModifierData::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class BaseCollectionModifierData: public PSysBase
{
public:

    // Override methods

    // BW1W120 0055f2a0 BW1M100 1030ae90 BaseCollectionModifierData::_dt(void)
    virtual ~BaseCollectionModifierData();
    // BW1W120 0055f290 BW1M100 103fffa0 BaseCollectionModifierData::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00694810 BW1M100 1041d5a0 BaseCollectionModifierData::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cb370 BW1M100 10485780 BaseCollectionModifierData::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055f280 BW1M100 103fff50 BaseCollectionModifierData::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class DrawOffset: public PSysBase
{
public:

    // Override methods

    // BW1W120 006c7550 BW1M100 1047e1d0 DrawOffset::_dt(void)
    virtual ~DrawOffset();
    // BW1W120 006c7540 BW1M100 10423b80 DrawOffset::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00694d90 BW1M100 1041cd70 DrawOffset::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cb8b0 BW1M100 10484460 DrawOffset::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 006c7530 BW1M100 10423b40 DrawOffset::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class DrawOffsetDecay: public DrawOffset
{
public:

    // Override methods

    // BW1W120 006c7820 BW1M100 1047dcd0 DrawOffsetDecay::_dt(void)
    virtual ~DrawOffsetDecay();
    // BW1W120 006c7810 BW1M100 104239f0 DrawOffsetDecay::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00694ea0 BW1M100 1041cc10 DrawOffsetDecay::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cb9c0 BW1M100 10484300 DrawOffsetDecay::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 006c7800 BW1M100 104239b0 DrawOffsetDecay::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class DrawOffsetLT: public DrawOffset
{
public:

    // Override methods

    // BW1W120 006c75e0 BW1M100 10423a30 DrawOffsetLT::_dt(void)
    virtual ~DrawOffsetLT();
    // BW1W120 006c75d0 BW1M100 10423b00 DrawOffsetLT::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00694df0 BW1M100 1041ccd0 DrawOffsetLT::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cb910 BW1M100 104843c0 DrawOffsetLT::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 006c75c0 BW1M100 10423ac0 DrawOffsetLT::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class GJAnimVolFX: public PSysBase
{
public:

    // Override methods

    // BW1W120 0069d2d0 BW1M100 inlined GJAnimVolFX::_dt(void)
    virtual ~GJAnimVolFX();
};

#endif /* BW1_DECOMP_P_SYS_MODIFIERS_INCLUDED_H */
