#ifndef BW1_DECOMP_SUB_ARGUMENT_INCLUDED_H
#define BW1_DECOMP_SUB_ARGUMENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <re_common.h>                            /* For bool32_t */

// Forward Declares

class CreatureBelief;
class CreatureSubActionAgenda;

class SubArgument
{
public:
	// Constructors

	// BW1W120 inlined BW1M119 011d4ed0
	SubArgument() {}

	// Virtual methods

	// BW1W120 purecall BW1M119 purecall
	virtual void SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index) = 0;
	// BW1W120 0047c880 BW1M119 011ea130
	virtual bool32_t HasDestination() { return 0; }
	// BW1W120 0047c890 BW1M119 011ea170
	virtual LHPoint* GetDestination() { return NULL; }
	// BW1W120 004791b0 BW1M119 011ea1b0
	virtual CreatureBelief* GetObjectA() { return NULL; }
};
static_assert(sizeof(SubArgument) == 0x4, "Data type is of wrong size");

class SubArgumentObject : public SubArgument
{
public:
	CreatureBelief* Object; /* 0x4 */

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	SubArgumentObject(CreatureBelief* object) { Object = object; }

	// Override methods

	// BW1W120 004ff690 BW1M119 01294220
	virtual void SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index);
	// BW1W120 0047c8a0 BW1M119 01294690
	virtual CreatureBelief* GetObjectA() { return Object; }
};
static_assert(sizeof(SubArgumentObject) == 0x8, "Data type is of wrong size");

class SubArgumentObjectAndFloat : public SubArgument
{
public:
	CreatureBelief* Object; /* 0x4 */
	float           Float;  /* 0x8 */

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	SubArgumentObjectAndFloat(CreatureBelief* object, float value)
	{
		Object = object;
		Float = value;
	}

	// Override methods

	// BW1W120 004ff6b0 BW1M119 01294190
	virtual void SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index);
	// BW1W120 0049ade0 BW1M119 01294640
	virtual CreatureBelief* GetObjectA() { return Object; }
};
static_assert(sizeof(SubArgumentObjectAndFloat) == 0xc, "Data type is of wrong size");

class SubArgumentObjectAndInteger : public SubArgument
{
public:
	CreatureBelief* Object;  /* 0x4 */
	uint32_t        Integer; /* 0x8 */

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	SubArgumentObjectAndInteger(CreatureBelief* object, uint32_t integer)
	{
		Object = object;
		Integer = integer;
	}

	// Override methods

	// BW1W120 004ff6d0 BW1M119 01294100
	virtual void SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index);
	// BW1W120 0049c680 BW1M119 012945f0
	virtual CreatureBelief* GetObjectA() { return Object; }
};
static_assert(sizeof(SubArgumentObjectAndInteger) == 0xc, "Data type is of wrong size");

class SubArgumentInteger : public SubArgument
{
public:
	uint32_t Integer; /* 0x4 */

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	SubArgumentInteger(uint32_t integer) { Integer = integer; }

	// Override methods

	// BW1W120 004ff6f0 BW1M119 01294080
	virtual void SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index);
};
static_assert(sizeof(SubArgumentInteger) == 0x8, "Data type is of wrong size");

class SubArgumentFloat : public SubArgument
{
public:
	float Float; /* 0x4 */

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	SubArgumentFloat(float value) { Float = value; }

	// Override methods

	// BW1W120 004ff710 BW1M119 01294000
	virtual void SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index);
};
static_assert(sizeof(SubArgumentFloat) == 0x8, "Data type is of wrong size");

class SubArgumentIntegerAndFloat : public SubArgument
{
public:
	uint32_t Integer; /* 0x4 */
	float    Float;   /* 0x8 */

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	SubArgumentIntegerAndFloat(uint32_t integer, float value)
	{
		Integer = integer;
		Float = value;
	}

	// Override methods

	// BW1W120 004ff730 BW1M119 01293f70
	virtual void SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index);
};
static_assert(sizeof(SubArgumentIntegerAndFloat) == 0xc, "Data type is of wrong size");

class SubArgumentPoint : public SubArgument
{
public:
	LHPoint Point; /* 0x4 */

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	SubArgumentPoint(const LHPoint& point) { Point = point; }

	// Override methods

