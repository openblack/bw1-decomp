#ifndef BW1_DECOMP_SPELL_WITH_OBJECTS_INCLUDED_H
#define BW1_DECOMP_SPELL_WITH_OBJECTS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint8_t */

#include "Spell.h" /* For struct Spell, struct SpellVftable */

// Forward Declares

struct SpellWithObjects;

struct SpellWithObjectsVftable
{
  struct SpellVftable super;  /* 0x0 */
  bool (__fastcall* GetSetObjectsDyingOnCloseDown)(struct SpellWithObjects* this);  /* 0x554 */
};
static_assert(sizeof(struct SpellWithObjectsVftable) == 0x558, "Data type is of wrong size");

struct SpellWithObjects
{
  struct Spell super;  /* 0x0 */
  uint8_t field_0xec[0x8];
};
static_assert(sizeof(struct SpellWithObjects) == 0xf4, "Data type is of wrong size");

// win1.41 008f452c mac 109a58f4 SpellWithObjects::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__16SpellWithObjects asm("??_R4SpellWithObjects@@6B@");

// win1.41 008f4530 mac 109a591c SpellWithObjects::`vftable'
extern const struct SpellWithObjectsVftable __vt__16SpellWithObjects asm("??_7SpellWithObjects@@6B@");

#endif /* BW1_DECOMP_SPELL_WITH_OBJECTS_INCLUDED_H */
