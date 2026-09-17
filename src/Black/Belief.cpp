#include "Belief.h"

#include "BeliefInfo.h"
#include "ColourConstants.h" /* For White */
#include "Player.h"

GBeliefInfo GBeliefInfo::Info;

void GBelief::SetBelief(int index, float value)
{
	BeliefInPlayer[index] = BeliefInPlayerMax[index] < value ? BeliefInPlayerMax[index] : value;
}

void GBelief::SetBeliefInPlayerCap(GPlayer* player, float cap)
{
	BeliefInPlayerMax[player->GetPlayerNumber()] = cap;
}
