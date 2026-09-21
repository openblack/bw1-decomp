#ifndef BW1_DECOMP_FEATURE_INCLUDED_H
#define BW1_DECOMP_FEATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <chlasm/ScriptEnums.h>   /* For enum SCRIPT_OBJECT_TYPE */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

class Base;
class Creature;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;
class Object;

class Feature : public MultiMapFixed
{
public:
	// Override methods

	// BW1W120 00422e90 BW1M119 010ab260
	virtual ~Feature();
	// BW1W120 00422e80 BW1M119 010d6380
	virtual char* GetDebugText();
	// BW1W120 00422e70 BW1M119 010d6340
	virtual uint32_t GetSaveType();
	// BW1W120 00422140 BW1M119 010a86d0
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00422150 BW1M119 010a8710
	virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 005276d0 BW1M119 010d5220
	virtual uint32_t IsMushroom(Creature* param_1);
	// BW1W120 004220e0 BW1M119 010a8590
	virtual uint32_t IsFeature();
	// BW1W120 005277d0 BW1M119 010d4dd0
	virtual HELP_TEXT GetQueryFirstEnumText();
	// BW1W120 00527820 BW1M119 010d4cf0
	virtual HELP_TEXT GetQueryLastEnumText();
	// BW1W120 005276c0 BW1M119 01008280
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 004220d0 BW1M119 010a84f0
	virtual MESH_LIST GetMesh() const;
	// BW1W120 00518690 BW1M119 01026430
	virtual void Draw();
	// BW1W120 005275b0 BW1M119 010d57e0
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
};

#endif /* BW1_DECOMP_FEATURE_INCLUDED_H */
