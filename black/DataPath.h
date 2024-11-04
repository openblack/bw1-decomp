#ifndef BW1_DECOMP_DATA_PATH_INCLUDED_H
#define BW1_DECOMP_DATA_PATH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct ScriptedCamera;

struct DataPath
{
  struct GameThing super;  /* 0x0 */
  struct ScriptedCamera* scripted_camera;  /* 0x14 */
  int32_t track_no;
  float field_0x1c;
  uint32_t field_0x20;
  float field_0x24;
  float field_0x28;
  float field_0x2c;
};
static_assert(sizeof(struct DataPath) == 0x30, "Data type is of wrong size");

static struct GameThingVftable* const __vt__8DataPath = (struct GameThingVftable* const)0x0092b41c;

// Constructors

// win1.41 005ef040 mac 1037d350 DataPath::DataPath(void)
struct DataPath* __fastcall __ct__8DataPathFv(struct DataPath* this);

#endif /* BW1_DECOMP_DATA_PATH_INCLUDED_H */
