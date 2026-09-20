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

	// BW1W120 0068c9d0 BW1M100 1040e720 PSysHandFX::CreateHandFX(void)
	static HandFX* CreateHandFX();
	// BW1W120 0068def0 BW1M100 1040c1a0 PSysHandFX::CreateTribalPowerColumn(TRIBE_TYPE, LHPoint const &, unsigned long)
	static void CreateTribalPowerColumn(TRIBE_TYPE type, LHPoint* param_2, uint32_t param_3);
};

class PHandFX : public PSysHandFX
{
public:
	uint8_t  field_0x4[0x44];
	uint32_t PowerUpLevel; /* 0x48 */
	uint8_t  field_0x4c[0x28];

	// Override methods

	// BW1W120 0068d060 BW1M100 1040e060 PHandFX::RemoveAllPermBands(void)
	virtual void RemoveAllPermBands();
	// BW1W120 0068ce90 BW1M100 1040e0c0 PHandFX::DoRemoveFromHandVisual(void)
	virtual void DoRemoveFromHandVisual();
	// BW1W120 0068de20 BW1M100 1040c300 PHandFX::AddSpellToHandVisuals(bool)
	virtual void AddSpellToHandVisuals(bool param_1);
	// BW1W120 0068dda0 BW1M100 1040c460 PHandFX::SetPULevel(long, bool)
	virtual void SetPULevel(uint32_t param_1, bool param_2);
	// BW1W120 0068dd60 BW1M100 1001b7a0 PHandFX::DrawHandFX(void)
	virtual void DrawHandFX();
	// BW1W120 0068ccb0 BW1M100 1040e200 PHandFX::GetPULevel(void)
	virtual uint32_t GetPULevel();
	// BW1W120 0068df20 BW1M100 1040c000 PHandFX::StartTribalPowerRing(TRIBE_TYPE)
	virtual void StartTribalPowerRing(TRIBE_TYPE tribe);
	// BW1W120 0068dfa0 BW1M100 1040bf70 PHandFX::StopTribalPowerRing(void)
	virtual void StopTribalPowerRing();
	// BW1W120 0068dfc0 BW1M100 1040be00 PHandFX::ReleaseOrCreateTribalPowerRing(TRIBE_TYPE)
	virtual void ReleaseOrCreateTribalPowerRing(TRIBE_TYPE tribe);
	// BW1W120 0068ca10 BW1M100 1040e670 PHandFX::Release(void)
	virtual void Release();

	// Constructors

	// BW1W120 0068cb10 BW1M100 1040e240 PHandFX::PHandFX(void)
	PHandFX();
};

class PHandFX__Band : public PSysBase
{
public:
	// Override methods

	// BW1W120 0068cac0 BW1M100 inlined PHandFX::Band::_dt( (void))
	virtual ~PHandFX__Band();
};

#endif /* BW1_DECOMP_P_SYS_HAND_FX_INCLUDED_H */
