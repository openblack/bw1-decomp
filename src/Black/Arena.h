#ifndef BW1_DECOMP_ARENA_INCLUDED_H
#define BW1_DECOMP_ARENA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Fixed.h"            /* For struct Fixed */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class Creature;
class EffectValues;
class GameOSFile;
class GameThing;
class LHOSFile;
struct MapCoords;
class Object;

class GArena : public GameThingWithPos
{
public:
	uint8_t field_0x28[0x24];

	// Override methods

	// BW1W120 004247c0 BW1M119 010afe60
	virtual ~GArena();
	// BW1W120 00424960 BW1M119 010af2a0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00424780 BW1M119 0102a940
	virtual float GetRadius();
	// BW1W120 004247b0 BW1M119 010aff70
	virtual char* GetDebugText();
	// BW1W120 004251d0 BW1M119 010ae160
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 004250d0 BW1M119 010ae2e0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 004247a0 BW1M119 010aff30
	virtual uint32_t GetSaveType();
	// BW1W120 00424790 BW1M119 010afef0
	virtual const char* GetText();
};

class ArenaSpellIcon : public Fixed
{
public:
	// Override methods

	// BW1W120 00425350 BW1M119 010adf60
	virtual ~ArenaSpellIcon();
	// BW1W120 00425600 BW1M119 010adb60
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00425330 BW1M119 010ad580
	virtual char* GetDebugText();
	// BW1W120 004257d0 BW1M119 010ad7d0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 004256e0 BW1M119 010ad950
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00425320 BW1M119 010ad540
	virtual uint32_t GetSaveType();
	// BW1W120 00425540 BW1M119 010adc20
	virtual void Create3DObject();
	// BW1W120 004256c0 BW1M119 010adb30
	virtual void Draw();
	// BW1W120 00425420 BW1M119 010add80
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 004256d0 BW1M119 010adae0
	virtual uint32_t IsEffectReceiver(EffectValues* param_1);
	// BW1W120 00425310 BW1M119 010ad4f0
	virtual bool32_t CreatureMustAvoid(Creature* param_1);
	// BW1W120 00425300 BW1M119 010ad4a0
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
};

#endif /* BW1_DECOMP_ARENA_INCLUDED_H */
