#ifndef BW1_DECOMP_MAP_COORDS_METERS_INCLUDED_H
#define BW1_DECOMP_MAP_COORDS_METERS_INCLUDED_H

#include "MapCellConstants.h" /* For MetresPerMapCell */
#include "MapCoords.h"        /* For struct MapCoords */

inline float MapCoords::MetersX() const
{
	return (float)(WholeX() * MetresPerMapCell / MAP_COORDS_UNITS_PER_CELL);
}

inline float MapCoords::MetersZ() const
{
	return (float)(WholeZ() * MetresPerMapCell / MAP_COORDS_UNITS_PER_CELL);
}

inline void MapCoords::SetMetersX(float meters)
{
	SetWholeX((long)(meters * MAP_COORDS_UNITS_PER_CELL / MetresPerMapCell));
}

inline void MapCoords::SetMetersZ(float meters)
{
	SetWholeZ((long)(meters * MAP_COORDS_UNITS_PER_CELL / MetresPerMapCell));
}

inline float MapCoords::MapMetersX()
{
	return MapX() * MetresPerMapCell;
}

inline float MapCoords::MapMetersZ()
{
	return MapZ() * MetresPerMapCell;
}

inline void MapCoords::SetMapMetersX(float x)
{
	SetMapX((short)(x / MetresPerMapCell));
}

inline void MapCoords::SetMapMetersZ(float z)
{
	SetMapZ((short)(z / MetresPerMapCell));
}

#endif /* BW1_DECOMP_MAP_COORDS_METERS_INCLUDED_H */
