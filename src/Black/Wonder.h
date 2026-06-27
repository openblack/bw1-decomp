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

    // BW1W120 00561220 BW1M100 10161090 Wonder::_dt(void)
    virtual ~Wonder();
    // BW1W120 00778e40 BW1M100 10161bc0 Wonder::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00561210 BW1M100 101612d0 Wonder::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 007790f0 BW1M100 10161470 Wonder::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 00779080 BW1M100 10161540 Wonder::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 00561200 BW1M100 10161290 Wonder::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 005611b0 BW1M100 inlined Wonder::GetArrivePos(MapCoords *)
    virtual MapCoords* GetArrivePos(MapCoords* param_1);
    // BW1W120 005611e0 BW1M100 10161200 Wonder::CanActAsAContainer(Creature *)
    virtual uint32_t CanActAsAContainer(Creature* param_1);
    // BW1W120 005611f0 BW1M100 10161250 Wonder::IsStoragePit(Creature *)
    virtual uint32_t IsStoragePit(Creature* param_1);
    // BW1W120 00779160 BW1M100 101613c0 Wonder::CallVirtualFunctionsForCreation(const MapCoords&)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* coords);
    // BW1W120 00779190 BW1M100 10161310 Wonder::Get3DType(void)
    virtual LH3DObject::ObjectType Get3DType();
    // BW1W120 00778f30 BW1M100 10161920 Wonder::Built(void)
    virtual bool Built();
    // BW1W120 00779070 BW1M100 10161620 Wonder::SetPower(float)
    virtual void SetPower(float param_1);
    // BW1W120 00778fc0 BW1M100 10161700 Wonder::AddToPlayer(void)
    virtual void AddToPlayer();
    // BW1W120 00778f50 BW1M100 10161810 Wonder::RemoveFromPlayer(void)
    virtual void RemoveFromPlayer();

    // Static methods

    // BW1W120 00778e80 BW1M100 101619e0 Wonder::Create(const MapCoords&, const GAbodeInfo*, Town*, float, float, float, int)
    static Wonder* Create(const MapCoords* coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food, int wood);

    // Constructors

    // BW1W120 00778e00 BW1M100 10161c40 Wonder::Wonder(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
    Wonder(const MapCoords* coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food, int wood);

    // Non-virtual methods

    // BW1W120 00779060 BW1M100 inlined Wonder::SetZero(void)
    void SetZero();
};

#endif /* BW1_DECOMP_WONDER_INCLUDED_H */
