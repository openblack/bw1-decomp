#ifndef BW1_DECOMP_SETTINGS_INCLUDED_H
#define BW1_DECOMP_SETTINGS_INCLUDED_H

#include <stdlib.h> /* For _MAX_PATH */

#ifdef VERSION_BW1WCI
class GameOSFile;
#endif

struct Settings
{
	// BW1W120 00d9927c
	static char ConfigFile[_MAX_PATH];

	char QuestPath[_MAX_PATH];
#ifdef VERSION_BW1WCI
	char MapPath[_MAX_PATH];
#endif
	Settings() { InitialiseToDefaults(); }

	// BW1W120 00714af0 BW1M119 015f0bc0
	void ParseConfigFile(char* path);
	// BW1W120 00714c20 BW1M119 015f0b60
	void InitialiseToDefaults();
	// BW1W120 00714c30 BW1M119 inlined
	void SetQuestPath(char* path);
#ifdef VERSION_BW1WCI
	// BW1WCI 0072ff90 BW1MCI119 inlined
	void SetMapPath(char* path);
	// BW1WCI 0072ffc0 BW1MCI119 01625e30
	void Load(GameOSFile& file);
	// BW1WCI 007300a0 BW1MCI119 01625ce0
	void Save(GameOSFile& file);
#endif
};

#endif /* BW1_DECOMP_SETTINGS_INCLUDED_H */
