#ifndef BW1_DECOMP_FOREST_INFO_INCLUDED_H
#define BW1_DECOMP_FOREST_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ContainerInfo.h" /* For struct GContainerInfo */

// Forward Declares

class Base;

class GForestInfo: public GContainerInfo
{
public:

    // Override methods

    // win1.41 005399c0 mac 100f2980 GForestInfo::_dt(void)
    virtual ~GForestInfo();
};

#endif /* BW1_DECOMP_FOREST_INFO_INCLUDED_H */
