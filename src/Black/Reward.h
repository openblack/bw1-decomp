#ifndef BW1_DECOMP_REWARD_INCLUDED_H
#define BW1_DECOMP_REWARD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "BaseInfo.h"     /* For struct GBaseInfo */
#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

class Base;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;

class Reward : public MobileObject
{
public:
	// BW1W120 006e6890 BW1M119 01090310
	static void ProcessList();

	uint8_t field_0x68[0x40];

	// Override methods

	// BW1W120 006e5690 BW1M119 01144bf0
	virtual ~Reward();
	// BW1W120 006e5c10 BW1M119 011440d0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 006e5cb0 BW1M119 01144060
	virtual GPlayer* GetPlayer();
	// BW1W120 006e5680 BW1M119 01141c20
	virtual char* GetDebugText();
	// BW1W120 006e6c70 BW1M119 01141cb0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006e69c0 BW1M119 01142030
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 006e5670 BW1M119 01141be0
	virtual uint32_t GetSaveType();
	// BW1W120 006e6f00 BW1M119 01141c60
	virtual void ResolveLoad();
	// BW1W120 006e6990 BW1M119 01142470
	virtual void PhysicsEditorCreate(int param_1);
	// BW1W120 006e69b0 BW1M119 011423e0
	virtual uint32_t GetOverwriteTapToolTip();
	// BW1W120 006e5650 BW1M119 01141b80
	virtual bool32_t IsReward() const;
	// BW1W120 006e5660 BW1M119 01141bb0
	virtual bool32_t IsActive() const;
	// BW1W120 006e5ca0 BW1M119 01144090
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 006e68f0 BW1M119 01142500
	virtual uint32_t Process();
	// BW1W120 006e6380 BW1M119 01143150
	virtual void Draw();
	// BW1W120 006e6880 BW1M119 01142780
	virtual float GetWeight();
	// BW1W120 006e59b0 BW1M119 01144290
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 006e69a0 BW1M119 01142420
	virtual bool32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 006e5cc0 BW1M119 01143f90
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
	// BW1W120 006e5d00 BW1M119 011431a0
	virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
	// BW1W120 006e6980 BW1M119 011424b0
	virtual bool32_t CanBecomeAPhysicsObject();
};

class GRewardProgress : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 006e5580 BW1M119 01143d00
	virtual ~GRewardProgress();
	// BW1W120 006e5520 BW1M119 01145010
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_REWARD_INCLUDED_H */
