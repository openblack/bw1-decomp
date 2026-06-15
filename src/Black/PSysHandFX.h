#ifndef BW1_DECOMP_P_SYS_HAND_FX_INCLUDED_H
#define BW1_DECOMP_P_SYS_HAND_FX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum TRIBE_TYPE */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class Base;
struct HandFX;
struct LHPoint;

class PSysHandFX
{
public:

    // Static methods

    // win1.41 0068c9d0 mac 1040e720 PSysHandFX::CreateHandFX(void)
    static HandFX* CreateHandFX();
    // win1.41 0068def0 mac 1040c1a0 PSysHandFX::CreateTribalPowerColumn(TRIBE_TYPE, LHPoint const &, unsigned long)
    static void CreateTribalPowerColumn(TRIBE_TYPE type, LHPoint* param_2, uint32_t param_3);
};

class PHandFX: public PSysHandFX
{
public:
    uint8_t field_0x4[0x44];
    uint32_t power_up_level; /* 0x48 */
    uint8_t field_0x4c[0x28];

    // Override methods

    // win1.41 0068d060 mac 1040e060 PHandFX::RemoveAllPermBands(void)
    virtual void RemoveAllPermBands();
    // win1.41 0068ce90 mac 1040e0c0 PHandFX::DoRemoveFromHandVisual(void)
    virtual void DoRemoveFromHandVisual();
    // win1.41 0068de20 mac 1040c300 PHandFX::AddSpellToHandVisuals(bool)
    virtual void AddSpellToHandVisuals(bool param_1);
    // win1.41 0068dda0 mac 1040c460 PHandFX::SetPULevel(long, bool)
    virtual void SetPULevel(uint32_t param_1, bool param_2);
    // win1.41 0068dd60 mac 1001b7a0 PHandFX::DrawHandFX(void)
    virtual void DrawHandFX();
    // win1.41 0068ccb0 mac 1040e200 PHandFX::GetPULevel(void)
    virtual uint32_t GetPULevel();
    // win1.41 0068df20 mac 1040c000 PHandFX::StartTribalPowerRing(TRIBE_TYPE)
    virtual void StartTribalPowerRing(TRIBE_TYPE tribe);
    // win1.41 0068dfa0 mac 1040bf70 PHandFX::StopTribalPowerRing(void)
    virtual void StopTribalPowerRing();
    // win1.41 0068dfc0 mac 1040be00 PHandFX::ReleaseOrCreateTribalPowerRing(TRIBE_TYPE)
    virtual void ReleaseOrCreateTribalPowerRing(TRIBE_TYPE tribe);
    // win1.41 0068ca10 mac 1040e670 PHandFX::Release(void)
    virtual void Release();

    // Constructors

    // win1.41 0068cb10 mac 1040e240 PHandFX::PHandFX(void)
    PHandFX();
};

class PHandFX__Band: public PSysBase
{
public:

    // Override methods

    // win1.41 0068cac0 mac inlined PHandFX::Band::_dt( (void))
    virtual ~PHandFX__Band();
};

#endif /* BW1_DECOMP_P_SYS_HAND_FX_INCLUDED_H */
