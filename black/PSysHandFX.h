#ifndef BW1_DECOMP_P_SYS_HAND_FX_INCLUDED_H
#define BW1_DECOMP_P_SYS_HAND_FX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum TRIBE_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

struct Base;
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

// Object Oriented datastructures

// win1.41 00c028f8 mac inlined PSysHandFX::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10PSysHandFX asm("??_R0?AVPSysHandFX@@@8");
// win1.41 009b4160 mac inlined PSysHandFX::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10PSysHandFX asm("??_R1A@?0A@A@PSysHandFX@@8");

// Static methods

// win1.41 0068c9d0 mac 1040e720 PSysHandFX::CreateHandFX(void)
struct HandFX* __cdecl CreateHandFX__10PSysHandFXFv(void) asm("?CreateHandFX@PSysHandFX@@SAPAUHandFX@@XZ");
// win1.41 0068def0 mac 1040c1a0 PSysHandFX::CreateTribalPowerColumn(TRIBE_TYPE, LHPoint const &, unsigned long)
void __cdecl CreateTribalPowerColumn__10PSysHandFXF10TRIBE_TYPERC7LHPointUl(enum TRIBE_TYPE type, struct LHPoint* param_2, uint32_t param_3) asm("?CreateTribalPowerColumn@PSysHandFX@@SAXW4TRIBE_TYPE@@ABULHPoint@@K@Z");

struct PHandFX
{
  struct PSysHandFX super;  /* 0x0 */
  uint8_t field_0x4[0x44];
  uint32_t power_up_level;  /* 0x48 */
  uint8_t field_0x4c[0x28];
};
static_assert(sizeof(struct PHandFX) == 0x74, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c02918 mac inlined PHandFX::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__7PHandFX asm("??_R0?AVPHandFX@@@8");
// win1.41 009b4178 mac inlined PHandFX::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__7PHandFX asm("??_R1A@?0A@A@PHandFX@@8");
// win1.41 009b4190 mac inlined PHandFX::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__7PHandFX asm("??_R2PHandFX@@8");
// win1.41 009b41a0 mac inlined PHandFX::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__7PHandFX asm("??_R3PHandFX@@8");
// win1.41 00936c18 mac 109b139c PHandFX::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__7PHandFX asm("??_R4PHandFX@@6B@");
// win1.41 00936c1c mac 109b13a4 PHandFX::`vftable'
extern const struct PSysHandFXVftable __vt__7PHandFX asm("??_7PHandFX@@6B@");

// Constructors

// win1.41 0068cb10 mac 1040e240 PHandFX::PHandFX(void)
struct PHandFX* __fastcall __ct__7PHandFXFv(struct PHandFX* this) asm("??0PHandFX@@QAE@XZ");

// Override methods

// win1.41 0068d060 mac 1040e060 PHandFX::RemoveAllPermBands(void)
void __fastcall RemoveAllPermBands__7PHandFXFv(struct PSysHandFX* this) asm("?RemoveAllPermBands@PHandFX@@UAEXXZ");
// win1.41 0068ce90 mac 1040e0c0 PHandFX::DoRemoveFromHandVisual(void)
void __fastcall DoRemoveFromHandVisual__7PHandFXFv(struct PSysHandFX* this) asm("?DoRemoveFromHandVisual@PHandFX@@UAEXXZ");
// win1.41 0068de20 mac 1040c300 PHandFX::AddSpellToHandVisuals(bool)
void __fastcall AddSpellToHandVisuals__7PHandFXFb(struct PSysHandFX* this, const void* edx, bool param_1) asm("?AddSpellToHandVisuals@PHandFX@@UAEX_N@Z");
// win1.41 0068dda0 mac 1040c460 PHandFX::SetPULevel(long, bool)
void __fastcall SetPULevel__7PHandFXFlb(struct PSysHandFX* this, const void* edx, uint32_t param_1, bool param_2) asm("?SetPULevel@PHandFX@@UAEXJ_N@Z");
// win1.41 0068dd60 mac 1001b7a0 PHandFX::DrawHandFX(void)
void __fastcall DrawHandFX__7PHandFXFv(struct PSysHandFX* this) asm("?DrawHandFX@PHandFX@@UAEXXZ");
// win1.41 0068ccb0 mac 1040e200 PHandFX::GetPULevel(void)
uint32_t __fastcall GetPULevel__7PHandFXFv(struct PSysHandFX* this) asm("?GetPULevel@PHandFX@@UAEIXZ");
// win1.41 0068df20 mac 1040c000 PHandFX::StartTribalPowerRing(TRIBE_TYPE)
void __fastcall StartTribalPowerRing__7PHandFXF10TRIBE_TYPE(struct PSysHandFX* this, const void* edx, enum TRIBE_TYPE tribe) asm("?StartTribalPowerRing@PHandFX@@UAEXW4TRIBE_TYPE@@@Z");
// win1.41 0068dfa0 mac 1040bf70 PHandFX::StopTribalPowerRing(void)
void __fastcall StopTribalPowerRing__7PHandFXFv(struct PSysHandFX* this) asm("?StopTribalPowerRing@PHandFX@@UAEXXZ");
// win1.41 0068dfc0 mac 1040be00 PHandFX::ReleaseOrCreateTribalPowerRing(TRIBE_TYPE)
void __fastcall ReleaseOrCreateTribalPowerRing__7PHandFXF10TRIBE_TYPE(struct PSysHandFX* this, const void* edx, enum TRIBE_TYPE tribe) asm("?ReleaseOrCreateTribalPowerRing@PHandFX@@UAEXW4TRIBE_TYPE@@@Z");
// win1.41 0068ca10 mac 1040e670 PHandFX::Release(void)
void __fastcall Release__7PHandFXFv(struct PSysHandFX* this) asm("?Release@PHandFX@@UAEXXZ");

struct PHandFX__Band
{
  struct PSysBase super;  /* 0x0 */
};
static_assert(sizeof(struct PHandFX__Band) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0068cac0 mac inlined PHandFX::Band::_dt( (void))
void __fastcall __dt__Q27PHandFX4BandFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GBand@PHandFX@@UAEPAXI@Z");

#endif /* BW1_DECOMP_P_SYS_HAND_FX_INCLUDED_H */
