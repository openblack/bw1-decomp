#ifndef BW1_DECOMP_HELP_PROFILE_INCLUDED_H
#define BW1_DECOMP_HELP_PROFILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

struct CameraHelpAccumulator
{
  uint8_t field_0x0[0x10c];
};
static_assert(sizeof(struct CameraHelpAccumulator) == 0x10c, "Data type is of wrong size");

// Non-virtual methods

// win1.41 00448f20 mac 1019cd90 CameraHelpAccumulator::Reset(void)
void __fastcall Reset__21CameraHelpAccumulatorFv(struct CameraHelpAccumulator* this);

struct HelpProfile
{
  struct Base super;  /* 0x0 */
  struct CameraHelpAccumulator accumulators[0x31];
  uint32_t field_0x3354;
};
static_assert(sizeof(struct HelpProfile) == 0x3358, "Data type is of wrong size");

static struct BaseVftable* const __vt__11HelpProfile = (struct BaseVftable* const)0x00915458;

// Static methods

// win1.41 005c4500 mac 1034b3b0 HelpProfile::Create(void)
struct HelpProfile* __cdecl Create__11HelpProfileFv(void);

// Non-virtual methods

// win1.41 005c4770 mac 1034b310 HelpProfile::SetToZero(void)
void __fastcall SetToZero__11HelpProfileFv(struct HelpProfile* this);

#endif /* BW1_DECOMP_HELP_PROFILE_INCLUDED_H */
