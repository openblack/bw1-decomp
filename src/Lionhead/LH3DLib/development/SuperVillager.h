#ifndef BW1_DECOMP_SUPER_VILLAGER_INCLUDED_H
#define BW1_DECOMP_SUPER_VILLAGER_INCLUDED_H

class LH3DAnimatedObject;

// Prefix view for traversal only; the complete allocation layout is not recovered.
class SuperVillager
{
public:
	// Original Mac symbol g_first__13SuperVillager.
	// BW1W120 00eb9a08 BW1M119 011f1e30 (LHCombined Release)
	static SuperVillager* g_first;
	unsigned int          field_0x0;
	LH3DAnimatedObject*   Object;
	SuperVillager*        Next; /* 0x8 */
	// BW1W120 00826180 BW1M119 imported
	void Release();
};

#endif /* BW1_DECOMP_SUPER_VILLAGER_INCLUDED_H */
