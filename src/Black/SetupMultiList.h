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

	// BW1W120 0040b560 BW1M100 103e0950 SetupMultiList::Click(int, int)
	virtual void Click(int x, int y);
	// BW1W120 0040b4c0 BW1M100 103f18b0 SetupMultiList::~SetupMultiList(void)
	virtual ~SetupMultiList();
	// BW1W120 0040b530 BW1M100 1047e020 SetupMultiList::IsSelected(int)
	virtual bool IsSelected(int index);

	// Constructors

	// BW1W120 0040b420 BW1M100 1014cca0 SetupMultiList::SetupMultiList(int, int, int, int, int, int)
	SetupMultiList(int id, int x, int y, int width, int height, int size);
};

#include <new>
#include <Lionhead/LHLib/ver5.0/LHWin.h>

// BW1W120 0040b420 BW1M100 1014cca0 SetupMultiList::SetupMultiList(int, int, int, int, int, int)
inline SetupMultiList::SetupMultiList(int id, int x, int y, int width, int height, int size)
	: SetupList(id, x, y, width, height)
{
	this->size = size;
	field_0x2b4 = 0;
	list = (bool*)operator new(size * sizeof(bool), "C:\\dev\\MP\\Black\\alexmfc.cpp", 0x58e);
	for (int index = 0; index < this->size; ++index)
		list[index] = false;
}

// BW1W120 0040b4c0 BW1M100 103f18b0 SetupMultiList::~SetupMultiList(void)
inline SetupMultiList::~SetupMultiList()
{
	delete[] list;
}

// BW1W120 0040b530 BW1M100 1047e020 SetupMultiList::IsSelected(int)
inline bool SetupMultiList::IsSelected(int index)
{
	// The inclusive upper bound is present in the original.
	if (index < 0 || index > size)
		return false;
	return list[index];
}

// BW1W120 0040b560 BW1M100 103e0950 SetupMultiList::Click(int, int)
inline void SetupMultiList::Click(int x, int y)
{
	int top = rect.p0.y - ScrollPosition;
	if (!field_0x285)
	{
		int index;
		for (index = 0; index < NumItems; ++index)
		{
			if (y >= top && y < top + ItemHeights[index])
				break;
			top += ItemHeights[index];
		}
		if (index < NumItems)
		{
			list[index] = !list[index];
			if (list[index])
				++field_0x2b4;
			else
				--field_0x2b4;
		}
	}
}

#endif /* BW1_DECOMP_SETUP_MULTI_LIST_INCLUDED_H */
