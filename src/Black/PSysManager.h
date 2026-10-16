#ifndef BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H
#define BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For class LHLinkedList */

#include "PSysBase.h"        /* For struct PSysBase */
#include "PSysProcessInfo.h" /* For struct PSysProcessInfo */
#include "SpellTargets.h"    /* For class SpellTargets */

// Forward Declares

class AtomCollection;
class AtomCore;
class Base;
class GPlayer;
class GameOSFile;
class GameThing;
class Persistent;
class Spell;
struct SpellEventInfo;

enum PSYS_MANAGER_STATE
{
	PSYS_MANAGER_STATE_CLOSE_DOWN = 1 << 0,
	PSYS_MANAGER_STATE_ENABLED = 1 << 1,
};

class PSysManager : public PSysBase
{
public:
	// BW1W120 00d4e0ec BW1M119 null
	static float TimeStep;
	// BW1W120 00d4e0f0 BW1M119 null
	static float OneOverTimeStep;

	long                          field_0x14;
	GPlayer*                      Player;
	LHLinkedList<AtomCollection*> Collections;
	PSysProcessInfo               ProcessInfo;
	LHPoint                       Origin;
	uint8_t                       Alpha;
	float                         Age;
	uint32_t                      State;
	LHPoint                       field_0x78;
	LHPoint                       InitialVelocity;
	LHPoint                       InitialDirection;
	float                         InitialSpeed;
	float                         Magnitude;
	float                         CloseDownAge;
	Spell*                        OwnerSpell;
	bool                          field_0xac;
	bool                          field_0xad;
	uint8_t                       field_0xae;
	uint8_t                       field_0xaf;
	uint32_t                      field_0xb0;
	Persistent*                   field_0xb4;
	SpellTargets                  Targets;

	// Override methods

	// BW1W120 00672cb0 BW1M119 013e5410
	virtual ~PSysManager();
	// BW1W120 006735c0 BW1M119 013e40d0
	virtual GPlayer* GetPlayer();
	// BW1W120 00672ca0 BW1M119 0142cc40
	virtual char* GetDebugText();
	// BW1W120 00694500 BW1M119 01426700
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006cb090 BW1M119 0148dd50
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 00672c90 BW1M119 0142cc00
	virtual uint32_t GetSaveType();

	// BW1W120 00672c10 BW1M119 013e5670
	PSysManager();

	// Static methods

	// BW1W120 006729b0 BW1M119 0102d340
	static float PSysFloatRand(float range);
	// BW1W120 006729c0 BW1M119 013e5b20
	static float PSysFloatRand(float min, float max);
	// BW1W120 006729e0 BW1M119 01022f80
	static long PSysRand(long range);
	// BW1W120 006729f0 BW1M119 0101d3f0
	static void PSysRandR3(LHPoint* point);

	// BW1W120 00672e00 BW1M119 01029830
	const LHPoint* GetOrigin() const;
	// BW1W120 00672e10 BW1M119 01074a40
	void SetOrigin(const LHPoint& origin);
	// BW1W120 00672e30 BW1M119 013e5200
	void SetOriginAndMoveAllAtoms(const LHPoint& origin);
	// BW1W120 inlined BW1M119 inlined
	float GetAge() const { return Age; }
	// BW1W120 00672ff0 BW1M119 010a2890
	void SetState(const unsigned long& state);
	// BW1W120 00673050 BW1M119 01070800
	bool IsInState(const unsigned long& state) const;
	// BW1W120 006731f0 BW1M119 013e4c30
	AtomCore* CreateAtomInBaseGroup(long group, const GJArray<long>& next_groups);
	// BW1W120 006734c0 BW1M119 013e4b20
	bool32_t SpellEvent(const SpellEventInfo& info) const;
	// BW1W120 00673540 BW1M119 0101bb40
	bool NetUnsafeIsMyInterfaceCasting();
	// BW1W120 00673580 BW1M119 013e4190
	bool IsHumanPlayerCasting();
	// BW1W120 006735d0 BW1M119 013e4040
	LHPoint GetNetUnsafePos();
	// BW1W120 00673600 BW1M119 0101bae0
	void GetCurrentGesturePosn(LHPoint* pos);
	// BW1W120 00673640 BW1M119 013e3f00
	float GetCurrentGestureAngularVel();
	// BW1W120 inlined BW1M119 inlined
	float GetInitialSpeed() const { return InitialSpeed; }
	// BW1W120 006797d0 BW1M119 010299d0
	void AddDrawing(float interpolation, const LHPoint& pos);
	// BW1W120 00679840 BW1M119 01069f50
	void Draw(float interpolation, bool draw_flag);
};
static_assert(offsetof(PSysManager, Magnitude) == 0xa0, "Data member is at wrong offset");
static_assert(offsetof(PSysManager, Targets) == 0xb8, "Data member is at wrong offset");

#endif /* BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H */
