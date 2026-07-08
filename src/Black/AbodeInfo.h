#ifndef BW1_DECOMP_ABODE_INFO_INCLUDED_H
#define BW1_DECOMP_ABODE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For ABODE_INFO_LAST, enum ABODE_NUMBER, enum ABODE_TYPE, enum DYK_CATEGORY, enum TRIBE_TYPE */

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
	ABODE_TYPE   AbodeType; /* 0x120 */
	ABODE_NUMBER AbodeNumber;
	Name         description;
	uint32_t     field_0x148;
	uint32_t     field_0x14c;
	uint32_t     field_0x150;
	uint32_t     field_0x154;
	TRIBE_TYPE   tribe_type;
	MESH_LIST    MeshId;
	uint32_t     CanBePhysicallyDamaged; /* 0x160 */
	float        StartLife;
	uint32_t     StartStrength;
	float        StartDefence;
	uint32_t     StartInfluence; /* 0x170 */
	int          MaxVillagersInAbode;
	int          MaxChildrenInAbode;
	uint32_t     StartVillagersInAbode;
	uint32_t     StartChildrenInAbode; /* 0x180 */
	uint32_t     StartFood;
	uint32_t     StartFoodRAnd;
	uint32_t     StartWood;
	uint32_t     StartWoodRAnd; /* 0x190 */
	uint32_t     HowLongRuinLastsFor;
	uint32_t     PotForResourceFood;
	uint32_t     PotForResourceWood;
	float        PercentTooCrowded; /* 0x1a0 */
	int          ProducesMobileObject;
	float        MaxNumMobileObjectsToProduce;
	float        TimeEachMobileObjectTakesToProduce;
	float        EmptyAbodeLifeReducer; /* 0x1b0 */
	int          PopulationWhenNeeded;
	float        ThresholdForStopBeingFunctional;
	int          ToolTipsForBuild;
	int          DidYouKnow; /* 0x1c0 */
	DYK_CATEGORY DykCategory;

	// Override methods

	// BW1W120 00401320 BW1M100 101ca240 GAbodeInfo::~GAbodeInfo(unsigned int)
	virtual ~GAbodeInfo();
	// BW1W120 00401270 BW1M100 103d3790 GAbodeInfo::GetBaseInfo(ulong&)
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos);
	// BW1W120 00401240 BW1M100 1019a370 GAbodeInfo::GetMesh() const
	virtual MESH_LIST GetMesh() const { return MeshId; }
	// BW1W120 00401250 BW1M100 106fde70 GAbodeInfo::GetAbodeType() const
	virtual ABODE_TYPE GetAbodeType() const { return AbodeType; }
	// BW1W120 00401260 BW1M100 100984c0 GAbodeInfo::GetAbodeNumber() const
	virtual ABODE_NUMBER GetAbodeNumber() const { return AbodeNumber; }

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
		file->GetSegmentData(&EditorMesh, sizeof(EditorMesh), -1);
	}
};
static_assert(sizeof(GAbodeInfo) == 0x1c8, "Data type is of wrong size");

static GAbodeInfo AbodeInfos[ABODE_INFO_LAST];

GBaseInfo* GAbodeInfo::GetBaseInfo(uint32_t& num_infos)
{
	num_infos = ABODE_INFO_LAST;
	return &AbodeInfos[0];
}

#endif /* BW1_DECOMP_ABODE_INFO_INCLUDED_H */
