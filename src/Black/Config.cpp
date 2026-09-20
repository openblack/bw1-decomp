#include "Config.h"

#include <cstdio> /* For sprintf */

#include <windows.h> /* For GetTickCount */

#include <Lionhead/LH3DLib/development/LH3DIsland.h>
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h>
#include <Lionhead/LH3DLib/development/LH3DRender.h>
#include <Lionhead/LH3DLib/development/LH3DTech.h>
#include <Lionhead/LHLib/ver5.0/LHTimer.h>

#include "Camera.h"
#include "ColourConstants.h" /* For White */
#include "Creature.h"
#include "CreatureInfo.h"
#include "CreatureMorph.h"
#include "CreaturePhysical.h"
#include "Game.h"
#include "LandscapeConstants.h"
#include "MapCoords.h"
#include "Script.h"

LHReleasedOSFile Config::CloseDownFile;

enum CONFIG_TEST_TURN
{
	CONFIG_TEST_TURN_CAST_SHIELD = 200,
	CONFIG_TEST_TURN_CREATE_CREATURE = 300,
	CONFIG_TEST_TURN_MOVE_CAMERA = 600,
	CONFIG_TEST_TURN_QUIT = 1200
};

// TODO: Init (0046af20) is deferred until CPUCheck's complete stack layout is recovered.
// The unlabelled 0046b050 routine writes the renderer's camera/mode globals; its ownership
// and original name are still unknown. Neither routine is replaced with a placeholder body.

int ConfigGetFPS()
{
	// Descriptive local names. Windows storage: 009ceba8, 009cebac, 00c5e5d4.
	static int   lastTime = -1;
	static int   lastFrame = -1;
	static float lastFPS;

	LHTimer& timer = LH3DTech::g_timer;
	if (lastTime == -1)
	{
		lastTime =
			(int)((float)(GetTickCount() - timer.TickCount) * timer.SpeedUpFactor + (float)(uint32_t)timer.ElapsedTime);
		lastFrame = LH3DRender::g_frame;
		return 0;
	}

	int elapsed =
		(int)((float)(GetTickCount() - timer.TickCount) * timer.SpeedUpFactor + (float)(uint32_t)timer.ElapsedTime) -
		lastTime;
	if (elapsed < 1000)
	{
		return (int)lastFPS;
	}

	float fps = (float)(LH3DRender::g_frame - lastFrame) * 1000.0f / elapsed;
	lastTime =
		(int)((float)(GetTickCount() - timer.TickCount) * timer.SpeedUpFactor + (float)(uint32_t)timer.ElapsedTime);
	lastFrame = LH3DRender::g_frame;
	lastFPS = fps;
	return (int)fps;
}

void Config::Process()
{
	char local_3e8[1000];

	int fps = ConfigGetFPS();

	if (fps != field_0x10c)
	{
		sprintf(local_3e8, "GT:%d, FPS:%d, Obj:%d ", GGame::g_game->data.GameTurn, fps, GGame::g_game->Fps0x205d38);
		file.Write(local_3e8);
		GCamera* camera = GGame::g_game->GetCamera();
		sprintf(local_3e8, "%s\n", camera->GetDebugText());
		file.Write(local_3e8);
		field_0x10c = fps;
	}
	ProcessOneGameTurn();
}

void Config::ProcessOneGameTurn()
{
	static LHPoint cameraOrigin(1942.0f, 141.0f, 2377.0f);
	static LHPoint cameraHeading(1993.0f, 118.0f, 2387.0f);

	uint32_t      gameTurn = GGame::g_game->data.GameTurn;
	LHPoint       creaturePosition(2193.0f, 0.0f, 2359.0f);
	LH3DMapCoords terrainCoords(creaturePosition.x, creaturePosition.z);
	creaturePosition.y = LH3DIsland::GetAltitude(terrainCoords);

	Zoomer3d& originZoomer = GGame::g_game->GetCamera()->CameraOriginZoomer;
	originZoomer.x.SetPosition(cameraOrigin.x);
	originZoomer.y.SetPosition(cameraOrigin.y);
	originZoomer.z.SetPosition(cameraOrigin.z);
	Zoomer3d& headingZoomer = GGame::g_game->GetCamera()->CameraHeadingZoomer;
	headingZoomer.x.SetPosition(cameraHeading.x);
	headingZoomer.y.SetPosition(cameraHeading.y);
	headingZoomer.z.SetPosition(cameraHeading.z);

	switch (gameTurn)
	{
	case CONFIG_TEST_TURN_CAST_SHIELD: {
		MapCoords coords(creaturePosition);
		GScript::CastSpellAtPos(coords, MAGIC_TYPE_SHIELD, coords, NULL, 0, 45.0f, 10.0f, 0.0f,
		                        LHPoint(0.0f, 0.0f, 0.0f));
		Record("Cast Shied", coords);
		break;
	}
	case CONFIG_TEST_TURN_CREATE_CREATURE: {
		MapCoords coords(creaturePosition);
		GPlayer*  player = &GGame::g_game->players[GGame::g_game->PlayerIndex];
		Creature* creature = player->creature;
		if (creature == NULL)
		{
			creature = Creature::Create(coords, CreatureInfo::CreatureInfos, player);
		}
		creature->ForceMoveMapObjectWithoutWalking(coords);
		creature->MoveToDevelopmentPhase(DEVELOPMENT_PHASE_FULLY_MATURE, 0);
		creature->field_0x11b4 = 0;
		GGame::g_game->SetPacket((PACKET_TYPE)0x51, creature->GetIndexOffset(),
		                         creature->physical->Creature3d->Size1 + 1.5f);
		GGame::g_game->script->Reset(1);
		Record("Create Creature", coords);
		break;
	}
	case CONFIG_TEST_TURN_MOVE_CAMERA:
		cameraOrigin.x = creaturePosition.x + 50.0f;
		cameraOrigin.y = creaturePosition.y + 50.0f;
		cameraOrigin.z = creaturePosition.z + 50.0f;
		cameraHeading = creaturePosition;
		Record("Create Creature", cameraOrigin);
		break;
	case CONFIG_TEST_TURN_QUIT:
		GGame::g_game->GameMode = GAME_MODE_QUITTING;
		Record("Quit:");
		break;
	}
}

void Config::Record(char* text)
{
	char buffer[250];
	sprintf(buffer, "%s@%d\n", text, GGame::g_game->data.GameTurn);
	file.Write(buffer);
}

void Config::Record(char* text, MapCoords& coords)
{
	char buffer[250];
	sprintf(buffer, "%s[%.2f,%.2f]@%d\n", text, coords.MetersX(), coords.MetersZ(), GGame::g_game->data.GameTurn);
	file.Write(buffer);
}

void Config::Record(char* text, LHPoint& point)
{
	char buffer[250];
	sprintf(buffer, "%s[%.2f,%.2f,%.2f]@%d\n", text, point.x, point.y, point.z, GGame::g_game->data.GameTurn);
	file.Write(buffer);
}

void Config::CloseDown()
{
	CloseDownFile.Close();
}
