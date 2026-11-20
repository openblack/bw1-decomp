#include "UniverseRoom.h"

#include <string.h> /* For strcpy */

#include <chlasm/HelpTextEnums.h>                           /* For HELP_TEXT_DIALOG_ADDITION_129 */
#include <Lionhead/LH3DLib/development/LH3DColor.h>         /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LH3DLevelOfDetail.h> /* For struct LH3DLevelOfDetail */
#include <Lionhead/LH3DLib/development/LH3DTech.h>          /* For struct LH3DTech */

#include "alexmfc.h"         /* For struct SetupBox, struct SetupThing */
#include "ColourConstants.h" /* For White */
#include "FrontEnd.h"        /* For struct FrontEnd */
#include "Game.h"            /* For class GGame */
#include "GameTimeConstants.h"
#include "HelpText.h"    /* For struct HelpTextDataBase */
#include "InnerCamera.h" /* For struct InnerCamera */
#include "Temple.h"      /* For struct Temple */
#include "WorldRoom.h"   /* For class WorldRoom */

// BW1W120 00bec284
extern TempleRoomsEnum CurrentRoom;

UniverseRoom::UniverseRoom() : PictureRoomBase("Universe Room")
{
	RoomPosition = LHPoint(-87.0f, 0.0f, 87.0f);
	MeshName = !LH3DLevelOfDetail::g_citadellod.Lightmaps ? "data\\citadel\\engine\\multilo.l3d"
	                                                      : "data\\citadel\\engine\\multi.l3d";
	LightsName = "data\\citadel\\engine\\multi.glw";
	CameraName = "data\\citadel\\engine\\multi.cam";
	DomeMeshName = "data\\citadel\\engine\\multidome.l3d";
	FloorMeshName = !LH3DLevelOfDetail::g_citadellod.Lightmaps ? "data\\citadel\\engine\\multifloorlo.l3d"
	                                                           : "data\\citadel\\engine\\multifloor.l3d";
	ExtraMeshName = NULL;
	RoomType = TEMPLE_ROOM_UNIVERSE;
	CameraZoomMax = 30.0f;
	LeaveRoom = false;
	ShowHelpText = false;
	strcpy(HelpScriptName, "");
	CameraPoints[0].Set(0.0f, -7.0f, 20.0f);
	CameraPoints[2].Set(0.0f, 6.0f, -4.0f);
	CameraPoints[1].Set(0.0f, 7.0f, 20.0f);
	CameraPoints[3].Set(0.0f, -6.0f, -4.0f);
}

void UniverseRoom::InitEngine()
{
	PictureRoomBase::InitEngine();
	LeaveRoom = false;
	ShowHelpText = false;
	HelpTextFade = 0.0f;
}

void UniverseRoom::MakeScrollText(LH3DTexture* texture) {}

UniverseRoom::~UniverseRoom() {}

#ifdef VERSION_BW1WCI
void UniverseRoom::DrawPostDoor()
{
	if (ShowHelpText)
#else
void UniverseRoom::DrawAdditional(bool reflection)
{
	TempleRoom::DrawAdditional(reflection);
	if (ShowHelpText && !reflection)
#endif
	{
		HelpTextFade += LH3DTech::g_delta_time * UNIVERSE_ROOM_HELP_TEXT_FADE_RATE;
		int alpha = (int)(HelpTextFade * UNIVERSE_ROOM_HELP_TEXT_ALPHA_SCALE);
		if (alpha > UNIVERSE_ROOM_HELP_TEXT_MAX_ALPHA)
		{
			alpha = UNIVERSE_ROOM_HELP_TEXT_MAX_ALPHA;
		}
		SetupThing::DrawAlpha = alpha;
		if (camera->State == 1)
		{
			LH3DColor color;
			color.b = LH3D_COLOR_CHANNEL_MAX;
			color.g = LH3D_COLOR_CHANNEL_MAX;
			color.r = LH3D_COLOR_CHANNEL_MAX;
			color.a = LH3D_COLOR_CHANNEL_MAX;
			SetupThing::DrawTextWrap(0, 0, UNIVERSE_ROOM_HELP_TEXT_WIDTH, UNIVERSE_ROOM_HELP_TEXT_HEIGHT, 0, true,
			                         HelpTextDataBase::HelpTextDatabase.GetHelpText(UNIVERSE_ROOM_HELP_TEXT),
			                         UNIVERSE_ROOM_HELP_TEXT_SIZE, &color, true, false);
		}
	}
}

#ifdef VERSION_BW1WCI
void UniverseRoom::DrawAdditional(bool reflection)
{
	TempleRoom::DrawAdditional(reflection);
}
#endif

void UniverseRoom::Draw()
{
	PictureRoomBase::Draw();
}

void UniverseRoom::UpdateMouse(LHCoord coord, INTERFACE_MESSAGE_TYPES message)
{
	PictureRoomBase::UpdateMouse(coord, message);
}

void UniverseRoom::UpdateKeyboard(LH_KEY key, uint16_t modifiers)
{
	PictureRoomBase::UpdateKeyboard(key, modifiers);
}

bool32_t UniverseRoom::AlwaysAvailable()
{
	return true;
}

void UniverseRoom::Update()
{
	if (camera->State == 0)
	{
		HelpTextFade = 0.0f;
	}
	if (SetupBox::GetCurrentActiveBox() == NULL && camera->State == 1)
	{
		if (!LeaveRoom && GGame::g_game->temple->ActiveRoom == this)
		{
			if (!Temple::MultiplayerCitadel)
			{
				ShowHelpText = true;
			}
		}
		else if (!Temple::MultiplayerCitadel)
		{
			FrontEnd::SetCursorOff();
			GGame::g_game->temple->GoToRoom(TEMPLE_ROOM_WORLD);
			LeaveRoom = false;
			ShowHelpText = false;
		}
	}
}

bool32_t UniverseRoom::IsAvailable()
{
	if (GGame::g_game->SkirmishGame)
	{
		return true;
	}
	if (WorldRoom::RoomsAvailable)
	{
		return true;
	}
	return CurrentRoom == TEMPLE_ROOM_UNIVERSE;
}
