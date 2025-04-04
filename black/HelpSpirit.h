#ifndef BW1_DECOMP_HELP_SPIRIT_INCLUDED_H
#define BW1_DECOMP_HELP_SPIRIT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum HELP_SPIRIT_TYPE */

#include "Object.h" /* For struct Object */

// Forward Declares

struct MapCoords;

struct HelpSpirit
{
  struct Object super;  /* 0x0 */
  uint32_t field_0x54;
  enum HELP_SPIRIT_TYPE type;
  uint8_t field_0x5c[0x8];
};
static_assert(sizeof(struct HelpSpirit) == 0x64, "Data type is of wrong size");

static struct ObjectVftable* const __vt__10HelpSpirit = (struct ObjectVftable* const)0x009154b8;

// Constructors

// win1.41 005c4aa0 mac 1034c700 HelpSpirit::HelpSpirit(MapCoords const &, HELP_SPIRIT_TYPE)
struct HelpSpirit* __fastcall __ct__10HelpSpiritFRC9MapCoords16HELP_SPIRIT_TYPE(struct HelpSpirit* this, const void* edx, const struct MapCoords* coords, enum HELP_SPIRIT_TYPE type);

#endif /* BW1_DECOMP_HELP_SPIRIT_INCLUDED_H */
