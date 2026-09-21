#ifndef BW1_DECOMP_PLAYER_SYMBOL_INCLUDED_H
#define BW1_DECOMP_PLAYER_SYMBOL_INCLUDED_H

// Static API only; not an instance allocation model.
class PlayerSymbol
{
public:
	// BW1W120 005def00 BW1M119 0137a500
	static void CreateFinalTextureSymbols();
	// BW1W120 005de2f0 BW1M119 0137c120
	static void OpenOnce();
};

#endif
