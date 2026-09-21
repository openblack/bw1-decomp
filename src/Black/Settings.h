#ifndef BW1_DECOMP_SETTINGS_INCLUDED_H
#define BW1_DECOMP_SETTINGS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

struct Settings
{
	char QuestPath[0x104];
	Settings() { InitialiseToDefaults(); }

	// Non-virtual methods

	// BW1W120 00714af0 BW1M119 015f0bc0
	void ParseConfigFile(char* path);
	// BW1W120 00714c20 BW1M119 015f0b60
	void InitialiseToDefaults();
};

#endif /* BW1_DECOMP_SETTINGS_INCLUDED_H */
