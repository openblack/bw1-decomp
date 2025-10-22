#ifndef BW1_DECOMP_AUDIO_INCLUDED_H
#define BW1_DECOMP_AUDIO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/AudioSFX.h> /* For enum AUDIO_SFX_BANK_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct GameOSFile;
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

// Object Oriented datastructures

// win1.41 009caf20 mac inlined GAudio::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__6GAudio asm("??_R0?AVGAudio@@@8");
// win1.41 009a7c28 mac inlined GAudio::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__6GAudio asm("??_R1A@?0A@A@GAudio@@8");
// win1.41 009a7c40 mac inlined GAudio::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__6GAudio asm("??_R2GAudio@@8");
// win1.41 009a7c50 mac inlined GAudio::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__6GAudio asm("??_R3GAudio@@8");
// win1.41 008c48dc mac 1077682c GAudio::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__6GAudio asm("??_R4GAudio@@6B@");
// win1.41 008c48e0 mac 10776834 GAudio::`vftable'
extern const struct GameThingVftable __vt__6GAudio asm("??_7GAudio@@6B@");

// Non-virtual methods

// win1.41 00428ef0 mac 1017c7c0 GAudio::InitAtmos(void)
void __fastcall InitAtmos__6GAudioFv(struct GAudio* this) asm("?InitAtmos@GAudio@@QAEXXZ");
// win1.41 00428f90 mac 1017c710 GAudio::ReleaseAtmosSoundBanks(void)
void __fastcall ReleaseAtmosSoundBanks__6GAudioFv(struct GAudio* this) asm("?ReleaseAtmosSoundBanks@GAudio@@QAEXXZ");
// win1.41 00429d60 mac 100001c0 GAudio::PlaySoundEffect(Base *, unsigned long, unsigned long, unsigned long, int, int, AUDIO_SFX_BANK_TYPE)
void __fastcall PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE(struct GAudio* this, const void* edx, struct Base* param_1, uint32_t param_2, uint32_t param_3, uint32_t param_4, int param_5, int param_6, enum AUDIO_SFX_BANK_TYPE param_7) asm("?PlaySoundEffect@GAudio@@QAEXPAVBase@@KKKHHW4AUDIO_SFX_BANK_TYPE@@@Z");
// win1.41 00429e30 mac 10020580 GAudio::PlaySoundEffect(LH_SamplePlayOptions *)
uint32_t __fastcall PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions(struct GAudio* this, const void* edx, struct LH_SamplePlayOptions* options) asm("?PlaySoundEffect@GAudio@@QAEIPAULH_SamplePlayOptions@@@Z");
// win1.41 0042a210 mac 1017e7d0 GAudio::StopPlayingSoundEffect(unsigned long, unsigned long, AUDIO_SFX_BANK_TYPE) const
void __fastcall StopPlayingSoundEffect__6GAudioCFUlUl19AUDIO_SFX_BANK_TYPE(const struct GAudio* this, const void* edx, uint32_t param_1, uint32_t param_2, enum AUDIO_SFX_BANK_TYPE type) asm("?StopPlayingSoundEffect@GAudio@@QBEXKKW4AUDIO_SFX_BANK_TYPE@@@Z");
// win1.41 0042a330 mac 1017e410 GAudio::ReleaseLoopOnSoundEffect(Base *, unsigned long, AUDIO_SFX_BANK_TYPE) const
void __fastcall ReleaseLoopOnSoundEffect__6GAudioCFP4BaseUl19AUDIO_SFX_BANK_TYPE(struct GAudio* this, const void* edx, struct Base* param_1, uint32_t param_2, enum AUDIO_SFX_BANK_TYPE type) asm("?ReleaseLoopOnSoundEffect@GAudio@@QBEXPAVBase@@KW4AUDIO_SFX_BANK_TYPE@@@Z");

// Override methods

// win1.41 00426fa0 mac 10179100 GAudio::_dt(void)
void __fastcall __dt__6GAudioFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGAudio@@UAEPAXI@Z");
// win1.41 00426fe0 mac 1017ae30 GAudio::ToBeDeleted(int)
void __fastcall ToBeDeleted__6GAudioFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GAudio@@UAEXH@Z");
// win1.41 00426f90 mac 101791e0 GAudio::GetDebugText(void)
char* __fastcall GetDebugText__6GAudioFv(struct GameThing* this) asm("?GetDebugText@GAudio@@UAEPADXZ");
// win1.41 00428480 mac 10179710 GAudio::Load(GameOSFile &)
uint32_t __fastcall Load__6GAudioFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GAudio@@UAEIAAVGameOSFile@@@Z");
// win1.41 00428310 mac 10179bd0 GAudio::Save(GameOSFile &)
uint32_t __fastcall Save__6GAudioFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GAudio@@UAEIAAVGameOSFile@@@Z");
// win1.41 00426f80 mac 101791a0 GAudio::GetSaveType(void)
uint32_t __fastcall GetSaveType__6GAudioFv(struct GameThing* this) asm("?GetSaveType@GAudio@@UAEIXZ");

#endif /* BW1_DECOMP_AUDIO_INCLUDED_H */
