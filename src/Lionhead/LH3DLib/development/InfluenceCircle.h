#ifndef BW1_DECOMP_INFLUENCE_CIRCLE_INCLUDED_H
#define BW1_DECOMP_INFLUENCE_CIRCLE_INCLUDED_H

struct LHPoint;

class InfluenceCircle
{
public:
	static void Draw(int mode); // 00826c90
	// BW1W120 00826c50 BW1M119 01047c00 (LHCombined Release)
	static void Reset();
	// BW1W120 00826fa0 BW1M119 010bede0 (LHCombined Release)
	static void Add(long player, const LHPoint& position, float influence);
};

#endif /* BW1_DECOMP_INFLUENCE_CIRCLE_INCLUDED_H */
