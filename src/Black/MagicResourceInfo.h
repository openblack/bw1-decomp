#ifndef BW1_DECOMP_MAGIC_RESOURCE_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_RESOURCE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicObjectInfo.h" /* For struct GMagicObjectInfo */

// Forward Declares

class Base;

class GMagicResourceInfo: public GMagicObjectInfo
{
public:

    // Override methods

    // win1.41 00435700 mac 103ac8f0 GMagicResourceInfo::_dt(void)
    virtual ~GMagicResourceInfo();
};

#endif /* BW1_DECOMP_MAGIC_RESOURCE_INFO_INCLUDED_H */
