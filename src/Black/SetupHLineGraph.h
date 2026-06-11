#ifndef BW1_DECOMP_SETUP_H_LINE_GRAPH_INCLUDED_H
#define BW1_DECOMP_SETUP_H_LINE_GRAPH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lhlib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */

#include "SetupButton.h" /* For struct SetupButton */
#include "SetupControl.h" /* For struct SetupControlVftable */

// Forward Declares

class SetupControl;

struct HLineData
{
    LH3DColor color; /* 0x0 */
    int point_count;
    float* points;

    // Constructors

    // win1.41 inlined mac inlined HLineData::HLineData(void)
    HLineData();

    // Non-virtual methods

    // win1.41 inlined mac inlined HLineData::operator=(const HLineData&)
    HLineData* operator=(const HLineData* other);
    // win1.41 0040da30 mac 10501060 HLineData::SetNum()
    void SetNum(int num);
};

class SetupHLineGraph: public SetupButton
{
public:
    LHLinkedList__HLineData line_data_list; /* 0x244 */
    float max_point;
    float min_point; /* 0x250 */
    bool percent_mode;

    // Override methods

    // win1.41 0040dab0 mac 101180e0 SetupHLineGraph::Draw(bool, bool)
    virtual void Draw(bool hovered, bool selected);
    // win1.41 0040e5a0 mac 101585b0 SetupHLineGraph::MouseUp(int, int, bool)
    virtual void MouseUp(int x, int y, bool param_3);
    // win1.41 0040e580 mac 10518860 SetupHLineGraph::KeyDown(int, int)
    virtual void KeyDown(LHKey key, LHKeyMod mod);
    // win1.41 0040e5c0 mac 0040e5c0 SetupHLineGraph::~SetupHLineGraph(void)
    virtual ~SetupHLineGraph();
    // win1.41 0040e5e0 mac 102a7a10 SetupHLineGraph::Reset(void)
    virtual void Reset();
    // win1.41 0040e650 mac 10211b80 SetupHLineGraph::SetScale(float, float, bool)
    virtual void SetScale(float max_point, float min_point, bool centered_at_zero);
    // win1.41 0040e730 mac 1010ccb0 SetupHLineGraph::AddLine(HLineData &)
    virtual void AddLine(const HLineData* line);
    // win1.41 0040e7f0 mac 100c9eb0 SetupHLineGraph::SetLine(int, const HLineData &)
    virtual void SetLine(int index, const HLineData* line);
    // win1.41 0040e850 mac 10372050 SetupHLineGraph::GetLine(int, HLineData &)
    virtual void GetLine(int index, HLineData* result);

    // Constructors

    // win1.41 0040e510 mac 103dcbb0 SetupHLineGraph::SetupHLineGraph(int, int, int, int, int, wchar_t *, bool)
    SetupHLineGraph(int id, int x, int y, int width, int height, const char16_t* label, bool percent_mode);
};

#endif /* BW1_DECOMP_SETUP_H_LINE_GRAPH_INCLUDED_H */
