#ifndef BW1_DECOMP_P_SYS_BASE_INCLUDED_H
#define BW1_DECOMP_P_SYS_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct GameOSFile;

struct PSysBase
{
  struct GameThing super;  /* 0x0 */
};
static_assert(sizeof(struct PSysBase) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cea90 mac inlined PSysBase::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8PSysBase asm("??_R0?AVPSysBase@@@8");
// win1.41 009a9050 mac inlined PSysBase::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8PSysBase asm("??_R1A@?0A@A@PSysBase@@8");
// win1.41 009a9068 mac inlined PSysBase::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8PSysBase asm("??_R2PSysBase@@8");
// win1.41 009a9078 mac inlined PSysBase::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8PSysBase asm("??_R3PSysBase@@8");
// win1.41 008c9c30 mac 10746188 PSysBase::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8PSysBase asm("??_R4PSysBase@@6B@");
// win1.41 008c9c34 mac 106f5fd4 PSysBase::`vftable'
extern const struct GameThingVftable __vt__8PSysBase asm("??_7PSysBase@@6B@");

// Override methods

// win1.41 00466500 mac 10086ed0 PSysBase::_dt(void)
void __fastcall __dt__8PSysBaseFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPSysBase@@UAEPAXI@Z");
// win1.41 004664f0 mac 10110ed0 PSysBase::GetDebugText(void)
char* __fastcall GetDebugText__8PSysBaseFv(struct GameThing* this) asm("?GetDebugText@PSysBase@@UAEPADXZ");
// win1.41 006944b0 mac 1041db80 PSysBase::Load(GameOSFile &)
uint32_t __fastcall Load__8PSysBaseFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@PSysBase@@UAEIAAVGameOSFile@@@Z");

#endif /* BW1_DECOMP_P_SYS_BASE_INCLUDED_H */
