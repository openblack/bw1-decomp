#ifndef BW1_DECOMP_LAND_BALANCE_INCLUDED_H
#define BW1_DECOMP_LAND_BALANCE_INCLUDED_H

class GameOSFile;

class GLandBalance
{
public:
	// BW1W120 005e2890 BW1M119 0137faf0
	static void Init();
	// BW1W120 005e2990 BW1M119 0137f7d0
	static bool SaveAll(GameOSFile& file);
	// BW1W120 005e29e0 BW1M119 0137f710
	static bool LoadAll(GameOSFile& file);
	// BW1W120 005e28c0 BW1M119 0137fa10
	static void ReInit();
};

#endif /* BW1_DECOMP_LAND_BALANCE_INCLUDED_H */
