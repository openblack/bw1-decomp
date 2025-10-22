#ifndef BW1_DECOMP_GROUP_BEHAVIOUR_INCLUDED_H
#define BW1_DECOMP_GROUP_BEHAVIOUR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHDynamicStack.h> /* For struct LHDynamicStack__Ul */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DanceGroup.h" /* For enum DANCE_GROUP_ACTION_TYPE */
#include "DancePathInfo.h" /* For struct DancePathInfo */
#include "GameThing.h" /* For struct GameThing */
#include "GameThingWithPos.h" /* For struct GameThingWithPos, struct GameThingWithPosVftable */

// Forward Declares

struct Base;
struct DanceGroup;
struct DanceGroupActionArgument;
struct GameOSFile;
struct GroupBehaviour;
struct Living;
struct MapCoords;

struct GroupBehaviourVftable
{
  struct GameThingWithPosVftable super;  /* 0x0 */
  void (__fastcall* Process)(struct GroupBehaviour* this);  /* 0x500 */
  void (__fastcall* UpdateGroupBasedOnAction)(struct GroupBehaviour* this, const void* edx, struct DanceGroup* dance_group, enum DANCE_GROUP_ACTION_TYPE action_type, const struct DanceGroupActionArgument* argument, uint32_t param_4);
  void (__fastcall* AddAction_0)(struct GroupBehaviour* this, const void* edx, float param_1, struct LHDynamicStack__Ul* stack, enum DANCE_GROUP_ACTION_TYPE action_type, const struct DanceGroupActionArgument* argument);
  void (__fastcall* AddAction_1)(struct GroupBehaviour* this, const void* edx, float param_1, uint32_t param_2, enum DANCE_GROUP_ACTION_TYPE action_type, struct DanceGroupActionArgument* arguments);
  void (__fastcall* LoadDance)(struct GroupBehaviour* this, const void* edx, const char* param_1);  /* 0x510 */
  float (__fastcall* GetAngle)(struct GroupBehaviour* this);
};
static_assert(sizeof(struct GroupBehaviourVftable) == 0x518, "Data type is of wrong size");

