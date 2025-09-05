#ifndef BW1_DECOMP_DANCE_PATH_INFO_INCLUDED_H
#define BW1_DECOMP_DANCE_PATH_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

struct DancePathInfo
{
  struct GameThing super;  /* 0x0 */
  uint8_t field_0x14;
  uint8_t field_0x15[0x3];
  uint8_t (*field_0x18)[0xc];
  uint32_t field_0x1c;
};
static_assert(sizeof(struct DancePathInfo) == 0x20, "Data type is of wrong size");

// win1.41 00900910 mac 10744cf0 DancePathInfo::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__13DancePathInfo asm("??_R4DancePathInfo@@6B@");

// win1.41 00900914 mac 10744cf8 DancePathInfo::`vftable'
extern const struct GameThingVftable __vt__13DancePathInfo asm("??_7DancePathInfo@@6B@");

#endif /* BW1_DECOMP_DANCE_PATH_INFO_INCLUDED_H */
