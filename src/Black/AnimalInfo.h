#ifndef BW1_DECOMP_ANIMAL_INFO_INCLUDED_H
#define BW1_DECOMP_ANIMAL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LivingInfo.h" /* For struct GLivingInfo */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

class GAnimalInfo: public GLivingInfo
{
public:

    // Override methods

    // BW1W120 00416da0 BW1M100 1016c970 GAnimalInfo::_dt(void)
    virtual ~GAnimalInfo();
    // BW1W120 00416d30 BW1M100 1016cc70 GAnimalInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
    // BW1W120 00416d20 BW1M100 1016cc30 GAnimalInfo::GetMesh( const(void))
    virtual uint32_t GetMesh();
};

#endif /* BW1_DECOMP_ANIMAL_INFO_INCLUDED_H */
