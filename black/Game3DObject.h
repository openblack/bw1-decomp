#ifndef BW1_DECOMP_GAME_3D_OBJECT_INCLUDED_H
#define BW1_DECOMP_GAME_3D_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType, struct LH3DObject */

// Forward Declares

struct MapCoords;

struct Game3DObject
{
  struct LH3DObject super;  /* 0x0 */
};
static_assert(sizeof(struct Game3DObject) == 0x7c, "Data type is of wrong size");

// Static methods

// win1.41 0063abb0 mac 103da2c0 Game3DObject::Create(LH3DObject::ObjectType)
struct Game3DObject* __cdecl Create__12Game3DObjectFQ210LH3DObject10ObjectType(enum LH3DObject__ObjectType type);

// Non-virtual methods

// win1.41 0063abc0 mac 103da030 Game3DObject::GetAltitudeFondation(void) const
float __fastcall GetAltitudeFondation__12Game3DObjectCFv(const struct Game3DObject* this);
// win1.41 0063afe0 mac 10019840 Game3DObject::GetDoorPosition(MapCoords *) const
bool __fastcall GetDoorPosition__12Game3DObjectCFP9MapCoords(const struct Game3DObject* this, const void* edx, struct MapCoords* position);
// win1.41 0063b060 mac 103d9d50 Game3DObject::GetSpecialPos(unsigned long, MapCoords &) const
bool __fastcall GetSpecialPos__12Game3DObjectCFUlR9MapCoords(const struct Game3DObject* this, const void* edx, uint32_t index, struct MapCoords* coords);

#endif /* BW1_DECOMP_GAME_3D_OBJECT_INCLUDED_H */
