#ifndef BW1_DECOMP_MAP_COORDS_INCLUDED_H
#define BW1_DECOMP_MAP_COORDS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, int32_t, uint16_t, uint32_t */

#include <chlasm/AllMeshes.h> /* For enum MESH_LIST */
#include <chlasm/Enum.h> /* For enum OBJECT_TYPE */
#include <reversing_utils/re_common.h> /* For bool32_t */

// Forward Declares

class Game3DObject;
struct LHPoint;
struct MapCell;
struct MapCellIterator;
struct MapCoords;
class Object;
struct Point2D;
class Town;

struct JustMapXZ
{
    int16_t x; /* 0x0 */
    int16_t z;

    // Non-virtual methods

    // win1.41 inlined mac 10032f20 JustMapXZ::Init(ushort, ushort)
    JustMapXZ* Init(int16_t x, int16_t z);
    // win1.41 005e1920 mac 100fe800 JustMapXZ::Init(MapCell*)
    JustMapXZ* Init(MapCell* cell);
};

struct JustWholeMapXZ
{
    int32_t x; /* 0x0 */
    int32_t z;

    // Non-virtual methods

    // win1.41 005e1900 mac 100fe880 JustWholeMapXZ::Init(MapCoords const &)
    void Init(const MapCoords* param_1);
};

struct MapCoords
{
    MapCoordsFull x; /* 0x0 */
    MapCoordsFull z;
    float altitude;

    // Constructors

    // win1.41 00441b60 mac 1006e040 MapCoords::MapCoords(void)
    MapCoords();
    // win1.41 006031b0 mac 1004feb0 MapCoords::MapCoords(long, long, float)
    MapCoords(long x, long z, float altitude);
    // win1.41 006031d0 mac 10324c60 MapCoords::MapCoords(char *)
    MapCoords(const char* str);
    // win1.41 inlined mac inlined MapCoords::MapCoords(MapCoords const &)
    MapCoords(const MapCoords* other);
    // win1.41 00603160 mac 1006a450 MapCoords::MapCoords(LHPoint const &)
    MapCoords(const LHPoint* point);

    // Non-virtual methods

    // win1.41 00602880 mac 10569c60 MapCoords::ConvertToText(char *)
    char* ConvertToText(char* buff);
    // win1.41 006042c0 mac 100499f0 MapCoords::InBounds(void) const
    bool32_t InBounds();
    // win1.41 006053c0 mac 100028d0 MapCoords::IsCloseToEqual(const MapCoords&, float) const
    bool32_t IsCloseToEqual(const MapCoords* other, float epsilon);
    // win1.41 00605410 mac 1001fb00 MapCoords::operator+=(MapCoords const &) const
    MapCoords* operator+=(const MapCoords* other);
    // win1.41 00605470 mac 100494b0 MapCoords::operator+=(JustMapXZ const &) const
    MapCoords* operator+=(const JustMapXZ* other);
    // win1.41 00605520 mac 100503e0 MapCoords::operator+(MapCoords const &) const
    MapCoords* operator+(MapCoords* param_1, MapCoords* other);
    // win1.41 006020e0 mac 1048f050 MapCoords::GetNearestTown(float) const
    Town* GetNearestTown(float t_max);
    // win1.41 00603280 mac 10513100 MapCoords::Set(char *)
    void Set(const char* str);
    // win1.41 00603340 mac 1006a370 MapCoords::Set(LHPoint const &)
    MapCoords* Set(const LHPoint* point);
    // win1.41 00603430 mac 10049b80 MapCoords::ToMap(void) const
    MapCell* ToMap();
    // win1.41 006034b0 mac 1002cb50 MapCoords::GetFirstObjectFixed(void) const
    Object* GetFirstObjectFixed();
    // win1.41 006034d0 mac 1002c570 MapCoords::GetFirstIterator(void) const
    MapCellIterator* GetFirstIterator(MapCellIterator* iter);
    // win1.41 006035b0 mac 10018e70 MapCoords::IsWater(void) const
    bool32_t IsWater();
    // win1.41 00603b30 mac 1055e480 MapCoords::IsSuitableForFixed 9MESH_LISTff
    void IsSuitableForFixed(MESH_LIST mesh, float param_2, float param_3);
    // win1.41 00603dc0 mac 101c2c00 MapCoords::IsSuitableForFixed(Game3DObject *) const
    void IsSuitableForFixed(Game3DObject* object);
    // win1.41 006045c0 mac 100195c0 MapCoords::FindType(OBJECT_TYPE, Object *) const
    Object* FindType(OBJECT_TYPE type, Object* object);
    // win1.41 00605660 mac 10087b50 MapCoords::operator==(MapCoords const &) const
    uint32_t operator==(const MapCoords* param_2);
    // win1.41 00605c40 mac 1004ff00 MapCoords::GetLHPoint(void) const
    LHPoint* GetLHPoint(LHPoint* point);
    // win1.41 00605fb0 mac 10032290 MapCoords::GetMetresDistanceSq(MapCoords const &) const
    float GetMetresDistanceSq(MapCoords* param_2);
    // win1.41 inlined mac 100e62c0 MapCoords::operator=(MapCoords const &)
    MapCoords* operator=(const MapCoords* other);
    // win1.41 inlined mac 1004a1d0 MapCoords::Altitude(void) const
    float Altitude();
    // win1.41 00603490 mac 105a3bb0 MapCoords::GetFirstObjectMobile(void) const
    Object* GetFirstObjectMobile();
    // win1.41 006056b0 mac 10557130 MapCoords::__ne(MapCoords const &) const
    bool __ne(const MapCoords* param_1);
    // win1.41 00604fe0 mac 10406220 MapCoords::CollideCollideWithFixe(void) const
    int CollideCollideWithFixe();
};

#endif /* BW1_DECOMP_MAP_COORDS_INCLUDED_H */
