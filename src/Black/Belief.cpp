#include "Belief.h"

#include "Player.h"

void GBelief::SetBelief(int index, float value)
{
	BeliefInPlayer[index] = BeliefInPlayerMax[index] < value ? BeliefInPlayerMax[index] : value;
}

void GBelief::SetBeliefInPlayerCap(GPlayer* player, float cap)
{
	BeliefInPlayerMax[player->GetPlayerNumber()] = cap;
}
