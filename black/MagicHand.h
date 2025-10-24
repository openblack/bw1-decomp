#ifndef BW1_DECOMP_MAGIC_HAND_INCLUDED_H
#define BW1_DECOMP_MAGIC_HAND_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct GameOSFile;
struct Object;

struct GMagicHand
{
  struct GameThing super;  /* 0x0 */
  bool has_object_in_hand;  /* 0x14 */
  struct Object* object_in_hand;
};
static_assert(sizeof(struct GMagicHand) == 0x1c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf3e58 mac inlined GMagicHand::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10GMagicHand asm("??_R0?AVGMagicHand@@@8");
// win1.41 009b1ae0 mac inlined GMagicHand::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10GMagicHand asm("??_R1A@?0A@A@GMagicHand@@8");
// win1.41 009b1af8 mac inlined GMagicHand::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10GMagicHand asm("??_R2GMagicHand@@8");
// win1.41 009b1b08 mac inlined GMagicHand::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10GMagicHand asm("??_R3GMagicHand@@8");

// Non-virtual methods

// win1.41 005fb040 mac 10075560 GMagicHand::GetObjectFromHand(void) const
struct Object* __fastcall GetObjectFromHand__10GMagicHandCFv(const struct GMagicHand* this) asm("?GetObjectFromHand@GMagicHand@@QBEPAVObject@@XZ");

// Override methods

// win1.41 005faf40 mac 103ad580 GMagicHand::_dt(void)
void __fastcall __dt__10GMagicHandFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicHand@@UAEPAXI@Z");
// win1.41 005fb2a0 mac 103acf80 GMagicHand::CleanUpForSerialisation(void)
void __fastcall CleanUpForSerialisation__10GMagicHandFv(struct Base* this) asm("?CleanUpForSerialisation@GMagicHand@@UAEXXZ");
// win1.41 005faf30 mac 103acd80 GMagicHand::GetDebugText(void)
char* __fastcall GetDebugText__10GMagicHandFv(struct GameThing* this) asm("?GetDebugText@GMagicHand@@UAEPADXZ");
// win1.41 005fb320 mac 103acdc0 GMagicHand::Load(GameOSFile &)
uint32_t __fastcall Load__10GMagicHandFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GMagicHand@@UAEIAAVGameOSFile@@@Z");
// win1.41 005fb2c0 mac 103ace90 GMagicHand::Save(GameOSFile &)
uint32_t __fastcall Save__10GMagicHandFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GMagicHand@@UAEIAAVGameOSFile@@@Z");
// win1.41 005faf20 mac 103acd40 GMagicHand::GetSaveType(void)
uint32_t __fastcall GetSaveType__10GMagicHandFv(struct GameThing* this) asm("?GetSaveType@GMagicHand@@UAEIXZ");

#endif /* BW1_DECOMP_MAGIC_HAND_INCLUDED_H */
