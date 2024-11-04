#ifndef BW1_DECOMP_ANIMAL_INCLUDED_H
#define BW1_DECOMP_ANIMAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/GStates.h> /* For ANIMAL_STATE_LAST_STATE */

#include "Living.h" /* For struct Living */
#include "LivingAction.h" /* For struct Living__StateTableEntry */

struct Animal__StateTable
{
  struct Living__StateTableEntry entries[ANIMAL_STATE_LAST_STATE];  /* 0x0 */
};
static_assert(sizeof(struct Animal__StateTable) == 0x1dd0, "Data type is of wrong size");

struct Animal
{
  struct Living super;  /* 0x0 */
  uint8_t field_0xe0[0x2c];
  uint8_t death_reason;  /* 0x10c */
  float field_0x110;
  float field_0x114;
  float field_0x118;
  float field_0x11c;
  uint32_t field_0x120;
  float field_0x124;
  float field_0x128;
  float field_0x12c;
  float field_0x130;
  float field_0x134;
  float field_0x138;
  float field_0x13c;
  float field_0x140;
  float field_0x144;
};
static_assert(sizeof(struct Animal) == 0x148, "Data type is of wrong size");

static struct LivingVftable* const __vt__6Animal = (struct LivingVftable* const)0x008ab7cc;

// Non-virtual methods

// win1.41 0041abb0 mac 10087bd0 Animal::KeepFlockMemberWithinFlockArea(void)
uint32_t __fastcall KeepFlockMemberWithinFlockArea__6AnimalFv(struct Animal* this);

#endif /* BW1_DECOMP_ANIMAL_INCLUDED_H */
