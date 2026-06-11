#ifndef BW1_DECOMP_MAGIC_OBJECT_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_OBJECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

class Base;

class GMagicObjectInfo: public GMagicInfo
{
public:

    // Override methods

    // win1.41 00435830 mac 1018fa30 GMagicObjectInfo::_dt(void)
    virtual ~GMagicObjectInfo();
};

#endif /* BW1_DECOMP_MAGIC_OBJECT_INFO_INCLUDED_H */
