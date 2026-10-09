#ifndef BW1_DECOMP_SCAFFOLD_INFO_INCLUDED_H
#define BW1_DECOMP_SCAFFOLD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */
#include "InfoLoaders.h"      /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GScaffoldInfo : public GMobileObjectInfo
{
public:
	float   field_0x114;
	uint8_t field_0x118[0xe];

	// Override methods

	// BW1W120 006e8360 BW1M119 0114c310
	virtual ~GScaffoldInfo();

	// Static data

	// BW1W120 00d959d0
	static GScaffoldInfo Infos[SCAFFOLD_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 0114c270
	static GScaffoldInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Scaffold.h.
	INFO_DATA_BLOCK(field_0x114, field_0x118)
	INFO_DERIVED_LOADERS(GMobileObjectInfo, "Scaffold.h", 21)
};

#endif /* BW1_DECOMP_SCAFFOLD_INFO_INCLUDED_H */
