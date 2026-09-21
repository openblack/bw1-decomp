#ifndef BW1_DECOMP_LH_FILE_INCLUDED_H
#define BW1_DECOMP_LH_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

enum LH_FILE_RESULT
{
	LH_FILE_RESULT_OK = 0,
	LH_FILE_RESULT_NOT_FOUND = 2,
	LH_FILE_RESULT_ERROR = 3,
};

enum LH_FILE_MODE
{
	LH_FILE_MODE_READ_WRITE = 0,
	LH_FILE_MODE_READ_WRITE_CREATE = 1,
	LH_FILE_MODE_READ_ONLY = 2,
};

enum LH_SEEK_MODE
{
	LH_SEEK_BEGIN = 0,
	LH_SEEK_CURRENT = 1,
	LH_SEEK_END = 2,
};

// Forward Declares

struct LHSegment;
struct LHSegmentDesc;

class LHFile
{
public:
	uint32_t* field_0x4;
	uint32_t  field_0x8;
	uint32_t  opened;
	void*     handle; /* 0x10 */
	void*     field_0x14[0x9];
	uint32_t  field_0x38;
	uint32_t  field_0x3c;
	uint32_t (*custom_write_function)(const void* data, uint32_t length, void* user_data); /* 0x40 */
	uint32_t (*custom_read_function)(void* data, uint32_t length, void* user_data);        /* 0x44 */
	uint32_t (*custom_set_file_pointer_function)(uint32_t distance_to_move, uint32_t move_method, void* user_data);
	void*        CustomFunctionUserData;
	LH_FILE_MODE FileMode; /* 0x50 */
	uint32_t     SegmentOpened;
	uint32_t     segment_size;
	uint32_t     CurrentFileOffset;
	uint32_t     SegmentOffset; /* 0x60 */
	char*        segment_name;
	char*        file_name;

	// Override methods

	// BW1W120 007bd500 BW1M119 0116a3b0 (LHCombined Release)
	virtual uint32_t Open(LH_FILE_MODE mode);

	// Constructors

	// BW1W120 0042e110 BW1M119 0118cc20
	LHFile();
	// BW1W120 007bda20 BW1M119 01169bc0 (LHCombined Release)
	~LHFile();

	// Non-virtual methods

	// BW1W120 0042e160 BW1M119 010d14c0
	uint32_t ResetData();
	// BW1W120 007bd390 BW1M119 0116aba0 (LHCombined Release)
	uint32_t SetName(const char* name);
	// BW1W120 007bd420 BW1M119 0116aaa0 (LHCombined Release)
	uint32_t GetSegmentDataInChunks(char* segment_name, char* data, uint32_t total_size, uint32_t chunk_size,
	                                void (*callback)(void), int offset);
	// BW1W120 007bd490
	uint32_t GetSegmentData(char* segment_name, void* data, uint32_t data_size, int offset);
	// BW1W120 007bd7d0 BW1M119 01169eb0 (LHCombined Release)
	uint32_t VerifyFile();
	// BW1W120 007bd930 BW1M119 01169d40 (LHCombined Release)
	uint32_t GetNextSegment(LHSegment* segment, int allocate_memory);
	// BW1W120 007bd9d0 BW1M119 01169c50 (LHCombined Release)
	uint32_t AllocSegDataMem(LHSegment* segment);
	// BW1W120 007bda70 BW1M119 01169b50 (LHCombined Release)
	void FreeLastSeg();
	// BW1W120 007bda90 BW1M119 01169a50 (LHCombined Release)
	uint32_t WriteSegment(char* segment);
	// BW1W120 007bdb20 BW1M119 01169810 (LHCombined Release)
	uint32_t WriteSegmentHeader(char* segment_name);
	// BW1W120 007bdbc0 BW1M119 011695e0 (LHCombined Release)
	uint32_t Close();
	// BW1W120 007bdc60 BW1M119 01005200 (LHCombined Release)
	LHSegmentDesc* Lookup(char* segment_name);
	// BW1W120 007bdcd0 BW1M119 010050d0 (LHCombined Release)
	uint32_t SetLHFilePointer(char* segment_name, int offset);
	// BW1W120 007bddd0 BW1M119 01168df0 (LHCombined Release)
	uint32_t GetSegment(char* param_2, LHSegment* segment, int param_4);
	// BW1W120 007bdec0 BW1M119 01004fd0 (LHCombined Release)
	uint32_t OpenSegment(char* name);
	// BW1W120 007bdf50 BW1M119 01004d80 (LHCombined Release)
	uint32_t CloseSegment();
	// BW1W120 007bdfc0 BW1M119 01168460 (LHCombined Release)
	uint32_t WriteSegmentData(const void* data, uint32_t length);
	// BW1W120 007be040 BW1M119 01168210 (LHCombined Release)
	uint32_t GetSegmentData(void* data, uint32_t data_size, int offset);
	// BW1W120 007be090 BW1M119 01168120 (LHCombined Release)
	uint32_t WriteData(const void* data, uint32_t length);
	// BW1W120 007be120 BW1M119 01004c80 (LHCombined Release)
	uint32_t ReadData(void* data, uint32_t length);
	// BW1W120 007be1b0 BW1M119 01167ad0 (LHCombined Release)
	uint32_t SetFileFunctions(void* read_function, void* write_function, void* set_file_pointer_function,
	                          void* user_data);
	// BW1W120 007be1f0 BW1M119 011679c0 (LHCombined Release)
	uint32_t TruncateFromSegment(const char* segment_name);
	// BW1W120 007bffff BW1M119 01167940 (LHCombined Release)
	void FlushCache();
};

#endif /* BW1_DECOMP_LH_FILE_INCLUDED_H */
