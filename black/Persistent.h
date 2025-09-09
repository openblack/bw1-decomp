#ifndef BW1_DECOMP_PERSISTENT_INCLUDED_H
#define BW1_DECOMP_PERSISTENT_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

struct Persistent;
struct PropertyList;

struct PersistentVftable
{
  void (__fastcall* VirtualFunc)(struct Persistent* this);  /* 0x0 */
  void (__fastcall* OnLoaded)(struct Persistent* this);
  void (__fastcall* __dt)(struct Persistent* this);
  void (__fastcall* DefineProperties)(struct Persistent* this, const void* edx, struct PropertyList* list);
};
static_assert(sizeof(struct PersistentVftable) == 0x10, "Data type is of wrong size");

struct Persistent
{
  struct PersistentVftable* vftable;  /* 0x0 */
};
static_assert(sizeof(struct Persistent) == 0x4, "Data type is of wrong size");

// win1.41 009001dc mac 10999f78 Persistent::`vftable'
extern const struct PersistentVftable __vt__10Persistent asm("??_7Persistent@@6B@");

// Override methods

// win1.41 00580a10 mac 102cb7a0 Persistent::VirtualFunc(void)
void __fastcall VirtualFunc__10PersistentFv(struct Persistent* this) asm("?VirtualFunc@Persistent@@UAEXXZ");
// win1.41 00580a20 mac 102cb7e0 Persistent::OnLoaded(void)
void __fastcall OnLoaded__10PersistentFv(struct Persistent* this) asm("?OnLoaded@Persistent@@UAEXXZ");
// win1.41 00580a40 mac 102cbd80 Persistent::_dt(void)
void __fastcall __dt__10PersistentFv(struct Persistent* this) asm("??_GPersistent@@UAEPAXI@Z");
// win1.41 00580a30 mac 102cb810 Persistent::DefineProperties(PropertyList *)
void __fastcall DefineProperties__10PersistentFP12PropertyList(struct Persistent* this, const void* edx, struct PropertyList* param_1) asm("?DefineProperties@Persistent@@UAEXPAUPropertyList@@@Z");

struct FloatProvider
{
  struct Persistent super;  /* 0x0 */
};
static_assert(sizeof(struct FloatProvider) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 006b80a0 mac 103e5a90 FloatProvider::_dt(void)
void __fastcall __dt__13FloatProviderFv(struct Persistent* this) asm("??_GFloatProvider@@UAEPAXI@Z");
// win1.41 006b8090 mac 103e5b20 FloatProvider::DefineProperties(PropertyList *)
void __fastcall DefineProperties__13FloatProviderFP12PropertyList(struct Persistent* this, const void* edx, struct PropertyList* param_1) asm("?DefineProperties@FloatProvider@@UAEXPAUPropertyList@@@Z");

#endif /* BW1_DECOMP_PERSISTENT_INCLUDED_H */
