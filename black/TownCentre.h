#ifndef BW1_DECOMP_TOWN_CENTRE_INCLUDED_H
#define BW1_DECOMP_TOWN_CENTRE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */

#include <chlasm/Enum.h> /* For enum POWER_UP_TYPE, enum SPELL_SEED_TYPE */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

#include "Abode.h" /* For struct Abode */

// Forward Declares

struct GAbodeInfo;
struct LH3DObject;
struct MapCoords;
struct PSysInterface;
struct TotemStatue;
struct Town;
struct TownCentreSpellIcon;

struct TownCentre
{
  struct Abode super;  /* 0x0 */
  struct LH3DObject* game_object;  /* 0xc4 */
  struct PSysInterface* psys;
  struct TotemStatue* totem_statue;
  struct TownCentreSpellIcon* icons[0x6];  /* 0xd0 */
};
static_assert(sizeof(struct TownCentre) == 0xe8, "Data type is of wrong size");

static struct MultiMapFixedVftable* const __vt__10TownCentre = (struct MultiMapFixedVftable* const)0x008e4bfc;

// Static methods

// win1.41 00743c90 mac 1055b520 TownCentre::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
struct TownCentre* __cdecl Create__10TownCentreFRC9MapCoordsPC10GAbodeInfoP4Townfffi(const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float param_4, float param_5, float param_6, int param_7);
// win1.41 007447f0 mac 1006eae0 TownCentre::DrawAll(void)
void __stdcall DrawAll__10TownCentreFv(void);

// Constructors

// win1.41 00743a60 mac 1055bb20 TownCentre::TownCentre(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
struct TownCentre* __fastcall __ct__10TownCentreFRC9MapCoordsPC10GAbodeInfoP4Townfffi(struct TownCentre* this, const void* edx, const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float param_4, float param_5, float param_6, int param_7);

// Non-virtual methods

// win1.41 0069bc10 mac 104274c0 TownCentre::CreatePSys(void)
void __fastcall CreatePSys__10TownCentreFv(struct TownCentre* this);
// win1.41 0069bcc0 mac 1002d390 TownCentre::ProcessPSys(void)
void __fastcall ProcessPSys__10TownCentreFv(struct TownCentre* this);
// win1.41 0069bd60 mac 10066090 TownCentre::DrawPSys(void)
void __fastcall DrawPSys__10TownCentreFv(struct TownCentre* this);
// win1.41 00743da0 mac 1055b260 TownCentre::CreateTotemIfNecessary(void)
bool __fastcall CreateTotemIfNecessary__10TownCentreFv(struct TownCentre* this);
// win1.41 00743f20 mac 1055af50 TownCentre::GetTotemPos(void)
struct MapCoords* __fastcall GetTotemPos__10TownCentreFv(struct TownCentre* this, const void* edx, struct MapCoords* coords);
// win1.41 00743fa0 mac 1055ae80 TownCentre::FindSpellIcon(SPELL_SEED_TYPE)
struct TownCentreSpellIcon* __fastcall FindSpellIcon__10TownCentreF15SPELL_SEED_TYPE(struct TownCentre* this, const void* edx, enum SPELL_SEED_TYPE type);
// win1.41 00744010 mac 1055ad20 TownCentre::AddPowerUp(SPELL_SEED_TYPE, POWER_UP_TYPE)
void __fastcall AddPowerUp__10TownCentreF15SPELL_SEED_TYPE13POWER_UP_TYPE(struct TownCentre* this, const void* edx, enum SPELL_SEED_TYPE seed_type, enum POWER_UP_TYPE power_up_type);
// win1.41 00744050 mac 1055aac0 TownCentre::AddSpell(SPELL_SEED_TYPE)
bool __fastcall AddSpell__10TownCentreF15SPELL_SEED_TYPE(struct TownCentre* this, const void* edx, enum SPELL_SEED_TYPE seed_type);

// Override methods

// win1.41 00743cf0 mac 1055b3c0 TownCentre::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__10TownCentreFRC9MapCoords(struct TownCentre* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@TownCentre@@UAEXABUMapCoords@@@Z");
// win1.41 00743e80 mac 1055b020 TownCentre::MakeFunctional(void)
void __fastcall MakeFunctional__10TownCentreFv(struct TownCentre* this);

DECLARE_LH_LINKED_LIST(TownCentre);

#endif /* BW1_DECOMP_TOWN_CENTRE_INCLUDED_H */
