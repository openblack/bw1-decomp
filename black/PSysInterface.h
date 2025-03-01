#ifndef BW1_DECOMP_P_SYS_INTERFACE_INCLUDED_H
#define BW1_DECOMP_P_SYS_INTERFACE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum PARTICLE_TYPE */

#include "GameThing.h" /* For struct GameThingVftable */
#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

struct GameThing;
struct LHPoint;
struct PSysInterface;
struct PSysProcessInfo;
struct Spell;

enum PSysInterface__NET_GAME_TYPE
{
  PSysInterface__NET_GAME_TYPE_0 = 0x0,
  _PSysInterface__NET_GAME_TYPE_COUNT = 0x1
};
static_assert(sizeof(enum PSysInterface__NET_GAME_TYPE) == 0x4, "Data type is of wrong size");

static const char* PSysInterface__NET_GAME_TYPE_strs[_PSysInterface__NET_GAME_TYPE_COUNT] = {
  "PSysInterface__NET_GAME_TYPE_0",
};

struct PSysInterfaceVftable
{
  struct GameThingVftable super;  /* 0x0 */
  uint32_t (__fastcall* Process__1)(struct PSysBase* this, const void* edx, const struct PSysProcessInfo* info, uint32_t param_3);  /* 0xfc */
  void (__fastcall* Process__2)(struct PSysBase* this, const void* edx, struct PSysProcessInfo* info);  /* 0x100 */
  void (__fastcall* Draw__1)(struct PSysBase* this, const void* edx, float param_1, bool param_2);
  void (__fastcall* Draw__2)(struct PSysBase* this, const void* edx, bool param_1);
  void (__fastcall* AddDrawing)(struct PSysInterface* this, const void* edx, float param_1, const struct LHPoint* param_2);
  void (__fastcall* AddTarget__1)(struct PSysInterface* this, const void* edx, const struct LHPoint* target);  /* 0x110 */
  void (__fastcall* AddTarget__2)(struct PSysInterface* this, const void* edx, struct GameThing* target);
  void (__fastcall* CloseDown)(struct PSysInterface* this);
  void (__fastcall* SetMagnitude)(struct PSysInterface* this, const void* edx, float value);
  void (__fastcall* SetAge)(struct PSysInterface* this, const void* edx, float value);  /* 0x120 */
  void (__fastcall* SetOrigin)(struct PSysInterface* this, const void* edx, const struct LHPoint* value);
  void (__fastcall* SetOriginAndMoveAllAtoms)(struct PSysInterface* this, const void* edx, const struct LHPoint* value);
  void (__fastcall* SetAlpha)(struct PSysInterface* this, const void* edx, uint8_t value);
  struct LHPoint* (__fastcall* GetOrigin)(struct PSysInterface* this);  /* 0x130 */
};
static_assert(sizeof(struct PSysInterfaceVftable) == 0x134, "Data type is of wrong size");

union PSysInterfaceBase
{
  struct PSysBase super;
  struct PSysInterfaceVftable* vftable;
};
static_assert(sizeof(union PSysInterfaceBase) == 0x14, "Data type is of wrong size");

struct PSysInterface
{
  union PSysInterfaceBase base;  /* 0x0 */
};
static_assert(sizeof(struct PSysInterface) == 0x14, "Data type is of wrong size");

static struct PSysInterfaceVftable* const __vt__13PSysInterface = (struct PSysInterfaceVftable* const)0x008fa9d8;

// Static methods

// win1.41 0068e910 mac 100053c0 PSysInterface::Create(Spell *, PARTICLE_TYPE, LHPoint const &, LHPoint const &, float, PSysInterface::NET_GAME_TYPE)
struct PSysInterface* __cdecl Create__13PSysInterfaceFP5Spell13PARTICLE_TYPERC7LHPointRC7LHPointfQ213PSysInterface13NET_GAME_TYPE(struct Spell* spell, enum PARTICLE_TYPE particle_type, struct LHPoint* param_3, struct LHPoint* param_4, float param_5, enum PSysInterface__NET_GAME_TYPE game_type);

#endif /* BW1_DECOMP_P_SYS_INTERFACE_INCLUDED_H */
