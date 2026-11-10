#ifndef BW1_DECOMP_HOW_MANY_PEOPLE_INCLUDED_H
#define BW1_DECOMP_HOW_MANY_PEOPLE_INCLUDED_H

#include "LHPoint.h" /* For struct LHPoint */

#define HOW_MANY_PEOPLE_TIME            8000
#define HOW_MANY_PEOPLE_FADE_OUT        7000
#define HOW_MANY_PEOPLE_FADE_TIME       1000
#define HOW_MANY_PEOPLE_ALL             -1
#define HOW_MANY_PEOPLE_FRAME           57
#define HOW_MANY_PEOPLE_ALPHA_REFERENCE 5
#define HOW_MANY_PEOPLE_SIZE            0.9f
#define HOW_MANY_PEOPLE_SPACING         1.3f
#define HOW_MANY_PEOPLE_COLOUR_IN       0xfff8d235
#define HOW_MANY_PEOPLE_COLOUR_OUT      0xff5c822f
#define HOW_MANY_PEOPLE_COLOUR_ALL      0xff4995a9

// Forward Declares

struct LH3DMaterial;
struct LH3DSprite;

class HowManyPeople
{
public:
	// Static data

	// BW1W120 00c383f0 BW1M119 011ceaa8 (LHCombined Release)
	static int g_alpha;
	// BW1W120 00ea9ee0 BW1M119 011f1da0 (LHCombined Release)
	static LHPoint g_dir;
	// BW1W120 00eb9aa0 BW1M119 011f1db0 (LHCombined Release)
	static LH3DSprite* g_sprites;
	// BW1W120 00eb9aa4 BW1M119 011f1dac (LHCombined Release)
	static long g_count;
	// BW1W120 00eb9aa8 BW1M119 011f1d9c (LHCombined Release)
	static int g_time;
	// BW1W120 00eb9aac BW1M119 011f1d98 (LHCombined Release)
	static LH3DMaterial* g_material;

	// Static methods

	// BW1W120 00829690 BW1M119 0109ffd0 (LHCombined Release)
	static void KnockKnock();
	// BW1W120 008296d0 BW1M119 0103c440 (LHCombined Release)
	static void Process();
	// BW1W120 00829780 BW1M119 01091a20 (LHCombined Release)
	static void Draw(long max_people, long people, LHPoint* pos);
};

#endif /* BW1_DECOMP_HOW_MANY_PEOPLE_INCLUDED_H */
