#ifndef BW1_DECOMP_WORSHIP_SITE_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum SPELL_SEED_TYPE */

#include "CitadelPart.h" /* For struct CitadelPart */
#include "WorshipSpellIcon.h" /* For struct WorshipSpellIcon */

// Forward Declares

struct Dance;
struct GTribeInfo;
struct MapCoords;
struct ShowNeeds;
struct Town;
struct WorshipTotem;

struct WorshipSite
{
  struct CitadelPart super;  /* 0x0 */
  struct GTribeInfo* tribe_info;  /* 0x8c */
  struct ShowNeeds* show_needs;  /* 0x90 */
  uint32_t field_0x94;
  uint32_t field_0x98;
  uint32_t field_0x9c;
  struct Dance* dance;  /* 0xa0 */
  uint8_t field_0xa4[0x14];
  int* field_0xb8;
  uint8_t field_0xbc[0xc];
  int field_0xc8;
  uint8_t field_0xcc[0xc];
  int field_0xd8;
  struct WorshipTotem* totem;
  struct LHListHead__WorshipSpellIcon icon_list;  /* 0xe0 */
  uint8_t field_0xe8[0x2c];
  float field_0x114;
  float field_0x118;
  float field_0x11c;
  uint32_t field_0x120;
  int num_villagers_requesting_to_go_home;
};
static_assert(sizeof(struct WorshipSite) == 0x128, "Data type is of wrong size");

// win1.41 008f283c mac 10733a30 WorshipSite::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__11WorshipSite asm("??_R4WorshipSite@@6B@");

// win1.41 008f2840 mac 106f5b48 WorshipSite::`vftable'
extern const struct MultiMapFixedVftable __vt__11WorshipSite asm("??_7WorshipSite@@6B@");

// Non-virtual methods

// win1.41 0077afc0 mac 105b28e0 WorshipSite::GetSpellIconPosFromSlot(unsigned long, float)
struct MapCoords* __fastcall GetSpellIconPosFromSlot__11WorshipSiteFUlf(struct WorshipSite* this, const void* edx, struct MapCoords* coords, uint32_t slot, float angle);
// win1.41 0077b080 mac 105b26e0 WorshipSite::GetSpellIconPos(short &)
struct MapCoords* __fastcall GetSpellIconPos__11WorshipSiteFRs(struct WorshipSite* this, const void* edx, struct MapCoords* coords, int16_t* slot);
// win1.41 0077c430 mac 105b01e0 WorshipSite::AddSpellIcon(WorshipSpellIcon *)
void __fastcall AddSpellIcon__11WorshipSiteFP16WorshipSpellIcon(struct WorshipSite* this, const void* edx, struct WorshipSpellIcon* icon);
// win1.41 0077c910 mac 105af7f0 WorshipSite::AddTownSpells(Town *)
void __fastcall AddTownSpells__11WorshipSiteFP4Town(struct WorshipSite* this, const void* edx, struct Town* town);
// win1.41 0077c9e0 mac 105af540 WorshipSite::AddSpellIconIfNecessary(SPELL_SEED_TYPE)
void __fastcall AddSpellIconIfNecessary__11WorshipSiteF15SPELL_SEED_TYPE(struct WorshipSite* this, const void* edx, enum SPELL_SEED_TYPE seed_type);
// win1.41 0077cf30 mac 105aeaa0 WorshipSite::GetTotemPos(void)
struct MapCoords* __fastcall GetTotemPos__11WorshipSiteFv(struct WorshipSite* this, const void* edx, struct MapCoords* coords);
// win1.41 0077e260 mac 105aba40 WorshipSite::GetNumVillagersRequestingToGoHome(void)
int __fastcall GetNumVillagersRequestingToGoHome__11WorshipSiteFv(struct WorshipSite* this);

#endif /* BW1_DECOMP_WORSHIP_SITE_INCLUDED_H */
