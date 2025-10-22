#ifndef BW1_DECOMP_HAND_STATE_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassDescriptor, struct RTTITypeDescriptor */

// Forward Declares

struct CHand;
struct HandState;
struct LHMatrix;

enum HAND_STATES
{
  HAND_STATE_INVISIBLE = 0x0,
  HAND_STATE_NORMAL = 0x1,
  HAND_STATE_CAMERA = 0x2,
  HAND_STATE_TUG = 0x3,
  HAND_STATE_HOLDING = 0x4,
  HAND_STATE_TOTEM = 0x5,
  HAND_STATE_MULTI_PICK_UP = 0x6,
  HAND_STATE_CREATURE = 0x7,
  HAND_STATE_GRAIN = 0x8,
  HAND_STATE_PLAY_ANIM = 0x9,
  HAND_STATE_CITADEL = 0xa,
  _HAND_STATES_COUNT = 0xb
};
static_assert(sizeof(enum HAND_STATES) == 0x4, "Data type is of wrong size");

static const char* HAND_STATES_strs[_HAND_STATES_COUNT] = {
  "HAND_STATE_INVISIBLE",
  "HAND_STATE_NORMAL",
  "HAND_STATE_CAMERA",
  "HAND_STATE_TUG",
  "HAND_STATE_HOLDING",
  "HAND_STATE_TOTEM",
  "HAND_STATE_MULTI_PICK_UP",
  "HAND_STATE_CREATURE",
  "HAND_STATE_GRAIN",
  "HAND_STATE_PLAY_ANIM",
  "HAND_STATE_CITADEL",
};

struct HandStateVftable
{
  void (__fastcall* Enter)(struct HandState* this);  /* 0x0 */
  void (__fastcall* DrawTheHeldObject)(struct HandState* this);
  void (__fastcall* Exit)(struct HandState* this);
  void (__fastcall* Update)(struct HandState* this, const void* edx, float param_1, struct LHMatrix* param_2);
  bool (__fastcall* AllowCameraTricons)(struct HandState* this);  /* 0x10 */
};
static_assert(sizeof(struct HandStateVftable) == 0x14, "Data type is of wrong size");

struct HandState
{
  struct HandStateVftable* vftable;  /* 0x0 */
  struct CHand* hand;
};
static_assert(sizeof(struct HandState) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cece0 mac inlined HandState::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9HandState asm("??_R0?AVHandState@@@8");
// win1.41 009a92f0 mac inlined HandState::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9HandState asm("??_R1A@?0A@A@HandState@@8");

// Constructors

// win1.41 inlined mac inlined HandState::HandState(CHand*)
struct HandState* __fastcall __ct__9HandStateFP5CHand(struct HandState* this, const void* edx, struct CHand* hand) asm("??0HandState@@QAE@PAVCHand@@@Z");

// Override methods

// win1.41 0046e5e0 mac 101c6110 HandState::DrawTheHeldObject(void)
void __fastcall DrawTheHeldObject__9HandStateFv(struct HandState* this) asm("?DrawTheHeldObject@HandState@@UAEXXZ");
// win1.41 005b02d0 mac 101c5590 HandState::Exit(void)
void __fastcall Exit__9HandStateFv(struct HandState* this) asm("?Exit@HandState@@UAEXXZ");
// win1.41 0046be80 mac 101a6900 HandState::AllowCameraTricons(void)
bool __fastcall AllowCameraTricons__9HandStateFv(struct HandState* this) asm("?AllowCameraTricons@HandState@@UAE_NXZ");

#endif /* BW1_DECOMP_HAND_STATE_INCLUDED_H */
