#include "MapCoords.h"

#include "lionhead/lh3dlib/development/LH3DIsland.h"
#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */

extern "C" float rdata_float_coord_to_point;

// win1.41 006020e0 mac 1048f050 MapCoords::GetNearestTown(float) const
Town* MapCoords::GetNearestTown(float t_max) const
{
    return 0;
}

// win1.41 00602880 mac 10569c60 MapCoords::ConvertToText(char *)
char* MapCoords::ConvertToText(char* buff)
{
    return 0;
}

// win1.41 00603160 mac 1006a450 MapCoords::MapCoords(LHPoint const &)
MapCoords::MapCoords(const LHPoint& point)
{
}

// win1.41 006031b0 mac 1004feb0 MapCoords::MapCoords(long, long, float)
MapCoords::MapCoords(long x, long z, float altitude)
{
}

// win1.41 006031d0 mac 10324c60 MapCoords::MapCoords(char *)
MapCoords::MapCoords(const char* str)
{
}

// win1.41 00603280 mac 10513100 MapCoords::Set(char *)
void MapCoords::Set(const char* str)
{
}

// win1.41 00603340 mac 1006a370 MapCoords::Set(LHPoint const &)
MapCoords* MapCoords::Set(const LHPoint& point)
{
    return 0;
}

// win1.41 00603430 mac 10049b80 MapCoords::ToMap(void) const
MapCell* MapCoords::ToMap() const
{
    return 0;
}

// win1.41 00603490 mac 105a3bb0 MapCoords::GetFirstObjectMobile(void) const
Object* MapCoords::GetFirstObjectMobile() const
{
    return 0;
}

// win1.41 006034b0 mac 1002cb50 MapCoords::GetFirstObjectFixed(void) const
Object* MapCoords::GetFirstObjectFixed() const
{
    return 0;
}

// win1.41 006034d0 mac 1002c570 MapCoords::GetFirstIterator(void) const
MapCellIterator MapCoords::GetFirstIterator() const
{
    return MapCellIterator();
}

// win1.41 006035b0 mac 10018e70 MapCoords::IsWater(void) const
bool32_t MapCoords::IsWater() const
{
    return 0;
}

// win1.41 00603b30 mac 1055e480 MapCoords::IsSuitableForFixed 9MESH_LISTff
void MapCoords::IsSuitableForFixed(MESH_LIST mesh, float param_2, float param_3)
{
}

// win1.41 00603dc0 mac 101c2c00 MapCoords::IsSuitableForFixed(Game3DObject *) const
void MapCoords::IsSuitableForFixed(Game3DObject* object) const
{
}

// win1.41 006042c0 mac 100499f0 MapCoords::InBounds(void) const
bool32_t MapCoords::InBounds() const
{
    return 0;
}

// win1.41 006045c0 mac 100195c0 MapCoords::FindType(OBJECT_TYPE, Object *) const
Object* MapCoords::FindType(OBJECT_TYPE type, Object* object) const
{
    return 0;
}

// win1.41 00604fe0 mac 10406220 MapCoords::CollideCollideWithFixe(void) const
int MapCoords::CollideCollideWithFixe() const
{
    return 0;
}

// win1.41 006053c0 mac 100028d0 MapCoords::IsCloseToEqual(const MapCoords&, float) const
bool32_t MapCoords::IsCloseToEqual(const MapCoords& other, float epsilon) const
{
    return 0;
}

// win1.41 00605410 mac 1001fb00 MapCoords::operator+=(MapCoords const &)
MapCoords& MapCoords::operator+=(const MapCoords& other)
{
    return *this;
}

// win1.41 00605470 mac 100494b0 MapCoords::operator+=(JustMapXZ const &)
MapCoords& MapCoords::operator+=(const JustMapXZ& other)
{
    return *this;
}

// win1.41 00605520 mac 100503e0 MapCoords::operator+(MapCoords const &) const
MapCoords MapCoords::operator+(const MapCoords& other) const
{
    return MapCoords();
}

// win1.41 00605660 mac 10087b50 MapCoords::operator==(MapCoords const &) const
bool32_t MapCoords::operator==(const MapCoords& param_2) const
{
    return 0;
}

// win1.41 006056b0 mac 10557130 MapCoords::operator!=(MapCoords const &) const
bool32_t MapCoords::operator!=(const MapCoords& param_1) const
{
    return 0;
}

// win1.41 00605c40 mac 1004ff00 MapCoords::GetLHPoint(void) const
LHPoint MapCoords::GetLHPoint() const
{
    LHPoint result;
    result.y = altitude + LH3DIsland::GetAltitude(*(LH3DMapCoords*)this);
    result.x = rdata_float_coord_to_point * (float)x.full;
    result.z = rdata_float_coord_to_point * (float)z.full;
    return result;
}

// win1.41 00605cd0 mac inlined MapCoords::GetMetresDistance(MapCoords const &)
float MapCoords::GetMetresDistance(const MapCoords& other) const
{
    return 0;
}

// win1.41 00605fb0 mac 10032290 MapCoords::GetMetresDistanceSq(MapCoords const &) const
float MapCoords::GetMetresDistanceSq(const MapCoords& other) const
{
    return 0;
}