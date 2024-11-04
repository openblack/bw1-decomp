#ifndef BW1_DECOMP_TOTEM_STATUE_INCLUDED_H
#define BW1_DECOMP_TOTEM_STATUE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lh3dlib/development/Zoomer.h> /* For struct Zoomer */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

struct GTotemStatueInfo;
struct Game3DObject;
struct MapCoords;
struct TownCentre;

struct TotemStatue
{
  struct MultiMapFixed super;  /* 0x0 */
  struct TownCentre* town_centre;  /* 0x7c */
  float worship_speed;  /* 0x80 */
  uint32_t field_0x84;
  float worship_speed_2;
  struct Game3DObject* game_3d_object;
  float field_0x90;
  float field_0x94;
  uint32_t field_0x98;
  struct Zoomer zoomer;
  uint32_t field_0xcc;
  uint32_t field_0xd0;
  uint32_t field_0xd4;
};
static_assert(sizeof(struct TotemStatue) == 0xd8, "Data type is of wrong size");

static struct MultiMapFixedVftable* const __vt__11TotemStatue = (struct MultiMapFixedVftable* const)0x008e029c;

// Static methods

// win1.41 00737cc0 mac 10544f40 TotemStatue::Create(TownCentre *)
struct TotemStatue* __cdecl Create__11TotemStatueFP10TownCentre(struct TownCentre* this);

// Constructors

// win1.41 00737b20 mac 10545880 TotemStatue::TotemStatue(TownCentre *, GTotemStatueInfo const *)
struct TotemStatue* __fastcall __ct__11TotemStatueFP10TownCentrePC16GTotemStatueInfo(struct TotemStatue* this, const void* edx, struct TownCentre* tc, struct GTotemStatueInfo* info);

// Non-virtual methods

// win1.41 00738260 mac 10544c70 TotemStatue::GetWorshipSpeed(void)
float __fastcall GetWorshipSpeed__11TotemStatueFv(struct TotemStatue* this);
// win1.41 00738270 mac 10544b90 TotemStatue::SetWorshipPercentage(float)
void __fastcall SetWorshipPercentage__11TotemStatueFf(struct TotemStatue* this, const void* edx, float percentage);

// Override methods

// win1.41 00737d60 mac 10544f40 TotemStatue::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__11TotemStatueFRC9MapCoords(struct TotemStatue* this, const void* edx, const struct MapCoords* coords);

#endif /* BW1_DECOMP_TOTEM_STATUE_INCLUDED_H */
