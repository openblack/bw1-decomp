#ifndef BW1_DECOMP_CREDITS_ROOM_INCLUDED_H
#define BW1_DECOMP_CREDITS_ROOM_INCLUDED_H

#include "PictureRoom.h"

class GameOSFile;

class CreditsRoom : public PictureRoomBase
{
public:
	// TODO: Instance members are not recovered. Do not instantiate using this partial declaration.
	// BW1W120 00e01e44
	static int HistoryPage;
	// BW1W120 0078ce70 BW1M119 012a79e0
	static void DYKSave(GameOSFile& file);
	// BW1W120 0078d150 BW1M119 012a7540
	static void DYKLoad(GameOSFile& file);
	// BW1W120 0078cc10 BW1M119 010810f0
	static bool32_t HasDidYouKnowBeenSeen(unsigned long script_id, DYK_CATEGORY category);
	// BW1W120 0078cd20 BW1M119 012a7e30
	static void AddDidYouKnow(unsigned long script_id, DYK_CATEGORY category);
	// BW1W120 0078d420 BW1M119 012a7250
	static void Clear();
	// BW1W120 0078bda0 BW1M119 012a90f0
	static void MakeCreditsText(int page);
	// BW1W120 0078c040 BW1M119 012a8fa0
	static void MakeNavigationText(int page);
	// BW1W120 0078c110 BW1M119 012a8e50
	static void MakeCreatureText(int page);
	// BW1W120 0078c1e0 BW1M119 012a8d00
	static void MakeVillageLifeText(int page);
	// BW1W120 0078c2b0 BW1M119 012a8bb0
	static void MakeMiraclesText(int page);
	// BW1W120 0078c380 BW1M119 012a8a60
	static void MakeMiscText(int page);
	// BW1W120 0078c450 BW1M119 012a8740
	static void MakeHistoryText(int page);
};

#endif /* BW1_DECOMP_CREDITS_ROOM_INCLUDED_H */
