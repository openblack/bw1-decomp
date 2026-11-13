#include "GameTimeConstants.h"
#include "SubArgument.h"

#include "ColourConstants.h" /* For White */

#include "CreatureSubAction.h" /* For class CreatureSubActionAgenda */

void SubArgumentObject::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index)
{
	agenda->SubActions[index].Belief = Object;
}

void SubArgumentObjectAndFloat::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index)
{
	agenda->SubActions[index].Belief = Object;
	agenda->SubActions[index].Float = Float;
}

void SubArgumentObjectAndInteger::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index)
{
	agenda->SubActions[index].Belief = Object;
	agenda->SubActions[index].Integer = Integer;
}

void SubArgumentInteger::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index)
{
	agenda->SubActions[index].Integer = Integer;
}

void SubArgumentFloat::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index)
{
	agenda->SubActions[index].Float = Float;
}

void SubArgumentIntegerAndFloat::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index)
{
	agenda->SubActions[index].Integer = Integer;
	agenda->SubActions[index].Float = Float;
}

#if !defined(VERSION_BW1W100)
void SubArgumentIntegerFloatAndSpell::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index)
{
	agenda->SubActions[index].Integer = Integer;
	agenda->SubActions[index].Float = Float;
	agenda->SubActions[index].Spell = Spell;
}
#endif

void SubArgumentPoint::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index)
{
	agenda->SubActions[index].Point = Point;
}

void SubArgumentPointIntegerFloatAndSpell::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index)
{
	agenda->SubActions[index].Point = Point;
	agenda->SubActions[index].Integer = Integer;
	agenda->SubActions[index].Float = Float;
	agenda->SubActions[index].Spell = Spell;
}

void SubArgumentObjectIntegerFloatAndSpell::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda,
                                                                         uint32_t                 index)
{
	agenda->SubActions[index].Belief = Object;
	agenda->SubActions[index].Integer = Integer;
	agenda->SubActions[index].Float = Float;
	agenda->SubActions[index].Spell = Spell;
}

void SubArgumentPointAndFloat::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index)
{
	agenda->SubActions[index].Point = Point;
	agenda->SubActions[index].Float = Float;
}

void SubArgumentObjectIntegerPosFloatAndSpell::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda,
                                                                            uint32_t                 index)
{
	agenda->SubActions[index].Belief = Object;
	agenda->SubActions[index].Integer = Integer;
	agenda->SubActions[index].Point = Point;
	agenda->SubActions[index].Float = Float;
	agenda->SubActions[index].Spell = Spell;
}

#if !defined(VERSION_BW1W100)
void SubArgumentObjectAndTwoIntegers::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index)
{
	agenda->SubActions[index].Belief = Object;
	agenda->SubActions[index].Integer = Integer;
	agenda->SubActions[index].SecondInteger = SecondInteger;
}
#endif
