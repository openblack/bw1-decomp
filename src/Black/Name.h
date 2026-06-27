#ifndef BW1_DECOMP_NAME_INCLUDED_H
#define BW1_DECOMP_NAME_INCLUDED_H

#include <assert.h> /* For static_assert */

struct Name
{
    char string[0x20]; /* 0x0 */

    // Constructors

    // BW1W120 0046d5e0 BW1M100 101c7b50 Name::Name(void)
    Name();
};

#endif /* BW1_DECOMP_NAME_INCLUDED_H */
