#ifndef BW1_DECOMP_LH_FILE_INCLUDED_H
#define BW1_DECOMP_LH_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

#include <re_common.h> /* For bool32_t */

#ifndef BW1_DECOMP_LH_FILE_LH_TEMPLATE_INCLUDED_H
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For LHLinkedList */
#endif

#include "LHSegment.h" /* For LHSegment, LH_SEGMENT_NAME_LENGTH */

#define LH_FILE_HEADER_SIZE    8
#define LH_SEGMENT_HEADER_SIZE (LH_SEGMENT_NAME_LENGTH + sizeof(uint32_t))
#define LH_MAX_SEGMENT_SIZE    80000000

enum LH_FILE_RESULT
{
	LH_FILE_RESULT_OK = 0,
	LH_FILE_RESULT_NOT_FOUND = 2,
	LH_FILE_RESULT_ERROR = 3,
};

enum LH_FILE_MODE
{
	LH_FILE_NEW = 0,
	LH_FILE_READ_WRITE = 1,
	LH_FILE_READ_ONLY = 2,
	LH_FILE_APPEND = 3,
};

enum LH_SEEK_MODE
{
	LH_SEEK_BEGIN = 0,
	LH_SEEK_CURRENT = 1,
	LH_SEEK_END = 2,
};

// Forward Declares

struct LHSegmentDesc;

class LHFile
{
public:
	LHLinkedList<LHSegmentDesc*> SegmentList;
	bool32_t                     OpenFlag;
	void*                        Handle;
	LHSegment                    LastSegment;                                                      /* 0x14 */
	uint32_t (*WriteFunc)(const void* data, uint32_t length, void* user_data);                     /* 0x40 */
	uint32_t (*ReadFunc)(void* data, uint32_t length, void* user_data);                            /* 0x44 */
	uint32_t (*FilePointerFunc)(uint32_t distance_to_move, uint32_t move_method, void* user_data); /* 0x48 */
	void*        CustomFunctionUserData;
	LH_FILE_MODE FileMode;
	bool32_t     SegmentOpenFlag;
	uint32_t     SegmentSize;
	uint32_t     CurrentFileOffset;
	uint32_t     SegmentOffset;
	char*        SegmentName;
	char*        Name;

	// Override methods

	// BW1W120 007bd500 BW1M119 0116a3b0 (LHCombined Release)
	virtual uint32_t Open(LH_FILE_MODE mode);

	// Constructors

	// The member constructors run before the vtable pointer is set, so it is stored last.
	// Inliner IL size: 61
	// BW1W120 0042e110 BW1M119 0118cc20
	LHFile() { ResetData(); }
#ifdef VERSION_BW1WCI
	// BW1WCI inlined BW1MCI119 01537a50
	LHFile(const char* name)
	{
		ResetData();
		SetName(name);
	}
#endif
	// BW1W120 007bda20 BW1M119 01169bc0 (LHCombined Release)
	~LHFile();

	// Non-virtual methods

