#include <Lionhead/LHLib/ver5.0/LHMemoryLeak.h>

#include <stddef.h> /* For size_t */
#include <stdio.h>  /* For FILE, fprintf */
#include <stdlib.h> /* For atexit */
#include <string.h> /* For strcpy, strlen */

// Debug allocator that records the originating file/line.
// BW1W120 007db790 operator new(unsigned int, char const*, unsigned int)
void* operator new(size_t size, const char* file_name, uint32_t line);

// The global call-stack tracer, provided by LHLogR. gDebugStack is a plain global
// (accessed by address, not via the import table); its 512-byte frame slots hold
// the captured function names and the active depth byte sits at offset 0x4000.
class LHDebugStack
{
public:
	char          Frames[32][512]; /* 0x0000 one 512-byte name slot per frame */
	unsigned char Depth;           /* 0x4000 number of active frames */

	// BW1W120 imported (LHLogR) LHDebugStack::Initialise(void)
	static __declspec(dllimport) int Initialise();
	// BW1W120 imported (LHLogR) LHDebugStack::UpdateStackInformation(void)
	__declspec(dllimport) void UpdateStackInformation();

	inline unsigned char GetDepth() const { return Depth; }
	inline const char*   GetFunctionName(int i) { return (unsigned char)i < Depth ? Frames[(unsigned char)i] : NULL; }
};

// BW1W120 00e8c5e8 gDebugStack
extern LHDebugStack gDebugStack;
// BW1W120 00e905e8 gDebugStackDepth (= gDebugStack + 0x4000)
extern int gDebugStackDepth;

// BW1W120 00e905ec gMemoryLeakLogFile
// Global (not static): also referenced directly from Black/BaseInfo.cpp (Base::operator new/delete).
FILE* gMemoryLeakLogFile;
// BW1W120 00e905f8 gDebugStackInitialised
static bool gDebugStackInitialised;
// BW1W120 00e905ea gMemoryLeakList_Cleaned
static unsigned char gMemoryLeakListCleaned;

class MemoryLeakRegistry
{
public:
	LHLinkedNode<LHMemoryLeak>* Head;  /* 0x00e905f0 */
	uint32_t                    Count; /* 0x00e905f4 */

	MemoryLeakRegistry();
	~MemoryLeakRegistry()
	{
		if ((gMemoryLeakListCleaned & 1) == 0)
		{
			gMemoryLeakListCleaned |= 1;
		}
	}
};

MemoryLeakRegistry::MemoryLeakRegistry()
{
	Count = 0;
	Head = NULL;
}

// BW1W120 00e905f0/f4 gMemoryLeakList_Head/_Count
// Global (not static): also referenced directly from Black/BaseInfo.cpp (Base::operator new/delete).
MemoryLeakRegistry gMemoryLeakList;

template <> int LHLinkedList<char>::AddToEnd(char* val)
{
	LHLinkedNode<char>* node;
	if (!val)
	{
		goto fail;
	}
	node = new LHLinkedNode<char>(val);
	if (!node)
	{
		goto fail;
	}
	{
		LHLinkedNode<char>* last = GetLastNode();
		if (last)
		{
			last->next = node;
			++count;
			return 1;
		}
		head = node;
		++count;
		return 1;
	}
fail:
	return 0;
}

void LHMemoryLeak::LeakNode::LogError(const char* msg, bool logStack, bool allocStack)
{
	if (gMemoryLeakLogFile)
	{
		fprintf(gMemoryLeakLogFile, "%s(%u): %s\n", FileName, Line, msg);
	}
	if (logStack)
	{
		LogCallStack(allocStack);
	}
}

