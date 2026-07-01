#include "Animal.h"
#include "Flock.h"
#include "Utils.h"

uint32_t Animal::KeepFlockMemberWithinFlockArea()
{
    MapCoords flockPos = flock->GetFlockPos();

    if (PosWithinDomain(&coords, 1.0f) != 0) {
        float distToFlock = GUtils::GetDistanceInMetres(flockPos, coords);
        if (distToFlock <= (float)GetFlockDistance()) {
            return 1;
        }
    }

    float flockDistance = (float)GetFlockDistance();
    MapCoords randomPos = CalcRandomPos(flockPos, 0.0f, flockDistance);
    int flockPosInDomain = PosWithinDomain(&flockPos, 1.0f);
    int randomPosInDomain = PosWithinDomain(&randomPos, 1.0f);
    if (randomPosInDomain != 0 || flockPosInDomain == 0) {
        SetupMoveToPos(&randomPos, 0x2b);
    }
    return 0x23;
}
