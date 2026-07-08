#ifndef BW1_DECOMP_LH_MEMORY_LEAK_INCLUDED_H
#define BW1_DECOMP_LH_MEMORY_LEAK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */
#include <stdint.h> /* For uint32_t */
#include <string.h> /* For strcpy */

#include <map>

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>

// Forward declares
class LHDebugStack;

// Debug allocation tracker. Keeps a std::map<void*, LeakNode*> keyed on the
// returned pointer of every tracked allocation (map embedded at offset 0). Wired
// into the game's Base heap: operator new -> LogAllocation, operator delete ->
// LogDeletion, shutdown -> DumpLeaks.
class LHMemoryLeak
{
public:
	// One tracked allocation. 0x12C bytes. The Mac build uses a 1024-byte FileName
	// buffer (0x428 total); the Windows build keeps 260 bytes so every field after
	// FileName sits at a different offset.
	class LeakNode
	{
	public:
		int                Line;           /* 0x000 source line of the allocation */
		char               FileName[260];  /* 0x004 strcpy of __FILE__ */
		unsigned char      ShouldLog;      /* 0x108 copied from gMemoryLeak+0x10 */
		int                field_10C;      /* 0x10C zero-initialised */
		int                Tag;            /* 0x110 copied from gMemoryLeak+0x14 */
		int                AllocSize;      /* 0x114 requested allocation size */
		unsigned char      DeletionLogged; /* 0x118 set by LogDeletion; second delete => double free */
		LHLinkedList<char> AllocStack;     /* 0x11C allocation call stack */
		LHLinkedList<char> DeleteStack;    /* 0x124 deletion call stack */

		// Constructors

		// BW1W120 inlined (built by LogAllocation via operator new(0x12C))
		inline LeakNode(const char* file, int line, int size, unsigned char shouldLog, int tag)
		{
			AllocStack.count = 0;
			AllocStack.head = NULL;
			DeleteStack.count = 0;
			DeleteStack.head = NULL;
			strcpy(FileName, file);
			Line = line;
			ShouldLog = shouldLog;
			field_10C = 0;
			Tag = tag;
			AllocSize = size;
			DeletionLogged = 0;
		}

		// Non-virtual methods

		// BW1W120 007e0490 LHMemoryLeak::LeakNode::LogError(char *, bool, bool)
		void LogError(const char* msg, bool logStack, bool allocStack);
		// BW1W120 007e04d0 LHMemoryLeak::LeakNode::LogCallStack(bool)
		void LogCallStack(bool allocStack);
		// BW1W120 007e0550 LHMemoryLeak::LeakNode::GrabFunctionNamesFromDebugStack(LHDebugStack *, bool)
		void GrabFunctionNamesFromDebugStack(LHDebugStack* debugStack, bool allocStack);
	};

	std::map<void*, LeakNode*> Map;       /* 0x00 tracked allocations */
	unsigned char              ShouldLog; /* 0x10 */
	bool                       field_11;  /* 0x11 dump reporting flag */
	int                        Tag;       /* 0x14 */

	// Non-virtual methods

	// BW1W120 007e0620 LHMemoryLeak::LogAllocation(char *, int, void *, int)
	void LogAllocation(const char* file, int line, void* ptr, int size);
	// BW1W120 007e0730 LHMemoryLeak::LogDeletion(char *, int, void *)
	void LogDeletion(const char* file, int line, void* ptr);
	// BW1W120 007e0870 LHMemoryLeak::DumpLeaks(void)
	void DumpLeaks();
};

static_assert(offsetof(LHMemoryLeak::LeakNode, Line) == 0x000, "Wrong offset");
static_assert(offsetof(LHMemoryLeak::LeakNode, FileName) == 0x004, "Wrong offset");
static_assert(offsetof(LHMemoryLeak::LeakNode, ShouldLog) == 0x108, "Wrong offset");
static_assert(offsetof(LHMemoryLeak::LeakNode, field_10C) == 0x10C, "Wrong offset");
static_assert(offsetof(LHMemoryLeak::LeakNode, Tag) == 0x110, "Wrong offset");
static_assert(offsetof(LHMemoryLeak::LeakNode, AllocSize) == 0x114, "Wrong offset");
static_assert(offsetof(LHMemoryLeak::LeakNode, DeletionLogged) == 0x118, "Wrong offset");
static_assert(offsetof(LHMemoryLeak::LeakNode, AllocStack) == 0x11C, "Wrong offset");
static_assert(offsetof(LHMemoryLeak::LeakNode, DeleteStack) == 0x124, "Wrong offset");
static_assert(sizeof(LHMemoryLeak::LeakNode) == 0x12C, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_MEMORY_LEAK_INCLUDED_H */
