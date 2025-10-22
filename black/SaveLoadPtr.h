#ifndef BW1_DECOMP_SAVE_LOAD_PTR_INCLUDED_H
#define BW1_DECOMP_SAVE_LOAD_PTR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uintptr_t */

#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

struct GSaveLoadPtr
{
  uintptr_t ptr;  /* 0x0 */
};
static_assert(sizeof(struct GSaveLoadPtr) == 0x4, "Data type is of wrong size");

// Constructors

// win1.41 00562320 mac inlined GSaveLoadPtr::GSaveLoadPtr(void*)
struct GSaveLoadPtr* __fastcall __ct__12GSaveLoadPtrFPv(struct GSaveLoadPtr* this, const void* edx, void* ptr) asm("??0GSaveLoadPtr@@QAE@PAX@Z");

DECLARE_LH_LINKED_LIST(GSaveLoadPtr);

// win1.41 00564420 mac inlined GSaveLoadPtrList::PushBack(GSaveLoadPtr *)
bool __fastcall Push__GSaveLoadPtrListFP12GSaveLoadPtr(struct LHLinkedList__GSaveLoadPtr* this, const void* edx, struct GSaveLoadPtr* ptr);

#endif /* BW1_DECOMP_SAVE_LOAD_PTR_INCLUDED_H */
