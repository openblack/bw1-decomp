#ifndef BW1_DECOMP_MINI_MAP_INCLUDED_H
#define BW1_DECOMP_MINI_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

// Forward Declares

struct LH3DColor;
struct LH3DMaterial;
class LH3DObject;
struct LH3DTexture;

struct MiniMapCell
{
	uint32_t field_0x0;
	int      Player;
	int      Influence;
};
static_assert(sizeof(MiniMapCell) == 0xc, "Data type is of wrong size");

#define MINI_MAP_SIZE 64

class MiniMap
{
public:
	float         Scale;
	int           OffsetX;
	int           OffsetZ;
	LH3DMaterial* Material;
	LH3DTexture*  Texture;
	MiniMapCell   Cells[MINI_MAP_SIZE + 1][MINI_MAP_SIZE + 1];
	int           field_0xc620;
	int           field_0xc624;

	// Non-virtual methods

	// BW1W120 00797530 BW1M119 01541ed0
	void Init();
	// BW1W120 00797510 BW1M119 01541fa0
	void Close();
	// BW1W120 00797f10 BW1M119 01540bf0
	void BuildMapTex();
	// BW1W120 007977a0 BW1M119 01541360
	void DrawMap();
	// BW1W120 00797590 BW1M119 01541c30
	LHPoint CalcPoint(float x, float z, float* param_3);
	// BW1W120 0079da40 BW1M119 015aea20
	void DrawMarker(const LH3DColor& colour, LHPoint pos, LH3DObject* object, float angle, float scale);

	void DrawMarkerAt(const LH3DColor& colour, float x, float z, LH3DObject* object, float angle, float scale)
	{
		DrawMarker(colour, CalcPoint(x, z, NULL), object, angle, scale);
	}

	// BW1W120 inlined BW1M119 inlined
	void ClearCellColour(unsigned long x, unsigned long z)
	{
		Cells[z][x].Player = -1;
		Cells[z][x].Influence = 0;
	}
};
static_assert(sizeof(MiniMap) == 0xc628, "Data type is of wrong size");

#endif /* BW1_DECOMP_MINI_MAP_INCLUDED_H */
