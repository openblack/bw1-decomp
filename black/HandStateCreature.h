#ifndef BW1_DECOMP_HAND_STATE_CREATURE_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

struct CHand;

struct HandStateCreature
{
  struct HandState super;  /* 0x0 */
  uint8_t field_0x8[0x118];
};
static_assert(sizeof(struct HandStateCreature) == 0x120, "Data type is of wrong size");

// win1.41 00900aa8 mac 1073bc10 HandStateCreature::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__17HandStateCreature asm("??_R4HandStateCreature@@6B@");

// win1.41 00900aac mac 106f5d68 HandStateCreature::`vftable'
extern const struct HandStateVftable __vt__17HandStateCreature asm("??_7HandStateCreature@@6B@");

// Constructors

// win1.41 005b13d0 mac 10338f00 HandStateCreature::HandStateCreature(CHand*)
struct HandStateCreature* __fastcall __ct__17HandStateCreatureFP5CHand(struct HandStateCreature* this, const void* edx, struct CHand* hand);

// Override methods

// win1.41 005b13f0 mac 10338c40 HandStateCreature::Enter(void)
void __fastcall Enter__17HandStateCreatureFv(struct HandState* this) asm("?Enter@HandStateCreature@@UAEXXZ");

#endif /* BW1_DECOMP_HAND_STATE_CREATURE_INCLUDED_H */
