#ifndef BW1_DECOMP_STREAM_INCLUDED_H
#define BW1_DECOMP_STREAM_INCLUDED_H

#include <assert.h>                           /* For static_assert */
#include <stdint.h>                           /* For uint32_t, uint8_t */
#include <Lionhead/LHLib/ver5.0/LHListHead.h> /* For struct LHListHead */
#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For struct LHListNode */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GStreamPoint;
class GameOSFile;

class GStream : public GameThing
{
public:
	LHListHead<GStreamPoint> Points;
	uint32_t                 ID;
	uint32_t                 field_0x20;
	LHListNode<GStream>      next;

	// Override methods

	// BW1W120 00733b10 BW1M119 0115d090
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055de10 BW1M119 0115d5b0
	virtual char* GetDebugText() { return "Stream:"; }
	// BW1W120 007344e0 BW1M119 0115b8a0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00734380 BW1M119 0115be60
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0055de00 BW1M119 0115d570
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GSTREAM; }
	// BW1W120 00734640 BW1M119 0115b830
	virtual void ResolveLoad();

	// BW1W120 inlined BW1M119 inlined
	GStream() {}

	// Static methods

	// BW1W120 00733ff0 BW1M119 0115c920
	static void CreateAll();

	// BW1W120 00733ac0 BW1M119 0115d3e0
	GStream(unsigned long id);
	// BW1W120 00733b90 BW1M119 0115cf20
	void AddPoint(LHPoint point);
	// BW1W120 00733fb0 BW1M119 0115c9b0
	static void SaveAll(LHOSFile& file);
	// BW1W120 00734010 BW1M119 0115c790
	uint32_t SaveObject(LHOSFile& file, const MapCoords& coords);
	// BW1W120 00733d30 BW1M119 0115ca60
	bool32_t FindNearestPosTo(MapCoords& pos, MapCoords& nearest_pos, float max_distance);
};

#endif /* BW1_DECOMP_STREAM_INCLUDED_H */
