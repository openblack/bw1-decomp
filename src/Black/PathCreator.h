#ifndef BW1_DECOMP_PATH_CREATOR_INCLUDED_H
#define BW1_DECOMP_PATH_CREATOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */
#include <uchar.h>  /* For char16_t */

struct PathCreator
{
	char*   DevBlack; /* 0x0 */
	char*   profiles;
	char*   SavedGames;
	char*   pictures;
	char*   current; /* 0x10 */
	char*   field_0x16;
	char    field_0x18[0x10];
	uint8_t field_0x28[0xf4];
	char    field_0x11c[0x44];
	uint8_t field_0x160[0xbc];
	char*   field_0x21c; // ProfileNameToKey returns a narrow registry key.

	// Constructors

	// BW1W120 0078e8c0 BW1M119 0153ec70
	PathCreator();
	// BW1W120 0078e9a0 BW1M119 010b4590
	~PathCreator();

	// Non-virtual methods
	// BW1W120 0078e9b0 BW1M119 01173b00
	void UpdateCurrentProfile();
	// BW1W120 0078ea20 BW1M119 010e0520
	void GetCurrentUserPath(char* path);

	// BW1W120 0078eaa0 BW1M119 014de1d0
	void GetSaveGamePicturesPath(char* path);
	// BW1W120 0078eae0 BW1M119 011d06f0
	void GetCurrentGamePath(char* path);
	// BW1W120 0078eb20 BW1M119 012a8040
	void GetAutoSavePath(char* path);
	// BW1W120 0078efc0 BW1M119 011a2b10
	bool CheckAndRecreateSaveGamePaths();
};

#endif /* BW1_DECOMP_PATH_CREATOR_INCLUDED_H */
