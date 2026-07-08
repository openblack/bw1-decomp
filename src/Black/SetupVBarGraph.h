#ifndef BW1_DECOMP_SETUP_V_BAR_GRAPH_INCLUDED_H
#define BW1_DECOMP_SETUP_V_BAR_GRAPH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/Zoomer.h>    /* For struct Zoomer */
#include <Lionhead/LHLib/ver5.0/LHKey.h>            /* For enum LHKey, enum LHKeyMod */

#include "SetupButton.h"  /* For struct SetupButton */
#include "SetupControl.h" /* For struct SetupControlVftable */

// Forward Declares

class SetupControl;

struct VBarData
{
	LH3DColor color; /* 0x0 */
	float     value;

	// Constructors

	// BW1W120 inlined BW1M100 inlined VBarData::VBarData(const VBarData &)
	VBarData(const VBarData* bar);

	// Non-virtual methods

	// BW1W120 inlined BW1M100 inlined VBarData::operator=(const VBarData &)
	VBarData* operator=(const VBarData* bar);
};

class SetupVBarGraph : public SetupButton
{
public:
	Zoomer                 zoomer;        /* 0x244 */
	LHLinkedList__VBarData bar_data_list; /* 0x274 */
	float                  max_point;
	float                  min_point; /* 0x280 */

	// Override methods

	// BW1W120 0040e8b0 BW1M100 10379480 SetupVBarGraph::Draw(bool, bool)
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0040ef70 BW1M100 10350e50 SetupVBarGraph::KeyDown(int, int)
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 0040ef90 BW1M100 103de920 SetupVBarGraph::~SetupVBarGraph(void)
	virtual ~SetupVBarGraph();
	// BW1W120 0040efb0 BW1M100 inlined SetupVBarGraph::Reset(vfoid)
	virtual void Reset();
	// BW1W120 0040f1b0 BW1M100 10351240 SetupVBarGraph::SetScale(float)
	virtual void SetScale(float scale);

	// Constructors

	// BW1W120 0040ef00 BW1M100 10354bc0 SetupVBarGraph::SetupVBarGraph(int, int, int, int, int, wchar_t *)
	SetupVBarGraph(int id, int x, int y, int width, int height, const char16_t* label);

	// Non-virtual methods

	// BW1W120 0040f280 BW1M100 103fccd0 SetupVBarGraph::AddBar(const VBarData &)
	void AddBar(const VBarData* bar);
	// BW1W120 0040f300 BW1M100 10352240 SetupVBarGraph::SetBar(int, const VBarData &)
	void SetBar(int index, const VBarData* bar);
	// BW1W120 0040f350 BW1M100 103f1500 SetupVBarGraph::GetBar(int, VBarData &)
	void GetBar(int index, VBarData* result);
};

#endif /* BW1_DECOMP_SETUP_V_BAR_GRAPH_INCLUDED_H */
