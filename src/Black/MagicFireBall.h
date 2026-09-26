#ifndef BW1_DECOMP_MAGIC_FIRE_BALL_INCLUDED_H
#define BW1_DECOMP_MAGIC_FIRE_BALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Object.h" /* For struct Object */

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;

class MagicFireBall : public Object
{
public:
	uint32_t field_0x54;
	bool     field_0x58;
	uint32_t field_0x5c;

	// Override methods

	// BW1W120 00682b50 BW1M119 014072a0
	virtual ~MagicFireBall();
	// BW1W120 00682c30 BW1M119 01406ff0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00682bf0 BW1M119 01407210
	virtual GPlayer* GetPlayer();
	// BW1W120 00682d20 BW1M119 01406f50
	virtual float Get2DRadius();
	// BW1W120 00682b40 BW1M119 01407be0
	virtual char* GetDebugText();
	// BW1W120 00683320 BW1M119 01405fc0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006832b0 BW1M119 014060b0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00682b30 BW1M119 01407ba0
	virtual uint32_t GetSaveType();
	// BW1W120 00682a50 BW1M119 01407740
	virtual bool32_t IsMagicFireBall();
	// BW1W120 00682a80 BW1M119 01407820
	virtual bool32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 00682a90 BW1M119 01407870
	virtual bool32_t CanBeSetOnFire(Creature* param_1);
	// BW1W120 00682aa0 BW1M119 014078c0
	virtual bool32_t CanBeStompedOnByCreature(Creature* param_1);
	// BW1W120 00682ab0 BW1M119 01407910
	virtual bool32_t CanBeThrownByCreature(Creature* param_1);
	// BW1W120 00682ac0 BW1M119 01407960
	virtual bool32_t CanBePutInAStoragePit(Creature* param_1);
	// BW1W120 00682ad0 BW1M119 014079b0
	virtual bool32_t CanBeDestroyedByStoning(Creature* param_1);
	// BW1W120 00682ae0 BW1M119 01407a00
	virtual bool32_t CanBeStonedAndEatenByCreature(Creature* param_1);
	// BW1W120 00682af0 BW1M119 01407a60
	virtual bool32_t CanBeExaminedByCreature(Creature* param_1);
	// BW1W120 00682b00 BW1M119 01407ab0
	virtual bool32_t CanBeFoughtByCreature(Creature* param_1);
	// BW1W120 00682b10 BW1M119 01407b00
	virtual bool32_t CanActAsAContainer(Creature* param_1);
	// BW1W120 00682d30 BW1M119 01406ef0
	virtual float GetHeight();
	// BW1W120 00682d10 BW1M119 01406fb0
	virtual void InsertMapObject();
	// BW1W120 00682d40 BW1M119 01406e20
	virtual float GetHeatCapacity();
	// BW1W120 00682d90 BW1M119 01406dc0
	virtual void GetFireGPHXDrawn(bool* param_1, bool* param_2, bool* param_3, bool* param_4);
	// BW1W120 00682db0 BW1M119 01406d40
	virtual float GetRainCoolingMultiplier();
	// BW1W120 00682f20 BW1M119 014068b0
	virtual void Draw();
	// BW1W120 00682dd0 BW1M119 01406c70
	virtual bool32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 00682e80 BW1M119 014068e0
	virtual bool32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 00682a40 BW1M119 01407700
	virtual bool32_t IsTuggable();
	// BW1W120 00682e40 BW1M119 01406b70
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
	// BW1W120 00682e50 BW1M119 01406a30
	virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
	// BW1W120 00682a60 BW1M119 01407780
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00682a70 BW1M119 014077d0
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 00682b20 BW1M119 01407b50
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);

	// Constructors

	// BW1W120 00682a20 BW1M119 01407330
	MagicFireBall();
};

#endif /* BW1_DECOMP_MAGIC_FIRE_BALL_INCLUDED_H */
