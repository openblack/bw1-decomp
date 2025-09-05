#ifndef BW1_DECOMP_TOWN_SPELL_ICON_INCLUDED_H
#define BW1_DECOMP_TOWN_SPELL_ICON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For POWER_UP_TYPE_LAST, enum POWER_UP_TYPE */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "SpellIcon.h" /* For struct SpellIcon */

// Forward Declares

struct Town;

struct TownSpellIcon
{
  struct SpellIcon super;  /* 0x0 */
  struct TownSpellIcon* next;  /* 0x110 */
  struct Town* town;
};
static_assert(sizeof(struct TownSpellIcon) == 0x118, "Data type is of wrong size");

// win1.41 008e7790 mac 109e5998 TownSpellIcon::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__13TownSpellIcon asm("??_R4TownSpellIcon@@6B@");

// win1.41 008e7794 mac 109e59d8 TownSpellIcon::`vftable'
extern const struct MultiMapFixedVftable __vt__13TownSpellIcon asm("??_7TownSpellIcon@@6B@");

DECLARE_LH_LIST_HEAD(TownSpellIcon);

struct TownCentreSpellIcon
{
  struct TownSpellIcon super;  /* 0x0 */
  uint32_t field_0x118;
  uint32_t power_up_enabled[POWER_UP_TYPE_LAST];
};
static_assert(sizeof(struct TownCentreSpellIcon) == 0x128, "Data type is of wrong size");

// Non-virtual methods

// win1.41 00748eb0 mac 105612c0 TownCentreSpellIcon::SetPULevel(POWER_UP_TYPE, bool)
void __fastcall SetPULevel__19TownCentreSpellIconF13POWER_UP_TYPEb(struct TownCentreSpellIcon* this, const void* edx, enum POWER_UP_TYPE power_up_type, bool enabled);
// win1.41 00748ed0 mac 10561210 TownCentreSpellIcon::UpdateGraphicWithPULevels(void)
void __fastcall UpdateGraphicWithPULevels__19TownCentreSpellIconFv(struct TownCentreSpellIcon* this);

#endif /* BW1_DECOMP_TOWN_SPELL_ICON_INCLUDED_H */
