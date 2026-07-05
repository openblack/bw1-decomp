#include "GatheringText.h"

float GatheringText::GetFrac(float value, float lower, float upper)
{
    if (value <= lower)
    {
        return 0.0f;
    }
    if (value >= upper)
    {
        return 1.0f;
    }
    if (upper == lower)
    {
        return 0.5f;
    }
    return (value - lower) / (upper - lower);
}
