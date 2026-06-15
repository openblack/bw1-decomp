#ifndef BW1_DECOMP_WONDER_INCLUDED_H
#define BW1_DECOMP_WONDER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "Abode.h" /* For struct Abode */

// Forward Declares

class Base;
class Creature;
class GAbodeInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class MultiMapFixed;
class Object;
class Town;

class Wonder: public Abode
{
public:
    float power; /* 0xc4 */

    // Override methods

    // win1.41 00561220 mac 10161090 Wonder::_dt(void)
    virtual ~Wonder();
    // win1.41 00778e40 mac 10161bc0 Wonder::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00561210 mac 101612d0 Wonder::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 007790f0 mac 10161470 Wonder::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00779080 mac 10161540 Wonder::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00561200 mac 10161290 Wonder::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 005611b0 mac inlined Wonder::GetArrivePos(MapCoords *)
    virtual MapCoords* GetArrivePos(MapCoords* param_1);
    // win1.41 005611e0 mac 10161200 Wonder::CanActAsAContainer(Creature *)
    virtual uint32_t CanActAsAContainer(Creature* param_1);
    // win1.41 005611f0 mac 10161250 Wonder::IsStoragePit(Creature *)
    virtual uint32_t IsStoragePit(Creature* param_1);
    // win1.41 00779160 mac 101613c0 Wonder::CallVirtualFunctionsForCreation(const MapCoords&)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* coords);
    // win1.41 00779190 mac 10161310 Wonder::Get3DType(void)
    virtual LH3DObject::ObjectType Get3DType();
    // win1.41 00778f30 mac 10161920 Wonder::Built(void)
    virtual bool Built();
    // win1.41 00779070 mac 10161620 Wonder::SetPower(float)
    virtual void SetPower(float param_1);
    // win1.41 00778fc0 mac 10161700 Wonder::AddToPlayer(void)
    virtual void AddToPlayer();
    // win1.41 00778f50 mac 10161810 Wonder::RemoveFromPlayer(void)
    virtual void RemoveFromPlayer();

    // Static methods

    // win1.41 00778e80 mac 101619e0 Wonder::Create(const MapCoords&, const GAbodeInfo*, Town*, float, float, float, int)
    static Wonder* Create(const MapCoords* coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food, int wood);

    // Constructors

    // win1.41 00778e00 mac 10161c40 Wonder::Wonder(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
    Wonder(const MapCoords* coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food, int wood);

    // Non-virtual methods

    // win1.41 00779060 mac inlined Wonder::SetZero(void)
    void SetZero();
};

#endif /* BW1_DECOMP_WONDER_INCLUDED_H */