	// BW1W120 0042e160 BW1M119 010d14c0
	uint32_t ResetData()
	{
		Name = NULL;
		OpenFlag = false;
		Handle = NULL;
		WriteFunc = NULL;
		ReadFunc = NULL;
		FilePointerFunc = NULL;
		SegmentOpenFlag = false;
		SegmentSize = 0;
		CurrentFileOffset = 0;
		SegmentOffset = 0;
		return 0;
	}
	// BW1W120 007bd390 BW1M119 0116aba0 (LHCombined Release)
	uint32_t SetName(const char* name);
	// BW1W120 007bd420 BW1M119 0116aaa0 (LHCombined Release)
	uint32_t GetSegmentDataInChunks(char* segment_name, char* data, uint32_t total_size, uint32_t chunk_size,
	                                void (*callback)(void), int offset);
	// BW1W120 007bd490 BW1M119 01004ee0 (LHCombined Release)
	uint32_t GetSegmentData(char* segment_name, void* data, uint32_t data_size, int offset);
	// BW1W120 007bd7d0 BW1M119 01169eb0 (LHCombined Release)
	uint32_t VerifyFile();
	// BW1W120 007bd930 BW1M119 01169d40 (LHCombined Release)
	uint32_t GetNextSegment(LHSegment* seg, bool32_t allocate_memory);
	// BW1W120 007bd9d0 BW1M119 01169c50 (LHCombined Release)
	uint32_t AllocSegDataMem(LHSegment* seg);
	// BW1W120 007bda70 BW1M119 01169b50 (LHCombined Release)
	void FreeLastSeg();
	// BW1W120 007bda90 BW1M119 01169a50 (LHCombined Release)
	uint32_t WriteSegment(LHSegment* seg);
	// BW1W120 007bdb20 BW1M119 01169810 (LHCombined Release)
	uint32_t WriteSegmentHeader(char* name);
	// BW1W120 007bdbc0 BW1M119 011695e0 (LHCombined Release)
	uint32_t Close();
	// BW1W120 007bdc60 BW1M119 01005200 (LHCombined Release)
	LHSegmentDesc* Lookup(char* segment_name);
	// BW1W120 007bdcd0 BW1M119 010050d0 (LHCombined Release)
	uint32_t SetLHFilePointer(char* segment_name, int offset);
	// BW1W120 007bdd60 BW1M119 01168fe0 (LHCombined Release)
	uint32_t GetSegmentSize(char* segment_name);
	// BW1W120 inlined BW1M119 inlined
	uint32_t GetSegmentSize() { return SegmentOpenFlag ? GetSegmentSize(SegmentName) : LH_FILE_RESULT_ERROR; }
	// BW1W120 007bddd0 BW1M119 01168df0 (LHCombined Release)
	uint32_t GetSegment(char* name, LHSegment* seg, bool32_t allocate_memory);
	// BW1W120 007bdec0 BW1M119 01004fd0 (LHCombined Release)
	uint32_t OpenSegment(char* name);
	// BW1W120 007bdf50 BW1M119 01004d80 (LHCombined Release)
	uint32_t CloseSegment();
	// BW1W120 007bdfc0 BW1M119 01168460 (LHCombined Release)
	uint32_t WriteSegmentData(const void* data, uint32_t length);
	// BW1W120 007be000 BW1M119 01168360 (LHCombined Release)
	uint32_t OverwriteSegment(LHSegment seg);
	// BW1W120 007be040 BW1M119 01168210 (LHCombined Release)
	uint32_t GetSegmentData(void* data, uint32_t data_size, int offset);
	// BW1W120 007be090 BW1M119 01168120 (LHCombined Release)
	uint32_t WriteData(const void* data, uint32_t length);
	// BW1W120 007be120 BW1M119 01004c80 (LHCombined Release)
	uint32_t ReadData(void* data, uint32_t length);
	// BW1W120 007be1b0 BW1M119 01167ad0 (LHCombined Release)
	void SetFileFunctions(void* rf, void* wf, void* fpf, void* user_data);
	// BW1W120 007be1f0 BW1M119 011679c0 (LHCombined Release)
	uint32_t TruncateFromSegment(char* segment_name);
	// BW1W120 inlined BW1M119 inlined
	long ReadLong()
	{
		long value;
		GetSegmentData(&value, sizeof(value), -1);
		return value;
	}
	// BW1W120 inlined BW1M119 inlined
	float ReadFloat()
	{
		float value;
		GetSegmentData(&value, sizeof(value), -1);
		return value;
	}
	// BW1W120 inlined BW1M119 inlined
	void WriteLong(long value) { WriteSegmentData(&value, sizeof(value)); }
	// BW1W120 inlined BW1M119 inlined
	void WriteFloat(float value) { WriteSegmentData(&value, sizeof(value)); }
};

#endif /* BW1_DECOMP_LH_FILE_INCLUDED_H */
