#include "GameTimeConstants.h"
#include "DanceLight.h"

#include <stdio.h>  /* For sprintf */
#include <stdlib.h> /* For free, malloc */

#include <Lionhead/LHFile/ver3.0/LHOSFile.h> /* For LHLoadData */

#include "GroupBehaviour.h" /* For class GroupBehaviour */
#include "Landscape.h"      /* For class GLandscape */

char DanceLight::BitmapNames[DANCE_LIGHT_BITMAP_LAST][DANCE_LIGHT_BITMAP_NAME_LENGTH] = {
	"DanceLightRed", "DanceLightGreen", "DanceLightYellow", "DanceLightBlue", "DanceLightWhite",
};
LHLinkedList<DanceLight*> DanceLight::AllLights;
void*                     DanceLight::Bitmaps[DANCE_LIGHT_BITMAP_LAST];

DanceLight::DanceLight(GroupBehaviour* behaviour)
{
	Group = 0;
	IndexInGroup = DANCE_LIGHT_NOT_ATTACHED;
	Bitmap = DANCE_LIGHT_BITMAP_RED;
	Synchronised = false;
	Brightness = 1.0f;
	On = false;
	Behaviour = behaviour;
	GLandscape::ConvertMapCoordToLandscapePoint(behaviour->Pos, LastPos);
	Pos = LastPos;
	AllLights.AddToEnd(this);
}

DanceLight::~DanceLight()
{
	if (Behaviour->DanceGroups.count > Group)
	{
		Behaviour->DanceGroups.GetAtPosition(Group)->NumLights--;
		AllLights.Remove(this);
	}
}

void DanceLight::Process()
{
	MapCoords pos;
	if (IndexInGroup < DANCE_LIGHT_NOT_ATTACHED)
	{
		GroupBehaviour::CalculateDancePosition(Behaviour->Pos, &pos, Behaviour->DanceGroups.GetAtPosition(Group),
		                                       IndexInGroup);
		LastPos = Pos;
		GLandscape::ConvertMapCoordToLandscapePoint(pos, Pos);
	}
}

void DanceLight::CloseBitmaps()
{
	for (uint32_t i = 0; i < DANCE_LIGHT_BITMAP_LAST; i++)
	{
		if (Bitmaps[i] != NULL)
		{
			free(Bitmaps[i]);
		}
		Bitmaps[i] = NULL;
	}
}

void DanceLight::InitialiseBitmaps()
{
	for (uint32_t i = 0; i < DANCE_LIGHT_BITMAP_LAST; i++)
	{
		char path[DANCE_LIGHT_BITMAP_NAME_LENGTH];
		Bitmaps[i] = malloc(DANCE_LIGHT_BITMAP_SIZE);
		sprintf(path, "Data\\Textures\\%s.raw", BitmapNames[i]);
		LHLoadData(path, Bitmaps[i], DANCE_LIGHT_BITMAP_SIZE, NULL);
	}
}
