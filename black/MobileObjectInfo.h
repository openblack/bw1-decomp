#ifndef BW1_DECOMP_MOBILE_OBJECT_INFO_INCLUDED_H
#define BW1_DECOMP_MOBILE_OBJECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "MobileInfo.h" /* For struct GMobileInfo */

struct GMobileObjectInfo
{
  struct GMobileInfo super;  /* 0x0 */
  uint8_t field_0x104[0x10];
};
static_assert(sizeof(struct GMobileObjectInfo) == 0x114, "Data type is of wrong size");

// win1.41 009305c8 mac 10736eec GMobileObjectInfo::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__17GMobileObjectInfo asm("??_R4GMobileObjectInfo@@6B@");

// win1.41 009305cc mac 10736ef4 GMobileObjectInfo::`vftable'
extern const struct GBaseInfoVftable __vt__17GMobileObjectInfo asm("??_7GMobileObjectInfo@@6B@");

// Constructors

// win1.41 inlined mac 100ad720 GMobileObjectInfo::GMobileObjectInfo(void)
struct GMobileObjectInfo* __fastcall __ct__17GMobileObjectInfoFv(struct GMobileObjectInfo* this);

#endif /* BW1_DECOMP_MOBILE_OBJECT_INFO_INCLUDED_H */
