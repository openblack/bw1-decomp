#ifndef BW1_DECOMP_TOWN_DESIRE_FLAGS_INCLUDED_H
#define BW1_DECOMP_TOWN_DESIRE_FLAGS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h>          /* For enum TOWN_DESIRE_INFO */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */

#include "Object.h"                              /* For struct Object */
#include <Lionhead/LH3DLib/development/Zoomer.h> /* For struct Zoomer */
#include "LHPTR.h"                               /* For LHPTR */

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
	long             Slot;
	float            Desire;
	TOWN_DESIRE_INFO DesireType;
	MESH_LIST        Mesh;
	LHPTR<Town>      ParentTown;
	Zoomer           HeightZoomer;

	// Override methods

	// BW1W120 007469d0 BW1M119 015669f0
	virtual ~TownDesireFlags();
	// BW1W120 00746a00 BW1M119 01566990
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055da70 BW1M119 0135c610
	virtual Town* GetTown() { return ParentTown.Get(); }
	// BW1W120 0055dad0 BW1M119 01565810
	virtual char* GetDebugText() { return "TownDesireFlags:"; }
	// BW1W120 00747030 BW1M119 01565b30
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00746f10 BW1M119 01565cf0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055dac0 BW1M119 015657d0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_TOWN_DESIRE_FLAGS; }
	// BW1W120 0055daa0 BW1M119 01565740
	virtual bool32_t IsTownDesireFlag() { return true; }
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
	virtual MESH_LIST GetMesh() const { return Mesh; }
	// BW1W120 00746a30 BW1M119 01038e10
	virtual void Draw();
	// BW1W120 00746dc0 BW1M119 01566460
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 0055dab0 BW1M119 01565780
	virtual bool32_t IsEffectReceiver(EffectValues* effect) { return false; }
	// BW1W120 00746a10 BW1M119 01566940
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00746de0 BW1M119 01566410
	virtual bool32_t CreatureMustAvoid(Creature* param_1);
	// BW1W120 0055da90 BW1M119 015656f0
	virtual uint32_t SaveObject(LHOSFile& file, const MapCoords* coords) { return 0; }

	// BW1W120 inlined BW1M119 inlined
	TownDesireFlags()
	{
		Slot = -1;
		ParentTown = NULL;
	}

	// Static methods

	// BW1W120 00746df0 BW1M119 015660c0
	static TownDesireFlags* Create(Town* town, TOWN_DESIRE_INFO type, unsigned long slot);
};

#endif /* BW1_DECOMP_TOWN_DESIRE_FLAGS_INCLUDED_H */
