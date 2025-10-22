#ifndef BW1_DECOMP_HELP_PROFILE_INCLUDED_H
#define BW1_DECOMP_HELP_PROFILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */
#include "HelpSystem.h" /* For enum HELP_EVENT_TYPE */

struct CameraHelpAccumulator
{
  uint8_t field_0x0[0x10c];
};
static_assert(sizeof(struct CameraHelpAccumulator) == 0x10c, "Data type is of wrong size");

// Non-virtual methods

// win1.41 00448f20 mac 1019cd90 CameraHelpAccumulator::Reset(void)
void __fastcall Reset__21CameraHelpAccumulatorFv(struct CameraHelpAccumulator* this) asm("?Reset@CameraHelpAccumulator@@QAEXXZ");

struct HelpProfile
{
  struct Base super;  /* 0x0 */
  struct CameraHelpAccumulator accumulators[0x31];
  uint32_t field_0x3354;
};
static_assert(sizeof(struct HelpProfile) == 0x3358, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf0b98 mac inlined HelpProfile::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11HelpProfile asm("??_R0?AVHelpProfile@@@8");
// win1.41 009b1248 mac inlined HelpProfile::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11HelpProfile asm("??_R1A@?0A@A@HelpProfile@@8");
// win1.41 009b1260 mac inlined HelpProfile::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11HelpProfile asm("??_R2HelpProfile@@8");
// win1.41 009b1270 mac inlined HelpProfile::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11HelpProfile asm("??_R3HelpProfile@@8");
// win1.41 00915454 mac 1099be34 HelpProfile::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__11HelpProfile asm("??_R4HelpProfile@@6B@");
// win1.41 00915458 mac 1099be3c HelpProfile::`vftable'
extern const struct BaseVftable __vt__11HelpProfile asm("??_7HelpProfile@@6B@");

// Static methods

// win1.41 005c4500 mac 1034b3b0 HelpProfile::Create(void)
struct HelpProfile* __cdecl Create__11HelpProfileFv(void) asm("?Create@HelpProfile@@SAPAV1@XZ");

// Non-virtual methods

// win1.41 005c46e0 mac 100895a0 HelpProfile::Trigger(HELP_EVENT_TYPE)
void __fastcall Trigger__11HelpProfileF15HELP_EVENT_TYPE(struct HelpProfile* this, const void* edx, enum HELP_EVENT_TYPE param_1) asm("?Trigger@HelpProfile@@QAEXW4HELP_EVENT_TYPE@@@Z");
// win1.41 005c4770 mac 1034b310 HelpProfile::SetToZero(void)
void __fastcall SetToZero__11HelpProfileFv(struct HelpProfile* this) asm("?SetToZero@HelpProfile@@QAEXXZ");

// Override methods

// win1.41 005c4560 mac 1034b480 HelpProfile::_dt(void)
void __fastcall __dt__11HelpProfileFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GHelpProfile@@UAEPAXI@Z");

#endif /* BW1_DECOMP_HELP_PROFILE_INCLUDED_H */
