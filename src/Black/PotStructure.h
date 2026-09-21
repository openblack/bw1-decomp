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
	MultiMapFixed* field_0x78;
	uint32_t       field_0x7c;
	bool           field_0x80;

	// Override methods

	// BW1W120 0055d650 BW1M119 0111fb70
	virtual ~PotStructure();
	// BW1W120 0066d960 BW1M119 01124420
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0066f230 BW1M119 01120770
	virtual GPlayer* GetPlayer();
	// BW1W120 0055d620 BW1M119 0111fa60
	virtual void SetPlayer(GPlayer* param_1);
	// BW1W120 0066ef60 BW1M119 011212b0
	virtual Town* GetTown();
	// BW1W120 0066d9b0 BW1M119 01124290
	virtual uint32_t JustRemoveResource(RESOURCE_TYPE type, uint32_t amount, bool* param_3);
	// BW1W120 0066ef00 BW1M119 0107a240
	virtual uint32_t GetResource(RESOURCE_TYPE param_1);
	// BW1W120 0066ed70 BW1M119 011215c0
	virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4,
	                             const MapCoords* param_5, int param_6);
	// BW1W120 0066ee10 BW1M119 011213c0
	virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
	// BW1W120 0066db10 BW1M119 01123f10
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0066da90 BW1M119 01124000
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055d640 BW1M119 0111fb20
	virtual uint32_t CanBeThrownByPlayer();
	// BW1W120 0066db90 BW1M119 01123e50
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 0066da30 BW1M119 01124100
	virtual bool IsResourceStore(RESOURCE_TYPE param_1);
	// BW1W120 0066d480 BW1M119 inlined
	virtual void SetSize();
	// BW1W120 0066da00 BW1M119 0107a190
	virtual bool IsPartOfStructure();
	// BW1W120 0055d530 BW1M119 inlined
	virtual void SetSpeedUp(int param_1);
	// BW1W120 0055d630 BW1M119 0111faa0
	virtual void SetMultiMapFixed(MultiMapFixed* param_1);

	// Constructors

	// BW1W120 0066d910 BW1M119 011244a0
	PotStructure(const MapCoords& coords, const GPotInfo* param_2, uint32_t param_3, MultiMapFixed* param_4,
	             Town* param_5, int param_6, float param_7, float param_8);
};

#endif /* BW1_DECOMP_POT_STRUCTURE_INCLUDED_H */
