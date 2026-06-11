#ifndef BW1_DECOMP_ZOOMER_INCLUDED_H
#define BW1_DECOMP_ZOOMER_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHPoint.h" /* For struct LHPoint */

struct Zoomer
{
    float current_value; /* 0x0 */
    float destination;
    float destination_speed;
    float current_speed;
    float time_m2; /* 0x10 */
    float current_time;
    float duration;
    float start_value;
    float start_speed; /* 0x20 */
    LHPoint non_linear_acceleration;

    // Constructors

    // win1.41 inlined mac 1056a120 Zoomer::Zoomer()
    Zoomer();

    // Non-virtual methods

    // win1.41 inlined mac inlined Zoomer::SetDestination(float)
    void SetDestination(float destination);
    // win1.41 inlined mac 10038020 Zoomer::GetCurrentValue(void)
    float GetCurrentValue();
    // win1.41 inlined mac 10020df0 Zoomer::GetDestination(void)
    float GetDestination();
    // win1.41 00407d60 mac 1004ee60 Zoomer::SetDestinationWithSpeedAndTime(float, float, float)
    void SetDestinationWithSpeedAndTime(float destination, float speed, float time);
    // win1.41 00441ac0 mac 1035b310 Zoomer::SetPosition(float)
    void SetPosition(float position);
    // win1.41 00442720 mac 1002c480 Zoomer::Update(float)
    void Update(float dt);
};

struct Zoomer3d
{
    Zoomer x; /* 0x0 */
    Zoomer y; /* 0x30 */
    Zoomer z; /* 0x60 */

    // Non-virtual methods

    // win1.41 004605d0 mac 10031e60 Zoomer3d::GetCurrentValue(void)
    LHPoint* GetCurrentValue(LHPoint* out_point);
    // win1.41 inlined mac 10020d50 Zoomer3d::GetDestination(void)
    LHPoint* GetDestination(LHPoint* out_point);
    // win1.41 inlined mac inlined Zoomer3d::Update(float)
    void Update(float dt);
    // win1.41 inlined mac inlined Zoomer3d::SetDestinationWithSpeedAndTime(LHPoint const &, float, float)
    void SetDestinationWithSpeedAndTime(const LHPoint* destination, float speed, float time);
    // win1.41 0044e760 mac inlined Zoomer3d::SetDestinationWithTime(LHPoint const &, float)
    void SetDestinationWithTime(const LHPoint* destination, float time);
    // win1.41 inlined mac inlined Zoomer3d::SetPosition(LHPoint const &)
    void SetPosition(const LHPoint* destination);
};

#endif /* BW1_DECOMP_ZOOMER_INCLUDED_H */
