#ifndef BW1_DECOMP_DEFENSIVE_SPHERE_INCLUDED_H
#define BW1_DECOMP_DEFENSIVE_SPHERE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "DefensiveShield.h" /* For struct DefensiveShield */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct DefensiveSphere
{
  struct DefensiveShield super;  /* 0x0 */
};
static_assert(sizeof(struct DefensiveSphere) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c09740 mac inlined DefensiveSphere::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15DefensiveSphere asm("??_R0?AVDefensiveSphere@@@8");
// win1.41 009b8398 mac inlined DefensiveSphere::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15DefensiveSphere asm("??_R1A@?0A@A@DefensiveSphere@@8");
// win1.41 009b83b0 mac inlined DefensiveSphere::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15DefensiveSphere asm("??_R2DefensiveSphere@@8");
// win1.41 009b83c8 mac inlined DefensiveSphere::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15DefensiveSphere asm("??_R3DefensiveSphere@@8");

// Override methods

// win1.41 006d0d00 mac 10417570 DefensiveSphere::_dt(void)
void __fastcall __dt__15DefensiveSphereFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GDefensiveSphere@@UAEPAXI@Z");
// win1.41 006d0cf0 mac 10417650 DefensiveSphere::GetDebugText(void)
char* __fastcall GetDebugText__15DefensiveSphereFv(struct GameThing* this) asm("?GetDebugText@DefensiveSphere@@UAEPADXZ");
// win1.41 00699cd0 mac 104179f0 DefensiveSphere::Load(GameOSFile &)
uint32_t __fastcall Load__15DefensiveSphereFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@DefensiveSphere@@UAEIAAVGameOSFile@@@Z");
// win1.41 006d06b0 mac 1047f3d0 DefensiveSphere::Save(GameOSFile &)
uint32_t __fastcall Save__15DefensiveSphereFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@DefensiveSphere@@UAEIAAVGameOSFile@@@Z");
// win1.41 006d0ce0 mac 10417610 DefensiveSphere::GetSaveType(void)
uint32_t __fastcall GetSaveType__15DefensiveSphereFv(struct GameThing* this) asm("?GetSaveType@DefensiveSphere@@UAEIXZ");

#endif /* BW1_DECOMP_DEFENSIVE_SPHERE_INCLUDED_H */
