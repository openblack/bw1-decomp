#ifndef BW1_DECOMP_PILE_WOOD_INCLUDED_H
#define BW1_DECOMP_PILE_WOOD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */

#include "PileResource.h" /* For struct PileResource */

// Forward Declares

class Base;
class GameThing;
class Object;

class PileWood: public PileResource
{
public:

    // Override methods

    // win1.41 0055d6c0 mac 10116ea0 PileWood::_dt(void)
    virtual ~PileWood();
    // win1.41 0055d6b0 mac 1011d4f0 PileWood::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0055d6a0 mac 1011d4b0 PileWood::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0051bc40 mac 10038aa0 PileWood::Draw(void)
    virtual void Draw();
    // win1.41 0066ec60 mac 10077d70 PileWood::GetResourceType(void)
    virtual RESOURCE_TYPE GetResourceType();
};

#endif /* BW1_DECOMP_PILE_WOOD_INCLUDED_H */
