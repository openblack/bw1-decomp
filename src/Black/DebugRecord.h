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

	// BW1W120 0074dff0 BW1M119 null
	DebugRecord(void* key, int value);
	// BW1W120 0074e030 BW1M119 011ac910
	~DebugRecord();

	// BW1W120 0074e080 BW1M119 null
	static void Add(void* key, int value);
	// BW1W120 0074e0c0 BW1M119 null
	static void Remove(void* key, int value);
	// BW1W120 0074e110 BW1M119 null
	static LHLinkedNode<DebugRecord*>* Find(void* key, int value);
	// BW1W120 0074e130 BW1M119 null
	static LHLinkedNode<DebugRecord*>* FindNode(void* key, int value);
};

#endif /* BW1_DECOMP_DEBUG_RECORD_INCLUDED_H */
