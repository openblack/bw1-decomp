#ifndef BW1_DECOMP_PILE_FOOD_INCLUDED_H
#define BW1_DECOMP_PILE_FOOD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h>                             /* For enum RESOURCE_TYPE */
#include <chlasm/HelpTextEnums.h>                    /* For enum HELP_TEXT */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "PileResource.h" /* For struct PileResource */

// Forward Declares

class Base;
class Creature;
class GPotInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class MultiMapFixed;
class Object;
class Town;

class PileFood : public PileResource
{
public:
	PileFood* next; /* 0xb4 */
	uint32_t  field_0xb8;

	// Override methods

	// BW1W120 0066e040 BW1M119 011230e0
	virtual ~PileFood();
	// BW1W120 0066e100 BW1M119 01122df0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0066f180 BW1M119 011209b0
	virtual float Get2DRadius();
	// BW1W120 0066e030 BW1M119 01126830
	virtual char* GetDebugText();
	// BW1W120 0066f5e0 BW1M119 0111fff0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0066f5a0 BW1M119 01120080
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0066e020 BW1M119 011267f0
	virtual uint32_t GetSaveType();
	// BW1W120 0055d690 BW1M119 011267b0
	virtual uint32_t IsPileFood();
	// BW1W120 0066e2a0 BW1M119 01122af0
	virtual HELP_TEXT GetQueryFirstEnumText();
	// BW1W120 0066e2d0 BW1M119 01122a50
	virtual HELP_TEXT GetQueryLastEnumText();
	// BW1W120 0051bf80 BW1M119 01033190
	virtual void Draw();
	// BW1W120 0066e1a0 BW1M119 01122d60
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 0066e380 BW1M119 01122930
	virtual LH3DObject::ObjectType Get3DType();
	// BW1W120 0066ec50 BW1M119 01121b70
	virtual RESOURCE_TYPE GetResourceType();
	// BW1W120 0066e1f0 BW1M119 01122c70
	virtual bool32_t CreatureMustAvoid(Creature* param_1);

	// Constructors

	// BW1W120 0066dfe0 BW1M119 01123300
	PileFood();
	// BW1W120 0066e070 BW1M119 01123170
	PileFood(const MapCoords& coords, const GPotInfo* param_2, uint32_t param_3, MultiMapFixed* param_4, Town* param_5,
	         int param_6, float param_7, float param_8);
};

#endif /* BW1_DECOMP_PILE_FOOD_INCLUDED_H */
