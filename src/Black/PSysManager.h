#ifndef BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H
#define BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThing;

class PSysManager : public PSysBase
{
public:
	uint8_t field_0x14[0xd0];

	// Override methods

	// BW1W120 00672cb0 BW1M119 013e5410
	virtual ~PSysManager();
	// BW1W120 006735c0 BW1M119 013e40d0
	virtual GPlayer* GetPlayer();
	// BW1W120 00672ca0 BW1M119 0142cc40
	virtual char* GetDebugText();
	// BW1W120 00694500 BW1M119 01426700
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006cb090 BW1M119 0148dd50
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00672c90 BW1M119 0142cc00
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H */
