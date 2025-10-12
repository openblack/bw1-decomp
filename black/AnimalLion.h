#ifndef BW1_DECOMP_ANIMAL_LION_INCLUDED_H
#define BW1_DECOMP_ANIMAL_LION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Animal.h" /* For struct Animal */

// Forward Declares

struct Base;
struct Creature;
struct GameThing;
struct GameThingWithPos;
struct Object;

struct Lion
{
  struct Animal super;  /* 0x0 */
};
static_assert(sizeof(struct Lion) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9300 mac inlined Lion::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__4Lion asm("??_R0?AVLion@@@8");
// win1.41 009a75b0 mac inlined Lion::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__4Lion asm("??_R1A@?0A@A@Lion@@8");
// win1.41 009a7638 mac inlined Lion::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__4Lion asm("??_R2Lion@@8");
// win1.41 009a7660 mac inlined Lion::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__4Lion asm("??_R3Lion@@8");

// Override methods

// win1.41 0041fd90 mac 10175be0 Lion::_dt(void)
void __fastcall __dt__4LionFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GLion@@UAEPAXI@Z");
// win1.41 0041fd80 mac 10175d40 Lion::GetDebugText(void)
char* __fastcall GetDebugText__4LionFv(struct GameThing* this) asm("?GetDebugText@Lion@@UAEPADXZ");
// win1.41 0041fd70 mac 10175d10 Lion::GetSaveType(void)
uint32_t __fastcall GetSaveType__4LionFv(struct GameThing* this) asm("?GetSaveType@Lion@@UAEIXZ");
// win1.41 0041fc70 mac 10171320 Lion::CanBeFrighteningToCreature(Creature *)
uint32_t __fastcall CanBeFrighteningToCreature__4LionFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeFrighteningToCreature@Lion@@UAEIPAVCreature@@@Z");
// win1.41 0041c1a0 mac 1016fc50 Lion::StandAnimation(void)
uint32_t __fastcall StandAnimation__4LionFv(struct Object* this) asm("?StandAnimation@Lion@@UAEIXZ");

#endif /* BW1_DECOMP_ANIMAL_LION_INCLUDED_H */
