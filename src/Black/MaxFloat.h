#ifndef BW1_DECOMP_MAX_FLOAT_INCLUDED_H
#define BW1_DECOMP_MAX_FLOAT_INCLUDED_H

#include <float.h> /* For FLT_MAX */

// Internal linkage, so each including TU gets its own copy and cl6 emits the
// load from memory rather than folding it. Only TUs that use it emit it.
const float MaxFloat = FLT_MAX;

#endif /* BW1_DECOMP_MAX_FLOAT_INCLUDED_H */
