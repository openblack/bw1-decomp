#include "Temple.h"

#include "Audio.h"           /* For class GAudio */
#include "ChallengeRoom.h"   /* For class ChallengeRoom, struct SnapShotData */
#include "ColourConstants.h" /* For White */
#include "Game.h"            /* For class GGame */
#include "Global.h"          /* For struct GGlobal */
#include "HelpSystem.h"      /* For class HelpSystem */
#include "Script.h"          /* For class GScript */

float Temple::Dat_00C2A150 = 1.0f;
float Temple::Dat_00E06020;

void Temple::UpdateChallenge(SnapShotData& data, unsigned long count, void** values, VMType* types, int take_picture)
{
	((ChallengeRoom*)rooms[TEMPLE_ROOM_CHALLENGE])->UpdateChallenge(data, count, values, types, take_picture);
}

void Temple::SetCameraToLookAtSubMesh(unsigned long sub_mesh, float param_2, float param_3, float param_4)
{
	ActiveRoom->SetCameraToLookAtSubMesh(sub_mesh, param_2, param_3, param_4);
}

bool Temple::StartScript(unsigned long param_1)
{
	return ((ChallengeRoom*)rooms[TEMPLE_ROOM_CHALLENGE])->StartScript(param_1);
}

void Temple::ProcessGameTurn()
{
	if (GGame::g_game->GameFlags & GAME_FLAG_PAUSED)
	{
		GGlobal::Global.debug.ClearMessages(-1);
		GScript::g_scriptDLL->LookIn(VMScriptType_0x18);
		GGlobal::Global.audio->ProcessAudioGameTurn();
		if (GGame::g_game->help_system)
		{
			GGame::g_game->help_system->Process();
		}
	}
}

void Temple::StartTempleScript(char* script_name)
{
	if (!GGame::g_game->IsMultiplayerGame() && !GGame::g_game->SkirmishGame)
	{
		GGame::g_game->script->StartScript(script_name);
	}
}
