#ifndef BW1_DECOMP_ANIMAL_ZEBRA_INCLUDED_H
#define BW1_DECOMP_ANIMAL_ZEBRA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

struct Base;
struct GameThing;
struct Object;

struct Zebra
{
  struct Cow super;  /* 0x0 */
};
static_assert(sizeof(struct Zebra) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9090 mac inlined Zebra::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__5Zebra asm("??_R0?AVZebra@@@8");
// win1.41 009a6f98 mac inlined Zebra::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__5Zebra asm("??_R1A@?0A@A@Zebra@@8");
// win1.41 009a6fb0 mac inlined Zebra::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__5Zebra asm("??_R2Zebra@@8");
// win1.41 009a6fe0 mac inlined Zebra::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__5Zebra asm("??_R3Zebra@@8");

// Override methods

// win1.41 0041d920 mac 10170f30 Zebra::_dt(void)
void __fastcall __dt__5ZebraFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GZebra@@UAEPAXI@Z");
// win1.41 0041d910 mac 10170ff0 Zebra::GetDebugText(void)
char* __fastcall GetDebugText__5ZebraFv(struct GameThing* this) asm("?GetDebugText@Zebra@@UAEPADXZ");
// win1.41 0041d900 mac 10170fc0 Zebra::GetSaveType(void)
uint32_t __fastcall GetSaveType__5ZebraFv(struct GameThing* this) asm("?GetSaveType@Zebra@@UAEIXZ");
// win1.41 0041cc30 mac 1016df70 Zebra::StandAnimation(void)
uint32_t __fastcall StandAnimation__5ZebraFv(struct Object* this) asm("?StandAnimation@Zebra@@UAEIXZ");

#endif /* BW1_DECOMP_ANIMAL_ZEBRA_INCLUDED_H */
