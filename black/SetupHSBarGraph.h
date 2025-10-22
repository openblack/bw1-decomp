#ifndef BW1_DECOMP_SETUP_HS_BAR_GRAPH_INCLUDED_H
#define BW1_DECOMP_SETUP_HS_BAR_GRAPH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <uchar.h> /* For char16_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "SetupVBarGraph.h" /* For struct SetupVBarGraph */

// Forward Declares

struct SetupControl;

struct SetupHSBarGraph
{
  struct SetupVBarGraph super;  /* 0x0 */
};
static_assert(sizeof(struct SetupHSBarGraph) == 0x284, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bef078 mac inlined SetupHSBarGraph::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15SetupHSBarGraph asm("??_R0?AUSetupHSBarGraph@@@8");
// win1.41 009b04b8 mac inlined SetupHSBarGraph::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15SetupHSBarGraph asm("??_R1A@?0A@A@SetupHSBarGraph@@8");
// win1.41 009b04d0 mac inlined SetupHSBarGraph::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15SetupHSBarGraph asm("??_R2SetupHSBarGraph@@8");
// win1.41 009b04e8 mac inlined SetupHSBarGraph::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15SetupHSBarGraph asm("??_R3SetupHSBarGraph@@8");
// win1.41 008ffee0 mac 10731040 SetupHSBarGraph::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__15SetupHSBarGraph asm("??_R4SetupHSBarGraph@@6B@");
// win1.41 008ffee4 mac 10731048 SetupHSBarGraph::`vftable'
extern const struct SetupVBarGraphVftable __vt__15SetupHSBarGraph asm("??_7SetupHSBarGraph@@6B@");

// Constructors

// win1.41 inlined mac inlined SetupHSBarGraph::SetupHSBarGraph(int, int, int, int, int, wchar_t *)
struct SetupHSBarGraph* __fastcall __ct__15SetupHSBarGraphFiiiiiPw(struct SetupHSBarGraph* this, const void* edx, int id, int x, int y, int width, int height, const char16_t* label) asm("??0SetupHSBarGraph@@QAE@HHHHHPA_W@Z");

// Override methods

// win1.41 0040d3c0 mac 100df500 SetupHSBarGraph::Draw(bool, bool)
void __fastcall Draw__15SetupHSBarGraphFbb(struct SetupControl* this, const void* edx, bool hovered, bool selected) asm("?Draw@SetupHSBarGraph@@UAEX_N0@Z");
// win1.41 0056d960 mac 100cd050 SetupHSBarGraph::~SetupHSBarGraph(void)
void __fastcall __dt__15SetupHSBarGraphFb(struct SetupControl* this, const void* edx, bool param_1) asm("??_DSetupHSBarGraph@@QAEXXZ");
// win1.41 0040d9a0 mac 10130720 SetupHSBarGraph::SetScale(float)
void __fastcall SetScale__15SetupHSBarGraphFf(struct SetupVBarGraph* this, const void* edx, float scale) asm("?SetScale@SetupHSBarGraph@@UAEXM@Z");

#endif /* BW1_DECOMP_SETUP_HS_BAR_GRAPH_INCLUDED_H */