void LHMemoryLeak::LeakNode::LogCallStack(bool allocStack)
{
	LHLinkedNode<char>* node;
	if (allocStack)
	{
		node = AllocStack.head;
		if (gMemoryLeakLogFile)
		{
			fprintf(gMemoryLeakLogFile, "Allocation call stack:\n");
		}
	}
	else
	{
		node = DeleteStack.head;
		if (gMemoryLeakLogFile)
		{
			fprintf(gMemoryLeakLogFile, "Deletion call stack:\n");
		}
	}
	while (node)
	{
		if (gMemoryLeakLogFile)
		{
			fprintf(gMemoryLeakLogFile, "     |->%s\n", node->payload);
		}
		node = node->next;
	}
	fprintf(gMemoryLeakLogFile, "\n");
}

// TODO: nonmatching (96.9%) only because __FILE__ here expands to our build path
// (e.g. "src/Lionhead/.../LHMemoryLeak.cpp") whereas the original was compiled as
// "C:\Dev\Libs\lionhead\lhlib\VER5.0\LHMemoryLeak.cpp". The differing string length
// changes the strlen/rep-movs sequence. Needs a build-wide __FILE__ override to match.
void LHMemoryLeak::LeakNode::GrabFunctionNamesFromDebugStack(LHDebugStack* debugStack, bool allocStack)
{
	for (int i = 1; i < debugStack->GetDepth() - 2; ++i)
	{
		const char* name = debugStack->GetFunctionName(i);
		char*       copy = (char*)operator new(strlen(name) + 1, __FILE__, __LINE__);
		strcpy(copy, name);
		LHLinkedList<char>* list = allocStack ? &AllocStack : &DeleteStack;
		list->AddToEnd(copy);
	}
}

// TODO: nonmatching (94.8%) same __FILE__ build-path issue as GrabFunctionNamesFromDebugStack.
void LHMemoryLeak::LogAllocation(const char* file, int line, void* ptr, int size)
{
	LeakNode* node = new (__FILE__, __LINE__) LeakNode(file, line, size, ShouldLog, Tag);
	if (!gDebugStackInitialised)
	{
		LHDebugStack::Initialise();
		gDebugStackInitialised = true;
	}
	gDebugStack.UpdateStackInformation();
	node->GrabFunctionNamesFromDebugStack(&gDebugStack, true);
	Map[ptr] = node;
}

// TODO: nonmatching (99.3%) - the find-in-map body compiles with different register
// allocation / instruction scheduling than the original (e.g. the gDebugStackDepth and
// gMemoryLeakLogFile loads are emitted in swapped order), plus the LHLogR
// UpdateStackInformation import thunk name differs. Not a data/split issue.
void LHMemoryLeak::LogDeletion(const char* file, int line, void* ptr)
{
	gDebugStack.UpdateStackInformation();
	std::map<void*, LeakNode*>::iterator it = Map.find(ptr);
	if (it != Map.end())
	{
		LeakNode* node = (*it).second;
		if (node->DeletionLogged)
		{
			node->LogError("This memory has already been deleted!!.", false, true);
			if (gMemoryLeakLogFile)
			{
				fprintf(gMemoryLeakLogFile, "First ");
			}
			node->LogCallStack(false);
			if (gMemoryLeakLogFile)
			{
				fprintf(gMemoryLeakLogFile, "Second deletion call stack:\n");
			}
			for (int i = 1; i < (unsigned char)gDebugStackDepth - 3; ++i)
			{
				if (gMemoryLeakLogFile)
				{
					const char* name = (unsigned char)i < (unsigned char)gDebugStackDepth
					                       ? (const char*)&gDebugStack + 512 * (unsigned char)i
					                       : NULL;
					fprintf(gMemoryLeakLogFile, "     |->%s\n", name);
				}
			}
			fprintf(gMemoryLeakLogFile, "\n");
		}
		else
		{
			node->GrabFunctionNamesFromDebugStack(&gDebugStack, false);
			node->DeletionLogged = 1;
		}
	}
}

void LHMemoryLeak::DumpLeaks()
{
	for (std::map<void*, LeakNode*>::iterator it = Map.begin(); it != Map.end(); ++it)
	{
		LeakNode* node = (*it).second;
		if (!node->DeletionLogged && node->ShouldLog)
		{
			node->LogError("Memory leak!!", field_11, true);
		}
	}
}
