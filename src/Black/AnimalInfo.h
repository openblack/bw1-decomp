#ifndef BW1_DECOMP_ANIMAL_INFO_INCLUDED_H
#define BW1_DECOMP_ANIMAL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LivingInfo.h"  /* For struct GLivingInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

#define ANIMAL_NEED_THRESHOLD_DISABLED 0

class GAnimalInfo : public GLivingInfo
{
public:
	bool32_t IsHarderThanCreature;
	uint8_t  field_0x1f8[0x14];
	int32_t  HungerThreshold;
	uint8_t  field_0x210[0x4];
	int32_t  TirednessThreshold;
	int32_t  BreedingThreshold;
	uint8_t  field_0x21c[0x18];
	bool32_t CanFlock;
	uint8_t  field_0x238[0x94];

	// Override methods

	// BW1W120 00416da0 BW1M119 01175830
	virtual ~GAnimalInfo();
	// BW1W120 00416d30 BW1M119 01175b30
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
	// BW1W120 00416d20 BW1M119 01175af0
	virtual MESH_LIST GetMesh() const;

	// Static data

	// BW1W120 00c4d030
	static GAnimalInfo Infos[ANIMAL_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 01175730
	static GAnimalInfo* GetInfo() { return Infos; }

	INFO_DATA_BLOCK(IsHarderThanCreature, field_0x238)
	INFO_DERIVED_LOADERS(GLivingInfo, "Animal.h", 72)
};

#endif /* BW1_DECOMP_ANIMAL_INFO_INCLUDED_H */
