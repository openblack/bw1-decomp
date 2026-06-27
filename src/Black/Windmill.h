#ifndef BW1_DECOMP_WINDMILL_INCLUDED_H
#define BW1_DECOMP_WINDMILL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Abode.h" /* For struct Abode */

// Forward Declares

class Base;
class GAbodeInfo;
class GameThing;
struct MapCoords;
class Object;
class Town;

class Windmill: public Abode
{
public:

    // Override methods

    // BW1W120 00405920 BW1M100 100cb620 Windmill::_dt(void)
    virtual ~Windmill();
    // BW1W120 00405910 BW1M100 100cb6f0 Windmill::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00405900 BW1M100 100cb6b0 Windmill::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00516320 BW1M100 100cb390 Windmill::Draw(void)
    virtual void Draw();
    // BW1W120 00405950 BW1M100 102aa970 Windmill::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);

    // Static methods

    // BW1W120 00405890 BW1M100 10199b40 Windmill::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float, unsigned long, unsigned long, float, int, int)
    static Windmill* Create(const MapCoords* coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food, int wood);

    // Non-virtual methods

    // BW1W120 00405980 BW1M100 103f15c0 Windmill::Open(void)
    void Open();
    // BW1W120 004059d0 BW1M100 10241170 Windmill::Close(void)
    void Close();
    // BW1W120 004059f0 BW1M100 1007d870 Windmill::PreDraw(void)
    void PreDraw();
};

#endif /* BW1_DECOMP_WINDMILL_INCLUDED_H */
