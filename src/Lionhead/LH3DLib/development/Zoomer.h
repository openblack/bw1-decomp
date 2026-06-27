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

    // BW1W120 inlined BW1M100 1056a120 Zoomer::Zoomer()
    Zoomer();

    // Non-virtual methods

    // BW1W120 inlined BW1M100 inlined Zoomer::SetDestination(float)
    void SetDestination(float destination);
    // BW1W120 inlined BW1M100 10038020 Zoomer::GetCurrentValue(void)
    float GetCurrentValue();
    // BW1W120 inlined BW1M100 10020df0 Zoomer::GetDestination(void)
    float GetDestination();
    // BW1W120 00407d60 BW1M100 1004ee60 Zoomer::SetDestinationWithSpeedAndTime(float, float, float)
    void SetDestinationWithSpeedAndTime(float destination, float speed, float time);
    // BW1W120 00441ac0 BW1M100 1035b310 Zoomer::SetPosition(float)
    void SetPosition(float position);
    // BW1W120 00442720 BW1M100 1002c480 Zoomer::Update(float)
    void Update(float dt);
};

struct Zoomer3d
{
    Zoomer x; /* 0x0 */
    Zoomer y; /* 0x30 */
    Zoomer z; /* 0x60 */

    // Non-virtual methods

    // BW1W120 004605d0 BW1M100 10031e60 Zoomer3d::GetCurrentValue(void)
    LHPoint* GetCurrentValue(LHPoint* out_point);
    // BW1W120 inlined BW1M100 10020d50 Zoomer3d::GetDestination(void)
    LHPoint* GetDestination(LHPoint* out_point);
    // BW1W120 inlined BW1M100 inlined Zoomer3d::Update(float)
    void Update(float dt);
    // BW1W120 inlined BW1M100 inlined Zoomer3d::SetDestinationWithSpeedAndTime(LHPoint const &, float, float)
    void SetDestinationWithSpeedAndTime(const LHPoint* destination, float speed, float time);
    // BW1W120 0044e760 BW1M100 inlined Zoomer3d::SetDestinationWithTime(LHPoint const &, float)
    void SetDestinationWithTime(const LHPoint* destination, float time);
    // BW1W120 inlined BW1M100 inlined Zoomer3d::SetPosition(LHPoint const &)
    void SetPosition(const LHPoint* destination);
};

#endif /* BW1_DECOMP_ZOOMER_INCLUDED_H */
