#ifndef BW1_DECOMP_PRSS_INCLUDED_H
#define BW1_DECOMP_PRSS_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <stddef.h>    /* For NULL */
#include <stdint.h>    /* For uint16_t, uint32_t */
#include <re_common.h> /* For bool32_t */

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */

#include "LHCoord.h" /* For struct LHCoord */

// Forward Declares

struct MouseInput;

class Prss
{
public:
	Prss*    Parent;
	Prss*    Sub;
	bool32_t Active;

	// Virtual methods, in Windows vtable order (there is no virtual destructor).

	virtual Prss* ProcessTurn() = 0;
	virtual void  Display() = 0;

	// BW1W120 00842130 BW1M119 01061d00 (LHCombined Release)
	virtual void Terminate();
	// BW1W120 00842160 BW1M119 01061c70 (LHCombined Release)
	virtual void PrssKey(LH_KEY key, uint16_t modifier);
	// BW1W120 00842170 BW1M119 01061c00 (LHCombined Release)
	virtual void PrssMouse(MouseInput* input);
	virtual void ClickFunction(int id, int button, int data) = 0;
	// BW1W120 004f7200 BW1M119 01060c10 (LHCombined Release)
	virtual void StringFunction(long id, char* text, int data) {}

	// Non-virtual methods

	// BW1W120 008420f0 BW1M119 01061e30 (LHCombined Release)
	void AddSub(Prss* sub);
	// BW1W120 00842100 BW1M119 01061db0 (LHCombined Release)
	void ProcessSubProcess();
	// BW1W120 00842120 BW1M119 01061d40 (LHCombined Release)
	void DisplaySubProcess();
};

struct MouseInput
{
	LHCoord  Pos;
	uint32_t field_0x8;
	uint32_t field_0xc;
	uint32_t field_0x10;
	uint32_t field_0x14;
	int      Button;
	uint32_t field_0x1c;
};

// BW1W120 00842150 BW1M119 01061cd0 (LHCombined Release)
void setfocus(Prss* prss);
// BW1W120 00842030 BW1M119 01062230 (LHCombined Release)
void EditorProcessKey(LH_KEY key, uint16_t modifier);
// BW1W120 00842050 BW1M119 01061e70 (LHCombined Release)
void EditorProcessInputs();

#endif /* BW1_DECOMP_PRSS_INCLUDED_H */
