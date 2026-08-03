#ifndef BW1_DECOMP_COLOUR_CONSTANTS_INCLUDED_H
#define BW1_DECOMP_COLOUR_CONSTANTS_INCLUDED_H

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */

// Internal linkage, so every translation unit including this header gets its own
// copy. The value is a constructor call rather than a constant expression, so the
// compiler cannot fold it into .data and instead emits a startup initialiser per
// TU, registered in .CRT$XCU. That is why the same funclet appears in about 200
// objects, including the many that never read White.
//
// TODO: real filename unknown. Type and value from BW1M100 Temple::Draw 1053f7c0.
static LH3DColor White(0xFFFFFFFF);

#endif /* BW1_DECOMP_COLOUR_CONSTANTS_INCLUDED_H */
