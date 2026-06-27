#ifndef BW1_DECOMP_HELP_DUDE_INCLUDED_H
#define BW1_DECOMP_HELP_DUDE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LocalBase.h" /* For struct LocalBase */

// Forward Declares

class Base;
struct LHPoint;

class HelpDude: public LocalBase
{
public:

    // Override methods

    // BW1W120 005c2110 BW1M100 10348c90 HelpDude::_dt(void)
    virtual ~HelpDude();
    // BW1W120 005c20e0 BW1M100 10348c40 HelpDude::Get3DSoundPos(LHPoint *)
    virtual int Get3DSoundPos(LHPoint* param_1);
};

#endif /* BW1_DECOMP_HELP_DUDE_INCLUDED_H */
