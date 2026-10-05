#ifndef BW1_DECOMP_ANIMAL_STATE_TABLE_INFO_INCLUDED_H
#define BW1_DECOMP_ANIMAL_STATE_TABLE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/GStates.h> /* For ANIMAL_STATE_LAST_STATE */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GAnimalStateTableInfo : public GBaseInfo
{
public:
	uint8_t field_0x10[0xa8];

	// Override methods

	// BW1W120 00416e80 BW1M119 01174300
	virtual ~GAnimalStateTableInfo();
	// BW1W120 00416e10 BW1M119 01175be0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00c526e8
	static GAnimalStateTableInfo Infos[ANIMAL_STATE_LAST_STATE];

	// Static methods

	// BW1W120 inlined BW1M119 0107ea60
	static GAnimalStateTableInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Animal.h.
	INFO_DATA_BLOCK(field_0x10, field_0x10)
	INFO_ROOT_LOADERS("Animal.h", 52)
};

#endif /* BW1_DECOMP_ANIMAL_STATE_TABLE_INFO_INCLUDED_H */
