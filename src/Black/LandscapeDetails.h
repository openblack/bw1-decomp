#ifndef BW1_DECOMP_LANDSCAPE_DETAILS_INCLUDED_H
#define BW1_DECOMP_LANDSCAPE_DETAILS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <string.h> /* For memset */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For class LHLinkedList */

struct LandscapeDetails
{
	char          Name[200];
	char          FileName[200];      /* 0xc8 */
	char          ServerAddress[200]; /* 0x190 */
	char          ServerPath[200];    /* 0x258 */
	unsigned long NumTeams;           /* 0x320 */
	unsigned long ID;                 /* 0x324 */
	bool          ThumbnailOnDisk;    /* 0x328 */
	bool          MapOnDisk;
	bool          FromDatabase;

	// BW1W120 inlined BW1M119 014d28e0
	LandscapeDetails() { memset(this, 0, sizeof(*this)); }

	// BW1W120 00714350 BW1M119 013eed70
	bool AreWeOnDisk(bool map);

	// BW1W120 00713fd0 BW1M119 01183430
	static void GetFromDisk(LHLinkedList<LandscapeDetails*>* list);
	// BW1W120 00714130 BW1M119 0117d520
	static void DumpListToDisk(char* path, LHLinkedList<LandscapeDetails*>* list);
};

static_assert(sizeof(LandscapeDetails) == 0x32c, "LandscapeDetails size is incorrect");

#endif /* BW1_DECOMP_LANDSCAPE_DETAILS_INCLUDED_H */
