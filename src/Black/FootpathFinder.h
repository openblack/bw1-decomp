#ifndef BW1_DECOMP_FOOTPATH_FINDER_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_FINDER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LHLib/ver5.0/RPHolder.h> /* For struct RPHolder */
#include <Lionhead/LHLib/ver5.0/RPlan.h>    /* For struct RPlan */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GFootpath;
class GFootpathNode;
class GameOSFile;
class GameThingWithPos;

class GFootpathFinder : public GameThing
{
public:
	RPHolder          holder;                /* 0x14 */
	RPlan             plan;                  /* 0x64040 */
	GameThingWithPos* GamethingwithposStart; /* 0x640b4 */
	GameThingWithPos* GamethingwithposDest;
	GFootpath*        Footpath0x7c;
	GFootpathNode*    StartNode; /* 0x640c0 */
	GFootpathNode*    DestNode;

	// Override methods

	// BW1W120 00538ff0 BW1M100 100e7f30 GFootpathFinder::_dt(void)
	virtual ~GFootpathFinder();
	// BW1W120 005391c0 BW1M100 100e78e0 GFootpathFinder::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00538fe0 BW1M100 100e7110 GFootpathFinder::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 005390e0 BW1M100 100e7ce0 GFootpathFinder::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00539150 BW1M100 100e7c00 GFootpathFinder::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00538fd0 BW1M100 100e70d0 GFootpathFinder::GetSaveType(void)
	virtual uint32_t GetSaveType();

	// Constructors

	// BW1W120 inlined BW1M100 inlined GFootpathFinder::GFootpathFinder(void)
	GFootpathFinder();

	// Non-virtual methods

	// BW1W120 00539040 BW1M100 100e7dc0 GFootpathFinder::GameTurnProcess(void)
	void GameTurnProcess();
	// BW1W120 00539240 BW1M100 100e7760 GFootpathFinder::Done(void)
	void Done();
	// BW1W120 005392f0 BW1M100 100e7150 GFootpathFinder::Init(void)
	void Init();
};

#endif /* BW1_DECOMP_FOOTPATH_FINDER_INCLUDED_H */
