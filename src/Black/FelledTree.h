#ifndef BW1_DECOMP_FELLED_TREE_INCLUDED_H
#define BW1_DECOMP_FELLED_TREE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DeadTree.h" /* For struct DeadTree */

// Forward Declares

class Base;
class GameThing;

class FelledTree : public DeadTree
{
public:
	// Override methods

	// BW1W120 00511990 BW1M119 010c4770
	virtual void Draw();
	// BW1W120 00511910 BW1M119 010c4a80
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 00511920 BW1M119 010c4980
	virtual void SetUpPhysOb(PhysOb* param_1);
	// BW1W120 00511970 BW1M119 010c4920
	virtual Object* EndPhysics(PhysicsObject* param_1, bool param_2);
	// BW1W120 005118b0 BW1M119 010c4240
	virtual bool32_t IsARootedObject();
	// BW1W120 005118e0 BW1M119 010c41a0
	virtual ~FelledTree();
	// BW1W120 005118d0 BW1M119 010c42c0
	virtual char* GetDebugText();
	// BW1W120 005118c0 BW1M119 010c4280
	virtual uint32_t GetSaveType();

	// BW1W120 inlined BW1M119 inlined
	FelledTree() {}
};

#endif /* BW1_DECOMP_FELLED_TREE_INCLUDED_H */
