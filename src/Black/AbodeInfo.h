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
	uint32_t     MaxVillagersInAbode;
	uint32_t     MaxChildrenInAbode;
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

	// BW1W120 00401320 BW1M119 013ce3a0
	virtual ~GAbodeInfo();
	// BW1W120 00401270 BW1M119 010a4850
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos);
	// BW1W120 00401240 BW1M119 01112ea0
	virtual MESH_LIST GetMesh() const { return MeshId; }
	// BW1W120 00401250 BW1M119 0109a3c0
	virtual ABODE_TYPE GetAbodeType() const { return AbodeType; }
	// BW1W120 00401260 BW1M119 0109a400
	virtual ABODE_NUMBER GetAbodeNumber() const { return AbodeNumber; }

	// Static methods

	// BW1W120 00405a70 BW1M119 015513d0
	static int GetInfoFromText(const char* text);
	// BW1W120 00405b30 BW1M119 01071e00
	static GAbodeInfo* Find(TRIBE_TYPE tribe_type, ABODE_NUMBER abode_number);

	// Non-virtual methods

	// BW1W120 00404b10 BW1M119 01590e90
	bool IsOkToCreateAtPos(const MapCoords& coords, float param_2, float param_3, Town* town) const;
	// BW1W120 00405a60 BW1M119 inlined
	const char* GetDescription();
	// BW1W120 0042e520 BW1M119 inlined
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
