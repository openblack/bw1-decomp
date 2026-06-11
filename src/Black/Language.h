#ifndef BW1_DECOMP_LANGUAGE_INCLUDED_H
#define BW1_DECOMP_LANGUAGE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

class GLanguage: public Base
{
public:
    uint32_t field_0x8;

    // Override methods

    // win1.41 005e6770 mac 1017a5a0 GLanguage::_dt(void)
    virtual ~GLanguage();

    // Constructors

    // win1.41 005e6750 mac 1019cef0 GLanguage::GLanguage(void)
    GLanguage();
};

#endif /* BW1_DECOMP_LANGUAGE_INCLUDED_H */
