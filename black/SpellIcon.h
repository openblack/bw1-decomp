#ifndef BW1_DECOMP_SPELL_ICON_INCLUDED_H
#define BW1_DECOMP_SPELL_ICON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum SPELL_SEED_TYPE */
#include <reversing_utils/re_common.h> /* For bool32_t */

#include "LightSheet.h" /* For struct LightSheet */
#include "MapCoords.h" /* For struct MapCoords */
#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

struct GSpellIconInfo;
struct GSpellSeedInfo;
struct SpellSeedGraphic;

struct Q29SpellIcon13TChargingData
{
  uint8_t field_0x0;
  struct LightSheet light_sheet;
  uint32_t field_0x64;
  uint32_t field_0x68;
  uint32_t field_0x6c;
  int field_0x70;
  uint32_t field_0x74;
};
static_assert(sizeof(struct Q29SpellIcon13TChargingData) == 0x78, "Data type is of wrong size");

// Constructors

// win1.41 00726690 mac 10524570 SpellIcon::TChargingData::TChargingData(void)
struct Q29SpellIcon13TChargingData* __fastcall __ct__Q29SpellIcon13TChargingDataFv(struct Q29SpellIcon13TChargingData* this);

struct SpellIcon
{
  struct MultiMapFixed super;  /* 0x0 */
  struct SpellSeedGraphic* graphic;  /* 0x7c */
  struct GSpellSeedInfo* seed_info;  /* 0x80 */
  uint32_t field_0x84;
  struct Q29SpellIcon13TChargingData charging_data;
  struct MapCoords spell_coords;  /* 0x100 */
  uint32_t field_0x10c;
};
static_assert(sizeof(struct SpellIcon) == 0x110, "Data type is of wrong size");

static struct MultiMapFixedVftable* __vt__9SpellIcon = (struct MultiMapFixedVftable*)0x008f84ac;

// Constructors

// win1.41 00725ff0 mac 105257f0 SpellIcon::SpellIcon(const MapCoords &, const GSpellIconInfo *, const GSpellSeedInfo *, float, float, float, int)
struct SpellIcon* __fastcall __ct__9SpellIconFRC9MapCoordsPC14GSpellIconInfoPC14GSpellSeedInfofffi(struct SpellIcon* this, const void* edx, const struct MapCoords* coords, const struct GSpellIconInfo* icon_info, const struct GSpellSeedInfo* seed_info, float y_angle, float scale, float param_6, int param_7);

// Non-virtual methods

// win1.41 007260f0 mac 10525590 SpellIcon::SetToZero(void)
void __fastcall SetToZero__9SpellIconFv(struct SpellIcon* this);
// win1.41 00726310 mac 10524d40 SpellIcon::IsSpellSeed(SPELL_SEED_TYPE)
bool32_t __fastcall IsSpellSeed__9SpellIconF15SPELL_SEED_TYPE(struct SpellIcon* this, const void* edx, enum SPELL_SEED_TYPE type);
// win1.41 00726350 mac 10524e60 SpellIcon::GetSpellSeedInfo(void) const
struct GSpellSeedInfo* __fastcall GetSpellSeedInfo__9SpellIconCFv(const struct SpellIcon* this);
// win1.41 00726360 mac 10524cb0 SpellIcon::GetSpellSeedType(void)
enum SPELL_SEED_TYPE __fastcall GetSpellSeedType__9SpellIconFv(struct SpellIcon* this);

// Override methods

// win1.41 00726160 mac 105253c0 SpellIcon::CallVirtualFunctionsForCreation(const MapCoords &)
void __fastcall CallVirtualFunctionsForCreation__9SpellIconFRC9MapCoords(struct SpellIcon* this, const void* edx, const struct MapCoords* coords);

#endif /* BW1_DECOMP_SPELL_ICON_INCLUDED_H */
