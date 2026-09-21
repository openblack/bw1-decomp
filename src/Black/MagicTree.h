#ifndef BW1_DECOMP_MAGIC_TREE_INCLUDED_H
#define BW1_DECOMP_MAGIC_TREE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum IMPRESSIVE_TYPE */

#include "Tree.h" /* For struct Tree */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class Object;

class MagicTree : public Tree
{
public:
	// Override methods

	// BW1W120 005fcf30 BW1M119 013ba1f0
	virtual ~MagicTree();
	// BW1W120 005fd070 BW1M119 013ba6b0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 005fd060 BW1M119 013ba790
	virtual GPlayer* GetPlayer();
	// BW1W120 005fcf20 BW1M119 013ba300
	virtual char* GetDebugText();
	// BW1W120 005fd1c0 BW1M119 013ba340
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 005fd110 BW1M119 013ba460
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 005fcf10 BW1M119 013ba2c0
	virtual uint32_t GetSaveType();
	// BW1W120 005fcf00 BW1M119 013ba280
	virtual IMPRESSIVE_TYPE GetImpressiveType();
	// BW1W120 005fd0d0 BW1M119 013ba620
	virtual void StartOnFire();
	// BW1W120 005fd0e0 BW1M119 013ba590
	virtual void EndOnFire();
};

#endif /* BW1_DECOMP_MAGIC_TREE_INCLUDED_H */
