#ifndef BW1_DECOMP_SETUP_MULTI_LIST_INCLUDED_H
#define BW1_DECOMP_SETUP_MULTI_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "SetupList.h" /* For struct SetupList */

// Forward Declares

struct SetupControl;

struct SetupMultiList
{
  struct SetupList super;  /* 0x0 */
  bool* list;  /* 0x2b0 */
  int field_0x2b4;
  int size;
};
static_assert(sizeof(struct SetupMultiList) == 0x2bc, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c81b0 mac inlined SetupMultiList::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14SetupMultiList asm("??_R0?AUSetupMultiList@@@8");
// win1.41 009a66a8 mac inlined SetupMultiList::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14SetupMultiList asm("??_R1A@?0A@A@SetupMultiList@@8");
// win1.41 009a66c0 mac inlined SetupMultiList::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14SetupMultiList asm("??_R2SetupMultiList@@8");
// win1.41 009a66d0 mac inlined SetupMultiList::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14SetupMultiList asm("??_R3SetupMultiList@@8");
// win1.41 008ab360 mac 107311c0 SetupMultiList::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14SetupMultiList asm("??_R4SetupMultiList@@6B@");
// win1.41 008ab364 mac 107311c8 SetupMultiList::`vftable'
extern const struct SetupListVftable __vt__14SetupMultiList asm("??_7SetupMultiList@@6B@");

// Constructors

// win1.41 0040b420 mac 1014cca0 SetupMultiList::SetupMultiList(int, int, int, int, int, int)
struct SetupMultiList* __fastcall __ct__14SetupMultiListFiiiiii(struct SetupMultiList* this, const void* edx, int id, int x, int y, int width, int height, int size) asm("??0SetupMultiList@@QAE@HHHHHH@Z");

// Override methods

// win1.41 0040b560 mac 103e0950 SetupMultiList::Click(int, int)
void __fastcall Click__14SetupMultiListFii(struct SetupControl* this, const void* edx, int x, int y) asm("?Click@SetupMultiList@@UAEXHH@Z");
// win1.41 0040b4a0 mac 103f18b0 SetupMultiList::~SetupMultiList(void)
void __fastcall __dt__14SetupMultiListFb(struct SetupControl* this, const void* edx, bool param_1) asm("??_DSetupMultiList@@QAEXXZ");
// win1.41 0040b530 mac 1047e020 SetupMultiList::IsSelected(int)
bool __fastcall IsSelected__14SetupMultiListFi(struct SetupList* this, const void* edx, int index) asm("?IsSelected@SetupMultiList@@UAE_NH@Z");

#endif /* BW1_DECOMP_SETUP_MULTI_LIST_INCLUDED_H */
