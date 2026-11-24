#ifndef BW1_DECOMP_LEASH_INCLUDED_H
#define BW1_DECOMP_LEASH_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <re_common.h> /* For bool32_t */

#include "LH3DColor.h"    /* For struct LH3DColor */
#include "LH3DMaterial.h" /* For struct LH3DMaterial */
#include "LHPoint.h"      /* For struct LHPoint */

struct LH3DTexture;

#define LEASH_NODE_COUNT 40

struct LeashNode
{
	LHPoint Pos; /* 0x0 */
	LHPoint Vel;
	LHPoint Force;
	float   Stretch;

	// BW1W120 008484c0 BW1M119 010602a0 (LHCombined Release)
	void UpdateForces(LHPoint* prev, LHPoint* next, float tension);
	// BW1W120 008483c0 BW1M119 01060590 (LHCombined Release)
	void PullTo(LHPoint* target, float rest_length);
};
static_assert(sizeof(LeashNode) == 0x28, "Data type is of wrong size");

class Leash
{
public:
	LHPoint       Start; /* 0x0 */
	LHPoint       End;
	float         Tautness;
	LeashNode     Nodes[LEASH_NODE_COUNT];
	float         RestLength;
	float         TautLength;
	float         MaxLength;
	float         Radius;
	float         TextureV0;
	float         TextureV1;
	bool          UnusedStyleFlag;
	float         TextureScale;
	LH3DMaterial* Material;

	// BW1W120 008485c0 BW1M119 01060220 (LHCombined Release)
	~Leash();

	// BW1W120 00848600 BW1M119 0105ffa0 (LHCombined Release)
	void Init(LHPoint* start, LHPoint* end);
	// BW1W120 008487c0 BW1M119 0105fe70 (LHCombined Release)
	void UpdateForces(LHPoint* start, LHPoint* end, float dt);
	// BW1W120 00848830 BW1M119 0105fc90 (LHCombined Release)
	void UpdateMotion(float dt);
	// BW1W120 00848970 BW1M119 0105f900 (LHCombined Release)
	void Update(LHPoint* start, LHPoint* end, float dt);
	// BW1W120 00848cc0 BW1M119 0105f840 (LHCombined Release)
	LH3DColor GetNodeColour(int index);
	// BW1W120 00848d20 BW1M119 0105f7a0 (LHCombined Release)
	LHPoint GetNodePoint(int index);
	// BW1W120 00848d70 BW1M119 0105f410 (LHCombined Release)
	static bool CheckLink(int x, int y, int x1, int y1, int radius1, int x2, int y2, int radius2, float* t);
	// BW1W120 00848f90 BW1M119 0105f160 (LHCombined Release)
	bool CheckCollide(int x, int y, float radius, LHPoint* hit, float* depth);
	// BW1W120 008491b0 BW1M119 0105e920 (LHCombined Release)
	void Draw();

	// BW1W120 008485e0 BW1M119 010601a0 (LHCombined Release)
	static LH3DTexture* GetTexture();

	// BW1W120 00ef7540 BW1M119 01206858 (LHCombined Release)
	static LH3DTexture* g_leash_tex;
};
static_assert(sizeof(Leash) == 0x680, "Data type is of wrong size");

#endif /* BW1_DECOMP_LEASH_INCLUDED_H */
