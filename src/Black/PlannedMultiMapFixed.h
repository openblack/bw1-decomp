#ifndef BW1_DECOMP_PLANNED_MULTI_MAP_FIXED_INCLUDED_H
#define BW1_DECOMP_PLANNED_MULTI_MAP_FIXED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum ABODE_TYPE */
#include <re_common.h>   /* For bool32_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos, struct GameThingWithPosVftable */

// Forward Declares

class GFootpathLink;
class GMultiMapFixedInfo;
class GObjectInfo;
class GameOSFile;
class GameThing;
struct MapCoords;
class MultiMapFixed;

class PlannedMultiMapFixed : public GameThingWithPos
{
public:
	float                 field_0x28;
	float                 scale;
	uint32_t              field_0x30;
	uint32_t              field_0x34;
	GFootpathLink*        FootpathLink;
	int                   CreationTurn;
	GObjectInfo*          info; /* 0x40 */
	PlannedMultiMapFixed* next;

	// Override methods

	// BW1W120 0055cbe0 BW1M119 0111b0b0
	virtual char* GetDebugText();
	// BW1W120 00648af0 BW1M119 0111e820
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00648990 BW1M119 0111ea40
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055cbd0 BW1M119 inlined
	virtual uint32_t GetSaveType();
	// BW1W120 004050c0 BW1M119 01150d50
	virtual float GetScale();
	// BW1W120 004050d0 BW1M119 01155290
	virtual void SetScale(float scale);
	// BW1W120 00648940 BW1M119 0111ed50
	virtual const char* GetText();
	// BW1W120 00465560 BW1M119 010d62b0
	virtual bool32_t IsWonder();
	// BW1W120 00648950 BW1M119 inlined
	virtual bool32_t CreateBuildingSite();
	// BW1W120 00469660 BW1M119 010c09d0
	virtual MultiMapFixed* CreatePlanned(float param_1);
	// BW1W120 00465540 BW1M119 010d6220
	virtual MultiMapFixed* CreatePlannedNoFixedCheck(float param_1);
	// BW1W120 00648c50 BW1M119 0111e740
	virtual void PostCreatePlanned(MultiMapFixed& param_1);
	// BW1W120 00465550 BW1M119 010d6270
	virtual bool32_t IsCivic();
	// BW1W120 00465570 BW1M119 010d62f0
	virtual ABODE_TYPE GetAbodeType();
	// BW1W120 00648910 BW1M119 01071cf0
	virtual float GetDesireToBeRepaired();
	// BW1W120 00648930 BW1M119 0111edb0
	virtual void Draw();

	// Constructors

	// BW1W120 00648780 BW1M119 0111f0f0
	PlannedMultiMapFixed(const MapCoords& coords, const GMultiMapFixedInfo* info, float param_3, float param_4);

	// Non-virtual Destructors

	// BW1W120 0055cbf0 BW1M119 01174730
	~PlannedMultiMapFixed();
};

#endif /* BW1_DECOMP_PLANNED_MULTI_MAP_FIXED_INCLUDED_H */
