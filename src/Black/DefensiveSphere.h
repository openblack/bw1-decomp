#ifndef BW1_DECOMP_DEFENSIVE_SPHERE_INCLUDED_H
#define BW1_DECOMP_DEFENSIVE_SPHERE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DefensiveShield.h" /* For struct DefensiveShield */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class DefensiveSphere: public DefensiveShield
{
public:

    // Override methods

    // win1.41 006d0d00 mac 10417570 DefensiveSphere::_dt(void)
    virtual ~DefensiveSphere();
    // win1.41 006d0cf0 mac 10417650 DefensiveSphere::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00699cd0 mac 104179f0 DefensiveSphere::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006d06b0 mac 1047f3d0 DefensiveSphere::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 006d0ce0 mac 10417610 DefensiveSphere::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_DEFENSIVE_SPHERE_INCLUDED_H */
