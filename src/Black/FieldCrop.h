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

    // win1.41 0055d110 mac 103bb4e0 FieldCrop::_dt(void)
    virtual ~FieldCrop();
    // win1.41 00607e20 mac 103bb470 FieldCrop::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00608270 mac 103bb1e0 FieldCrop::IsFunctional(void)
    virtual bool IsFunctional();
    // win1.41 0055d100 mac 103bab60 FieldCrop::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0055d0f0 mac 103bab20 FieldCrop::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0055d0e0 mac 103baae0 FieldCrop::PhysicsEditorCreate(int)
    virtual void PhysicsEditorCreate(int param_1);
    // win1.41 00608260 mac 103bb240 FieldCrop::InsertMapObject(void)
    virtual void InsertMapObject();
    // win1.41 00608250 mac 103bb290 FieldCrop::RemoveMapObject(void)
    virtual void RemoveMapObject();
    // win1.41 00607dc0 mac 103bb620 FieldCrop::GetHoldType(void)
    virtual HOLD_TYPE GetHoldType();
    // win1.41 006081e0 mac 103bb330 FieldCrop::SetLife(float)
    virtual void SetLife(float param_1);
    // win1.41 006083e0 mac 103bac40 FieldCrop::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
    // win1.41 00608360 mac 103bae90 FieldCrop::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
    virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
    // win1.41 00608390 mac 103badc0 FieldCrop::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
    // win1.41 006082b0 mac 103bb140 FieldCrop::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* param_1, const MapCoords* param_2, GestureSystemPacketData* param_3);
    // win1.41 006082e0 mac 103bb0c0 FieldCrop::GetPhysicsConstantsType(void)
    virtual uint32_t GetPhysicsConstantsType();
    // win1.41 006082f0 mac 103bafd0 FieldCrop::SetUpPhysOb(PhysOb *)
    virtual void SetUpPhysOb(PhysOb* param_1);
    // win1.41 00608340 mac 103baf80 FieldCrop::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 006082d0 mac 103bb100 FieldCrop::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 00608440 mac 103baba0 FieldCrop::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // win1.41 00608350 mac 103baf40 FieldCrop::IsARootedObject(void)
    virtual bool IsARootedObject();
};

#endif /* BW1_DECOMP_FIELD_CROP_INCLUDED_H */
