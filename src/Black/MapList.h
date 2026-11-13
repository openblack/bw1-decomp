#ifndef BW1_DECOMP_MAP_LIST_INCLUDED_H
#define BW1_DECOMP_MAP_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For class LHLinkedList */

struct LandscapeDetails;

#pragma pack(push, 1)
class MapList
{
public:
	LHLinkedList<LandscapeDetails*> Landscapes;
	bool                            Host;
	unsigned long                   PlayerID;
	char*                           PlayerName;

	// BW1W120 inlined BW1M119 null
	MapList()
	{
		Host = false;
		PlayerName = NULL;
	}

	// BW1W120 inlined BW1M119 inlined
	LandscapeDetails* GetNext(LandscapeDetails* details) { return Landscapes.FindNext(details); }

	// BW1W120 inlined BW1M119 015d95e0
	void Clear()
	{
		Landscapes.DeleteAll();
		if (PlayerName != NULL)
		{
			delete[] PlayerName;
		}
		PlayerName = NULL;
	}

	// BW1W120 00713a80 BW1M119 013ed1d0
	bool DoWeHaveInList(LandscapeDetails* details);
	// BW1W120 00713b70 BW1M119 010fb400
	void GenerateFromFilesOnDisk();
	// BW1W120 00713cc0 BW1M119 0148d120
	char* EncodeList();
	// BW1W120 00713e00 BW1M119 01583320
	void Decode(char* encoded);

	// BW1W120 00713b30 BW1M119 0136a7d0
	static MapList* GetForPlayer(unsigned long player_id);
	// BW1W120 007143a0 BW1M119 null
	static MapList* GetForName(char* player_name);
	// BW1W120 00714420 BW1M119 null
	static MapList* Create(char* player_name);

	// BW1W120 00d99168
	static LHLinkedList<MapList*> List;
};
#pragma pack(pop)
static_assert(sizeof(MapList) == 0x11, "MapList size is incorrect");

#endif /* BW1_DECOMP_MAP_LIST_INCLUDED_H */
