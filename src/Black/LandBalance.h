#ifndef BW1_DECOMP_LAND_BALANCE_INCLUDED_H
#define BW1_DECOMP_LAND_BALANCE_INCLUDED_H

class GameOSFile;

class GLandBalance
{
public:
	enum LAND_BALANCE
	{
		LAND_BALANCE_0,
		LAND_BALANCE_IMPRESSIVE,
		LAND_BALANCE_2,
		LAND_BALANCE_3,
		LAND_BALANCE_4,
		LAND_BALANCE_5,
		LAND_BALANCE_6,
		LAND_BALANCE_7,
		LAND_BALANCE_LAST
	};

	// Static data

	// BW1W120 00d1a280 BW1M119 01b1e464
	static float Values[LAND_BALANCE_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 0137fa90
	static float GetValue(LAND_BALANCE type) { return Values[type]; }
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
