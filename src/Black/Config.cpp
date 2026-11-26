#include "Config.h"
#include <cstdio> /* For sprintf */
#include <time.h>
#include <Lionhead/LH3DLib/development/LH3DIsland.h>        /* For LH3DIsland::GetAltitude */
#include <Lionhead/LH3DLib/development/LH3DLevelOfDetail.h> /* For LH3DLevelOfDetail */
#include <Lionhead/LH3DLib/development/LH3DRender.h>        /* For LH3DRender::g_frame */
#include <Lionhead/LH3DLib/development/LH3DTech.h> /* For LH3DTech::g_timer, grosse_merde_pos, grosse_merde_foc */
#include "MapCoordsMeters.h"                       /* For MapCoords::MetersX */
#include "GameTimeConstants.h"
#include "Camera.h"
#include "CameraModeNew3.h"
#include "ColourConstants.h" /* For White */
#include "CPUCheck.h"
#include "Creature.h"
#include "Creature3D.h"
#include "CreatureInfo.h"
#include "CreaturePhysical.h"
#include "Game.h"
#include "CellSize.h"
#include "Script.h"

LHReleasedOSFile ConfigFile;

void Config::Init()
{
	char   text[5000];
	time_t now;

	time(&now);
	char* timeText = asctime(localtime(&now));
	sprintf(text, "Config%d.txt", LH3DLevelOfDetail::g_detail_idx);
	if (file.Open(text, LH_FILE_NEW) == LH_FILE_RESULT_OK)
	{
		CPUCheck cpu;
		cpu.CreateStrings();
		char* summary = cpu.Summary;
		sprintf(text, "%s: Detail:%d\n", timeText, LH3DLevelOfDetail::g_detail_idx);
		if (summary)
		{
			strcat(text, summary);
		}
		else
		{
			strcat(text, "\nWindows/DDraw stuff not available");
		}
		Write(text);
	}
	NewCameraMode = NEW(42) CameraModeNew3(GGame::g_game->GetCamera());
}

#ifndef VERSION_BW1W100
void ConfigSetGrosseMerdeCamera(int game_turn)
{
	g_b_grosse_merde = GROSSE_MERDE_POSITION_AND_FOCUS;
	if (game_turn < CONFIG_GROSSE_MERDE_MAX_GAME_TURN)
	{
		grosse_merde_pos.x = CONFIG_CAMERA_ORIGIN_X;
		grosse_merde_pos.y = CONFIG_CAMERA_ORIGIN_Y;
		grosse_merde_pos.z = CONFIG_CAMERA_ORIGIN_Z;
		grosse_merde_foc.x = CONFIG_CAMERA_FOCUS_X;
		grosse_merde_foc.y = CONFIG_CAMERA_FOCUS_Y;
		grosse_merde_foc.z = CONFIG_CAMERA_FOCUS_Z;
	}
}
#endif

int ConfigGetFPS()
{
	static int   startTime = -1;
	static int   startFrame = -1;
	static float fps = 0.0f;

	if (startTime == -1)
	{
		startTime =
			(unsigned long)((float)(GetTickCount() - LH3DTech::g_timer.TickCount) * LH3DTech::g_timer.SpeedUpFactor +
		                    (float)(uint32_t)LH3DTech::g_timer.ElapsedTime);
		startFrame = LH3DRender::g_frame;
		return 0;
	}

	int elapsed =
		(unsigned long)((float)(GetTickCount() - LH3DTech::g_timer.TickCount) * LH3DTech::g_timer.SpeedUpFactor +
	                    (float)(uint32_t)LH3DTech::g_timer.ElapsedTime) -
		startTime;
	if (elapsed < CONFIG_MILLISECONDS_PER_SECOND)
	{
		return (int)fps;
	}

	float rate = (float)(LH3DRender::g_frame - startFrame) * CONFIG_MILLISECONDS_PER_SECOND / elapsed;
	startTime =
		(unsigned long)((float)(GetTickCount() - LH3DTech::g_timer.TickCount) * LH3DTech::g_timer.SpeedUpFactor +
	                    (float)(uint32_t)LH3DTech::g_timer.ElapsedTime);
	startFrame = LH3DRender::g_frame;
	fps = rate;
	return (int)fps;
}

