#ifndef BW1_DECOMP_BELIEF_INCLUDED_H
#define BW1_DECOMP_BELIEF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For NUM_REACTION_FUNCTIONS */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

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
extern struct RTTITypeDescriptor __RTTITypeDescriptor__7GBelief asm("??_R0?AVGBelief@@@8");
// win1.41 009b9ae8 mac inlined GBelief::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__7GBelief asm("??_R1A@?0A@A@GBelief@@8");
// win1.41 009b9b00 mac inlined GBelief::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__7GBelief asm("??_R2GBelief@@8");
// win1.41 009b9b10 mac inlined GBelief::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__7GBelief asm("??_R3GBelief@@8");

// Static methods

// win1.41 00438770 mac 100b1810 GBelief::DistanceChangeToBelief(float, float)
float __cdecl DistanceChangeToBelief__7GBeliefFff(struct GBelief* this, float param_1, float param_2) asm("?DistanceChangeToBelief@GBelief@@SAMMM@Z");

// Non-virtual methods

// win1.41 00437e70 mac 00437e70 GBelief::GetBeliefInPlayer(unsigned long)
float __fastcall GetBeliefInPlayer__7GBeliefFUl(struct GBelief* this, const void* edx, unsigned long param_1) asm("?GetBeliefInPlayer@GBelief@@QAEMK@Z");
// win1.41 004387d0 mac 100b1700 GBelief::SetBelief(unsigned long, float)
void __fastcall SetBelief__7GBeliefFUlf(struct GBelief* this, const void* edx, int index, float value) asm("?SetBelief@GBelief@@QAEXKM@Z");
// win1.41 00438a00 mac 100b13e0 GBelief::SetBeliefInPlayerCap(GPlayer *, float)
void __fastcall SetBeliefInPlayerCap__7GBeliefFP7GPlayerf(struct GBelief* this, const void* edx, struct GPlayer* player, float cap) asm("?SetBeliefInPlayerCap@GBelief@@QAEXPAVGPlayer@@M@Z");

// Override methods

// win1.41 00739320 mac 105581c0 GBelief::_dt(void)
void __fastcall __dt__7GBeliefFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGBelief@@UAEPAXI@Z");

#endif /* BW1_DECOMP_BELIEF_INCLUDED_H */
