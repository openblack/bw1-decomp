#ifndef BW1_DECOMP_TOWN_DESIRE_FLAGS_INCLUDED_H
#define BW1_DECOMP_TOWN_DESIRE_FLAGS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */

#include "Object.h" /* For struct Object */

// Forward Declares

class Base;
class Creature;
class EffectValues;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;
class Town;

class TownDesireFlags : public Object
{
public:
	uint8_t field_0x54[0x44];

	// Override methods

	// BW1W120 0055dae0 BW1M119 015669f0
	virtual ~TownDesireFlags();
	// BW1W120 00746a00 BW1M119 01566990
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055da70 BW1M119 0135c610
	virtual Town* GetTown();
	// BW1W120 0055dad0 BW1M119 01565810
	virtual char* GetDebugText();
	// BW1W120 00747030 BW1M119 01565b30
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00746f10 BW1M119 01565cf0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055dac0 BW1M119 015657d0
	virtual uint32_t GetSaveType();
	// BW1W120 0055daa0 BW1M119 01565740
	virtual uint32_t IsTownDesireFlag();
	// BW1W120 00746ec0 BW1M119 01566050
	virtual HELP_TEXT GetQueryFirstEnumText();
	// BW1W120 00746ed0 BW1M119 01565ff0
	virtual HELP_TEXT GetQueryLastEnumText();
	// BW1W120 00746ef0 BW1M119 0101b5b0
	virtual uint32_t GetFOVHelpMessageSet();
	// BW1W120 00746f00 BW1M119 01565ed0
	virtual uint32_t GetFOVHelpCondition();
	// BW1W120 00746a20 BW1M119 01057a80
	virtual uint32_t Process();
	// BW1W120 0055da80 BW1M119 015656b0
	virtual MESH_LIST GetMesh() const;
	// BW1W120 00746a30 BW1M119 01038e10
	virtual void Draw();
	// BW1W120 00746dc0 BW1M119 01566460
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 0055dab0 BW1M119 01565780
	virtual uint32_t IsEffectReceiver(EffectValues* param_1);
	// BW1W120 00746a10 BW1M119 01566940
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00746de0 BW1M119 01566410
	virtual bool32_t CreatureMustAvoid(Creature* param_1);
	// BW1W120 0055da90 BW1M119 015656f0
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
};

#endif /* BW1_DECOMP_TOWN_DESIRE_FLAGS_INCLUDED_H */
