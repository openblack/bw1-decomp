#include "GameTimeConstants.h"
#include "CreatureAttitudeConstants.h"
#include "CreatureMental.h"

#include "ColourConstants.h" /* For White */

#include "Creature.h"
#include "CreatureInitialDesireInfo.h"
#include "CreatureMentalBelief.h"
#include "InterfaceStatus.h"
#include "LeashStatus.h"
#include "Object.h"
#include "Utils.h"

const float MinimumUsefulness = 0.1f;

float CreatureMental::GetActivityObjectUsefulness(CreatureBelief* object, CREATURE_DESIRES desire)
{
	if (desire < NUM_CREATURE_DESIRES && CreatureInitialDesireInfo::GetInfo()[desire].Social != false &&
	    object->AssociatedBeliefs.count == 0 && object->GetType() != CREATURE_BELIEF_TYPE_CREATURE)
	{
		return 0.0f;
	}

	GInterfaceStatus* status = creature->GetInterfaceStatusLeashOn();
	if (status != NULL && status->LeashStatus->ObjectAttachedTo != NULL)
	{
		CreatureBelief* belief = GetBeliefAboutObject(status->LeashStatus->ObjectAttachedTo);
		if (belief != NULL)
		{
			CreatureBelief* associated = creature->AddBeliefAboutAssociatedObject(belief);
			if (associated != NULL && associated != object)
			{
				return 0.0f;
			}
		}
	}

	if (creature->IsConfinedToArea() != false &&
	    GUtils::GetDistanceInMetres(creature->Pos, object->Pos) > creature->ConfinementRadius)
	{
		if (desire != CREATURE_DESIRE_TO_HANG_AROUND_AT_HOME || object->Pointer->IsCitadelPart() == false)
		{
			return 0.0f;
		}
	}

	if (desire == CREATURE_DESIRE_ANGER && object->Pointer != NULL && object->Pointer->IsCreature() != false)
	{
		Creature* other = object->Pointer->CastCreature();
		if (other != NULL &&
		    (creature->Friends.IsThisInList(other) != false || other->Friends.IsThisInList(creature) != false))
		{
			return 0.0f;
		}
	}

	DecisionTreeCollection* collection = &decision_tree_collection;
	return collection->ConvertUtilityToUsefulness(collection->GetActivityObjectUtility(object, desire));
}

float CreatureMental::GetUsefulnessOfUsingObject(CreatureBelief* object, CREATURE_ACTION action)
{
	return MinimumUsefulness;
}
