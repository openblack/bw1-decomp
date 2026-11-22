#ifndef BW1_DECOMP_BIG_FOREST_INCLUDED_H
#define BW1_DECOMP_BIG_FOREST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h>                             /* For enum RESOURCE_TYPE */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */
#include <Lionhead/LHLib/ver5.0/LHListNode.h>        /* For struct LHListNode */

#include "BigForestInfo.h" /* For class GBigForestInfo */
#include "MultiMapFixed.h" /* For struct MultiMapFixed */

#define BIG_FOREST_ARRIVE_RADIUS_SCALE 0.5f
#define BIG_FOREST_TREE_ATTEMPTS       10
#define BIG_FOREST_TREE_CLEARANCE      4.0f
#define BIG_FOREST_TREE_SCALE_BASE     0.75
#define BIG_FOREST_TREE_SCALE_RANDOM   0.5f
#define BIG_FOREST_TREE_INITIAL_SCALE  0.05f
#define BIG_FOREST_RESCALE_THRESHOLD   250.0

// Forward Declares

class Base;
class Creature;
class Forest;
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
	LHListNode<BigForest> next;
	Forest*               forest;
	float                 WoodAmount;

	enum SymbolNumberingPadding
	{
		SYMBOL_NUMBERING_PADDING_0,
		SYMBOL_NUMBERING_PADDING_1,
		SYMBOL_NUMBERING_PADDING_2,
		SYMBOL_NUMBERING_PADDING_3,
		SYMBOL_NUMBERING_PADDING_4,
		SYMBOL_NUMBERING_PADDING_5,
		SYMBOL_NUMBERING_PADDING_6,
		SYMBOL_NUMBERING_PADDING_7,
		SYMBOL_NUMBERING_PADDING_8,
		SYMBOL_NUMBERING_PADDING_9,
		SYMBOL_NUMBERING_PADDING_10,
		SYMBOL_NUMBERING_PADDING_11,
		SYMBOL_NUMBERING_PADDING_12,
		SYMBOL_NUMBERING_PADDING_13,
		SYMBOL_NUMBERING_PADDING_14,
		SYMBOL_NUMBERING_PADDING_15,
		SYMBOL_NUMBERING_PADDING_16,
		SYMBOL_NUMBERING_PADDING_17,
		SYMBOL_NUMBERING_PADDING_18,
		SYMBOL_NUMBERING_PADDING_19,
		SYMBOL_NUMBERING_PADDING_20,
		SYMBOL_NUMBERING_PADDING_21,
		SYMBOL_NUMBERING_PADDING_22,
		SYMBOL_NUMBERING_PADDING_23,
		SYMBOL_NUMBERING_PADDING_24,
		SYMBOL_NUMBERING_PADDING_25,
		SYMBOL_NUMBERING_PADDING_26,
		SYMBOL_NUMBERING_PADDING_27,
		SYMBOL_NUMBERING_PADDING_28,
		SYMBOL_NUMBERING_PADDING_29,
		SYMBOL_NUMBERING_PADDING_30,
		SYMBOL_NUMBERING_PADDING_31,
		SYMBOL_NUMBERING_PADDING_32,
		SYMBOL_NUMBERING_PADDING_33,
		SYMBOL_NUMBERING_PADDING_34,
		SYMBOL_NUMBERING_PADDING_35,
		SYMBOL_NUMBERING_PADDING_36,
		SYMBOL_NUMBERING_PADDING_37,
		SYMBOL_NUMBERING_PADDING_38,
		SYMBOL_NUMBERING_PADDING_39,
		SYMBOL_NUMBERING_PADDING_40,
		SYMBOL_NUMBERING_PADDING_41,
		SYMBOL_NUMBERING_PADDING_42,
		SYMBOL_NUMBERING_PADDING_43,
		SYMBOL_NUMBERING_PADDING_44,
		SYMBOL_NUMBERING_PADDING_45,
		SYMBOL_NUMBERING_PADDING_46,
		SYMBOL_NUMBERING_PADDING_47,
		SYMBOL_NUMBERING_PADDING_48,
		SYMBOL_NUMBERING_PADDING_49,
		SYMBOL_NUMBERING_PADDING_50,
		SYMBOL_NUMBERING_PADDING_51,
		SYMBOL_NUMBERING_PADDING_52,
		SYMBOL_NUMBERING_PADDING_53,
		SYMBOL_NUMBERING_PADDING_54,
		SYMBOL_NUMBERING_PADDING_55,
		SYMBOL_NUMBERING_PADDING_56,
		SYMBOL_NUMBERING_PADDING_57,
	};

	// Override methods

	// BW1W120 00439580 BW1M119 null
	virtual void CreateCollideData();
	// BW1W120 00438e20 BW1M119 010b6510
	virtual ~BigForest();
	// BW1W120 00438e60 BW1M119 010b6260
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 004390d0 BW1M119 010b58e0
	virtual uint32_t RemoveResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool* poisoned);
	// BW1W120 004394e0 BW1M119 010b52c0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00439470 BW1M119 010b53a0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 00438f60 BW1M119 010239b0
	virtual void Draw();
	// BW1W120 00439550 BW1M119 010b51f0
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager);
	// BW1W120 00439050 BW1M119 010b5c00
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 004390b0 BW1M119 010b5b40
	virtual float GetWoodValue();
	// BW1W120 004393c0 BW1M119 010b5550
	virtual bool32_t InterfaceSetInMagicHand(GInterfaceStatus* status);
	// BW1W120 004390a0 BW1M119 010b5bb0
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00438f50 BW1M119 010b60b0
	virtual bool32_t CreatureMustAvoid(Creature* creature);
	// BW1W120 00438f70 BW1M119 010b5cf0
	virtual uint32_t SaveObject(LHOSFile& file, const MapCoords* origin);
	// BW1W120 00438da0 BW1M119 010b4eb0
	virtual LH3DObject::ObjectType Get3DType() { return LH3DObject::MORPHABLE; }
	// BW1W120 00438db0 BW1M119 010b4ef0
	virtual bool32_t ValidForPlaceInHand(GInterfaceStatus* status) { return true; }
	// BW1W120 00438dc0 BW1M119 010b4f40
	virtual bool32_t IsTuggable() { return false; }
	// BW1W120 00438dd0 BW1M119 010b4f80
	virtual bool32_t VillagerMustAvoid(Villager* villager) { return false; }
	// BW1W120 00438de0 BW1M119 010b4fd0
	virtual uint32_t GetCarriedTreeType() { return ((const GBigForestInfo*)info)->CarriedTreeType; }
	// BW1W120 00438df0 BW1M119 010b5030
	virtual MESH_LIST GetMesh() const { return info->GetMesh(); }
	// BW1W120 00438e00 BW1M119 010b50d0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_BIG_FOREST; }
	// BW1W120 00438e10 BW1M119 010b5110
	virtual char* GetDebugText() { return "BigForest:"; }

	// Non-virtual methods

	// BW1W120 00439360 BW1M119 010b5670
	MapCoords GetArrivePos(Villager* villager);

	// Static methods

	// BW1W120 00438ec0 BW1M119 010b6110
	static BigForest* Create(const MapCoords& coords, const GBigForestInfo* info, unsigned long forest_id,
	                         float y_angle, float scale);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	BigForest() {}
	// BW1W120 00438ce0 BW1M119 010b65a0
	BigForest(const MapCoords& coords, const GBigForestInfo* info, uint32_t forest_id, float y_angle, float scale);

	// BW1W120 00439430 BW1M119 010b5490
	static void SaveAll(LHOSFile& file, const MapCoords& coords);
	// BW1W120 00439220 BW1M119 010b5730
	void AddTreeAround();
};

#endif /* BW1_DECOMP_BIG_FOREST_INCLUDED_H */
