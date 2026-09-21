#ifndef BW1_DECOMP_SPELL_POINT_INF_INCLUDED_H
#define BW1_DECOMP_SPELL_POINT_INF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class SpellPointInf : public PSysBase
{
public:
	// Override methods

	// BW1W120 0055f450 BW1M119 01428870
	virtual ~SpellPointInf();
	// BW1W120 0055f440 BW1M119 01428940
	virtual char* GetDebugText();
	// BW1W120 00698240 BW1M119 014222f0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006ced60 BW1M119 014893f0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055f430 BW1M119 01428900
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_SPELL_POINT_INF_INCLUDED_H */
