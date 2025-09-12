#ifndef BW1_DECOMP_LH3D_STORM_INCLUDED_H
#define BW1_DECOMP_LH3D_STORM_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

struct LH3DStorm;
struct WeatherInfo;
struct LHPoint;

struct LH3DStormVftable
{
  void (__fastcall* Update)(struct LH3DStorm* this, const void* edx, float param_1);  /* 0x0 */
  void (__fastcall* DrawClouds)(struct LH3DStorm* this);
  void (__fastcall* DebugDraw)(struct LH3DStorm* this);
  void (__fastcall* CalcAtmos__)(struct LH3DStorm* this, const void* edx, struct LHPoint* point, struct WeatherInfo* info);
  void (__fastcall* __dt)(struct LH3DStorm* this);  /* 0x10 */
};
static_assert(sizeof(struct LH3DStormVftable) == 0x14, "Data type is of wrong size");

struct LH3DStorm
{
  struct LH3DStormVftable* vftable;  /* 0x0 */
};
static_assert(sizeof(struct LH3DStorm) == 0x4, "Data type is of wrong size");

// win1.41 009a3b00 mac 101cd534 LH3DStorm::`vftable'
extern const struct LH3DStormVftable __vt__9LH3DStorm asm("??_7LH3DStorm@@6B@");

#endif /* BW1_DECOMP_LH3D_STORM_INCLUDED_H */
