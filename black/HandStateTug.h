#ifndef BW1_DECOMP_HAND_STATE_TUG_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_TUG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t, uintptr_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

struct CHand;
struct LHMatrix;

struct HandStateTug
{
  struct HandState super;  /* 0x0 */
  uintptr_t field_0x8;
  uint8_t field_0xC[0x140];
};
static_assert(sizeof(struct HandStateTug) == 0x14c, "Data type is of wrong size");

// win1.41 00900c18 mac 1099bc00 HandStateTug::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12HandStateTug asm("??_R4HandStateTug@@6B@");

// win1.41 00900c1c mac 1099bc08 HandStateTug::`vftable'
extern const struct HandStateVftable __vt__12HandStateTug asm("??_7HandStateTug@@6B@");

// Constructors

// win1.41 005b7dd0 mac 1033e9e0 HandStateTug::HandStateTug(CHand*)
struct HandStateTug* __fastcall __ct__12HandStateTugFP5CHand(struct HandStateTug* this, const void* edx, struct CHand* hand);

// Override methods

// win1.41 005b7df0 mac 1033e740 HandStateTug::Enter(void)
void __fastcall Enter__12HandStateTugFv(struct HandState* this) asm("?Enter@HandStateTug@@UAEXXZ");
// win1.41 005b8e40 mac 1033d5e0 HandStateTug::DrawTheHeldObject(void)
void __fastcall DrawTheHeldObject__12HandStateTugFv(struct HandState* this) asm("?DrawTheHeldObject@HandStateTug@@UAEXXZ");
// win1.41 005b8070 mac 1033d650 HandStateTug::Update(float, LHMatrix *)
void __fastcall Update__12HandStateTugFfP8LHMatrix(struct HandState* this, const void* edx, float param_1, struct LHMatrix* param_2) asm("?Update@HandStateTug@@UAEXMPAULHMatrix@@@Z");

#endif /* BW1_DECOMP_HAND_STATE_TUG_INCLUDED_H */
