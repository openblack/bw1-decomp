#ifndef BW1_DECOMP_HAND_STATE_TOTEM_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_TOTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

struct CHand;
struct LHMatrix;

struct HandStateTotem
{
  struct HandState super;  /* 0x0 */
  uint8_t field_0x8[0xa4];
};
static_assert(sizeof(struct HandStateTotem) == 0xac, "Data type is of wrong size");

// win1.41 00900be0 mac 1099ba34 HandStateTotem::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__14HandStateTotem asm("??_R4HandStateTotem@@6B@");

// win1.41 00900be4 mac 1099ba3c HandStateTotem::`vftable'
extern const struct HandStateVftable __vt__14HandStateTotem asm("??_7HandStateTotem@@6B@");

// Constructors

// win1.41 005b7670 mac 1033d4c0 HandStateTotem::HandStateTotem(CHand*)
struct HandStateTotem* __fastcall __ct__14HandStateTotemFP5CHand(struct HandStateTotem* this, const void* edx, struct CHand* hand);

// Override methods

// win1.41 005b7690 mac 1033d350 HandStateTotem::Enter(void)
void __fastcall Enter__14HandStateTotemFv(struct HandState* this) asm("?Enter@HandStateTotem@@UAEXXZ");
// win1.41 005b7790 mac 1033d310 HandStateTotem::Exit(void)
void __fastcall Exit__14HandStateTotemFv(struct HandState* this) asm("?Exit@HandStateTotem@@UAEXXZ");
// win1.41 005b77a0 mac 1033cd20 HandStateTotem::Update(float, LHMatrix *)
void __fastcall Update__14HandStateTotemFfP8LHMatrix(struct HandState* this, const void* edx, float param_1, struct LHMatrix* param_2) asm("?Update@HandStateTotem@@UAEXMPAULHMatrix@@@Z");

#endif /* BW1_DECOMP_HAND_STATE_TOTEM_INCLUDED_H */
