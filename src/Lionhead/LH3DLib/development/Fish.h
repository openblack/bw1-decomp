#ifndef BW1_DECOMP_FISH_INCLUDED_H
#define BW1_DECOMP_FISH_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

// Forward Declares

struct LH3DMesh;
struct LH3DObject;
struct LH3DSprite;

#define FISH_RUSH_MAX_FISH     15
#define FISH_RUSH_NET_SEGMENTS 7

class Fish
{
public:
	LH3DSprite* Sprite;
	LHPoint     Pos;
	float       Angle;
	float       Speed;
	float       TurnSpeed;
	float       Frame;
	float       Fear;

	// Constructors

	// BW1W120 00824740 BW1M119 0104e2c0 (LHCombined Release)
	Fish(LHPoint* pos);

	// Destructor

	// BW1W120 00824700 BW1M119 010a1850 (LHCombined Release)
	~Fish();

	// Non-virtual methods

	// BW1W120 00824720 BW1M119 01092e10 (LHCombined Release)
	bool32_t Draw(LHPoint* target);
	// BW1W120 008248e0 BW1M119 010211f0 (LHCombined Release)
	bool32_t ComputePos(LHPoint* target);
};
static_assert(sizeof(Fish) == 0x24, "Data type is of wrong size");

// A shoal of fish swimming around its centre, which can be herded into a net to complete a challenge.
class FishRush
{
public:
	// The net drawn around a challenge's goal.
	struct PaulNet
	{
		LH3DObject* Object;                         /* 0x00 */
		LH3DMesh*   Mesh;                           /* 0x04 */
		LHPoint     Pos;                            /* 0x08 */
		LHPoint     Points[FISH_RUSH_NET_SEGMENTS]; /* 0x14 */
		float       Phase;                          /* 0x68 */
		float       Bob[FISH_RUSH_NET_SEGMENTS];    /* 0x6c */
		float       Size;                           /* 0x88 */
		bool32_t    Caught;                         /* 0x8c */

		// Constructors

		// BW1W120 00829a30 BW1M119 010c10f0 (LHCombined Release)
		PaulNet(LHPoint* pos, float radius);

		// Destructor

		// BW1W120 00829b20 BW1M119 010d7ad0 (LHCombined Release)
		~PaulNet();

		// Non-virtual methods

		// BW1W120 00829b50 BW1M119 010d7b80 (LHCombined Release)
		void Draw();
		// BW1W120 00829bc0 BW1M119 010bc4d0 (LHCombined Release)
		void PreDraw();
	};

	// A number of fish to be kept inside a circle for a while.
	struct Challenge
	{
		LHPoint  Pos;       /* 0x00 */
		float    Radius;    /* 0x0c */
		long     Target;    /* 0x10 */
		long     Duration;  /* 0x14 */
		bool32_t Done;      /* 0x18 */
		long     LastFrame; /* 0x1c */
		long     Count;     /* 0x20 */
		long     Time;      /* 0x24 */
		PaulNet* Net;       /* 0x28 */

		// Non-virtual methods

		// BW1W120 00824d90 BW1M119 010bdf90 (LHCombined Release)
		void Draw();
	};

	// Static members

	// BW1W120 00eb99f0 BW1M119 011f1e50 (LHCombined Release)
	static bool32_t g_b_er_valid;
	// BW1W120 00ea9f40 BW1M119 011f1e44 (LHCombined Release)
	static LHPoint g_emergency;
	// BW1W120 00eb99f4 BW1M119 011f1e40 (LHCombined Release)
	static FishRush* g_first;
	// BW1W120 00eb99f8 BW1M119 011f1e3c (LHCombined Release)
	static Challenge* g_challenge;

	Fish*      Fishes[FISH_RUSH_MAX_FISH]; /* 0x00 */
	LHPoint    Target;                     /* 0x3c */
	LHPoint    Center;                     /* 0x48 */
	float      TargetTime;                 /* 0x54 */
	float      Radius;                     /* 0x58 */
	Challenge* Goal;                       /* 0x5c */
	FishRush*  Next;                       /* 0x60 */
	float      Density;                    /* 0x64 */

	// Static methods

	// BW1W120 00824b10 BW1M119 010bb6d0 (LHCombined Release)
	static FishRush* CollideWithFish(LHPoint* pos);
	// BW1W120 00824b90 BW1M119 01013690 (LHCombined Release)
	static void DrawPreAll();
	// BW1W120 00824d60 BW1M119 0100b650 (LHCombined Release)
	static void DrawPostAll();

	// Non-virtual methods

	// BW1W120 00824da0 BW1M119 01020b70 (LHCombined Release)
	long Draw();
};
static_assert(sizeof(FishRush) == 0x68, "Data type is of wrong size");

#endif /* BW1_DECOMP_FISH_INCLUDED_H */
