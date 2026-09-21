#ifndef BW1_DECOMP_DANCE_KEY_INCLUDED_H
#define BW1_DECOMP_DANCE_KEY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LHLib/ver5.0/LHDynamicStack.h> /* For struct LHDynamicStack */

#include "DanceGroup.h" /* For enum DANCE_GROUP_ACTION_TYPE */
#include "GameThing.h"  /* For struct GameThing */

// Forward Declares

class Base;
struct DanceGroupActionArgument;
class GameOSFile;

class DanceKeyFrame : public GameThing
{
public:
	uint8_t field_0x14[0x10];

	// Override methods

	// BW1W120 0050ebd0 BW1M119 01100e10
	virtual ~DanceKeyFrame();
	// BW1W120 0050ebf0 BW1M119 012b1300
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0050ebc0 BW1M119 012b00e0
	virtual char* GetDebugText();
	// BW1W120 0050f2f0 BW1M119 012b0120
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0050f1c0 BW1M119 012b05a0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0050ebb0 BW1M119 012b00a0
	virtual uint32_t GetSaveType();

	// Constructors

	// BW1W120 0050eb60 BW1M119 012b1570
	DanceKeyFrame(int param_1, LHDynamicStack<uint32_t>* stack, DANCE_GROUP_ACTION_TYPE action_type,
	              const DanceGroupActionArgument& arguments);
};

#endif /* BW1_DECOMP_DANCE_KEY_INCLUDED_H */
