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

#if defined(VERSION_BW1W100) || defined(VERSION_BW1WCI)
#define FILEPATH "C:\\dev\\black\\CreatureMentalMisc.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\CreatureMentalMisc.cpp"
#elif defined(VERSION_BW1W130)
#define FILEPATH "D:\\Work\\Games\\dd\\Black\\CreatureMentalMisc.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\CreatureMentalMisc.cpp"
#endif

#define PERSONALITY_VARIATION         0.1f
#define EXTROVERSION_VARIATION        0.3f
#define INTEREST_IN_LOOKING_VARIATION 0.4f

#define RANDOMISED_PERSONALITY(value, variation, line)                                                                 \
	(GGlobal::Global.RandomiseCreatureMinds                                                                            \
	     ? min(max(GRand::GameFloatRand(2.0f * (variation), FILEPATH, line) + (value) - (variation), 0.0f), 1.0f)      \
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
	Niceness = RANDOMISED_PERSONALITY(info->InnateNiceness, PERSONALITY_VARIATION, 20);
	Aggression = RANDOMISED_PERSONALITY(info->InnateAggression, PERSONALITY_VARIATION, 21);
	Lethargy = RANDOMISED_PERSONALITY(info->InnateLethargy, PERSONALITY_VARIATION, 22);
	Friendliness = RANDOMISED_PERSONALITY(info->InnateFriendliness, PERSONALITY_VARIATION, 23);
	Communicativeness = RANDOMISED_PERSONALITY(info->InnateCommunicativeness, PERSONALITY_VARIATION, 24);
	Extroversion = RANDOMISED_PERSONALITY(info->InnateExtroversion, EXTROVERSION_VARIATION, 25);
	for (int type = 0; type < THING_TO_LOOK_AT_TYPE_LAST; type++)
	{
		InterestInThingToLookAt[type] =
			RANDOMISED_PERSONALITY(info->InterestInThingToLookAt[type], INTEREST_IN_LOOKING_VARIATION, 28);
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
