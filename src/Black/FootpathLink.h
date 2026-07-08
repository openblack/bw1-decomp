#ifndef BW1_DECOMP_FOOTPATH_LINK_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_LINK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Footpath.h"  /* For struct GFootpath */
#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GFootpathNode;
class GameOSFile;
class GameThingWithPos;
class Living;
struct MapCoords;

class GFootpathLink : public GameThing
{
public:
	LHLinkedList__GFootpath footpath_list; /* 0x14 */

	// Override methods

	// BW1W120 0050caf0 BW1M100 100ef100 GFootpathLink::_dt(void)
	virtual ~GFootpathLink();
	// BW1W120 00536010 BW1M100 100ec980 GFootpathLink::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00536070 BW1M100 100ec840 GFootpathLink::AddFootpath(GFootpath *)
	virtual uint32_t AddFootpath(GFootpath* param_1);
	// BW1W120 005360b0 BW1M100 100ec730 GFootpathLink::RemoveFootpath(GFootpath *)
	virtual uint32_t RemoveFootpath(GFootpath* param_1);
	// BW1W120 0050cae0 BW1M100 100ef1d0 GFootpathLink::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 005365a0 BW1M100 100eb8e0 GFootpathLink::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 005364f0 BW1M100 100ebc00 GFootpathLink::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0050cad0 BW1M100 100ef190 GFootpathLink::GetSaveType(void)
	virtual uint32_t GetSaveType();

	// Constructors

	// BW1W120 inlined BW1M100 inlined GFootpathLink::GFootpathLink(void)
	GFootpathLink();

	// Non-virtual methods

	// BW1W120 00536110 BW1M100 100ec590 GFootpathLink::GetNearestPathTo(MapCoords const &, MapCoords const &, float, int &, GFootpathNode **)
	GFootpath* GetNearestPathTo(const MapCoords* param_1, const MapCoords* param_2, float param_3, int* param_4,
	                            GFootpathNode** param_5);
	// BW1W120 005361f0 BW1M100 100ec3e0 GFootpathLink::GetNearestPathToQuick(MapCoords const &, MapCoords const &, float, int &, GFootpathNode **)
	GFootpath* GetNearestPathToQuick(const MapCoords* param_1, const MapCoords* param_2, float param_3, int* param_4,
	                                 GFootpathNode** param_5);
	// BW1W120 005362e0 BW1M100 100ebe90 GFootpathLink::UseFootpathIfNecessary(Living *, MapCoords const &, unsigned char, GameThingWithPos *)
	uint32_t UseFootpathIfNecessary(Living* living, const MapCoords* coord, uint32_t param_4,
	                                GameThingWithPos* game_thing_with_pos);
};

#endif /* BW1_DECOMP_FOOTPATH_LINK_INCLUDED_H */
