#ifndef BW1_DECOMP_MAGIC_STORM_AND_TORNADO_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_STORM_AND_TORNADO_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MagicRadiusSpellInfo.h" /* For struct GMagicRadiusSpellInfo */

// Forward Declares

struct Base;

struct GMagicStormAndTornadoInfo
{
  struct GMagicRadiusSpellInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicStormAndTornadoInfo) == 0x58, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cbad8 mac inlined GMagicStormAndTornadoInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__25GMagicStormAndTornadoInfo asm("??_R0?AVGMagicStormAndTornadoInfo@@@8");
// win1.41 009a7fd0 mac inlined GMagicStormAndTornadoInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__25GMagicStormAndTornadoInfo asm("??_R1A@?0A@A@GMagicStormAndTornadoInfo@@8");
// win1.41 009a7fe8 mac inlined GMagicStormAndTornadoInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__25GMagicStormAndTornadoInfo asm("??_R2GMagicStormAndTornadoInfo@@8");
// win1.41 009a8000 mac inlined GMagicStormAndTornadoInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__25GMagicStormAndTornadoInfo asm("??_R3GMagicStormAndTornadoInfo@@8");

// Override methods

// win1.41 00435740 mac 103aebf0 GMagicStormAndTornadoInfo::_dt(void)
void __fastcall __dt__25GMagicStormAndTornadoInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicStormAndTornadoInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAGIC_STORM_AND_TORNADO_INFO_INCLUDED_H */
