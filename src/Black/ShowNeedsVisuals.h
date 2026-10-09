#ifndef BW1_DECOMP_SHOW_NEEDS_VISUALS_INCLUDED_H
#define BW1_DECOMP_SHOW_NEEDS_VISUALS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Object.h"                              /* For struct Object */
#include <Lionhead/LHLib/ver5.0/LHFastPointer.h> /* For LHFastPointer */
#include <Lionhead/LH3DLib/development/Zoomer.h> /* For struct Zoomer */

// Forward Declares

class Base;
class GPlayer;
class GShowNeedsInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;

class ShowNeedsVisuals : public Object
{
public:
	int                      field_0x54;
	float                    Scale;
	uint32_t                 field_0x5c;
	LHFastPointer<GameThing> game_thing;
	Zoomer                   ScaleZoomer;

	// Override methods

	// BW1W120 00719dd0 BW1M119 0114d8d0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0071a1b0 BW1M119 0114d1e0
	virtual GPlayer* GetPlayer();
	// BW1W120 0055ddc0 BW1M119 0114cd60
	virtual char* GetDebugText() { return "ShowNeedsVisuals:"; }
	// BW1W120 0071a320 BW1M119 0114ce20
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0071a230 BW1M119 0114cfa0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055ddb0 BW1M119 0114cd20
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_SHOW_NEEDS_VISUALS; }
	// BW1W120 0071a410 BW1M119 0114cdb0
	virtual void ResolveLoad();
	// BW1W120 0055dd80 BW1M119 0114cc50
	virtual float GetScale() { return Scale; }
	// BW1W120 0055dd70 BW1M119 0114cc10
	virtual void SetScale(float scale) { Scale = scale; }
	// BW1W120 0055dd90 BW1M119 0114cc90
	virtual const char* GetText() { return "Show Needs"; }
	// BW1W120 0055dd60 BW1M119 0114cb60
	virtual MESH_LIST GetMesh() const { return info->GetMesh(); }
	// BW1W120 00719e00 BW1M119 0114d780
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 0055dda0 BW1M119 0114ccd0
	virtual uint32_t SaveObject(LHOSFile& file, const MapCoords* coords) { return 1; }

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	ShowNeedsVisuals() {}
	// BW1W120 00719d60 BW1M119 0114d970
	ShowNeedsVisuals(const MapCoords& coords, GameThing* game_thing, const GShowNeedsInfo* info);

	// Non-virtual methods

	// BW1W120 00719e90 BW1M119 0114d250
	void Draw(unsigned long param_1);
};

#endif /* BW1_DECOMP_SHOW_NEEDS_VISUALS_INCLUDED_H */
