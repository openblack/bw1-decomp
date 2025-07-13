#ifndef BW1_DECOMP_WORSHIP_SPELL_ICON_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SPELL_ICON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, uint32_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "SpellIcon.h" /* For struct SpellIcon */

// Forward Declares

struct GSpellIconInfo;
struct GSpellSeedInfo;
struct MapCoords;
struct WorshipSite;

struct WorshipSpellIcon
{
  struct SpellIcon super;  /* 0x0 */
  struct WorshipSpellIcon* next;  /* 0x110 */
  int16_t field_0x114;
  uint32_t site;
  float field_0x11c;
  uint32_t field_0x120;
  int field_0x124;
  uint32_t field_0x128;
  uint32_t field_0x12c;
  uint32_t field_0x130;
  float field_0x134;
  uint32_t field_0x138;
  int16_t slot;
};
static_assert(sizeof(struct WorshipSpellIcon) == 0x140, "Data type is of wrong size");

static struct MultiMapFixedVftable* const __vt__16WorshipSpellIcon = (struct MultiMapFixedVftable* const)0x0099d878;

// Static methods

// win1.41 0077f2b0 mac 105b6cf0 WorshipSpellIcon::Create(MapCoords const &, GSpellIconInfo const *, GSpellSeedInfo const *, WorshipSite *, short, float, int)
struct WorshipSpellIcon* __cdecl Create__16WorshipSpellIconFRC9MapCoordsPC14GSpellIconInfoPC14GSpellSeedInfoP11WorshipSitesfi(struct MapCoords* coords, struct GSpellIconInfo* icon_info, struct GSpellSeedInfo* seed_info, struct WorshipSite* site, int16_t slot, float param_6, int param_7);

// Constructors

// win1.41 0077f140 mac 105b7070 WorshipSpellIcon::WorshipSpellIcon(MapCoords const &, GSpellIconInfo const *, GSpellSeedInfo const *, WorshipSite *, short, float, int)
struct WorshipSpellIcon* __fastcall __ct__16WorshipSpellIconFRC9MapCoordsPC14GSpellIconInfoPC14GSpellSeedInfoP11WorshipSitesfi(struct WorshipSpellIcon* this, const void* edx, const struct MapCoords* coords, const struct GSpellIconInfo* icon_info, const struct GSpellSeedInfo* seed_info, struct WorshipSite* site, int16_t slot, float param_6, int param_7);

// Non-virtual methods

// win1.41 0077f1f0 mac inlined WorshipSpellIcon::SetZero(void)
void __fastcall SetZero__16WorshipSpellIconFv(struct WorshipSpellIcon* this) asm("?SetZero@WorshipSpellIcon@@QAEXXZ");
// win1.41 0077f320 mac 105b6bf0 WorshipSpellIcon::UpdateGraphicsWithPULevels(void)
void __fastcall UpdateGraphicsWithPULevels__16WorshipSpellIconFv(struct WorshipSpellIcon* this);
// win1.41 0077ff40 mac 105b4ff0 WorshipSpellIcon::StopRemoveFromPlayer(void)
void __fastcall StopRemoveFromPlayer__16WorshipSpellIconFv(struct WorshipSpellIcon* this);

// Override methods

// win1.41 0077f290 mac 105b6e40 WorshipSpellIcon::CallVirtualFunctionsForCreation(const MapCoords &)
void __fastcall CallVirtualFunctionsForCreation__16WorshipSpellIconFRC9MapCoords(struct WorshipSpellIcon* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@WorshipSpellIcon@@UAEXABUMapCoords@@@Z");

DECLARE_LH_LIST_HEAD(WorshipSpellIcon);

#endif /* BW1_DECOMP_WORSHIP_SPELL_ICON_INCLUDED_H */
