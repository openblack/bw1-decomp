#include "MobileWallHug.h"

#include "Utils.h"

static CircleHugStateInfoT g_CircleHugStateInfo;

// fabricated: an inlined helper is needed to reproduce the out-of-line
// set::find calls of the original
inline void EraseFromCircleHugSet(std::set<MobileWallHug*>& s, MobileWallHug* mwh)
{
	std::set<MobileWallHug*>::iterator it = s.find(mwh);
	if (it != s.end())
	{
		s.erase(it);
	}
}

// BW1W120 0060a9f0 BW1M100 10029be0 CircleHugInfo::Reset(MobileWallHug *)
void CircleHugInfo::Reset(MobileWallHug* mwh)
{
	if (mwh != NULL)
	{
		SetObjectPtr(NULL, mwh, false);
	}
	TurnsToObj = 0xff;
	field_0x6 = 0;

	EraseFromCircleHugSet(g_CircleHugStateInfo.field_0x30, mwh);
	EraseFromCircleHugSet(g_CircleHugStateInfo.field_0x20, mwh);
	std::map<MobileWallHug*, uint32_t>::iterator it = g_CircleHugStateInfo.field_0x0.find(mwh);
	if (it != g_CircleHugStateInfo.field_0x0.end())
	{
		g_CircleHugStateInfo.field_0x0.erase(it);
	}
}

// TODO: the map lookups below emit _Lbound calls where the target calls
// lower_bound; likely needs this TU's other container users to match
#pragma inline_depth(1)

// BW1W120 0060aad0 BW1M100 inlined MobileWallHug::SetupMobileMoveToPos(MapCoords const &)
void MobileWallHug::SetupMobileMoveToPos(const MapCoords& coords)
{
	goal = coords;
	InitStepsXZ();

	EraseFromCircleHugSet(g_CircleHugStateInfo.field_0x30, this);
	std::map<MobileWallHug*, uint32_t>::iterator it = g_CircleHugStateInfo.field_0x0.find(this);
	if (it != g_CircleHugStateInfo.field_0x0.end())
	{
		g_CircleHugStateInfo.field_0x0.erase(it);
		circle_hug_info.field_0x6 = 0;
	}

	if (AreWeThere(0.0f) == 1)
	{
		MoveState = MOVE_TO_STATES_ARRIVED;
		return;
	}

	circle_hug_info.Reset(this);
	field_0x78 = 1;
	MoveState = MOVE_TO_STATES_STEP_THROUGH;
}

// BW1W120 0060abc0 BW1M100 1001c770 MobileWallHug::SetupMobileMoveToPos(MapCoords const &, MOVE_TO_STATES)
void MobileWallHug::SetupMobileMoveToPos(const MapCoords& coords, MOVE_TO_STATES move_to_state)
{
	goal = coords;
	InitStepsXZ();

	EraseFromCircleHugSet(g_CircleHugStateInfo.field_0x30, this);
	std::map<MobileWallHug*, uint32_t>::iterator it = g_CircleHugStateInfo.field_0x0.find(this);
	if (it != g_CircleHugStateInfo.field_0x0.end())
	{
		g_CircleHugStateInfo.field_0x0.erase(it);
		circle_hug_info.field_0x6 = 0;
	}

	if (AreWeThere(0.0f) == 1)
	{
		MoveState = MOVE_TO_STATES_ARRIVED;
		return;
	}

	if (move_to_state == MOVE_TO_STATES_LINEAR)
	{
		MoveToCircleHugLinearSquareSweep(Pos);
		MoveState = move_to_state;
		return;
	}
	if (move_to_state == MOVE_TO_STATES_STEP_THROUGH)
	{
		field_0x78 = 1;
	}
	MoveState = move_to_state;
}

#pragma inline_depth()

// BW1W120 0060da90 BW1M100 1004cce0 MobileWallHug::SetGameAngle(unsigned short)
void MobileWallHug::SetGameAngle(uint16_t angle)
{
	GameAngle = angle;
	Object::SetYAngle(GUtils::ConvertGameAngleTo3D(angle));
}

// BW1W120 0060f760 BW1M100 103c1910 MobileWallHug::SetToZero(void)
void MobileWallHug::SetToZero()
{
	speed = 0;
	TurnsUntilNextStateChange = 0;
	SetGameAngle(0);
	target = NULL;
	footpath = NULL;
}
