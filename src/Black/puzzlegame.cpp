#include "ColourConstants.h" /* For White */
#include "GameTimeConstants.h"
#include "PuzzleGame.h"
#include "GameOSFile.h" /* For class GameOSFile */

LH3DMapCoords PuzzleGame::AppliedMapPos;

bool32_t PuzzleVillager::DecideWhatToDo()
{
	return true;
}

bool32_t PuzzleVillager::AttackAllowedForChessGame(long x, long z)
{
	return false;
}

bool32_t PuzzleVillager::MoveAllowedForChessGame(long x, long z)
{
	return false;
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

bool32_t PuzzleCow::CanBecomeAPhysicsObject()
{
	return false;
}

bool32_t PuzzleCow::DecideWhatToDo()
{
	return true;
}

bool32_t PuzzleHorse::CanBecomeAPhysicsObject()
{
	return false;
}

bool32_t PuzzlePig::CanBecomeAPhysicsObject()
{
	return false;
}

bool32_t PuzzleTortoise::CanBecomeAPhysicsObject()
{
	return false;
}

bool32_t PuzzleTortoise::DecideWhatToDo()
{
	return true;
}

bool32_t PuzzleHorse::DecideWhatToDo()
{
	return true;
}

bool32_t PuzzlePig::DecideWhatToDo()
{
	return true;
}

const char* ChessGamePuzzle::GetText()
{
	return "ChessGamePuzzle";
}

bool32_t PuzzleTotem::NetworkFriendlyEndLockedSelect(GInterfaceStatus*)
{
	return true;
}

bool32_t PuzzleTotem::Load(GameOSFile& file)
{
	if (Totem::Load(file))
	{
		file.ReadIt(MaxHeight);
		file.ReadIt(ActualHeight);
		return true;
	}
	return false;
}

bool32_t PuzzleTotem::Save(GameOSFile& file)
{
	if (Totem::Save(file))
	{
		file.WriteIt(MaxHeight);
		file.WriteIt(ActualHeight);
		return true;
	}
	return false;
}

bool32_t PuzzleSheep::DecideWhatToDo()
{
	return true;
}

uint32_t PieceCow::ProcessNeeds()
{
	return 0;
}

uint32_t PieceCow::CheckNeeds()
{
	return 0;
}

bool32_t PuzzleGrain::Load(GameOSFile& file)
{
	if (PileFood::Load(file))
	{
		file.ReadIt(field_0xbc);
		return true;
	}
	return false;
}

bool32_t PuzzleGrain::Save(GameOSFile& file)
{
	if (PileFood::Save(file))
	{
		file.WriteIt(field_0xbc);
		return true;
	}
	return false;
}

bool32_t PuzzleMobileObject::Load(GameOSFile& file)
{
	if (MobileObject::Load(file))
	{
		file.ReadIt(field_0x68);
		return true;
	}
	return false;
}

bool32_t PuzzleMobileObject::Save(GameOSFile& file)
{
	if (MobileObject::Save(file))
	{
		file.WriteIt(field_0x68);
		return true;
	}
	return false;
}
