#ifndef BW1_DECOMP_MAP_COORDS_INCLUDED_H
#define BW1_DECOMP_MAP_COORDS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, int32_t, uint16_t, uint32_t */

#include <chlasm/Enum.h> /* For enum OBJECT_TYPE */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <chlasm/AllMeshes.h> /* For enum MESH_LIST */

// Forward Declares

struct Game3DObject;
struct LHPoint;
struct MapCell;
struct MapCellIterator;
struct Object;
struct Point2D;
struct Town;

struct JustMapXZ
{
  int16_t x;  /* 0x0 */
  int16_t z;
};
static_assert(sizeof(struct JustMapXZ) == 0x4, "Data type is of wrong size");

// Non-virtual methods

// win1.41 inlined mac 10032f20 JustMapXZ::Init(ushort, ushort)
struct JustMapXZ* __fastcall Init__9JustMapXZFUsUs(struct JustMapXZ* this, const void* edx, int16_t x, int16_t z);
// win1.41 005e1920 mac 100fe800 JustMapXZ::Init(MapCell*)
struct JustMapXZ* __fastcall Init__9JustMapXZFP7MapCell(struct JustMapXZ* this, const void* edx, struct MapCell* cell);

struct MapCoordsSplit
{
  uint16_t cell;  /* 0x0 */
  uint16_t map;
};
static_assert(sizeof(struct MapCoordsSplit) == 0x4, "Data type is of wrong size");

union MapCoordsFull
{
  int32_t full;
  struct MapCoordsSplit split;
};
static_assert(sizeof(union MapCoordsFull) == 0x4, "Data type is of wrong size");

struct MapCoords
{
  union MapCoordsFull x;  /* 0x0 */
  union MapCoordsFull z;
  float altitude;
};
static_assert(sizeof(struct MapCoords) == 0xc, "Data type is of wrong size");

// Constructors

// win1.41 00441b60 mac 1006e040 MapCoords::MapCoords(void)
struct MapCoords* __fastcall __ct__9MapCoordsFv(struct MapCoords* this);
// win1.41 006031b0 mac 1004feb0 MapCoords::MapCoords(long, long, float)
struct MapCoords* __fastcall __ct__9MapCoordsFllf(struct MapCoords* this, const void* edx, long x, long z, float altitude);
// win1.41 006031d0 mac 10324c60 MapCoords::MapCoords(char *)
struct MapCoords* __fastcall __ct__9MapCoordsFPc(struct MapCoords* this, const void* edx, const char* str);
// win1.41 inlined mac inlined MapCoords::MapCoords(MapCoords const &)
struct MapCoords* __fastcall __ct__9MapCoordsFP9MapCoords(struct MapCoords* this, const void* edx, const struct MapCoords* other);
// win1.41 00603160 mac 1006a450 MapCoords::MapCoords(LHPoint const &)
struct MapCoords* __fastcall __ct__9MapCoordsFRC7LHPoint(struct MapCoords* this, const void* edx, const struct LHPoint* point);

// Non-virtual methods

