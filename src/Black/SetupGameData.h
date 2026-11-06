#ifndef BW1_DECOMP_SETUP_GAME_DATA_INCLUDED_H
#define BW1_DECOMP_SETUP_GAME_DATA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint8_t */
#include <string.h> /* For memset */

#include <chlasm/Enum.h> /* For enum SPELL_SEED_TYPE */

#define SETUP_GAME_DATA_NUM_SPELLS                 11
#define SETUP_GAME_DATA_NUM_SLIDERS                3
#define SETUP_GAME_DATA_DEFAULT_GUARANTEED_PLAYERS 2
#define SETUP_GAME_DATA_DEFAULT_SLIDER             0.75f

class setupgamedata
{
public:
	// BW1W120 00d4f128
	static setupgamedata Current;

	char    GameName[200];
	uint8_t CustomMapInfo[812];
	bool    UseCustomMap;
	bool    CitadelTowns;
	bool    NeutralTowns;
	bool    OneShotSpells[SETUP_GAME_DATA_NUM_SPELLS];
	bool    Spells[SETUP_GAME_DATA_NUM_SPELLS];
	bool    CreatureAllowed;
	bool    RocksAllowed;
	bool    TreesAllowed;
	bool    FieldsAllowed;
	bool    FishAllowed;
	bool    RandomTownsAllowed;
	int32_t GuaranteedPlayers;
	float   Sliders[SETUP_GAME_DATA_NUM_SLIDERS];
	int32_t FirstMapOption;
	int32_t SecondMapOption;

	// BW1W120 inlined BW1M119 015cc8d0
	setupgamedata()
	{
		memset(CustomMapInfo, 0, sizeof(CustomMapInfo));
		reset_to_defaults();
	}

	// BW1W120 00719750 BW1M119 01514380
	void reset_to_defaults();
	// BW1W120 007197f0 BW1M119 015142c0
	void set_one_shot_spell(SPELL_SEED_TYPE type, bool value, bool all);
	// BW1W120 00719840 BW1M119 01514200
	void set_spell(SPELL_SEED_TYPE type, bool value, bool all);
	// BW1W120 00719890 BW1M119 inlined
	bool get_one_shot_spell(SPELL_SEED_TYPE type);
	// BW1W120 007198b0 BW1M119 inlined
	bool get_spell(SPELL_SEED_TYPE type, bool all);
	// BW1W120 007198d0 BW1M119 inlined
	bool any_spell();
	// BW1W120 007198f0 BW1M119 inlined
	bool any_one_shot_spell();
	// BW1W120 00719910 BW1M119 inlined
	bool any_spell_in_list(SPELL_SEED_TYPE* types, int count);
	// BW1W120 00719950 BW1M119 inlined
	bool any_one_shot_spell_in_list(SPELL_SEED_TYPE* types, int count);
};

#endif /* BW1_DECOMP_SETUP_GAME_DATA_INCLUDED_H */
