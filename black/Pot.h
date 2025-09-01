#ifndef BW1_DECOMP_POT_INCLUDED_H
#define BW1_DECOMP_POT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */

#include "MobileObject.h" /* For struct MobileObject, struct MobileObjectVftable */

// Forward Declares

struct GPotInfo;
struct MapCoords;
struct MultiMapFixed;
struct Pot;
struct Town;

struct PotVftable
{
  struct MobileObjectVftable super;  /* 0x0 */
  void (__fastcall* SetSize)(struct Pot* this);  /* 0x85c */
  bool (__fastcall* IsPartOfStructure)(struct Pot* this);  /* 0x860 */
  void (__fastcall* SetSpeedUp)(struct Pot* this, const void* edx, int32_t speed);
  void (__fastcall* SetMultiMapFixed)(struct Pot* this, const void* edx, struct MultiMapFixed* multiMapFixed);
};
static_assert(sizeof(struct PotVftable) == 0x86c, "Data type is of wrong size");

union PotBase
{
  struct MobileObject super;
  struct PotVftable* vftable;
};
static_assert(sizeof(union PotBase) == 0x68, "Data type is of wrong size");

struct Pot
{
  union PotBase base;  /* 0x0 */
  enum RESOURCE_TYPE field_0x68;
  uint32_t field_0x6c;
  uint32_t field_0x70;
  uint8_t field_0x74;
};
static_assert(sizeof(struct Pot) == 0x78, "Data type is of wrong size");

static struct PotVftable* const __vt__3Pot = (struct PotVftable* const)0x008e6604;

// Constructors

// win1.41 inlined mac 1030c590 Pot::Pot(void)
struct Pot* __fastcall __ct__3PotFv(struct Pot* this);
// win1.41 0066ce60 mac 1011cef0 Pot::Pot(MapCoords const &, GPotInfo const *, unsigned long, Town *, float, float)
struct Pot* __fastcall __ct__3PotFRC9MapCoordsPC8GPotInfoUlP4Townff(struct Pot* this, const void* edx, struct MapCoords* param_1, struct GPotInfo* param_2, uint32_t param_3, struct Town* param_4, float param_5, float param_6);

// Non-virtual methods

// win1.41 0066cec0 mac 1011ceb0 Pot::SetToZero(void)
void __fastcall SetToZero__3PotFv(struct Pot* this);

#endif /* BW1_DECOMP_POT_INCLUDED_H */
