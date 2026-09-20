#ifndef BW1_DECOMP_FRONT_END_SETUP_GAME_INCLUDED_H
#define BW1_DECOMP_FRONT_END_SETUP_GAME_INCLUDED_H

#include <assert.h>
#include <stddef.h>
#include <stdint.h>
#include <uchar.h>

// Original type name: ??0setupgamedata@@QAE@XZ at 00719750.
// Member names are descriptive; the settings copy in both dialogs is exactly 0x42c bytes.
// The opaque area is retained from the constructor's 0xcb-DWORD clear at +0xc8.
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

	// BW1W120 00719750 setupgamedata::setupgamedata(void)
	setupgamedata();
};

static_assert(offsetof(setupgamedata, Spells) == 0x3f7, "setupgamedata spell offset is incorrect");
static_assert(offsetof(setupgamedata, GuaranteedPlayers) == 0x414, "setupgamedata player offset is incorrect");
static_assert(sizeof(setupgamedata) == 0x42c, "setupgamedata size is incorrect");

// BW1W120 00546c30 unsigned short * get_type_string(float)
char16_t* get_type_string(float value);

#endif /* BW1_DECOMP_FRONT_END_SETUP_GAME_INCLUDED_H */
