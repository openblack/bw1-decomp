#ifndef BW1_DECOMP_INFLUENCE_CIRCLE_INCLUDED_H
#define BW1_DECOMP_INFLUENCE_CIRCLE_INCLUDED_H

struct LHPoint;

class InfluenceCircle
{
public:
	// BW1W120 00826c50 BW1M100 imported InfluenceCircle::Reset(void)
	static void Reset();
	// BW1W120 00826fa0 BW1M100 imported InfluenceCircle::Add(long, LHPoint const &, float)
	static void Add(long player, const LHPoint& position, float influence);
};

#endif /* BW1_DECOMP_INFLUENCE_CIRCLE_INCLUDED_H */
