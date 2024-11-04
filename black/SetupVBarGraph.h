#ifndef BW1_DECOMP_SETUP_V_BAR_GRAPH_INCLUDED_H
#define BW1_DECOMP_SETUP_V_BAR_GRAPH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lh3dlib/development/Zoomer.h> /* For struct Zoomer */
#include <lionhead/lhlib/VER5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

#include "SetupButton.h" /* For struct SetupButton */
#include "SetupControl.h" /* For struct SetupControlVftable */

// Forward Declares

struct SetupVBarGraph;

struct VBarData
{
  struct LH3DColor color;  /* 0x0 */
  float value;
};
static_assert(sizeof(struct VBarData) == 0x8, "Data type is of wrong size");

// Constructors

// win1.41 inlined mac inlined VBarData::VBarData(const VBarData &)
struct VBarData* __fastcall __ct__8VBarDataFRC8VBarData(struct VBarData* this, const void* edx, const struct VBarData* bar);

// Non-virtual methods

// win1.41 inlined mac inlined VBarData::operator=(const VBarData &)
struct VBarData* __fastcall __as__8VBarDataFRC8VBarData(struct VBarData* this, const void* edx, const struct VBarData* bar);

DECLARE_LH_LINKED_LIST(VBarData);

struct SetupVBarGraphVftable
{
  struct SetupControlVftable super;  /* 0x0 */
  void (__fastcall* Reset)(struct SetupVBarGraph* this);  /* 0x34 */
  void (__fastcall* SetScale)(struct SetupVBarGraph* this, const void* edx, float scale);
  void (__fastcall* AddLine)(struct SetupVBarGraph* this, const void* edx, const struct VBarData* line);
  void (__fastcall* SetLine)(struct SetupVBarGraph* this, const void* edx, int index, const struct VBarData* line);  /* 0x40 */
  void (__fastcall* GetLine)(const struct SetupVBarGraph* this, const void* edx, int index, struct VBarData* result);
};
static_assert(sizeof(struct SetupVBarGraphVftable) == 0x48, "Data type is of wrong size");

struct SetupVBarGraph
{
  struct SetupButton super;  /* 0x0 */
  struct Zoomer zoomer;  /* 0x244 */
  struct LHLinkedList__VBarData bar_data_list;  /* 0x274 */
  float max_point;
  float min_point;  /* 0x280 */
};
static_assert(sizeof(struct SetupVBarGraph) == 0x284, "Data type is of wrong size");

static struct SetupVBarGraphVftable* const __vt__14SetupVBarGraph = (struct SetupVBarGraphVftable* const)0x008ab480;

// Constructors

// win1.41 0040ef00 mac 10354bc0 SetupVBarGraph::SetupVBarGraph(int, int, int, int, int, wchar_t *)
struct SetupVBarGraph* __fastcall __ct__14SetupVBarGraphFiiiiiPw(struct SetupVBarGraph* this, const void* edx, int id, int x, int y, int width, int height, const char16_t* label);

// Non-virtual methods

// win1.41 0040f280 mac 103fccd0 SetupVBarGraph::AddBar(const VBarData &)
void __fastcall AddBar__14SetupVBarGraphFRC8VBarData(struct SetupVBarGraph* this, const void* edx, const struct VBarData* bar);
// win1.41 0040f300 mac 10352240 SetupVBarGraph::SetBar(int, const VBarData &)
void __fastcall SetBar__14SetupVBarGraphFiRC8VBarData(struct SetupVBarGraph* this, const void* edx, int index, const struct VBarData* bar);
// win1.41 0040f350 mac 103f1500 SetupVBarGraph::GetBar(int, VBarData &)
void __fastcall GetBar__14SetupVBarGraphFiR8VBarData(const struct SetupVBarGraph* this, const void* edx, int index, struct VBarData* result);

// Override methods

// win1.41 0040e8b0 mac 10379480 SetupVBarGraph::Draw(bool, bool)
void __fastcall Draw__14SetupVBarGraphFbb(struct SetupVBarGraph* this, const void* edx, bool hovered, bool selected);
// win1.41 0040ef70 mac 10350e50 SetupVBarGraph::KeyDown(int, int)
void __fastcall KeyDown__14SetupVBarGraphFii(struct SetupVBarGraph* this, const void* edx, enum LHKey key, enum LHKeyMod mod);
// win1.41 0040ef90 mac 103de920 SetupVBarGraph::~SetupVBarGraph(void)
struct SetupVBarGraph* __fastcall __dt__14SetupVBarGraphFb(struct SetupVBarGraph* this, const void* edx, bool param_1);
// win1.41 0040efb0 mac inlined SetupVBarGraph::Reset(vfoid)
void __fastcall Reset__14SetupVBarGraphFv(struct SetupVBarGraph* this);
// win1.41 0040f1b0 mac 10351240 SetupVBarGraph::SetScale(float)
void __fastcall SetScale__14SetupVBarGraphFf(struct SetupVBarGraph* this, const void* edx, float scale);

#endif /* BW1_DECOMP_SETUP_V_BAR_GRAPH_INCLUDED_H */
