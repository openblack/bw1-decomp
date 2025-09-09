#ifndef BW1_DECOMP_GESTURE_SYSTEM_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

struct GestureSystem
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0xc98];
};
static_assert(sizeof(struct GestureSystem) == 0xca0, "Data type is of wrong size");

// win1.41 008df7fc mac 107330f8 GestureSystem::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__13GestureSystem asm("??_R4GestureSystem@@6B@");

// win1.41 008df800 mac 10733100 GestureSystem::`vftable'
extern const struct BaseVftable __vt__13GestureSystem asm("??_7GestureSystem@@6B@");

// Constructors

// win1.41 0054bb40 mac inlined GestureSystem::GestureSystem(void)
struct GestureSystem* __fastcall __ct__13GestureSystem(struct GestureSystem* this);

// Override methods

// win1.41 0054bb60 mac 1042dc00 GestureSystem::_dt(void)
void __fastcall __dt__13GestureSystemFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGestureSystem@@UAEPAXI@Z");

struct GestureSystemPacketData
{
  uint8_t field_0x0;
};
static_assert(sizeof(struct GestureSystemPacketData) == 0x1, "Data type is of wrong size");

#endif /* BW1_DECOMP_GESTURE_SYSTEM_INCLUDED_H */
