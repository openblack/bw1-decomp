#ifndef BW1_DECOMP_LH3D_Z_SORTER_INCLUDED_H
#define BW1_DECOMP_LH3D_Z_SORTER_INCLUDED_H

#include "DrawingObject.h"

// Declaration-only interface; no instance allocation or guessed object layout.
class LH3DZSorter
{
public:
	typedef void (DrawingObject::*DrawCallback)();
	// BW1W120 0083f310. ECX=this, EDX=object; three stack arguments, RET 0x0c.
	void __fastcall NewZObject(void* object, DrawCallback draw, float distance, unsigned long flags);
};

#endif /* BW1_DECOMP_LH3D_Z_SORTER_INCLUDED_H */
