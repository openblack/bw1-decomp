#ifndef BW1_DECOMP_P_SYS_SOUND_INCLUDED_H
#define BW1_DECOMP_P_SYS_SOUND_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
struct LHPoint;

class PSysSound : public PSysBase
{
public:
	// Override methods

	// BW1W120 006d0f50 BW1M119 0148f430
	virtual ~PSysSound();
	// BW1W120 006d1000 BW1M119 0148f340
	virtual int Get3DSoundPos(LHPoint* param_1);
	// BW1W120 006d0f40 BW1M119 0148ee00
	virtual char* GetDebugText();
	// BW1W120 006d13a0 BW1M119 0148efd0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006d14a0 BW1M119 0148ee40
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 006d0f30 BW1M119 0148edc0
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_P_SYS_SOUND_INCLUDED_H */