void Config::Process()
{
	char text[1000];
	int  fps = ConfigGetFPS();
	if (fps != LastFPS)
	{
		sprintf(text, "GT:%d, FPS:%d, Obj:%d ", GGame::g_game->data.GameTurn, fps, GGame::g_game->TotalObjects);
		Write(text);
		GCamera* camera = GGame::g_game->GetCamera();
		sprintf(text, "%s\n", camera->GetDebugText());
		Write(text);
		LastFPS = fps;
	}
	ProcessOneGameTurn();
}

void Config::ProcessOneGameTurn()
{
	static LHPoint cameraOrigin(CONFIG_CAMERA_ORIGIN_X, CONFIG_CAMERA_ORIGIN_Y, CONFIG_CAMERA_ORIGIN_Z);
	static LHPoint cameraFocus(CONFIG_CAMERA_FOCUS_X, CONFIG_CAMERA_FOCUS_Y, CONFIG_CAMERA_FOCUS_Z);

	uint32_t gameTurn = GGame::g_game->data.GetGameTurn();
	LHPoint  pos(CONFIG_TEST_POSITION_X, 0.0f, CONFIG_TEST_POSITION_Z);
	pos.y = LH3DIsland::GetAltitude(LH3DMapCoords(pos.x, pos.z));
	GGame::g_game->GetCamera()->CameraOriginZoomer.SetPosition(cameraOrigin);
	GGame::g_game->GetCamera()->CameraHeadingZoomer.SetPosition(cameraFocus);
	switch (gameTurn)
	{
	case CONFIG_CAST_SHIELD_GAME_TURN: {
		MapCoords coords(pos);
		GScript::CastSpellAtPos(coords, MAGIC_TYPE_SHIELD, coords, NULL, false, CONFIG_SHIELD_RADIUS,
		                        CONFIG_SHIELD_DURATION, 0.0f,
#ifdef VERSION_BW1WCI
		                        true,
#endif
		                        LHPoint(0.0f, 0.0f, 0.0f));
		Record("Cast Shied", coords);
		break;
	}
	case CONFIG_CREATE_CREATURE_GAME_TURN: {
		MapCoords coords(pos);
		Creature* creature = GGame::g_game->MyPlayer()->creature.Get();
		if (creature == NULL)
		{
			creature = Creature::Create(coords, CreatureInfo::GetInfo(), GGame::g_game->MyPlayer());
		}
		creature->ForceMoveMapObjectWithoutWalking(coords);
		creature->MoveToDevelopmentPhase(DEVELOPMENT_PHASE_FULLY_MATURE, 0);
		creature->ConfinementRadius = 0.0f;
		GGame::g_game->SetPacket(PACKET_TYPE_SET_CREATURE_SIZE, creature->GetIndexOffset(),
		                         creature->physical->Creature3d->Size1 + CONFIG_CREATURE_SIZE_INCREASE);
		GGame::g_game->script->Reset(true);
		Record("Create Creature", coords);
		break;
	}
	case CONFIG_MOVE_CAMERA_GAME_TURN:
		cameraOrigin.x = pos.x + CONFIG_CAMERA_OFFSET;
		cameraOrigin.y = pos.y + CONFIG_CAMERA_OFFSET;
		cameraOrigin.z = pos.z + CONFIG_CAMERA_OFFSET;
		cameraFocus = pos;
		Record("Create Creature", cameraOrigin);
		break;
	case CONFIG_QUIT_GAME_TURN:
		GGame::g_game->GameMode = GAME_MODE_QUITTING;
		Record("Quit:");
		break;
	}
}

void Config::Record(char* text)
{
	char buffer[250];
	sprintf(buffer, "%s@%d\n", text, GGame::g_game->data.GameTurn);
	Write(buffer);
}

void Config::Record(char* text, MapCoords& coords)
{
	char buffer[250];
	sprintf(buffer, "%s[%.2f,%.2f]@%d\n", text, coords.MetersX(), coords.MetersZ(), GGame::g_game->data.GameTurn);
	Write(buffer);
}

void Config::Record(char* text, LHPoint& point)
{
	char buffer[250];
	sprintf(buffer, "%s[%.2f,%.2f,%.2f]@%d\n", text, point.x, point.y, point.z, GGame::g_game->data.GameTurn);
	Write(buffer);
}

void Config::Write(const char* text)
{
	file.Write(text, strlen(text), NULL);
}

void Config::CloseDown()
{
	ConfigFile.Close();
}
