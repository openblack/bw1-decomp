#include "CreatureMentalLearnAction.h"

#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"

#include "ColourConstants.h" /* For White */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <windows.h>                              /* For min, max */

#include "CreatureInfo.h"
#include "CreatureMental.h"
#include "CreatureObjectsInspected.h"
#include "CreaturePlan.h"
#include "DanceShape.h" /* For DanceShapePoints, enum DANCE_SHAPE */
#include "Global.h"
#include "Rand.h"
#include "Utils.h" /* For class GUtils */

#define PERSONALITY_VARIATION         0.1f
#define EXTROVERSION_VARIATION        0.3f
#define INTEREST_IN_LOOKING_VARIATION 0.4f

#define RANDOMISED_PERSONALITY(line, value, variation)                                                                 \
	(GGlobal::Global.RandomiseCreatureMinds                                                                            \
	     ? min(max(GAME_FLOAT_RAND(line, 2.0f * (variation)) + (value) - (variation), 0.0f), 1.0f)                     \
	     : (value))

struct UnknownDanceShapeUser
{
	uint32_t      field_0x0;
	uint32_t      field_0x4;
	DANCE_SHAPE   Shape;
	uint8_t       field_0xc[0x10c];
	unsigned long PointIndex;

	// BW1W120 004e3440 BW1M119 null
	LHPoint GetDanceShapePoint();
};

CreatureActionKnownAboutEntry
	CreatureActionKnownAboutEntry::NormalActionKnownAboutInfo[CREATURE_ACTION_KNOWN_ABOUT_LAST];

CreatureMagicActionKnownAboutEntry CreatureMagicActionKnownAboutEntry::MagicActionKnownAboutInfo[MAGIC_TYPE_LAST];

inline CreatureMagicActionKnownAboutEntry* CreatureMagicActionKnownAboutEntry::GetMagicActionKnownAboutInfo()
{
	return MagicActionKnownAboutInfo;
}

CreatureInnatePersonality::CreatureInnatePersonality(const CreatureInfo* info)
{
	Niceness = RANDOMISED_PERSONALITY(20, info->InnateNiceness, PERSONALITY_VARIATION);
	Aggression = RANDOMISED_PERSONALITY(21, info->InnateAggression, PERSONALITY_VARIATION);
	Lethargy = RANDOMISED_PERSONALITY(22, info->InnateLethargy, PERSONALITY_VARIATION);
	Friendliness = RANDOMISED_PERSONALITY(23, info->InnateFriendliness, PERSONALITY_VARIATION);
	Communicativeness = RANDOMISED_PERSONALITY(24, info->InnateCommunicativeness, PERSONALITY_VARIATION);
	Extroversion = RANDOMISED_PERSONALITY(25, info->InnateExtroversion, EXTROVERSION_VARIATION);
	for (int type = 0; type < THING_TO_LOOK_AT_TYPE_LAST; type++)
	{
		InterestInThingToLookAt[type] =
			RANDOMISED_PERSONALITY(28, info->InterestInThingToLookAt[type], INTEREST_IN_LOOKING_VARIATION);
	}
}

LHPoint UnknownDanceShapeUser::GetDanceShapePoint()
{
	JustXZ  point = DanceShapePoints[Shape][GUtils::Spread(PointIndex, DANCE_SHAPE_NUM_POINTS)];
	LHPoint result;
	result.x = GUtils::ConvertWholeDistanceToMeters(point.x);
	result.y = 0.0f;
	result.z = GUtils::ConvertWholeDistanceToMeters(point.z);
	return result;
}

CreatureTimeToWait::CreatureTimeToWait(const CreatureInfo* info)
{
	field_0x8 = info->field_0x268;
	field_0xc = info->field_0x26c;
	field_0x10 = info->field_0x270;
}

CreatureObjectsInspected::CreatureObjectsInspected()
{
	for (int type = 0; type < CREATURE_BELIEF_TYPE_LAST; type++)
	{
		Inspected[type] = false;
	}
}
