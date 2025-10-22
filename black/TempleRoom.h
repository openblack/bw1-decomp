#ifndef BW1_DECOMP_TEMPLE_ROOM_INCLUDED_H
#define BW1_DECOMP_TEMPLE_ROOM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t, uint8_t */

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */
#include <lionhead/lh3dlib/development/LHCoord.h> /* For struct LHCoord */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "InterfaceMessage.h" /* For enum INTERFACE_MESSAGE_TYPES */

// Forward Declares

enum BINDABLE_ACTIONS;
struct InnerCamera;
struct InnerRoom;
struct TempleRoom;
struct Zoomer3d;

enum TempleRoomsEnum
{
  WorldRoom = 0x0,
  CreatureRoom = 0x1,
  ChallengeRoom = 0x2,
  UniverseRoom = 0x3,
  GameOptionsRoom = 0x4,
  SaveGameRoom = 0x5,
  CreditsRoom = 0x6,
  _TempleRoomsEnum_COUNT = 0x7
};
static_assert(sizeof(enum TempleRoomsEnum) == 0x4, "Data type is of wrong size");

static const char* TempleRoomsEnum_strs[_TempleRoomsEnum_COUNT] = {
  "WorldRoom",
  "CreatureRoom",
  "ChallengeRoom",
  "UniverseRoom",
  "GameOptionsRoom",
  "SaveGameRoom",
  "CreditsRoom",
};

struct TempleRoomVftable
{
  bool (__fastcall* IsAvailable)(struct TempleRoom* this);  /* 0x0 */
  void (__fastcall* DrawAdditional)(struct TempleRoom* this, const void* edx, bool param);
  void (__fastcall* PreDraw)(struct TempleRoom* this);
  void (__fastcall* Draw)(struct TempleRoom* this);
  void (__fastcall* DrawHand)(struct TempleRoom* this);  /* 0x10 */
  void (__fastcall* Update)(struct TempleRoom* this);
  void (__fastcall* UpdateMouse)(struct TempleRoom* this, const void* edx, struct LHCoord coord, enum INTERFACE_MESSAGE_TYPES message_type);
  void (__fastcall* UpdateKeyboard)(struct TempleRoom* this, const void* edx, enum LH_KEY key, uint16_t param);
  void (__fastcall* TriggerIntroCamera)(struct TempleRoom* this, const void* edx, bool param, struct Zoomer3d* zoomer1, struct Zoomer3d* zoomer2);  /* 0x20 */
  void (__fastcall* InitEngine_0)(struct TempleRoom* this);
  void (__fastcall* InitEngine_1)(struct TempleRoom* this, const void* edx, char* param1, char* param2, char* param3, char* param4);
  void (__fastcall* CloseEngine)(struct TempleRoom* this);
  void (__fastcall* CalculateTooltipsInsideCitadel)(struct TempleRoom* this, const void* edx, enum BINDABLE_ACTIONS* actions);  /* 0x30 */
  void (__fastcall* PreToolTipProcess)(struct TempleRoom* this);
  void (__fastcall* PostToolTipProcess)(struct TempleRoom* this);
  void (__fastcall* OnEnterRoom)(struct TempleRoom* this);
};
static_assert(sizeof(struct TempleRoomVftable) == 0x40, "Data type is of wrong size");

struct TempleRoom
{
  struct TempleRoomVftable* vftable;  /* 0x0 */
  char name[0x20];
  uint32_t field_0x24;
  uint32_t field_0x28;
  uint32_t field_0x2c;
  uint32_t field_0x30;
  int32_t field_0x34;
  int32_t field_0x38;
  uint8_t field_0x3c[0x40];
  uint32_t field_0x7c;
  uint8_t field_0x80[0x40];
  struct InnerRoom* inner_room;  /* 0xc0 */
  struct InnerCamera* camera;
  int32_t field_0xc8;
  uint8_t field_0xcc[0x4];
  uint32_t field_0xd0;
  uint32_t field_0xd4;
  uint32_t field_0xd8;
  uint32_t field_0xdc;
  uint32_t field_0xe0;
  float field_0xe4;
  float field_0xe8;
};
static_assert(sizeof(struct TempleRoom) == 0xec, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bec570 mac inlined TempleRoom::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10TempleRoom asm("??_R0?AVTempleRoom@@@8");
// win1.41 009ba578 mac inlined TempleRoom::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10TempleRoom asm("??_R1A@?0A@A@TempleRoom@@8");
// win1.41 009babc4 mac inlined TempleRoom::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10TempleRoom asm("??_R2TempleRoom@@8");
// win1.41 009babd0 mac inlined TempleRoom::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10TempleRoom asm("??_R3TempleRoom@@8");
// win1.41 0099eec0 mac 10732ce8 TempleRoom::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10TempleRoom asm("??_R4TempleRoom@@6B@");
// win1.41 0099eec4 mac 106f5af8 TempleRoom::`vftable'
extern const struct TempleRoomVftable __vt__10TempleRoom asm("??_7TempleRoom@@6B@");

// Constructors

// win1.41 00798870 mac 1053f350 TempleRoom::TempleRoom(const char*)
struct TempleRoom* __fastcall __ct__10TempleRoomFPCc(struct TempleRoom* this, const void* edx, const char* name) asm("??0TempleRoom@@QAE@PBD@Z");

struct InnerRoom
{
  uint32_t field_0x0;
  uint32_t field_0x4;
  uint32_t field_0x8;
  float field_0xc;
  uint8_t field_0x10;
  uint32_t field_0x14;
  uint32_t field_0x18;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
  uint32_t field_0x28;
};
static_assert(sizeof(struct InnerRoom) == 0x2c, "Data type is of wrong size");

// Constructors

// win1.41 00795030 mac 1053bfb0 InnerRoom::InnerRoom(void)
struct InnerRoom* __fastcall __ct__9InnerRoomFv(struct InnerRoom* this) asm("??0InnerRoom@@QAE@XZ");

#endif /* BW1_DECOMP_TEMPLE_ROOM_INCLUDED_H */
