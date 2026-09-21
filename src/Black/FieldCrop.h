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

class FieldCrop : public MobileObject
{
public:
	// Override methods

	// BW1W120 0055d110 BW1M119 013c35e0
	virtual ~FieldCrop();
	// BW1W120 00607e20 BW1M119 013c3570
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00608270 BW1M119 013c32e0
	virtual bool32_t IsFunctional();
	// BW1W120 0055d100 BW1M119 013c2c60
	virtual char* GetDebugText();
	// BW1W120 0055d0f0 BW1M119 013c2c20
	virtual uint32_t GetSaveType();
	// BW1W120 0055d0e0 BW1M119 013c2be0
	virtual void PhysicsEditorCreate(int param_1);
	// BW1W120 00608260 BW1M119 013c3340
	virtual void InsertMapObject();
	// BW1W120 00608250 BW1M119 013c3390
	virtual void RemoveMapObject();
	// BW1W120 00607dc0 BW1M119 013c3720
	virtual HOLD_TYPE GetHoldType();
	// BW1W120 006081e0 BW1M119 013c3430
	virtual void SetLife(float param_1);
	// BW1W120 006083e0 BW1M119 013c2d40
	virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 00608360 BW1M119 013c2f90
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 00608390 BW1M119 013c2ec0
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
	// BW1W120 006082b0 BW1M119 013c3240
	virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords,
	                                     GestureSystemPacketData* param_3);
	// BW1W120 006082e0 BW1M119 013c31c0
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 006082f0 BW1M119 013c30d0
	virtual void SetUpPhysOb(PhysOb* param_1);
	// BW1W120 00608340 BW1M119 013c3080
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 006082d0 BW1M119 013c3200
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 00608440 BW1M119 013c2ca0
	virtual bool32_t CreatureMustAvoid(Creature* param_1);
	// BW1W120 00608350 BW1M119 013c3040
	virtual bool32_t IsARootedObject();
};

#endif /* BW1_DECOMP_FIELD_CROP_INCLUDED_H */
