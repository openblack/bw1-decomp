#ifndef BW1_DECOMP_BASE_INFO_INCLUDED_H
#define BW1_DECOMP_BASE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "Base.h" /* For struct Base, struct BaseVftable */

// Forward Declares

struct BaseInfo;
struct GBaseInfo;

struct GBaseInfoVftable
{
  struct BaseVftable super;  /* 0x0 */
  const char* (__fastcall* GetDebugText)(const struct GBaseInfo* this);  /* 0x1c */
  struct LHColor* (__fastcall* GetDebugColor)(const struct BaseInfo* this, const void* edx, struct LHColor* color);  /* 0x20 */
  struct GBaseInfo* (__fastcall* GetBaseInfo)(struct GBaseInfo* this, const void* edx, uint32_t* param_1);
  void (__fastcall* UpdateValue)(struct GBaseInfo* this, const void* edx, float param_1, uint32_t param_2, uint32_t param_3);
};
static_assert(sizeof(struct GBaseInfoVftable) == 0x2c, "Data type is of wrong size");

union GBaseInfoBase
{
  struct Base super;
  struct GBaseInfoVftable* vftable;
};
static_assert(sizeof(union GBaseInfoBase) == 0x8, "Data type is of wrong size");

struct GBaseInfo
{
  union GBaseInfoBase base;  /* 0x0 */
  struct GBaseInfo* next;
  int index;
};
static_assert(sizeof(struct GBaseInfo) == 0x10, "Data type is of wrong size");

static struct GBaseInfoVftable* const __vt__9GBaseInfo = (struct GBaseInfoVftable* const)0x008c4d1c;

// Static methods

// win1.41 00436c30 mac 103e4630 GBaseInfo::GetInfoPtr(unsigned long)
struct GBaseInfo* __cdecl GetInfoPtr__9GBaseInfoFUl(int index);

// Non-virtual methods

// win1.41 00436bd0 mac 1035b720 GBaseInfo::SetInfoID(void)
void __fastcall SetInfoID__9GBaseInfoFv(struct GBaseInfo* this);

// Override methods

// win1.41 00436c60 mac 1055df70 GBaseInfo::GetDebugColor(void) const
struct LHColor* __fastcall GetDebugColor__9GBaseInfoCFv(const struct BaseInfo* this, const void* edx, struct LHColor* color) asm("?GetDebugColor@GBaseInfo@@UBE?AVLHColor@@XZ");
// win1.41 00401230 mac 101228b0 GBaseInfo::UpdateValue(void)
void __fastcall UpdateValue__9GBaseInfoFfUlUl(struct GBaseInfo* this, const void* edx, float param_1, uint32_t param_2, uint32_t param_3) asm("?UpdateValue@GBaseInfo@@UAEXMKK@Z");

DECLARE_LH_LIST_HEAD(GBaseInfo);

struct BaseInfoVftable
{
  bool (__fastcall* IsClear)(const struct BaseInfo* this);  /* 0x0 */
};
static_assert(sizeof(struct BaseInfoVftable) == 0x4, "Data type is of wrong size");

struct BaseInfo
{
  struct BaseInfoVftable* vftable;  /* 0x0 */
  uint32_t unique_id;
  uint32_t address_offset;
};
static_assert(sizeof(struct BaseInfo) == 0xc, "Data type is of wrong size");

static struct BaseInfoVftable* const __vt__8BaseInfo = (struct BaseInfoVftable* const)0x008ea8d0;

// Constructors

// win1.41 inlined mac 1030cbf0 BaseInfo::BaseInfo(void)
struct BaseInfo* __fastcall __ct__8BaseInfoFv(struct BaseInfo* this);

// Non-virtual methods

// win1.41 00436bb0 mac 10001410 BaseInfo::Set(Base*)
void __fastcall Set__8BaseInfoFP4Base(struct BaseInfo* this, const void* edx, struct Base* base);

// Override methods

// win1.41 0055c770 mac 10043c50 BaseInfo::IsClear(void) const
bool __fastcall IsClear__8BaseInfoCFv(const struct BaseInfo* this);

#endif /* BW1_DECOMP_BASE_INFO_INCLUDED_H */
