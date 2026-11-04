#include "ColourConstants.h"   /* For White */
#include "GameTimeConstants.h" /* For SecondsPerYear */
#include "SetupGameData.h"

void setupgamedata::reset_to_defaults()
{
	GameName[0] = '\0';
	CitadelTowns = true;
	NeutralTowns = true;
	CreatureAllowed = true;
	RocksAllowed = true;
	TreesAllowed = true;
	FieldsAllowed = true;
	FishAllowed = true;
	RandomTownsAllowed = true;
	Sliders[0] = SETUP_GAME_DATA_DEFAULT_SLIDER;
	Sliders[1] = SETUP_GAME_DATA_DEFAULT_SLIDER;
	Sliders[2] = SETUP_GAME_DATA_DEFAULT_SLIDER;
	GuaranteedPlayers = SETUP_GAME_DATA_DEFAULT_GUARANTEED_PLAYERS;
	FirstMapOption = 0;
	SecondMapOption = 0;
	UseCustomMap = false;
	memset(CustomMapInfo, 0, sizeof(CustomMapInfo));
	for (int i = 0; i < SETUP_GAME_DATA_NUM_SPELLS; i++)
	{
		Spells[i] = true;
		OneShotSpells[i] = true;
	}
}

void setupgamedata::set_one_shot_spell(SPELL_SEED_TYPE type, bool value, bool all)
{
	if (all)
	{
		for (int i = 0; i < SETUP_GAME_DATA_NUM_SPELLS; i++)
		{
			OneShotSpells[i] = value;
		}
	}
	else
	{
		OneShotSpells[type == SPELL_SEED_TYPE_BEAM_EXPLOSION ? SPELL_SEED_TYPE_FLOCK_FLYING : type] = value;
	}
}

void setupgamedata::set_spell(SPELL_SEED_TYPE type, bool value, bool all)
{
	if (all)
	{
		for (int i = 0; i < SETUP_GAME_DATA_NUM_SPELLS; i++)
		{
			Spells[i] = value;
		}
	}
	else
	{
		Spells[type == SPELL_SEED_TYPE_BEAM_EXPLOSION ? SPELL_SEED_TYPE_FLOCK_FLYING : type] = value;
	}
}

bool setupgamedata::get_one_shot_spell(SPELL_SEED_TYPE type)
{
	return OneShotSpells[type == SPELL_SEED_TYPE_BEAM_EXPLOSION ? SPELL_SEED_TYPE_FLOCK_FLYING : type];
}

bool setupgamedata::get_spell(SPELL_SEED_TYPE type, bool all)
{
	return Spells[type == SPELL_SEED_TYPE_BEAM_EXPLOSION ? SPELL_SEED_TYPE_FLOCK_FLYING : type];
}

bool setupgamedata::any_spell()
{
	for (int i = 0; i < SETUP_GAME_DATA_NUM_SPELLS; i++)
	{
		if (Spells[i])
		{
			return true;
		}
	}
	return false;
}

bool setupgamedata::any_one_shot_spell()
{
	for (int i = 0; i < SETUP_GAME_DATA_NUM_SPELLS; i++)
	{
		if (OneShotSpells[i])
		{
			return true;
		}
	}
	return false;
}

bool setupgamedata::any_spell_in_list(SPELL_SEED_TYPE* types, int count)
{
	for (int i = 0; i < count; i++)
	{
		if (Spells[types[i]])
		{
			return true;
		}
	}
	return false;
}

bool setupgamedata::any_one_shot_spell_in_list(SPELL_SEED_TYPE* types, int count)
{
	for (int i = 0; i < count; i++)
	{
		if (OneShotSpells[types[i]])
		{
			return true;
		}
	}
	return false;
}
