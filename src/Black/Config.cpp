#include "Config.h"

#include <cstdio> /* For sprintf */

#include "GameTimeConstants.h"
#include "Camera.h"
#include "ColourConstants.h" /* For White */
#include "Game.h"
#include "CellSize.h"

void Config::Process()
{
	char text[1000];

	int fps = ConfigGetFPS();

	if (fps != field_0x10c)
	{
		sprintf(text, "GT:%d, FPS:%d, Obj:%d ", GGame::g_game->data.GameTurn, fps, GGame::g_game->TotalObjects);
		file.Write(text);
		GCamera* camera = GGame::g_game->GetCamera();
		sprintf(text, "%s\n", camera->GetDebugText());
		file.Write(text);
		field_0x10c = fps;
	}
}
