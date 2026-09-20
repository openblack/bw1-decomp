#ifndef BW1_DECOMP_FRONT_END_SETUP_GAME_INCLUDED_H
#define BW1_DECOMP_FRONT_END_SETUP_GAME_INCLUDED_H

#include <assert.h>
#include <stddef.h>
#include <stdint.h>
#include <wchar.h>

struct setupgamedata
{
	char    Name[200];
	uint8_t field_0xc8[0x32c];
	bool    field_0x3f4;
	bool    CitadelTowns;
	bool    NeutralTowns;
	bool    Spells[11];        // 0x3f7
	bool    OneShotSpells[11]; // 0x402
	bool    Creatures;
	bool    Rocks;
	bool    Trees;
	bool    Fields;
	bool    Fish;
	bool    field_0x412;
	uint8_t field_0x413;
	int     GuaranteedPlayers; // 0x414
	float   field_0x418;
	float   field_0x41c;
	float   field_0x420;
	int     field_0x424;
	int     field_0x428;

	// BW1W120 00719750 BW1M100 105c5bc0 setupgamedata::setupgamedata(void)
	setupgamedata();
};

// BW1W120 00546c30 BW1M100 105cdca0 get_type_string(float)
wchar_t* get_type_string(float value);

#endif /* BW1_DECOMP_FRONT_END_SETUP_GAME_INCLUDED_H */
