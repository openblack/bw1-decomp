#ifndef BW1_DECOMP_SETUP_H_LINE_GRAPH_INCLUDED_H
#define BW1_DECOMP_SETUP_H_LINE_GRAPH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LHLib/ver5.0/LHKey.h>            /* For enum LHKey, enum LHKeyMod */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>

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
	HLineData() : color(0), PointCount(0), points(NULL) {}

	// Non-virtual methods

	// BW1W120 inlined BW1M100 inlined HLineData::operator=(const HLineData&)
	HLineData& operator=(const HLineData& other)
	{
		// SetLine/GetLine use shallow assignment; AddLine explicitly deep-copies.
		color = other.color;
		PointCount = other.PointCount;
		points = other.points;
		return *this;
	}
	// BW1W120 0040da30 BW1M100 10501060 HLineData::SetNum(int)
	void SetNum(int num);
};

class SetupHLineGraph : public SetupButton
{
public:
	LHLinkedList<HLineData*> LineDataList; /* 0x244 */
	float                    max_point;
	float                    min_point; /* 0x250 */
	bool                     percent_mode;

	// Override methods

	// BW1W120 0040dab0 BW1M100 101180e0 SetupHLineGraph::Draw(bool, bool)
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0040e5a0 BW1M100 101585b0 SetupHLineGraph::MouseUp(int, int, bool)
	virtual void MouseUp(int x, int y, bool param_3);
	// BW1W120 0040e580 BW1M100 10518860 SetupHLineGraph::KeyDown(int, int)
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 inlined BW1M100 1040f570 SetupHLineGraph::~SetupHLineGraph(void)
	virtual ~SetupHLineGraph();
	// BW1W120 0040e5e0 BW1M100 102a7a10 SetupHLineGraph::Reset(void)
	virtual void Reset();
	// BW1W120 0040e650 BW1M100 10211b80 SetupHLineGraph::SetScale(float, float, bool)
	virtual void SetScale(float max_point, float min_point, bool centered_at_zero);
	// BW1W120 0040e730 BW1M100 1010ccb0 SetupHLineGraph::AddLine(HLineData&)
	virtual void AddLine(HLineData& line);
	// BW1W120 0040e7f0 BW1M100 100c9eb0 SetupHLineGraph::SetLine(int, HLineData&)
	virtual void SetLine(int index, HLineData& line);
	// BW1W120 0040e850 BW1M100 10372050 SetupHLineGraph::GetLine(int, HLineData&)
	virtual void GetLine(int index, HLineData& result);

	// Constructors

	// BW1W120 0040e510 BW1M100 103dcbb0 SetupHLineGraph::SetupHLineGraph(int, int, int, int, int, wchar_t*, bool)
	SetupHLineGraph(int id, int x, int y, int width, int height, const char16_t* label, bool percent_mode);
};

#include <new>
#include <string.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h>
#include <SetupThing/Setup.h>

// BW1W120 0040da30 BW1M100 10501060 HLineData::SetNum(int)
inline void HLineData::SetNum(int num)
{
	if (num < 0)
		num = 0;
	float* newPoints = (float*)operator new(num * sizeof(float), "C:\\dev\\MP\\Black\\alexmfc.cpp", 0x76d);
	memset(newPoints, 0, num * sizeof(float));
	memcpy(newPoints, points, (num < PointCount ? num : PointCount) * sizeof(float));
	delete[] points;
	PointCount = num;
	points = newPoints;
}

// BW1W120 0040e510 BW1M100 103dcbb0 SetupHLineGraph::SetupHLineGraph(int, int, int, int, int, wchar_t*, bool)
inline SetupHLineGraph::SetupHLineGraph(int id, int x, int y, int width, int height, const char16_t* label,
                                        bool percent_mode)
	: SetupButton(id, x, y, width, height, label, 0)
{
	pressed = false;
	text_size = GetSmallTextSize();
	this->percent_mode = percent_mode;
	Reset();
}

