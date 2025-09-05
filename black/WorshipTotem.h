#ifndef BW1_DECOMP_WORSHIP_TOTEM_INCLUDED_H
#define BW1_DECOMP_WORSHIP_TOTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "CitadelPart.h" /* For struct CitadelPart */
#include "LightSheet.h" /* For struct LightSheet */

// Forward Declares

struct MapCoords;
struct WorshipSite;

struct Q212WorshipTotem13TChargingData
{
  uint8_t field_0x0;
  struct LightSheet light_sheet;
  uint32_t field_0x64;
  uint32_t field_0x68;
  uint32_t field_0x6c;
};
static_assert(sizeof(struct Q212WorshipTotem13TChargingData) == 0x70, "Data type is of wrong size");

// Constructors

// win1.41 00780af0 mac inlined WorshipTotem::TChargingData::TChargingData(void)
struct Q212WorshipTotem13TChargingData* __fastcall __ct__Q212WorshipTotem13TChargingDataFv(struct Q212WorshipTotem13TChargingData* this);

struct WorshipTotem
{
  struct CitadelPart super;  /* 0x0 */
  uint32_t field_0x8c;
  struct Q212WorshipTotem13TChargingData charging_data;  /* 0x90 */
  struct WorshipSite* site;  /* 0x100 */
};
static_assert(sizeof(struct WorshipTotem) == 0x104, "Data type is of wrong size");

// win1.41 0099e1b8 mac 1073a768 WorshipTotem::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12WorshipTotem asm("??_R4WorshipTotem@@6B@");

// win1.41 0099e1bc mac 106f5d3c WorshipTotem::`vftable'
extern const struct MultiMapFixedVftable __vt__12WorshipTotem asm("??_7WorshipTotem@@6B@");

// Static methods

// win1.41 00780930 mac 105b8440 WorshipTotem::Create(WorshipSite *)
struct WorshipTotem* __cdecl Create__12WorshipTotemFP11WorshipSite(struct WorshipSite* site);

// Constructors

// win1.41 00780840 mac 105b8640 WorshipTotem::WorshipTotem(WorshipSite *)
struct WorshipTotem* __fastcall __ct__12WorshipTotemFP11WorshipSite(struct WorshipTotem* this, const void* edx, struct WorshipSite* site);

// Override methods

// win1.41 00780ab0 mac 105b81d0 WorshipTotem::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__12WorshipTotemFRC9MapCoords(struct WorshipTotem* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@WorshipTotem@@UAEXABUMapCoords@@@Z");

#endif /* BW1_DECOMP_WORSHIP_TOTEM_INCLUDED_H */
