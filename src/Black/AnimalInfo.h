#ifndef BW1_DECOMP_ANIMAL_INFO_INCLUDED_H
#define BW1_DECOMP_ANIMAL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LivingInfo.h" /* For struct GLivingInfo */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

class GAnimalInfo : public GLivingInfo
{
public:
	// Override methods

	// BW1W120 00416da0 BW1M119 01175830
	virtual ~GAnimalInfo();
	// BW1W120 00416d30 BW1M119 01175b30
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
	// BW1W120 00416d20 BW1M119 01175af0
	virtual MESH_LIST GetMesh() const;
};

#endif /* BW1_DECOMP_ANIMAL_INFO_INCLUDED_H */
