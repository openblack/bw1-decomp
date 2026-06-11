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

    // win1.41 0054a470 mac inlined Furniture::_dt(void)
    virtual ~Furniture();
    // win1.41 0054a460 mac inlined Furniture::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0054a450 mac inlined Furniture::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0054a440 mac inlined Furniture::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

#endif /* BW1_DECOMP_FURNITURE_INCLUDED_H */
