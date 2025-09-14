#ifndef BW1_DECOMP_DRAWING_OBJECT_INCLUDED_H
#define BW1_DECOMP_DRAWING_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */

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
extern const struct RTTITypeDescriptor __RTTITypeDescriptor__13DrawingObject asm("??_R0?AVDrawingObject@@@8");

#endif /* BW1_DECOMP_DRAWING_OBJECT_INCLUDED_H */
