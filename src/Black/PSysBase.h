#ifndef BW1_DECOMP_P_SYS_BASE_INCLUDED_H
#define BW1_DECOMP_P_SYS_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GameOSFile;

class PSysBase : public GameThing
{
public:
	// Override methods

	// BW1W120 00466500 BW1M119 010892a0
	virtual ~PSysBase();
	// BW1W120 004664f0 BW1M119 0111a700
	virtual char* GetDebugText();
	// BW1W120 006944b0 BW1M119 01426b80
	virtual uint32_t Load(GameOSFile& file);
};

#endif /* BW1_DECOMP_P_SYS_BASE_INCLUDED_H */
