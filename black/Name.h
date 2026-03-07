#ifndef BW1_DECOMP_NAME_INCLUDED_H
#define BW1_DECOMP_NAME_INCLUDED_H

#include <assert.h> /* For static_assert */

#ifdef __cplusplus

struct Name
{
    char string[0x20]; /* 0x0 */

    // Constructors

    // win1.41 0046d5e0 mac 101c7b50 Name::Name(void)
    Name();
};

#else // __cplusplus

struct Name
{
  char string[0x20];  /* 0x0 */
};
static_assert(sizeof(struct Name) == 0x20, "Data type is of wrong size");

// Constructors

// win1.41 0046d5e0 mac 101c7b50 Name::Name(void)
struct Name* __fastcall __ct__4NameFv(struct Name* this) asm("??0Name@@QAE@XZ");

#endif // __cplusplus

#endif /* BW1_DECOMP_NAME_INCLUDED_H */
