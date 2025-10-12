#ifndef BW1_DECOMP_ANIMAL_PIGEON_INCLUDED_H
#define BW1_DECOMP_ANIMAL_PIGEON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "AnimalDove.h" /* For struct Dove */

// Forward Declares

struct Base;
struct GameThing;
struct Object;

struct Pigeon
{
  struct Dove super;  /* 0x0 */
};
static_assert(sizeof(struct Pigeon) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9238 mac inlined Pigeon::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__6Pigeon asm("??_R0?AVPigeon@@@8");
// win1.41 009a7380 mac inlined Pigeon::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__6Pigeon asm("??_R1A@?0A@A@Pigeon@@8");
// win1.41 009a7398 mac inlined Pigeon::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__6Pigeon asm("??_R2Pigeon@@8");
// win1.41 009a73c8 mac inlined Pigeon::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__6Pigeon asm("??_R3Pigeon@@8");

// Override methods

// win1.41 0041eda0 mac 101717d0 Pigeon::_dt(void)
void __fastcall __dt__6PigeonFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPigeon@@UAEPAXI@Z");
// win1.41 0041ed90 mac 101718a0 Pigeon::GetDebugText(void)
char* __fastcall GetDebugText__6PigeonFv(struct GameThing* this) asm("?GetDebugText@Pigeon@@UAEPADXZ");
// win1.41 0041ed80 mac 10171860 Pigeon::GetSaveType(void)
uint32_t __fastcall GetSaveType__6PigeonFv(struct GameThing* this) asm("?GetSaveType@Pigeon@@UAEIXZ");
// win1.41 0041bf80 mac 101703f0 Pigeon::StandAnimation(void)
uint32_t __fastcall StandAnimation__6PigeonFv(struct Object* this) asm("?StandAnimation@Pigeon@@UAEIXZ");

#endif /* BW1_DECOMP_ANIMAL_PIGEON_INCLUDED_H */
