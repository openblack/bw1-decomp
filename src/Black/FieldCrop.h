#ifndef BW1_DECOMP_FIELD_CROP_INCLUDED_H
#define BW1_DECOMP_FIELD_CROP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum HOLD_TYPE */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

class Base;
class Creature;
class EffectValues;
class Field;
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
	// Constructors

	// BW1W120 inlined BW1M119 inlined
	FieldCrop() {}
	// BW1W120 00607dd0 BW1M119 013c3670
	FieldCrop(const MapCoords& coords, const GMobileObjectInfo* info, Object* field, float y_angle, float scale);

	// Static methods

	// BW1W120 00607e40 BW1M119 null
	static FieldCrop* Create(const MapCoords& coords, const GMobileObjectInfo* info, Object* field, float y_angle,
	                         float scale);

	// Non-virtual methods

	// BW1W120 00608110 BW1M119 013c3500
	Field* GetField();
	// BW1W120 00608240 BW1M119 013c33e0
	void RemoveFromField();
	// fabricated name
	// BW1W120 00608130 BW1M119 null
	float GetFoodAmount();
	// fabricated name
	// BW1W120 00608150 BW1M119 null
	float TakeFood(EffectValues& effect);
	// fabricated name
	// BW1W120 006081d0 BW1M119 null
	void RemoveFromFieldAndDelete(int param_1);
	// fabricated name
	// BW1W120 00608280 BW1M119 null
	bool32_t IsPlacedInField();

	// Override methods

	// BW1W120 00607e10 BW1M119 013c35e0
	virtual ~FieldCrop();
	// BW1W120 00607e20 BW1M119 013c3570
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00608270 BW1M119 013c32e0
	virtual bool32_t IsFunctional();
	// BW1W120 0055d100 BW1M119 013c2c60
	virtual char* GetDebugText() { return "FieldCrop:"; }
	// BW1W120 0055d0f0 BW1M119 013c2c20
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_FIELD_CROP; }
	// BW1W120 0055d0e0 BW1M119 013c2be0
	virtual void PhysicsEditorCreate(int keep_altitude) {}
	// BW1W120 00608260 BW1M119 013c3340
	virtual void InsertMapObject();
	// BW1W120 00608250 BW1M119 013c3390
	virtual void RemoveMapObject();
	// BW1W120 00607dc0 BW1M119 013c3720
	virtual HOLD_TYPE GetHoldType();
	// BW1W120 006081e0 BW1M119 013c3430
	virtual void SetLife(float life);
	// BW1W120 006083e0 BW1M119 013c2d40
	virtual bool32_t InterfaceSetInMagicHand(GInterfaceStatus* status);
	// BW1W120 00608360 BW1M119 013c2f90
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* status, Object* target);
	// BW1W120 00608390 BW1M119 013c2ec0
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* status, Object* target, GestureSystemPacketData* packet);
	// BW1W120 006082b0 BW1M119 013c3240
	virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords,
	                                     GestureSystemPacketData* packet);
	// BW1W120 006082e0 BW1M119 013c31c0
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 006082f0 BW1M119 013c30d0
	virtual void SetUpPhysOb(PhysOb* phys_ob);
	// BW1W120 00608340 BW1M119 013c3080
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 006082d0 BW1M119 013c3200
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 00608440 BW1M119 013c2ca0
	virtual bool32_t CreatureMustAvoid(Creature* creature);
	// BW1W120 00608350 BW1M119 013c3040
	virtual bool32_t IsARootedObject();
};

#endif /* BW1_DECOMP_FIELD_CROP_INCLUDED_H */
