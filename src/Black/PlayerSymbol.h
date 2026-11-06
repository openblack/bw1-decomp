#ifndef BW1_DECOMP_PLAYER_SYMBOL_INCLUDED_H
#define BW1_DECOMP_PLAYER_SYMBOL_INCLUDED_H

// Static API only; not an instance allocation model.
class Creature;
struct PlayerProfile;

struct LH3DTexture;

class PlayerSymbol
{
public:
	// BW1W120 00d19c38
	static LH3DTexture* TattooTexture;

	// BW1W120 005de5e0 BW1M119 0137b600
	static void Open();
	// BW1W120 005de8b0 BW1M119 0137b500
	static void Close();
	// BW1W120 005def00 BW1M119 0137a500
	static void CreateFinalTextureSymbols();
	// BW1W120 005de2f0 BW1M119 0137c120
	static void OpenOnce();
	// BW1W120 005dea60 BW1M119 0137a7f0
	static void RebuildLocalTattoo(PlayerProfile* profile, Creature* creature, int player_number, int param_4,
	                               char* param_5);
};

#endif
