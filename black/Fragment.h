#ifndef BW1_DECOMP_FRAGMENT_INCLUDED_H
#define BW1_DECOMP_FRAGMENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/VER5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

#include "Rock.h" /* For struct Rock */

// Forward Declares

struct FragMesh;
struct GPlayer;
struct MapCoords;

struct Fragment
{
  struct Rock super;  /* 0x0 */
  struct FragMesh* frag_mesh;  /* 0x94 */
  uint32_t field_0x98;
  uint32_t field_0x9c;
  uint32_t field_0xa0;
  uint32_t field_0xa4;
};
static_assert(sizeof(struct Fragment) == 0xa8, "Data type is of wrong size");

static struct RockVftable* const __vt__8Fragment = (struct RockVftable* const)0x0099aa98;

// Constructors

// win1.41 0076e900 mac 1015c440 Fragment::Fragment(void)
struct Fragment* __fastcall __ct__8FragmentFv(struct Fragment* this);
// win1.41 0076e9d0 mac 1015c250 Fragment::Fragment(MapCoords const &, FragMesh *, GPlayer *)
struct Fragment* __fastcall __ct__8FragmentFRC9MapCoordsP8FragMeshP7GPlayer(struct Fragment* this, const void* edx, struct MapCoords* coords, struct FragMesh* frag_mesh, struct GPlayer* player);

DECLARE_LH_LINKED_LIST(Fragment);

#endif /* BW1_DECOMP_FRAGMENT_INCLUDED_H */
