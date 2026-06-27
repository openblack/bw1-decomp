#ifndef BW1_DECOMP_FIELD_CROP_INCLUDED_H
#define BW1_DECOMP_FIELD_CROP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum HOLD_TYPE */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GameThing;
class GameThingWithPos;
struct GestureSystemPacketData;
struct MapCoords;
class Object;
struct PhysOb;

class FieldCrop: public MobileObject
{
public:

    // Override methods

    // BW1W120 0055d110 BW1M100 103bb4e0 FieldCrop::_dt(void)
    virtual ~FieldCrop();
    // BW1W120 00607e20 BW1M100 103bb470 FieldCrop::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00608270 BW1M100 103bb1e0 FieldCrop::IsFunctional(void)
    virtual bool IsFunctional();
    // BW1W120 0055d100 BW1M100 103bab60 FieldCrop::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0055d0f0 BW1M100 103bab20 FieldCrop::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0055d0e0 BW1M100 103baae0 FieldCrop::PhysicsEditorCreate(int)
    virtual void PhysicsEditorCreate(int param_1);
    // BW1W120 00608260 BW1M100 103bb240 FieldCrop::InsertMapObject(void)
    virtual void InsertMapObject();
    // BW1W120 00608250 BW1M100 103bb290 FieldCrop::RemoveMapObject(void)
    virtual void RemoveMapObject();
    // BW1W120 00607dc0 BW1M100 103bb620 FieldCrop::GetHoldType(void)
    virtual HOLD_TYPE GetHoldType();
    // BW1W120 006081e0 BW1M100 103bb330 FieldCrop::SetLife(float)
    virtual void SetLife(float param_1);
    // BW1W120 006083e0 BW1M100 103bac40 FieldCrop::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
    // BW1W120 00608360 BW1M100 103bae90 FieldCrop::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
    virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
    // BW1W120 00608390 BW1M100 103badc0 FieldCrop::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
    // BW1W120 006082b0 BW1M100 103bb140 FieldCrop::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2, GestureSystemPacketData* param_3);
    // BW1W120 006082e0 BW1M100 103bb0c0 FieldCrop::GetPhysicsConstantsType(void)
    virtual uint32_t GetPhysicsConstantsType();
    // BW1W120 006082f0 BW1M100 103bafd0 FieldCrop::SetUpPhysOb(PhysOb *)
    virtual void SetUpPhysOb(PhysOb* param_1);
    // BW1W120 00608340 BW1M100 103baf80 FieldCrop::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // BW1W120 006082d0 BW1M100 103bb100 FieldCrop::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // BW1W120 00608440 BW1M100 103baba0 FieldCrop::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // BW1W120 00608350 BW1M100 103baf40 FieldCrop::IsARootedObject(void)
    virtual bool IsARootedObject();
};

#endif /* BW1_DECOMP_FIELD_CROP_INCLUDED_H */
