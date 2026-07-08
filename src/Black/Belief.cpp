#include "Belief.h"

#include "Player.h"

void GBelief::SetBelief(int index, float value)
{
	belief_in_player[index] = belief_in_player_max[index] < value ? belief_in_player_max[index] : value;
}

void GBelief::SetBeliefInPlayerCap(GPlayer* player, float cap)
{
	belief_in_player_max[player->GetPlayerNumber()] = cap;
}
