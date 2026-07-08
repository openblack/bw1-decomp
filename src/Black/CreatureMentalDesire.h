#ifndef BW1_DECOMP_CREATURE_MENTAL_DESIRE_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_DESIRE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h"                       /* For struct Base */
#include "BaseInfo.h"                   /* For struct GBaseInfo */
#include "CreatureMentalDesireSource.h" /* For struct CreatureDesireSource */

// Forward Declares

class Creature;
class CreatureInfo;

class CreatureDesires : public Base
{
public:
	uint32_t                           field_0x8[0x28];
	float                              field_0xa8[0x28];
	uint32_t                           field_0x148[0x28];
	uint32_t                           field_0x1e8[0x28];
	uint32_t                           field_0x288[0x28];
	LHLinkedList__CreatureDesireSource source_lists[0x28]; /* 0x328 */
	uint32_t                           field_0x468[0x28];
	uint32_t                           field_0x508[0x28];
	uint32_t                           field_0x5a8[0x28];
	Creature*                          creature; /* 0x648 */
	CreatureInfo*                      creature_info;
	uint32_t                           field_0x650;
	uint32_t                           field_0x654;
	uint32_t                           field_0x658[0x28];
	uint32_t                           field_0x6f8;
	uint32_t                           field_0x6fc;
	uint32_t                           field_0x700;
	uint32_t                           field_0x704;

	// Override methods

	// BW1W120 004dc040 BW1M100 1025ad30 CreatureDesires::_dt(void)
	virtual ~CreatureDesires();

	// Constructors

	// BW1W120 004dbff0 BW1M100 1025b030 CreatureDesires::__ct(Creature *, CreatureInfo const *)
	CreatureDesires(Creature* creature, const CreatureInfo* info);
};

class CreatureDesireActionEntry : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 00491980 BW1M100 1022e3c0 CreatureDesireActionEntry::_dt(void)
	virtual ~CreatureDesireActionEntry();
	// BW1W120 00491910 BW1M100 1022ed30 CreatureDesireActionEntry::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

class CreatureDesireAttributeEntry : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 00491b70 BW1M100 1022e150 CreatureDesireAttributeEntry::_dt(void)
	virtual ~CreatureDesireAttributeEntry();
	// BW1W120 00491b10 BW1M100 1022edf0 CreatureDesireAttributeEntry::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

class CreatureDesireDependency : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 004db350 BW1M100 10259590 CreatureDesireDependency::_dt(void)
	virtual ~CreatureDesireDependency();
	// BW1W120 004db2e0 BW1M100 1025c710 CreatureDesireDependency::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

class CreatureDesireForType : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 004db420 BW1M100 1025ac00 CreatureDesireForType::_dt(void)
	virtual ~CreatureDesireForType();
	// BW1W120 004db3c0 BW1M100 1025c650 CreatureDesireForType::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

class CreatureDesireSourceTable : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 004dd1f0 BW1M100 1025c960 CreatureDesireSourceTable::_dt(void)
	virtual ~CreatureDesireSourceTable();
	// BW1W120 004dd180 BW1M100 1025efa0 CreatureDesireSourceTable::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_CREATURE_MENTAL_DESIRE_INCLUDED_H */
