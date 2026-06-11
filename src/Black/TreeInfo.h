#ifndef BW1_DECOMP_TREE_INFO_INCLUDED_H
#define BW1_DECOMP_TREE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "SingleMapFixedInfo.h" /* For struct GSingleMapFixedInfo */

// Forward Declares

class Base;

class GTreeInfo: public GSingleMapFixedInfo
{
public:
    uint8_t field_0x100[0x40];

    // Override methods

    // win1.41 00749dd0 mac 10155680 GTreeInfo::_dt(void)
    virtual ~GTreeInfo();
};

#endif /* BW1_DECOMP_TREE_INFO_INCLUDED_H */
