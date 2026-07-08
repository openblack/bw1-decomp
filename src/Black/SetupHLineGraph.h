#ifndef BW1_DECOMP_SETUP_H_LINE_GRAPH_INCLUDED_H
#define BW1_DECOMP_SETUP_H_LINE_GRAPH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LHLib/ver5.0/LHKey.h>            /* For enum LHKey, enum LHKeyMod */

#include "SetupButton.h"  /* For struct SetupButton */
#include "SetupControl.h" /* For struct SetupControlVftable */

// Forward Declares

class SetupControl;

struct HLineData
{
	LH3DColor color; /* 0x0 */
	int       PointCount;
	float*    points;

	// Constructors

	// BW1W120 inlined BW1M100 inlined HLineData::HLineData(void)
	HLineData();

	// Non-virtual methods

	// BW1W120 inlined BW1M100 inlined HLineData::operator=(const HLineData&)
	HLineData* operator=(const HLineData* other);
	// BW1W120 0040da30 BW1M100 10501060 HLineData::SetNum()
	void SetNum(int num);
};

class SetupHLineGraph : public SetupButton
{
public:
	LHLinkedList__HLineData LineDataList; /* 0x244 */
	float                   max_point;
	float                   min_point; /* 0x250 */
	bool                    percent_mode;

	// Override methods

	// BW1W120 0040dab0 BW1M100 101180e0 SetupHLineGraph::Draw(bool, bool)
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0040e5a0 BW1M100 101585b0 SetupHLineGraph::MouseUp(int, int, bool)
	virtual void MouseUp(int x, int y, bool param_3);
	// BW1W120 0040e580 BW1M100 10518860 SetupHLineGraph::KeyDown(int, int)
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 0040e5c0 BW1M100 0040e5c0 SetupHLineGraph::~SetupHLineGraph(void)
	virtual ~SetupHLineGraph();
	// BW1W120 0040e5e0 BW1M100 102a7a10 SetupHLineGraph::Reset(void)
	virtual void Reset();
	// BW1W120 0040e650 BW1M100 10211b80 SetupHLineGraph::SetScale(float, float, bool)
	virtual void SetScale(float max_point, float min_point, bool centered_at_zero);
	// BW1W120 0040e730 BW1M100 1010ccb0 SetupHLineGraph::AddLine(HLineData &)
	virtual void AddLine(const HLineData* line);
	// BW1W120 0040e7f0 BW1M100 100c9eb0 SetupHLineGraph::SetLine(int, const HLineData &)
	virtual void SetLine(int index, const HLineData* line);
	// BW1W120 0040e850 BW1M100 10372050 SetupHLineGraph::GetLine(int, HLineData &)
	virtual void GetLine(int index, HLineData* result);

	// Constructors

	// BW1W120 0040e510 BW1M100 103dcbb0 SetupHLineGraph::SetupHLineGraph(int, int, int, int, int, wchar_t *, bool)
	SetupHLineGraph(int id, int x, int y, int width, int height, const char16_t* label, bool percent_mode);
};

#endif /* BW1_DECOMP_SETUP_H_LINE_GRAPH_INCLUDED_H */