struct GroupBehaviour
{
  struct GameThingWithPos super;  /* 0x0 */
  uint32_t field_0x28;
  uint32_t field_0x2c;
  uint32_t field_0x30;
  uint32_t field_0x34;
  uint32_t field_0x38;
  uint32_t field_0x3c;
  uint32_t field_0x40;
  uint32_t field_0x44;
  uint8_t field_0x48;
  uint32_t field_0x4c[0xa];
  uint32_t field_0x74;
  uint32_t field_0x78;
  uint32_t field_0x7c;
  uint32_t field_0x80;
  uint32_t field_0x84;
  uint32_t field_0x88;
  uint32_t field_0x8c;
  uint32_t field_0x90;
  uint32_t field_0x94;
  uint32_t field_0x98;
  float field_0x9c;
  float field_0xa0;
  uint32_t field_0xa4;
  uint32_t field_0xa8;
  float group_angle;
  uint32_t field_0xb0;
  uint32_t field_0xb4;
  uint32_t field_0xb8;
  uint32_t field_0xbc;
  uint32_t field_0xc0;
  uint32_t field_0xc4;
  struct DancePathInfo dance_path_info;
};
static_assert(sizeof(struct GroupBehaviour) == 0xe8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be6720 mac inlined GroupBehaviour::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14GroupBehaviour asm("??_R0?AVGroupBehaviour@@@8");
// win1.41 009ab598 mac inlined GroupBehaviour::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14GroupBehaviour asm("??_R1A@?0A@A@GroupBehaviour@@8");
// win1.41 009b0e48 mac inlined GroupBehaviour::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14GroupBehaviour asm("??_R2GroupBehaviour@@8");
// win1.41 009b0e60 mac inlined GroupBehaviour::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14GroupBehaviour asm("??_R3GroupBehaviour@@8");
// win1.41 009003f4 mac 10744630 GroupBehaviour::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14GroupBehaviour asm("??_R4GroupBehaviour@@6B@");
// win1.41 009003f8 mac 106f5ebc GroupBehaviour::`vftable'
extern const struct GroupBehaviourVftable __vt__14GroupBehaviour asm("??_7GroupBehaviour@@6B@");

// Constructors

// win1.41 00596070 mac 100fad20 GroupBehaviour::GroupBehaviour(void)
struct GroupBehaviour* __fastcall __ct__14GroupBehaviourFv(struct GroupBehaviour* this) asm("??0GroupBehaviour@@QAE@XZ");

// Non-virtual methods

// win1.41 00597400 mac 100f8550 GroupBehaviour::FindDanceGroup(Living *)
bool __fastcall FindDanceGroup__14GroupBehaviourFP6Living(struct GroupBehaviour* this, const void* edx, struct Living* param_1) asm("?FindDanceGroup@GroupBehaviour@@QAE_NPAVLiving@@@Z");
// win1.41 00597f20 mac 100f68a0 GroupBehaviour::CalculateDancePosition(MapCoords const &, MapCoords *, DanceGroup *, unsigned long)
void __fastcall CalculateDancePosition__14GroupBehaviourFRC9MapCoordsP9MapCoordsP10DanceGroupUl(struct GroupBehaviour* this, const void* edx, const struct MapCoords* param_1, struct MapCoords* param_2, struct DanceGroup* param_3, unsigned long param_4) asm("?CalculateDancePosition@GroupBehaviour@@QAEXABUMapCoords@@PAU2@PAVDanceGroup@@K@Z");

// Override methods

// win1.41 00596190 mac 100fa600 GroupBehaviour::_dt(void)
void __fastcall __dt__14GroupBehaviourFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGroupBehaviour@@UAEPAXI@Z");
// win1.41 00596320 mac 100fa080 GroupBehaviour::ToBeDeleted(int)
void __fastcall ToBeDeleted__14GroupBehaviourFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GroupBehaviour@@UAEXH@Z");
// win1.41 005985c0 mac 100f4e70 GroupBehaviour::Load(GameOSFile &)
uint32_t __fastcall Load__14GroupBehaviourFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@GroupBehaviour@@UAEIAAVGameOSFile@@@Z");
// win1.41 00598240 mac 100f5a80 GroupBehaviour::Save(GameOSFile &)
uint32_t __fastcall Save__14GroupBehaviourFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@GroupBehaviour@@UAEIAAVGameOSFile@@@Z");
// win1.41 005964a0 mac 106ffb98 GroupBehaviour::Process(void)
void __fastcall Process__14GroupBehaviour(struct GroupBehaviour* this) asm("?Process@GroupBehaviour@@UAEXXZ");
// win1.41 00596700 mac 100f90b0 GroupBehaviour::UpdateGroupBasedOnAction(DanceGroup *, DANCE_GROUP_ACTION_TYPE, DanceGroupActionArgument const &, unsigned long)
void __fastcall UpdateGroupBasedOnAction__14GroupBehaviourFP10DanceGroup23DANCE_GROUP_ACTION_TYPERC24DanceGroupActionArgumentUl(struct GroupBehaviour* this, const void* edx, struct DanceGroup* dance_group, enum DANCE_GROUP_ACTION_TYPE action_type, const struct DanceGroupActionArgument* argument, uint32_t param_4);
// win1.41 00597300 mac 100f8760 GroupBehaviour::AddAction(float, LHDynamicStack<Ul> &, DANCE_GROUP_ACTION_TYPE, DanceGroupActionArgument const &)
void __fastcall AddAction__14GroupBehaviourFfR18LHDynamicStack_Ul_23DANCE_GROUP_ACTION_TYPERC24DanceGroupActionArgument(struct GroupBehaviour* this, const void* edx, float param_1, struct LHDynamicStack__Ul* stack, enum DANCE_GROUP_ACTION_TYPE action_type, const struct DanceGroupActionArgument* argument);
// win1.41 00597270 mac 100f8990 GroupBehaviour::AddAction(float, unsigned long, DANCE_GROUP_ACTION_TYPE, DanceGroupActionArgument const &)
void __fastcall AddAction__14GroupBehaviourFfUl23DANCE_GROUP_ACTION_TYPERC24DanceGroupActionArgument(struct GroupBehaviour* this, const void* edx, float param_1, uint32_t param_2, enum DANCE_GROUP_ACTION_TYPE action_type, struct DanceGroupActionArgument* arguments);
// win1.41 005978e0 mac 100f6eb0 GroupBehaviour::LoadDance(char const *)
void __fastcall LoadDance__14GroupBehaviourFPCc(struct GroupBehaviour* this, const void* edx, const char* param_1) asm("?LoadDance@GroupBehaviour@@UAEXPBD@Z");
// win1.41 0050cc40 mac 100f4e30 GroupBehaviour::GetAngle(void)
float __fastcall GetAngle__14GroupBehaviourFv(struct GroupBehaviour* this) asm("?GetAngle@GroupBehaviour@@UAEMXZ");

struct DanceEditState
{
  struct GroupBehaviour super;  /* 0x0 */
};
static_assert(sizeof(struct DanceEditState) == 0xe8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be8270 mac inlined DanceEditState::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14DanceEditState asm("??_R0?AVDanceEditState@@@8");
// win1.41 009ab658 mac inlined DanceEditState::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14DanceEditState asm("??_R1A@?0A@A@DanceEditState@@8");
// win1.41 009ab670 mac inlined DanceEditState::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14DanceEditState asm("??_R2DanceEditState@@8");
// win1.41 009ab688 mac inlined DanceEditState::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14DanceEditState asm("??_R3DanceEditState@@8");

// Override methods

// win1.41 0050cc50 mac inlined DanceEditState::_dt(void)
void __fastcall __dt__14DanceEditStateFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GDanceEditState@@UAEPAXI@Z");
// win1.41 0050cc90 mac inlined DanceEditState::ToBeDeleted(int)
void __fastcall ToBeDeleted__14DanceEditStateFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@DanceEditState@@UAEXH@Z");

struct DanceKeyAction
{
  struct GameThing super;  /* 0x0 */
};
static_assert(sizeof(struct DanceKeyAction) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be82d0 mac inlined DanceKeyAction::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14DanceKeyAction asm("??_R0?AVDanceKeyAction@@@8");
// win1.41 009ab700 mac inlined DanceKeyAction::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14DanceKeyAction asm("??_R1A@?0A@A@DanceKeyAction@@8");
// win1.41 009ab718 mac inlined DanceKeyAction::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14DanceKeyAction asm("??_R2DanceKeyAction@@8");
// win1.41 009ab728 mac inlined DanceKeyAction::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14DanceKeyAction asm("??_R3DanceKeyAction@@8");

// Override methods

// win1.41 0050e3a0 mac 102aed30 DanceKeyAction::_dt(void)
void __fastcall __dt__14DanceKeyActionFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GDanceKeyAction@@UAEPAXI@Z");
// win1.41 0050e390 mac 102aee40 DanceKeyAction::GetDebugText(void)
char* __fastcall GetDebugText__14DanceKeyActionFv(struct GameThing* this) asm("?GetDebugText@DanceKeyAction@@UAEPADXZ");
// win1.41 0050ea00 mac 102ae600 DanceKeyAction::Load(GameOSFile &)
uint32_t __fastcall Load__14DanceKeyActionFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@DanceKeyAction@@UAEIAAVGameOSFile@@@Z");
// win1.41 0050e880 mac 102ae810 DanceKeyAction::Save(GameOSFile &)
uint32_t __fastcall Save__14DanceKeyActionFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@DanceKeyAction@@UAEIAAVGameOSFile@@@Z");
// win1.41 0050e380 mac 102aee00 DanceKeyAction::GetSaveType(void)
uint32_t __fastcall GetSaveType__14DanceKeyActionFv(struct GameThing* this) asm("?GetSaveType@DanceKeyAction@@UAEIXZ");

#endif /* BW1_DECOMP_GROUP_BEHAVIOUR_INCLUDED_H */
