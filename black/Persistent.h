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

#endif /* BW1_DECOMP_PERSISTENT_INCLUDED_H */
