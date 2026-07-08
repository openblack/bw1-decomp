#ifndef BW1_DECOMP_PATH_CREATOR_INCLUDED_H
#define BW1_DECOMP_PATH_CREATOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */
#include <uchar.h>  /* For char16_t */

struct PathCreator
{
	char*     DevBlack; /* 0x0 */
	char*     profiles;
	char*     SavedGames;
	char*     pictures;
	char*     current; /* 0x10 */
	char*     field_0x16;
	char      field_0x18[0x10];
	uint8_t   field_0x28[0xf4];
	char      field_0x11c[0x44];
	uint8_t   field_0x160[0xbc];
	char16_t* field_0x21c;

	// Constructors

	// BW1W120 0078e8c0 BW1M100 1017a270 PathCreator::PathCreator(void)
	PathCreator();

	// Non-virtual methods

	// BW1W120 0078eaa0 BW1M100 1035b570 PathCreator::GetSaveGamePicturesPath__11PathCreatorFPc(char*)
	void GetSaveGamePicturesPath__11PathCreatorFPc(char* path);
	// BW1W120 0078eae0 BW1M100 101ca330 PathCreator::GetCurrentGamePath(char*)
	void GetCurrentGamePath(char* path);
	// BW1W120 0078efc0 BW1M100 103655d0 PathCreator::CheckAndRecreateSaveGamePaths(void)
	bool CheckAndRecreateSaveGamePaths();
};

#endif /* BW1_DECOMP_PATH_CREATOR_INCLUDED_H */
