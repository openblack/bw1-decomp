#include "DanceShape.h"

#include <math.h>  /* For atan2, cos, sin, sqrt */
#include <stdio.h> /* For sprintf */

#include <Lionhead/LH3DLib/development/LH3DMath.h>   /* For TWO_PI */
#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h> /* For class LHReleasedOSFile */

#include "Data.h" /* For class GData */
#include "Rand.h" /* For class GRand */

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\DanceShape.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\DanceShape.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\DanceShape.cpp"
#endif

const DanceShapeInfo DanceShapeInfos[DANCE_SHAPE_LAST] = {
	{"Circle", MakeShape::MakeShapeCircle, "NoFile"},
	{"Wavey Circle", MakeShape::MakeShapeWaveyCircle, "NoFile"},
	{"Spiral", MakeShape::MakeShapeSpiral, "NoFile"},
	{"Loop", MakeShape::MakeShapeLoop, "NoFile"},
	{"Square", MakeShape::MakeShapeSquare, "NoFile"},
	{"Line (V)", MakeShape::MakeShapeLineVertical, "NoFile"},
	{"Line (H)", MakeShape::MakeShapeLineHorizontal, "NoFile"},
	{"Point", MakeShape::MakeShapePoint, "NoFile"},
	{"Triangle", MakeShape::MakeShapeTriangle, "NoFile"},
	{"Heart", MakeShape::MakeShapeHeart, "NoFile"},
	{"Octagon", MakeShape::MakeShapeOctagon, "NoFile"},
	{"Non-centred Line", MakeShape::MakeShapeNonCentredHorizontalLine, "NoFile"},
	{"RandomScatter", MakeShape::MakeShapeRandomScatter, "NoFile"},
	{"Star", MakeShape::LoadShape, "Star"},
	{"Man", MakeShape::LoadShape, "Man"},
	{"Cock", MakeShape::LoadShape, "Cock"},
	{"Fish", MakeShape::LoadShape, "Fish"},
	{"Lightning", MakeShape::LoadShape, "Lightning"},
	{"Figure Eight", MakeShape::LoadShape, "FigureEight"},
	{"Arc", MakeShape::LoadShape, "Arc"},
	{"A (letter)", MakeShape::LoadShape, "LetterA"},
	{"B (letter)", MakeShape::LoadShape, "LetterB"},
	{"C (letter)", MakeShape::LoadShape, "LetterC"},
	{"D (letter)", MakeShape::LoadShape, "LetterD"},
	{"E (letter)", MakeShape::LoadShape, "LetterE"},
	{"F (letter)", MakeShape::LoadShape, "LetterF"},
	{"G (letter)", MakeShape::LoadShape, "LetterG"},
	{"H (letter)", MakeShape::LoadShape, "LetterH"},
	{"I (letter)", MakeShape::LoadShape, "LetterI"},
	{"J (letter)", MakeShape::LoadShape, "LetterJ"},
	{"K (letter)", MakeShape::LoadShape, "LetterK"},
	{"L (letter)", MakeShape::LoadShape, "LetterL"},
	{"M (letter)", MakeShape::LoadShape, "LetterM"},
	{"N (letter)", MakeShape::LoadShape, "LetterN"},
	{"O (letter)", MakeShape::LoadShape, "LetterO"},
	{"P (letter)", MakeShape::LoadShape, "LetterP"},
	{"Q (letter)", MakeShape::LoadShape, "LetterQ"},
	{"R (letter)", MakeShape::LoadShape, "LetterR"},
	{"S (letter)", MakeShape::LoadShape, "LetterS"},
	{"T (letter)", MakeShape::LoadShape, "LetterT"},
	{"U (letter)", MakeShape::LoadShape, "LetterU"},
	{"V (letter)", MakeShape::LoadShape, "LetterV"},
	{"W (letter)", MakeShape::LoadShape, "LetterW"},
	{"X (letter)", MakeShape::LoadShape, "LetterX"},
	{"Y (letter)", MakeShape::LoadShape, "LetterY"},
	{"Z (letter)", MakeShape::LoadShape, "LetterZ"},
};

void GData::InitialiseShapes()
{
	for (uint32_t i = 0; i < DANCE_SHAPE_LAST; i++)
	{
		if (DanceShapeInfos[i].Make == MakeShape::LoadShape)
		{
			LoadShape(DanceShapeInfos[i].FileName, i);
		}
		else
		{
			DanceShapeInfos[i].Make(i);
		}
	}
}

void MakeShape::MakeShapeLineVertical(unsigned long shape)
{
	for (uint32_t i = 0; i < DANCE_SHAPE_NUM_POINTS; i++)
	{
		DanceShapePoints[shape][i].x = 0;
		DanceShapePoints[shape][i].z = i * (2 * DANCE_SHAPE_RADIUS) / DANCE_SHAPE_NUM_POINTS - DANCE_SHAPE_RADIUS;
	}
}

void MakeShape::MakeShapeLineHorizontal(unsigned long shape)
{
	for (uint32_t i = 0; i < DANCE_SHAPE_NUM_POINTS; i++)
	{
		DanceShapePoints[shape][i].x = i * (2 * DANCE_SHAPE_RADIUS) / DANCE_SHAPE_NUM_POINTS - DANCE_SHAPE_RADIUS;
		DanceShapePoints[shape][i].z = 0;
	}
}

void MakeShape::MakeShapeRandomScatter(unsigned long shape)
{
	for (uint32_t i = 0; i < DANCE_SHAPE_NUM_POINTS; i++)
	{
		float distance = GRand::GameFloatRand(DANCE_SHAPE_RADIUS, FILEPATH, 280);
		float angle = GRand::GameFloatRand(TWO_PI, FILEPATH, 281);
		DanceShapePoints[shape][i].x = (int32_t)(cos(angle) * distance);
		DanceShapePoints[shape][i].z = (int32_t)(sin(angle) * distance);
	}
}

void MakeShape::MakeShapePoint(unsigned long shape)
{
	for (uint32_t i = 0; i < DANCE_SHAPE_NUM_POINTS; i++)
	{
		DanceShapePoints[shape][i].x = 0;
		DanceShapePoints[shape][i].z = 0;
	}
}

void MakeShape::LoadShape(unsigned long shape) {}

void GData::LoadShape(const char* name, unsigned long shape)
{
	char path[DANCE_SHAPE_PATH_LENGTH];
	sprintf(path, ".\\data\\%s.dan", name);
	LHReleasedOSFile file;
	file.Open(path, LH_FILE_MODE_READ_ONLY);
	uint32_t numPoints;
	file.Read(&numPoints, sizeof(numPoints), NULL);
	for (uint32_t i = 0; i < numPoints; i++)
	{
		file.Read(&DanceShapePoints[shape][i].x, sizeof(DanceShapePoints[shape][i].x), NULL);
		file.Read(&DanceShapePoints[shape][i].z, sizeof(DanceShapePoints[shape][i].z), NULL);
	}
	file.Close();
}

JustXZ GData::CalculatePointOnLine(JustXZ& from, JustXZ& to, int step, int num_steps)
{
	double angle = atan2((double)(to.x - from.x), (double)(to.z - from.z));
	double dx = from.x - to.x;
	double dz = from.z - to.z;
	double distance = sqrt(dz * dz + dx * dx);
	JustXZ point;
	point.x = (int32_t)(sin(angle) * distance * step / num_steps + from.x);
	point.z = (int32_t)(cos(angle) * distance * step / num_steps + from.z);
	return point;
}
