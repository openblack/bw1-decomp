#ifndef BW1_DECOMP_CONTAINER_INFO_INCLUDED_H
#define BW1_DECOMP_CONTAINER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

enum CONTAINER_INFO
{
	CONTAINER_INFO_TOWN = 0,
	CONTAINER_INFO_PRAYER = 1,
	CONTAINER_INFO_CITADEL = 2,
	CONTAINER_INFO_FOREST = 3,
	CONTAINER_INFO_LAST = 4
};

class GContainerInfo : public GBaseInfo
{
public:
	CONTAINER_INFO ContainerType;

	// Static data

	// BW1W120 00c5e5e8
	static GContainerInfo Definitions[CONTAINER_INFO_LAST];

	// Override methods

	// BW1W120 0046b820 BW1M119 010c3360
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos)
	{
		num_infos = sizeof(Definitions) / sizeof(Definitions[0]);
		return GetInfo();
	}

	// Static methods

	// BW1W120 inlined BW1M119 010c3140
	static GContainerInfo* GetInfo() { return Definitions; }

	// TODO(#377): The original declared this class in Container.h.
	INFO_DATA_BLOCK(ContainerType, ContainerType)
	INFO_ROOT_LOADERS("Container.h", 27)
};

#endif /* BW1_DECOMP_CONTAINER_INFO_INCLUDED_H */
