#include "GameTimeConstants.h"
#include "AnimalWolf.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "Player.h"

uint32_t SpellWolf::GetSaveType()
{
	return GAME_THING_TYPE_SPELL_WOLF;
}

char* SpellWolf::GetDebugText()
{
	return "Animal: SpellWolf";
}

bool32_t SpellWolf::MoveToPosAndLookAround()
{
	return true;
}

bool32_t SpellWolf::Save(GameOSFile& file)
{
	if (Animal::Save(file))
	{
		file.WriteIt(FinalDestPos);
		file.WriteIt(FinalDestPlane);
		file.WriteIt(field_0x164);
		file.WriteIt(FadeAlpha);
		file.WritePtr(Player);
		return true;
	}
	return false;
}

GPlayer* SpellWolf::GetPlayer()
{
	return Player;
}

void SpellWolf::SetSpeed(int) {}
