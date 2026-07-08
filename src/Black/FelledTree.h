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

	// BW1W120 005118e0 BW1M100 100c0cc0 FelledTree::_dt(void)
	virtual ~FelledTree();
	// BW1W120 005118d0 BW1M100 100c0de0 FelledTree::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 005118c0 BW1M100 100c0da0 FelledTree::GetSaveType(void)
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_FELLED_TREE_INCLUDED_H */
