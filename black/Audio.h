#ifndef BW1_DECOMP_AUDIO_INCLUDED_H
#define BW1_DECOMP_AUDIO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/AudioSFX.h> /* For enum AUDIO_SFX_BANK_TYPE */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct LH_AudioBank;
struct LH_SamplePlayOptions;

struct GAudio
{
  struct GameThing super;  /* 0x0 */
  uint8_t field_0x14[0x394];
  struct LH_AudioBank* audio_banks[0x2];  /* 0x3a8 */
  uint8_t field_0x3b0[0x24];
};
static_assert(sizeof(struct GAudio) == 0x3d4, "Data type is of wrong size");

static struct GameThingVftable* __vt__6GAudio = (struct GameThingVftable*)0x008c48e0;

// Non-virtual methods

// win1.41 00429d60 mac 100001c0 GAudio::PlaySoundEffect(Base *, unsigned long, unsigned long, unsigned long, int, int, AUDIO_SFX_BANK_TYPE)
void __fastcall PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE(struct GAudio* this, const void* edx, struct Base* param_1, uint32_t param_2, uint32_t param_3, uint32_t param_4, int param_5, int param_6, enum AUDIO_SFX_BANK_TYPE param_7);
// win1.41 00429e30 mac 10020580 GAudio::PlaySoundEffect(LH_SamplePlayOptions *)
uint32_t __fastcall PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions(struct GAudio* this, const void* edx, struct LH_SamplePlayOptions* options);
// win1.41 0042a210 mac 1017e7d0 GAudio::StopPlayingSoundEffect(unsigned long, unsigned long, AUDIO_SFX_BANK_TYPE) const
void __fastcall StopPlayingSoundEffect__6GAudioCFUlUl19AUDIO_SFX_BANK_TYPE(const struct GAudio* this, const void* edx, uint32_t param_1, uint32_t param_2, enum AUDIO_SFX_BANK_TYPE type);
// win1.41 0042a330 mac 1017e410 GAudio::ReleaseLoopOnSoundEffect(Base *, unsigned long, AUDIO_SFX_BANK_TYPE) const
void __fastcall ReleaseLoopOnSoundEffect__6GAudioCFP4BaseUl19AUDIO_SFX_BANK_TYPE(struct GAudio* this, const void* edx, struct Base* param_1, uint32_t param_2, enum AUDIO_SFX_BANK_TYPE type);

#endif /* BW1_DECOMP_AUDIO_INCLUDED_H */
