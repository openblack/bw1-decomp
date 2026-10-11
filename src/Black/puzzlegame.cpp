#include "ColourConstants.h" /* For White */
#include "GameTimeConstants.h"
#include "PuzzleGame.h"

LH3DMapCoords PuzzleGame::AppliedMapPos;

bool32_t PuzzleTotem::NetworkFriendlyEndLockedSelect(GInterfaceStatus* interface_status)
{
	return true;
}

bool32_t PuzzleVillager::DecideWhatToDo()
{
	return true;
}

bool32_t PuzzleLion::DecideWhatToDo()
{
	return true;
}

char* PuzzleHorse::GetDebugText()
{
	return "PuzzleLion: ";
}

char* PuzzleTortoise::GetDebugText()
{
	return "PuzzleSheep: ";
}

char* PuzzleCow::GetDebugText()
{
	return "PuzzleSheep: ";
}

char* PuzzlePig::GetDebugText()
{
	return "PuzzleSheep: ";
}

bool32_t PuzzleCow::CanBeFrighteningToCreature(Creature* creature)
{
	return false;
}

bool32_t PuzzleSheep::DecideWhatToDo()
{
	return true;
}

uint32_t ChessPion::SaveObject(LHOSFile& file, const MapCoords* map_coords)
{
	return 1;
}
