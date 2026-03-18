#include "MapCoords.h"

#include <lionhead/lh3dlib/development/LH3DIsland.h>
#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */

#include "Game.h"
#include "Utils.h"

extern "C" float rdata_float_coord_to_point;
extern "C" GGame* game;

// win1.41 006020e0 mac 1048f050 MapCoords::GetNearestTown(float) const
Town* MapCoords::GetNearestTown(float t_max) const
{
    Town* result = NULL;
    float smallest_distance = t_max;

    GPlayer* player = game->GetNextPlayerAndNeutral(NULL);
    if (player != NULL)
    {
        do {
            for (Town* town = player->towns.head; town != NULL; town = town->next)
            {
                float distance = GetMetresDistance(town->coords);
                if (distance < smallest_distance)
                {
                    smallest_distance = distance;
                    result = town;
                }
            }
            player = game->GetNextPlayerAndNeutral(player);
        } while (player != NULL);
    }
    return result;
}

// win1.41 00602880 mac 10569c60 MapCoords::ConvertToText(char *)
char* MapCoords::ConvertToText(char* buff)
{
    sprintf(buff, "\"%0.2f,%0.2f\"", (x.full * 10.0f) * 1.5258789e-05f, (z.full * 10.0f) * 1.5258789e-05f);
    return buff;
}

// win1.41 00603160 mac 1006a450 MapCoords::MapCoords(LHPoint const &)
MapCoords::MapCoords(const LHPoint& point)
{
    x.full = 0;
    z.full = 0;
    altitude = 0.0f;
    Set(point);
}

// win1.41 006031b0 mac 1004feb0 MapCoords::MapCoords(long, long, float)
MapCoords::MapCoords(long _x, long _z, float _altitude)
{
    x.full = _x;
    z.full = _z;
    altitude = _altitude;
}

// win1.41 006031d0 mac 10324c60 MapCoords::MapCoords(char *)
MapCoords::MapCoords(const char* str)
{
    x.full = 0;
    z.full = 0;
    altitude = 0.0f;
    Set(str);
}

const float ten = 10.0f;

void MapCoords::Set(const char* str)
{
    char* comma = strchr(str, ',');
    float val = atof(str);
    x.full = (int)((val * (float)0x10000) / ten);
    altitude = 0;
    if (comma != NULL)
    {
        ++comma;
        z.full = (int)(((float)atof(comma) * (float)0x10000) / ten);
        comma = strchr(comma, ',');
        if (comma != NULL)
        {
            altitude = (float)atof(comma + 1);
        }
    }
    else
    {
        z.full = (int)((0.0f * (float)0x10000) / ten);
    }
}

// win1.41 00603340 mac 1006a370 MapCoords::Set(LHPoint const &)
void MapCoords::Set(const LHPoint& point)
{
    x.full = point.x * 6553.6f;
    z.full = point.z * 6553.6f;
    altitude = 0.0f;
    float new_altitude = LH3DIsland::GetAltitude((LH3DMapCoords&)*this);
    altitude = point.y - new_altitude;
}

// win1.41 00603430 mac 10049b80 MapCoords::ToMap(void) const
MapCell* MapCoords::ToMap() const
{
    uint32_t _x = x.split.map;
    uint32_t _z = z.split.map;
    if (_x >= game->map.cell_extent_zx[1])
        goto fail;
    if (_z >= game->map.cell_extent_zx[0])
        fail: return NULL;
    return &game->map.cells[_x * game->map.cell_extent_zx[0] + _z];
}

// win1.41 00603490 mac 105a3bb0 MapCoords::GetFirstObjectMobile(void) const
Object* MapCoords::GetFirstObjectMobile() const
{
    if (ToMap() == NULL)
    {
        return NULL;
    }
    return ToMap()->first_object_mobile;
}

// win1.41 006034b0 mac 1002cb50 MapCoords::GetFirstObjectFixed(void) const
Object* MapCoords::GetFirstObjectFixed() const
{
    if (ToMap() == NULL)
    {
        return NULL;
    }
    return ToMap()->first_object_fixed;
}

// win1.41 006034d0 mac 1002c570 MapCoords::GetFirstIterator(void) const
MapCellIterator MapCoords::GetFirstIterator() const
{
    MapCell* cell = ToMap();
    Object* obj = cell->first_object_fixed;
    uint32_t is_fixed = 1;
    if (!obj)
    {
        obj = cell->first_object_mobile;
        is_fixed = 0;
    }
    MapCellIterator result;
    result.object = obj;
    result.is_fixed = is_fixed;
    result.cell = cell;
    return result;
}

