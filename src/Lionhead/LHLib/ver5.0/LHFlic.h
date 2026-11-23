#ifndef BW1_DECOMP_LHFLIC_INCLUDED_H
#define BW1_DECOMP_LHFLIC_INCLUDED_H

#include <stdint.h> /* For uint8_t, uint16_t, uint32_t */
#include <stdio.h>  /* For FILE */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LH3DLib/development/LHColor.h> /* For struct LHColor */
#include <Lionhead/LHLib/ver5.0/LHReturn.h>       /* For enum LH_RETURN */

struct LHSprite;
struct LHSpriteList;

#define LH_CHUNK_HEADER_SIZE 6

#define LH_FLIC_COLOURS           256
#define LH_FLIC_COLOUR_COMPONENTS 3
#define LH_FLIC_PALETTE_SIZE      (LH_FLIC_COLOURS * LH_FLIC_COLOUR_COMPONENTS)
#define LH_FLIC_DELTA_LINE_SKIP   0xc000
#define LH_FLIC_MAX_WIDTH         99999

enum LH_FLIC_CHUNK_TYPE
{
	LH_FLIC_CHUNK_TYPE_COLOR_256 = 4,
	LH_FLIC_CHUNK_TYPE_DELTA_FLC = 7,
	LH_FLIC_CHUNK_TYPE_BYTE_RUN = 15
};

enum LH_CONVERT_FLAGS
{
	LH_CONVERT_FLAGS_MARKER_TRANSPARENT = 0x1,
	LH_CONVERT_FLAGS_PIXEL16 = 0x2
};

struct LHChunkHeader
{
	uint32_t Size;
	uint16_t Type;

	// BW1W120 007ee730 BW1M119 01136790 (LHCombined Release)
	LH_RETURN Load(FILE* file);
};

struct FrameChunkHeader
{
	uint32_t Size;
	uint16_t Type;
	uint16_t Chunks;
	uint8_t  Reserved[8];

	// BW1W120 007ee6e0 BW1M119 01136830 (LHCombined Release)
	LH_RETURN Load(FILE* file);
};

struct FrameInfo
{
	long       X;
	long       Y;
	FrameInfo* Next;

	// BW1W120 007ef760 BW1M119 01134cb0 (LHCombined Release)
	LH_RETURN Set(long x, long y);
};

struct FrameInfoLinkedList
{
	FrameInfo* Head;
	uint16_t   Count;

	// BW1W120 007ef780 BW1M119 01134c70 (LHCombined Release)
	FrameInfoLinkedList();
	// BW1W120 007ef790 BW1M119 01134b60 (LHCombined Release)
	LH_RETURN FreeAll();
	// BW1W120 007ef7d0 BW1M119 01134b20 (LHCombined Release)
	LH_RETURN Init();
	// BW1W120 007ef7e0 BW1M119 01134a70 (LHCombined Release)
	LH_RETURN Setup(long x, long y);
	// BW1W120 007ef820 BW1M119 01134970 (LHCombined Release)
	LH_RETURN Add(long x, long y);
	// BW1W120 007ef8c0 BW1M119 011348c0 (LHCombined Release)
	FrameInfo* Get(uint16_t index);
};

struct FlicHeader
{
	uint32_t            Size;
	uint16_t            Magic;
	uint16_t            Frames;
	uint16_t            Width;
	uint16_t            Height;
	uint16_t            Depth;
	uint16_t            Flags;
	uint32_t            Speed;
	uint16_t            Reserved1;
	uint32_t            Created;
	uint32_t            Creator;
	uint32_t            Updated;
	uint32_t            Updater;
	uint16_t            AspectX;
	uint16_t            AspectY;
	uint8_t             Reserved2[38];
	uint32_t            OFrame1;
	uint32_t            OFrame2;
	uint8_t             Reserved3[40];
	FrameInfoLinkedList FrameInfos;
	LHColor             Background;

	// BW1W120 007ee760 BW1M119 01136550 (LHCombined Release)
	LH_RETURN LoadHeaderInfo(FILE* file);
	// BW1W120 007ee890 BW1M119 011362d0 (LHCombined Release)
	LH_RETURN LoadHeaderInfoOnly(char* file_name);
	// BW1W120 007eea00 BW1M119 01136230 (LHCombined Release)
	unsigned long ReturnLastModifiedDate(char* file_name);
	// BW1W120 007eea30 BW1M119 01135fa0 (LHCombined Release)
	LH_RETURN Load(char* file_name, LHSpriteList* sprite_list, unsigned long flags);
	// BW1W120 007eec00 BW1M119 01135e40 (LHCombined Release)
	LH_RETURN CopyPreviousSprite(LHSpriteList* sprite_list);
	// BW1W120 007eecc0 BW1M119 01135d10 (LHCombined Release)
	LH_RETURN ReadColour256(unsigned char* data, unsigned char** palette);
	// BW1W120 007eed20 BW1M119 011359a0 (LHCombined Release)
	LH_RETURN ReadByterun(unsigned char* data, LHSpriteList* sprite_list, unsigned char** palette, unsigned long width,
	                      unsigned long height);
	// BW1W120 007eef70 BW1M119 01135480 (LHCombined Release)
	LH_RETURN ReadDeltaflc(unsigned char* data, LHSpriteList* sprite_list, unsigned char** palette, unsigned long width,
	                       unsigned long height);
	// BW1W120 007ef2d0 BW1M119 01135160 (LHCombined Release)
	LH_RETURN ShrinkToFit(LHSpriteList* sprite_list, unsigned long first, unsigned long last, unsigned long flags);
	// BW1W120 007ef570 BW1M119 011350a0 (LHCombined Release)
	long FindTopLine(LHSprite* sprite);
	// BW1W120 007ef5c0 BW1M119 01134fb0 (LHCombined Release)
	long FindBottomLine(LHSprite* sprite);
	// BW1W120 007ef620 BW1M119 01134ec0 (LHCombined Release)
	long FindLeftLine(LHSprite* sprite);
	// BW1W120 007ef6a0 BW1M119 01134dd0 (LHCombined Release)
	long FindRightLine(LHSprite* sprite);
	// BW1W120 007ef720 BW1M119 01134d70 (LHCombined Release)
	LH_RETURN SetupOffset(uint16_t count);
	// BW1W120 007ef740 BW1M119 01134d30 (LHCombined Release)
	unsigned long GetLastUpdated();
	// BW1W120 007ef750 BW1M119 01134cf0 (LHCombined Release)
	bool32_t SetLastUpdated(unsigned long updated);
};

#endif /* BW1_DECOMP_LHFLIC_INCLUDED_H */
