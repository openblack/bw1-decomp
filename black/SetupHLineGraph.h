#ifndef BW1_DECOMP_SETUP_H_LINE_GRAPH_INCLUDED_H
#define BW1_DECOMP_SETUP_H_LINE_GRAPH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lhlib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "SetupButton.h" /* For struct SetupButton */
#include "SetupControl.h" /* For struct SetupControlVftable */

// Forward Declares

struct SetupControl;
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
struct HLineData* __fastcall __ct__9HLineDataFv(struct HLineData* this) asm("??0HLineData@@QAE@XZ");

// Non-virtual methods

// win1.41 inlined mac inlined HLineData::operator=(const HLineData&)
struct HLineData* __fastcall __as__9HLineDataFRC9HLineData(struct HLineData* this, const void* edx, const struct HLineData* other) asm("?__as@HLineData@@QAEPAV1@ABV1@@Z");
// win1.41 0040da30 mac 10501060 HLineData::SetNum()
void __fastcall SetNum__9HLineDataFi(struct HLineData* this, const void* edx, int num) asm("?SetNum@HLineData@@QAEXH@Z");

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

// Object Oriented datastructures

// win1.41 009c8238 mac inlined SetupHLineGraph::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15SetupHLineGraph asm("??_R0?AUSetupHLineGraph@@@8");
// win1.41 009a6798 mac inlined SetupHLineGraph::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15SetupHLineGraph asm("??_R1A@?0A@A@SetupHLineGraph@@8");
// win1.41 009a67b0 mac inlined SetupHLineGraph::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15SetupHLineGraph asm("??_R2SetupHLineGraph@@8");
// win1.41 009a67c0 mac inlined SetupHLineGraph::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15SetupHLineGraph asm("??_R3SetupHLineGraph@@8");
// win1.41 008ab420 mac 10730fcc SetupHLineGraph::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__15SetupHLineGraph asm("??_R4SetupHLineGraph@@6B@");
// win1.41 008ab424 mac 10730fd4 SetupHLineGraph::`vftable'
extern const struct SetupHLineGraphVftable __vt__15SetupHLineGraph asm("??_7SetupHLineGraph@@6B@");

// Constructors

// win1.41 0040e510 mac 103dcbb0 SetupHLineGraph::SetupHLineGraph(int, int, int, int, int, wchar_t *, bool)
struct SetupHLineGraph* __fastcall __ct__15SetupHLineGraphFiiiiiPwb(struct SetupHLineGraph* this, const void* edx, int id, int x, int y, int width, int height, const char16_t* label, bool percent_mode) asm("??0SetupHLineGraph@@QAE@HHHHHPA_W_N@Z");

// Override methods

// win1.41 0040dab0 mac 101180e0 SetupHLineGraph::Draw(bool, bool)
void __fastcall Draw__15SetupHLineGraphFbb(struct SetupControl* this, const void* edx, bool hovered, bool selected) asm("?Draw@SetupHLineGraph@@UAEX_N0@Z");
// win1.41 0040e5a0 mac 101585b0 SetupHLineGraph::MouseUp(int, int, bool)
void __fastcall MouseUp__15SetupHLineGraphFiib(struct SetupControl* this, const void* edx, int x, int y, bool param_3) asm("?MouseUp@SetupHLineGraph@@UAEXHH_N@Z");
// win1.41 0040e580 mac 10518860 SetupHLineGraph::KeyDown(int, int)
void __fastcall KeyDown__15SetupHLineGraphFii(struct SetupControl* this, const void* edx, enum LHKey key, enum LHKeyMod mod) asm("?KeyDown@SetupHLineGraph@@UAEXHH@Z");
// win1.41 0040e5c0 mac 0040e5c0 SetupHLineGraph::~SetupHLineGraph(void)
void __fastcall __dt__15SetupHLineGraphFb(struct SetupControl* this, const void* edx, bool param_1) asm("??_DSetupHLineGraph@@QAEXXZ");
// win1.41 0040e5e0 mac 102a7a10 SetupHLineGraph::Reset(void)
void __fastcall Reset__15SetupHLineGraphFv(struct SetupHLineGraph* this) asm("?Reset@SetupHLineGraph@@UAEXXZ");
// win1.41 0040e650 mac 10211b80 SetupHLineGraph::SetScale(float, float, bool)
void __fastcall SetScale__15SetupHLineGraphFffb(struct SetupHLineGraph* this, const void* edx, float max_point, float min_point, bool centered_at_zero) asm("?SetScale@SetupHLineGraph@@UAEXMM_N@Z");
// win1.41 0040e730 mac 1010ccb0 SetupHLineGraph::AddLine(HLineData &)
void __fastcall AddLine__15SetupHLineGraphFR9HLineData(struct SetupHLineGraph* this, const void* edx, const struct HLineData* line) asm("?AddLine@SetupHLineGraph@@UAEXAAUHLineData@@@Z");
// win1.41 0040e7f0 mac 100c9eb0 SetupHLineGraph::SetLine(int, const HLineData &)
void __fastcall SetLine__15SetupHLineGraphFiR9HLineData(struct SetupHLineGraph* this, const void* edx, int index, const struct HLineData* line) asm("?SetLine@SetupHLineGraph@@UAEXHAAUHLineData@@@Z");
// win1.41 0040e850 mac 10372050 SetupHLineGraph::GetLine(int, HLineData &)
void __fastcall GetLine__15SetupHLineGraphFiR9HLineData(const struct SetupHLineGraph* this, const void* edx, int index, struct HLineData* result) asm("?GetLine@SetupHLineGraph@@UAEXHAAUHLineData@@@Z");

#endif /* BW1_DECOMP_SETUP_H_LINE_GRAPH_INCLUDED_H */
