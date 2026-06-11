#ifndef BW1_DECOMP_LOCAL_BASE_INCLUDED_H
#define BW1_DECOMP_LOCAL_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

class LocalBase: public Base
{
public:

    // Override methods

    // win1.41 005c2150 mac 1033f600 LocalBase::_dt(void)
    virtual ~LocalBase();

    // Static methods

    // win1.41 005f8790 mac 1009eb9c LocalBase::operator new(unsigned long)
    static LocalBase* __nw(size_t size, const char* file_name, uint32_t line);

    // Constructors

    // win1.41 inlined mac 1034ab30 LocalBase::LocalBase(void)
    LocalBase();
};

#endif /* BW1_DECOMP_LOCAL_BASE_INCLUDED_H */
