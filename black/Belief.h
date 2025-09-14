#ifndef BW1_DECOMP_BELIEF_INCLUDED_H
#define BW1_DECOMP_BELIEF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For NUM_REACTION_FUNCTIONS */

#include "Base.h" /* For struct Base */

// Forward Declares

struct GPlayer;

struct GBelief
{
  struct Base super;  /* 0x0 */
  float belief_in_player[0x8];
  uint32_t field_0x28[0x8];
  float field_0x48[0x8];
  float belief_in_player_max[0x8];  /* 0x68 */
  uint32_t field_0x88[0x8];
  float field_0xa8[0x8];
  float field_0xc8[0x8];
  float boredom_multiplier[NUM_REACTION_FUNCTIONS];  /* 0xe8 */
  float field_0x18c[0x11];
};
static_assert(sizeof(struct GBelief) == 0x1d0, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c22bb8 mac inlined GBelief::`RTTI Type Descriptor'
extern const struct RTTITypeDescriptor __RTTITypeDescriptor__7GBelief asm("??_R0?AVGBelief@@@8");
// win1.41 009b9ae8 mac inlined GBelief::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__7GBelief asm("??_R1A@?0A@A@GBelief@@8");
// win1.41 009b9b00 mac inlined GBelief::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__7GBelief asm("??_R2GBelief@@8");
// win1.41 009b9b10 mac inlined GBelief::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__7GBelief asm("??_R3GBelief@@8");

// Non-virtual methods

// win1.41 004387d0 mac 100b1700 GBelief::SetBelief(unsigned long, float)
void __fastcall SetBelief__7GBeliefFUlf(struct GBelief* this, const void* edx, int index, float value);
// win1.41 00438a00 mac 100b13e0 GBelief::SetBeliefInPlayerCap(GPlayer *, float)
void __fastcall SetBeliefInPlayerCap__7GBeliefFP7GPlayerf(struct GBelief* this, const void* edx, struct GPlayer* player, float cap);

// Override methods

// win1.41 00739320 mac 105581c0 GBelief::_dt(void)
void __fastcall __dt__7GBeliefFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGBelief@@UAEPAXI@Z");

#endif /* BW1_DECOMP_BELIEF_INCLUDED_H */
