#ifndef BW1_DECOMP_MPFE_MESSAGE_OBJECT_INCLUDED_H
#define BW1_DECOMP_MPFE_MESSAGE_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

struct MPFEMessageObject;
struct MPFEPlayerDetails;

struct MPFEMessageObjectVftable
{
  void (__fastcall* __dt)(struct MPFEMessageObject* this);  /* 0x0 */
  void (__fastcall* Send)(struct MPFEMessageObject* this, const void* edx, struct MPFEPlayerDetails* details);
};
static_assert(sizeof(struct MPFEMessageObjectVftable) == 0x8, "Data type is of wrong size");

struct MPFEMessageObject
{
  struct MPFEMessageObjectVftable* vftable;  /* 0x0 */
};
static_assert(sizeof(struct MPFEMessageObject) == 0x4, "Data type is of wrong size");

// win1.41 008c70a4 mac 109a2360 MPFEMessageObject::`vftable'
extern const struct MPFEMessageObjectVftable __vt__17MPFEMessageObject asm("??_7MPFEMessageObject@@6B@");

#endif /* BW1_DECOMP_MPFE_MESSAGE_OBJECT_INCLUDED_H */
