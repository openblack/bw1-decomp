#ifndef BW1_DECOMP_HELP_DUDE_INCLUDED_H
#define BW1_DECOMP_HELP_DUDE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "LocalBase.h" /* For struct LocalBase */

// Forward Declares

struct Base;
struct LHPoint;

struct HelpDude
{
  struct LocalBase super;  /* 0x0 */
};
static_assert(sizeof(struct HelpDude) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf0750 mac inlined HelpDude::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8HelpDude asm("??_R0?AUHelpDude@@@8");
// win1.41 009b11f8 mac inlined HelpDude::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8HelpDude asm("??_R1A@?0A@A@HelpDude@@8");
// win1.41 009b1210 mac inlined HelpDude::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8HelpDude asm("??_R2HelpDude@@8");
// win1.41 009b1220 mac inlined HelpDude::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8HelpDude asm("??_R3HelpDude@@8");

// Override methods

// win1.41 005c2110 mac 10348c90 HelpDude::_dt(void)
void __fastcall __dt__8HelpDudeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GHelpDude@@UAEPAXI@Z");
// win1.41 005c20e0 mac 10348c40 HelpDude::Get3DSoundPos(LHPoint *)
int __fastcall Get3DSoundPos__8HelpDudeFP7LHPoint(struct Base* this, const void* edx, struct LHPoint* param_1) asm("?Get3DSoundPos@HelpDude@@UAEHPAULHPoint@@@Z");

#endif /* BW1_DECOMP_HELP_DUDE_INCLUDED_H */
