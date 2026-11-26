#include "Arrow.h"
#include "MobileObject.h"
#include "ArrowInfo.h"

#include <LHPoint.h> /* For struct LHPoint */
#include "GameThingWithPos.h"
#include "Landscape.h"
#include "MapCoords.h"

GArrowInfo GArrowInfo::Infos[1];

Arrow* Arrow::Create(const MapCoords& coords, const GArrowInfo* info, GameThingWithPos* target, GameThing* shooter)
{
	Arrow* arrow = NEW(12) Arrow(coords, info, shooter);
	arrow->CallVirtualFunctionsForCreation(coords);
	LHPoint to;
	GLandscape::ConvertMapCoordToLandscapePoint(target->Pos, to);
	LHPoint from;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, from);
	to = to - from;
	LHPoint angularVelocity(0.0f, 0.0f, 0.0f);
	LHPoint velocity = LHPoint(to.x, to.y - ARROW_GRAVITY, to.z) * ARROW_FLIGHT_FRACTION;
	arrow->InitialisePhysics(velocity, angularVelocity, NULL, true, NULL);
	return arrow;
}
