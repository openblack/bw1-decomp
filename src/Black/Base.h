#ifndef BW1_DECOMP_BASE_INCLUDED_H
#define BW1_DECOMP_BASE_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <stddef.h>    /* For size_t */
#include <stdint.h>    /* For uint32_t */
#include <re_common.h> /* For bool32_t */

// Game-time constants. These have internal linkage, so every translation unit including this
// header gets its own copy of the pair and of the product below. The product is not a constant
// expression, so the compiler computes it at startup.
const float  NumDaysInYear = 365.25f;
const float  SecondsInDay = 86400.0f;
static float SecondsPerYear = NumDaysInYear * SecondsInDay;

// Forward Declares

class Archive;
class BaseInfo;
struct LHPoint;
struct UniqueKeyHeap;
struct HeapStore;

class Base
{
public:
	// Used by Base allocation/deletion; created by PCMain.
	// TODO: Original global name and declaration scope are unrecovered.
	// BW1W120 00cd3b1c
	static UniqueKeyHeap* ObjectHeap;
	// Descriptive name; initialized with ObjectHeap by PCMain.
	// BW1W120 00cd3b18
	static HeapStore* ObjectHeapStore;

	bool32_t destroyed; /* 0x4 */

	// Override methods

	// BW1W120 004011b0 BW1M119 015772e0
	virtual void Serialise(Archive& param_1) {}
	// BW1W120 00436960 BW1M119 01084b50
	virtual ~Base();
	// BW1W120 004011c0 BW1M119 01333120
	virtual void Delete() { delete this; }
	// BW1W120 004011d0 BW1M119 01333480
	virtual void ToBeDeleted(int param_1) { Delete(); }
	// BW1W120 004011e0 BW1M119 01334c10
	virtual int Get3DSoundPos(LHPoint* param_1) { return 0; }
	// BW1W120 004011f0 BW1M119 013348b0
	virtual void CleanUpForSerialisation() {}
	// BW1W120 00401200 BW1M119 01090c70
	virtual void Dump() {}

	// Static methods

	// BW1W120 004366f0 BW1M119 010a08d0
	static void* operator new(size_t size, const char* file_name, uint32_t line);
	// BW1W120 00436970 BW1M119 015abc70
	static void operator delete(void* ptr, size_t size);

	// Constructors

	// BW1W120 inlined BW1M119 010a21b0
	Base() { destroyed = false; }

	// Non-virtual methods

	// BW1W120 00436b20 BW1M119 01001480
	void SetInfo(BaseInfo* info) const;
};

#endif /* BW1_DECOMP_BASE_INCLUDED_H */
