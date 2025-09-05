#ifndef BW1_DECOMP_GROUP_BEHAVIOUR_INCLUDED_H
#define BW1_DECOMP_GROUP_BEHAVIOUR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DanceGroup.h" /* For enum DANCE_GROUP_ACTION_TYPE */
#include "DancePathInfo.h" /* For struct DancePathInfo */
#include "GameThingWithPos.h" /* For struct GameThingWithPos, struct GameThingWithPosVftable */

// Forward Declares

struct DanceGroup;
struct DanceGroupActionArgument;
struct GroupBehaviour;
struct LHDynamicStack__Ul;

struct GroupBehaviourVftable
{
  struct GameThingWithPosVftable super;  /* 0x0 */
  void (__fastcall* Process)(struct GroupBehaviour* this);  /* 0x500 */
  void (__fastcall* UpdateGroupBasedOnAction)(struct GroupBehaviour* this, const void* edx, struct DanceGroup* dance_group, enum DANCE_GROUP_ACTION_TYPE action_type, const struct DanceGroupActionArgument* argument, uint32_t param_4);
  void (__fastcall* AddAction_1)(struct GroupBehaviour* this, const void* edx, float param_1, struct LHDynamicStack__Ul stack, enum DANCE_GROUP_ACTION_TYPE action_type, const struct DanceGroupActionArgument* argument);
  void (__fastcall* AddAction_2)(struct GroupBehaviour* this, const void* edx, float param_1, uint32_t param_2, enum DANCE_GROUP_ACTION_TYPE action_type, struct DanceGroupActionArgument* arguments);
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

// win1.41 009003f4 mac 10744630 GroupBehaviour::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__14GroupBehaviour asm("??_R4GroupBehaviour@@6B@");

// win1.41 009003f8 mac 106f5ebc GroupBehaviour::`vftable'
extern const struct GroupBehaviourVftable __vt__14GroupBehaviour asm("??_7GroupBehaviour@@6B@");

// Constructors

// win1.41 00596070 mac 100fad20 GroupBehaviour::GroupBehaviour(void)
struct GroupBehaviour* __fastcall __ct__14GroupBehaviourFv(struct GroupBehaviour* this);

// Non-virtual methods

// win1.41 00597270 mac 100f8990 GroupBehaviour::AddAction(float, unsigned long, DANCE_GROUP_ACTION_TYPE, DanceGroupActionArgument const &)
void __fastcall AddAction__14GroupBehaviourFfUl23DANCE_GROUP_ACTION_TYPERC24DanceGroupActionArgument(struct GroupBehaviour* this, const void* edx, float param_1, uint32_t param_2, enum DANCE_GROUP_ACTION_TYPE action_type, struct DanceGroupActionArgument* arguments);
// win1.41 00597300 mac 100f8760 GroupBehaviour::AddAction(float, LHDynamicStack<Ul> &, DANCE_GROUP_ACTION_TYPE, DanceGroupActionArgument const &)
void __fastcall AddAction__14GroupBehaviourFfR18LHDynamicStack_Ul_23DANCE_GROUP_ACTION_TYPERC24DanceGroupActionArgument(struct GroupBehaviour* this, const void* edx, float param_1, struct LHDynamicStack__Ul* stack, enum DANCE_GROUP_ACTION_TYPE action_type, const struct DanceGroupActionArgument* argument);

// Override methods

// win1.41 005964a0 mac 106ffb98 GroupBehaviour::Process(void)
void __fastcall Process__14GroupBehaviour(struct GroupBehaviour* this);
// win1.41 00596700 mac 100f90b0 GroupBehaviour::UpdateGroupBasedOnAction(DanceGroup *, DANCE_GROUP_ACTION_TYPE, DanceGroupActionArgument const &, unsigned long)
void __fastcall UpdateGroupBasedOnAction__14GroupBehaviourFP10DanceGroup23DANCE_GROUP_ACTION_TYPERC24DanceGroupActionArgumentUl(struct GroupBehaviour* this, const void* edx, struct DanceGroup* dance_group, enum DANCE_GROUP_ACTION_TYPE action_type, const struct DanceGroupActionArgument* argument, uint32_t param_4);
// win1.41 005978e0 mac 100f6eb0 GroupBehaviour::LoadDance(char const *)
void __fastcall LoadDance__14GroupBehaviourFPCc(struct GroupBehaviour* this, const void* edx, const char* param_1);
// win1.41 0050cc40 mac 100f4e30 GroupBehaviour::GetAngle(void)
float __fastcall GetAngle__14GroupBehaviourFv(struct GroupBehaviour* this);

#endif /* BW1_DECOMP_GROUP_BEHAVIOUR_INCLUDED_H */
