#ifndef BW1_DECOMP_HAND_STATE_PLAY_ANIM_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_PLAY_ANIM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

struct CHand;

struct HandStatePlayAnim
{
  struct HandState super;  /* 0x0 */
  uint8_t field_0x8[0x10];
  uint32_t field_0x18;
  uint32_t field_0x1C;
};
static_assert(sizeof(struct HandStatePlayAnim) == 0x20, "Data type is of wrong size");

// win1.41 00900bc0 mac 1099b904 HandStatePlayAnim::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__17HandStatePlayAnim asm("??_R4HandStatePlayAnim@@6B@");

// win1.41 00900bc4 mac 1099b90c HandStatePlayAnim::`vftable'
extern const struct HandStateVftable __vt__17HandStatePlayAnim asm("??_7HandStatePlayAnim@@6B@");

// Constructors

// win1.41 005b74f0 mac 1033cb50 HandStatePlayAnim::HandStatePlayAnim(CHand*)
struct HandStatePlayAnim* __fastcall __ct__17HandStatePlayAnimFP5CHand(struct HandStatePlayAnim* this, const void* edx, struct CHand* hand);

#endif /* BW1_DECOMP_HAND_STATE_PLAY_ANIM_INCLUDED_H */
