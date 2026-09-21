#ifndef BW1_DECOMP_PHYSICAL_SHIELD_INCLUDED_H
#define BW1_DECOMP_PHYSICAL_SHIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "MapShield.h" /* For struct MapShield */

// Forward Declares

class Base;
class EffectValues;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class Living;
struct MapCoords;
class Object;
struct PhysOb;
class PhysicsObject;
class Reaction;

class PhysicalShield : public MapShield
{
public:
	// Override methods

	// BW1W120 0072cb20 BW1M119 0153c920
	virtual ~PhysicalShield();
	// BW1W120 0072cc50 BW1M119 01538b60
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0072cb10 BW1M119 0153ca60
	virtual char* GetDebugText();
	// BW1W120 0072c410 BW1M119 01539430
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0072c700 BW1M119 01538fb0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0072cb00 BW1M119 0153ca20
	virtual uint32_t GetSaveType();
	// BW1W120 0072d7f0 BW1M119 015376a0
	virtual float GetImpressiveValue(Living* param_1, Reaction* param_2);
	// BW1W120 0072ce60 BW1M119 01538690
	virtual float ApplyEffect(EffectValues& param_1, int param_2);
	// BW1W120 0072ce80 BW1M119 01538620
	virtual uint32_t DestroyedByEffect(GPlayer* param_1, float param_2);
	// BW1W120 0072cea0 BW1M119 015385f0
	virtual void Draw();
	// BW1W120 0072ccb0 BW1M119 01538990
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 0072ce50 BW1M119 01538700
	virtual LH3DObject::ObjectType Get3DType();
	// BW1W120 0072d170 BW1M119 01538120
	virtual bool32_t SetDying();
	// BW1W120 0072cc80 BW1M119 01538ae0
	virtual uint32_t IsEffectReceiver(EffectValues* param_1);
	// BW1W120 0072d7e0 BW1M119 015377d0
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 0072ceb0 BW1M119 01538560
	virtual void SetUpPhysOb(PhysOb* param_1);
	// BW1W120 0072d600 BW1M119 01537b40
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 0072d610 BW1M119 01537820
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 0072caf0 BW1M119 0153c9c0
	virtual bool GetAlwaysRemainsInPhysicsInternalSystem();
	// BW1W120 0072d190 BW1M119 01537b90
	virtual void ProcessShield();
	// BW1W120 0072ced0 BW1M119 01538200
	virtual void DrawShield();
	// BW1W120 0072b8e0 BW1M119 0153b740
	virtual bool IsPointDefinietlyWithinShieldVolume(const MapCoords& param_1);
};

#endif /* BW1_DECOMP_PHYSICAL_SHIELD_INCLUDED_H */
