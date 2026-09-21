#ifndef BW1_DECOMP_LHOS_FILE_INCLUDED_H
#define BW1_DECOMP_LHOS_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

#include "LHFile.h" /* For enum LH_FILE_MODE, enum LH_SEEK_MODE */

// Forward Declares

struct LHDir;

class LHOSFile
{
private:
	void* handle; /* 0x4 */
public:
	// Override methods

	// BW1W120 007bc660 BW1M119 01166020 (LHCombined Release)
	virtual ~LHOSFile();
	// BW1W120 007bc730 BW1M119 01165c80 (LHCombined Release)
	virtual LH_FILE_RESULT Open(const char* path, LH_FILE_MODE mode);

	// Static methods

	// BW1W120 007bc6a0 BW1M119 01165f60 (LHCombined Release)
	static LH_FILE_RESULT Exists(const char* path);
	// BW1W120 007bcc20 BW1M119 01165190 (LHCombined Release)
	static LH_FILE_RESULT __stdcall Rename(const char* from, const char* to);
	// BW1W120 007bcc40 BW1M119 01165100 (LHCombined Release)
	static LH_FILE_RESULT __stdcall Delete(const char* path);

	// Constructors

	// BW1W120 007bc650 BW1M119 011660f0 (LHCombined Release)
	LHOSFile();

	// Non-virtual methods

	// BW1W120 0046b720 BW1M119 inlined
	LH_FILE_RESULT Write(const char* str);
	// BW1W120 007bc860 BW1M119 01165ad0 (LHCombined Release)
	LH_FILE_RESULT Close();
	// BW1W120 007bc880 BW1M119 011659f0 (LHCombined Release)
	LH_FILE_RESULT Seek(long distance, LH_SEEK_MODE mode, uint32_t* new_position);
	// BW1W120 007bc8e0 BW1M119 01165950 (LHCombined Release)
	LH_FILE_RESULT Read(void* buffer, size_t size, size_t* read);
	// BW1W120 007bc920 BW1M119 011658c0 (LHCombined Release)
	LH_FILE_RESULT Write(const void* data, uint32_t len, uint32_t* written);
	// BW1W120 007bc700 BW1M119 01165ee0 (LHCombined Release)
	LH_FILE_RESULT Position(uint32_t* position);
	// BW1W120 007bcae0 BW1M119 011654a0 (LHCombined Release)
	LH_FILE_RESULT Length(uint32_t* length);
	// BW1W120 007bcb10 BW1M119 01165370 (LHCombined Release)
	LH_FILE_RESULT DirFindFirst(const char* pattern, LHDir* dir, uint32_t attributes);
	// BW1W120 007bcba0 BW1M119 011652c0 (LHCombined Release)
	LH_FILE_RESULT DirFindNext(LHDir* dir);
	// BW1W120 007bcc00 BW1M119 01165250 (LHCombined Release)
	LH_FILE_RESULT DirFindEnd(LHDir* dir);
	// BW1W120 007bcc60 BW1M119 01164f70 (LHCombined Release)
	void ConvertDirInfo(LHDir* dir);
};

// BW1W120 007bc960 BW1M119 01165520 (LHCombined Release)
LH_FILE_RESULT LHFileLength(const char* path, uint32_t* length);
// BW1W120 007bcdf0 BW1M119 01164bf0 (LHCombined Release)
uint32_t LHLoadData(char* path, void* buffer, uint32_t length, uint32_t* read);
// BW1W120 007bd030 BW1M119 01164ac0 (LHCombined Release)
uint32_t LHSaveData(char* path, void* data, uint32_t length, uint32_t* written);
// BW1W120 007bd0c0 BW1M119 01164690 (LHCombined Release)
uint32_t LHLoadDataToMemory(char* path, void** buffer, uint32_t* length);

#endif /* BW1_DECOMP_LHOS_FILE_INCLUDED_H */
