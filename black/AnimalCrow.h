#ifndef BW1_DECOMP_ANIMAL_CROW_INCLUDED_H
#define BW1_DECOMP_ANIMAL_CROW_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "AnimalDove.h" /* For struct Dove */

// Forward Declares

struct Base;
struct GameThing;
struct Object;

struct Crow
{
  struct Dove super;  /* 0x0 */
};
static_assert(sizeof(struct Crow) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c91e8 mac inlined Crow::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__4Crow asm("??_R0?AVCrow@@@8");
// win1.41 009a72a0 mac inlined Crow::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__4Crow asm("??_R1A@?0A@A@Crow@@8");
// win1.41 009a72b8 mac inlined Crow::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__4Crow asm("??_R2Crow@@8");
// win1.41 009a72e8 mac inlined Crow::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__4Crow asm("??_R3Crow@@8");

// Override methods

// win1.41 0041ec20 mac 101718e0 Crow::_dt(void)
void __fastcall __dt__4CrowFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCrow@@UAEPAXI@Z");
// win1.41 0041ec10 mac 101719a0 Crow::GetDebugText(void)
char* __fastcall GetDebugText__4CrowFv(struct GameThing* this) asm("?GetDebugText@Crow@@UAEPADXZ");
// win1.41 0041ec00 mac 10171970 Crow::GetSaveType(void)
uint32_t __fastcall GetSaveType__4CrowFv(struct GameThing* this) asm("?GetSaveType@Crow@@UAEIXZ");
// win1.41 0041bf10 mac 10170590 Crow::StandAnimation(void)
uint32_t __fastcall StandAnimation__4CrowFv(struct Object* this) asm("?StandAnimation@Crow@@UAEIXZ");

#endif /* BW1_DECOMP_ANIMAL_CROW_INCLUDED_H */
