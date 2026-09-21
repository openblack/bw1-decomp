#ifndef BW1_DECOMP_MAGIC_SHIELD_INCLUDED_H
#define BW1_DECOMP_MAGIC_SHIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "MapShield.h" /* For struct MapShield */

// Forward Declares

class Base;
class EffectValues;
class GameOSFile;
class GameThing;
struct MapCoords;
class Object;

class MagicShield : public MapShield
{
public:
	// Override methods

	// BW1W120 0072c230 BW1M119 0153cb90
	virtual ~MagicShield();
	// BW1W120 0072c220 BW1M119 0153cc70
	virtual char* GetDebugText();
	// BW1W120 0072c3d0 BW1M119 015398e0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0072c3f0 BW1M119 01539880
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0072c210 BW1M119 0153cc30
	virtual uint32_t GetSaveType();
	// BW1W120 0072c300 BW1M119 01539bd0
	virtual void Draw();
	// BW1W120 0072c2a0 BW1M119 01539c80
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 0072c340 BW1M119 01539a80
	virtual LH3DObject::ObjectType Get3DType();
	// BW1W120 0072c320 BW1M119 01539b20
	virtual bool32_t SetDying();
	// BW1W120 0072c310 BW1M119 01539b80
	virtual uint32_t IsEffectReceiver(EffectValues* param_1);
	// BW1W120 0072c330 BW1M119 01539ad0
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 0072c2e0 BW1M119 01539c40
	virtual void ProcessShield();
	// BW1W120 0072c2f0 BW1M119 01539c00
	virtual void DrawShield();
	// BW1W120 0072b850 BW1M119 0153b8e0
	virtual bool IsPointDefinietlyWithinShieldVolume(const MapCoords& param_1);
};

#endif /* BW1_DECOMP_MAGIC_SHIELD_INCLUDED_H */
