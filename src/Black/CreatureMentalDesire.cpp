#include "CreatureMentalDesire.h"

// fabricated: no name survives in symbols.txt (unlabeled .bss data). Zero-initialized here;
// the actual weights are loaded at runtime from an external data file, not compiled in.
static CreatureDesireForType g_CreatureDesireForType[40];

// BW1W120 004db3c0 BW1M100 1025c650 CreatureDesireForType::GetBaseInfo(unsigned long &)
GBaseInfo* CreatureDesireForType::GetBaseInfo(uint32_t& count)
{
	count = 40;
	return g_CreatureDesireForType;
}

// BW1W120 004db420 BW1M100 1025ac00 CreatureDesireForType::_dt(void)
CreatureDesireForType::~CreatureDesireForType() {}
