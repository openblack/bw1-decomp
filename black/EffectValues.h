#ifndef BW1_DECOMP_EFFECT_VALUES_INCLUDED_H
#define BW1_DECOMP_EFFECT_VALUES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For EFFECT_TYPE_LAST, enum EFFECT_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct GPlayer;
struct GameThing;

struct EffectNumbers
{
  float values[EFFECT_TYPE_LAST];  /* 0x0 */
};
static_assert(sizeof(struct EffectNumbers) == 0x1c, "Data type is of wrong size");

struct EffectValues
{
  struct Base super;  /* 0x0 */
  struct EffectNumbers numbers;
  float field_0x24;
  struct GameThing* applied_by;
  struct MapCoords coords;
  uint32_t field_0x38;
  struct GPlayer* player;
};
static_assert(sizeof(struct EffectValues) == 0x40, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be9678 mac inlined EffectValues::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12EffectValues asm("??_R0?AVEffectValues@@@8");
// win1.41 009abf70 mac inlined EffectValues::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12EffectValues asm("??_R1A@?0A@A@EffectValues@@8");
// win1.41 009abf88 mac inlined EffectValues::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12EffectValues asm("??_R2EffectValues@@8");
// win1.41 009abf98 mac inlined EffectValues::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12EffectValues asm("??_R3EffectValues@@8");
// win1.41 008d8ba4 mac 10734728 EffectValues::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12EffectValues asm("??_R4EffectValues@@6B@");
// win1.41 008d8ba8 mac 10734730 EffectValues::`vftable'
extern const struct GBaseInfoVftable __vt__12EffectValues asm("??_7EffectValues@@6B@");

// Constructors

// win1.41 00525040 mac 100cc350 EffectValues::EffectValues(EFFECT_TYPE, float, GameThing *, float, GPlayer *)
struct EffectValues* __fastcall __ct__12EffectValuesF11EFFECT_TYPEfP9GameThingfP7GPlayer(struct EffectValues* this, const void* edx, enum EFFECT_TYPE type, float value, struct GameThing* source, float param_4, struct GPlayer* player) asm("??0EffectValues@@QAE@W4EFFECT_TYPE@@MPAVGameThing@@MPAVGPlayer@@@Z");

// Override methods

// win1.41 00524f40 mac 10412ff0 EffectValues::_dt(void)
void __fastcall __dt__12EffectValuesFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GEffectValues@@UAEPAXI@Z");

#endif /* BW1_DECOMP_EFFECT_VALUES_INCLUDED_H */
