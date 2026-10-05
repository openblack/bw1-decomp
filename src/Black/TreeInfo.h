#ifndef BW1_DECOMP_TREE_INFO_INCLUDED_H
#define BW1_DECOMP_TREE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "SingleMapFixedInfo.h" /* For struct GSingleMapFixedInfo */
#include "InfoLoaders.h"        /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GTreeInfo : public GSingleMapFixedInfo
{
public:
	uint8_t field_0x104[0x3a];

	// Override methods

	// BW1W120 00749dd0 BW1M119 0115da10
	virtual ~GTreeInfo();

	// Static data

	// BW1W120 00da3ad8
	static GTreeInfo Infos[TREE_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 01161680
	static GTreeInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Tree.h.
	// Out of line: LoadBinary at 0042eab0, Load at 0042e9d0.
	INFO_DATA_BLOCK(field_0x104, field_0x104)
	INFO_DERIVED_LOADERS(GSingleMapFixedInfo, "Tree.h", 23)
};

#endif /* BW1_DECOMP_TREE_INFO_INCLUDED_H */
