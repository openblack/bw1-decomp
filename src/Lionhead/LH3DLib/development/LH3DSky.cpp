#include "LH3DSky.h"

int LH3DSky::g_b_we_are_inside_citadel;

float LH3DSky::ConvertTime(float time, float from_night, float from_dusk_start, float from_dusk_end, float from_day,
                           float to_night, float to_dusk_start, float to_dusk_end, float to_day)
{
	bool folded = false;
	if (time > SKY_NOON_TIME)
	{
		time = HOURS_PER_DAY - time;
		folded = true;
	}
	SKY_TIME_SEGMENT segment;
	float            fraction;
	if (time < from_night)
	{
		segment = SKY_TIME_SEGMENT_NIGHT;
		fraction = time / from_night;
	}
	else if (time < from_dusk_start)
	{
		segment = SKY_TIME_SEGMENT_DAWN;
		fraction = (time - from_night) / (from_dusk_start - from_night);
	}
	else if (time < from_dusk_end)
	{
		segment = SKY_TIME_SEGMENT_DUSK;
		fraction = (time - from_dusk_start) / (from_dusk_end - from_dusk_start);
	}
	else if (time < from_day)
	{
		segment = SKY_TIME_SEGMENT_SUNRISE;
		fraction = (time - from_dusk_end) / (from_day - from_dusk_end);
	}
	else
	{
		segment = SKY_TIME_SEGMENT_DAY;
		fraction = (time - from_day) / (SKY_NOON_TIME - from_day);
	}
	switch (segment)
	{
	case SKY_TIME_SEGMENT_NIGHT:
		time = fraction * to_night;
		break;
	case SKY_TIME_SEGMENT_DAWN:
		time = to_night + fraction * (to_dusk_start - to_night);
		break;
	case SKY_TIME_SEGMENT_DUSK:
		time = to_dusk_start + fraction * (to_dusk_end - to_dusk_start);
		break;
	case SKY_TIME_SEGMENT_SUNRISE:
		time = to_dusk_end + fraction * (to_day - to_dusk_end);
		break;
	case SKY_TIME_SEGMENT_DAY:
		time = to_day + fraction * (SKY_NOON_TIME - to_day);
		break;
	}
	if (folded)
	{
		time = HOURS_PER_DAY - time;
	}
	return time;
}
