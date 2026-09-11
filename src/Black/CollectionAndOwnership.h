#ifndef BW1_DECOMP_COLLECTION_AND_OWNERSHIP_INCLUDED_H
#define BW1_DECOMP_COLLECTION_AND_OWNERSHIP_INCLUDED_H

#include <assert.h>

class PSysBase;

// Layout verified by GameOSFile::ReadSafe/WriteSafe at 00562720/005626c0.
class CollectionAndOwnership
{
public:
	PSysBase* Collection;     /* 0x0 */
	bool      OwnsCollection; /* 0x4 */
};

static_assert(sizeof(CollectionAndOwnership) == 0x8, "CollectionAndOwnership size is incorrect");

#endif /* BW1_DECOMP_COLLECTION_AND_OWNERSHIP_INCLUDED_H */
