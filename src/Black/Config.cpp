#include "Config.h"

#include <cstdio> /* For sprintf */

#include "GameTimeConstants.h"
#include "Camera.h"
#include "ColourConstants.h" /* For White */
#include "Game.h"
#include "CellSize.h"

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
}
