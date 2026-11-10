#ifndef BW1_DECOMP_DEBUG_RECORD_INCLUDED_H
#define BW1_DECOMP_DEBUG_RECORD_INCLUDED_H

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For class LHLinkedList */

class DebugRecord
{
public:
	// BW1W120 00da58d0
	static LHLinkedList<DebugRecord*> Records;

	void* Key;
	int   Value;

	// BW1W120 0074e030 BW1M119 011ac910
	~DebugRecord();
};

#endif /* BW1_DECOMP_DEBUG_RECORD_INCLUDED_H */