// BW1W120 0040e580 BW1M100 10518860 SetupHLineGraph::KeyDown(int, int)
inline void SetupHLineGraph::KeyDown(LHKey key, LHKeyMod mod)
{
	if (setup_box != NULL)
		setup_box->fn_00409170(key, mod);
}

// BW1W120 0040e5a0 BW1M100 101585b0 SetupHLineGraph::MouseUp(int, int, bool)
inline void SetupHLineGraph::MouseUp(int x, int y, bool param_3)
{
	if (param_3)
		percent_mode = !percent_mode;
}

// BW1W120 inlined BW1M100 1040f570 SetupHLineGraph::~SetupHLineGraph(void)
inline SetupHLineGraph::~SetupHLineGraph() {}

// BW1W120 0040e5e0 BW1M100 102a7a10 SetupHLineGraph::Reset(void)
inline void SetupHLineGraph::Reset()
{
	while (LineDataList.GetStart() != NULL)
	{
		HLineData* line = LineDataList.GetStart()->payload;
		LineDataList.Remove(line);
		if (line != NULL)
		{
			delete[] line->points;
			delete line;
		}
	}
}

// BW1W120 0040e650 BW1M100 10211b80 SetupHLineGraph::SetScale(float, float, bool)
inline void SetupHLineGraph::SetScale(float max_point, float min_point, bool centered_at_zero)
{
	// The -1e10 constant is the four bytes after the graph's actual vtable,
	// currently included in its inferred objdiff symbol extent.
	if (max_point <= 0.0f)
	{
		max_point = -1.0e10f;
		min_point = 1.0e10f;
		for (HLineData* line = LineDataList.FindNext(NULL); line != NULL; line = LineDataList.FindNext(line))
		{
			for (int index = 0; index < line->PointCount; ++index)
			{
				if (max_point < line->points[index])
					max_point = line->points[index];
				if (line->points[index] < min_point)
					min_point = line->points[index];
			}
		}
	}
	if (min_point >= max_point || centered_at_zero)
		min_point = 0.0f;
	if (max_point <= min_point)
		max_point = min_point + 1.0f;
	this->max_point = max_point;
	this->min_point = min_point;
}

// BW1W120 0040e730 BW1M100 1010ccb0 SetupHLineGraph::AddLine(HLineData&)
inline void SetupHLineGraph::AddLine(HLineData& line)
{
	// AddLine deep-copies samples; SetLine/GetLine below are shallow.
	HLineData* copy = new ("C:\\dev\\MP\\Black\\alexmfc.cpp", 0x824) HLineData;
	if (copy != NULL)
	{
		copy->color = line.color;
		copy->SetNum(line.PointCount);
		memcpy(copy->points, line.points, line.PointCount * sizeof(float));
	}
	LineDataList.AddToEnd(copy);
}

// BW1W120 0040e7f0 BW1M100 100c9eb0 SetupHLineGraph::SetLine(int, HLineData&)
inline void SetupHLineGraph::SetLine(int index, HLineData& line)
{
	if (index >= 0 && index < (int)LineDataList.count)
	{
		LHLinkedNode<HLineData*>* node = LineDataList.GetStart();
		if (node != NULL)
		{
			while (index-- > 0)
				node = node->next.Get();
			if (node != NULL && node->payload != NULL)
			{
				node->payload->color = line.color;
				node->payload->PointCount = line.PointCount;
				node->payload->points = line.points;
			}
		}
	}
}

// BW1W120 0040e850 BW1M100 10372050 SetupHLineGraph::GetLine(int, HLineData&)
inline void SetupHLineGraph::GetLine(int index, HLineData& result)
{
	if (index >= 0 && index < (int)LineDataList.count)
	{
		LHLinkedNode<HLineData*>* node = LineDataList.GetStart();
		if (node != NULL)
		{
			while (index-- > 0)
				node = node->next.Get();
			if (node != NULL && node->payload != NULL)
			{
				result.color = node->payload->color;
				result.PointCount = node->payload->PointCount;
				result.points = node->payload->points;
			}
		}
	}
}

#endif /* BW1_DECOMP_SETUP_H_LINE_GRAPH_INCLUDED_H */
