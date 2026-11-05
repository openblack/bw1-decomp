#include "MapCoords.h"

#include "ColourConstants.h" /* For White */
#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "Utils.h"

float MapCoords::GetDistance(const MapCoords& other) const
{
	return GUtils::GetDistanceInMetres(*this, other);
}

float MapCoords::GetAngle(const MapCoords& other) const
{
	return GUtils::Get3DAngleFromXZ(*this, other);
}
