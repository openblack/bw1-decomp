#ifndef BW1_DECOMP_MAGIC_TELEPORT_INCLUDED_H
#define BW1_DECOMP_MAGIC_TELEPORT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MobileStatic.h" /* For struct MobileStatic */

// Forward Declares

class Base;
class Creature;
class EffectValues;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class Living;
struct MapCoords;
class Object;

class MagicTeleport : public MobileStatic
{
public:
	// Override methods

	// BW1W120 005fc100 BW1M119 013b8af0
	virtual ~MagicTeleport();
	// BW1W120 005fc310 BW1M119 013b8630
	virtual void ToBeDeleted(int param_1);
	// BW1W120 005fc430 BW1M119 013b85f0
	virtual GPlayer* GetPlayer();
	// BW1W120 005fccb0 BW1M119 013b7460
	virtual float Get2DRadius();
	// BW1W120 005fc0f0 BW1M119 013b70b0
	virtual char* GetDebugText();
	// BW1W120 005fbf50 BW1M119 013b9350
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 005fbfa0 BW1M119 013b92a0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 005fc0e0 BW1M119 013b7070
	virtual uint32_t GetSaveType();
	// BW1W120 005fc040 BW1M119 013b6d40
	virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 005fc050 BW1M119 013b6d90
	virtual uint32_t CanBeSetOnFire(Creature* param_1);
	// BW1W120 005fc060 BW1M119 013b6de0
	virtual uint32_t CanBeStompedOnByCreature(Creature* param_1);
	// BW1W120 005fc070 BW1M119 013b6e30
	virtual uint32_t CanBeThrownByCreature(Creature* param_1);
	// BW1W120 005fc080 BW1M119 013b6e80
	virtual uint32_t CanBePutInAStoragePit(Creature* param_1);
	// BW1W120 005fc090 BW1M119 013b6ed0
	virtual uint32_t CanBeDestroyedByStoning(Creature* param_1);
	// BW1W120 005fc0a0 BW1M119 013b6f20
	virtual uint32_t CanBeStonedAndEatenByCreature(Creature* param_1);
	// BW1W120 005fc0b0 BW1M119 013b6f80
	virtual uint32_t CanBeExaminedByCreature(Creature* param_1);
	// BW1W120 005fc0c0 BW1M119 013b6fd0
	virtual uint32_t CanBeFoughtByCreature(Creature* param_1);
	// BW1W120 005fc0d0 BW1M119 013b7020
	virtual uint32_t CanActAsAContainer(Creature* param_1);
	// BW1W120 005fc960 BW1M119 013b7860
	virtual void ActualMoveMapObject(const MapCoords& param_1);
	// BW1W120 005fccc0 BW1M119 013b7280
	virtual void Draw();
	// BW1W120 005fc260 BW1M119 013b8b80
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 005fc440 BW1M119 013b8540
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 005fc470 BW1M119 013b8490
	virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 005fce00 BW1M119 013b7190
	virtual uint32_t IsEffectReceiver(EffectValues* param_1);
	// BW1W120 005fcde0 BW1M119 013b7230
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 005fcdf0 BW1M119 013b71e0
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 005fc4a0 BW1M119 013b8450
	virtual uint32_t IsSolidToNewAbode();

	// Non-virtual methods

	// BW1W120 005fc790 BW1M119 013b7950
	void DoTeleport(Living* living, bool force);
};

#endif /* BW1_DECOMP_MAGIC_TELEPORT_INCLUDED_H */
