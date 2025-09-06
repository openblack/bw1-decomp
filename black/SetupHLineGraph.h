#ifndef BW1_DECOMP_SETUP_H_LINE_GRAPH_INCLUDED_H
#define BW1_DECOMP_SETUP_H_LINE_GRAPH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

#include "SetupButton.h" /* For struct SetupButton */
#include "SetupControl.h" /* For struct SetupControlVftable */

// Forward Declares

struct SetupControl;
enum LHKey;
enum LHKeyMod;
struct SetupHLineGraph;

struct HLineData
{
  struct LH3DColor color;  /* 0x0 */
  int point_count;
  float* points;
};
static_assert(sizeof(struct HLineData) == 0xc, "Data type is of wrong size");

// Constructors

// win1.41 inlined mac inlined HLineData::HLineData(void)
struct HLineData* __fastcall __ct__9HLineDataFv(struct HLineData* this);

// Non-virtual methods

// win1.41 inlined mac inlined HLineData::operator=(const HLineData&)
struct HLineData* __fastcall __as__9HLineDataFRC9HLineData(struct HLineData* this, const void* edx, const struct HLineData* other);
// win1.41 0040da30 mac 10501060 HLineData::SetNum()
void __fastcall SetNum__9HLineDataFi(struct HLineData* this, const void* edx, int num);

DECLARE_LH_LINKED_LIST(HLineData);

struct SetupHLineGraphVftable
{
  struct SetupControlVftable super;  /* 0x0 */
  void (__fastcall* Reset)(struct SetupHLineGraph* this);  /* 0x34 */
  void (__fastcall* SetScale)(struct SetupHLineGraph* this, const void* edx, float max_point, float min_point, bool centered_at_zero);
  void (__fastcall* AddLine)(struct SetupHLineGraph* this, const void* edx, const struct HLineData* line);
  void (__fastcall* SetLine)(struct SetupHLineGraph* this, const void* edx, int index, const struct HLineData* line);  /* 0x40 */
  void (__fastcall* GetLine)(const struct SetupHLineGraph* this, const void* edx, int index, struct HLineData* result);
};
static_assert(sizeof(struct SetupHLineGraphVftable) == 0x48, "Data type is of wrong size");

struct SetupHLineGraph
{
  struct SetupButton super;  /* 0x0 */
  struct LHLinkedList__HLineData line_data_list;  /* 0x244 */
  float max_point;
  float min_point;  /* 0x250 */
  bool percent_mode;
};
static_assert(sizeof(struct SetupHLineGraph) == 0x258, "Data type is of wrong size");

// win1.41 008ab420 mac 10730fcc SetupHLineGraph::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__15SetupHLineGraph asm("??_R4SetupHLineGraph@@6B@");

// win1.41 008ab424 mac 10730fd4 SetupHLineGraph::`vftable'
extern const struct SetupHLineGraphVftable __vt__15SetupHLineGraph asm("??_7SetupHLineGraph@@6B@");

// Constructors

// win1.41 0040e510 mac 103dcbb0 SetupHLineGraph::SetupHLineGraph(int, int, int, int, int, wchar_t *, bool)
struct SetupHLineGraph* __fastcall __ct__15SetupHLineGraphFiiiiiPwb(struct SetupHLineGraph* this, const void* edx, int id, int x, int y, int width, int height, const char16_t* label, bool percent_mode);

// Override methods

// win1.41 0040dab0 mac 101180e0 SetupHLineGraph::Draw(bool, bool)
void __fastcall Draw__15SetupHLineGraphFbb(struct SetupControl* this, const void* edx, bool hovered, bool selected);
// win1.41 0040e5a0 mac 101585b0 SetupHLineGraph::MouseUp(int, int, bool)
void __fastcall MouseUp__15SetupHLineGraphFiib(struct SetupControl* this, const void* edx, int x, int y, bool param_3);
// win1.41 0040e580 mac 10518860 SetupHLineGraph::KeyDown(int, int)
void __fastcall KeyDown__15SetupHLineGraphFii(struct SetupControl* this, const void* edx, enum LHKey key, enum LHKeyMod mod);
// win1.41 0040e5c0 mac 0040e5c0 SetupHLineGraph::~SetupHLineGraph(void)
void __fastcall __dt__15SetupHLineGraphFb(struct SetupControl* this, const void* edx, bool param_1);
// win1.41 0040e5e0 mac 102a7a10 SetupHLineGraph::Reset(void)
void __fastcall Reset__15SetupHLineGraphFv(struct SetupHLineGraph* this);
// win1.41 0040e650 mac 10211b80 SetupHLineGraph::SetScale(float, float, bool)
void __fastcall SetScale__15SetupHLineGraphFffb(struct SetupHLineGraph* this, const void* edx, float max_point, float min_point, bool centered_at_zero);
// win1.41 0040e730 mac 1010ccb0 SetupHLineGraph::AddLine(HLineData &)
void __fastcall AddLine__15SetupHLineGraphFR9HLineData(struct SetupHLineGraph* this, const void* edx, const struct HLineData* line);
// win1.41 0040e7f0 mac 100c9eb0 SetupHLineGraph::SetLine(int, const HLineData &)
void __fastcall SetLine__15SetupHLineGraphFiR9HLineData(struct SetupHLineGraph* this, const void* edx, int index, const struct HLineData* line);
// win1.41 0040e850 mac 10372050 SetupHLineGraph::GetLine(int, HLineData &)
void __fastcall GetLine__15SetupHLineGraphFiR9HLineData(const struct SetupHLineGraph* this, const void* edx, int index, struct HLineData* result);

#endif /* BW1_DECOMP_SETUP_H_LINE_GRAPH_INCLUDED_H */
