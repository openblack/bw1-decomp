#ifndef BW1_DECOMP_LAND_BALANCE_INCLUDED_H
#define BW1_DECOMP_LAND_BALANCE_INCLUDED_H

class GameOSFile;

class GLandBalance
{
public:
	// BW1W120 005e2990 BW1M100 103776c0 GLandBalance::SaveAll(GameOSFile &)
	static bool SaveAll(GameOSFile& file);
	// BW1W120 005e29e0 BW1M100 10377600 GLandBalance::LoadAll(GameOSFile &)
	static bool LoadAll(GameOSFile& file);
	// BW1W120 005e28c0 BW1M100 10377900 GLandBalance::ReInit(void)
	static void ReInit();
};

#endif /* BW1_DECOMP_LAND_BALANCE_INCLUDED_H */
