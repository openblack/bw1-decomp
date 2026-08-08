#include "Object.h"

#include "ColourConstants.h"    /* For White */
#include "Landscape.h"          /* For GLandscape */
#include "LandscapeConstants.h" /* For CellSizeXGridDim */

#include <Lionhead/LH3DLib/development/LH3DIsland.h>    /* For LH3DIsland */
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h> /* For struct LH3DMapCoords */
#include <Lionhead/LH3DLib/development/LH3DMath.h>      /* For LH3DMath */
#include <Lionhead/LH3DLib/development/LHPoint.h>       /* For struct LHPoint */

// BW1W120 006393a0 BW1M100 100299c0 Object::SetFocus(LHPoint const &)
void Object::SetFocus(const LHPoint* focus)
{
	LHPoint pos;
	float   angle;

	GLandscape::ConvertMapCoordToLandscapePoint(Pos, pos);
	angle = LH3DMath::GetYAngle(&pos, (LHPoint*)focus);
	SetYAngle(angle);
}
