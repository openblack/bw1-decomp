#ifndef BW1_DECOMP_CHANNEL_BOX_INCLUDED_H
#define BW1_DECOMP_CHANNEL_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct ChannelBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0xac4];
};
static_assert(sizeof(struct ChannelBox) == 0xad4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea3c8 mac inlined ChannelBox::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10ChannelBox asm("??_R0?AVChannelBox@@@8");
// win1.41 009aca60 mac inlined ChannelBox::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10ChannelBox asm("??_R1A@?0A@A@ChannelBox@@8");
// win1.41 009aca78 mac inlined ChannelBox::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10ChannelBox asm("??_R2ChannelBox@@8");
// win1.41 009aca88 mac inlined ChannelBox::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10ChannelBox asm("??_R3ChannelBox@@8");
// win1.41 008dea38 mac 109a1fb0 ChannelBox::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10ChannelBox asm("??_R4ChannelBox@@6B@");
// win1.41 008dea3c mac 109a1fb8 ChannelBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__10ChannelBox asm("??_7ChannelBox@@6B@");

// Override methods

// win1.41 0061bcd0 mac 1038f640 ChannelBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__10ChannelBoxFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@ChannelBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 0061ca50 mac 1038f5e0 ChannelBox::Destroy(void)
void __fastcall Destroy__10ChannelBoxFv(struct DialogBoxBase* this) asm("?Destroy@ChannelBox@@UAEXXZ");
// win1.41 0061ca60 mac 1038f2f0 ChannelBox::InitControls(void)
void __fastcall InitControls__10ChannelBoxFv(struct DialogBoxBase* this) asm("?InitControls@ChannelBox@@UAEXXZ");

#endif /* BW1_DECOMP_CHANNEL_BOX_INCLUDED_H */
