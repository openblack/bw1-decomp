#ifndef BW1_DECOMP_SETUP_HS_BAR_GRAPH_INCLUDED_H
#define BW1_DECOMP_SETUP_HS_BAR_GRAPH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <uchar.h>  /* For char16_t */

#include "SetupVBarGraph.h" /* For struct SetupVBarGraph */

// Forward Declares

class SetupControl;

class SetupHSBarGraph : public SetupVBarGraph
{
public:
	// Override methods

	// BW1W120 0040d3c0 BW1M100 100df500 SetupHSBarGraph::Draw(bool, bool)
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0056d960 BW1M100 100cd050 SetupHSBarGraph::~SetupHSBarGraph(void)
	virtual ~SetupHSBarGraph();
	// BW1W120 0040d9a0 BW1M100 10130720 SetupHSBarGraph::SetScale(float)
	virtual void SetScale(float scale);

	// Constructors

	// BW1W120 inlined BW1M100 inlined SetupHSBarGraph::SetupHSBarGraph(int, int, int, int, int, wchar_t *)
	SetupHSBarGraph(int id, int x, int y, int width, int height, const char16_t* label);
};

#include <math.h>

// BW1W120 0040d9a0 BW1M100 10130720 SetupHSBarGraph::SetScale(float)
inline void SetupHSBarGraph::SetScale(float scale)
{
	if (scale <= 0.0f)
	{
		scale = 0.0f;
		for (VBarData* bar = BarDataList.FindNext(NULL); bar != NULL; bar = BarDataList.FindNext(bar))
			scale += (float)fabs(bar->value);
		if (scale <= 0.0f)
			scale = 1.0f;
	}
	max_point = scale;
}

#endif /* BW1_DECOMP_SETUP_HS_BAR_GRAPH_INCLUDED_H */
