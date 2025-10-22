#ifndef BW1_DECOMP_SETUP_V_BAR_GRAPH_INCLUDED_H
#define BW1_DECOMP_SETUP_V_BAR_GRAPH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lh3dlib/development/Zoomer.h> /* For struct Zoomer */
#include <lionhead/lhlib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "SetupButton.h" /* For struct SetupButton */
#include "SetupControl.h" /* For struct SetupControlVftable */

// Forward Declares

struct SetupControl;
struct SetupVBarGraph;

struct VBarData
{
  struct LH3DColor color;  /* 0x0 */
  float value;
};
static_assert(sizeof(struct VBarData) == 0x8, "Data type is of wrong size");

// Constructors

// win1.41 inlined mac inlined VBarData::VBarData(const VBarData &)
struct VBarData* __fastcall __ct__8VBarDataFRC8VBarData(struct VBarData* this, const void* edx, const struct VBarData* bar) asm("??0VBarData@@QAE@ABV0@@Z");

// Non-virtual methods

// win1.41 inlined mac inlined VBarData::operator=(const VBarData &)
struct VBarData* __fastcall __as__8VBarDataFRC8VBarData(struct VBarData* this, const void* edx, const struct VBarData* bar) asm("?__as@VBarData@@QAEPAV1@ABV1@@Z");

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

// Object Oriented datastructures

// win1.41 009c8258 mac inlined SetupVBarGraph::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14SetupVBarGraph asm("??_R0?AUSetupVBarGraph@@@8");
// win1.41 009a67e8 mac inlined SetupVBarGraph::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14SetupVBarGraph asm("??_R1A@?0A@A@SetupVBarGraph@@8");
// win1.41 009a6800 mac inlined SetupVBarGraph::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14SetupVBarGraph asm("??_R2SetupVBarGraph@@8");
// win1.41 009a6810 mac inlined SetupVBarGraph::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14SetupVBarGraph asm("??_R3SetupVBarGraph@@8");
// win1.41 008ab47c mac 10730f60 SetupVBarGraph::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14SetupVBarGraph asm("??_R4SetupVBarGraph@@6B@");
// win1.41 008ab480 mac 10730f68 SetupVBarGraph::`vftable'
extern const struct SetupVBarGraphVftable __vt__14SetupVBarGraph asm("??_7SetupVBarGraph@@6B@");

// Constructors

// win1.41 0040ef00 mac 10354bc0 SetupVBarGraph::SetupVBarGraph(int, int, int, int, int, wchar_t *)
struct SetupVBarGraph* __fastcall __ct__14SetupVBarGraphFiiiiiPw(struct SetupVBarGraph* this, const void* edx, int id, int x, int y, int width, int height, const char16_t* label) asm("??0SetupVBarGraph@@QAE@HHHHHPA_W@Z");

// Non-virtual methods

// win1.41 0040f280 mac 103fccd0 SetupVBarGraph::AddBar(const VBarData &)
void __fastcall AddBar__14SetupVBarGraphFRC8VBarData(struct SetupVBarGraph* this, const void* edx, const struct VBarData* bar) asm("?AddBar@SetupVBarGraph@@QAEXABUVBarData@@@Z");
// win1.41 0040f300 mac 10352240 SetupVBarGraph::SetBar(int, const VBarData &)
void __fastcall SetBar__14SetupVBarGraphFiRC8VBarData(struct SetupVBarGraph* this, const void* edx, int index, const struct VBarData* bar) asm("?SetBar@SetupVBarGraph@@QAEXHABUVBarData@@@Z");
// win1.41 0040f350 mac 103f1500 SetupVBarGraph::GetBar(int, VBarData &)
void __fastcall GetBar__14SetupVBarGraphFiR8VBarData(const struct SetupVBarGraph* this, const void* edx, int index, struct VBarData* result) asm("?GetBar@SetupVBarGraph@@QAEXHAAUVBarData@@@Z");

// Override methods

// win1.41 0040e8b0 mac 10379480 SetupVBarGraph::Draw(bool, bool)
void __fastcall Draw__14SetupVBarGraphFbb(struct SetupControl* this, const void* edx, bool hovered, bool selected) asm("?Draw@SetupVBarGraph@@UAEX_N0@Z");
// win1.41 0040ef70 mac 10350e50 SetupVBarGraph::KeyDown(int, int)
void __fastcall KeyDown__14SetupVBarGraphFii(struct SetupControl* this, const void* edx, enum LHKey key, enum LHKeyMod mod) asm("?KeyDown@SetupVBarGraph@@UAEXHH@Z");
// win1.41 0040ef90 mac 103de920 SetupVBarGraph::~SetupVBarGraph(void)
void __fastcall __dt__14SetupVBarGraphFb(struct SetupControl* this, const void* edx, bool param_1) asm("??_DSetupVBarGraph@@QAEXXZ");
// win1.41 0040efb0 mac inlined SetupVBarGraph::Reset(vfoid)
void __fastcall Reset__14SetupVBarGraphFv(struct SetupVBarGraph* this) asm("?Reset@SetupVBarGraph@@UAEXXZ");
// win1.41 0040f1b0 mac 10351240 SetupVBarGraph::SetScale(float)
void __fastcall SetScale__14SetupVBarGraphFf(struct SetupVBarGraph* this, const void* edx, float scale) asm("?SetScale@SetupVBarGraph@@UAEXM@Z");

#endif /* BW1_DECOMP_SETUP_V_BAR_GRAPH_INCLUDED_H */
