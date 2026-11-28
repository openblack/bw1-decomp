#ifndef BW1_DECOMP_FELLED_TREE_INCLUDED_H
#define BW1_DECOMP_FELLED_TREE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DeadTree.h" /* For struct DeadTree */

// Forward Declares

class Base;
class GameThing;
class GPlayer;
class Object;
class Tree;

class FelledTree : public DeadTree
{
public:
	// Override methods

	// BW1W120 00511990 BW1M119 010c4770
	virtual void Draw();
	// BW1W120 00511910 BW1M119 010c4a80
	virtual PHYSICS_CONSTANTS_TYPE GetPhysicsConstantsType();
	// BW1W120 00511920 BW1M119 010c4980
	virtual void SetUpPhysOb(PhysOb* phys_ob);
	// BW1W120 00511970 BW1M119 010c4920
	virtual Object* EndPhysics(PhysicsObject* physics_object, bool insert_back_into_map);

	// BW1W120 005118b0 BW1M119 010c4240
	virtual bool32_t IsARootedObject() { return false; }
	// BW1W120 005118c0 BW1M119 010c4280
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_FELLED_TREE; }
	// BW1W120 005118d0 BW1M119 010c42c0
	virtual char* GetDebugText() { return "FelledTree:"; }

	// BW1W120 inlined BW1M119 inlined
	FelledTree() {}
	// BW1W120 inlined BW1M119 inlined
	FelledTree(Tree* tree, GPlayer* player) : DeadTree(tree, player) {}

	// BW1W120 005116a0 BW1M119 010c4ad0
	static FelledTree* Create(Tree* tree, Object* feller);
};

#endif /* BW1_DECOMP_FELLED_TREE_INCLUDED_H */
