#ifndef BW1_DECOMP_GAME_OS_FILE_INCLUDED_H
#define BW1_DECOMP_GAME_OS_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <Lionhead/LHFile/ver3.0/LHFile.h>           /* For enum LH_FILE_MODE */
#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h> /* For struct LHReleasedOSFile */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>      /* For struct LHLinkedList */

#include "GameThing.h"   /* For struct GameThing */
#include "SaveLoadPtr.h" /* For struct GSaveLoadPtr */

// Forward Declares

class GBaseInfo;
class LHOSFile;
struct MapCoords;

class GameOSFile : public LHReleasedOSFile
{
public:
	uint8_t                    field_0x8[0x40];
	uint8_t                    field_0x48[0xc4];
	uint32_t                   field_0x10c;
	char                       filename[0x100]; /* 0x110 */
	uint32_t                   field_0x210;
	uint32_t                   checksum;
	uint32_t                   field_0x218;
	uint32_t                   field_0x21c;
	LHLinkedList<GSaveLoadPtr> save_load_ptr_list; /* 0x220 */
	LHLinkedList<GameThing>    game_thing_list;

	// Override methods

	// BW1W120 00558030 BW1M100 1030fcb0 GameOSFile::_dt(void)
	virtual ~GameOSFile();
	// BW1W120 inlined BW1M100 inlined GameOSFile::Open(char *, LH_FILE_MODE)
	virtual LH_FILE_RESULT Open(const char* filename, LH_FILE_MODE mode);

	// Static methods

	// BW1W120 005587b0 BW1M100 1030ef00 GameOSFile::LoadAllGame(char *)
	static bool LoadAllGame(char* filename);

	// Non-virtual methods

	// BW1W120 inlined BW1M100 inlined GameOSFile::ReadIt<MapCoords>(MapCoords*)
	void ReadIt_MapCoords_(MapCoords* out);
	// BW1W120 inlined BW1M100 inlined GameOSFile::ReadIt<T>(T&)W
	template <typename T> void ReadIt(T& out);
	// BW1W120 00558dc0 BW1M100 10304ef0 GameOSFile::LoadInstance(GameThing **)
	void LoadInstance(GameThing** out_thing);
	// BW1W120 00561c60 BW1M100 103049e0 GameOSFile::ResolveAllLoads(void)
	void ResolveAllLoads();
	// BW1W120 00561e10 BW1M100 10304650 GameOSFile::WritePtr(GameThing *)
	void WritePtr(GameThing* param_1);
	// BW1W120 00562180 BW1M100 10304470 GameOSFile::ReadPtr(GameThing **)
	void ReadPtr(GameThing** ptr);
	// BW1W120 00563f00 BW1M100 103008a0 GameOSFile::ReadInfo(GBaseInfo const **)
	void ReadInfo(GBaseInfo** info);
	// BW1W120 00563fa0 BW1M100 10300720 GameOSFile::ReadCheckSum(GameThing *)
	void ReadCheckSum(GameThing* thing);
};

#endif /* BW1_DECOMP_GAME_OS_FILE_INCLUDED_H */
