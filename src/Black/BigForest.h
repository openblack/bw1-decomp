#ifndef BW1_DECOMP_BIG_FOREST_INCLUDED_H
#define BW1_DECOMP_BIG_FOREST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h>                             /* For enum RESOURCE_TYPE */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

class Base;
class Creature;
class Forest;
class GBigForestInfo;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class LHOSFile;
struct MapCoords;
class Object;
class Villager;

class BigForest : public MultiMapFixed
{
public:
	uint32_t field_0x80; /* 0x7c */
	Forest*  forest;     /* 0x80 */
	uint32_t field_0x84;

	// Override methods

	// BW1W120 00438e20 BW1M119 010b6510
	virtual ~BigForest();
	// BW1W120 00438e60 BW1M119 010b6260
	virtual void ToBeDeleted(int param_1);
	// BW1W120 004390d0 BW1M119 010b58e0
	virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
	// BW1W120 00438e10 BW1M119 010b5110
	virtual char* GetDebugText();
	// BW1W120 004394e0 BW1M119 010b52c0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00439470 BW1M119 010b53a0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00438e00 BW1M119 010b50d0
	virtual uint32_t GetSaveType();
	// BW1W120 00438df0 BW1M119 010b5030
	virtual MESH_LIST GetMesh() const;
	// BW1W120 00438f60 BW1M119 010239b0
	virtual void Draw();
	// BW1W120 00439550 BW1M119 010b51f0
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
	// BW1W120 00439050 BW1M119 010b5c00
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 00438da0 BW1M119 010b4eb0
	virtual LH3DObject::ObjectType Get3DType();
	// BW1W120 004390b0 BW1M119 010b5b40
	virtual float GetWoodValue();
	// BW1W120 00438db0 BW1M119 010b4ef0
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 004393c0 BW1M119 010b5550
	virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 00438dc0 BW1M119 010b4f40
	virtual uint32_t IsTuggable();
	// BW1W120 004390a0 BW1M119 010b5bb0
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00438f50 BW1M119 010b60b0
	virtual bool32_t CreatureMustAvoid(Creature* param_1);
	// BW1W120 00438dd0 BW1M119 010b4f80
	virtual uint32_t VillagerMustAvoid(Villager* param_1);
	// BW1W120 00438de0 BW1M119 010b4fd0
	virtual uint32_t GetCarriedTreeType();
	// BW1W120 00438f70 BW1M119 010b5cf0
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);

	// Non-virtual methods

	// BW1W120 00439360 BW1M119 010b5670
	// NOTE: symbols.txt mangles this ?GetArrivePos@BigForest@@QAEXPAVVillager@@@Z (void ret),
	// but the call sites pass a hidden MapCoords retbuf, so it really returns MapCoords by value
	// (AGENTS.md Rule 2). Declared by-value here; symbols.txt needs the dispatcher to re-mangle.
	MapCoords GetArrivePos(Villager* villager);

	// Static methods

	// BW1W120 00438ec0 BW1M119 010b6110
	static BigForest* Create(const MapCoords& coords, const GBigForestInfo* info, uint32_t param_3, float param_4,
	                         float param_5);

	// Constructors

	// BW1W120 00438ce0 BW1M119 010b65a0
	BigForest(const MapCoords& coords, const GBigForestInfo* info, uint32_t param_3, float param_4, float param_5);
};

#endif /* BW1_DECOMP_BIG_FOREST_INCLUDED_H */
