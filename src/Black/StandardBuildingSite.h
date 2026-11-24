#ifndef BW1_DECOMP_STANDARD_BUILDING_SITE_INCLUDED_H
#define BW1_DECOMP_STANDARD_BUILDING_SITE_INCLUDED_H

#include <assert.h>
#include <stdint.h>

#include "BuildingSite.h"

class Base;
class GameOSFile;
class GameThing;
struct MapCoords;
class MultiMapFixed;
class Object;
class Pot;
class PotStructure;

class StandardBuildingSite : public BuildingSite
{
public:
	Pot* WoodPile;

	// BW1W120 0043d6e0 BW1M119 010bb4b0
	virtual Pot* GetPileWood(const MapCoords& coords) { return WoodPile; }
	// BW1W120 0043d6f0 BW1M119 010bb460
	virtual void SetPileWood(Pot* pot) { WoodPile = pot; }
	// BW1W120 0043d700 BW1M119 010c1720
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_STANDARD_BUILDING_SITE; }
	// BW1W120 0043d710 BW1M119 010c1760
	virtual char* GetDebugText() { return "StandardBuildingSite:"; }
	// BW1W120 0043d720 BW1M119 010bb690
	virtual ~StandardBuildingSite();
	// BW1W120 0043d890 BW1M119 010bb1f0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 0043d850 BW1M119 010bb290
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0043d8d0 BW1M119 0107a440
	virtual void Process();
	// BW1W120 0043d760 BW1M119 010bb500
	virtual void CreatePileWood();
	// BW1W120 0043d800 BW1M119 010bb390
	virtual void RemovePotFromStructure(PotStructure* structure);
	// BW1W120 0043d830 BW1M119 010bb330
	virtual bool32_t IsLinkedToThisBuildingSite(Pot* pot);

	// BW1W120 0043d690 BW1M119 010bb730
	StandardBuildingSite();
	// BW1W120 inlined BW1M119 inlined
	StandardBuildingSite(MultiMapFixed* building) : BuildingSite(building) { SetToZero(); }

	// BW1W120 inlined BW1M119 010e33a0
	void SetToZero() { WoodPile = NULL; }
};

#endif /* BW1_DECOMP_STANDARD_BUILDING_SITE_INCLUDED_H */
