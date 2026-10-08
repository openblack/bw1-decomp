#ifndef BW1_DECOMP_WHITE_COLOUR_INCLUDED_H
#define BW1_DECOMP_WHITE_COLOUR_INCLUDED_H

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */

// Lower-case twin of ColourConstants.h's White. BW1M119's LH3D library exports a global named
// "white"; on PC every including unit gets its own copy and startup initialiser instead.
// cl lays out a unit's .bss by symbol name, not by definition order, and only this spelling
// puts the copy after GameTimeConstants.h's SecondsPerYear, as in the units that include this
// header ahead of it (the Script* units). The original header name is unknown.
static LH3DColor white(0xFFFFFFFF);

#endif /* BW1_DECOMP_WHITE_COLOUR_INCLUDED_H */
