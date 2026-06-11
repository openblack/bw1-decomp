#ifndef BW1_DECOMP_P_BALL_INCLUDED_H
#define BW1_DECOMP_P_BALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

class Base;
class Object;

class PBall: public MobileObject
{
public:

    // Override methods

    // win1.41 0063e950 mac inlined PBall::_dt(void)
    virtual ~PBall();
    // win1.41 0063e990 mac inlined PBall::Process(void)
    virtual uint32_t Process();
    // win1.41 0063e980 mac inlined PBall::Draw(void)
    virtual void Draw();
};

#endif /* BW1_DECOMP_P_BALL_INCLUDED_H */
