#ifndef BW1_DECOMP_DANCE_GROUP_INCLUDED_H
#define BW1_DECOMP_DANCE_GROUP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct GameOSFile;
struct GroupBehaviour;

enum DANCE_GROUP_ACTION_TYPE
{
  DANCE_GROUP_ACTION_TYPE_0 = 0x0,
  _DANCE_GROUP_ACTION_TYPE_COUNT = 0x1
};
static_assert(sizeof(enum DANCE_GROUP_ACTION_TYPE) == 0x4, "Data type is of wrong size");

static const char* DANCE_GROUP_ACTION_TYPE_strs[_DANCE_GROUP_ACTION_TYPE_COUNT] = {
  "DANCE_GROUP_ACTION_TYPE_0",
};

struct DanceGroup
{
  struct GameThing super;  /* 0x0 */
  uint8_t field_0x14[0x4];
  struct GroupBehaviour* behaviour;
  uint8_t field_0x1c[0x40];
  uint32_t field_0x5c;
  uint8_t field_0x60[0x11c];
};
static_assert(sizeof(struct DanceGroup) == 0x17c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be8298 mac inlined DanceGroup::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10DanceGroup asm("??_R0?AVDanceGroup@@@8");
// win1.41 009ab6b0 mac inlined DanceGroup::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10DanceGroup asm("??_R1A@?0A@A@DanceGroup@@8");
// win1.41 009ab6c8 mac inlined DanceGroup::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10DanceGroup asm("??_R2DanceGroup@@8");
// win1.41 009ab6d8 mac inlined DanceGroup::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10DanceGroup asm("??_R3DanceGroup@@8");
// win1.41 008d44cc mac 10996e7c DanceGroup::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10DanceGroup asm("??_R4DanceGroup@@6B@");
// win1.41 008d44d0 mac 10996e84 DanceGroup::`vftable'
extern const struct GameThingVftable __vt__10DanceGroup asm("??_7DanceGroup@@6B@");

// Override methods

// win1.41 0050cf00 mac 102aa590 DanceGroup::_dt(void)
void __fastcall __dt__10DanceGroupFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GDanceGroup@@UAEPAXI@Z");
// win1.41 0050cef0 mac 102aaa60 DanceGroup::GetDebugText(void)
char* __fastcall GetDebugText__10DanceGroupFv(struct GameThing* this) asm("?GetDebugText@DanceGroup@@UAEPADXZ");
// win1.41 0050d9c0 mac 102aab20 DanceGroup::Load(GameOSFile &)
uint32_t __fastcall Load__10DanceGroupFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@DanceGroup@@UAEIAAVGameOSFile@@@Z");
// win1.41 0050d640 mac 102ab450 DanceGroup::Save(GameOSFile &)
uint32_t __fastcall Save__10DanceGroupFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@DanceGroup@@UAEIAAVGameOSFile@@@Z");
// win1.41 0050cee0 mac 102aaa20 DanceGroup::GetSaveType(void)
uint32_t __fastcall GetSaveType__10DanceGroupFv(struct GameThing* this) asm("?GetSaveType@DanceGroup@@UAEIXZ");

#endif /* BW1_DECOMP_DANCE_GROUP_INCLUDED_H */
