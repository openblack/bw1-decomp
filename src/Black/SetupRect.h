#ifndef BW1_DECOMP_SETUP_RECT_INCLUDED_H
#define BW1_DECOMP_SETUP_RECT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */

struct SetupRect
{
  struct LHCoord p0;
  struct LHCoord p1;
};
static_assert(sizeof(SetupRect) == 0x10, "Data type is of wrong size");

#endif /* BW1_DECOMP_SETUP_RECT_INCLUDED_H */
