#ifndef BW1_DECOMP_SETUP_V_BAR_GRAPH_INCLUDED_H
#define BW1_DECOMP_SETUP_V_BAR_GRAPH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/Zoomer.h>    /* For struct Zoomer */
#include <Lionhead/LHLib/ver5.0/LHKey.h>            /* For enum LHKey, enum LHKeyMod */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>

#include "SetupButton.h"  /* For struct SetupButton */
#include "SetupControl.h" /* For struct SetupControlVftable */

// Forward Declares

class SetupControl;

struct VBarData
{
	LH3DColor color; /* 0x0 */
	float     value;

	// Constructors

	// BW1W120 inlined BW1M100 inlined VBarData::VBarData(const VBarData&)
	VBarData(const VBarData& bar) : color(bar.color), value(bar.value) {}

	// Non-virtual methods

	// BW1W120 inlined BW1M100 inlined VBarData::operator=(const VBarData&)
	VBarData& operator=(const VBarData& bar)
	{
		color = bar.color;
		value = bar.value;
		return *this;
	}
};

class SetupVBarGraph : public SetupButton
{
public:
	Zoomer                  zoomer;      /* 0x244 */
	LHLinkedList<VBarData*> BarDataList; /* 0x274 */
	float                   max_point;
	float                   min_point; /* 0x280 */

	// Override methods

	// BW1W120 0040e8b0 BW1M100 10379480 SetupVBarGraph::Draw(bool, bool)
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0040ef70 BW1M100 10350e50 SetupVBarGraph::KeyDown(int, int)
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 inlined BW1M100 103de920 SetupVBarGraph::~SetupVBarGraph(void)
	virtual ~SetupVBarGraph();
	// BW1W120 0040efb0 BW1M100 10347380 SetupVBarGraph::Reset(void)
	virtual void Reset();
	// BW1W120 0040f1b0 BW1M100 10351240 SetupVBarGraph::SetScale(float)
	virtual void SetScale(float scale);

	// Constructors

	// BW1W120 0040ef00 BW1M100 10354bc0 SetupVBarGraph::SetupVBarGraph(int, int, int, int, int, wchar_t*)
	SetupVBarGraph(int id, int x, int y, int width, int height, const char16_t* label);

	// Virtual methods

	// BW1W120 0040f280 BW1M100 103fccd0 SetupVBarGraph::AddBar(const VBarData&)
	virtual void AddBar(const VBarData& bar);
	// BW1W120 0040f300 BW1M100 10352240 SetupVBarGraph::SetBar(int, const VBarData&)
	virtual void SetBar(int index, const VBarData& bar);
	// BW1W120 0040f350 BW1M100 103f1500 SetupVBarGraph::GetBar(int, VBarData&)
	virtual void GetBar(int index, VBarData& result);
};

#include <new>
#include <Lionhead/LHLib/ver5.0/LHWin.h>
#include "AlexMfc.h"

// BW1W120 0040ef00 BW1M100 10354bc0 SetupVBarGraph::SetupVBarGraph(int, int, int, int, int, wchar_t*)
inline SetupVBarGraph::SetupVBarGraph(int id, int x, int y, int width, int height, const char16_t* label)
	: SetupButton(id, x, y, width, height, label, 0)
{
	pressed = false;
	min_point = 0.0f;
	max_point = 0.0f;
	text_size = GetSmallTextSize();
	Reset();
}

// BW1W120 0040ef70 BW1M100 10350e50 SetupVBarGraph::KeyDown(int, int)
inline void SetupVBarGraph::KeyDown(LHKey key, LHKeyMod mod)
{
	if (setup_box != NULL)
		setup_box->fn_00409170(key, mod);
}

// BW1W120 inlined BW1M100 103de920 SetupVBarGraph::~SetupVBarGraph(void)
inline SetupVBarGraph::~SetupVBarGraph() {}

// BW1W120 0040efb0 BW1M100 10347380 SetupVBarGraph::Reset(void)
inline void SetupVBarGraph::Reset()
{
	while (BarDataList.GetStart() != NULL)
	{
		VBarData* bar = BarDataList.GetStart()->payload;
		BarDataList.Remove(bar);
		delete bar;
	}
	zoomer.SetPosition(0.0f);
	zoomer.SetDestinationWithSpeedAndTime(1.0f, 0.0f, 0.5f);
	min_point = 0.0f;
	max_point = 0.0f;
}

// BW1W120 0040f1b0 BW1M100 10351240 SetupVBarGraph::SetScale(float)
inline void SetupVBarGraph::SetScale(float scale)
{
	VBarData* bar;
	if (scale <= 0.0f)
	{
		scale = 0.0f;
		for (bar = BarDataList.FindNext(NULL); bar != NULL; bar = BarDataList.FindNext(bar))
		{
			if (scale < bar->value)
				scale = bar->value;
		}
		if (scale <= 0.0f)
			scale = 1.0f;
	}
	max_point = scale;
	min_point = 0.0f;
	for (bar = BarDataList.FindNext(NULL); bar != NULL; bar = BarDataList.FindNext(bar))
	{
		if (min_point > bar->value)
			min_point = bar->value;
	}
}

// BW1W120 0040f280 BW1M100 103fccd0 SetupVBarGraph::AddBar(const VBarData&)
inline void SetupVBarGraph::AddBar(const VBarData& bar)
{
	BarDataList.AddToEnd(new ("C:\\dev\\MP\\Black\\alexmfc.cpp", 0x890) VBarData(bar));
}

// BW1W120 0040f300 BW1M100 10352240 SetupVBarGraph::SetBar(int, const VBarData&)
inline void SetupVBarGraph::SetBar(int index, const VBarData& bar)
{
	if (index >= 0 && index < (int)BarDataList.count)
	{
		LHLinkedNode<VBarData*>* node = BarDataList.GetStart();
		if (node != NULL)
		{
			while (index-- > 0)
				node = node->next.Get();
			if (node != NULL && node->payload != NULL)
			{
				node->payload->color = bar.color;
				node->payload->value = bar.value;
			}
		}
	}
}

// BW1W120 0040f350 BW1M100 103f1500 SetupVBarGraph::GetBar(int, VBarData&)
inline void SetupVBarGraph::GetBar(int index, VBarData& result)
{
	if (index >= 0 && index < (int)BarDataList.count)
	{
		LHLinkedNode<VBarData*>* node = BarDataList.GetStart();
		if (node != NULL)
		{
			while (index-- > 0)
				node = node->next.Get();
			if (node != NULL && node->payload != NULL)
			{
				result.color = node->payload->color;
				result.value = node->payload->value;
			}
		}
	}
}

#endif /* BW1_DECOMP_SETUP_V_BAR_GRAPH_INCLUDED_H */
