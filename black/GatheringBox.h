#ifndef BW1_DECOMP_GATHERING_BOX_INCLUDED_H
#define BW1_DECOMP_GATHERING_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct GatheringBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0xe0];
};
static_assert(sizeof(struct GatheringBox) == 0xf0, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea470 mac inlined GatheringBox::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12GatheringBox asm("??_R0?AVGatheringBox@@@8");
// win1.41 009acbf0 mac inlined GatheringBox::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12GatheringBox asm("??_R1A@?0A@A@GatheringBox@@8");
// win1.41 009acc08 mac inlined GatheringBox::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12GatheringBox asm("??_R2GatheringBox@@8");
// win1.41 009acc18 mac inlined GatheringBox::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12GatheringBox asm("??_R3GatheringBox@@8");
// win1.41 008deb28 mac 1099afbc GatheringBox::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12GatheringBox asm("??_R4GatheringBox@@6B@");
// win1.41 008deb2c mac 1099afc4 GatheringBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__12GatheringBox asm("??_7GatheringBox@@6B@");

// Override methods

// win1.41 00570e90 mac 10326ea0 GatheringBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
void __fastcall Init__12GatheringBoxFUlUlPFiP8SetupBoxP12SetupControlii_v(struct DialogBoxBase* this, const void* edx, uint32_t param_1, uint32_t param_2, void (__stdcall* param_3)(int param_1, struct SetupBox * param_2, struct SetupControl * param_3, int param_4, int param_5)) asm("?Init@GatheringBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z");
// win1.41 00572530 mac 103266d0 GatheringBox::Destroy(void)
void __fastcall Destroy__12GatheringBoxFv(struct DialogBoxBase* this) asm("?Destroy@GatheringBox@@UAEXXZ");

#endif /* BW1_DECOMP_GATHERING_BOX_INCLUDED_H */
