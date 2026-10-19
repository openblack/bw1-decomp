#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "CreatureActionTableEntry.h"

#include <stdio.h> /* For FILE, fprintf */

#include "ColourConstants.h"           /* For White */
#include "CreatureAgenda.h"            /* For CreatureAgenda::ActionTable */
#include "CreatureAttitudeToPlayer.h"  /* For struct CreatureAttitudeToPlayer */
#include "CreatureInitialDesireInfo.h" /* For struct CreatureInitialDesireInfo */
#include "CreatureLearning.h"          /* For struct CreatureLearningContext, struct CreatureLearningEpisode */
#include "CreatureMental.h"            /* For struct CreatureMental */
#include "CreatureMentalBelief.h"      /* For struct CreatureBelief */
#include "CreatureMentalBeliefs.h"     /* For struct CreatureBeliefs */
#include "CreatureMentalDesire.h"      /* For struct CreatureDesires */

// BW1W120 004c7d80 BW1M119 inlined
static void Indent(FILE* file, unsigned long indent);

void CreatureMental::Dump(FILE* file, unsigned long indent)
{
	fprintf(file, "\n\n\n\n*******************************************************\n");
	fprintf(file, "Creature Dump\n");
	fprintf(file, "*******************************************************\n\n");
	desires.Dump(file, indent);
	beliefs.Dump(file, indent);
	AttitudeToPlayer.Dump(file, indent);
}

void CreatureLearningEpisode::Dump(FILE* file, unsigned long indent)
{
	Indent(file, indent);
	fprintf(file, "LearningEpisode\n");
	char typeNames[][64] = {"Desire", "ActivityObject", "ObjectToActOn", "Method"};
	Indent(file, indent);
	fprintf(file, "Type: %s\n", typeNames[Context->Type]);
	Indent(file, indent);
	fprintf(file, "Goal: %s\n", CreatureInitialDesireInfo::GetInfo()[Context->Goal].Name);
	Indent(file, indent);
	fprintf(file, "Action: %s\n", CreatureAgenda::ActionTable[Context->Action].Name);
	Indent(file, indent);
	fprintf(file, "Belief\n");
	Context->Belief->Dump(file, indent + 1);
	Indent(file, indent);
	fprintf(file, "Feedback: %.3f\n", Feedback);
}

void CreatureDesires::Dump(FILE* file, unsigned long indent)
{
	fprintf(file, "Desires\n");
	for (unsigned long i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		float level = GetDesire(i);
		float increase = IncreaseTime[i];
		fprintf(file, "Desire(%s): %.1f (inc: %.4f)\n", CreatureInitialDesireInfo::GetInfo()[i].Name, level, increase);
	}
}

void CreatureBelief::Dump(FILE* file, unsigned long indent)
{
	Indent(file, indent);
	fprintf(file, "Belief\n");
	Indent(file, indent);
	fprintf(file, "Pos: %d, %d\n", Pos.MapX(), Pos.MapZ());
	Indent(file, indent);
	fprintf(file, "Pointer: %p\n", Pointer);
	for (unsigned long i = 0; i < GetNumAttributes(); i++)
	{
		Indent(file, indent);
		fprintf(file, "Attribute %s: %s\n", AttributeTypeText(i), AttributeValueText(i, GetNthAttributeValue(i)));
	}
}

void CreatureBeliefSmall::Dump(FILE* file, unsigned long indent)
{
	Indent(file, indent);
	fprintf(file, "SmallBelief\n");
	CreatureBelief::Dump(file, indent);
}

void CreatureBeliefAboutTown::Dump(FILE* file, unsigned long indent)
{
	Indent(file, indent);
	fprintf(file, "BeliefAboutTown\n");
	CreatureBelief::Dump(file, indent);
}

void CreatureBeliefAboutFlock::Dump(FILE* file, unsigned long indent)
{
	Indent(file, indent);
	fprintf(file, "BeliefAboutFlock\n");
	CreatureBelief::Dump(file, indent);
}

void CreatureBeliefAboutCreature::Dump(FILE* file, unsigned long indent)
{
	Indent(file, indent);
	fprintf(file, "BeliefAboutCreature\n");
	CreatureBelief::Dump(file, indent);
}

void CreatureBeliefAboutForest::Dump(FILE* file, unsigned long indent)
{
	Indent(file, indent);
	fprintf(file, "BeliefAboutForest\n");
	CreatureBelief::Dump(file, indent);
}

void CreatureBeliefAboutVillager::Dump(FILE* file, unsigned long indent)
{
	Indent(file, indent);
	fprintf(file, "BeliefAboutVillager\n");
	CreatureBelief::Dump(file, indent);
}

void CreatureBeliefAboutMobileObject::Dump(FILE* file, unsigned long indent)
{
	Indent(file, indent);
	fprintf(file, "BeliefAboutMobileObject\n");
	CreatureBelief::Dump(file, indent);
}

void CreatureBeliefAboutAbode::Dump(FILE* file, unsigned long indent)
{
	Indent(file, indent);
	fprintf(file, "BeliefAboutAbode\n");
	CreatureBelief::Dump(file, indent);
}

void CreatureBeliefAboutContext::Dump(FILE* file, unsigned long indent)
{
	Indent(file, indent);
	fprintf(file, "BeliefAboutContext\n");
	CreatureBelief::Dump(file, indent);
}

void CreatureBeliefAboutCitadel::Dump(FILE* file, unsigned long indent)
{
	Indent(file, indent);
	fprintf(file, "BeliefAboutCitadel\n");
	CreatureBelief::Dump(file, indent);
}

void CreatureBeliefs::Dump(FILE* file, unsigned long indent)
{
	uint32_t        index = 0;
	CreatureBelief* belief;
	fprintf(file, "Beliefs about ActivityObjects\n");
	for (belief = lists[0].Head; belief != NULL; belief = belief->Next)
	{
		fprintf(file, "\nBelief #%d", index);
		belief->Dump(file, indent + 1);
		if (belief->Next != NULL)
		{
			fprintf(file, "\n");
		}
		index++;
	}
	fprintf(file, "Beliefs about ActionObjects\n");
	for (belief = lists[CREATURE_BELIEF_LIST_TYPE_OBJECT].Head; belief != NULL; belief = belief->Next)
	{
		fprintf(file, "\nBelief #%d", index);
		belief->Dump(file, indent + 1);
		if (belief->Next != NULL)
		{
			fprintf(file, "\n");
		}
		index++;
	}
}

void CreatureAttitudeToPlayer::Dump(FILE* file, unsigned long indent)
{
	fprintf(file, "AttitudeToPlayer\n");
	fprintf(file, "NumGameTicksPlayerHasBeenCurrentlyWatchingMe: %d\n", NumGameTicksPlayerHasBeenCurrentlyWatchingMe);
	fprintf(file, "TotalNumGameTicksPlayerHasBeenWatchingMe: %d\n", TotalNumGameTicksPlayerHasBeenWatchingMe);
	fprintf(file, "HowNicePlayerHasBeenToMe: %f\n", HowNicePlayerHasBeenToMe);
}

static void Indent(FILE* file, unsigned long indent)
{
	for (unsigned long i = 0; i < indent; i++)
	{
		fprintf(file, "\t\t\t");
	}
}
