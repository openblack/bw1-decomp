#ifndef BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H
#define BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "PSysBase.h"     /* For struct PSysBase */
#include "SpellTargets.h" /* For class SpellTargets */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThing;

enum PSYS_MANAGER_STATE
{
	PSYS_MANAGER_STATE_CLOSE_DOWN = 1 << 0,
};

class PSysManager : public PSysBase
{
public:
	uint8_t      field_0x14[0x4];
	GPlayer*     Player;
	uint8_t      field_0x1c[0x44];
	LHPoint      Origin;
	uint8_t      Alpha;
	float        Age;
	uint32_t     State;
	uint8_t      field_0x78[0x28];
	float        Magnitude;
	uint8_t      field_0xa4[0x14];
	SpellTargets Targets;

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

	// BW1W120 00672c10 BW1M119 013e5670
	PSysManager();

	// BW1W120 00672e00 BW1M119 01029830
	const LHPoint* GetOrigin() const;
	// BW1W120 00672e10 BW1M119 01074a40
	void SetOrigin(const LHPoint& origin);
	// BW1W120 00672e30 BW1M119 013e5200
	void SetOriginAndMoveAllAtoms(const LHPoint& origin);
	// BW1W120 00672ff0 BW1M119 010a2890
	void SetState(const unsigned long& state);
	// BW1W120 006797d0 BW1M119 010299d0
	void AddDrawing(float interpolation, const LHPoint& pos);
	// BW1W120 00679840 BW1M119 01069f50
	void Draw(float interpolation, bool draw_flag);
};

#endif /* BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H */
