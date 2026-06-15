#ifndef BW1_DECOMP_BIG_FOREST_INCLUDED_H
#define BW1_DECOMP_BIG_FOREST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

class Base;
class Creature;
class Forest;
class GBigForestInfo;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class LHOSFile;
struct MapCoords;
class Object;
class Villager;

class BigForest: public MultiMapFixed
{
public:
    uint32_t field_0x80; /* 0x7c */
    Forest* forest; /* 0x80 */
    uint32_t field_0x84;

    // Override methods

    // win1.41 00438e20 mac 100b3990 BigForest::_dt(void)
    virtual ~BigForest();
    // win1.41 00438e60 mac 100b36e0 BigForest::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 004390d0 mac 100b2d80 BigForest::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
    virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
    // win1.41 00438e10 mac 100b25b0 BigForest::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 004394e0 mac 100b2760 BigForest::Load(GameOSFile &)
    virtual bool Load(GameOSFile* file);
    // win1.41 00439470 mac 100b2840 BigForest::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00438e00 mac 100b2570 BigForest::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00438df0 mac 100b24d0 BigForest::GetMesh( const(void))
    virtual int GetMesh();
    // win1.41 00438f60 mac 10020e40 BigForest::Draw(void)
    virtual void Draw();
    // win1.41 00439550 mac 100b2690 BigForest::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
    virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
    // win1.41 00439050 mac 100b30a0 BigForest::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 00438da0 mac 100b2350 BigForest::Get3DType(void)
    virtual LH3DObject::ObjectType Get3DType();
    // win1.41 004390b0 mac 100b2fe0 BigForest::GetWoodValue(void)
    virtual float GetWoodValue();
    // win1.41 00438db0 mac 100b2390 BigForest::ValidForPlaceInHand(GInterfaceStatus *)
    virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
    // win1.41 004393c0 mac 100b29f0 BigForest::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
    // win1.41 00438dc0 mac 100b23e0 BigForest::IsTuggable(void)
    virtual uint32_t IsTuggable();
    // win1.41 004390a0 mac 100b3050 BigForest::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 00438f50 mac 100b3530 BigForest::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // win1.41 00438dd0 mac 100b2420 BigForest::VillagerMustAvoid(Villager *)
    virtual uint32_t VillagerMustAvoid(Villager* param_1);
    // win1.41 00438de0 mac 100b2470 BigForest::GetCarriedTreeType(void)
    virtual uint32_t GetCarriedTreeType();
    // win1.41 00438f70 mac 100b3190 BigForest::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);

    // Static methods

    // win1.41 00438ec0 mac 100b3590 BigForest::Create(MapCoords const &, GBigForestInfo const *, unsigned long, float, float)
    static BigForest* Create(MapCoords* coords, GBigForestInfo* info, uint32_t param_3, float param_4, float param_5);

    // Constructors

    // win1.41 00438ce0 mac 100b3a20 BigForest::BigForest(MapCoords const &, GBigForestInfo const *, unsigned long, float, float)
    BigForest(const MapCoords* coords, const GBigForestInfo* info, uint32_t param_3, float param_4, float param_5);
};

#endif /* BW1_DECOMP_BIG_FOREST_INCLUDED_H */
