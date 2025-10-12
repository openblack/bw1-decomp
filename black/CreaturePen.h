#ifndef BW1_DECOMP_CREATURE_PEN_INCLUDED_H
#define BW1_DECOMP_CREATURE_PEN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "CitadelPart.h" /* For struct CitadelPart */

// Forward Declares

struct Base;
struct LHOSFile;
struct MapCoords;
struct MultiMapFixed;
struct Object;
struct PlannedMultiMapFixed;

struct CreaturePen
{
  struct CitadelPart super;  /* 0x0 */
};
static_assert(sizeof(struct CreaturePen) == 0x8c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ce8c8 mac inlined CreaturePen::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11CreaturePen asm("??_R0?AVCreaturePen@@@8");
// win1.41 009ab228 mac inlined CreaturePen::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11CreaturePen asm("??_R1A@?0A@A@CreaturePen@@8");
// win1.41 009ab240 mac inlined CreaturePen::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11CreaturePen asm("??_R2CreaturePen@@8");
// win1.41 009ab268 mac inlined CreaturePen::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11CreaturePen asm("??_R3CreaturePen@@8");

// Override methods

// win1.41 004eeed0 mac 10275140 CreaturePen::_dt(void)
void __fastcall __dt__11CreaturePenFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreaturePen@@UAEPAXI@Z");
// win1.41 004ef100 mac 10274980 CreaturePen::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__11CreaturePenFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@CreaturePen@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");
// win1.41 004eefc0 mac 10274e70 CreaturePen::ConvertToPlanned(void)
struct PlannedMultiMapFixed* __fastcall ConvertToPlanned__11CreaturePenFv(struct MultiMapFixed* this) asm("?ConvertToPlanned@CreaturePen@@UAEPAVPlannedMultiMapFixed@@XZ");

#endif /* BW1_DECOMP_CREATURE_PEN_INCLUDED_H */
