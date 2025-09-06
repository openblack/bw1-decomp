#ifndef BW1_DECOMP_SETUP_HS_BAR_GRAPH_INCLUDED_H
#define BW1_DECOMP_SETUP_HS_BAR_GRAPH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <uchar.h> /* For char16_t */

#include "SetupVBarGraph.h" /* For struct SetupVBarGraph */

// Forward Declares

struct SetupControl;

struct SetupHSBarGraph
{
  struct SetupVBarGraph super;  /* 0x0 */
};
static_assert(sizeof(struct SetupHSBarGraph) == 0x284, "Data type is of wrong size");

// win1.41 008ffee0 mac 10731040 SetupHSBarGraph::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__15SetupHSBarGraph asm("??_R4SetupHSBarGraph@@6B@");

// win1.41 008ffee4 mac 10731048 SetupHSBarGraph::`vftable'
extern const struct SetupVBarGraphVftable __vt__15SetupHSBarGraph asm("??_7SetupHSBarGraph@@6B@");

// Constructors

// win1.41 inlined mac inlined SetupHSBarGraph::SetupHSBarGraph(int, int, int, int, int, wchar_t *)
struct SetupHSBarGraph* __fastcall __ct__15SetupHSBarGraphFiiiiiPw(struct SetupHSBarGraph* this, const void* edx, int id, int x, int y, int width, int height, const char16_t* label);

// Override methods

// win1.41 0040d3c0 mac 100df500 SetupHSBarGraph::Draw(bool, bool)
void __fastcall Draw__15SetupHSBarGraphFbb(struct SetupControl* this, const void* edx, bool hovered, bool selected);
// win1.41 0056d960 mac 100cd050 SetupHSBarGraph::~SetupHSBarGraph(void)
void __fastcall __dt__15SetupHSBarGraphFb(struct SetupControl* this, const void* edx, bool param_1);
// win1.41 0040d9a0 mac 10130720 SetupHSBarGraph::SetScale(float)
void __fastcall SetScale__15SetupHSBarGraphFf(struct SetupVBarGraph* this, const void* edx, float scale);

#endif /* BW1_DECOMP_SETUP_HS_BAR_GRAPH_INCLUDED_H */
