#include "Config.h"

#include <cstdio> /* For sprintf */

#include "Camera.h"
#include "Game.h"

void Config::Process()
{
    char local_3e8[1000];

    int fps = ConfigGetFPS();

    if (fps != field_0x10c)
    {
        sprintf(local_3e8, "GT:%d, FPS:%d, Obj:%d ", GGame::g_game->data.game_turn, fps, GGame::g_game->fps_0x205d38);
        file.Write(local_3e8);
        GCamera* camera = GGame::g_game->GetCamera();
        sprintf(local_3e8, "%s\n", camera->GetDebugText());
        file.Write(local_3e8);
        field_0x10c = fps;
    }
}
