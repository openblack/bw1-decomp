#ifndef BW1_DECOMP_SOUND_TAG_INCLUDED_H
#define BW1_DECOMP_SOUND_TAG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <chlasm/AudioSFX.h> /* For enum AUDIO_SFX_BANK_TYPE */
#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "LocalBase.h" /* For struct LocalBase */

// Forward Declares

struct Base;
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

// Object Oriented datastructures

// win1.41 00c224f0 mac inlined SoundTag::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8SoundTag asm("??_R0?AVSoundTag@@@8");
// win1.41 009b91f8 mac inlined SoundTag::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8SoundTag asm("??_R1A@?0A@A@SoundTag@@8");
// win1.41 009b9210 mac inlined SoundTag::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8SoundTag asm("??_R2SoundTag@@8");
// win1.41 009b9220 mac inlined SoundTag::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8SoundTag asm("??_R3SoundTag@@8");
// win1.41 00980534 mac 109d7a40 SoundTag::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8SoundTag asm("??_R4SoundTag@@6B@");
// win1.41 00980538 mac 109d7a48 SoundTag::`vftable'
extern const struct BaseVftable __vt__8SoundTag asm("??_7SoundTag@@6B@");

// Static methods

// win1.41 0071e840 mac 10513e30 SoundTag::Create(GameThingWithPos *, unsigned long, bool, unsigned long, unsigned long, int, int, AUDIO_SFX_BANK_TYPE, int)
struct SoundTag* __cdecl Create__8SoundTagFP16GameThingWithPosUlbUlUlii19AUDIO_SFX_BANK_TYPEi(struct GameThingWithPos* param_1, uint32_t param_2, bool param_3, uint32_t param_4, uint32_t param_5, int param_6, int param_7, enum AUDIO_SFX_BANK_TYPE bank_type, int param_9) asm("?Create@SoundTag@@SAPAV1@PAVGameThingWithPos@@K_NKKHHW4AUDIO_SFX_BANK_TYPE@@H@Z");

// Constructors

// win1.41 0071e300 mac 10514c30 SoundTag::SoundTag(GameThingWithPos *, LHPoint const &, unsigned long, bool, unsigned long, unsigned long, int, int, AUDIO_SFX_BANK_TYPE, int)
struct SoundTag* __fastcall __ct__8SoundTagFP16GameThingWithPosRC7LHPointUlbUlUlii19AUDIO_SFX_BANK_TYPEi(struct SoundTag* this, const void* edx, struct GameThingWithPos* param_1, struct LHPoint* param_2, uint32_t param_3, bool param_4, uint32_t param_5, uint32_t param_6, int param_7, int param_8, enum AUDIO_SFX_BANK_TYPE param_9, int param_10) asm("??0SoundTag@@QAE@PAVGameThingWithPos@@ABULHPoint@@K_NKKHHW4AUDIO_SFX_BANK_TYPE@@H@Z");

// Non-virtual methods

// win1.41 0071e4f0 mac 100a0490 SoundTag::Set(GameThingWithPos *, LHPoint const &, LHPoint const &, unsigned long, bool, unsigned long, unsigned long, int, int, unsigned long, int, int)
void __fastcall Set__8SoundTagFP16GameThingWithPosRC7LHPointRC7LHPointUlbUlUliiUlii(struct SoundTag* this, const void* edx, struct GameThingWithPos* param_1, struct LHPoint* param_2, struct LHPoint* param_3, uint32_t param_4, bool param_5, uint32_t param_6, uint32_t param_7, int param_8, int param_9, uint32_t param_10, int param_11, int param_12) asm("?Set@SoundTag@@QAEXPAVGameThingWithPos@@ABULHPoint@@1K_NKKHHKHH@Z");

// Override methods

// win1.41 0071e3c0 mac 10514730 SoundTag::_dt(void)
void __fastcall __dt__8SoundTagFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GSoundTag@@UAEPAXI@Z");
// win1.41 0071ecb0 mac 105137d0 SoundTag::ToBeDeleted(int)
void __fastcall ToBeDeleted__8SoundTagFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@SoundTag@@UAEXH@Z");
// win1.41 0071ec90 mac 10513850 SoundTag::Get3DSoundPos(LHPoint *)
int __fastcall Get3DSoundPos__8SoundTagFP7LHPoint(struct Base* this, const void* edx, struct LHPoint* param_1) asm("?Get3DSoundPos@SoundTag@@UAEHPAULHPoint@@@Z");

DECLARE_LH_LIST_HEAD(SoundTag);

#endif /* BW1_DECOMP_SOUND_TAG_INCLUDED_H */
