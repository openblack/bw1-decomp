#ifndef BW1_DECOMP_SETUP_MULTI_LIST_INCLUDED_H
#define BW1_DECOMP_SETUP_MULTI_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */

#include "SetupList.h" /* For struct SetupList */

// Forward Declares

class SetupControl;

class SetupMultiList: public SetupList
{
public:
    bool* list; /* 0x2b0 */
    int field_0x2b4;
    int size;

    // Override methods

    // win1.41 0040b560 mac 103e0950 SetupMultiList::Click(int, int)
    virtual void Click(int x, int y);
    // win1.41 0040b4a0 mac 103f18b0 SetupMultiList::~SetupMultiList(void)
    virtual ~SetupMultiList();
    // win1.41 0040b530 mac 1047e020 SetupMultiList::IsSelected(int)
    virtual bool IsSelected(int index);

    // Constructors

    // win1.41 0040b420 mac 1014cca0 SetupMultiList::SetupMultiList(int, int, int, int, int, int)
    SetupMultiList(int id, int x, int y, int width, int height, int size);
};

#endif /* BW1_DECOMP_SETUP_MULTI_LIST_INCLUDED_H */
