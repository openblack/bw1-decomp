#ifndef BW1_DECOMP_MAP_SHIELD_INCLUDED_H
#define BW1_DECOMP_MAP_SHIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */

#include <lionhead/lhlib/VER5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "Fixed.h" /* For struct SingleMapFixed, struct SingleMapFixedVftable */

// Forward Declares

struct GMagicInfo;
struct GMapShieldInfo;
struct MapCoords;
struct MapShield;
struct SpellShield;

struct MapShieldVftable
{
  struct SingleMapFixedVftable super;  /* 0x0 */
  void (__fastcall* ProcessShield)(struct MapShield* this);  /* 0x868 */
  void (__fastcall* DrawShield)(struct MapShield* this);
  bool (__fastcall* IsPointDefinietlyWithinShieldVolume)(struct MapShield* this, const void* edx, const struct MapCoords* point);  /* 0x870 */
};
static_assert(sizeof(struct MapShieldVftable) == 0x874, "Data type is of wrong size");

struct MapShield
{
  struct SingleMapFixed super;  /* 0x0 */
  struct MapShield* next;  /* 0x5c */
  struct SpellShield* spell;  /* 0x60 */
  struct GMagicInfo* spell_info;
};
static_assert(sizeof(struct MapShield) == 0x68, "Data type is of wrong size");

static struct MapShieldVftable* const __vt__9MapShield = (struct MapShieldVftable* const)0x00982e74;

// Constructors

// win1.41 0072c070 mac 10531a30 MapShield::__ct(MapCoords const &, GMapShieldInfo *, SpellShield *)
struct MapShield* __fastcall __ct__9MapShieldFRC9MapCoordsP14GMapShieldInfoP11SpellShield(struct MapShield* this, const void* edx, struct MapCoords* coords, struct GMapShieldInfo* info, struct SpellShield* spell);

DECLARE_LH_LIST_HEAD(MapShield);

#endif /* BW1_DECOMP_MAP_SHIELD_INCLUDED_H */
