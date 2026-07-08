#ifndef BW1_DECOMP_CREATURE_SCRIPT_INCLUDED_H
#define BW1_DECOMP_CREATURE_SCRIPT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SubArgument.h" /* For struct SubArgument */

// Forward Declares

class CreatureSubActionAgenda;
struct LHPoint;
class Object;

class SubArgumentInteger : public SubArgument
{
public:
	// Override methods

	// BW1W120 004ff6f0 BW1M100 10290fd0 SubArgumentInteger::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda *, unsigned long)
	virtual void SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* param_1, uint32_t param_2);
};

class SubArgumentObjectAndInteger : public SubArgument
{
public:
	// Override methods

	// BW1W120 004ff6d0 BW1M100 10291050 SubArgumentObjectAndInteger::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda *, unsigned long)
	virtual void SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* param_1, uint32_t param_2);
	// BW1W120 0047c880 BW1M100 inlined SubArgumentObjectAndInteger::HasDestination(void)
	virtual uint32_t HasDestination();
	// BW1W120 0047c890 BW1M100 inlined SubArgumentObjectAndInteger::GetDestination(void)
	virtual LHPoint* GetDestination();
};

class SubArgumentPoint : public SubArgument
{
public:
	// Override methods

	// BW1W120 004ff780 BW1M100 10290e40 SubArgumentPoint::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda *, unsigned long)
	virtual void SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* param_1, uint32_t param_2);
	// BW1W120 004791c0 BW1M100 102914c0 SubArgumentPoint::HasDestination(void)
	virtual uint32_t HasDestination();
	// BW1W120 004791d0 BW1M100 10291500 SubArgumentPoint::GetDestination(void)
	virtual LHPoint* GetDestination();
	// BW1W120 004791b0 BW1M100 inlined SubArgumentPoint::GetObject(void)
	virtual Object* GetObject();
};

#endif /* BW1_DECOMP_CREATURE_SCRIPT_INCLUDED_H */
