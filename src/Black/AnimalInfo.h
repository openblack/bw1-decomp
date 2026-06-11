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

    // win1.41 00416da0 mac 1016c970 GAnimalInfo::_dt(void)
    virtual ~GAnimalInfo();
    // win1.41 00416d30 mac 1016cc70 GAnimalInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
    // win1.41 00416d20 mac 1016cc30 GAnimalInfo::GetMesh( const(void))
    virtual uint32_t GetMesh();
};

#endif /* BW1_DECOMP_ANIMAL_INFO_INCLUDED_H */
