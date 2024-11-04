#ifndef BW1_DECOMP_P_SYS_HAND_FX_INCLUDED_H
#define BW1_DECOMP_P_SYS_HAND_FX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum TRIBE_TYPE */

// Forward Declares

struct HandFX;
struct LHPoint;
struct PSysHandFX;

struct PSysHandFXVftable
{
  void (__fastcall* RemoveAllPermBands)(struct PSysHandFX* this);  /* 0x0 */
  void (__fastcall* DoRemoveFromHandVisual)(struct PSysHandFX* this);
  void (__fastcall* AddSpellToHandVisuals)(struct PSysHandFX* this, const void* edx, bool param_1);
  void (__fastcall* SetPULevel)(struct PSysHandFX* this, const void* edx, uint32_t param_1, bool param_2);
  void (__fastcall* DrawHandFX)(struct PSysHandFX* this);  /* 0x10 */
  uint32_t (__fastcall* GetPULevel)(struct PSysHandFX* this);
  void (__fastcall* StartTribalPowerRing)(struct PSysHandFX* this, const void* edx, enum TRIBE_TYPE tribe);
  void (__fastcall* StopTribalPowerRing)(struct PSysHandFX* this);
  void (__fastcall* ReleaseOrCreateTribalPowerRing)(struct PSysHandFX* this, const void* edx, enum TRIBE_TYPE tribe);  /* 0x20 */
  void (__fastcall* Release)(struct PSysHandFX* this);
};
static_assert(sizeof(struct PSysHandFXVftable) == 0x28, "Data type is of wrong size");

struct PSysHandFX
{
  struct PSysHandFXVftable* vftable;  /* 0x0 */
};
static_assert(sizeof(struct PSysHandFX) == 0x4, "Data type is of wrong size");

// Static methods

// win1.41 0068c9d0 mac 1040e720 PSysHandFX::CreateHandFX(void)
struct HandFX* __cdecl CreateHandFX__10PSysHandFXFv(void);
// win1.41 0068def0 mac 1040c1a0 PSysHandFX::CreateTribalPowerColumn(TRIBE_TYPE, LHPoint const &, unsigned long)
void __cdecl CreateTribalPowerColumn__10PSysHandFXF10TRIBE_TYPERC7LHPointUl(enum TRIBE_TYPE type, struct LHPoint* param_2, uint32_t param_3);

struct PHandFX
{
  struct PSysHandFX super;  /* 0x0 */
  uint8_t field_0x4[0x44];
  uint32_t power_up_level;  /* 0x48 */
  uint8_t field_0x4c[0x28];
};
static_assert(sizeof(struct PHandFX) == 0x74, "Data type is of wrong size");

static struct PSysHandFXVftable* __vt__7PHandFX = (struct PSysHandFXVftable*)0x00936c1c;

// Constructors

// win1.41 0068cb10 mac 1040e240 PHandFX::PHandFX(void)
struct PHandFX* __fastcall __ct__7PHandFXFv(struct PHandFX* this);

// Override methods

// win1.41 0068d060 mac 1040e060 PHandFX::RemoveAllPermBands(void)
void __fastcall RemoveAllPermBands__7PHandFXFv(struct PHandFX* this);
// win1.41 0068ce90 mac 1040e0c0 PHandFX::DoRemoveFromHandVisual(void)
void __fastcall DoRemoveFromHandVisual__7PHandFXFv(struct PHandFX* this);
// win1.41 0068de20 mac 1040c300 PHandFX::AddSpellToHandVisuals(bool)
void __fastcall AddSpellToHandVisuals__7PHandFXFb(struct PHandFX* this, const void* edx, bool param_1);
// win1.41 0068dda0 mac 1040c460 PHandFX::SetPULevel(long, bool)
void __fastcall SetPULevel__7PHandFXFlb(struct PHandFX* this, const void* edx, uint32_t param_1, bool param_2);
// win1.41 0068dd60 mac 1001b7a0 PHandFX::DrawHandFX(void)
void __fastcall DrawHandFX__7PHandFXFv(struct PHandFX* this);
// win1.41 0068ccb0 mac 1040e200 PHandFX::GetPULevel(void)
uint32_t __fastcall GetPULevel__7PHandFXFv(struct PHandFX* this);
// win1.41 0068df20 mac 1040c000 PHandFX::StartTribalPowerRing(TRIBE_TYPE)
void __fastcall StartTribalPowerRing__7PHandFXF10TRIBE_TYPE(struct PHandFX* this, const void* edx, enum TRIBE_TYPE tribe);
// win1.41 0068dfa0 mac 1040bf70 PHandFX::StopTribalPowerRing(void)
void __fastcall StopTribalPowerRing__7PHandFXFv(struct PHandFX* this);
// win1.41 0068dfc0 mac 1040be00 PHandFX::ReleaseOrCreateTribalPowerRing(TRIBE_TYPE)
void __fastcall ReleaseOrCreateTribalPowerRing__7PHandFXF10TRIBE_TYPE(struct PHandFX* this, const void* edx, enum TRIBE_TYPE tribe);
// win1.41 0068ca10 mac 1040e670 PHandFX::Release(void)
void __fastcall Release__7PHandFXFv(struct PHandFX* this);

#endif /* BW1_DECOMP_P_SYS_HAND_FX_INCLUDED_H */
