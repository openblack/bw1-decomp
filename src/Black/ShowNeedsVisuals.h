#ifndef BW1_DECOMP_SHOW_NEEDS_VISUALS_INCLUDED_H
#define BW1_DECOMP_SHOW_NEEDS_VISUALS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Object.h" /* For struct Object */

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
	int        field_0x54;
	uint32_t   field_0x58;
	uint32_t   field_0x5c;
	GameThing* game_thing; /* 0x60 */
	uint32_t   field_0x64;
	uint32_t   field_0x68;
	uint32_t   field_0x6c;
	uint32_t   field_0x70;
	uint32_t   field_0x74;
	uint32_t   field_0x78;
	uint32_t   field_0x7c;
	uint32_t   field_0x80;
	uint32_t   field_0x84;
	uint32_t   field_0x88;
	uint32_t   field_0x8c;
	uint32_t   field_0x90;

	// Override methods

	// BW1W120 0055ddd0 BW1M119 0114cad0
	virtual ~ShowNeedsVisuals();
	// BW1W120 00719dd0 BW1M119 0114d8d0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0071a1b0 BW1M119 0114d1e0
	virtual GPlayer* GetPlayer();
	// BW1W120 0055ddc0 BW1M119 0114cd60
	virtual char* GetDebugText();
	// BW1W120 0071a320 BW1M119 0114ce20
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0071a230 BW1M119 0114cfa0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055ddb0 BW1M119 0114cd20
	virtual uint32_t GetSaveType();
	// BW1W120 0071a410 BW1M119 0114cdb0
	virtual void ResolveLoad();
	// BW1W120 0055dd80 BW1M119 0114cc50
	virtual float GetScale();
	// BW1W120 0055dd70 BW1M119 0114cc10
	virtual void SetScale(float param_1);
	// BW1W120 0055dd90 BW1M119 0114cc90
	virtual const char* GetText();
	// BW1W120 0055dd60 BW1M119 0114cb60
	virtual MESH_LIST GetMesh() const;
	// BW1W120 00719e00 BW1M119 0114d780
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 0055dda0 BW1M119 0114ccd0
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);

	// Constructors

	// BW1W120 00719d60 BW1M119 0114d970
	ShowNeedsVisuals(const MapCoords& coords, GameThing* game_thing, const GShowNeedsInfo* info);
};

#endif /* BW1_DECOMP_SHOW_NEEDS_VISUALS_INCLUDED_H */
