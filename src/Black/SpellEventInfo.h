#ifndef BW1_DECOMP_SPELL_EVENT_INFO_INCLUDED_H
#define BW1_DECOMP_SPELL_EVENT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

// Forward Declares

class GameThing;

enum SPELL_EVENT_TYPE
{
	SPELL_EVENT_TYPE_ATOM = 2,
	SPELL_EVENT_TYPE_SPELL = 4,
	SPELL_EVENT_TYPE_HEAL = 5,
};

struct SpellEventInfo
{
	SPELL_EVENT_TYPE Type;
	LHPoint          Pos;
	LHPoint          Velocity;
	float            Strength;
	bool             CheckShields;
	GameThing*       Target;

	SpellEventInfo() {}
	SpellEventInfo(SPELL_EVENT_TYPE type, const LHPoint& pos)
		: Type(type), Pos(pos), Velocity(0.0f, 0.0f, 0.0f), Strength(1.0f), CheckShields(false), Target(NULL)
	{
	}
	SpellEventInfo(SPELL_EVENT_TYPE type, const LHPoint& pos, const LHPoint& velocity)
		: Type(type), Pos(pos), Velocity(velocity), Strength(1.0f), CheckShields(false), Target(NULL)
	{
	}
};
static_assert(offsetof(SpellEventInfo, Strength) == 0x1c, "Data member is at wrong offset");
static_assert(sizeof(SpellEventInfo) == 0x28, "Data type is of wrong size");

#endif /* BW1_DECOMP_SPELL_EVENT_INFO_INCLUDED_H */
