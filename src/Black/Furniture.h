#ifndef BW1_DECOMP_FURNITURE_INCLUDED_H
#define BW1_DECOMP_FURNITURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Object.h" /* For struct Object */

// Forward Declares

class Base;
class GameThing;
class LHOSFile;
struct MapCoords;

class Furniture: public Object
{
public:

    // Override methods

    // BW1W120 0054a470 BW1M100 inlined Furniture::_dt(void)
    virtual ~Furniture();
    // BW1W120 0054a460 BW1M100 inlined Furniture::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0054a450 BW1M100 inlined Furniture::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0054a440 BW1M100 inlined Furniture::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

#endif /* BW1_DECOMP_FURNITURE_INCLUDED_H */
