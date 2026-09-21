#ifndef BW1_DECOMP_CREATURE_SCRIPT_INCLUDED_H
#define BW1_DECOMP_CREATURE_SCRIPT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "SubArgument.h" /* For struct SubArgument */

// Forward Declares

class CreatureSubActionAgenda;
class Object;

class SubArgumentInteger : public SubArgument
{
public:
	// Override methods

	// BW1W120 004ff6f0 BW1M119 01294080
	virtual void SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* param_1, uint32_t param_2);
};

class SubArgumentObjectAndInteger : public SubArgument
{
public:
	// Override methods

	// BW1W120 004ff6d0 BW1M119 01294100
	virtual void SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* param_1, uint32_t param_2);
	// BW1W120 0047c880 BW1M119 inlined
	virtual uint32_t HasDestination();
	// BW1W120 0047c890 BW1M119 inlined
	virtual LHPoint* GetDestination();
};

class SubArgumentPoint : public SubArgument
{
public:
	LHPoint Point; /* 0x4 */

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	SubArgumentPoint(const LHPoint& point);

	// Override methods

	// BW1W120 004ff780 BW1M119 01293ef0
	virtual void SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* param_1, uint32_t param_2);
	// BW1W120 004791c0 BW1M119 01294570
	virtual uint32_t HasDestination();
	// BW1W120 004791d0 BW1M119 012945b0
	virtual LHPoint* GetDestination();
	// BW1W120 004791b0 BW1M119 inlined
	virtual Object* GetObject();
};

#endif /* BW1_DECOMP_CREATURE_SCRIPT_INCLUDED_H */
