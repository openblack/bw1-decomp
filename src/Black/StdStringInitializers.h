#ifndef BW1_DECOMP_STD_STRING_INITIALIZERS_INCLUDED_H
#define BW1_DECOMP_STD_STRING_INITIALIZERS_INCLUDED_H

// The 1.20 and 1.30 builds of the units that include this pull in <string>, whose
// std::ctype<unsigned short>::id gives each of them a one-time guard and an atexit
// registration after their other static initializers. The 1.00 and 1.10 builds of
// the same units have neither, so <string> is left out for them.
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

#endif /* BW1_DECOMP_STD_STRING_INITIALIZERS_INCLUDED_H */
