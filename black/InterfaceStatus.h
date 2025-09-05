#ifndef BW1_DECOMP_INTERFACE_STATUS_INCLUDED_H
#define BW1_DECOMP_INTERFACE_STATUS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LHCoord.h> /* For struct LHCoord */
#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "MagicHand.h" /* For struct GMagicHand */

// Forward Declares

struct GGuidance;
struct GInterface;
struct GLeashStatus;
struct GVirtualInfluence;
struct Object;
struct PSysProcessInfo;
struct Spell;

struct GInterfaceStatus
{
  struct GameThingWithPos super;  /* 0x0 */
  uint8_t player_number;  /* 0x28 */
  struct GInterface* iface;
  struct GGuidance* guidance;  /* 0x30 */
  uint32_t field_0x34;
  uint32_t field_0x38;
  uint32_t field_0x3c;
  uint32_t field_0x40;
  uint8_t field_0x44[0x14];
  struct GMagicHand magic_hand[0x2];  /* 0x58 */
  bool hand_holding_something;  /* 0x90 */
  struct LHCoord field_0x94;
  uint32_t field_0x9c;
  uint32_t field_0xa0;
  struct LHPoint field_0xa4;
  struct LHPoint camera_pos;  /* 0xb0 */
  struct LHPoint camera_foc;
  struct LHPoint field_0xc8;
  struct LHPoint field_0xd4;
  uint32_t field_0xe0;
  uint32_t field_0xe4;
  struct LHPoint field_0xe8;
  float field_0xf4;
  float field_0xf8;
  float field_0xfc;
  float field_0x100;
  float field_0x104;
  float field_0x108;
  struct LHPoint hand_velocity;
  float field_0x118;
  uint32_t field_0x11c;
  struct Object* last_dropped_object;  /* 0x120 */
  uint32_t field_0x124;
  struct GLeashStatus* leash_status;
  struct GVirtualInfluence* influence;
  float field_0x130;
};
static_assert(sizeof(struct GInterfaceStatus) == 0x134, "Data type is of wrong size");

// win1.41 0092accc mac 1098d398 GInterfaceStatus::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__16GInterfaceStatus asm("??_R4GInterfaceStatus@@6B@");

// win1.41 0092acd0 mac 106f8170 GInterfaceStatus::`vftable'
extern const struct GameThingWithPosVftable __vt__16GInterfaceStatus asm("??_7GInterfaceStatus@@6B@");

// Static methods

// win1.41 005cedc0 mac 1035acc0 GInterfaceStatus::SetActive(int)
void __fastcall SetActive__10GInterfaceFi(struct GInterface* this, const void* edx, int param_1);
// win1.41 005d29c0 mac 10026ad0 GInterfaceStatus::ResetActionState(void)
void __fastcall ResetActionState__10GInterfaceFv(struct GInterface* this);

// Constructors

// win1.41 005db860 mac 1036f590 GInterfaceStatus::GInterfaceStatus(void)
struct GInterfaceStatus* __fastcall __ct__16GInterfaceStatusFv(struct GInterfaceStatus* this);

// Non-virtual methods

// win1.41 005dba00 mac 1036f310 GInterfaceStatus::SetToZero(GInterface *)
void __fastcall SetToZero__16GInterfaceStatusFP10GInterface(struct GInterfaceStatus* this, const void* edx, struct GInterface* param_1);
// win1.41 005dc2f0 mac 1007b2f0 GInterfaceStatus::IsSpaceInHands(void)
bool __fastcall IsSpaceInHands__16GInterfaceStatusFv(struct GInterfaceStatus* this);
// win1.41 005dd1a0 mac 1036bf20 GInterfaceStatus::Init(unsigned char, GInterface *)
void __fastcall Init__16GInterfaceStatusFUcP10GInterface(struct GInterfaceStatus* this, const void* edx, uint8_t player_number, struct GInterface* iface);

// Override methods

// win1.41 005dc8f0 mac 1036d0e0 GInterfaceStatus::UpdateSpellInfo(Spell *, PSysProcessInfo *)
void __fastcall UpdateSpellInfo__16GInterfaceStatusFP5SpellP15PSysProcessInfo(struct GInterfaceStatus* this, const void* edx, struct Spell* param_1, struct PSysProcessInfo* param_2);

#endif /* BW1_DECOMP_INTERFACE_STATUS_INCLUDED_H */