	// BW1W120 004ff780 BW1M119 01293ef0
	virtual void SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index);
	// BW1W120 004791c0 BW1M119 01294570
	virtual bool32_t HasDestination() { return 1; }
	// BW1W120 004791d0 BW1M119 012945b0
	virtual LHPoint* GetDestination() { return &Point; }
};
static_assert(sizeof(SubArgumentPoint) == 0x10, "Data type is of wrong size");

class SubArgumentPointAndFloat : public SubArgument
{
public:
	LHPoint Point; /* 0x4 */
	float   Float; /* 0x10 */

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	SubArgumentPointAndFloat(const LHPoint& point, float value)
	{
		Point = point;
		Float = value;
	}

	// Override methods

	// BW1W120 004ff820 BW1M119 01293d00
	virtual void SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index);
	// BW1W120 0047a1b0 BW1M119 012943c0
	virtual bool32_t HasDestination() { return 1; }
	// BW1W120 0047a1c0 BW1M119 01294410
	virtual LHPoint* GetDestination() { return &Point; }
};
static_assert(sizeof(SubArgumentPointAndFloat) == 0x14, "Data type is of wrong size");

class SubArgumentPointIntegerFloatAndSpell : public SubArgument
{
public:
	LHPoint  Point;   /* 0x4 */
	uint32_t Integer; /* 0x10 */
	float    Float;   /* 0x14 */
	uint32_t Spell;   /* 0x18 */

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	SubArgumentPointIntegerFloatAndSpell(const LHPoint& point, uint32_t integer, float value, uint32_t spell)
	{
		Point = point;
		Integer = integer;
		Float = value;
		Spell = spell;
	}

	// Override methods

	// BW1W120 004ff7b0 BW1M119 01293e40
	virtual void SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index);
	// BW1W120 0049cfc0 BW1M119 012944b0
	virtual bool32_t HasDestination() { return 1; }
	// BW1W120 0049cfd0 BW1M119 01294510
	virtual LHPoint* GetDestination() { return &Point; }
};
static_assert(sizeof(SubArgumentPointIntegerFloatAndSpell) == 0x1c, "Data type is of wrong size");

class SubArgumentObjectIntegerFloatAndSpell : public SubArgument
{
public:
	CreatureBelief* Object;  /* 0x4 */
	uint32_t        Integer; /* 0x8 */
	float           Float;   /* 0xc */
	uint32_t        Spell;   /* 0x10 */

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	SubArgumentObjectIntegerFloatAndSpell(CreatureBelief* object, uint32_t integer, float value, uint32_t spell)
	{
		Object = object;
		Integer = integer;
		Float = value;
		Spell = spell;
	}

	// Override methods

	// BW1W120 004ff7f0 BW1M119 01293d90
	virtual void SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index);
	// BW1W120 004a0000 BW1M119 01294460
	virtual CreatureBelief* GetObjectA() { return Object; }
};
static_assert(sizeof(SubArgumentObjectIntegerFloatAndSpell) == 0x14, "Data type is of wrong size");

class SubArgumentObjectIntegerPosFloatAndSpell : public SubArgument
{
public:
	CreatureBelief* Object;  /* 0x4 */
	uint32_t        Integer; /* 0x8 */
	LHPoint         Point;   /* 0xc */
	float           Float;   /* 0x18 */
	uint32_t        Spell;   /* 0x1c */

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	SubArgumentObjectIntegerPosFloatAndSpell(CreatureBelief* object, uint32_t integer, const LHPoint& point,
	                                         float value, uint32_t spell)
	{
		Object = object;
		Integer = integer;
		Point = point;
		Float = value;
		Spell = spell;
	}

	// Override methods

	// BW1W120 004ff860 BW1M119 01293c40
	virtual void SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* agenda, uint32_t index);
	// BW1W120 00506550 BW1M119 012942a0
	virtual bool32_t HasDestination() { return 1; }
	// BW1W120 00506560 BW1M119 01294300
	virtual LHPoint* GetDestination() { return &Point; }
	// BW1W120 00506570 BW1M119 01294360
	virtual CreatureBelief* GetObjectA() { return Object; }
};
static_assert(sizeof(SubArgumentObjectIntegerPosFloatAndSpell) == 0x20, "Data type is of wrong size");

#endif /* BW1_DECOMP_SUB_ARGUMENT_INCLUDED_H */
