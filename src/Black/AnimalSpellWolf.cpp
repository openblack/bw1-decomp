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

uint32_t SpellWolf::Save(GameOSFile& file)
{
	if (Animal::Save(file))
	{
		file.WriteIt(FinalDestPos);
		file.WriteIt(FinalDestPlane);
		file.WriteIt(field_0x164);
		file.WriteIt(FadeAlpha);
		file.WritePtr(field_0x198);
		return 1;
	}
	return 0;
}

void SpellWolf::SetSpeed(int) {}
