#ifndef BW1_DECOMP_PILE_RESOURCE_INCLUDED_H
#define BW1_DECOMP_PILE_RESOURCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <re_common.h>   /* For bool32_t */

#include "PotStructure.h" /* For struct PotStructure */

// Forward Declares

class Base;
struct ControlHandUpdateInfo;
class Creature;
class GInterfaceStatus;
class GPotInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class MultiMapFixed;
class Object;
class Town;

class PileResource : public PotStructure
{
public:
	float    field_0x84;
	float    field_0x88;
	uint32_t field_0x8c;
	uint32_t field_0x90;
	uint32_t field_0x94;
	uint32_t field_0x98;
	uint32_t field_0x9c;
	float    field_0xa0;
	uint32_t field_0xa4;
	uint32_t field_0xa8;
	uint32_t field_0xac;
	uint32_t field_0xb0;

	// Override methods

	// BW1W120 0066ecb0 BW1M119 01123260
	virtual ~PileResource();
	// BW1W120 0066d330 BW1M119 01003c70
	virtual uint32_t JustAddResource(RESOURCE_TYPE type, uint32_t amount, bool param_3);
	// BW1W120 0066f690 BW1M119 0111fe30
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0066f620 BW1M119 0111ff10
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0066e3d0 BW1M119 01122770
	virtual float GetLife();
	// BW1W120 0066e3c0 BW1M119 inlined
	virtual uint32_t IsField_1(Creature* param_1);
	// BW1W120 0066e390 BW1M119 01122890
	virtual bool32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 0066ed60 BW1M119 01121730
	virtual bool32_t IsPileResource();
	// BW1W120 0066e400 BW1M119 011225b0
	virtual void SetLife(float param_1);
	// BW1W120 0066e300 BW1M119 01122970
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 0055d680 BW1M119 01126770
	virtual bool32_t IsLockedInInteract();
	// BW1W120 0066e4f0 BW1M119 011224f0
	virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* param_1);
	// BW1W120 0066e710 BW1M119 01121f50
	virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1);
	// BW1W120 0066e830 BW1M119 01121ee0
	virtual bool32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
	// BW1W120 0066e840 BW1M119 01121e90
	virtual bool32_t NetworkUnfriendlyEndLockedSelect();
	// BW1W120 0066e850 BW1M119 01121d60
	virtual bool32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
	// BW1W120 0066ece0 BW1M119 011217b0
	virtual bool32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 0066ef80 BW1M119 01120e00
	virtual bool32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 0066e3b0 BW1M119 01122850
	virtual bool32_t IsTuggable();
	// BW1W120 0066e520 BW1M119 011221b0
	virtual uint32_t ProcessInInteract(GInterfaceStatus* param_1);

	// Constructors

	// BW1W120 0066ec70 BW1M119 011218a0
	PileResource(const MapCoords& param_1, const GPotInfo* info, uint32_t param_3, MultiMapFixed* param_4,
	             Town* param_5, int param_6, float param_7, float param_8);
};

#endif /* BW1_DECOMP_PILE_RESOURCE_INCLUDED_H */
