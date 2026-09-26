#ifndef BW1_DECOMP_SPELL_DISPENSER_INCLUDED_H
#define BW1_DECOMP_SPELL_DISPENSER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "Abode.h" /* For struct Abode */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;

class SpellDispenser : public Abode
{
public:
	// Override methods

	// BW1W120 00722700 BW1M119 01522080
	virtual ~SpellDispenser();
	// BW1W120 007228a0 BW1M119 01523180
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00722fa0 BW1M119 01522430
	virtual char* GetDebugText();
	// BW1W120 00722e80 BW1M119 01522490
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00722d50 BW1M119 01522650
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 007226f0 BW1M119 015221e0
	virtual uint32_t GetSaveType();
	// BW1W120 007226d0 BW1M119 01522150
	virtual bool32_t IsSpellDispenser();
	// BW1W120 007226c0 BW1M119 01522110
	virtual bool32_t IsActive() const;
	// BW1W120 00722fb0 BW1M119 015223e0
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 00722a70 BW1M119 01522d30
	virtual uint32_t Process();
	// BW1W120 00722940 BW1M119 01522e70
	virtual void Draw();
	// BW1W120 007227d0 BW1M119 01523220
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 007226e0 BW1M119 01522190
	virtual bool32_t IsSpellSeedReturnPoint() const;

	// Static methods

	// BW1W120 007228d0 BW1M119 01523040
	static SpellDispenser* Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle,
	                              float scale, float food, int wood);
};

#endif /* BW1_DECOMP_SPELL_DISPENSER_INCLUDED_H */
