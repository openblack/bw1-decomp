#ifndef BW1_DECOMP_PERSISTENT_INCLUDED_H
#define BW1_DECOMP_PERSISTENT_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

struct PropertyList;

class Persistent
{
public:
	// Static methods; neither Windows body uses a this pointer.
	// BW1W120 00580c30 BW1M119 012ce6b0
	static void GetSaveID(Persistent* value, long* file_id, long* index);
	// BW1W120 00580cc0 BW1M119 012ce520
	static Persistent* GetFromSaveID(long file_id, long index);

	// Override methods

	// BW1W120 00580a10 BW1M119 012ce460
	virtual void VirtualFunc();
	// BW1W120 00580a20 BW1M119 012ce4a0
	virtual void OnLoaded();
	// BW1W120 00580a40 BW1M119 012cea40
	virtual ~Persistent();
	// BW1W120 00580a30 BW1M119 012ce4d0
	virtual void DefineProperties(PropertyList* param_1);
};

class FloatProvider : public Persistent
{
public:
	// Override methods

	// BW1W120 006b80a0 BW1M119 013ef270
	virtual ~FloatProvider();
	// BW1W120 006b8090 BW1M119 013ef300
	virtual void DefineProperties(PropertyList* param_1);
};

#endif /* BW1_DECOMP_PERSISTENT_INCLUDED_H */
