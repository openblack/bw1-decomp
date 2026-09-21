#ifndef BW1_DECOMP_CHAIN_INCLUDED_H
#define BW1_DECOMP_CHAIN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class Chain : public PSysBase
{
public:
	// Override methods

	// BW1W120 006c8810 BW1M119 01483af0
	virtual ~Chain();
	// BW1W120 006c8800 BW1M119 0142bb00
	virtual char* GetDebugText();
	// BW1W120 00695c10 BW1M119 01424db0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006cc780 BW1M119 0148bc10
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 006c87f0 BW1M119 0142bad0
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_CHAIN_INCLUDED_H */
