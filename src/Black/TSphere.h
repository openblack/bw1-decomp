#ifndef BW1_DECOMP_T_SPHERE_INCLUDED_H
#define BW1_DECOMP_T_SPHERE_INCLUDED_H

#include <assert.h>
#include <Lionhead/LH3DLib/development/LHPoint.h>

// GJUtils::PointIsInSphere (0057c9f0) compares distance from Center against Radius.
class TSphere
{
public:
	float   Radius; /* 0x0 */
	LHPoint Center; /* 0x4 */
};

static_assert(sizeof(TSphere) == 0x10, "TSphere size is incorrect");

#endif /* BW1_DECOMP_T_SPHERE_INCLUDED_H */
