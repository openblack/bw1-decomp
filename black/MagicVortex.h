#ifndef BW1_DECOMP_MAGIC_VORTEX_INCLUDED_H
#define BW1_DECOMP_MAGIC_VORTEX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum VORTEX_TYPE */

#include "MobileStatic.h" /* For struct MobileStatic */
#include "MultiMapFixed.h" /* For struct MultiMapFixedVftable */

// Forward Declares

struct Flock;
struct GVortexInfo;
struct LandscapeVortex;
struct MapCoords;
struct Villager;

struct LandscapeVortexVftable
{
  struct MultiMapFixedVftable super;  /* 0x0 */
  void (__fastcall* ProcessContentsOfVortex)(struct LandscapeVortex* this);  /* 0x90c */
  void (__fastcall* SetFlockParams)(struct LandscapeVortex* this, const void* edx, const struct MapCoords* coords, float param_2, float param_3, struct Flock* flock);  /* 0x910 */
  bool (__fastcall* IsVillagerBeingThrownByThisVortex)(struct LandscapeVortex* this, const void* edx, struct Villager* villager);
};
static_assert(sizeof(struct LandscapeVortexVftable) == 0x918, "Data type is of wrong size");

struct LandscapeVortex
{
  struct MobileStatic super;  /* 0x0 */
  struct LandscapeVortex* next;  /* 0x88 */
  float field_0x8c;
  float field_0x90;
  uint32_t field_0x94;
  uint32_t field_0x98;
  uint32_t field_0x9c;
  uint32_t field_0xa0;
  uint32_t field_0xa4;
  uint32_t field_0xa8;
  uint32_t field_0xac;
  uint32_t field_0xb0;
  uint32_t field_0xb4;
  uint8_t field_0xb8;
  uint32_t field_0xbc;
  uint32_t field_0xc0;
  uint32_t field_0xc4;
  uint32_t field_0xc8;
  uint32_t field_0xcc;
  uint32_t field_0xd0;
  uint32_t field_0xd4;
  uint32_t field_0xd8;
  uint32_t field_0xdc;
  enum VORTEX_TYPE type;  /* 0xe0 */
  uint32_t field_0xe4;
  float field_0xe8;
};
static_assert(sizeof(struct LandscapeVortex) == 0xec, "Data type is of wrong size");

// win1.41 0092ee7c mac 1099b714 LandscapeVortex::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__15LandscapeVortex asm("??_R4LandscapeVortex@@6B@");

// win1.41 0092ee80 mac 106f8abc LandscapeVortex::`vftable'
extern const struct LandscapeVortexVftable __vt__15LandscapeVortex asm("??_7LandscapeVortex@@6B@");

// Constructors

// win1.41 005fe7a0 mac 103b69b0 LandscapeVortex::LandscapeVortex(void)
struct LandscapeVortex* __fastcall __ct__15LandscapeVortexFv(struct LandscapeVortex* this);

// Non-virtual methods

// win1.41 005fd570 mac 103b8c60 LandscapeVortex::GetVortexInfo(void)
struct GVortexInfo* __fastcall GetVortexInfo__15LandscapeVortexFv(struct LandscapeVortex* this);

#endif /* BW1_DECOMP_MAGIC_VORTEX_INCLUDED_H */
