#ifndef BW1_DECOMP_BASE_INCLUDED_H
#define BW1_DECOMP_BASE_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <stddef.h>    /* For size_t */
#include <stdint.h>    /* For uint32_t */
#include <re_common.h> /* For bool32_t */

// Forward Declares

class Archive;
class BaseInfo;
struct LHPoint;
struct UniqueKeyHeap;
struct HeapStore;

class Base
{
public:
	// BW1W120 00cd3b1c
	static UniqueKeyHeap* ObjectHeap;
	// BW1W120 00cd3b18
	static HeapStore* ObjectHeapStore;

	bool32_t destroyed; /* 0x4 */

	// Override methods

	// BW1W120 004011b0 BW1M119 015772e0
	virtual void Serialise(Archive& archive) {}
	// BW1W120 00436960 BW1M119 01084b50
	virtual ~Base();
	// BW1W120 004011c0 BW1M119 01333120
	virtual void Delete() { delete this; }
	// BW1W120 004011d0 BW1M119 01333480
	virtual void ToBeDeleted(bool32_t delete_now) { Delete(); }
	// BW1W120 004011e0 BW1M119 01334c10
	virtual bool32_t Get3DSoundPos(LHPoint* pos) { return false; }
	// BW1W120 004011f0 BW1M119 013348b0
	virtual void CleanUpForSerialisation() {}
	// BW1W120 00401200 BW1M119 01090c70
	virtual void Dump() {}

	// Static methods

	// BW1W120 004366f0 BW1M119 null
	static void* operator new(size_t size, const char* file_name, uint32_t line);
	// BW1W120 00436760 BW1M119 null
	static void* operator new[](size_t size, const char* file_name, uint32_t line);
	// BW1W120 00436870 BW1M119 010a08d0
	static void* operator new(size_t size);
	// BW1W120 004368e0 BW1M119 01353e10
	static void* operator new[](size_t size);
	// BW1W120 00436970 BW1M119 015abc70
	static void operator delete(void* ptr, size_t size);
	// BW1W120 004369d0 BW1M119 01514e50
	static void operator delete[](void* ptr, size_t size);
#ifndef VERSION_BW1W100
	// BW1W120 00436a30 BW1M119 null
	static int GetIndexOffset(void* address);
#endif
	// BW1W120 00436a50 BW1M119 010b9e40
	static Base* GetIndexPtr(unsigned long offset);
	// BW1W120 00436a90 BW1M119 0115ef00
	static int GetUniqueId(void* address);
	// BW1W120 00436ab0 BW1M119 011a2e70
	static int GetUniqueId(unsigned long offset);
#ifndef VERSION_BW1W100
	// BW1W120 00436ad0 BW1M119 null
	static bool32_t IsUniqueIdAtAddressTheSame(void* address, unsigned long id);
#endif
	// BW1W120 00436af0 BW1M119 01045ff0
	static bool32_t IsUniqueIdAtOffsetTheSame(unsigned long offset, unsigned long id);

	// Constructors

	// BW1W120 inlined BW1M119 010a21b0
	Base() { destroyed = false; }

	// Non-virtual methods

	// BW1W120 00436a70 BW1M119 010b9de0
	int GetIndexOffset() const;
	// BW1W120 00436a80 BW1M119 01036380
	int GetUniqueId() const;
	// BW1W120 00436b20 BW1M119 01001480
	void SetInfo(BaseInfo* info) const;
};

#endif /* BW1_DECOMP_BASE_INCLUDED_H */
