#ifndef BW1_DECOMP_PERSISTENT_INCLUDED_H
#define BW1_DECOMP_PERSISTENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <string>   /* For std::string */

// Forward Declares

class AtomCollection;
class PersistentOwner;
class PropertyList;
class PSysManager;

class Persistent
{
public:
	// BW1W120 00580890 BW1M119 012ceaf0
	Persistent(PersistentOwner* owner);

	// Static methods; neither Windows body uses a this pointer.
	// BW1W120 00580c30 BW1M119 012ce6b0
	static void GetSaveID(Persistent* value, long* file_id, long* index);
	// BW1W120 00580cc0 BW1M119 012ce520
	static Persistent* GetFromSaveID(long file_id, long index);

	// BW1W120 00580b70 BW1M119 012ce930
	const char* GetName();
	// BW1W120 00580b80 BW1M119 012ce820
	void SetName(const char* name);

	// Override methods

	// BW1W120 00580a10 BW1M119 012ce460
	virtual void VirtualFunc();
	// BW1W120 00580a20 BW1M119 012ce4a0
	virtual void OnLoaded();
	// BW1W120 00580a40 BW1M119 012cea40
	virtual ~Persistent();
	// BW1W120 00580a30 BW1M119 012ce4d0
	virtual void DefineProperties(PropertyList* list);

	PersistentOwner* Owner;
	std::string*     Name;
};
static_assert(sizeof(Persistent) == 0xc, "Data type is of wrong size");

class PersistentOwner : public Persistent
{
public:
	struct Node
	{
		Node*       Next;
		Persistent* Object;
	};

	// BW1W120 00672420 BW1M119 013e6910
	virtual ~PersistentOwner();
	// BW1W120 00672410 BW1M119 013e7ec0
	virtual void DefineProperties(PropertyList* list);

	Node* Head;
	long  Count;
};
static_assert(sizeof(PersistentOwner) == 0x14, "Data type is of wrong size");

class FloatProvider : public Persistent
{
public:
	FloatProvider(PersistentOwner* owner) : Persistent(owner) {}

	// Override methods

	// BW1W120 006b80a0 BW1M119 013ef270
	virtual ~FloatProvider() {}
	// BW1W120 006b8090 BW1M119 013ef300
	virtual void DefineProperties(PropertyList* list) {}
	// BW1W120 purecall BW1M119 purecall
	virtual void UpdateParams(const PSysManager* manager) = 0;
	// BW1W120 00675a30 BW1M119 013ef210
	virtual float GetValueForCollection(AtomCollection* collection);

	float Value;
};

#endif /* BW1_DECOMP_PERSISTENT_INCLUDED_H */
