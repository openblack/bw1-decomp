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

    // win1.41 00405920 mac 100cb620 Windmill::_dt(void)
    virtual ~Windmill();
    // win1.41 00405910 mac 100cb6f0 Windmill::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00405900 mac 100cb6b0 Windmill::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00516320 mac 100cb390 Windmill::Draw(void)
    virtual void Draw();
    // win1.41 00405950 mac 102aa970 Windmill::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);

    // Static methods

    // win1.41 00405890 mac 10199b40 Windmill::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float, unsigned long, unsigned long, float, int, int)
    static Windmill* Create(const MapCoords* coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food, int wood);

    // Non-virtual methods

    // win1.41 00405980 mac 103f15c0 Windmill::Open(void)
    void Open();
    // win1.41 004059d0 mac 10241170 Windmill::Close(void)
    void Close();
    // win1.41 004059f0 mac 1007d870 Windmill::PreDraw(void)
    void PreDraw();
};

#endif /* BW1_DECOMP_WINDMILL_INCLUDED_H */
