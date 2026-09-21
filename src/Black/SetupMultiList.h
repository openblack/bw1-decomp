#ifndef BW1_DECOMP_SETUP_MULTI_LIST_INCLUDED_H
#define BW1_DECOMP_SETUP_MULTI_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "SetupList.h" /* For struct SetupList */

// Forward Declares

class SetupControl;

class SetupMultiList : public SetupList
{
public:
	bool* list; /* 0x2b0 */
	int   field_0x2b4;
	int   size;

	// Override methods

	// BW1W120 0040b560 BW1M119 014ea2d0
	virtual void Click(int x, int y);
	// BW1W120 0040b4a0 BW1M119 010caba0
	virtual ~SetupMultiList();
	// BW1W120 0040b530 BW1M119 0149c200
	virtual bool IsSelected(int index);

	// Constructors

	// BW1W120 0040b420 BW1M119 01480980
	SetupMultiList(int id, int x, int y, int width, int height, int size);
};

#endif /* BW1_DECOMP_SETUP_MULTI_LIST_INCLUDED_H */
