#include "GameTimeConstants.h"
#include "AnimalDove.h"

#include "AnimalBat.h"
#include "AnimalCrow.h"
#include "AnimalPigeon.h"
#include "AnimalSeagull.h"
#include "AnimalSwallow.h"
#include "AnimalVulture.h"
#include "ColourConstants.h" /* For White */

bool32_t Dove::IAmABird()
{
	return true;
}

uint32_t Dove::GetSaveType()
{
	return GAME_THING_TYPE_DOVE;
}

uint32_t SpellDove::GetSaveType()
{
	return GAME_THING_TYPE_SPELL_DOVE;
}

char* SpellDove::GetDebugText()
{
	return "Animal: SpellDove";
}

ANIMAL_BEHAVIOUR_RESULT SpellDove::ReactToAnimalNeeds()
{
	return ANIMAL_BEHAVIOUR_RESULT_UNHANDLED;
}

bool32_t Dove::LookForFoodPos(MapCoords* pos)
{
	MapCoords grazePos;
	grazePos.Clear();
	if (LookForGrazePos(Pos, GetDomainRadius(), &grazePos))
	{
		*pos = grazePos;
		return true;
	}
	return false;
}

uint32_t SpellDove::GetNumTurnsToDieOver()
{
	return SPELL_DOVE_NUM_TURNS_TO_DIE_OVER;
}

uint32_t Crow::GetSaveType()
{
	return GAME_THING_TYPE_CROW;
}

char* Crow::GetDebugText()
{
	return "Animal: Crow";
}

uint32_t Swallow::GetSaveType()
{
	return GAME_THING_TYPE_SWALLOW;
}

char* Swallow::GetDebugText()
{
	return "Animal: Swallow";
}

uint32_t Pigeon::GetSaveType()
{
	return GAME_THING_TYPE_PIGEON;
}

char* Pigeon::GetDebugText()
{
	return "Animal: Pigion";
}

uint32_t Seagull::GetSaveType()
{
	return GAME_THING_TYPE_SEAGULL;
}

char* Seagull::GetDebugText()
{
	return "Animal: Seagull";
}

uint32_t Bat::GetSaveType()
{
	return GAME_THING_TYPE_BAT;
}

uint32_t SpellBat::GetSaveType()
{
	return GAME_THING_TYPE_SPELL_BAT;
}

uint32_t Vulture::GetSaveType()
{
	return GAME_THING_TYPE_VULTURE;
}

SCRIPT_OBJECT_TYPE Dove::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_BIRD;
}

char* Dove::GetDebugText()
{
	return "Animal: Dove";
}

bool32_t Dove::CanBePoodOn(Creature*)
{
	return false;
}

bool32_t Dove::Load(GameOSFile& file)
{
	return Animal::Load(file) != false;
}

bool32_t Dove::Save(GameOSFile& file)
{
	return Animal::Save(file) != false;
}

float Dove::GetBankAngle(float param_1, float param_2)
{
	return 0.5f;
}

bool32_t Dove::CanBeHealedByHealSpell()
{
	return false;
}

bool32_t Bat::CanBeFrighteningToCreature(Creature* creature)
{
	return true;
}

char* Bat::GetDebugText()
{
	return "Animal: Bat";
}

bool32_t SpellBat::CanBeFrighteningToCreature(Creature* creature)
{
	return true;
}

char* SpellBat::GetDebugText()
{
	return "Animal: SpellBat";
}

bool32_t Vulture::CanBeFrighteningToCreature(Creature* creature)
{
	return true;
}

char* Vulture::GetDebugText()
{
	return "Animal: Vulture";
}
