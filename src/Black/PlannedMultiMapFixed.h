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

	// BW1W120 0055cbe0 BW1M100 10111890 PlannedMultiMapFixed::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 00648af0 BW1M100 10114cd0 PlannedMultiMapFixed::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00648990 BW1M100 10114ef0 PlannedMultiMapFixed::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055cbd0 BW1M100 inlined PlannedMultiMapFixed::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 004050c0 BW1M100 1017d1b0 PlannedMultiMapFixed::GetScale(void)
	virtual float GetScale();
	// BW1W120 004050d0 BW1M100 103509e0 PlannedMultiMapFixed::SetScale(float)
	virtual void SetScale(float scale);
	// BW1W120 00648940 BW1M100 10115200 PlannedMultiMapFixed::GetText(void)
	virtual const char* GetText();
	// BW1W120 00465560 BW1M100 100d17b0 PlannedMultiMapFixed::IsWonder(void)
	virtual bool32_t IsWonder();
	// BW1W120 00648950 BW1M100 inlined PlannedMultiMapFixed::CreateBuildingSite(void)
	virtual bool32_t CreateBuildingSite();
	// BW1W120 00469660 BW1M100 100bd510 PlannedMultiMapFixed::CreatePlanned(float)
	virtual MultiMapFixed* CreatePlanned(float param_1);
	// BW1W120 00465540 BW1M100 100d1720 PlannedMultiMapFixed::CreatePlannedNoFixedCheck(float)
	virtual MultiMapFixed* CreatePlannedNoFixedCheck(float param_1);
	// BW1W120 00648c50 BW1M100 10114bf0 PlannedMultiMapFixed::PostCreatePlanned(MultiMapFixed&)
	virtual void PostCreatePlanned(MultiMapFixed* param_1);
	// BW1W120 00465550 BW1M100 100d1770 PlannedMultiMapFixed::IsCivic(void)
	virtual bool IsCivic();
	// BW1W120 00465570 BW1M100 100d17f0 PlannedMultiMapFixed::GetAbodeType(void)
	virtual ABODE_TYPE GetAbodeType();
	// BW1W120 00648910 BW1M100 1006f570 PlannedMultiMapFixed::GetDesireToBeRepaired(void)
	virtual float GetDesireToBeRepaired();
	// BW1W120 00648930 BW1M100 10115260 PlannedMultiMapFixed::Draw(void)
	virtual void Draw();

	// Constructors

	// BW1W120 00648780 BW1M100 10115620 PlannedMultiMapFixed::PlannedMultiMapFixed(MapCoords const &, GMultiMapFixedInfo const *, float, float)
	PlannedMultiMapFixed(const MapCoords& coords, const GMultiMapFixedInfo* info, float param_3, float param_4);

	// Non-virtual Destructors

	// BW1W120 0055cbf0 BW1M100 103e4400 PlannedMultiMapFixed::~PlannedMultiMapFixed(void)
	~PlannedMultiMapFixed();
};

#endif /* BW1_DECOMP_PLANNED_MULTI_MAP_FIXED_INCLUDED_H */
