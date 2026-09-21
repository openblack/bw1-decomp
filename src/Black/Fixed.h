#ifndef BW1_DECOMP_FIXED_INCLUDED_H
#define BW1_DECOMP_FIXED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <re_common.h> /* For bool32_t */

#include "Object.h" /* For struct Object, struct ObjectVftable */

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GObjectInfo;
class GameOSFile;
class GameThing;
struct GameThingVftable;
class GameThingWithPos;
struct GameThingWithPosVftable;
struct GestureSystemPacketData;
struct MapCell;
struct MapCoords;
class NewCollide;
class PhysicsObject;
class Villager;

class Fixed : public Object
{
public:
	GameThing* town_artifact; /* 0x54 */

	// Override methods

	// BW1W120 0052df20 BW1M119 010e6b20
	virtual float GetTownArtifactValue();
	// BW1W120 0052e170 BW1M119 inlined
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0052e140 BW1M119 010e6700
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00401400 BW1M119 013eb100
	virtual bool32_t CanBeFrighteningToCreature(Creature* creature) { return false; }
	// BW1W120 00401410 BW1M119 014269b0
	virtual bool32_t CanBeSleptNextToByCreature(Creature* creature) { return true; }
	// BW1W120 00401420 BW1M119 010a3e90
	virtual bool32_t CanBeDestroyedByStoning(Creature* creature) { return true; }
	// BW1W120 00401430 BW1M119 01176870
	virtual bool32_t CanBeSetOnFire(Creature* creature) { return (GameThing::Flags & GAME_THING_FLAG_FIREPROOF) == 0; }
	// BW1W120 00401440 BW1M119 013e9040
	virtual bool32_t CanBePickedUpByCreature(Creature* creature) { return false; }
	// BW1W120 00401450 BW1M119 015a06c0
	virtual bool32_t CanBeCrushed() { return true; }
	// BW1W120 00401460 BW1M119 014190e0
	virtual bool32_t VillagerMustAvoid(Villager* param_1) { return true; }
	// BW1W120 00401470 BW1M119 010b41c0
	virtual GameThing* GetTownArtifact() { return town_artifact; }
	// BW1W120 00401480 BW1M119 013e07d0
	virtual bool32_t IsTownArtifact() { return town_artifact != NULL; }
	// BW1W120 004d1b80 BW1M119 012477c0
	virtual float GetHowMuchCreatureWantsToLookAtMe();
	// BW1W120 0052de30 BW1M119 010e6df0
	virtual void Create3DObject();
	// BW1W120 0052e530 BW1M119 010e5b40
	virtual void InsertMapObject();
	// BW1W120 0052e5c0 BW1M119 010e5aa0
	virtual void RemoveMapObject();
	// BW1W120 0052dea0 BW1M119 010e6c80
	virtual void InsertMapObjectToCell(MapCell* cell);
	// BW1W120 0052eb90 BW1M119 010e4f40
	virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* status);
	// BW1W120 0052eba0 BW1M119 010e4ee0
	virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* status);
	// BW1W120 0052e0e0 BW1M119 010e6790
	virtual bool32_t InterfaceSetInMagicHand(GInterfaceStatus* status);
	// BW1W120 0052df50 BW1M119 010e68a0
	virtual Object* EndPhysics(PhysicsObject* param_1, bool param_2);
	// BW1W120 0052de50 BW1M119 010e6d40
	virtual bool32_t GetSpecialPos(uint32_t index, MapCoords* pos);
	// BW1W120 0052dee0 BW1M119 010e6bc0
	virtual void InsertMapObjectToCellAssumeFixed(MapCell* cell);
	// BW1W120 004252f0 BW1M119 010ad5c0
	virtual bool IsObjectFullyInMap();

	// Constructors

	// BW1W120 0052dd80 BW1M119 inlined
	Fixed();
	// BW1W120 0052ddc0 BW1M119 010e6f00
	Fixed(const MapCoords* coords, const GObjectInfo* info, float y_angle, float scale);

	// Non-virtual Destructors

	// BW1W120 0052dda0 BW1M119 010e6e70
	~Fixed();
};

class SingleMapFixed : public Fixed
{
public:
	NewCollide* CollideData; /* 0x58 */

	// Override methods

	// BW1W120 0052eb40 BW1M119 010e5060
	virtual ~SingleMapFixed();
	// BW1W120 0052e620 BW1M119 010e5940
	virtual void InsertMapObject();
	// BW1W120 0052e600 BW1M119 010e59e0
	virtual void RemoveMapObject();
	// BW1W120 0052f440 BW1M119 010e3790
	virtual void InsertMapObjectToCell(MapCell* param_1);
	// BW1W120 0052f450 BW1M119 010e3720
	virtual void RemoveMapObjectFromCell(MapCell* param_1);
	// BW1W120 0052eb10 BW1M119 010e7740
	virtual MESH_LIST GetMesh() const;
	// BW1W120 00518100 BW1M119 0103aba0
	virtual void Draw();
	// BW1W120 0052e880 BW1M119 010e5430
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 0052eaf0 BW1M119 010e7670
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 0052eb00 BW1M119 010e76d0
	virtual uint32_t ValidToApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords);
	// BW1W120 0052f420 BW1M119 010e3800
	virtual uint32_t ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords,
	                                     GestureSystemPacketData* param_3);
	// BW1W120 0052eb20 BW1M119 010e77b0
	virtual uint32_t ApplyOnlyAfterReleased();
	// BW1W120 0052eb30 BW1M119 01097980
	virtual NewCollide* GetCollideData();
	// BW1W120 0052f510 BW1M119 010e34a0
	virtual void CreateCollideData();
};

#endif /* BW1_DECOMP_FIXED_INCLUDED_H */
