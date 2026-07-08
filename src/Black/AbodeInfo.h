#ifndef BW1_DECOMP_ABODE_INFO_INCLUDED_H
#define BW1_DECOMP_ABODE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum ABODE_NUMBER, enum ABODE_TYPE, enum DYK_CATEGORY, enum TRIBE_TYPE */

#include "MultiMapFixedInfo.h"             /* For struct GMultiMapFixedInfo */
#include "Name.h"                          /* For struct Name */
#include "Lionhead/LHFile/ver3.0/LHFile.h" /* For LHFile */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;
class LHFile;
struct MapCoords;
class Town;

class GAbodeInfo : public GMultiMapFixedInfo
{
public:
	ABODE_TYPE   abodeType; /* 0x120 */
	ABODE_NUMBER abodeNumber;
	Name         description;
	uint32_t     field_0x148;
	uint32_t     field_0x14c;
	uint32_t     field_0x150;
	uint32_t     field_0x154;
	TRIBE_TYPE   tribe_type;
	MESH_LIST    meshId;
	uint32_t     canBePhysicallyDamaged; /* 0x160 */
	float        startLife;
	uint32_t     startStrength;
	float        startDefence;
	uint32_t     startInfluence; /* 0x170 */
	int          maxVillagersInAbode;
	int          maxChildrenInAbode;
	uint32_t     startVillagersInAbode;
	uint32_t     startChildrenInAbode; /* 0x180 */
	uint32_t     startFood;
	uint32_t     startFoodRAnd;
	uint32_t     startWood;
	uint32_t     startWoodRAnd; /* 0x190 */
	uint32_t     howLongRuinLastsFor;
	uint32_t     potForResourceFood;
	uint32_t     potForResourceWood;
	float        percentTooCrowded; /* 0x1a0 */
	int          producesMobileObject;
	float        maxNumMobileObjectsToProduce;
	float        timeEachMobileObjectTakesToProduce;
	float        emptyAbodeLifeReducer; /* 0x1b0 */
	int          populationWhenNeeded;
	float        thresholdForStopBeingFunctional;
	int          toolTipsForBuild;
	int          didYouKnow; /* 0x1c0 */
	DYK_CATEGORY dykCategory;

	// Override methods

	// BW1W120 00401320 BW1M100 101ca240 GAbodeInfo::~GAbodeInfo(unsigned int)
	virtual ~GAbodeInfo();
	// BW1W120 00401270 BW1M100 103d3790 GAbodeInfo::GetBaseInfo(ulong&)
	virtual GBaseInfo& GetBaseInfo(uint32_t& param_1);
	// BW1W120 00401240 BW1M100 1019a370 GAbodeInfo::GetMesh() const
	virtual MESH_LIST GetMesh() const { return meshId; }
	// BW1W120 00401250 BW1M100 106fde70 GAbodeInfo::GetAbodeType() const
	virtual ABODE_TYPE GetAbodeType() const { return abodeType; }
	// BW1W120 00401260 BW1M100 100984c0 GAbodeInfo::GetAbodeNumber() const
	virtual ABODE_NUMBER GetAbodeNumber() const { return abodeNumber; }

	// Static methods

	// BW1W120 00405a70 BW1M100 101ca0c0 GAbodeInfo::GetInfoFromText(char *)
	static int GetInfoFromText(const char* text);
	// BW1W120 00405b30 BW1M100 1006f680 GAbodeInfo::Find(TRIBE_TYPE, ABODE_NUMBER)
	static GAbodeInfo* Find(TRIBE_TYPE tribe_type, ABODE_NUMBER abode_number);

	// Non-virtual methods

	// BW1W120 00404b10 BW1M100 1015a260 GAbodeInfo::IsOkToCreateAtPos(MapCoords const &, float, float, Town *) const
	bool IsOkToCreateAtPos(const MapCoords* coords, float param_2, float param_3, Town* town);
	// BW1W120 00405a60 BW1M100 inlined GAbodeInfo::GetDescription(void)
	const char* GetDescription();
	// BW1W120 0042e520 BW1M100 inlined GAbodeInfo::LoadBinary(LHFile *)
	void LoadBinary(LHFile* file)
	{
		file->GetSegmentData(&type, sizeof(type), -1);
		SetInfoID();
		file->GetSegmentData(&editorMesh, sizeof(editorMesh), -1);
	}
};
static_assert(sizeof(GAbodeInfo) == 0x1c8, "Data type is of wrong size");

static GAbodeInfo AbodeInfos[0x93];

GBaseInfo& GAbodeInfo::GetBaseInfo(uint32_t& param_1)
{
	param_1 = 0x93;
	return AbodeInfos[0];
}

#endif /* BW1_DECOMP_ABODE_INFO_INCLUDED_H */
