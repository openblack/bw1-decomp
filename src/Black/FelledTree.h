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

	// BW1W120 005118e0 BW1M119 010c41a0
	virtual ~FelledTree();
	// BW1W120 005118d0 BW1M119 010c42c0
	virtual char* GetDebugText();
	// BW1W120 005118c0 BW1M119 010c4280
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_FELLED_TREE_INCLUDED_H */
