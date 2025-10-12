#ifndef BW1_DECOMP_VORTEX_SAVE_INCLUDED_H
#define BW1_DECOMP_VORTEX_SAVE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct GameOSFile;

struct VortexSave
{
  struct GameThing super;  /* 0x0 */
};
static_assert(sizeof(struct VortexSave) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c246a8 mac inlined VortexSave::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10VortexSave asm("??_R0?AVVortexSave@@@8");
// win1.41 009b9f30 mac inlined VortexSave::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10VortexSave asm("??_R1A@?0A@A@VortexSave@@8");
// win1.41 009b9f48 mac inlined VortexSave::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10VortexSave asm("??_R2VortexSave@@8");
// win1.41 009b9f58 mac inlined VortexSave::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10VortexSave asm("??_R3VortexSave@@8");

// Override methods

// win1.41 0076f870 mac 1015f3f0 VortexSave::_dt(void)
void __fastcall __dt__10VortexSaveFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GVortexSave@@UAEPAXI@Z");
// win1.41 0076fdc0 mac 1015e890 VortexSave::Load(GameOSFile &)
uint32_t __fastcall Load__10VortexSaveFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@VortexSave@@UAEIAAVGameOSFile@@@Z");
// win1.41 0076fb40 mac 1015ed90 VortexSave::Save(GameOSFile &)
uint32_t __fastcall Save__10VortexSaveFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@VortexSave@@UAEIAAVGameOSFile@@@Z");
// win1.41 0076f860 mac 1015e730 VortexSave::GetSaveType(void)
uint32_t __fastcall GetSaveType__10VortexSaveFv(struct GameThing* this) asm("?GetSaveType@VortexSave@@UAEIXZ");
// win1.41 0076ffe0 mac 1015e770 VortexSave::ResolveLoad(void)
void __fastcall ResolveLoad__10VortexSaveFv(struct GameThing* this) asm("?ResolveLoad@VortexSave@@UAEXXZ");

#endif /* BW1_DECOMP_VORTEX_SAVE_INCLUDED_H */
