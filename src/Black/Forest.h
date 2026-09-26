#ifndef BW1_DECOMP_FOREST_INCLUDED_H
#define BW1_DECOMP_FOREST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For struct LHLinkedList */

#include "Container.h" /* For struct Container, struct ContainerVftable */
#include "Tree.h"      /* For struct Tree */

// Forward Declares

class Base;
class Creature;
class GFootpath;
class GFootpathLink;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class Living;
struct MapCoords;

class Forest : public Container
{
public:
	// BW1W120 0053b2f0 BW1M119 010f8ba0
	static void OnClearMap();
	// BW1W120 00539d70 BW1M119 01027fe0
	static void ProcessForests();

	uint8_t             field_0x30[0x10];
	uint32_t            id; /* 0x40 */
	Forest*             next;
	LHLinkedList<Tree*> Trees0;
	LHLinkedList<Tree*> Trees1; /* 0x50 */

	// Override methods

	// BW1W120 00539b20 BW1M119 010f8680
	virtual ~Forest();
	// BW1W120 00539c60 BW1M119 010fb5d0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00539ae0 BW1M119 010f8aa0
	virtual bool32_t IsFootpathLink();
	// BW1W120 00539af0 BW1M119 010f8ae0
	virtual GFootpathLink* GetFootpathLink();
	// BW1W120 0053acf0 BW1M119 010f9bf0
	virtual uint32_t GetNearestPathTo(const MapCoords& param_1, float param_2, int param_3);
	// BW1W120 0053ad60 BW1M119 010f99b0
	virtual void UseFootpathIfNecessary(Living* param_1, const MapCoords& param_2, unsigned char param_3);
	// BW1W120 0053ac50 BW1M119 010f9cf0
	virtual uint32_t AddFootpath(GFootpath* param_1);
	// BW1W120 0053acc0 BW1M119 010f9c40
	virtual uint32_t RemoveFootpath(GFootpath* param_1);
	// BW1W120 00539a60 BW1M119 010f8830
	virtual bool32_t IsFunctional();
	// BW1W120 00539b10 BW1M119 010f8b60
	virtual char* GetDebugText();
	// BW1W120 0053b070 BW1M119 010f8ce0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0053ae40 BW1M119 010f91b0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00539b00 BW1M119 010f8b20
	virtual uint32_t GetSaveType();
	// BW1W120 00539a80 BW1M119 010f8910
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00539a90 BW1M119 010f8950
	virtual uint32_t GetCreatureBeliefListType();
	// BW1W120 00539ab0 BW1M119 010f89e0
	virtual bool32_t IsActivityObjectWhichAngerAppliesTo(Creature* creature);
	// BW1W120 00539aa0 BW1M119 010f8990
	virtual bool32_t IsSuitableForCreatureActivity();
	// BW1W120 00539ac0 BW1M119 010f8a40
	virtual const char* GetText();
	// BW1W120 00539ad0 BW1M119 010f8a70
	virtual bool32_t IsForest();

	// Constructors

	// BW1W120 00539bd0 BW1M119 010fb8f0
	Forest(const MapCoords& coords, uint32_t param_2);

	// Non-virtual methods

	// BW1W120 0053a310 BW1M119 010fab00
	void AddTree(Tree* tree);
	// BW1W120 0053abf0 BW1M119 010f9e00
	Tree* GetForestCentreTree();
};

#endif /* BW1_DECOMP_FOREST_INCLUDED_H */
