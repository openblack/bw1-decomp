// LHLib saw an older LHLinkedList.h in which AddToEnd was out of line; see the note there.
#define LH_LINKED_LIST_ADD_TO_END_OUT_OF_LINE
#include <Lionhead/LHLib/ver5.0/LHMemoryLeak.h>

#include <stddef.h> /* For size_t */
#include <stdio.h>  /* For FILE, fprintf */
#include <stdlib.h> /* For atexit */
#include <string.h> /* For strcpy, strlen */

#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */

#define FILEPATH "C:\\Dev\\Libs\\lionhead\\lhlib\\VER5.0\\LHMemoryLeak.cpp"

// The global call-stack tracer, provided by LHLogR. gDebugStack is a plain global
// (accessed by address, not via the import table); its 512-byte frame slots hold
// the captured function names and the active depth byte sits at offset 0x4000.
class LHDebugStack
{
public:
	char          Frames[32][512]; /* 0x0000 one 512-byte name slot per frame */
	unsigned char Depth;           /* 0x4000 number of active frames */

	// Imported from LHLogR.
	// BW1W120 10002160
	static __declspec(dllimport) int Initialise();
	// Imported from LHLogR.
	// BW1W120 100024d0
	__declspec(dllimport) void UpdateStackInformation();

	inline unsigned char GetDepth() const { return Depth; }
	inline const char*   GetFunctionName(int i) { return (unsigned char)i < Depth ? Frames[(unsigned char)i] : NULL; }
};

// BW1W120 00e8c5e8
extern LHDebugStack gDebugStack;
// BW1W120 00e905e8
extern int gDebugStackDepth;

FILE* LHMemoryLeak::LogFile;
// BW1W120 00e905f8
static bool gDebugStackInitialised;

LHLinkedList<LHMemoryLeak*> LHMemoryLeak::Instances;

template <> int LHLinkedList<char*>::AddToEnd(char* val)
{
	LHLinkedNode<char*>* node;
	if (!val)
	{
		goto fail;
	}
	node = new LHLinkedNode<char*>(val, NULL);
	if (!node)
	{
		goto fail;
	}
	{
		LHLinkedNode<char*>* last = GetLastNode();
		if (last)
		{
			last->next.Set(node);
			++count;
			return 1;
		}
		head.Set(node);
		++count;
		return 1;
	}
fail:
	return 0;
}

void LHMemoryLeak::LeakNode::LogError(const char* msg, bool logStack, bool allocStack)
{
	if (LogFile)
	{
		fprintf(LogFile, "%s(%u): %s\n", FileName, Line, msg);
	}
	if (logStack)
	{
		LogCallStack(allocStack);
	}
}

void LHMemoryLeak::LeakNode::LogCallStack(bool allocStack)
{
	LHLinkedNode<char*>* node;
	if (allocStack)
	{
		node = AllocStack.head.Get();
		if (LogFile)
		{
			fprintf(LogFile, "Allocation call stack:\n");
		}
	}
	else
	{
		node = DeleteStack.head.Get();
		if (LogFile)
		{
			fprintf(LogFile, "Deletion call stack:\n");
		}
	}
	while (node)
	{
		if (LogFile)
		{
			fprintf(LogFile, "     |->%s\n", node->payload);
		}
		node = node->next.Get();
	}
	fprintf(LogFile, "\n");
}

void LHMemoryLeak::LeakNode::GrabFunctionNamesFromDebugStack(LHDebugStack* debugStack, bool allocStack)
{
	for (int i = 1; i < debugStack->GetDepth() - 2; ++i)
	{
		const char* name = debugStack->GetFunctionName(i);
		char*       copy = (char*)operator new(strlen(name) + 1, FILEPATH, 63);
		strcpy(copy, name);
		LHLinkedList<char*>* list = allocStack ? &AllocStack : &DeleteStack;
		list->AddToEnd(copy);
	}
}

void LHMemoryLeak::LogAllocation(const char* file, int line, void* ptr, int size)
{
	LeakNode* node = new (FILEPATH, 80) LeakNode(file, line, size, ShouldLog, Tag);
	if (!gDebugStackInitialised)
	{
		LHDebugStack::Initialise();
		gDebugStackInitialised = true;
	}
	gDebugStack.UpdateStackInformation();
	node->GrabFunctionNamesFromDebugStack(&gDebugStack, true);
	Map[ptr] = node;
}

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
			if (LogFile)
			{
				fprintf(LogFile, "First ");
			}
			node->LogCallStack(false);
			if (LogFile)
			{
				fprintf(LogFile, "Second deletion call stack:\n");
			}
			for (int i = 1; i < (unsigned char)gDebugStackDepth - 3; ++i)
			{
				if (LogFile)
				{
					const char* name = (unsigned char)i < (unsigned char)gDebugStackDepth
					                       ? (const char*)&gDebugStack + 512 * (unsigned char)i
					                       : NULL;
					fprintf(LogFile, "     |->%s\n", name);
				}
			}
			fprintf(LogFile, "\n");
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
			node->LogError("Memory leak!!", LogLeakStacks, true);
		}
	}
}
