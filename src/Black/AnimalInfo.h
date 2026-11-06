#ifndef BW1_DECOMP_ANIMAL_INFO_INCLUDED_H
#define BW1_DECOMP_ANIMAL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LivingInfo.h"  /* For struct GLivingInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

#include <chlasm/AllMeshes.h> /* For enum MESH_LIST */
#include <chlasm/Enum.h>      /* For enum ANIMAL_INFO */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

#define ANIMAL_NEED_THRESHOLD_DISABLED 0

class GAnimalInfo : public GLivingInfo
{
public:
	ANIMAL_INFO AnimalType; /* 0x1f4 */
	uint32_t    field_0x1f8;
	MESH_LIST   HighDetail;
	MESH_LIST   StdDetail; /* 0x200 */
	MESH_LIST   LowDetail;
	uint32_t    field_0x208;
	int32_t     HungerThreshold;
	int32_t     ThirstThreshold; /* 0x210 */
	int32_t     TirednessThreshold;
	int32_t     BreedingThreshold;
	float       FlockDistance;
	uint32_t    TurnAngle; /* 0x220 */
	long        FieldOfView;
	bool32_t    CanBePlacedInHand;
	uint32_t    field_0x22c;
	FOOD_TYPE   FoodTypeEaten; /* 0x230 */
	bool32_t    CanFlock;
	float       ChaseDistance;
	float       StalkDistance;
	float       MaxHuntDistance; /* 0x240 */
	uint16_t    NeedsSearchDistance;
	uint32_t    FoodSearchRadius;
	uint32_t    field_0x24c;
	uint32_t    MaxHuntTurns; /* 0x250 */
	bool32_t    SeeksEnvironment;
	uint32_t    WanderMinDistance;
	long        FlockSearchRadius;
	uint32_t    MaxFlockSize; /* 0x260 */
	uint32_t    LeaderReturnTurns;
	uint32_t    field_0x268[3];
	float       VerticalSpeed;
	AgeToScale  ageToScale;
	uint32_t    field_0x2c8;

	// Override methods

	// BW1W120 00416d20 BW1M119 01175af0
	virtual MESH_LIST GetMesh() const { return StdDetail; }
	// BW1W120 00416d30 BW1M119 01175b30
	virtual GBaseInfo* GetBaseInfo(uint32_t& info_count)
	{
		info_count = ANIMAL_INFO_LAST;
		return Infos;
	}

	// Static data

	// BW1W120 00c4d030
	static GAnimalInfo Infos[ANIMAL_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 01175730
	static GAnimalInfo* GetInfo() { return Infos; }

	INFO_DATA_BLOCK(AnimalType, field_0x2c8)
	INFO_DERIVED_LOADERS(GLivingInfo, "Animal.h", 72)
};

#endif /* BW1_DECOMP_ANIMAL_INFO_INCLUDED_H */
