#ifndef BW1_DECOMP_SOUND_TAG_INCLUDED_H
#define BW1_DECOMP_SOUND_TAG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <chlasm/AudioSFX.h> /* For enum AUDIO_SFX_BANK_TYPE */
#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "LocalBase.h" /* For struct LocalBase */

// Forward Declares

struct GameThingWithPos;

struct SoundTag
{
  struct LocalBase super;  /* 0x0 */
  struct SoundTag* next;
  struct GameThingWithPos* game_thing;
  struct LHPoint field_0x10;
  struct LHPoint field_0x1c;
  uint32_t field_0x28;
  uint32_t field_0x2c;
  bool field_0x30;
  int field_0x34;
  uint32_t field_0x38;
  uint32_t field_0x3c;
  int field_0x40;
  int field_0x44;
  int field_0x48;
  uint32_t field_0x4c;
  uint16_t field_0x50;
};
static_assert(sizeof(struct SoundTag) == 0x54, "Data type is of wrong size");

static struct BaseVftable* const __vt__8SoundTag = (struct BaseVftable* const)0x00980538;

// Static methods

// win1.41 0071e840 mac 10513e30 SoundTag::Create(GameThingWithPos *, unsigned long, bool, unsigned long, unsigned long, int, int, AUDIO_SFX_BANK_TYPE, int)
struct SoundTag* __cdecl Create__8SoundTagFP16GameThingWithPosUlbUlUlii19AUDIO_SFX_BANK_TYPEi(struct GameThingWithPos* param_1, uint32_t param_2, bool param_3, uint32_t param_4, uint32_t param_5, int param_6, int param_7, enum AUDIO_SFX_BANK_TYPE bank_type, int param_9);

// Constructors

// win1.41 0071e300 mac 10514c30 SoundTag::SoundTag(GameThingWithPos *, LHPoint const &, unsigned long, bool, unsigned long, unsigned long, int, int, AUDIO_SFX_BANK_TYPE, int)
struct SoundTag* __fastcall __ct__8SoundTagFP16GameThingWithPosRC7LHPointUlbUlUlii19AUDIO_SFX_BANK_TYPEi(struct SoundTag* this, const void* edx, struct GameThingWithPos* param_1, struct LHPoint* param_2, uint32_t param_3, bool param_4, uint32_t param_5, uint32_t param_6, int param_7, int param_8, enum AUDIO_SFX_BANK_TYPE param_9, int param_10);

// Non-virtual methods

// win1.41 0071e4f0 mac 100a0490 SoundTag::Set(GameThingWithPos *, LHPoint const &, LHPoint const &, unsigned long, bool, unsigned long, unsigned long, int, int, unsigned long, int, int)
void __fastcall Set__8SoundTagFP16GameThingWithPosRC7LHPointRC7LHPointUlbUlUliiUlii(struct SoundTag* this, const void* edx, struct GameThingWithPos* param_1, struct LHPoint* param_2, struct LHPoint* param_3, uint32_t param_4, bool param_5, uint32_t param_6, uint32_t param_7, int param_8, int param_9, uint32_t param_10, int param_11, int param_12);

DECLARE_LH_LIST_HEAD(SoundTag);

#endif /* BW1_DECOMP_SOUND_TAG_INCLUDED_H */
