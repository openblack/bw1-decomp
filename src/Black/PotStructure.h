#ifndef BW1_DECOMP_POT_STRUCTURE_INCLUDED_H
#define BW1_DECOMP_POT_STRUCTURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */

#include "Pot.h" /* For struct Pot */

// Forward Declares

class Base;
class GInterfaceStatus;
class GPlayer;
class GPotInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class MultiMapFixed;
class Object;
class Town;

class PotStructure : public Pot
{
public:
	LHPTR<MultiMapFixed> ParentMultiMapFixed;
	GPlayer*             Player;
	bool                 CreateReaction;

	// Override methods

	// BW1W120 0066d960 BW1M119 01124420
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 0066f230 BW1M119 01120770
	virtual GPlayer* GetPlayer();
	// BW1W120 0055d620 BW1M119 0111fa60
	virtual void SetPlayer(GPlayer* player) { Player = player; }
	// BW1W120 0066ef60 BW1M119 011212b0
	virtual Town* GetTown();
	// BW1W120 0066d9b0 BW1M119 01124290
	virtual uint32_t JustRemoveResource(RESOURCE_TYPE type, uint32_t amount, bool* poisoned);
	// BW1W120 0066ef00 BW1M119 0107a240
	virtual uint32_t GetResource(RESOURCE_TYPE type);
	// BW1W120 0066ed70 BW1M119 011215c0
	virtual uint32_t AddResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool poisoned,
	                             const MapCoords* coords, int from_other_player);
	// BW1W120 0066ee10 BW1M119 011213c0
	virtual uint32_t RemoveResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool* poisoned);
	// BW1W120 0066db10 BW1M119 01123f10
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 0066da90 BW1M119 01124000
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0055d640 BW1M119 0111fb20
	virtual bool32_t CanBeThrownByPlayer() { return (bool)(ResourceAmount != 0); }
	// BW1W120 0066db90 BW1M119 01123e50
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 0066da30 BW1M119 01124100
	virtual bool32_t IsResourceStore(RESOURCE_TYPE type);
	// BW1W120 0066da00 BW1M119 0107a190
	virtual MultiMapFixed* IsPartOfStructure();
	// BW1W120 0055d630 BW1M119 0111faa0
	virtual void SetMultiMapFixed(MultiMapFixed* multi_map_fixed) { ParentMultiMapFixed = multi_map_fixed; }

	// Constructors

	// BW1W120 0055d5e0 BW1M119 01123380
	PotStructure() {}
	// BW1W120 0066d910 BW1M119 011244a0
	PotStructure(const MapCoords& coords, const GPotInfo* info, uint32_t resource, MultiMapFixed* parent, Town* town,
	             bool32_t create_reaction, float y_angle, float scale);
	// BW1W120 0066d980 BW1M119 01124370
	void RemoveFromStructure();
};

#endif /* BW1_DECOMP_POT_STRUCTURE_INCLUDED_H */