// win1.41 006042c0 mac 100499f0 MapCoords::InBounds(void) const
bool32_t __fastcall InBounds__9MapCoordsCFv(const struct MapCoords* this);
// win1.41 006053c0 mac 100028d0 MapCoords::IsCloseToEqual(const MapCoords&, float) const
bool32_t __fastcall IsCloseToEqual__9MapCoordsCFRC9MapCoordsf(struct MapCoords* this, const void* edx, const struct MapCoords* other, float epsilon);
// win1.41 00605410 mac 1001fb00 MapCoords::operator+=(MapCoords const &) const
struct MapCoords* __fastcall __apl__9MapCoordsFRC9MapCoords(struct MapCoords* this, const void* edx, const struct MapCoords* other);
// win1.41 00605470 mac 100494b0 MapCoords::operator+=(JustMapXZ const &) const
struct MapCoords* __fastcall __apl__9MapCoordsFRC9JustMapXZ(struct MapCoords* this, const void* edx, const struct JustMapXZ* other);
// win1.41 00605520 mac 100503e0 MapCoords::operator+(MapCoords const &) const
struct MapCoords* __fastcall __pl__9MapCoordsCFRC9MapCoords(struct MapCoords* this, const void* edx, struct MapCoords* param_1, struct MapCoords* other);
// win1.41 006020e0 mac 1048f050 MapCoords::GetNearestTown(float) const
struct Town* __fastcall GetNearestTown__9MapCoordsCFf(const struct MapCoords* this, const void* edx, float t_max);
// win1.41 00603280 mac 10513100 MapCoords::Set(char *)
void __fastcall Set__9MapCoordsFPc(struct MapCoords* this, const void* edx, const char* str);
// win1.41 00603340 mac 1006a370 MapCoords::Set(LHPoint const &)
struct MapCoords* __fastcall Set__9MapCoordsFRC7LHPoint(struct MapCoords* this, const void* edx, const struct LHPoint* point);
// win1.41 00603430 mac 10049b80 MapCoords::ToMap(void) const
struct MapCell* __fastcall ToMap__9MapCoordsCFv(const struct MapCoords* this);
// win1.41 006034b0 mac 1002cb50 MapCoords::GetFirstObjectFixed(void) const
struct Object* __fastcall GetFirstObjectFixed__9MapCoordsCFv(const struct MapCoords* this);
// win1.41 006034d0 mac 1002c570 MapCoords::GetFirstIterator(void) const
struct MapCellIterator* __fastcall GetFirstIterator__9MapCoordsCFv(struct MapCoords* this, const void* edx, struct MapCellIterator* iter);
// win1.41 006035b0 mac 10018e70 MapCoords::IsWater(void) const
bool32_t __fastcall IsWater__9MapCoordsCFv(const struct MapCoords* this);
// win1.41 00603b30 mac 1055e480 MapCoords::IsSuitableForFixed 9MESH_LISTff
void __fastcall IsSuitableForFixed__9MapCoordsCF9MESH_LISTff(const struct MapCoords* this, const void* edx, enum MESH_LIST mesh, float param_2, float param_3) asm("?IsSuitableForFixed@MapCoords@@QBEXW4MESH_LIST@@MM@Z");
// win1.41 00603dc0 mac 101c2c00 MapCoords::IsSuitableForFixed(Game3DObject *) const
void __fastcall IsSuitableForFixed__9MapCoordsCFP12Game3DObject(const struct MapCoords* this, const void* edx, struct Game3DObject* object) asm("?IsSuitableForFixed@MapCoords@@QBEXPAVGame3DObject@@@Z");
// win1.41 006045c0 mac 100195c0 MapCoords::FindType(OBJECT_TYPE, Object *) const
struct Object* __fastcall FindType__9MapCoordsCF11OBJECT_TYPEP6Object(struct MapCoords* this, const void* edx, enum OBJECT_TYPE type, struct Object* object);
// win1.41 00605660 mac 10087b50 MapCoords::operator==(MapCoords const &) const
uint32_t __fastcall __eq__9MapCoordsCFRC9MapCoords(const struct MapCoords* this, const void* edx, const struct MapCoords* param_2);
// win1.41 00605c40 mac 1004ff00 MapCoords::GetLHPoint(void) const
struct LHPoint* __fastcall GetLHPoint__9MapCoordsCFv(const struct MapCoords* this, const void* edx, struct LHPoint* point);
// win1.41 00605fb0 mac 10032290 MapCoords::GetMetresDistanceSq(MapCoords const &) const
float __fastcall GetMetresDistanceSq__9MapCoordsCFRC9MapCoords(struct MapCoords* this, const void* edx, struct MapCoords* param_2);
// win1.41 inlined mac 100e62c0 MapCoords::operator=(MapCoords const &)
struct MapCoords* __fastcall __as__9MapCoordsFRC9MapCoords(struct MapCoords* this, const void* edx, const struct MapCoords* other);
// win1.41 inlined mac 1004a1d0 MapCoords::Altitude(void) const
float __fastcall Altitude__9MapCoordsCFv(const struct MapCoords* this);

// win1.41 00535780 mac 100eda80 ConvertMapCoordsToPoint2D(MapCoords const &)
struct Point2D* __cdecl ConvertMapCoordsToPoint2D__FRC9MapCoords(struct Point2D* param_1, const struct MapCoords* param_2);
// win1.41 inlined mac 100ed940 ConvertPoint2DToMapCoords(Point2D const &)
struct MapCoords* __cdecl ConvertPoint2DToMapCoords__FRC7Point2D(struct MapCoords* param_1, const struct Point2D* param_2);
// win1.41 inlined mac inlined ConvertPointToMapCoords(Point2D const &)
struct MapCoords* __cdecl ConvertPointToMapCoords__FRC7Point(struct MapCoords* param_1, const struct LHPoint* param_2);

#endif /* BW1_DECOMP_MAP_COORDS_INCLUDED_H */
