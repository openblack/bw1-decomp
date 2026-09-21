#ifndef BW1_DECOMP_DEFENSIVE_SHIELD_INCLUDED_H
#define BW1_DECOMP_DEFENSIVE_SHIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class DefensiveShield : public PSysBase
{
public:
	// Override methods

	// BW1W120 006d0ad0 BW1M119 01426c60
	virtual ~DefensiveShield();
	// BW1W120 006d0ac0 BW1M119 01426c20
	virtual char* GetDebugText();
	// BW1W120 00699ca0 BW1M119 01420a90
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006d0680 BW1M119 01487ae0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 006d0ab0 BW1M119 01426be0
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_DEFENSIVE_SHIELD_INCLUDED_H */
