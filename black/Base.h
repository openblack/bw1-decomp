#ifndef BW1_DECOMP_BASE_INCLUDED_H
#define BW1_DECOMP_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t, uint8_t */

// Forward Declares

struct Archive;
struct Base;
struct BaseInfo;
struct LHPoint;

struct BaseVftable
{
  void (__fastcall* Serialise)(struct Base* this, const void* edx, struct Archive* param_1);  /* 0x0 */
  struct Base* (__fastcall* __dt)(struct Base* this, const void* edx, uint8_t param_1);
  void (__fastcall* Delete)(struct Base* this, const void* edx, int param_1);
  void (__fastcall* ToBeDeleted)(struct Base* this, const void* edx, int param_1);
  uint32_t (__fastcall* Get3DSoundPos)(struct Base* this, const void* edx, struct LHPoint* pos);  /* 0x10 */
  void (__fastcall* CleanUpForSerialisation)(struct Base* this);
  void (__fastcall* Dump)(struct Base* this);
};
static_assert(sizeof(struct BaseVftable) == 0x1c, "Data type is of wrong size");

struct Base
{
  struct BaseVftable* vftable;  /* 0x0 */
  uint32_t destroyed;
};
static_assert(sizeof(struct Base) == 0x8, "Data type is of wrong size");

static struct BaseVftable* const __vt__4Base = (struct BaseVftable* const)0x008a9a44;

// Static methods

// win1.41 004366f0 mac 1009ebc0 Base::operator new(unsigned long)
void* __cdecl __nw__4BaseFUl(size_t size, const char* file_name, uint32_t line);

// Constructors

// win1.41 inlined mac 100a0450 Base::Base(void)
struct Base* __fastcall __ct__4BaseFv(struct Base* this);

// Non-virtual methods

// win1.41 00436b20 mac 10001480 Base::SetInfo(BaseInfo*) const
void __fastcall SetInfo__4BaseCFP8BaseInfo(const struct Base* this, const void* edx, struct BaseInfo* info);

// Override methods

// win1.41 004011b0 mac 101228f0 Base::Serialise(Archive&)
void __fastcall Serialise__4BaseFR7Archive(struct Base* this, const void* edx, struct Archive* param_1);
// win1.41 00401210 mac 10082770 Base::~Base(void)
struct Base* __fastcall __dt__4BaseFv(struct Base* this, const void* edx, uint8_t param_1);
// win1.41 004011c0 mac 1056ecc0 Base::Delete(int)
void __fastcall Delete__4BaseFi(struct Base* this, const void* edx, int param_1);
// win1.41 004011d0 mac 1032b070 Base::ToBeDeleted(int)
void __fastcall ToBeDeleted__4BaseFi(struct Base* this, const void* edx, int param_1);
// win1.41 004011e0 mac 1032b3d0 Base::Get3DSoundPos(LHPoint*)
void __fastcall Get3DSoundPos__4BaseFP7LHPoint(struct Base* this, const void* edx, struct LHPoint* param_1);
// win1.41 004011f0 mac 1032cbf0 Base::CleanUpForSerialisation(void)
void __fastcall CleanUpForSerialisation__4BaseFv(struct Base* this);
// win1.41 00401200 mac 106fc7f0 Base::Dump(void)
void __fastcall Dump__4BaseFv(struct Base* this);

#endif /* BW1_DECOMP_BASE_INCLUDED_H */
