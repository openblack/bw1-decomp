#ifndef BW1_DECOMP_DRAWING_OBJECT_INCLUDED_H
#define BW1_DECOMP_DRAWING_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassDescriptor, struct RTTITypeDescriptor */

// Forward Declares

struct DrawingObject;

struct DrawingObjectVftable
{
  void (__fastcall* DummyThereIsNoDrawingObjectVftableItsPureVirtualButCRequiresAValue)(struct DrawingObject* this);  /* 0x0 */
};
static_assert(sizeof(struct DrawingObjectVftable) == 0x4, "Data type is of wrong size");

struct DrawingObject
{
  struct DrawingObjectVftable* vftable;  /* 0x0 */
};
static_assert(sizeof(struct DrawingObject) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd240 mac inlined DrawingObject::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13DrawingObject asm("??_R0?AVDrawingObject@@@8");
// win1.41 009a83d8 mac inlined DrawingObject::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13DrawingObject asm("??_R1A@?0A@A@DrawingObject@@8");

#endif /* BW1_DECOMP_DRAWING_OBJECT_INCLUDED_H */
