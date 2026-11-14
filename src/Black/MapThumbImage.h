#ifndef BW1_DECOMP_MAP_THUMB_IMAGE_INCLUDED_H
#define BW1_DECOMP_MAP_THUMB_IMAGE_INCLUDED_H

#include <stdint.h> /* For uint32_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For class LHLinkedList */

#include "ServerLandscapeMap.h" /* For struct ServerLandscapeMap::Point */

#pragma pack(push, 1)
class MapThumbImage
{
public:
	struct Header
	{
		int NumPlayers;
		int NumCitadels;
		int NumTowns;
		int DescriptionLength;
	};

	uint32_t DescriptionLength;
	char     Description[1];

	// BW1W120 00712b00 BW1M119 null
	MapThumbImage();
	// BW1W120 00712b10 BW1M119 011a5ba0
	~MapThumbImage();

	// BW1W120 inlined BW1M119 01398140
	char* GetImageData() { return (char*)this + (DescriptionLength + 9); }
	// BW1W120 inlined BW1M119 013980c0
	int GetImageByteSize() { return *(int*)(GetImageData() - sizeof(int)); }

	// BW1W120 00712b20 BW1M119 01353470
	static MapThumbImage* GetFromData(char* data, LHLinkedList<ServerLandscapeMap::Point*>* citadels,
	                                  LHLinkedList<ServerLandscapeMap::Point*>* towns);
	// BW1W120 00712d00 BW1M119 0135afa0
	static char* CreateFromData(char* image, char* description, LHLinkedList<ServerLandscapeMap::Point*>* citadels,
	                            LHLinkedList<ServerLandscapeMap::Point*>* towns, int* length);
};
#pragma pack(pop)

#endif /* BW1_DECOMP_MAP_THUMB_IMAGE_INCLUDED_H */
