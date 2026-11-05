#ifndef BW1_DECOMP_SCRIPT_GAME_STATE_INCLUDED_H
#define BW1_DECOMP_SCRIPT_GAME_STATE_INCLUDED_H

// Forward Declares

class CImmMouse;

struct ScriptGameState
{
	// BW1W120 00bec284
	static int CurrentRoom;
	// BW1W120 00c221cc
	static bool32_t CreatureInTemple;
	// BW1W120 00d18588
	static CImmMouse* ImmersionMouse;
};

#endif /* BW1_DECOMP_SCRIPT_GAME_STATE_INCLUDED_H */
