#ifndef BW1_DECOMP_VORTEX_OBJECT_INFO_INCLUDED_H
#define BW1_DECOMP_VORTEX_OBJECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct VortexObjectInfo
{
  struct PSysBase super;  /* 0x0 */
};
static_assert(sizeof(struct VortexObjectInfo) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bed2a8 mac inlined VortexObjectInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16VortexObjectInfo asm("??_R0?AVVortexObjectInfo@@@8");
// win1.41 009aea98 mac inlined VortexObjectInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16VortexObjectInfo asm("??_R1A@?0A@A@VortexObjectInfo@@8");
// win1.41 009aeab0 mac inlined VortexObjectInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16VortexObjectInfo asm("??_R2VortexObjectInfo@@8");
// win1.41 009aeac8 mac inlined VortexObjectInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16VortexObjectInfo asm("??_R3VortexObjectInfo@@8");

// Override methods

// win1.41 0055d830 mac 103b2be0 VortexObjectInfo::_dt(void)
void __fastcall __dt__16VortexObjectInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GVortexObjectInfo@@UAEPAXI@Z");
// win1.41 0055d820 mac 103b2cb0 VortexObjectInfo::GetDebugText(void)
char* __fastcall GetDebugText__16VortexObjectInfoFv(struct GameThing* this) asm("?GetDebugText@VortexObjectInfo@@UAEPADXZ");
// win1.41 00600bf0 mac 103b2d00 VortexObjectInfo::Load(GameOSFile &)
uint32_t __fastcall Load__16VortexObjectInfoFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@VortexObjectInfo@@UAEIAAVGameOSFile@@@Z");
// win1.41 00600ad0 mac 103b3000 VortexObjectInfo::Save(GameOSFile &)
uint32_t __fastcall Save__16VortexObjectInfoFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@VortexObjectInfo@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055d810 mac 103b2c70 VortexObjectInfo::GetSaveType(void)
uint32_t __fastcall GetSaveType__16VortexObjectInfoFv(struct GameThing* this) asm("?GetSaveType@VortexObjectInfo@@UAEIXZ");

#endif /* BW1_DECOMP_VORTEX_OBJECT_INFO_INCLUDED_H */
