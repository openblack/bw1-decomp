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
struct MapCoords;
class Object;

class MagicTeleport : public MobileStatic
{
public:
	// Override methods

	// BW1W120 005fc100 BW1M100 103b0b60 MagicTeleport::_dt(void)
	virtual ~MagicTeleport();
	// BW1W120 005fc310 BW1M100 103b06a0 MagicTeleport::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 005fc430 BW1M100 103b0660 MagicTeleport::GetPlayer(void)
	virtual GPlayer* GetPlayer();
	// BW1W120 005fccb0 BW1M100 103af460 MagicTeleport::Get2DRadius(void)
	virtual float Get2DRadius();
	// BW1W120 005fc0f0 BW1M100 103af0b0 MagicTeleport::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 005fbf50 BW1M100 103b1400 MagicTeleport::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 005fbfa0 BW1M100 103b1350 MagicTeleport::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 005fc0e0 BW1M100 103af070 MagicTeleport::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 005fc040 BW1M100 103aed40 MagicTeleport::CanBePickedUpByCreature(Creature *)
	virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 005fc050 BW1M100 103aed90 MagicTeleport::CanBeSetOnFire(Creature *)
	virtual uint32_t CanBeSetOnFire(Creature* param_1);
	// BW1W120 005fc060 BW1M100 103aede0 MagicTeleport::CanBeStompedOnByCreature(Creature *)
	virtual uint32_t CanBeStompedOnByCreature(Creature* param_1);
	// BW1W120 005fc070 BW1M100 103aee30 MagicTeleport::CanBeThrownByCreature(Creature *)
	virtual uint32_t CanBeThrownByCreature(Creature* param_1);
	// BW1W120 005fc080 BW1M100 103aee80 MagicTeleport::CanBePutInAStoragePit(Creature *)
	virtual uint32_t CanBePutInAStoragePit(Creature* param_1);
	// BW1W120 005fc090 BW1M100 103aeed0 MagicTeleport::CanBeDestroyedByStoning(Creature *)
	virtual uint32_t CanBeDestroyedByStoning(Creature* param_1);
	// BW1W120 005fc0a0 BW1M100 103aef20 MagicTeleport::CanBeStonedAndEatenByCreature(Creature *)
	virtual uint32_t CanBeStonedAndEatenByCreature(Creature* param_1);
	// BW1W120 005fc0b0 BW1M100 103aef80 MagicTeleport::CanBeExaminedByCreature(Creature *)
	virtual uint32_t CanBeExaminedByCreature(Creature* param_1);
	// BW1W120 005fc0c0 BW1M100 103aefd0 MagicTeleport::CanBeFoughtByCreature(Creature *)
	virtual uint32_t CanBeFoughtByCreature(Creature* param_1);
	// BW1W120 005fc0d0 BW1M100 103af020 MagicTeleport::CanActAsAContainer(Creature *)
	virtual uint32_t CanActAsAContainer(Creature* param_1);
	// BW1W120 005fc960 BW1M100 103af8d0 MagicTeleport::ActualMoveMapObject(MapCoords const &)
	virtual void ActualMoveMapObject(const MapCoords* param_1);
	// BW1W120 005fccc0 BW1M100 103af280 MagicTeleport::Draw(void)
	virtual void Draw();
	// BW1W120 005fc260 BW1M100 103b0bf0 MagicTeleport::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
	// BW1W120 005fc440 BW1M100 103b05b0 MagicTeleport::ValidForPlaceInHand(GInterfaceStatus *)
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 005fc470 BW1M100 103b0500 MagicTeleport::InterfaceSetInMagicHand(GInterfaceStatus *)
	virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 005fce00 BW1M100 103af190 MagicTeleport::IsEffectReceiver(EffectValues *)
	virtual uint32_t IsEffectReceiver(EffectValues* param_1);
	// BW1W120 005fcde0 BW1M100 103af230 MagicTeleport::InteractsWithPhysicsObjects(void)
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 005fcdf0 BW1M100 103af1e0 MagicTeleport::CanBecomeAPhysicsObject(void)
	virtual bool CanBecomeAPhysicsObject();
	// BW1W120 005fc4a0 BW1M100 103b04c0 MagicTeleport::IsSolidToNewAbode(void)
	virtual uint32_t IsSolidToNewAbode();
};

#endif /* BW1_DECOMP_MAGIC_TELEPORT_INCLUDED_H */
