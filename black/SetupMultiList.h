#ifndef BW1_DECOMP_SETUP_MULTI_LIST_INCLUDED_H
#define BW1_DECOMP_SETUP_MULTI_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */

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

// win1.41 008ab360 mac 107311c0 SetupMultiList::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__14SetupMultiList asm("??_R4SetupMultiList@@6B@");

// win1.41 008ab364 mac 107311c8 SetupMultiList::`vftable'
extern const struct SetupListVftable __vt__14SetupMultiList asm("??_7SetupMultiList@@6B@");

// Constructors

// win1.41 0040b420 mac 1014cca0 SetupMultiList::SetupMultiList(int, int, int, int, int, int)
struct SetupMultiList* __fastcall __ct__14SetupMultiListFiiiiii(struct SetupMultiList* this, const void* edx, int id, int x, int y, int width, int height, int size);

// Override methods

// win1.41 0040b560 mac 103f18b0 SetupMultiList::Click(int, int)
void __fastcall Click__14SetupMultiListFii(struct SetupControl* this, const void* edx, int x, int y);
// win1.41 0040b4a0 mac 103f18b0 SetupMultiList::~SetupMultiList(void)
void __fastcall __dt__14SetupMultiListFb(struct SetupControl* this, const void* edx, bool param_1);
// win1.41 0040b530 mac 1047e020 SetupMultiList::IsSelected(int)
bool __fastcall IsSelected__14SetupMultiListFi(struct SetupList* this, const void* edx, int index);

#endif /* BW1_DECOMP_SETUP_MULTI_LIST_INCLUDED_H */
