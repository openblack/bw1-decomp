#ifndef BW1_DECOMP_FLOWERS_INCLUDED_H
#define BW1_DECOMP_FLOWERS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "Feature.h" /* For struct Feature */

// Forward Declares

class Base;
class GameThing;
class LHOSFile;
struct MapCoords;
class Object;

class Flowers: public Feature
{
public:

    // Override methods

    // BW1W120 005279b0 BW1M100 100d0030 Flowers::_dt(void)
    virtual ~Flowers();
    // BW1W120 005279a0 BW1M100 100d0130 Flowers::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00527990 BW1M100 100d00f0 Flowers::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00527a30 BW1M100 100d0310 Flowers::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // BW1W120 00527980 BW1M100 100d00c0 Flowers::Get3DType(void)
    virtual LH3DObject::ObjectType Get3DType();
    // BW1W120 00527a80 BW1M100 100d0170 Flowers::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

#endif /* BW1_DECOMP_FLOWERS_INCLUDED_H */