// win1.41 006035b0 mac 10018e70 MapCoords::IsWater(void) const
bool32_t MapCoords::IsWater() const
{
    int _x = x.split.map;
    int _z = z.split.map;
    if (_x >= 0 && _x <= (MAP_CELL_COUNT_X - 1) && _z >= 0 && _z <= (MAP_CELL_COUNT_Z - 1))
    {
        int block_x = _x >> 4;
        int block_z = _z >> 4;
        int block_idx = LH3DIsland::g_index_block[block_x][block_z];
        if (block_idx != 0)
        {
            uint32_t sub_x = (uint32_t)_x % 0x10;
            uint32_t sub_z = (uint32_t)_z % 0x10;
            LandCell* cell = &LH3DIsland::g_ptr_blocks[block_idx]->cells[sub_x][sub_z];
            if (cell)
                return cell->IsWater();
        }
    }
    return true;
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
    return (uint32_t)x.split.map < game->map.cell_extent_zx[1]
        && (uint32_t)z.split.map < game->map.cell_extent_zx[0];
}

// win1.41 006045c0 mac 100195c0 MapCoords::FindType(OBJECT_TYPE, Object *) const
Object* MapCoords::FindType(OBJECT_TYPE type, Object* object) const
{
    if (ToMap() == NULL)
    {
        return NULL;
    }
    return ToMap()->FindTypeOnMap(type, object);
}

// win1.41 00604fe0 mac 10406220 MapCoords::CollideCollideWithFixe(void) const
int MapCoords::CollideCollideWithFixe() const
{
    if (ToMap() == NULL)
    {
        return -1;
    }
    return ToMap()->CollideWithFixe(*this);
}

// win1.41 006053c0 mac 100028d0 MapCoords::IsCloseToEqual(const MapCoords&, float) const
bool32_t MapCoords::IsCloseToEqual(const MapCoords& other, float epsilon) const
{
    return GetMetresDistance(other) <= epsilon;
}

// win1.41 00605410 mac 1001fb00 MapCoords::operator+=(MapCoords const &)
void MapCoords::operator+=(const MapCoords& other)
{
    x.full += other.x.full;
    z.full += other.z.full;
    altitude += other.altitude;
}

// win1.41 00605470 mac 100494b0 MapCoords::operator+=(JustMapXZ const &)
void MapCoords::operator+=(const JustMapXZ& other)
{
    x.split.map += other.x;
    z.split.map += other.z;
}

// win1.41 00605520 mac 100503e0 MapCoords::operator+(MapCoords const &) const
MapCoords MapCoords::operator+(const MapCoords& other) const
{
    MapCoords result = *this;
    result += other;
    return result;
}

// win1.41 00605660 mac 10087b50 MapCoords::operator==(MapCoords const &) const
bool32_t MapCoords::operator==(const MapCoords& other) const
{
    float this_alt = altitude;
    float other_alt = other.altitude;
    return x.full == other.x.full && z.full == other.z.full && this_alt == other_alt;
}

// win1.41 006056b0 mac 10557130 MapCoords::operator!=(MapCoords const &) const
bool32_t MapCoords::operator!=(const MapCoords& other) const
{
    return !(*this == other);
}

// win1.41 00605c40 mac 1004ff00 MapCoords::GetLHPoint(void) const
LHPoint MapCoords::GetLHPoint() const
{
    float alt = altitude;
    float y_val = LH3DIsland::GetAltitude(*(LH3DMapCoords*)this) + alt;
    float x_val = (float)x.full * rdata_float_coord_to_point;
    float z_val = (float)z.full * rdata_float_coord_to_point;
    LHPoint result;
    result.x = x_val;
    result.z = z_val;
    result.y = y_val;
    return result;
}

// win1.41 00605cc0 mac 1055fea0 MapCoords::GetTemperature() const
float MapCoords::GetTemperature() const
{
    return 24.7f;
}

// win1.41 00605cd0 mac inlined MapCoords::GetMetresDistance(MapCoords const &)
float MapCoords::GetMetresDistance(const MapCoords& other) const
{
    return GUtils::GetDistanceInMetres(*this, other);
}

// win1.41 00605cf0 mac 1055fee0 MapCoords::GetAngle(const MapCoords&) const
float MapCoords::GetAngle(const MapCoords& other) const
{
    return GUtils::Get3DAngleFromXZ(*this, other);
}

// win1.41 00605fb0 mac 10032290 MapCoords::GetMetresDistanceSq(MapCoords const &) const
float MapCoords::GetMetresDistanceSq(const MapCoords& other) const
{
  float _x = GUtils::ConvertWholeDistanceToMeters(other.x.full - x.full);
  float _z = GUtils::ConvertWholeDistanceToMeters(other.z.full - z.full);
  return _x * _x + _z * _z;
}