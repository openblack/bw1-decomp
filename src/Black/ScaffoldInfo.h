#ifndef BW1_DECOMP_SCAFFOLD_INFO_INCLUDED_H
#define BW1_DECOMP_SCAFFOLD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */

// Forward Declares

class Base;

class GScaffoldInfo : public GMobileObjectInfo
{
public:
	// Override methods

	// BW1W120 006e8360 BW1M119 0114c310
	virtual ~GScaffoldInfo();
};

#endif /* BW1_DECOMP_SCAFFOLD_INFO_INCLUDED_H */
