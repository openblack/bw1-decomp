#ifndef BW1_DECOMP_EVIL_OR_ANGEL_INCLUDED_H
#define BW1_DECOMP_EVIL_OR_ANGEL_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <re_common.h> /* For bool32_t */

// Forward Declares

struct LH3DAnim;
class LH3DObject;

// The ghost animations; the DEAD1 ones follow a villager that died playing M_P_DEAD1.
enum EVIL_OR_ANGEL_ANIM
{
	EVIL_OR_ANGEL_ANIM_ANGEL,
	EVIL_OR_ANGEL_ANIM_ANGEL_DEAD1,
	EVIL_OR_ANGEL_ANIM_EVIL,
	EVIL_OR_ANGEL_ANIM_EVIL_DEAD1,
	EVIL_OR_ANGEL_ANIM_LAST
};

class EvilOrAngel
{
public:
	// Static members

	// BW1W120 00eb9a7c BW1M119 011f1dc4 (LHCombined Release)
	static EvilOrAngel* g_first;
	// BW1W120 00eb9a80 BW1M119 011cea94 (LHCombined Release)
	static LH3DAnim* g_list[EVIL_OR_ANGEL_ANIM_LAST];

	EvilOrAngel* Next;
	LH3DObject*  Object;
	long         Time;

	// Constructors

	// BW1W120 00828790 BW1M119 01092770 (LHCombined Release)
	EvilOrAngel(LH3DObject* villager, long mesh, bool32_t child);

	// Destructor

	// BW1W120 00828900 BW1M119 0107ab20 (LHCombined Release)
	~EvilOrAngel();

	// Static methods

	// BW1W120 00828950 BW1M119 0100ada0 (LHCombined Release)
	static void DrawAll();

	// Non-virtual methods

	// BW1W120 00828990 BW1M119 0112bd60 (LHCombined Release)
	bool32_t Draw();
};
static_assert(sizeof(EvilOrAngel) == 0xc, "Data type is of wrong size");

#endif /* BW1_DECOMP_EVIL_OR_ANGEL_INCLUDED_H */
